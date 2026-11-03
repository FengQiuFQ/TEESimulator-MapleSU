package mpl;


import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Parcel;
import android.system.Os;
import android.util.Log;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

/**
 * MapleSU SOTER lane - daemon half, registration leg (p16m).
 *
 * <p>{@code com.tencent.soter.soterserver} is an on-demand bound service: it starts when a
 * client binds and dies when the last client goes away. The forge must already be mounted
 * <em>inside that process</em> before the client's first transaction, otherwise the first
 * calls are answered by the real (bootloader-unlocked, TA-less) service - which is exactly
 * the p16l outcome: injection and registration both succeeded, yet Duck still read
 * {@code finalErr=4} because its 13 calls finished before the library landed.</p>
 *
 * <p>p16m therefore prefers to <b>hold the binding itself</b> (the module daemon lives as
 * long as the system does, so the service stays warm and stays hooked), exactly like upstream
 * {@code SoterProcessSupervisor}. The manager/provider legs stay as fallbacks, so a ROM where
 * the daemon's {@code bindService} is refused still works the old way.</p>
 *
 * <p>Every (re)mount ends with a self-test that is discriminating on this device: transaction
 * 3 ({@code hasAskAlready}) answers {@code true} from the forge and {@code false} from the
 * real service (its SOTER TA is unusable), so a single journal line tells whether the hook is
 * really on the reply path.</p>
 *
 * <p><b>p16s correction.</b> That self-test was a false negative: it issued the transaction
 * from this daemon, i.e. from uid 0, and the injected library deliberately skips the
 * interceptor registry for {@code sender_euid == 0} (it rewrites the uid to 1000 and forwards
 * straight to the real service). {@code hook=MISSING} therefore described the probe, not the
 * hook: applications were being intercepted all along (Duck's TEE card is green). The probe
 * now runs under a non-root effective uid on the process' group-leader thread, which is the
 * uid the binder driver reports as {@code sender_euid}, and it is answered by
 * {@link ProbeInterceptor} with a reserved marker - see {@link #verify(IBinder)}.</p>
 */
public final class SoterBridge {
    private static final String TAG = "MPL-SOTER";
    private static final String JOURNAL = "/data/local/tmp/soter_inject.log";
    private static final String MANAGER_PACKAGE = "dev.maplesu.manager";
    private static final String PROVIDER_AUTHORITY = "dev.maplesu.manager.soter";
    private static final String PROVIDER_URI = "content://" + PROVIDER_AUTHORITY;
    private static final String TARGET_FILE =
            "/data/data/dev.maplesu.manager/files/soter_target.bin";
    private static final String TARGET_KEY = "target";
    private static final String SOTER_PACKAGE = "com.tencent.soter.soterserver";
    private static final String SOTER_DESCRIPTOR = "com.tencent.soter.soterserver.ISoterService";
    private static final String DISABLED_MARKER = "/data/adb/tricky_store/soter_forge_disabled";
    /**
     * Roll-back switch: present -> 6.0.7 behaviour (no keep-alive bind, no non-root probe;
     * the legacy root self-test reports {@code hook=LEGACY}). Never silently ignored: the
     * heartbeat and the journal both name the mode.
     */
    private static final String LEGACY_SWITCH = "/data/adb/tricky_store/soter_bridge_legacy";
    /**
     * Burst self-test trigger (shell-writable on purpose: {@code adb shell touch
     * /data/local/tmp/soter_probe_burst} must work without root). While it exists the bridge
     * issues {@link #BURST_COUNT} probe transactions back to back and journals one summary
     * line, then removes the trigger as root.
     */
    private static final String BURST_TRIGGER = "/data/local/tmp/soter_probe_burst";
    private static final int BURST_COUNT = 200;
    private static final int BACKDOOR_CODE = -559038737; // 0xDEADBEEF
    private static final int UNREGISTER_CODE = 2;
    private static final int INTERFACE_TRANSACTION = 0x5f4e5446;
    private static final int TX_HAS_ASK_ALREADY = 3;
    private static final int BINDER_TYPE_BINDER = 1;
    private static final int BINDER_TYPE_HANDLE = 3;
    private static final int BIND_AUTO_CREATE = 1;
    private static final long POLL_MS = 1000L;
    private static final long HEARTBEAT_MS = 15000L;
    private static final long BIND_RETRY_MS = 5000L;
    /** w4/e registers 13 transactions (the device AIDL has 13 methods). */
    private static final int CODES = 13;
    /** Verify the interception this often (the heartbeat then always carries a fresh fact). */
    private static final long PROBE_INTERVAL_MS = 5000L;
    /** Rebuild the backdoor after this many consecutive probe misses. */
    private static final int PROBE_FAIL_LIMIT = 3;
    /** Effective uid the probe transacts under; any uid != 0 reaches the registry path. */
    private static final int PROBE_EUID = 2000;

    private static volatile boolean started;
    private static Context context;
    private static volatile IBinder target;
    private static volatile IBinder backdoor;
    private static volatile boolean registered;
    private static String lastNote;
    private static String targetRoute;
    private static String fileVerdict;
    private static long lastBeat;
    private static boolean managerSeen;

    // --- p16socket: binder-free fallback -------------------------------------
    /**
     * Enter the socket lane after this many consecutive ticks in which the binder route
     * could not even produce a target/backdoor/registration. Two ticks (~2 s) is enough to
     * tell "the provider chain is broken on this ROM" from a slow first bind, and it keeps
     * the binder route first, as required.
     */
    private static final int SOCKET_AFTER_MISSES = 2;
    /** Test switch: force the socket lane from the first tick. */
    private static final String SOCKET_FORCE = "/data/adb/tricky_store/soter_socket_force";
    /** Live route record (single line, rewritten on every route change). */
    private static final String ROUTE_FILE = "/data/adb/tricky_store/soter_route";
    /** Boot record the WebUI reads; unknown keys survive merge_ksu_status. */
    private static final String STATUS_FILE = "/data/adb/tricky_store/ksu_status";
    private static volatile boolean socketMode;
    private static int binderMisses;
    private static String publishedRoute;
    /** True while the daemon serves Soter over the native unix socket. */
    private static volatile boolean socketForced;

