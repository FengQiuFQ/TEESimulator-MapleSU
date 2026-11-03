package mpl;

import android.net.LocalSocket;
import android.net.LocalSocketAddress;
import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;
import android.util.Log;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.SocketTimeoutException;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

/**
 * MapleSU SOTER lane - <b>binder-free control channel</b> (p16socket, 6.0.20).
 *
 * <h2>Why this exists</h2>
 *
 * <p>On a pure KernelSU Android 17 device the module daemon is a bare {@code app_process}:
 * its {@code bindService(ISoterService)} is refused ("Unable to find app for caller", no AMS
 * app record) and {@code dev.maplesu.manager.soter} does not exist, so it can never obtain
 * the service binder. Without that binder {@code BinderInterceptor} has nothing to register
 * and the forge never sees a transaction, even though {@code libTEESimulator.so} is mapped
 * inside {@code com.tencent.soter.soterserver}.</p>
 *
 * <p>The injected library therefore exposes a second, binder-free control path from inside
 * the Soter process: an abstract unix socket named {@value #NAME} (protocol
 * {@link #PROTO}). The daemon connects to it, registers the 13 AIDL codes, and from then on
 * every Soter transaction is handed to this class, which builds the reply with the very same
 * interceptor the binder path would have called ({@link ProbeInterceptor} ->
 * {@code w4.e.a} -> {@link SoterSvc} -> {@link SoterForge}) and writes the resulting reply
 * Parcel back to the library.</p>
 *
 * <h2>Wire format</h2>
 *
 * <p>Every frame is {@code [16-byte header][body]}, little endian:</p>
 * <pre>
 *   0  u32 magic = 'M''S''T''1'      8  u32 req_id
 *   4  u16 version (= PROTO)         12 u32 body length
 *   6  u16 type
 * </pre>
 *
 * <p>Commands used here: {@code HELLO/HELLO_ACK}, {@code REGISTER/REGISTER_ACK},
 * {@code TX} (library -> daemon: code, flags, caller uid/pid, tx id, request bytes),
 * {@code REPLY} (daemon -> library: i32 status, reply Parcel bytes), {@code PING/PONG} and
 * {@code STATUS/STATUS_RESP} for the heartbeat. A {@code REPLY} with status
 * {@link #STATUS_PASS} means "do not forge this one": the library then forwards the
 * transaction to the real service. The full maintained description lives in
 * {@code work/tee16-soter-socket/RESULT.md}.</p>
 *
 * <h2>Failure policy</h2>
 *
 * <p>Nothing in this class may block the forge: a dead, slow or absent daemon is a
 * reconnect loop here and a real-service forward there, never a hang. Every failure path
 * answers {@link #STATUS_PASS} or simply drops the connection; the library's own 2 s reply
 * deadline is the last line of defence.</p>
 */
public final class SoterSocket {

    private static final String TAG = "MPL-SOTER";

    /** Abstract socket name; the library binds it inside the Soter process. */
    public static final String NAME = "teesim_soter";
    /** Filesystem fallback the library binds when the abstract name is refused. */
    public static final String PATH =
            "/data/user/0/com.tencent.soter.soterserver/files/.teesim_soter.sock";
    /** Wire version. Bumped together with the native kProtocolVersion. */
    public static final int PROTO = 1;
    /** Client build stamp reported in HELLO (diagnostics only). */
    static final int CLIENT_VERSION = 60200;

    static final int TYPE_HELLO = 1;
    static final int TYPE_HELLO_ACK = 2;
    static final int TYPE_REGISTER = 3;
    static final int TYPE_REGISTER_ACK = 4;
    static final int TYPE_PING = 5;
    static final int TYPE_PONG = 6;
    static final int TYPE_TX = 7;
    static final int TYPE_REPLY = 8;
    static final int TYPE_STATUS = 9;
    static final int TYPE_STATUS_RESP = 10;

    /** REPLY status meaning "the daemon declines; forward to the real service". */
    static final int STATUS_PASS = -1;

    private static final int MAGIC = 0x3154534d; // "MST1" little endian
    private static final int HEADER = 16;
    private static final int MAX_FRAME = 4 * 1024 * 1024;
    /** INFO body carried by PONG/STATUS_RESP. */
    private static final int INFO_SIZE = 72;
    /** Idle read window; a timeout triggers a PING, four missed PONGs reconnect. */
    private static final int READ_TIMEOUT_MS = 20000;
    private static final int MAX_MISSED_PINGS = 4;
    private static final long RETRY_MS = 1500L;
    /** w4/e registers 13 transactions (the device AIDL has 13 methods). */
    static final int CODES = 13;

