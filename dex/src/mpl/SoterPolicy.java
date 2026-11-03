package mpl;

import java.io.File;
import java.io.FileInputStream;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/**
 * MapleSU SOTER lane (p16p) - which applications the forge is allowed to answer for.
 *
 * <p>Until p16m the fork in {@code w4/e.onPreTransact} was unconditional: every caller got
 * the forged ASK/AuthKey. p16p puts a gate on the front of that dispatch and this class is
 * the policy it consults, keyed by the transaction's calling uid.</p>
 *
 * <p><b>Fail-open by construction.</b> No scope file - or an empty one, or a file that
 * cannot be read - means "forge for everyone", which is exactly the upstream behaviour. A
 * configuration problem must never silently switch the lane off; only an explicit,
 * readable, non-empty scope list restricts it.</p>
 *
 * <p><b>Why the file has to be pushed.</b> {@code com.tencent.soter.soterserver} is an
 * ordinary application uid, so SELinux keeps it out of {@code /data/adb}. The daemon (root)
 * therefore copies {@code /data/adb/tricky_store/soter_scope.conf} into the service's own
 * {@code files/} directory - see {@code SoterInjector.syncScope} - and that copy is the
 * primary source here. The {@code /data/adb} path stays as a fallback so a root-side reader
 * (probe, or a build that runs the forge in a root process) still works.</p>
 *
 * <p>Format, one entry per line, {@code #} starts a comment:</p>
 * <pre>
 *   # one uid, or pkg=uid
 *   10123
 *   com.tencent.mm=10124
 * </pre>
 * <p>The value after {@code =} is what counts; the package name is documentation for the
 * operator reading the file later.</p>
 *
 * <p>The parsed list is cached and re-read only when the file's (mtime, size) changes, so
 * the steady-state cost of {@link #allow(int)} is three stats. Every read failure is
 * swallowed and journalled as {@code MPL-SOTER}; nothing here can throw into
 * {@code onPreTransact} (an exception there would hand the transaction to the real
 * TA-less service, which is the same outcome as a deny - but without our log line).</p>
 */
public final class SoterPolicy {

    private static final String TAG = "MPL-SOTER";

    /**
     * Primary source: the copy the daemon pushes into saterserver's private files dir.
     * Owned by the service uid, mode 0600, world-unreadable on purpose.
     */
    public static final String PRIMARY =
            "/data/user/0/com.tencent.soter.soterserver/files/soter_scope";

    /** Fallback: the root-owned canonical file (readable only by a root process). */
    public static final String FALLBACK = "/data/adb/tricky_store/soter_scope.conf";

    /**
     * Test hook. When set (and non-empty) it <i>replaces</i> the candidate list above, which
     * is what lets {@code mpl.VerifyProbe} drive all four states from a shell-owned path.
     * Unset in production, where the order is exactly PRIMARY then FALLBACK.
     */
    public static final String ENV_OVERRIDE = "MPL_SCOPE_FILE";

    /** A scope list is tiny; a bigger file is not ours and is truncated, not trusted. */
    private static final long MAX_BYTES = 256L * 1024L;

    /** How long a "no file anywhere" answer is reused before the paths are probed again. */
    private static final long NONE_TTL_MS = 500L;

    /** Same decision (uid, code, hit) is logged at most once per second. */
    private static final long DECISION_WINDOW_MS = 1000L;

    /**
     * AIDL interface token of {@code ISoterService}. Needed to reach the arguments: the
     * stub's first field is the token, so {@code enforceInterface} both validates and
     * consumes it exactly like the real {@code Stub.onTransact} would.
     */
    private static final String DESCRIPTOR = "com.tencent.soter.soterserver.ISoterService";

    private static final Object LOCK = new Object();
    private static final Object LOG_LOCK = new Object();
    private static final Object DECISION_LOCK = new Object();

    /** Current parsed view; never null after the first {@link #current()} call. */
    private static volatile Snapshot cached;
    private static String lastLog;
    private static int lastDecisionUid = Integer.MIN_VALUE;
    private static int lastDecisionCode = Integer.MIN_VALUE;
    private static String lastDecisionSrc = "";
    private static boolean lastDecisionHit;
    private static long lastDecisionAt;

    private SoterPolicy() {
    }

    // ------------------------------------------------------------------ public API

    /**
     * The gate {@code w4/e.onPreTransact} calls: may this transaction be forged for
     * {@code uid}?
     *
     * <p>Always fail-open. A uid is denied only when a scope file was read successfully and
     * is non-empty and does not list it. No logging: {@link #allowFor} owns the decision
     * log, and a bare {@code allow()} from a test must not spam the journal.</p>
     */
    public static boolean allow(int uid) {
        try {
            Snapshot snapshot = current();
            if (snapshot == null || snapshot.all) {
                return true;
            }
            return snapshot.uids.contains(Integer.valueOf(uid));
        } catch (Throwable error) {
            // Never take the forge down because the policy could not be evaluated.
            return true;
        }
    }