    /** p16m: the daemon's own binding, preferred over every provider leg. */
    private static volatile IBinder boundService;
    private static volatile boolean bindAttempted;
    private static volatile boolean bindSupported = true;
    private static volatile String bindNote;
    private static long lastBindAttempt;
    private static String lastSelfTest = "not run";
    /** p16s: non-root probe bookkeeping. */
    private static volatile boolean legacy;
    private static long lastProbeAt;
    private static int probeStreak;
    private static int probeFailures;
    private static String probeWhy = "not run";
    private static String probeUidNote = "euid=" + PROBE_EUID;
    private static boolean probeWasLive;

    private SoterBridge() {
    }

    public static synchronized void start(Context appContext) {
        if (started) {
            return;
        }
        started = true;
        context = appContext;
        Thread thread = new Thread(new Runnable() {
            @Override
            public void run() {
                while (true) {
                    try {
                        tick();
                    } catch (Throwable error) {
                        note("tick failed: " + error);
                    }
                    try {
                        Thread.sleep(POLL_MS);
                    } catch (InterruptedException interrupted) {
                        return;
                    }
                }
            }
        }, "soter-bridge");
        thread.setDaemon(true);
        thread.start();
        Log.i(TAG, "bridge started authority=" + PROVIDER_AUTHORITY + " poll=" + POLL_MS + "ms");
        journal("bridge started authority=" + PROVIDER_AUTHORITY);
        // The keep-alive bind runs on the bridge thread (first tick, ~1 ms away), never on
        // App's main thread: bindService is a binder call into AMS and must not delay
        // Looper.loop().
    }

    /**
     * The system context the daemon attached, or {@code null} before {@link #start}.
     *
     * <p>Package-private on purpose: {@link SoterInjector} needs it to resolve the service's
     * uid (for the scope push) without building a second ActivityThread.</p>
     */
    static Context systemContext() {
        return context;
    }

    /** Called by {@link SoterInjector} right after a successful injection. */
    public static synchronized void kick() {
        if (!started) {
            return;
        }
        try {
            tick();
        } catch (Throwable error) {
            note("kick failed: " + error);
        }
    }

    // ------------------------------------------------------------------ keep-alive binding

    /**
     * Bind the SOTER service from the daemon itself. A root {@code app_process} started with
     * the module's system context has a real {@code ActivityThread}, which is what upstream
     * relies on; if this ROM refuses it, the provider legs below still apply.
     */
    private static void ensureBound() {
        if (boundService != null || !bindSupported) {
            return;
        }
        Context ctx = context;
        if (ctx == null) {
            return;
        }
        long now = System.currentTimeMillis();
        if (now - lastBindAttempt < BIND_RETRY_MS) {
            return;
        }
        lastBindAttempt = now;
        bindAttempted = true;
        final ServiceConnection connection = new ServiceConnection() {
            @Override
            public void onServiceConnected(ComponentName name, IBinder service) {
                boundService = service;
                bindNote = "connected";
                journal("direct bind connected name=" + name);
            }

            @Override
            public void onServiceDisconnected(ComponentName name) {
                boundService = null;
                bindNote = "disconnected";
                journal("direct bind disconnected (service died)");
            }

            @Override
            public void onBindingDied(ComponentName name) {
                boundService = null;
                bindNote = "binding died";
                journal("direct bind died");
            }

            @Override
            public void onNullBinding(ComponentName name) {
                boundService = null;
                bindNote = "null binding";
                journal("direct bind returned null");
            }
        };
        Executor executor = new Executor() {
            @Override
            public void execute(Runnable command) {
                Thread thread = new Thread(command, "soter-bind-cb");
                thread.setDaemon(true);
                thread.start();
            }
        };
        Intent intent = new Intent(SOTER_DESCRIPTOR).setPackage(SOTER_PACKAGE);
        try {
            boolean bound = ctx.bindService(intent, BIND_AUTO_CREATE, executor, connection);
            if (!bound) {
                bindNote = "bindService=false";
                journal("direct bind refused (bindService=false); using provider legs");
            } else {
                bindNote = "bind requested";
                journal("direct bind requested (keep-alive)");
            }
        } catch (Throwable error) {
            bindSupported = false;
            bindNote = "bindService threw";
            journal("direct bind unavailable: " + error + "; using provider legs");
        }
    }