    /** Placeholder target: onPreTransact only null-checks it (the socket lane has no binder). */
    private static final IBinder DUMMY_TARGET = new Binder();
    /** One writer at a time: the reader thread answers TX, the bridge thread sends STATUS. */
    private static final Object WRITE_LOCK = new Object();

    private static volatile boolean started;
    private static volatile boolean running;
    private static volatile boolean registered;
    private static volatile LocalSocket live;
    private static volatile String state = "off";
    private static volatile String lastError;
    private static volatile long registeredAt;
    private static volatile long lastPongAt;
    private static volatile int mask;
    private static volatile int generation;
    private static volatile int pathKind;
    private static volatile String lastInfo = "n/a";
    private static final AtomicLong RUN_TOKEN = new AtomicLong();

    private static final AtomicInteger TX = new AtomicInteger();
    private static final AtomicInteger TX_OK = new AtomicInteger();
    private static final AtomicInteger TX_FALLBACK = new AtomicInteger();
    private static final AtomicInteger ERRORS = new AtomicInteger();
    private static final AtomicInteger RECONNECTS = new AtomicInteger();

    private SoterSocket() {
    }

    // ------------------------------------------------------------------ lifecycle

    /** Idempotent: starts the (single) client thread. */
    public static void start() {
        if (started) {
            return;
        }
        started = true;
        running = true;
        final long token = RUN_TOKEN.incrementAndGet();
        Thread thread = new Thread(new Runnable() {
            @Override
            public void run() {
                loop(token);
            }
        }, "soter-socket");
        thread.setDaemon(true);
        thread.start();
        Log.i(TAG, "socket client started name=@" + NAME + " proto=" + PROTO
                + " codes=" + CODES);
    }

    /** Stop and close; a later {@link #start()} re-opens the channel. */
    public static void stop() {
        RUN_TOKEN.incrementAndGet();
        running = false;
        LocalSocket socket = live;
        live = null;
        if (socket != null) {
            closeQuietly(socket);
        }
        registered = false;
        started = false;
        state = "stopped";
    }

    public static boolean isRegistered() {
        return registered;
    }

    // ------------------------------------------------------------------ diagnostics

    /** One heartbeat field: connection state plus the transaction counters. */
    public static String status() {
        StringBuilder out = new StringBuilder(64);
        out.append(state);
        out.append(" tx=").append(TX.get());
        out.append('/').append(TX_OK.get());
        out.append(" fb=").append(TX_FALLBACK.get());
        out.append(" err=").append(ERRORS.get());
        if (registered) {
            out.append(" gen=").append(generation);
            out.append(" mask=0x").append(Integer.toHexString(mask));
            if (lastInfo.length() > 0 && !"n/a".equals(lastInfo)) {
                out.append(" native[").append(lastInfo).append(']');
            }
        } else if (lastError != null) {
            out.append(" last=").append(lastError);
        }
        return out.toString();
    }

    /** Self-test field: what the forge actually answered over this channel. */
    public static String selfTest() {
        int ok = TX_OK.get();
        if (!registered) {
            return "socket down (ok=" + ok + ")";
        }
        if (ok == 0) {
            long since = registeredAt == 0L ? 0L : (System.currentTimeMillis() - registeredAt);
            return "socket live " + since + "ms, 0 forged yet";
        }
        return "socket tx=" + TX.get() + " forged=" + ok + " pass=" + TX_FALLBACK.get();
    }

    // ------------------------------------------------------------------ client loop

    private static void loop(long token) {
        while (running && RUN_TOKEN.get() == token) {
            LocalSocket socket = null;
            try {
                socket = connect();
                live = socket;
                state = "hello";
                InputStream in = socket.getInputStream();
                OutputStream out = socket.getOutputStream();
                handshake(in, out);
                register(in, out);
                state = "registered";
                serve(in, out);
            } catch (Throwable error) {
                lastError = describe(error);
                Log.w(TAG, "socket channel: " + lastError);
            } finally {
                registered = false;
                live = null;
                if (socket != null) {
                    closeQuietly(socket);
                }
                if ("registered".equals(state) || "hello".equals(state)) {
                    state = "reconnecting";
                }
            }
            if (!running || RUN_TOKEN.get() != token) {
                break;
            }
            RECONNECTS.incrementAndGet();
            sleep(RETRY_MS);
        }
    }

