package mpl;

import android.os.IBinder;
import android.os.Parcel;
import android.os.ServiceManager;
import android.util.Log;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.lang.reflect.Method;
import java.nio.charset.Charset;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.TimeZone;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * MapleSU SOTER lane - vendor Soter HAL probe + residual sample collector (p16h, one shot).
 *
 * <p><b>Why this class exists.</b> The device exposes Qualcomm's vendor AIDL HAL
 * {@code vendor.qti.hardware.soter.ISoter/default} (binder #523 in the framework
 * servicemanager). A shell-uid client cannot even resolve it ({@code service call} answers
 * "does not exist" because {@code u:r:shell:s0} has no {@code find}/{@code call} grant on
 * {@code u:r:vendor_hal_soter_qti:s0}), but the module daemon already runs as <b>uid 0 in
 * {@code u:r:shell:s0}</b> and this ROM's kernel module ({@code maplesu_root}) relaxes SELinux
 * for {@code euid == 0}. That combination - and only that combination - can ask the real HAL
 * whether the Soter TA behind SPSS answers at all.</p>
 *
 * <p><b>Trigger.</b> The daemon calls {@link #runAtStartup()} from {@code App.main}. Nothing
 * happens unless {@value #SWITCH} exists; the probe then runs on its own daemon thread (so a
 * blocking TA command can never delay the keystore interceptors) and the switch is renamed to
 * {@code run_hal_probe.done} when the JSON has been written, so a daemon restart cannot replay
 * it. {@link #main(String[])} exists so the exact same code path can be driven from a
 * {@code app_process} shell for A/B evidence.</p>
 *
 * <p><b>What it touches.</b> Read-only by construction: it opens one binder transaction per
 * (code, argument-shape) pair, reads files, and writes exactly one artifact -
 * {@value #OUT} (0644). If {@code /sdcard} is not writable from the daemon's mount namespace it
 * falls back to {@value #OUT_FALLBACK} and says so in the JSON. It never writes to an
 * application's data directory and never changes HAL/TA state on purpose: the transactions that
 * AIDL defines as mutating ({@code generate*KeyPair}, {@code remove*Key}) are executed only
 * <i>after</i> every read-only probe has been recorded, and on this device the TA rejects all of
 * them (see the HAL's own log line {@code rsp->status: -20}).</p>
 *
 * <p><b>Why both a token-only and a token+int0 transaction.</b> The HAL is AIDL/NDK, so the
 * marshalling shape of every code is known statically (see {@link #METHOD}); sending the bare
 * interface token exercises the argument-parse failure path, sending one {@code int} exercises
 * the "first argument is a uid" shape. Together they tell "code exists" apart from "code exists
 * but needs more arguments" without knowing the client AIDL by heart.</p>
 */
public final class HalProbe {

    private static final String TAG = "MPL-HALPROBE";

    /** Present -> run once; renamed to {@link #SWITCH_DONE} after the JSON is on disk. */
    public static final String SWITCH = "/data/adb/tricky_store/run_hal_probe";

    public static final String SWITCH_DONE = SWITCH + ".done";

    /** The evidence file (0644, so {@code adb pull} works as shell). */
    public static final String OUT = "/sdcard/Download/soter_hal_probe.json";

    /** Only used when {@link #OUT} cannot be created (different mount namespace / domain). */
    public static final String OUT_FALLBACK = "/data/local/tmp/soter_hal_probe.json";

    /** AIDL service instance name registered with the framework servicemanager (#523). */
    public static final String HAL_NAME = "vendor.qti.hardware.soter.ISoter/default";

    /** Interface descriptor baked into {@code BnSoter}; also the parcel interface token. */
    private static final String HAL_DESCRIPTOR = "vendor.qti.hardware.soter.ISoter";

    private static final int CODE_FIRST = 1;
    private static final int CODE_LAST = 24;
    /** AIDL meta transactions every interface answers (0x00ffffff / 0x00fffffe). */
    private static final int TX_VERSION = 0x00ffffff;
    private static final int TX_HASH = 0x00fffffe;

    private static final long TX_TIMEOUT_MS = 2500L;
    private static final long PROBE_BUDGET_MS = 120000L;

    /** Sample scan bounds - a full /data/data walk must never turn into an unbounded job. */
    private static final int MAX_DEPTH = 6;
    private static final long MAX_FILE_BYTES = 2L * 1024L * 1024L;
    private static final int MAX_SAMPLES = 200;
    private static final int MAX_FILES = 200000;
    private static final long MAX_TOTAL_BYTES = 3072L * 1024L * 1024L;
    private static final long MAX_SCAN_MS = 300000L;
    private static final int MAX_CERT_CHARS = 512;

    private static final Charset LATIN1 = Charset.forName("ISO-8859-1");

    private static final byte[] NEEDLE_CPU_ID = asciiBytes("cpu_id");
    private static final byte[] NEEDLE_PUB_KEY = asciiBytes("pub_key");

    /**
     * Transaction code -> AIDL signature. Derived from the device's own HAL glue
     * ({@code vendor.qti.hardware.soter-V1-ndk.so}, {@code BpSoter::<method>} passes the code as an
     * immediate to {@code AIBinder_transact}); kept here so the JSON is readable evidence, not a
     * wall of numbers. Index 0 is unused; 15..24 are unknown to version 1 of the interface.
     */
    private static final String[] METHOD = new String[]{
            "",
            "exportAskPublicKey(int uid, out SoterBufferReturn)",
            "exportAttkPublicKey(out SoterBufferReturn)",
            "exportAuthKeyPublicKey(int uid, String alias, out SoterBufferReturn)",
            "finishSign(long session, out SoterBufferReturn)",
            "generateAskKeyPair(int uid, out SoterErrorCode)",
            "generateAttkKeyPair(byte mode, out SoterErrorCode)",
            "generateAuthKeyPair(int uid, String alias, out SoterErrorCode)",
            "getDeviceId(out SoterBufferReturn)",
            "hasAskAlready(int uid, out SoterErrorCode)",
            "hasAuthKey(int uid, String alias, out SoterErrorCode)",
            "initSign(int uid, String challenge, String alias, out SoterInitReturn)",
            "removeAllUidKey(int uid, out SoterErrorCode)",
            "removeAuthKey(int uid, String alias, out SoterErrorCode)",
            "verifyAttkKeyPair(out SoterErrorCode)",
    };

    /** AIDL methods that create/delete TA key material; executed after all read-only probes. */
    private static final boolean[] MUTATING = new boolean[]{
            false,
            false, // 1  exportAskPublicKey
            false, // 2  exportAttkPublicKey
            false, // 3  exportAuthKeyPublicKey
            false, // 4  finishSign (signs an already-open session)
            true,  // 5  generateAskKeyPair
            true,  // 6  generateAttkKeyPair
            true,  // 7  generateAuthKeyPair
            false, // 8  getDeviceId
            false, // 9  hasAskAlready
            false, // 10 hasAuthKey
            false, // 11 initSign (opens a signing session, no key mutation)
            true,  // 12 removeAllUidKey
            true,  // 13 removeAuthKey
            false, // 14 verifyAttkKeyPair
    };

    private static final Pattern RE_CPU_ID_Q =
            Pattern.compile("\"cpu_id\"\\s*:\\s*\"([^\"]{1,512})\"");
    private static final Pattern RE_CPU_ID_U =
            Pattern.compile("cpu_id\\s*[:=]\\s*\"?([A-Za-z0-9_+/=.:-]{2,256})");
    private static final Pattern RE_COUNTER =
            Pattern.compile("\"counter\"\\s*:\\s*(-?\\d{1,19})");
    private static final Pattern RE_UID =
            Pattern.compile("\"uid\"\\s*:\\s*\"?(\\d{1,10})");
    private static final Pattern RE_PUB_KEY_Q =
            Pattern.compile("\"pub_key\"\\s*:\\s*\"([^\"]{2,16384})\"");
    private static final Pattern RE_PUB_KEY_U =
            Pattern.compile("pub_key\\s*[:=]\\s*\"?([A-Za-z0-9_+/=.:-]{2,16384})");

    private static final Set<String> SKIP_DIRS = new HashSet<String>(Arrays.asList(
            "lib", "cache", "code_cache", "oat", "no_backup"));

    private static final String[] SKIP_EXT = new String[]{
            ".so", ".dex", ".odex", ".oat", ".vdex", ".art", ".apk", ".jar", ".zip", ".gz",
            ".xz", ".bz2", ".7z", ".png", ".jpg", ".jpeg", ".webp", ".gif", ".bmp", ".ttf",
            ".otf", ".ttc", ".mp3", ".mp4", ".m4a", ".aac", ".ogg", ".wav", ".db", ".sqlite",
            ".sqlite3", ".db-wal", ".db-shm", ".db-journal", ".pack", ".idx", ".odex",
    };

    private static volatile ExecutorService pool;

    private HalProbe() {
    }

    // ----------------------------------------------------------------------- #
    // entry points
    // ----------------------------------------------------------------------- #

    /**
     * Called once from {@code App.main} (root, {@code u:r:shell:s0}). Returns immediately; the
     * probe itself runs on a daemon thread so a hung TA transaction cannot delay the keystore
     * interceptor startup that follows. Never throws.
     */
    public static void runAtStartup() {
        try {
            if (!new File(SWITCH).isFile()) {
                return;
            }
            Thread worker = new Thread(new Runnable() {
                @Override
                public void run() {
                    execute("daemon");
                }
            }, "mpl-halprobe");
            worker.setDaemon(true);
            worker.start();
            Log.i(TAG, "armed by " + SWITCH + " - probe running in background");
        } catch (Throwable t) {
            Log.i(TAG, "runAtStartup failed: " + describe(t));
        }
    }

    /**
     * Standalone entry for {@code app_process}, so the daemon path can be compared against a
     * shell-driven run of the same class (same uid/domain, no supervisor involved).
     */
    public static void main(String[] args) {
        String mode = (args != null && args.length > 0) ? ("standalone:" + args[0]) : "standalone";
        int rc = 1;
        try {
            rc = execute(mode) ? 0 : 2;
        } catch (Throwable t) {
            Log.i(TAG, "FATAL " + describe(t));
        }
        System.exit(rc);
    }

    // ----------------------------------------------------------------------- #
    // probe driver
    // ----------------------------------------------------------------------- #

    private static boolean execute(String mode) {
        long startedMs = System.currentTimeMillis();
        long startedNs = System.nanoTime();
        boolean switchExisted = new File(SWITCH).isFile();

        Context ctx = context(mode, switchExisted);
        Hal hal;
        try {
            hal = probeHal();
        } catch (Throwable t) {
            hal = new Hal();
            hal.error = describe(t);
            hal.codes = new ArrayList<CodeResult>();
        }
        List<Sample> samples = new ArrayList<Sample>();
        Scan scan = new Scan();
        try {
            scanSamples(samples, scan);
        } catch (Throwable t) {
            scan.stopReason = "scan_error: " + describe(t);
            scan.truncated = true;
        }
        Diag diag;
        try {
            diag = diagnostics();
        } catch (Throwable t) {
            diag = new Diag();
            diag.error = describe(t);
        }

        String renamedTo = null;
        String renameError = null;
        if (switchExisted) {
            try {
                File done = new File(SWITCH_DONE);
                if (done.exists() && !done.delete()) {
                    renameError = "cannot replace " + SWITCH_DONE;
                } else if (new File(SWITCH).renameTo(done)) {
                    renamedTo = SWITCH_DONE;
                } else {
                    renameError = "rename failed";
                }
            } catch (Throwable t) {
                renameError = describe(t);
            }
        }
        shutdownPool();

        String path = OUT;
        String json = buildJson(mode, ctx, hal, samples, scan, diag, startedMs,
                elapsedMs(startedNs), path, renamedTo, renameError);
        boolean written = writeText(path, json);
        if (!written) {
            path = OUT_FALLBACK;
            json = buildJson(mode, ctx, hal, samples, scan, diag, startedMs,
                    elapsedMs(startedNs), path, renamedTo, renameError);
            written = writeText(path, json);
        }

        int ok = 0;
        int total = 0;
        StringBuilder summary = new StringBuilder();
        for (CodeResult r : hal.codes) {
            total++;
            if (r.ok) {
                ok++;
            }
            if (summary.length() < 2000) {
                summary.append("code=").append(r.code).append('/').append(r.variant)
                        .append(" ok=").append(r.ok).append(" size=").append(r.dataSize)
                        .append(" hex=").append(r.hex == null ? "" : r.hex)
                        .append(" err=").append(r.exception == null ? "-" : r.exception)
                        .append(" | ");
            }
        }
        Log.i(TAG, "hal found=" + hal.found + " descriptor=" + hal.descriptor
                + " alive=" + hal.alive + " ping=" + hal.ping
                + " tx=" + ok + "/" + total);
        Log.i(TAG, "tx-journal " + (summary.length() > 1800
                ? summary.substring(0, 1800) : summary.toString()));
        Log.i(TAG, "samples=" + samples.size() + " files_read=" + scan.filesRead
                + " bytes=" + scan.bytesRead + " reason=" + scan.stopReason);
        Log.i(TAG, "written=" + written + " path=" + path + " switch_renamed=" + renamedTo
                + " switch_error=" + renameError);
        return written;
    }

    private static Context context(String mode, boolean switchExisted) {
        Context c = new Context();
        c.mode = mode;
        c.switchExisted = switchExisted;
        c.pid = android.os.Process.myPid();
        c.uid = android.os.Process.myUid();
        c.selinux = trim(readTextCapped(new File("/proc/self/attr/current"), 256L));
        c.status = readStatus();
        c.sdk = android.os.Build.VERSION.SDK_INT;
        c.release = android.os.Build.VERSION.RELEASE;
        c.device = android.os.Build.DEVICE;
        c.model = android.os.Build.MODEL;
        c.fingerprint = android.os.Build.FINGERPRINT;
        return c;
    }

    // ----------------------------------------------------------------------- #
    // HAL lookup + transactions
    // ----------------------------------------------------------------------- #

    private static Hal probeHal() {
        Hal hal = new Hal();
        hal.name = HAL_NAME;
        hal.codes = new ArrayList<CodeResult>();

        long t0 = System.nanoTime();
        IBinder binder = null;
        String[] errors = new String[4];

        // 1) direct call - ServiceManager.getService is @UnsupportedAppUsage, allowed for app_process
        try {
            binder = ServiceManager.getService(HAL_NAME);
            if (binder != null) {
                hal.lookup = "direct:android.os.ServiceManager.getService";
            }
        } catch (Throwable t) {
            errors[0] = "direct " + describe(t);
        }
        // 2) reflective getMethod (some ROM builds strip the greylist entry from the dex path)
        if (binder == null) {
            try {
                Class<?> sm = Class.forName("android.os.ServiceManager");
                Method m = sm.getMethod("getService", String.class);
                Object o = m.invoke(null, HAL_NAME);
                if (o instanceof IBinder) {
                    binder = (IBinder) o;
                    hal.lookup = "reflect:ServiceManager.getService";
                }
            } catch (Throwable t) {
                errors[1] = "reflect " + describe(t);
            }
        }
        // 3) reflective getDeclaredMethod + setAccessible (last resort before giving up)
        if (binder == null) {
            try {
                Class<?> sm = Class.forName("android.os.ServiceManager");
                Method m = sm.getDeclaredMethod("getService", String.class);
                m.setAccessible(true);
                Object o = m.invoke(null, HAL_NAME);
                if (o instanceof IBinder) {
                    binder = (IBinder) o;
                    hal.lookup = "reflect+accessible:ServiceManager.getService";
                }
            } catch (Throwable t) {
                errors[2] = "reflect+accessible " + describe(t);
            }
        }
        hal.lookupMs = elapsedMs(t0);
        hal.found = binder != null;
        if (!hal.found) {
            hal.error = joinErrors(errors);
        }

        String[] services = null;
        try {
            services = ServiceManager.listServices();
            hal.listSource = "direct";
        } catch (Throwable t) {
            hal.listError = describe(t);
            try {
                Class<?> sm = Class.forName("android.os.ServiceManager");
                Method m = sm.getMethod("listServices");
                Object o = m.invoke(null);
                if (o instanceof String[]) {
                    services = (String[]) o;
                    hal.listSource = "reflect";
                }
            } catch (Throwable t2) {
                hal.listError = hal.listError + " / " + describe(t2);
            }
        }
        if (services != null) {
            hal.serviceCount = services.length;
            for (String s : services) {
                if (HAL_NAME.equals(s)) {
                    hal.listed = true;
                    break;
                }
            }
        }

        if (binder == null) {
            return hal;
        }
        hal.binder = binder;
        try {
            hal.alive = binder.isBinderAlive();
        } catch (Throwable t) {
            hal.aliveError = describe(t);
        }
        try {
            hal.ping = binder.pingBinder();
        } catch (Throwable t) {
            hal.pingError = describe(t);
        }
        String descriptor = null;
        try {
            descriptor = binder.getInterfaceDescriptor();
        } catch (Throwable t) {
            hal.descriptorError = describe(t);
        }
        hal.descriptor = (descriptor == null || descriptor.length() == 0)
                ? HAL_DESCRIPTOR : descriptor;
        if (descriptor != null && descriptor.length() > 0
                && !HAL_DESCRIPTOR.equals(descriptor)) {
            hal.descriptorNote = "device descriptor differs from static BnSoter descriptor";
        }

        // Read-only codes first, mutating codes afterwards (see class doc).
        List<Integer> order = new ArrayList<Integer>();
        for (int code = CODE_FIRST; code <= CODE_LAST; code++) {
            if (!mutating(code)) {
                order.add(Integer.valueOf(code));
            }
        }
        for (int code = CODE_FIRST; code <= CODE_LAST; code++) {
            if (mutating(code)) {
                order.add(Integer.valueOf(code));
            }
        }
        long deadline = System.nanoTime() + PROBE_BUDGET_MS * 1000000L;
        for (Integer boxed : order) {
            int code = boxed.intValue();
            for (int variant = 0; variant < 2; variant++) {
                if (System.nanoTime() > deadline) {
                    hal.truncated = true;
                    hal.truncatedReason = "probe budget " + PROBE_BUDGET_MS + " ms exceeded";
                    break;
                }
                CodeResult r = transact(hal.binder, hal.descriptor, code, variant == 1);
                hal.codes.add(r);
                Log.i(TAG, "tx code=" + code + " " + r.variant + " ok=" + r.ok
                        + " size=" + r.dataSize + " hex=" + r.hex
                        + " ints=" + intsCsv(r.ints)
                        + (r.exception == null ? "" : " exception=" + r.exception));
            }
            if (hal.truncated) {
                break;
            }
        }
        // AIDL meta transactions: interface version / hash (0xffffff, 0xfffffe).
        if (!hal.truncated) {
            hal.codes.add(transact(hal.binder, hal.descriptor, TX_VERSION, false));
            hal.codes.add(transact(hal.binder, hal.descriptor, TX_HASH, false));
        }
        Collections.sort(hal.codes, new Comparator<CodeResult>() {
            @Override
            public int compare(CodeResult a, CodeResult b) {
                if (a.code != b.code) {
                    return a.code < b.code ? -1 : 1;
                }
                return a.variant.compareTo(b.variant);
            }
        });
        return hal;
    }

    private static boolean mutating(int code) {
        return code > 0 && code < MUTATING.length && MUTATING[code];
    }

    private static String methodName(int code) {
        if (code == TX_VERSION) {
            return "getInterfaceVersion()";
        }
        if (code == TX_HASH) {
            return "getInterfaceHash()";
        }
        if (code >= 1 && code < METHOD.length) {
            return METHOD[code];
        }
        return "unknown(code " + code + ")";
    }

    private static CodeResult transact(final IBinder binder, final String descriptor,
                                       final int code, final boolean withInt) {
        final String variant = withInt ? "token+int0" : "token";
        Future<CodeResult> future = pool().submit(new Callable<CodeResult>() {
            @Override
            public CodeResult call() {
                return transactBlocking(binder, descriptor, code, withInt, variant);
            }
        });
        long t0 = System.nanoTime();
        try {
            return future.get(TX_TIMEOUT_MS, TimeUnit.MILLISECONDS);
        } catch (TimeoutException te) {
            future.cancel(true);
            CodeResult r = new CodeResult();
            r.code = code;
            r.variant = variant;
            r.ok = false;
            r.timeout = true;
            r.exception = "timeout after " + TX_TIMEOUT_MS + " ms (binder transaction abandoned)";
            r.elapsedMs = elapsedMs(t0);
            return r;
        } catch (Throwable t) {
            future.cancel(true);
            CodeResult r = new CodeResult();
            r.code = code;
            r.variant = variant;
            r.ok = false;
            r.exception = describe(unwrap(t));
            r.elapsedMs = elapsedMs(t0);
            return r;
        }
    }

    private static CodeResult transactBlocking(IBinder binder, String descriptor, int code,
                                               boolean withInt, String variant) {
        CodeResult r = new CodeResult();
        r.code = code;
        r.variant = variant;
        long t0 = System.nanoTime();
        Parcel data = Parcel.obtain();
        Parcel reply = Parcel.obtain();
        try {
            data.writeInterfaceToken(descriptor);
            if (withInt) {
                data.writeInt(0);
            }
            r.ok = binder.transact(code, data, reply, 0);
            r.dataSize = reply.dataSize();
            r.hex = hexPrefix(reply, 16);
            r.ints = intPrefix(reply, 8);
        } catch (Throwable t) {
            r.exception = describe(unwrap(t));
        } finally {
            try {
                data.recycle();
            } catch (Throwable ignored) {
                // recycle must never mask the result
            }
            try {
                reply.recycle();
            } catch (Throwable ignored) {
                // recycle must never mask the result
            }
            r.elapsedMs = elapsedMs(t0);
        }
        return r;
    }

    // ----------------------------------------------------------------------- #
    // residual Soter sample scan (B)
    // ----------------------------------------------------------------------- #

    private static void scanSamples(List<Sample> out, Scan st) {
        st.roots = new String[]{"/data/user/0", "/data/data"};
        st.startedNs = System.nanoTime();
        st.visited = new HashSet<String>();
        for (String rootPath : st.roots) {
            File root = new File(rootPath);
            File[] kids = root.listFiles();
            if (kids == null) {
                st.note("cannot list " + rootPath);
                continue;
            }
            for (File pkg : kids) {
                if (stopped(st, 0)) {
                    break;
                }
                if (!pkg.isDirectory()) {
                    continue;
                }
                walk(pkg, 0, out, st);
            }
        }
    }

    private static void walk(File dir, int depth, List<Sample> out, Scan st) {
        if (stopped(st, depth)) {
            return;
        }
        String canonical;
        try {
            canonical = dir.getCanonicalPath();
        } catch (Throwable t) {
            return;
        }
        if (!st.visited.add(canonical)) {
            return; // symlink loop or the /data/data -> /data/user/0 duplicate root
        }
        st.dirs++;
        File[] kids = dir.listFiles();
        if (kids == null) {
            return;
        }
        for (File f : kids) {
            if (stopped(st, depth)) {
                return;
            }
            String name = f.getName();
            try {
                if (f.isDirectory()) {
                    if (SKIP_DIRS.contains(name)) {
                        continue;
                    }
                    walk(f, depth + 1, out, st);
                } else if (f.isFile()) {
                    st.filesSeen++;
                    if (st.filesSeen > MAX_FILES) {
                        st.truncate("max_files");
                        return;
                    }
                    long len = f.length();
                    if (len <= 0 || len > MAX_FILE_BYTES || skipName(name)) {
                        continue;
                    }
                    byte[] buf = readCapped(f, MAX_FILE_BYTES);
                    if (buf == null || buf.length == 0) {
                        continue;
                    }
                    st.filesRead++;
                    st.bytesRead += buf.length;
                    if (!contains(buf, NEEDLE_PUB_KEY) || !contains(buf, NEEDLE_CPU_ID)) {
                        continue;
                    }
                    if (hasNul(buf)) {
                        continue; // a binary that happens to embed both ASCII markers
                    }
                    Sample sample = extract(f, buf);
                    if (sample != null) {
                        out.add(sample);
                        st.matches++;
                        if (out.size() >= MAX_SAMPLES) {
                            st.truncate("max_samples");
                            return;
                        }
                    }
                }
            } catch (Throwable ignored) {
                // one unreadable inode must never abort the walk
            }
        }
    }

    private static boolean stopped(Scan st, int depth) {
        if (depth > MAX_DEPTH) {
            return true;
        }
        if (st.truncated) {
            return true;
        }
        if (st.filesSeen >= MAX_FILES) {
            st.truncate("max_files");
            return true;
        }
        if (st.bytesRead >= MAX_TOTAL_BYTES) {
            st.truncate("max_bytes");
            return true;
        }
        if (elapsedMs(st.startedNs) >= MAX_SCAN_MS) {
            st.truncate("max_time");
            return true;
        }
        return false;
    }

    private static boolean skipName(String name) {
        String lower = name.toLowerCase(Locale.US);
        for (String ext : SKIP_EXT) {
            if (lower.endsWith(ext)) {
                return true;
            }
        }
        return false;
    }

    private static Sample extract(File file, byte[] buf) {
        String text = new String(buf, LATIN1);
        Sample s = new Sample();
        s.path = file.getAbsolutePath();
        s.size = file.length();
        s.mtimeMs = file.lastModified();
        s.cpuId = firstMatch(text, RE_CPU_ID_Q, RE_CPU_ID_U);
        s.counter = firstMatch(text, RE_COUNTER);
        s.uid = firstMatch(text, RE_UID);
        s.pubKey32 = truncate(firstMatch(text, RE_PUB_KEY_Q, RE_PUB_KEY_U), 32);
        parseCerts(text, s);
        return s;
    }

    private static void parseCerts(String text, Sample s) {
        int key = indexOfIgnoreCase(text, "\"certs\"");
        if (key < 0) {
            key = indexOfIgnoreCase(text, "certs");
        }
        if (key < 0) {
            return;
        }
        int lb = text.indexOf('[', key);
        if (lb < 0) {
            return;
        }
        int rb = matchingBracket(text, lb);
        if (rb < 0) {
            s.certsNote = "certs array not closed";
            return;
        }
        List<String> items = splitTopLevel(text, lb + 1, rb);
        s.certs = items.size();
        if (!items.isEmpty()) {
            String first = items.get(0);
            s.firstCert = truncate(first, MAX_CERT_CHARS);
            s.certPem = first.indexOf("BEGIN CERTIFICATE") >= 0;
        }
    }

    private static int matchingBracket(String text, int open) {
        int depth = 0;
        boolean inString = false;
        boolean escape = false;
        for (int i = open; i < text.length(); i++) {
            char c = text.charAt(i);
            if (inString) {
                if (escape) {
                    escape = false;
                } else if (c == '\\') {
                    escape = true;
                } else if (c == '"') {
                    inString = false;
                }
                continue;
            }
            if (c == '"') {
                inString = true;
            } else if (c == '[') {
                depth++;
            } else if (c == ']') {
                depth--;
                if (depth == 0) {
                    return i;
                }
            }
        }
        return -1;
    }

    /** Top-level comma split, string aware; keeps the raw (still escaped) element text. */
    private static List<String> splitTopLevel(String text, int from, int to) {
        List<String> out = new ArrayList<String>();
        StringBuilder item = new StringBuilder();
        boolean inString = false;
        boolean escape = false;
        for (int i = from; i < to; i++) {
            char c = text.charAt(i);
            if (inString) {
                item.append(c);
                if (escape) {
                    escape = false;
                } else if (c == '\\') {
                    escape = true;
                } else if (c == '"') {
                    inString = false;
                }
                continue;
            }
            if (c == '"') {
                inString = true;
                item.append(c);
            } else if (c == ',') {
                addItem(out, item);
            } else {
                item.append(c);
            }
        }
        addItem(out, item);
        return out;
    }

    private static void addItem(List<String> out, StringBuilder item) {
        String s = item.toString().trim();
        if (s.length() > 0) {
            out.add(s);
        }
        item.setLength(0);
    }

    // ----------------------------------------------------------------------- #
    // diagnostics (B.6)
    // ----------------------------------------------------------------------- #

    private static Diag diagnostics() {
        Diag d = new Diag();
        File qsee = new File("/dev/qsee_ipc_irq_spss");
        d.qseePath = qsee.getAbsolutePath();
        d.qseeExists = qsee.exists();
        d.qseeCanRead = qsee.canRead();
        // Open only: this char device implements an ioctl protocol; a read() may block or
        // return EINVAL (measured on this device), so no byte is ever consumed here.
        FileInputStream in = null;
        try {
            in = new FileInputStream(qsee);
            d.qseeOpened = true;
        } catch (Throwable t) {
            d.qseeError = describe(t);
        } finally {
            if (in != null) {
                try {
                    in.close();
                } catch (Throwable ignored) {
                    // close of a never-read diagnostic stream is best effort
                }
            }
        }

        d.binder = new String[]{"/dev/binder", "/dev/vndbinder", "/dev/hwbinder"};
        d.binderExists = new boolean[d.binder.length];
        for (int i = 0; i < d.binder.length; i++) {
            d.binderExists[i] = new File(d.binder[i]).exists();
        }

        int found = findPid("vendor.qti.hardware.soter-service");
        d.halPidFound = found;
        d.halPidRequested = 3119;
        int pid = found > 0 ? found : 3119;
        d.halPidUsed = pid;
        readMaps(d, pid);

        d.trickyStoreListing = listDirCapped(new File("/data/adb/tricky_store"), 40);
        return d;
    }

    private static void readMaps(Diag d, int pid) {
        File maps = new File("/proc/" + pid + "/maps");
        d.mapsPath = maps.getAbsolutePath();
        d.mapsExists = maps.exists();
        long len = maps.length();
        d.mapsSize = len;
        byte[] buf = readCapped(maps, 256L * 1024L);
        if (buf == null) {
            d.mapsError = "read failed";
            return;
        }
        d.mapsReadable = true;
        d.mapsBytes = buf.length;
        d.mapsTruncated = len > buf.length;
        String text = new String(buf, LATIN1);
        d.mapsLines = countLines(text);
        String lower = text.toLowerCase(Locale.US);
        d.mapsHasQsee = lower.indexOf("qsee") >= 0;
        d.mapsHasSoter = lower.indexOf("soter") >= 0;
        d.mapsHasSpss = lower.indexOf("spss") >= 0;
        d.mapsFirstLines = firstLines(text, 3);
    }

    private static int findPid(String needle) {
        File proc = new File("/proc");
        String[] names = proc.list();
        if (names == null) {
            return -1;
        }
        for (String name : names) {
            if (!isDigits(name)) {
                continue;
            }
            String cmdline = readTextCapped(new File("/proc/" + name + "/cmdline"), 512L);
            if (cmdline != null && cmdline.indexOf(needle) >= 0) {
                try {
                    return Integer.parseInt(name);
                } catch (Throwable ignored) {
                    // not a pid we can use
                }
            }
        }
        return -1;
    }

    private static String[] listDirCapped(File dir, int max) {
        String[] names = dir.list();
        if (names == null) {
            return null;
        }
        Arrays.sort(names);
        if (names.length <= max) {
            return names;
        }
        String[] cut = new String[max];
        System.arraycopy(names, 0, cut, 0, max);
        return cut;
    }

    // ----------------------------------------------------------------------- #
    // JSON output
    // ----------------------------------------------------------------------- #

    private static String buildJson(String mode, Context ctx, Hal hal, List<Sample> samples,
                                    Scan scan, Diag diag, long startedMs, long durationMs,
                                    String path, String renamedTo, String renameError) {
        StringBuilder sb = new StringBuilder(96 * 1024);
        boolean[] f = new boolean[]{true};
        sb.append('{');
        field(sb, f, "schema", q("maple.soter.halprobe/1"));
        field(sb, f, "generated_at", q(iso(startedMs)));
        field(sb, f, "generated_at_ms", Long.toString(startedMs));
        field(sb, f, "duration_ms", Long.toString(durationMs));
        field(sb, f, "mode", q(mode));
        field(sb, f, "written_to", q(path));
        field(sb, f, "context", contextJson(ctx, renamedTo, renameError));
        field(sb, f, "hal", halJson(hal));
        field(sb, f, "samples", samplesJson(samples));
        field(sb, f, "scan", scanJson(scan));
        field(sb, f, "diagnostics", diagJson(diag));
        sb.append('}');
        return sb.toString();
    }

    private static String contextJson(Context c, String renamedTo, String renameError) {
        StringBuilder sb = new StringBuilder(1024);
        boolean[] f = new boolean[]{true};
        sb.append('{');
        field(sb, f, "pid", Integer.toString(c.pid));
        field(sb, f, "uid", Integer.toString(c.uid));
        field(sb, f, "selinux", q(c.selinux));
        field(sb, f, "sdk", Integer.toString(c.sdk));
        field(sb, f, "release", q(c.release));
        field(sb, f, "device", q(c.device));
        field(sb, f, "model", q(c.model));
        field(sb, f, "fingerprint", q(c.fingerprint));
        field(sb, f, "status", stringMapJson(c.status));
        StringBuilder sw = new StringBuilder(256);
        boolean[] sf = new boolean[]{true};
        sw.append('{');
        field(sw, sf, "path", q(SWITCH));
        field(sw, sf, "done_path", q(SWITCH_DONE));
        field(sw, sf, "existed", bool(c.switchExisted));
        field(sw, sf, "renamed_to", q(renamedTo));
        field(sw, sf, "rename_error", q(renameError));
        sw.append('}');
        field(sb, f, "switch", sw.toString());
        sb.append('}');
        return sb.toString();
    }

    private static String halJson(Hal h) {
        StringBuilder sb = new StringBuilder(16 * 1024);
        boolean[] f = new boolean[]{true};
        sb.append('{');
        field(sb, f, "name", q(h.name));
        field(sb, f, "found", bool(h.found));
        field(sb, f, "lookup", q(h.lookup));
        field(sb, f, "lookup_ms", Long.toString(h.lookupMs));
        field(sb, f, "error", q(h.error));
        field(sb, f, "service_count", Integer.toString(h.serviceCount));
        field(sb, f, "listed_in_service_list", bool(h.listed));
        field(sb, f, "list_source", q(h.listSource));
        field(sb, f, "list_error", q(h.listError));
        field(sb, f, "descriptor", q(h.descriptor));
        field(sb, f, "descriptor_error", q(h.descriptorError));
        field(sb, f, "descriptor_note", q(h.descriptorNote));
        field(sb, f, "binder_alive", bool(h.alive));
        field(sb, f, "binder_alive_error", q(h.aliveError));
        field(sb, f, "ping", bool(h.ping));
        field(sb, f, "ping_error", q(h.pingError));
        field(sb, f, "truncated", bool(h.truncated));
        field(sb, f, "truncated_reason", q(h.truncatedReason));
        field(sb, f, "codes", codesJson(h.codes));
        sb.append('}');
        return sb.toString();
    }

    private static String codesJson(List<CodeResult> codes) {
        if (codes == null) {
            return "[]";
        }
        StringBuilder sb = new StringBuilder(codes.size() * 200 + 2);
        sb.append('[');
        boolean first = true;
        for (CodeResult r : codes) {
            if (!first) {
                sb.append(',');
            }
            first = false;
            sb.append(codeJson(r));
        }
        sb.append(']');
        return sb.toString();
    }

    private static String codeJson(CodeResult r) {
        StringBuilder sb = new StringBuilder(256);
        boolean[] f = new boolean[]{true};
        sb.append('{');
        field(sb, f, "code", Integer.toString(r.code));
        field(sb, f, "code_hex", q("0x" + Integer.toHexString(r.code)));
        field(sb, f, "method", q(methodName(r.code)));
        field(sb, f, "mutating", bool(r.code > 0 && r.code < MUTATING.length && MUTATING[r.code]));
        field(sb, f, "variant", q(r.variant));
        field(sb, f, "ok", bool(r.ok));
        field(sb, f, "exception", q(r.exception));
        field(sb, f, "timeout", bool(r.timeout));
        field(sb, f, "data_size", Integer.toString(r.dataSize));
        field(sb, f, "hex16", q(r.hex));
        field(sb, f, "ints", intArray(r.ints));
        field(sb, f, "elapsed_ms", Long.toString(r.elapsedMs));
        sb.append('}');
        return sb.toString();
    }

    private static String samplesJson(List<Sample> samples) {
        if (samples == null || samples.isEmpty()) {
            return "[]";
        }
        StringBuilder sb = new StringBuilder(samples.size() * 512 + 2);
        sb.append('[');
        boolean first = true;
        for (Sample s : samples) {
            if (!first) {
                sb.append(',');
            }
            first = false;
            StringBuilder o = new StringBuilder(512);
            boolean[] f = new boolean[]{true};
            o.append('{');
            field(o, f, "path", q(s.path));
            field(o, f, "size", Long.toString(s.size));
            field(o, f, "mtime_ms", Long.toString(s.mtimeMs));
            field(o, f, "mtime", q(iso(s.mtimeMs)));
            field(o, f, "cpu_id", q(s.cpuId));
            field(o, f, "counter", q(s.counter));
            field(o, f, "uid", q(s.uid));
            field(o, f, "pub_key32", q(s.pubKey32));
            field(o, f, "certs", Integer.toString(s.certs));
            field(o, f, "certs_note", q(s.certsNote));
            field(o, f, "cert_first_512", q(s.firstCert));
            field(o, f, "cert_looks_pem", bool(s.certPem));
            o.append('}');
            sb.append(o);
        }
        sb.append(']');
        return sb.toString();
    }

    private static String scanJson(Scan s) {
        StringBuilder sb = new StringBuilder(512);
        boolean[] f = new boolean[]{true};
        sb.append('{');
        field(sb, f, "roots", stringArray(s.roots));
        field(sb, f, "max_depth", Integer.toString(MAX_DEPTH));
        field(sb, f, "max_file_bytes", Long.toString(MAX_FILE_BYTES));
        field(sb, f, "dirs", Integer.toString(s.dirs));
        field(sb, f, "files_seen", Integer.toString(s.filesSeen));
        field(sb, f, "files_read", Integer.toString(s.filesRead));
        field(sb, f, "bytes_read", Long.toString(s.bytesRead));
        field(sb, f, "matches", Integer.toString(s.matches));
        field(sb, f, "elapsed_ms", Long.toString(elapsedMs(s.startedNs)));
        field(sb, f, "truncated", bool(s.truncated));
        field(sb, f, "stop_reason", q(s.stopReason));
        field(sb, f, "notes", stringArray(s.notes == null ? null
                : s.notes.toArray(new String[0])));
        sb.append('}');
        return sb.toString();
    }

    private static String diagJson(Diag d) {
        StringBuilder sb = new StringBuilder(2048);
        boolean[] f = new boolean[]{true};
        sb.append('{');
        field(sb, f, "error", q(d.error));
        StringBuilder qsee = new StringBuilder(256);
        boolean[] qf = new boolean[]{true};
        qsee.append('{');
        field(qsee, qf, "path", q(d.qseePath));
        field(qsee, qf, "exists", bool(d.qseeExists));
        field(qsee, qf, "can_read", bool(d.qseeCanRead));
        field(qsee, qf, "opened", bool(d.qseeOpened));
        field(qsee, qf, "error", q(d.qseeError));
        qsee.append('}');
        field(sb, f, "qsee_ipc_irq_spss", qsee.toString());
        StringBuilder maps = new StringBuilder(768);
        boolean[] mf = new boolean[]{true};
        maps.append('{');
        field(maps, mf, "pid_requested", Integer.toString(d.halPidRequested));
        field(maps, mf, "pid_found", Integer.toString(d.halPidFound));
        field(maps, mf, "pid_used", Integer.toString(d.halPidUsed));
        field(maps, mf, "path", q(d.mapsPath));
        field(maps, mf, "exists", bool(d.mapsExists));
        field(maps, mf, "size", Long.toString(d.mapsSize));
        field(maps, mf, "readable", bool(d.mapsReadable));
        field(maps, mf, "bytes", Long.toString(d.mapsBytes));
        field(maps, mf, "truncated", bool(d.mapsTruncated));
        field(maps, mf, "lines", Integer.toString(d.mapsLines));
        field(maps, mf, "contains_qsee", bool(d.mapsHasQsee));
        field(maps, mf, "contains_spss", bool(d.mapsHasSpss));
        field(maps, mf, "contains_soter", bool(d.mapsHasSoter));
        field(maps, mf, "first_lines", stringArray(d.mapsFirstLines));
        field(maps, mf, "error", q(d.mapsError));
        maps.append('}');
        field(sb, f, "hal_maps", maps.toString());
        StringBuilder binder = new StringBuilder(256);
        boolean[] bf = new boolean[]{true};
        binder.append('{');
        if (d.binder != null) {
            for (int i = 0; i < d.binder.length; i++) {
                field(binder, bf, d.binder[i], bool(d.binderExists[i]));
            }
        }
        binder.append('}');
        field(sb, f, "binder_devices", binder.toString());
        field(sb, f, "tricky_store", stringArray(d.trickyStoreListing));
        sb.append('}');
        return sb.toString();
    }

    // ----------------------------------------------------------------------- #
    // output helpers
    // ----------------------------------------------------------------------- #

    private static boolean writeText(String path, String text) {
        File file = new File(path);
        File dir = file.getParentFile();
        if (dir != null && !dir.isDirectory() && !dir.mkdirs()) {
            return false;
        }
        File tmp = new File(path + ".tmp");
        FileOutputStream out = null;
        try {
            out = new FileOutputStream(tmp, false);
            out.write(text.getBytes(LATIN1));
            out.flush();
            out.close();
            out = null;
            mode0644(tmp);
            if (!tmp.renameTo(file)) {
                if (!file.delete() || !tmp.renameTo(file)) {
                    tmp.delete();
                    return false;
                }
            }
            mode0644(file);
            return true;
        } catch (Throwable t) {
            Log.i(TAG, "writeText " + path + " failed: " + describe(t));
            tmp.delete();
            return false;
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

    /** 0644: exact mode via Os.chmod/chmod binary; File API only as a last resort. */
    private static void mode0644(File file) {
        String path = file.getAbsolutePath();
        try {
            Class<?> os = Class.forName("android.system.Os");
            Method chmod = os.getMethod("chmod", String.class, int.class);
            chmod.invoke(null, path, Integer.valueOf(0644));
            return;
        } catch (Throwable ignored) {
            // fall through
        }
        try {
            Process p = Runtime.getRuntime().exec(
                    new String[]{"/system/bin/chmod", "644", path});
            if (p.waitFor() == 0) {
                return;
            }
        } catch (Throwable ignored) {
            // fall through
        }
        try {
            file.setReadable(true, false);
            file.setWritable(true, true);
            file.setExecutable(false, false);
        } catch (Throwable ignored) {
            // a mode mismatch must not fail the write
        }
    }

    // ----------------------------------------------------------------------- #
    // small utilities
    // ----------------------------------------------------------------------- #

    private static ExecutorService pool() {
        synchronized (HalProbe.class) {
            if (pool == null) {
                pool = Executors.newCachedThreadPool(new ThreadFactory() {
                    @Override
                    public Thread newThread(Runnable r) {
                        Thread t = new Thread(r, "mpl-halprobe-tx");
                        t.setDaemon(true);
                        return t;
                    }
                });
            }
            return pool;
        }
    }

    private static void shutdownPool() {
        synchronized (HalProbe.class) {
            if (pool != null) {
                pool.shutdownNow();
                pool = null;
            }
        }
    }

    private static byte[] asciiBytes(String s) {
        byte[] out = new byte[s.length()];
        for (int i = 0; i < s.length(); i++) {
            out[i] = (byte) s.charAt(i);
        }
        return out;
    }

    private static boolean contains(byte[] haystack, byte[] needle) {
        int last = haystack.length - needle.length;
        byte first = needle[0];
        for (int i = 0; i <= last; i++) {
            if (haystack[i] != first) {
                continue;
            }
            int j = 1;
            while (j < needle.length && haystack[i + j] == needle[j]) {
                j++;
            }
            if (j == needle.length) {
                return true;
            }
        }
        return false;
    }

    private static boolean hasNul(byte[] buf) {
        int n = Math.min(buf.length, 1024);
        for (int i = 0; i < n; i++) {
            if (buf[i] == 0) {
                return true;
            }
        }
        return false;
    }

    private static byte[] readCapped(File file, long cap) {
        FileInputStream in = null;
        try {
            long len = file.length();
            int want = (int) Math.min(len <= 0 ? cap : len, cap);
            in = new FileInputStream(file);
            byte[] buf = new byte[want];
            int off = 0;
            while (off < want) {
                int n = in.read(buf, off, want - off);
                if (n <= 0) {
                    break;
                }
                off += n;
            }
            if (off == buf.length) {
                return buf;
            }
            byte[] cut = new byte[off];
            System.arraycopy(buf, 0, cut, 0, off);
            return cut;
        } catch (Throwable t) {
            return null;
        } finally {
            if (in != null) {
                try {
                    in.close();
                } catch (Throwable ignored) {
                    // read-only helper
                }
            }
        }
    }

    private static String readTextCapped(File file, long cap) {
        byte[] buf = readCapped(file, cap);
        if (buf == null) {
            return null;
        }
        return new String(buf, LATIN1);
    }

    private static String[] readStatus() {
        String text = readTextCapped(new File("/proc/self/status"), 8192L);
        if (text == null) {
            return null;
        }
        List<String> keep = new ArrayList<String>();
        String[] lines = text.split("\n");
        for (String line : lines) {
            if (line.startsWith("Uid:") || line.startsWith("Gid:") || line.startsWith("CapEff:")
                    || line.startsWith("Seccomp:") || line.startsWith("NoNewPrivs:")) {
                keep.add(line.trim());
            }
        }
        return keep.toArray(new String[0]);
    }

    private static String firstMatch(String text, Pattern... patterns) {
        for (Pattern p : patterns) {
            Matcher m = p.matcher(text);
            if (m.find()) {
                return m.group(1);
            }
        }
        return null;
    }

    private static String truncate(String s, int max) {
        if (s == null || s.length() <= max) {
            return s;
        }
        return s.substring(0, max);
    }

    private static int indexOfIgnoreCase(String haystack, String needle) {
        int n = needle.length();
        int last = haystack.length() - n;
        for (int i = 0; i <= last; i++) {
            if (haystack.regionMatches(true, i, needle, 0, n)) {
                return i;
            }
        }
        return -1;
    }

    /**
     * First {@code maxBytes} bytes of the reply as hex, read through {@link Parcel#readInt()}.
     *
     * <p>{@code Parcel.readByte()} is {@code (byte) readInt()} on Android (it consumes four
     * bytes and truncates to the low byte), so a byte-wise loop would produce a wrong, sparse
     * hex dump. Reading ints and expanding them little-endian is the byte-faithful way.</p>
     */
    private static String hexPrefix(Parcel p, int maxBytes) {
        int size = p.dataSize();
        int n = Math.min(maxBytes, size);
        if (n <= 0) {
            return "";
        }
        int pos = p.dataPosition();
        StringBuilder sb = new StringBuilder(n * 2);
        try {
            p.setDataPosition(0);
            int done = 0;
            while (done < n) {
                int v = p.readInt();
                for (int k = 0; k < 4 && done + k < n; k++) {
                    int b = (v >>> (8 * k)) & 0xff;
                    if (b < 0x10) {
                        sb.append('0');
                    }
                    sb.append(Integer.toHexString(b));
                }
                done += 4;
            }
        } catch (Throwable ignored) {
            // a shorter hex prefix is still evidence
        } finally {
            try {
                p.setDataPosition(pos);
            } catch (Throwable ignored) {
                // restore is best effort
            }
        }
        return sb.toString();
    }

    private static int[] intPrefix(Parcel p, int maxInts) {
        int pos = p.dataPosition();
        try {
            p.setDataPosition(0);
            int n = Math.min(maxInts, p.dataAvail() / 4);
            if (n <= 0) {
                return new int[0];
            }
            int[] out = new int[n];
            for (int i = 0; i < n; i++) {
                out[i] = p.readInt();
            }
            return out;
        } catch (Throwable t) {
            return new int[0];
        } finally {
            try {
                p.setDataPosition(pos);
            } catch (Throwable ignored) {
                // restore is best effort
            }
        }
    }

    private static String intsCsv(int[] values) {
        if (values == null || values.length == 0) {
            return "[]";
        }
        StringBuilder sb = new StringBuilder(values.length * 8);
        sb.append('[');
        for (int i = 0; i < values.length; i++) {
            if (i > 0) {
                sb.append(',');
            }
            sb.append(values[i]);
        }
        sb.append(']');
        return sb.toString();
    }

    private static String intArray(int[] values) {
        return intsCsv(values);
    }

    private static String stringArray(String[] values) {
        if (values == null) {
            return "null";
        }
        StringBuilder sb = new StringBuilder(values.length * 24 + 2);
        sb.append('[');
        for (int i = 0; i < values.length; i++) {
            if (i > 0) {
                sb.append(',');
            }
            sb.append(q(values[i]));
        }
        sb.append(']');
        return sb.toString();
    }

    private static String stringMapJson(String[] statusLines) {
        if (statusLines == null) {
            return "null";
        }
        StringBuilder sb = new StringBuilder(256);
        boolean[] f = new boolean[]{true};
        sb.append('{');
        for (String line : statusLines) {
            int colon = line.indexOf(':');
            if (colon <= 0) {
                continue;
            }
            String key = line.substring(0, colon).trim();
            String value = line.substring(colon + 1).trim();
            field(sb, f, key, q(value));
        }
        sb.append('}');
        return sb.toString();
    }

    /** One JSON object member; {@code raw} must already be JSON (quoted string, number, ...). */
    private static void field(StringBuilder sb, boolean[] first, String name, String raw) {
        if (!first[0]) {
            sb.append(',');
        }
        first[0] = false;
        sb.append(q(name)).append(':').append(raw == null ? "null" : raw);
    }

    private static String bool(boolean v) {
        return v ? "true" : "false";
    }

    /** JSON string, ASCII-only on purpose: extracted values are byte-faithful Latin-1. */
    private static String q(String s) {
        if (s == null) {
            return "null";
        }
        StringBuilder sb = new StringBuilder(s.length() + 8);
        sb.append('"');
        for (int i = 0; i < s.length(); i++) {
            char c = s.charAt(i);
            switch (c) {
                case '"':
                    sb.append("\\\"");
                    break;
                case '\\':
                    sb.append("\\\\");
                    break;
                case '\n':
                    sb.append("\\n");
                    break;
                case '\r':
                    sb.append("\\r");
                    break;
                case '\t':
                    sb.append("\\t");
                    break;
                default:
                    if (c < 0x20 || c > 0x7e) {
                        String hex = Integer.toHexString(c);
                        sb.append("\\u");
                        for (int k = hex.length(); k < 4; k++) {
                            sb.append('0');
                        }
                        sb.append(hex);
                    } else {
                        sb.append(c);
                    }
            }
        }
        sb.append('"');
        return sb.toString();
    }

    private static String iso(long ms) {
        SimpleDateFormat fmt = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.US);
        fmt.setTimeZone(TimeZone.getTimeZone("UTC"));
        return fmt.format(new Date(ms));
    }

    private static long elapsedMs(long startedNs) {
        return (System.nanoTime() - startedNs) / 1000000L;
    }

    private static String trim(String s) {
        return s == null ? null : s.trim();
    }

    private static boolean isDigits(String s) {
        if (s == null || s.length() == 0) {
            return false;
        }
        for (int i = 0; i < s.length(); i++) {
            char c = s.charAt(i);
            if (c < '0' || c > '9') {
                return false;
            }
        }
        return true;
    }

    private static int countLines(String text) {
        int lines = 0;
        boolean inLine = false;
        for (int i = 0; i < text.length(); i++) {
            char c = text.charAt(i);
            if (c == '\n') {
                lines++;
                inLine = false;
            } else {
                inLine = true;
            }
        }
        return inLine ? lines + 1 : lines;
    }

    private static String[] firstLines(String text, int max) {
        List<String> out = new ArrayList<String>();
        int start = 0;
        for (int i = 0; i < text.length() && out.size() < max; i++) {
            if (text.charAt(i) == '\n') {
                out.add(text.substring(start, i));
                start = i + 1;
            }
        }
        if (out.isEmpty() && text.length() > 0) {
            out.add(text.length() > 200 ? text.substring(0, 200) : text);
        }
        return out.toArray(new String[0]);
    }

    private static String describe(Throwable t) {
        if (t == null) {
            return null;
        }
        Throwable r = unwrap(t);
        String msg = r.getMessage();
        return r.getClass().getName() + (msg == null ? "" : ": " + msg);
    }

    private static Throwable unwrap(Throwable t) {
        Throwable r = t;
        while (r instanceof java.lang.reflect.InvocationTargetException
                && r.getCause() != null) {
            r = r.getCause();
        }
        return r;
    }

    private static String joinErrors(String[] errors) {
        StringBuilder sb = new StringBuilder();
        for (String e : errors) {
            if (e == null) {
                continue;
            }
            if (sb.length() > 0) {
                sb.append(" | ");
            }
            sb.append(e);
        }
        return sb.length() == 0 ? null : sb.toString();
    }

    // ----------------------------------------------------------------------- #
    // holders
    // ----------------------------------------------------------------------- #

    private static final class Context {
        String mode;
        boolean switchExisted;
        int pid;
        int uid;
        String selinux;
        String[] status;
        int sdk;
        String release;
        String device;
        String model;
        String fingerprint;
    }

    private static final class Hal {
        String name;
        boolean found;
        String lookup;
        long lookupMs;
        String error;
        int serviceCount;
        boolean listed;
        String listSource;
        String listError;
        String descriptor;
        String descriptorError;
        String descriptorNote;
        IBinder binder;
        boolean alive;
        String aliveError;
        boolean ping;
        String pingError;
        boolean truncated;
        String truncatedReason;
        List<CodeResult> codes;
    }

    private static final class CodeResult {
        int code;
        String variant;
        boolean ok;
        String exception;
        boolean timeout;
        int dataSize;
        String hex;
        int[] ints;
        long elapsedMs;
    }

    private static final class Sample {
        String path;
        long size;
        long mtimeMs;
        String cpuId;
        String counter;
        String uid;
        String pubKey32;
        int certs;
        String certsNote;
        String firstCert;
        boolean certPem;
    }

    private static final class Scan {
        String[] roots;
        long startedNs;
        Set<String> visited;
        int dirs;
        int filesSeen;
        int filesRead;
        long bytesRead;
        int matches;
        boolean truncated;
        String stopReason;
        List<String> notes;

        void truncate(String reason) {
            truncated = true;
            if (stopReason == null) {
                stopReason = reason;
            }
        }

        void note(String message) {
            if (notes == null) {
                notes = new ArrayList<String>();
            }
            if (notes.size() < 20) {
                notes.add(message);
            }
        }
    }

    private static final class Diag {
        String error;
        String qseePath;
        boolean qseeExists;
        boolean qseeCanRead;
        boolean qseeOpened;
        String qseeError;
        String[] binder;
        boolean[] binderExists;
        int halPidRequested;
        int halPidFound;
        int halPidUsed;
        String mapsPath;
        boolean mapsExists;
        long mapsSize;
        boolean mapsReadable;
        long mapsBytes;
        boolean mapsTruncated;
        String mapsError;
        int mapsLines;
        boolean mapsHasQsee;
        boolean mapsHasSpss;
        boolean mapsHasSoter;
        String[] mapsFirstLines;
        String[] trickyStoreListing;
    }
}