    private static void tick() {
        if (new File(DISABLED_MARKER).exists()) {
            unregister();
            lastSelfTest = "not run (forge disabled)";
            return;
        }
        boolean legacyNow = new File(LEGACY_SWITCH).exists();
        if (legacyNow != legacy) {
            legacy = legacyNow;
            journal("mode: " + (legacy ? "LEGACY (soter_bridge_legacy present)" : "euid-probe"));
        }
        if (!legacy) {
            ensureBound();
        }
        IBinder current = target;
        if (current != null && !isUsable(current)) {
            // The service restarted (or died): drop every derived handle, including the
            // backdoor, and let this tick rebuild them from scratch.
            reset("target lost (service restarted?)");
            current = null;
        }
        // ---- p16socket: binder-free control channel ------------------------------
        // The binder route is tried first (below). Only after it has failed
        // SOCKET_AFTER_MISSES ticks in a row - or when the test switch forces it - is the
        // socket client started; once the library has registered the 13 codes, that lane
        // owns the forge until its session drops.
        if (!legacy && !socketMode) {
            if (!socketForced && new File(SOCKET_FORCE).exists()) {
                socketForced = true;
                journal("socket lane forced by " + SOCKET_FORCE);
            }
            if (socketForced) {
                binderMisses = SOCKET_AFTER_MISSES;
                SoterSocket.start();
            }
            if (SoterSocket.isRegistered()) {
                enterSocketMode();
            }
        }
        if (!registered) {
            if (current == null) {
                current = acquireTarget();
                if (current == null) {
                    maybeSocketFallback("no target binder");
                    return;
                }
                target = current;
                backdoor = null;
                watch(current, "target");
            }
            if (backdoor == null) {
                backdoor = readBackdoor(current);
                if (backdoor == null) {
                    heartbeat("backdoor not published yet (lib not injected?)");
                    maybeSocketFallback("no backdoor");
                    return; // library not injected yet (or the hook is not up)
                }
                watch(backdoor, "backdoor");
                note("backdoor acquired pid-side hook is up");
            }
            if (!register(backdoor, current)) {
                heartbeat("register failed route=" + targetRoute);
                // A register that keeps failing means the callback binder is not reachable:
                // rebuild the backdoor on the next tick instead of retrying forever.
                if (++probeFailures >= PROBE_FAIL_LIMIT) {
                    backdoor = null;
                }
                maybeSocketFallback("register failed");
                return;
            }
            registered = true;
            lastProbeAt = 0L; // verify immediately, then every PROBE_INTERVAL_MS
            note("REGISTERED " + CODES + " codes route=" + targetRoute);
            Log.i(TAG, "SOTER interceptor registered (route=" + targetRoute
                    + ", codes=" + CODES + ")");
            publishRoute("binder");
        }
        if (socketMode) {
            // No binder exists on this lane, so the binder probe/burst cannot run: the
            // self-test is the library's own transaction counters, fetched with STATUS.
            if (!SoterSocket.isRegistered()) {
                leaveSocketMode("session lost");
                heartbeat("socket session lost");
                return;
            }
            lastSelfTest = SoterSocket.selfTest();
            SoterSocket.requestStatus();
            heartbeat();
            return;
        }
        if (legacy) {
            legacyProbe(current);
        } else {
            verify(current);
            burst(current);
        }
        heartbeat();
    }

    // ------------------------------------------------------------------ socket lane

    /**
     * The binder route failed this tick. Count it and, after
     * {@link #SOCKET_AFTER_MISSES} consecutive misses, start the native control channel.
     * Non-blocking: the client thread connects on its own and the next tick observes it.
     */
    private static void maybeSocketFallback(String why) {
        binderMisses++;
        if (legacy || socketMode || SoterSocket.isRegistered()) {
            return;
        }
        if (binderMisses < SOCKET_AFTER_MISSES) {
            return;
        }
        note("binder route unusable (" + why + "); starting the native socket channel");
        SoterSocket.start();
    }

    /** The library registered our codes: this lane now owns the forge. */
    private static void enterSocketMode() {
        socketMode = true;
        registered = true;
        targetRoute = "socket";
        probeFailures = 0;
        probeStreak = 0;
        lastProbeAt = 0L;
        probeWhy = null;
        lastSelfTest = SoterSocket.selfTest();
        note("REGISTERED " + CODES + " codes route=socket (native unix socket @"
                + SoterSocket.NAME + " proto=" + SoterSocket.PROTO + ")");
        Log.i(TAG, "SOTER interceptor registered (route=socket, codes=" + CODES + ")");
        publishRoute("socket");
    }

    /** Drop the socket lane and let the next tick rebuild the binder route. */
    private static void leaveSocketMode(String why) {
        socketMode = false;
        registered = false;
        targetRoute = null;
        binderMisses = 0;
        lastSelfTest = "not run (" + why + ")";
        target = null;
        backdoor = null;
        note("socket lane lost (" + why + "); retrying the binder route");
        publishRoute("none");
    }

    /**
     * High-frequency regression: N probe transactions in a row, one journal line.
     * Any miss, exception or non-marker reply is counted, so "0 miss / 0 exception" is a
     * measured fact rather than an impression.
     */
    private static void burst(IBinder service) {
        File trigger = new File(BURST_TRIGGER);
        if (!trigger.isFile()) {
            return;
        }
        trigger.delete();
        int ok = 0;
        int miss = 0;
        String lastWhy = null;
        long startedAt = System.currentTimeMillis();
        for (int i = 0; i < BURST_COUNT; i++) {
            int[] value = probeOnce(service);
            if (value[0] == 1 && value[1] == ProbeInterceptor.PROBE_MAGIC) {
                ok++;
            } else {
                miss++;
                if (probeWhy != null) {
                    lastWhy = probeWhy;
                }
            }
        }
        long took = System.currentTimeMillis() - startedAt;
        String line = "BURST n=" + BURST_COUNT + " ok=" + ok + " miss=" + miss
                + " exceptions=" + (miss == 0 ? 0 : miss)
                + " took=" + took + "ms route=" + targetRoute
                + (lastWhy == null ? "" : " last=" + lastWhy);
        Log.i(TAG, line);
        journal(line);
        if (miss > 0) {
            registered = false;
            lastProbeAt = 0L;
        }
    }

    /** Drop everything derived from the target process. */
    private static void reset(String why) {
        target = null;
        backdoor = null;
        registered = false;
        targetRoute = null;
        probeStreak = 0;
        lastProbeAt = 0L;
        lastSelfTest = "not run (" + why + ")";
        note(why);
    }

    /**
     * Watch a binder we depend on. A saterserver restart and a daemon-side re-injection both
     * end here, which is what makes the recovery path push-driven instead of poll-driven.
     */
    private static void watch(final IBinder binder, final String what) {
        if (binder == null) {
            return;
        }
        try {
            binder.linkToDeath(new IBinder.DeathRecipient() {
                @Override
                public void binderDied() {
                    journal("death: " + what + " binder died");
                    reset(what + " binder died");
                }
            }, 0);
        } catch (Throwable error) {
            note("linkToDeath(" + what + ") failed: " + cause(error));
        }
    }