    /**
     * Abstract first (the preferred, SELinux-friendly name), filesystem second. Both are
     * bound by the injected library; whichever answers first wins for this session.
     */
    private static LocalSocket connect() throws IOException {
        IOException first = null;
        LocalSocket socket = new LocalSocket();
        try {
            socket.connect(new LocalSocketAddress(NAME, LocalSocketAddress.Namespace.ABSTRACT));
            pathKind = 0;
            socket.setSoTimeout(READ_TIMEOUT_MS);
            Log.i(TAG, "socket connected @" + NAME);
            return socket;
        } catch (IOException error) {
            first = error;
            closeQuietly(socket);
        }
        LocalSocket fallback = new LocalSocket();
        try {
            fallback.connect(new LocalSocketAddress(PATH, LocalSocketAddress.Namespace.FILESYSTEM));
            pathKind = 1;
            fallback.setSoTimeout(READ_TIMEOUT_MS);
            Log.i(TAG, "socket connected " + PATH);
            return fallback;
        } catch (IOException error) {
            closeQuietly(fallback);
            lastError = "@" + NAME + ": " + describe(first) + "; " + PATH + ": " + describe(error);
            throw error;
        }
    }

    private static void handshake(InputStream in, OutputStream out) throws IOException {
        byte[] body = new byte[16];
        put32(body, 0, PROTO);
        put32(body, 4, android.os.Process.myPid());
        put32(body, 8, android.os.Process.myUid());
        put32(body, 12, CLIENT_VERSION);
        sendFrame(out, TYPE_HELLO, 0L, body);
        Frame frame = readFrame(in);
        if (frame.type != TYPE_HELLO_ACK) {
            throw new IOException("expected HELLO_ACK, got " + frame.type);
        }
        if (frame.body.length < 24) {
            throw new IOException("short HELLO_ACK");
        }
        int proto = get32(frame.body, 0);
        int pid = get32(frame.body, 4);
        int uid = get32(frame.body, 8);
        int libVersion = get32(frame.body, 12);
        int libPathKind = get32(frame.body, 16);
        generation = get32(frame.body, 20);
        if (proto != PROTO) {
            throw new IOException("protocol mismatch: lib=" + proto + " client=" + PROTO);
        }
        Log.i(TAG, "socket handshake ok lib_ver=" + libVersion + " target_pid=" + pid
                + " target_uid=" + uid + " path=" + (libPathKind == 0 ? "abstract" : "file")
                + " gen=" + generation);
    }

    private static void register(InputStream in, OutputStream out) throws IOException {
        byte[] body = new byte[4 + CODES * 4];
        put32(body, 0, CODES);
        for (int code = 1; code <= CODES; code++) {
            put32(body, 4 + (code - 1) * 4, code);
        }
        sendFrame(out, TYPE_REGISTER, 0L, body);
        Frame frame = readFrame(in);
        if (frame.type != TYPE_REGISTER_ACK) {
            throw new IOException("expected REGISTER_ACK, got " + frame.type);
        }
        if (frame.body.length < 8) {
            throw new IOException("short REGISTER_ACK");
        }
        int accepted = get32(frame.body, 0);
        mask = get32(frame.body, 4);
        if (mask == 0) {
            throw new IOException("library accepted none of the " + CODES + " codes");
        }
        registered = true;
        registeredAt = System.currentTimeMillis();
        Log.i(TAG, "SOTER socket registered codes=" + accepted + " mask=0x"
                + Integer.toHexString(mask) + " route=socket");
    }

    private static void serve(InputStream in, OutputStream out) throws IOException {
        int missedPings = 0;
        while (running) {
            Frame frame;
            try {
                frame = readFrame(in);
            } catch (SocketTimeoutException idle) {
                missedPings++;
                if (missedPings > MAX_MISSED_PINGS) {
                    throw new IOException("no answer to " + missedPings + " pings");
                }
                sendFrame(out, TYPE_PING, 0L, new byte[0]);
                continue;
            }
            missedPings = 0;
            switch (frame.type) {
                case TYPE_TX:
                    handleTx(out, frame);
                    break;
                case TYPE_PONG:
                case TYPE_STATUS_RESP:
                    lastPongAt = System.currentTimeMillis();
                    lastInfo = parseInfo(frame.body);
                    break;
                default:
                    Log.w(TAG, "socket: ignoring frame type=" + frame.type);
                    break;
            }
        }
    }