    /**
     * The real gate: decide on the uid the <b>request Parcel declares</b>, with the binder
     * caller uid only as a fallback.
     *
     * <p>Why the Parcel wins: p16n measured that the transaction the service sees can be
     * attributed to an intermediary. The module daemon holds a keep-alive binding to keep
     * saterserver warm, and when a call is relayed the service-observed caller is the
     * intermediary (observed 10276) while the app that actually asked is someone else
     * (observed 10494). Gating on {@code callingUid} alone would therefore turn a per-app
     * policy into all-or-nothing for every relayed call. The AIDL request itself carries the
     * requested uid as its first argument for codes 1-9, so that value is the right key.</p>
     *
     * <p>The Parcel position is saved and <b>always</b> restored: the same Parcel is read
     * afterwards by {@code mpl.SoterForge} (interface token, uid, kname), and moving its
     * position would silently corrupt those reads. The restore happens in a {@code finally},
     * so it also runs when the token check throws.</p>
     *
     * @param data       request Parcel of the transaction ({@code p8}); may be null
     * @param code       transaction code ({@code p4}); only 1-9 carry {@code int uid}
     * @param callingUid {@code Binder} caller uid ({@code p6}), the fallback
     */
    public static boolean allowFor(android.os.Parcel data, int code, int callingUid) {
        int uid = callingUid;
        String src = "caller";
        int position = -1;
        try {
            if (data != null && hasUidArgument(code)) {
                position = data.dataPosition();
                data.enforceInterface(DESCRIPTOR);
                if (data.dataAvail() >= 4) {
                    int parcelUid = data.readInt();
                    if (parcelUid > 0) {
                        uid = parcelUid;
                        src = "parcel";
                    }
                }
            }
        } catch (Throwable error) {
            // A malformed/foreign/truncated Parcel must never fail the transaction.
            uid = callingUid;
            src = "caller";
        } finally {
            if (position >= 0) {
                try {
                    data.setDataPosition(position);
                } catch (Throwable ignored) {
                    // nothing else can be done; the read below still uses its own copy
                }
            }
        }
        boolean allowed = allow(uid);
        logDecision(uid, src, code, allowed);
        return allowed;
    }

    /**
     * Does transaction {@code code} carry {@code int uid} as its first AIDL argument?
     *
     * <p>Measured against the shipped {@code ISoterService} stub on this device (and the
     * probe's request builder):</p>
     * <pre>
     *   1..9   : int uid [, String] [, String]     -> the uid is the first field
     *   10     : long session
     *   11,12  : (no arguments)
     *   13     : String
     * </pre>
     * <p>An unknown code is treated as "no uid" so the caller uid is used.</p>
     */
    private static boolean hasUidArgument(int code) {
        return code >= 1 && code <= 9;
    }

    /** Drop the cache and re-read the file right now. */
    public static void reload() {
        synchronized (LOCK) {
            cached = null;
            current();
        }
    }

    /** A copy of the configured uids (empty when the mode is "all"). */
    public static Set<Integer> uids() {
        Snapshot snapshot = current();
        if (snapshot == null) {
            return Collections.emptySet();
        }
        return Collections.unmodifiableSet(new HashSet<Integer>(snapshot.uids));
    }

    /** True when there is no restriction at all (no file, or an empty one). */
    public static boolean defaultAll() {
        Snapshot snapshot = current();
        return snapshot == null || snapshot.all;
    }

    /** Path the current decision came from, or {@code "none"}. Diagnostics only. */
    public static String source() {
        Snapshot snapshot = current();
        return snapshot == null || snapshot.path == null ? "none" : snapshot.path;
    }

    /** Candidate paths in read order, including a set {@link #ENV_OVERRIDE}. */
    public static String[] candidates() {
        String override = null;
        try {
            override = System.getenv(ENV_OVERRIDE);
        } catch (Throwable ignored) {
            override = null;
        }
        if (override != null) {
            override = override.trim();
            if (override.length() > 0) {
                return new String[]{override};
            }
        }
        return new String[]{PRIMARY, FALLBACK};
    }

    // ------------------------------------------------------------------ cache

    private static Snapshot current() {
        Snapshot snapshot = cached;
        if (snapshot != null && fresh(snapshot)) {
            return snapshot;
        }
        synchronized (LOCK) {
            snapshot = cached;
            if (snapshot != null && fresh(snapshot)) {
                return snapshot;
            }
            snapshot = load();
            cached = snapshot;
            return snapshot;
        }
    }

    private static boolean fresh(Snapshot snapshot) {
        if (snapshot.path == null) {
            // "nothing configured": re-probe the candidate paths shortly, so a daemon push
            // is picked up without restarting the service.
            return System.currentTimeMillis() - snapshot.stamp < NONE_TTL_MS;
        }
        File file = new File(snapshot.path);
        return file.isFile()
                && file.lastModified() == snapshot.mtime
                && file.length() == snapshot.size;
    }