    // ------------------------------------------------------------------ verification

    /**
     * The only self-test that can be true: transact {@code tx=3} as a <b>non-root</b> sender
     * and require the interceptor's marker in the reply.
     *
     * <p>Runs on the main-thread Looper because the kernel reports
     * {@code task_euid(proc->tsk)} as {@code sender_euid}, and {@code proc->tsk} is the
     * process' group leader - the main thread. {@code android.system.Os.seteuid} changes the
     * <em>calling thread's</em> effective uid only (bionic does not broadcast it), so the flip
     * is reversible without capabilities and the daemon keeps its root identity for every
     * other thread.</p>
     *
     * <p>Discriminating: when the hook is armed the reply is {@code NoException + 1 +
     * PROBE_MAGIC}; when it is not, the real service answers {@code 0} (or refuses the code
     * outright, because it has no such method).</p>
     */
    private static void verify(final IBinder service) {
        long now = System.currentTimeMillis();
        if (now - lastProbeAt < PROBE_INTERVAL_MS) {
            return;
        }
        lastProbeAt = now;
        int[] value = probeOnce(service);
        onProbeResult(value[0], value[1], probeWhy);
    }

    /**
     * One probe round-trip, executed on the main thread (see {@link #transactProbe}).
     * Returns {@code {value, magic}}; {@code value == -1} means the probe could not run.
     */
    private static int[] probeOnce(final IBinder service) {
        final int[] value = new int[]{-1, 0};
        final String[] why = new String[]{null};
        Runnable body = new Runnable() {
            @Override
            public void run() {
                transactProbe(service, value, why);
            }
        };
        Looper main = Looper.getMainLooper();
        if (main == null) {
            probeWhy = "no main looper";
            return value;
        }
        if (Looper.myLooper() == main) {
            body.run();
        } else {
            final CountDownLatch latch = new CountDownLatch(1);
            Runnable posted = new Runnable() {
                @Override
                public void run() {
                    try {
                        body.run();
                    } finally {
                        latch.countDown();
                    }
                }
            };
            if (!new Handler(main).post(posted)) {
                probeWhy = "main looper rejected the probe";
                return value;
            }
            try {
                if (!latch.await(3, TimeUnit.SECONDS)) {
                    probeWhy = "probe timed out";
                    return value;
                }
            } catch (InterruptedException interrupted) {
                Thread.currentThread().interrupt();
                probeWhy = "probe interrupted";
                return value;
            }
        }
        if (why[0] != null) {
            probeWhy = why[0];
        }
        return value;
    }

    /** Runs on the main thread: flip euid, transact, always restore. */
    private static void transactProbe(IBinder service, int[] out, String[] why) {
        boolean flipped = false;
        int uid = probeUid();
        Parcel data = Parcel.obtain();
        Parcel reply = Parcel.obtain();
        try {
            try {
                Os.seteuid(uid);
                flipped = true;
            } catch (Throwable error) {
                why[0] = "seteuid: " + cause(error);
                return;
            }
            probeUidNote = "euid=" + uid;
            data.writeInterfaceToken(SOTER_DESCRIPTOR);
            data.writeInt(ProbeInterceptor.PROBE_UID);
            if (!service.transact(TX_HAS_ASK_ALREADY, data, reply, 0)) {
                why[0] = "tx refused (no interceptor, real service has no such method)";
                return;
            }
            reply.setDataPosition(0);
            int exception = reply.readInt();
            int value = reply.readInt();
            int magic = reply.dataAvail() >= 4 ? reply.readInt() : 0;
            out[0] = value;
            out[1] = magic;
            if (exception != 0) {
                why[0] = "exception=" + exception;
            }
        } catch (Throwable error) {
            why[0] = cause(error);
        } finally {
            data.recycle();
            reply.recycle();
            if (flipped) {
                try {
                    Os.seteuid(0);
                } catch (Throwable error) {
                    // Never leave the main thread non-root: log loudly, it is recoverable
                    // (ruid/suid are still 0, so the next tick retries the restore).
                    journal("probe: euid restore failed: " + cause(error));
                }
            }
        }
    }

    /** Effective uid the probe uses: the target's own uid when it can be read. */
    private static int probeUid() {
        try {
            String[] parts = SoterInjector.status().split("\\s+");
            for (int i = 0; i < parts.length; i++) {
                if (parts[i].startsWith("pid=")) {
                    int pid = Integer.parseInt(parts[i].substring(4));
                    if (pid > 0) {
                        int uid = uidOfPid(pid);
                        if (uid > 0) {
                            return uid;
                        }
                    }
                }
            }
        } catch (Throwable ignored) {
            // fall through to the constant
        }
        return PROBE_EUID;
    }

    private static int uidOfPid(int pid) {
        FileInputStream in = null;
        try {
            in = new FileInputStream("/proc/" + pid + "/status");
            byte[] buffer = new byte[4096];
            int count = in.read(buffer);
            if (count <= 0) {
                return -1;
            }
            String[] lines = new String(buffer, 0, count, "UTF-8").split("\n");
            for (int i = 0; i < lines.length; i++) {
                String line = lines[i];
                if (line.startsWith("Uid:")) {
                    String[] fields = line.substring(4).trim().split("\\s+");
                    return Integer.parseInt(fields[0]);
                }
            }
            return -1;
        } catch (Throwable error) {
            return -1;
        } finally {
            if (in != null) {
                try {
                    in.close();
                } catch (Throwable ignored) {
                    // best effort
                }
            }
        }
    }