    /**
     * One intercepted Soter transaction. The reply is built by exactly the interceptor the
     * binder lane would have invoked, so parity/scope/session semantics cannot drift
     * between the two lanes.
     */
    private static void handleTx(OutputStream out, Frame frame) {
        byte[] body = frame.body;
        if (body.length < 28) {
            TX_FALLBACK.incrementAndGet();
            Log.w(TAG, "socket: short TX frame (" + body.length + " bytes)");
            sendPass(out, frame.reqId);
            return;
        }
        int code = get32(body, 0);
        int flags = get32(body, 4);
        int callerUid = get32(body, 8);
        int callerPid = get32(body, 12);
        long txId = get64(body, 16);
        int length = get32(body, 24);
        if (length < 0 || length > body.length - 28) {
            TX_FALLBACK.incrementAndGet();
            Log.w(TAG, "socket: bad TX length " + length);
            sendPass(out, frame.reqId);
            return;
        }
        byte[] data = new byte[length];
        System.arraycopy(body, 28, data, 0, length);

        TX.incrementAndGet();
        byte[] reply = null;
        Parcel request = Parcel.obtain();
        try {
            request.unmarshall(data, 0, data.length);
            request.setDataPosition(0);
            // The daemon thread has no binder transaction in flight, so the caller uid the
            // forge reads has to come from the frame: SoterSvc consults this thread-local
            // first, and the parity blobs, session ownership and the scope gate all use it.
            SoterSvc.beginCallerUid(callerUid);
            v4.f action = ProbeInterceptor.INSTANCE.onPreTransact(
                    txId, DUMMY_TARGET, code, flags, callerUid, callerPid, request);
            if (action instanceof v4.d) {
                Parcel replyParcel = ((v4.d) action).a;
                if (replyParcel != null) {
                    reply = replyParcel.marshall();
                    replyParcel.recycle();
                }
            }
        } catch (Throwable error) {
            ERRORS.incrementAndGet();
            Log.w(TAG, "socket: tx code=" + code + " threw " + describe(error));
            reply = null;
        } finally {
            SoterSvc.endCallerUid();
            request.recycle();
        }
        if (reply == null || reply.length == 0) {
            TX_FALLBACK.incrementAndGet();
            sendPass(out, frame.reqId);
            return;
        }
        TX_OK.incrementAndGet();
        sendReply(out, frame.reqId, 0, reply);
    }

    // ------------------------------------------------------------------ frames

    private static final class Frame {
        final int type;
        final long reqId;
        final byte[] body;

        Frame(int type, long reqId, byte[] body) {
            this.type = type;
            this.reqId = reqId;
            this.body = body;
        }
    }

    private static void sendPass(OutputStream out, long reqId) {
        sendReply(out, reqId, STATUS_PASS, new byte[0]);
    }

    private static void sendReply(OutputStream out, long reqId, int status, byte[] payload) {
        byte[] body = new byte[8 + payload.length];
        put32(body, 0, status);
        put32(body, 4, payload.length);
        System.arraycopy(payload, 0, body, 8, payload.length);
        sendFrame(out, TYPE_REPLY, reqId, body);
    }

    private static void sendFrame(OutputStream out, int type, long reqId, byte[] body) {
        byte[] frame = new byte[HEADER + body.length];
        put32(frame, 0, MAGIC);
        put16(frame, 4, PROTO);
        put16(frame, 6, type);
        put32(frame, 8, (int) reqId);
        put32(frame, 12, body.length);
        System.arraycopy(body, 0, frame, HEADER, body.length);
        try {
            synchronized (WRITE_LOCK) {
                out.write(frame);
                out.flush();
            }
        } catch (IOException error) {
            throw new IllegalStateException(describe(error));
        }
    }

    private static Frame readFrame(InputStream in) throws IOException {
        byte[] header = new byte[HEADER];
        readFully(in, header, HEADER, true);
        if (get32(header, 0) != MAGIC) {
            throw new IOException("bad frame magic 0x" + Integer.toHexString(get32(header, 0)));
        }
        int version = get16(header, 4);
        if (version != PROTO) {
            throw new IOException("library speaks proto " + version + ", client " + PROTO);
        }
        int type = get16(header, 6);
        long reqId = get32(header, 8) & 0xffffffffL;
        int length = get32(header, 12);
        if (length < 0 || length > MAX_FRAME) {
            throw new IOException("frame too large: " + length);
        }
        byte[] body = new byte[length];
        readFully(in, body, length, false);
        return new Frame(type, reqId, body);
    }