    private static Snapshot load() {
        String[] paths = candidates();
        for (int i = 0; i < paths.length; i++) {
            String path = paths[i];
            try {
                File file = new File(path);
                if (!file.isFile()) {
                    continue;
                }
                byte[] data = readAll(file);
                Set<Integer> uids = parse(data);
                boolean all = uids.isEmpty();
                Snapshot snapshot = new Snapshot(path, file.lastModified(), file.length(),
                        uids, all, System.currentTimeMillis());
                log("scope loaded n=" + uids.size() + " src=" + path
                        + (isOverride(path) ? " (test hook)" : "")
                        + (all ? " (empty -> allow all)" : ""));
                return snapshot;
            } catch (Throwable error) {
                // Unreadable (SELinux, permissions, I/O): not fatal, try the next path.
                log("scope read failed src=" + path + " err=" + error);
            }
        }
        log("scope none src=default (allow all)");
        return new Snapshot(null, 0L, 0L, Collections.<Integer>emptySet(), true,
                System.currentTimeMillis());
    }

    // ------------------------------------------------------------------ parsing

    private static Set<Integer> parse(byte[] data) {
        Set<Integer> uids = new HashSet<Integer>();
        if (data == null || data.length == 0) {
            return uids;
        }
        String text;
        try {
            text = new String(data, "UTF-8");
        } catch (Throwable error) {
            text = new String(data);
        }
        String[] lines = text.split("\n");
        for (int i = 0; i < lines.length; i++) {
            String line = lines[i];
            int hash = line.indexOf('#');
            if (hash >= 0) {
                line = line.substring(0, hash);
            }
            line = line.trim();
            if (line.length() == 0) {
                continue;
            }
            int equals = line.lastIndexOf('=');
            if (equals >= 0) {
                line = line.substring(equals + 1).trim();
            }
            int uid = parseInt(line);
            if (uid > 0) {
                uids.add(Integer.valueOf(uid));
            }
        }
        return uids;
    }

    private static int parseInt(String value) {
        try {
            return Integer.parseInt(value);
        } catch (Throwable error) {
            return -1;
        }
    }

    private static byte[] readAll(File file) throws Exception {
        FileInputStream in = new FileInputStream(file);
        try {
            long length = file.length();
            if (length < 0L) {
                length = 0L;
            }
            if (length > MAX_BYTES) {
                length = MAX_BYTES;
            }
            byte[] buffer = new byte[(int) length];
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
        } finally {
            try {
                in.close();
            } catch (Throwable ignored) {
                // best effort
            }
        }
    }

    // ------------------------------------------------------------------ diagnostics

    /** One line per state change; identical lines are collapsed. */
    private static void log(String message) {
        synchronized (LOG_LOCK) {
            if (message.equals(lastLog)) {
                return;
            }
            lastLog = message;
        }
        try {
            android.util.Log.i(TAG, message);
        } catch (Throwable ignored) {
            // a forge must not fail because logging did
        }
    }

    /**
     * The decision line: {@code scope uid=… src=parcel|caller code=… hit=true|false}.
     *
     * <p>Deduplicated on (uid, code, src, hit) for one second, so an app that hammers one
     * transaction cannot flood the journal, while a change of outcome is always visible.</p>
     */
    private static void logDecision(int uid, String src, int code, boolean hit) {
        long now = System.currentTimeMillis();
        synchronized (DECISION_LOCK) {
            if (uid == lastDecisionUid && code == lastDecisionCode && hit == lastDecisionHit
                    && src.equals(lastDecisionSrc) && now - lastDecisionAt < DECISION_WINDOW_MS) {
                return;
            }
            lastDecisionUid = uid;
            lastDecisionCode = code;
            lastDecisionHit = hit;
            lastDecisionSrc = src;
            lastDecisionAt = now;
        }
        log("scope uid=" + uid + " src=" + src + " code=" + code + " hit=" + hit);
    }

    /** True when {@code path} came from {@link #ENV_OVERRIDE} rather than the real list. */
    private static boolean isOverride(String path) {
        String override = null;
        try {
            override = System.getenv(ENV_OVERRIDE);
        } catch (Throwable ignored) {
            return false;
        }
        return override != null && override.trim().length() > 0
                && override.trim().equals(path);
    }

    /** Immutable parsed view. {@code path == null} means "no scope file anywhere". */
    private static final class Snapshot {
        final String path;
        final long mtime;
        final long size;
        final Set<Integer> uids;
        final boolean all;
        final long stamp;

        Snapshot(String path, long mtime, long size, Set<Integer> uids, boolean all,
                 long stamp) {
            this.path = path;
            this.mtime = mtime;
            this.size = size;
            this.uids = uids;
            this.all = all;
            this.stamp = stamp;
        }
    }
}