    private static void onProbeResult(int value, int magic, String why) {
        boolean live = value == 1 && magic == ProbeInterceptor.PROBE_MAGIC;
        if (why != null && !live) {
            probeWhy = why;
        }
        if (live) {
            probeStreak++;
            probeFailures = 0;
            probeWhy = null;
            lastSelfTest = "tx=3 value=1 hook=LIVE";
            if (!probeWasLive) {
                probeWasLive = true;
                journal("SELFTEST LIVE tx=3 value=1 magic=" + Integer.toHexString(magic)
                        + " uid=" + probeUidNote + " hits=" + ProbeInterceptor.HITS.get()
                        + " route=" + targetRoute);
                Log.i(TAG, "SOTER selftest LIVE (non-root probe uid=" + probeUidNote + ")");
            }
            return;
        }
        probeWasLive = false;
        probeStreak = 0;
        // Distinguish "the probe ran and the real service answered" (a repairable hook
        // problem) from "the probe could not run at all" (an environment problem). Only the
        // first may trigger a re-register; the second must not churn the hook.
        if (isEnvironmentFailure(probeWhy)) {
            lastSelfTest = "tx=3 value=" + value + " hook=UNVERIFIED";
            journal("SELFTEST UNVERIFIED tx=3 value=" + value + " why=" + probeWhy
                    + " uid=" + probeUidNote + " / probe cannot run, keeping the registration");
            lastProbeAt = System.currentTimeMillis() + 25000L; // retry in ~30 s, do not churn
            return;
        }
        probeFailures++;
        lastSelfTest = "tx=3 value=" + value + " hook=MISSING";
        journal("SELFTEST MISSING tx=3 value=" + value + " magic="
                + Integer.toHexString(magic) + " why=" + probeWhy + " misses=" + probeFailures
                + " uid=" + probeUidNote + " / re-registering");
        // A self-test that fails must repair, not just print: force a full re-register on
        // the next tick and rebuild the backdoor after PROBE_FAIL_LIMIT misses.
        registered = false;
        lastProbeAt = 0L;
        if (probeFailures >= PROBE_FAIL_LIMIT) {
            backdoor = null;
            journal("probe missed " + probeFailures + "x: rebuilding backdoor");
        }
    }

    /** Failures that say nothing about the hook: they must never trigger a re-register. */
    private static boolean isEnvironmentFailure(String why) {
        if (why == null) {
            return false;
        }
        return why.startsWith("seteuid")
                || why.startsWith("no main looper")
                || why.startsWith("main looper")
                || why.startsWith("probe timed out")
                || why.startsWith("probe interrupted")
                || why.contains("SecurityException")
                || why.contains("Operation not permitted")
                || why.contains("EPERM");
    }

    /**
     * 6.0.7 behaviour, kept behind {@code /data/adb/tricky_store/soter_bridge_legacy}:
     * the transaction is issued by this (root) process, so the native euid-0 exemption means
     * the answer always comes from the real service. Reported as {@code hook=LEGACY} so the
     * log never pretends this proves interception.
     */
    private static void legacyProbe(IBinder service) {
        Parcel data = Parcel.obtain();
        Parcel reply = Parcel.obtain();
        try {
            data.writeInterfaceToken(SOTER_DESCRIPTOR);
            service.transact(TX_HAS_ASK_ALREADY, data, reply, 0);
            reply.setDataPosition(0);
            int exception = reply.readInt();
            int value = reply.readInt();
            lastSelfTest = "tx=3 value=" + value + " hook=LEGACY";
            journal("SELFTEST " + lastSelfTest + " exception=" + exception);
        } catch (Throwable error) {
            lastSelfTest = "failed (legacy)";
            journal("SELFTEST failed: " + error);
        } finally {
            data.recycle();
            reply.recycle();
        }
    }

    /** One line per change plus a 15 s heartbeat, so "nothing happened" is also evidence. */
    private static void heartbeat() {
        heartbeat(null);
    }

    private static void heartbeat(String reason) {
        long now = System.currentTimeMillis();
        if (reason == null && now - lastBeat < HEARTBEAT_MS) {
            return;
        }
        if (reason != null && now - lastBeat < HEARTBEAT_MS) {
            return;
        }
        lastBeat = now;
        String line = "hb route=" + targetRoute
                + " registered=" + (registered ? CODES : 0)
                + " selftest=[" + lastSelfTest + "]"
                + " probe=" + probeStreak + "ok/" + probeFailures + "miss"
                + " mode=" + (legacy ? "legacy" : "euid-probe")
                + " uid=" + probeUidNote
                + " hits=" + ProbeInterceptor.HITS.get()
                + " bind=" + (boundService != null ? "held" : bindNote)
                + " sock=" + SoterSocket.status()
                + " " + SoterInjector.status()
                + (probeWhy == null ? "" : " why=" + probeWhy)
                + (reason == null ? "" : " note=" + reason);
        Log.i(TAG, "bridge " + line);
        journal("bridge " + line);
    }

    // ------------------------------------------------------------------ hand-off

    private static IBinder acquireTarget() {
        IBinder held = boundService;
        if (isUsable(held)) {
            targetRoute = "daemon-bind";
            note("target acquired via daemon bind (keep-alive)");
            return held;
        }
        IBinder binder = readFileTarget();
        if (isUsable(binder)) {
            targetRoute = "file";
            note("target acquired via file");
            return binder;
        }
        binder = readProviderTargetAms();
        if (isUsable(binder)) {
            targetRoute = "ams";
            note("target acquired via ams provider");
            return binder;
        }
        binder = fetchTargetLegacy();
        if (isUsable(binder)) {
            targetRoute = "resolver";
            note("target acquired via resolver");
            return binder;
        }
        heartbeat("no target binder (bind=" + bindNote + " manager="
                + (managerSeen ? "running" : "not seen") + ")");
        return null;
    }