    /**
     * @param allowIdle when true, a timeout that has not consumed a single byte is rethrown
     *                  as {@link SocketTimeoutException} (the caller treats it as an idle
     *                  connection); a timeout in the middle of a frame is always fatal
     *                  because the stream is desynchronized.
     */
    private static void readFully(InputStream in, byte[] buffer, int length, boolean allowIdle)
            throws IOException {
        int offset = 0;
        while (offset < length) {
            int count;
            try {
                count = in.read(buffer, offset, length - offset);
            } catch (SocketTimeoutException timeout) {
                if (allowIdle && offset == 0) {
                    throw timeout;
                }
                throw new IOException("stalled in the middle of a frame", timeout);
            }
            if (count <= 0) {
                throw new IOException("socket closed while reading");
            }
            offset += count;
        }
    }

    /** PONG body: active, mask, gen, path_kind, tx_total, tx_ok, tx_fallback, tx_timeout,
     *  tx_dropped, last_code, last_uid, uptime_ms (all little endian). */
    private static String parseInfo(byte[] body) {
        if (body.length < INFO_SIZE) {
            return "short(" + body.length + ")";
        }
        int active = get32(body, 0);
        int nativeMask = get32(body, 4);
        int gen = get32(body, 8);
        int path = get32(body, 12);
        long total = get64(body, 16);
        long ok = get64(body, 24);
        long pass = get64(body, 32);
        long timeout = get64(body, 40);
        long dropped = get64(body, 48);
        int lastCode = get32(body, 56);
        int lastUid = get32(body, 60);
        long uptime = get64(body, 64);
        return "active=" + active + " mask=0x" + Integer.toHexString(nativeMask) + " gen=" + gen
                + " path=" + (path == 0 ? "abstract" : "file") + " up=" + uptime + "ms"
                + " tx=" + total + "/" + ok + " pass=" + pass + " to=" + timeout
                + " drop=" + dropped + " last=" + lastCode + "@" + lastUid;
    }

    /** Ask the library for a fresh status; used by the heartbeat. Never throws. */
    public static void requestStatus() {
        LocalSocket socket = live;
        if (socket == null || !registered) {
            return;
        }
        try {
            sendFrame(socket.getOutputStream(), TYPE_STATUS, 0L, new byte[0]);
        } catch (Throwable error) {
            lastError = describe(error);
        }
    }

    // ------------------------------------------------------------------ helpers

    private static void put16(byte[] out, int offset, int value) {
        out[offset] = (byte) (value & 0xff);
        out[offset + 1] = (byte) ((value >> 8) & 0xff);
    }

    private static void put32(byte[] out, int offset, int value) {
        out[offset] = (byte) (value & 0xff);
        out[offset + 1] = (byte) ((value >> 8) & 0xff);
        out[offset + 2] = (byte) ((value >> 16) & 0xff);
        out[offset + 3] = (byte) ((value >> 24) & 0xff);
    }

    private static int get16(byte[] in, int offset) {
        return (in[offset] & 0xff) | ((in[offset + 1] & 0xff) << 8);
    }

    private static int get32(byte[] in, int offset) {
        return (in[offset] & 0xff)
                | ((in[offset + 1] & 0xff) << 8)
                | ((in[offset + 2] & 0xff) << 16)
                | ((in[offset + 3] & 0xff) << 24);
    }

    private static long get64(byte[] in, int offset) {
        long low = get32(in, offset) & 0xffffffffL;
        long high = get32(in, offset + 4) & 0xffffffffL;
        return (high << 32) | low;
    }

    private static void closeQuietly(LocalSocket socket) {
        try {
            socket.close();
        } catch (Throwable ignored) {
            // best effort: the next connect() creates a new socket anyway
        }
    }

    private static void sleep(long millis) {
        try {
            Thread.sleep(millis);
        } catch (InterruptedException interrupted) {
            Thread.currentThread().interrupt();
            running = false;
        }
    }

    private static String describe(Throwable error) {
        if (error == null) {
            return "unknown";
        }
        String message = error.getMessage();
        return error.getClass().getSimpleName() + (message == null ? "" : ": " + message);
    }
}