    /**
     * The file leg. Logs the marshalled flat object and refuses anything that is not a
     * live soterserver proxy, because a cross-process binder parcel resolves against
     * *this* process' handle table (a foreign handle number is either dead or, worse,
     * a different service).
     */
    private static IBinder readFileTarget() {
        File file = new File(TARGET_FILE);
        if (!file.isFile()) {
            return null;
        }
        byte[] data = readAll(file);
        if (data == null || data.length < 8) {
            return null;
        }
        int type = intAt(data, 0);
        long handle = longAt(data, 8);
        String header = "type=" + type + " handle=" + handle + " bytes=" + data.length;
        Parcel parcel = Parcel.obtain();
        try {
            parcel.unmarshall(data, 0, data.length);
            parcel.setDataPosition(0);
            if (type == BINDER_TYPE_BINDER) {
                // A local BBinder marshals as its *pointer*: dereferencing it here would
                // fault. This is the other half of why file hand-off cannot work.
                note("file target: " + header + " -> local binder pointer, refused");
                return null;
            }
            IBinder binder = parcel.readStrongBinder();
            String verdict = "file target: " + header + " -> "
                    + (binder == null ? "null binder" : descriptorOf(binder)
                    + " ping=" + ping(binder));
            if (fileVerdict == null || !fileVerdict.equals(verdict)) {
                fileVerdict = verdict;
                Log.i(TAG, verdict);
            }
            return binder;
        } catch (Throwable error) {
            note("file unmarshall failed: " + error);
            return null;
        } finally {
            parcel.recycle();
        }
    }

    /**
     * IActivityManager.getContentProviderExternal + IContentProvider.call.
     *
     * <p>This is the caller-less provider lookup (the one AMS offers for processes without
     * an app record: it passes caller=null into the provider machinery itself, so
     * "Unable to find app for caller" never happens). It is also what <em>starts</em> the
     * manager when it is cold, which is why the old {@code managerAlive()} gate was removed.
     * The provider still gates on {@code Binder.getCallingUid()==0}, and the binder it
     * returns travels through the provider->daemon transaction, so the kernel translates it.</p>
     */
    private static IBinder readProviderTargetAms() {
        Object holder;
        try {
            Object am = activityManager();
            if (am == null) {
                note("ams unavailable");
                return null;
            }
            holder = getContentProviderExternal(am, userId());
            if (holder == null) {
                note("ams provider not published (getContentProviderExternal returned null)");
                return null;
            }
        } catch (Throwable error) {
            note("ams provider failed: " + cause(error));
            return null;
        }
        Object provider;
        try {
            provider = field(holder, "provider");
        } catch (Throwable error) {
            note("ams holder unreadable: " + cause(error));
            return null;
        }
        if (provider == null) {
            note("ams provider not published yet");
            return null;
        }
        try {
            Bundle bundle = callProvider(provider);
            if (bundle == null) {
                note("provider call returned null (manager unbound or uid gate)");
                return null;
            }
            IBinder binder = bundle.getBinder(TARGET_KEY);
            if (binder != null) {
                managerSeen = true;
            }
            return binder;
        } catch (Throwable error) {
            note("provider call failed: " + cause(error));
            return null;
        }
    }

    private static Object activityManager() {
        try {
            Class<?> amClass = Class.forName("android.app.ActivityManager");
            Method getService = amClass.getDeclaredMethod("getService");
            getService.setAccessible(true);
            Object service = getService.invoke(null);
            if (service != null) {
                return service;
            }
        } catch (Throwable ignored) {
            // fall through to the older accessor
        }
        try {
            Class<?> nativeClass = Class.forName("android.app.ActivityManagerNative");
            Method getDefault = nativeClass.getDeclaredMethod("getDefault");
            getDefault.setAccessible(true);
            return getDefault.invoke(null);
        } catch (Throwable error) {
            return null;
        }
    }

    private static int userId() {
        try {
            Class<?> amClass = Class.forName("android.app.ActivityManager");
            Method current = amClass.getMethod("getCurrentUser");
            Object value = current.invoke(null);
            if (value instanceof Integer) {
                return ((Integer) value).intValue();
            }
        } catch (Throwable ignored) {
            // fall through
        }
        return android.os.Process.myUid() / 100000;
    }

    /**
     * IActivityManager.getContentProviderExternal(name, userId, token, tag) - 4 args on
     * this platform. AMS turns it into a caller-less provider lookup, so no app record
     * is required; only the component-permission/exported check remains (uid 0 passes).
     */
    private static Object getContentProviderExternal(Object am, int user) {
        Method[] methods = am.getClass().getMethods();
        for (int i = 0; i < methods.length; i++) {
            Method method = methods[i];
            if (!"getContentProviderExternal".equals(method.getName())) {
                continue;
            }
            Class<?>[] types = method.getParameterTypes();
            if (types.length != 4 || types[0] != String.class || types[1] != int.class) {
                continue;
            }
            try {
                Object result = method.invoke(am, PROVIDER_AUTHORITY, Integer.valueOf(user),
                        null, "mpl");
                if (result != null) {
                    return result;
                }
            } catch (Throwable error) {
                note("ams getContentProviderExternal: " + cause(error));
            }
        }
        return null;
    }

    private static String cause(Throwable error) {
        Throwable root = error;
        while (root.getCause() != null && root.getCause() != root) {
            root = root.getCause();
        }
        return root.getClass().getSimpleName() + ": " + root.getMessage();
    }

    /**
     * IContentProvider.call on this platform (measured, Android 16 / PLQ110) is
     *   call(AttributionSource source, String authority, String method, String arg, Bundle extras)
     * plus the legacy call(String callingPkg, String method, String arg, Bundle) shape.
     * The provider side runs ContentProvider$Transport.call, which validates the
     * *authority* argument against its own and throws
     *   "The authority unknown does not match the one of the contentProvider: ..."
     * for the legacy shape, so the 5-arg form (with the real authority) is what works.
     */
    private static Bundle callProvider(Object provider) throws Exception {
        Method[] methods = provider.getClass().getMethods();
        for (int i = 0; i < methods.length; i++) {
            Method method = methods[i];
            if (!"call".equals(method.getName())) {
                continue;
            }
            Class<?>[] types = method.getParameterTypes();
            if (types.length != 5
                    || !"android.content.AttributionSource".equals(types[0].getName())
                    || types[1] != String.class || types[2] != String.class
                    || types[3] != String.class || types[4] != Bundle.class) {
                continue;
            }
            Object source = attributionSource();
            if (source == null) {
                continue;
            }
            Object result = method.invoke(provider, source, PROVIDER_AUTHORITY, TARGET_KEY, null,
                    null);
            return result instanceof Bundle ? (Bundle) result : null;
        }
        for (int i = 0; i < methods.length; i++) {
            Method method = methods[i];
            if (!"call".equals(method.getName())) {
                continue;
            }
            Class<?>[] types = method.getParameterTypes();
            if (types.length != 4 || types[0] != String.class || types[1] != String.class
                    || types[2] != String.class || types[3] != Bundle.class) {
                continue;
            }
            Object result = method.invoke(provider, MANAGER_PACKAGE, TARGET_KEY, null, null);
            return result instanceof Bundle ? (Bundle) result : null;
        }
        note("provider has no usable call() overload");
        return null;
    }

    /** AttributionSource for our own (uid 0, daemon) identity, built defensively. */
    private static Object attributionSource() {
        Class<?> type;
        try {
            type = Class.forName("android.content.AttributionSource");
        } catch (Throwable error) {
            return null;
        }
        int uid = android.os.Process.myUid();
        Throwable last = null;
        try {
            java.lang.reflect.Constructor<?> ctor =
                    type.getDeclaredConstructor(int.class, String.class, String.class);
            ctor.setAccessible(true);
            return ctor.newInstance(Integer.valueOf(uid), MANAGER_PACKAGE, null);
        } catch (Throwable error) {
            last = error;
        }
        try {
            java.lang.reflect.Constructor<?> ctor =
                    type.getDeclaredConstructor(int.class, String.class, String.class, String.class);
            ctor.setAccessible(true);
            return ctor.newInstance(Integer.valueOf(uid), MANAGER_PACKAGE, null, null);
        } catch (Throwable error) {
            last = error;
        }
        try {
            Class<?> builderType = Class.forName("android.content.AttributionSource$Builder");
            java.lang.reflect.Constructor<?> ctor = builderType.getDeclaredConstructor(int.class);
            ctor.setAccessible(true);
            Object builder = ctor.newInstance(Integer.valueOf(uid));
            builderType.getMethod("setPackageName", String.class).invoke(builder, MANAGER_PACKAGE);
            return builderType.getMethod("build").invoke(builder);
        } catch (Throwable error) {
            last = error;
        }
        note("attribution source failed: " + cause(last));
        return null;
    }

    private static Object field(Object owner, String name) throws Exception {
        Field field = owner.getClass().getField(name);
        return field.get(owner);
    }

    /** Last resort: the plain ContentResolver path (needs an app record in AMS). */
    private static IBinder fetchTargetLegacy() {
        Context ctx = context;
        if (ctx == null) {
            return null;
        }
        try {
            ContentResolver resolver = ctx.getContentResolver();
            Bundle result = resolver.call(Uri.parse(PROVIDER_URI), "target", null, null);
            if (result == null) {
                return null;
            }
            return result.getBinder(TARGET_KEY);
        } catch (Throwable error) {
            note("resolver provider call failed: " + error);
            return null;
        }
    }

    // ------------------------------------------------------------------ validation

    /** True only when the binder answers as soterserver, never for a stale/foreign handle. */
    private static boolean isUsable(IBinder binder) {
        if (binder == null) {
            return false;
        }
        if (!ping(binder)) {
            return false;
        }
        String descriptor = descriptorOf(binder);
        if (descriptor == null) {
            return false;
        }
        boolean soter = descriptor.toLowerCase().contains("soter");
        if (!soter) {
            note("refused binder descriptor=" + descriptor);
        }
        return soter;
    }

    private static boolean ping(IBinder binder) {
        try {
            return binder.pingBinder();
        } catch (Throwable error) {
            return false;
        }
    }

    private static String descriptorOf(IBinder binder) {
        Parcel data = Parcel.obtain();
        Parcel reply = Parcel.obtain();
        try {
            if (!binder.transact(INTERFACE_TRANSACTION, data, reply, 0)) {
                return null;
            }
            return reply.readString();
        } catch (Throwable error) {
            return null;
        } finally {
            data.recycle();
            reply.recycle();
        }
    }

    // ------------------------------------------------------------------ native side

    private static IBinder readBackdoor(IBinder service) {
        Parcel data = Parcel.obtain();
        Parcel reply = Parcel.obtain();
        try {
            if (!service.transact(BACKDOOR_CODE, data, reply, 0)) {
                note("backdoor transact refused");
                return null;
            }
            return reply.readStrongBinder();
        } catch (Throwable error) {
            return null;
        } finally {
            data.recycle();
            reply.recycle();
        }
    }

    /**
     * Same call the dex used to make from onServiceConnected:
     * `v4.a.b(backdoor, target, w4.e.a, w4.e.c)` - except that the registered callback is
     * {@link ProbeInterceptor}, which delegates everything to {@code w4.e.a} and answers only
     * the reserved probe transaction itself.
     */
    private static boolean register(IBinder backdoorBinder, IBinder service) {
        try {
            Class<?> helper = Class.forName("v4.a");
            Class<?> base = Class.forName("v4.g");
            Class<?> impl = Class.forName("w4.e");
            int[] codes = (int[]) impl.getField("c").get(null);
            Method method = helper.getMethod(
                    "b", IBinder.class, IBinder.class, base, int[].class);
            Object result = method.invoke(null, backdoorBinder, service,
                    ProbeInterceptor.INSTANCE, codes);
            boolean ok = result instanceof Boolean && ((Boolean) result).booleanValue();
            if (!ok) {
                note("register returned " + result);
            }
            return ok;
        } catch (Throwable error) {
            note("register failed: " + error);
            return false;
        }
    }

    private static void unregister() {
        SoterSocket.stop();
        socketMode = false;
        targetRoute = null;
        IBinder service = target;
        IBinder backdoorBinder = backdoor;
        if (!registered || service == null || backdoorBinder == null) {
            registered = false;
            probeStreak = 0;
            lastProbeAt = 0L;
            return;
        }
        Parcel data = Parcel.obtain();
        Parcel reply = Parcel.obtain();
        try {
            data.writeStrongBinder(service);
            backdoorBinder.transact(UNREGISTER_CODE, data, reply, 0);
            note("unregistered");
        } catch (Throwable error) {
            note("unregister failed: " + error);
        } finally {
            data.recycle();
            reply.recycle();
        }
        registered = false;
        probeStreak = 0;
        lastProbeAt = 0L;
    }

    // ------------------------------------------------------------------ helpers

    private static String readFirstArg(String pid) {
        FileInputStream in = null;
        try {
            in = new FileInputStream("/proc/" + pid + "/cmdline");
            byte[] buffer = new byte[128];
            int count = in.read(buffer);
            if (count <= 0) {
                return null;
            }
            int end = 0;
            while (end < count && buffer[end] != 0) {
                end++;
            }
            return new String(buffer, 0, end, "UTF-8");
        } catch (Throwable ignored) {
            return null;
        } finally {
            if (in != null) {
                try {
                    in.close();
                } catch (Throwable ignored) {
                    // best effort
                }
            }
        }
    }

    private static byte[] readAll(File file) {
        FileInputStream in = null;
        try {
            in = new FileInputStream(file);
            byte[] buffer = new byte[(int) file.length()];
            int offset = 0;
            while (offset < buffer.length) {
                int count = in.read(buffer, offset, buffer.length - offset);
                if (count <= 0) {
                    break;
                }
                offset += count;
            }
            if (offset == buffer.length) {
                return buffer;
            }
            byte[] trimmed = new byte[offset];
            System.arraycopy(buffer, 0, trimmed, 0, offset);
            return trimmed;
        } catch (Throwable error) {
            note("target file unreadable: " + error);
            return null;
        } finally {
            if (in != null) {
                try {
                    in.close();
                } catch (Throwable ignored) {
                    // best effort
                }
            }
        }
    }

    private static int intAt(byte[] data, int offset) {
        if (data.length < offset + 4) {
            return -1;
        }
        return (data[offset] & 0xff)
                | ((data[offset + 1] & 0xff) << 8)
                | ((data[offset + 2] & 0xff) << 16)
                | ((data[offset + 3] & 0xff) << 24);
    }

    private static long longAt(byte[] data, int offset) {
        if (data.length < offset + 8) {
            return -1L;
        }
        long low = intAt(data, offset) & 0xffffffffL;
        long high = intAt(data, offset + 4) & 0xffffffffL;
        return (high << 32) | low;
    }

    /** One line per state change, never per poll. */
    private static void note(String message) {
        if (!message.equals(lastNote)) {
            lastNote = message;
            Log.i(TAG, "bridge: " + message);
            journal("bridge: " + message);
        }
    }

    /** Root-owned journal next to the injector's, timestamped and pullable without root. */
    private static void journal(String message) {
        FileOutputStream out = null;
        try {
            out = new FileOutputStream(JOURNAL, true);
            out.write((SoterInjector.stamp() + " " + message + "\n").getBytes("UTF-8"));
        } catch (Throwable ignored) {
            // best effort
        } finally {
            if (out != null) {
                try {
                    out.close();
                } catch (Throwable ignored) {
                    // best effort
                }
            }
        }
    }

    // ------------------------------------------------------------------ route record

    /**
     * Publish which lane currently serves Soter, once per change.
     *
     * <p>Two files, both under the module's config directory:</p>
     * <ul>
     *   <li>{@code soter_route} - one line, rewritten on every transition, the live record
     *       a human or the WebUI can read without root;</li>
     *   <li>{@code ksu_status} - the boot record {@code service.sh} writes, appended with a
     *       {@code soter_route=} line. Appending (not rewriting) keeps it compatible with
     *       {@code merge_ksu_status}, which preserves unknown keys.</li>
     * </ul>
     */
    private static void publishRoute(String route) {
        if (route.equals(publishedRoute)) {
            return;
        }
        publishedRoute = route;
        String line = "route=" + route
                + " registered=" + (registered ? CODES : 0)
                + " proto=" + SoterSocket.PROTO
                + " socket=@" + SoterSocket.NAME
                + " at=" + System.currentTimeMillis();
        writeText(ROUTE_FILE, line + "\n");
        appendText(STATUS_FILE, "soter_route=" + route + "\n");
        Log.i(TAG, "soter " + line);
    }

    /** Create/replace a small root-owned text file; never throws. */
    private static void writeText(String path, String text) {
        FileOutputStream out = null;
        try {
            out = new FileOutputStream(path, false);
            out.write(text.getBytes("UTF-8"));
            out.close();
            out = null;
            File file = new File(path);
            file.setReadable(true, false);
        } catch (Throwable error) {
            note("cannot write " + path + ": " + cause(error));
        } finally {
            if (out != null) {
                try {
                    out.close();
                } catch (Throwable ignored) {
                    // best effort
                }
            }
        }
    }

    /** O_APPEND one line; never throws. */
    private static void appendText(String path, String text) {
        FileOutputStream out = null;
        try {
            out = new FileOutputStream(path, true);
            out.write(text.getBytes("UTF-8"));
        } catch (Throwable ignored) {
            // the journal and logcat still carry the fact
        } finally {
            if (out != null) {
                try {
                    out.close();
                } catch (Throwable ignored) {
                    // best effort
                }
            }
        }
    }
}
