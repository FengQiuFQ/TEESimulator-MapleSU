package mpl;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.util.Log;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * MapleSU SOTER lane - daemon half (p16m).
 *
 * <p>Owns the ptrace injection of {@code libTEESimulator.so} into
 * {@code com.tencent.soter.soterserver}. p16l proved this works ("inject rc=0") but the
 * service is bound on demand and killed when idle: it answered Duck's first call before the
 * library landed, so the forge never saw a transaction.</p>
 *
 * <p>p16m adds: (1) a millisecond timestamp on every journal/log line, so "registration" and
 * "the client's call" can be ordered; (2) {@link #status()} for the bridge's 15 s heartbeat
 * ({@code pid / mapped / injects}); (3) it keeps the target warm by letting the bridge hold
 * the binding instead of letting the process die between runs.</p>
 */
public final class SoterInjector {
    private static final String TAG = "MPL-SOTER";
    private static final String TARGET = "com.tencent.soter.soterserver";
    private static final String DISABLED_MARKER = "/data/adb/tricky_store/soter_forge_disabled";
    private static final String LIB_NAME = "libTEESimulator.so";
    private static final String INJECT_LOG = "/data/local/tmp/soter_inject.log";
    /** Root-owned canonical scope list (written by mpl.ScopeCli, read by this daemon). */
    private static final String SCOPE_SRC = "/data/adb/tricky_store/soter_scope.conf";
    /** The service's own files dir: the only place it can actually read a scope list from. */
    private static final String SCOPE_DIR = "/data/user/0/com.tencent.soter.soterserver/files";
    private static final String SCOPE_DST = SCOPE_DIR + "/soter_scope";
    /** Root-free state mirror for the manager lane (its own private files dir). */
    private static final String[] STATE_PATHS = {
            "/data/user/0/dev.maplesu.manager/files/soter.state",
            "/data/data/dev.maplesu.manager/files/soter.state",
    };
    private static final long POLL_MS = 1000L;

    private static volatile boolean started;
    private static volatile String publishedState;
    private static volatile String lastState;
    private static volatile int lastPid = -1;
    private static volatile int lastSeenPid = -1;
    private static volatile Boolean lastMapped;
    private static volatile int injectedCount;
    /** pid the scope list was last pushed for, and the source stamp that push came from. */
    private static volatile int scopePid = -1;
    private static volatile long scopeStamp = Long.MIN_VALUE;
    private static volatile String lastScopeNote;
    private static volatile Integer cachedUid;
    /** p16r: identity push state (uid + stamp of the root-owned source directory). */
    private static volatile int identityUid = -1;
    private static volatile long identityStamp = Long.MIN_VALUE;
    private static volatile long identityRetryAt;
    private static volatile String lastIdentityNote;

    private SoterInjector() {
    }

    /** Idempotent; called from App.main when the module toggle is on. */
    public static synchronized void start() {
        if (started) {
            return;
        }
        started = true;
        Thread thread = new Thread(new Runnable() {
            @Override
            public void run() {
                while (true) {
                    try {
                        tick();
                    } catch (Throwable error) {
                        Log.w(TAG, "injector tick failed", error);
                    }
                    try {
                        Thread.sleep(POLL_MS);
                    } catch (InterruptedException interrupted) {
                        return;
                    }
                }
            }
        }, "soter-injector");
        thread.setDaemon(true);
        thread.start();
        Log.i(TAG, "injector started target=" + TARGET + " poll=" + POLL_MS + "ms");
        file("injector started poll=" + POLL_MS);
    }

    /** One-line state for the bridge's heartbeat. */
    public static String status() {
        Boolean mapped = lastMapped;
        return "pid=" + lastSeenPid
                + " mapped=" + (mapped == null ? "?" : (mapped.booleanValue() ? "y" : "n"))
                + " injects=" + injectedCount;
    }

    private static void tick() {
        boolean enabled = !new File(DISABLED_MARKER).exists();
        publishState(enabled);
        if (!enabled) {
            state("disabled (marker present)");
            return;
        }
        int pid = findTargetPid();
        if (pid <= 0) {
            lastSeenPid = -1;
            lastMapped = null;
            state("no target process");
            return;
        }
        lastSeenPid = pid;
        // The in-process gate (mpl.SoterPolicy) can only read the service's own files dir,
        // so the scope list is pushed here - before the library is mapped - and again after
        // every restart, because a new process starts with whatever the last one left.
        syncScope(pid);
        // p16r: same channel, same reason - the Soter identity (ASK/AuthKey key + chain) lives
        // in root-only /data/adb and the injected forge runs as the service uid.
        syncIdentity(pid);
        Boolean mapped = isLibraryMapped(pid);
        lastMapped = mapped;
        if (Boolean.TRUE.equals(mapped)) {
            if (pid != lastPid) {
                lastPid = pid;
                state("pid=" + pid + " lib mapped");
            }
            return;
        }
        if (mapped == null) {
            state("pid=" + pid + " maps unreadable");
        } else {
            state("pid=" + pid + " lib NOT mapped -> inject");
        }
        boolean ok = inject(pid);
        if (ok) {
            injectedCount++;
            lastPid = pid;
            lastMapped = Boolean.TRUE;
            state("pid=" + pid + " injected");
            // Do not wait for the bridge's own poll: register right now.
            try {
                SoterBridge.kick();
            } catch (Throwable error) {
                Log.w(TAG, "bridge kick failed", error);
            }
        } else {
            state("pid=" + pid + " inject FAILED");
        }
    }

    private static void state(String message) {
        String value = message;
        if (value.equals(lastState)) {
            return;
        }
        lastState = value;
        String line = "injector: " + value;
        Log.i(TAG, line);
        file(line);
    }

    /** Wall-clock stamp for the shared journal (root-owned, world-readable). */
    static String stamp() {
        try {
            return new SimpleDateFormat("HH:mm:ss.SSS").format(new Date());
        } catch (Throwable t) {
            return "??:??:??.???";
        }
    }

    /** Append to the root-owned journal; never throws. */
    static void file(String message) {
        FileOutputStream out = null;
        try {
            out = new FileOutputStream(INJECT_LOG, true);
            out.write((stamp() + " " + message + "\n").getBytes("UTF-8"));
        } catch (Throwable ignored) {
            // a missing journal must never break the lane
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

    /**
     * Mirrors the module toggle into the manager's own files directory so the manager can
     * follow it without root and without starting the module WebUI. Best effort: the
     * marker directory stays the authoritative source on the module side.
     */
    private static void publishState(boolean enabled) {
        String value = enabled ? "1" : "0";
        if (value.equals(publishedState)) {
            return;
        }
        boolean wrote = false;
        for (String path : STATE_PATHS) {
            File target = new File(path);
            if (!target.isDirectory() && !target.getParentFile().isDirectory()) {
                continue;
            }
            try {
                FileOutputStream out = new FileOutputStream(target, false);
                try {
                    out.write((value + "\n").getBytes("UTF-8"));
                } finally {
                    out.close();
                }
                target.setReadable(true, false);
                wrote = true;
            } catch (Throwable ignored) {
                // Try the next candidate; the manager keeps its last known value.
            }
        }
        if (wrote) {
            publishedState = value;
            Log.i(TAG, "toggle mirror=" + value);
        }
    }

    private static int findTargetPid() {
        File[] entries = new File("/proc").listFiles();
        if (entries == null) {
            return -1;
        }
        for (File entry : entries) {
            String name = entry.getName();
            if (name.isEmpty() || !Character.isDigit(name.charAt(0))) {
                continue;
            }
            int pid = parseInt(name);
            if (pid <= 0) {
                continue;
            }
            if (TARGET.equals(readFirstArg(pid))) {
                return pid;
            }
        }
        return -1;
    }

    private static String readFirstArg(int pid) {
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

    /** true / false, or null when the maps file could not be read at all. */
    private static Boolean isLibraryMapped(int pid) {
        BufferedReader reader = null;
        try {
            reader = new BufferedReader(new FileReader("/proc/" + pid + "/maps"));
            String line;
            while ((line = reader.readLine()) != null) {
                if (line.contains(LIB_NAME)) {
                    return Boolean.TRUE;
                }
            }
            return Boolean.FALSE;
        } catch (Throwable ignored) {
            return null;
        } finally {
            if (reader != null) {
                try {
                    reader.close();
                } catch (Throwable ignored) {
                    // best effort
                }
            }
        }
    }

    // ------------------------------------------------------------------ scope push (p16p)

    /**
     * Push the root-owned scope list into the target's private files dir.
     *
     * <p>{@code com.tencent.soter.soterserver} is an ordinary application uid: SELinux keeps
     * it out of {@code /data/adb}, so the only way the in-process {@code mpl.SoterPolicy}
     * can see a per-app scope is a copy the daemon (root) places in the service's own
     * {@code files/} directory. That copy is owned by the service uid, mode 0600.</p>
     *
     * <p>Runs on every (re)start - a pid change - and again whenever the source file itself
     * changes, which is what makes a WebUI "set" take effect without restarting the service.
     * A missing source is not an error: it means "forge for everyone", so the pushed copy is
     * removed instead (a leftover copy would otherwise pin the old restriction forever).</p>
     *
     * <p>Failure is logged and retried on the next tick; it never blocks the injection.</p>
     */
    private static void syncScope(int pid) {
        File source = new File(SCOPE_SRC);
        boolean present = source.isFile();
        long stamp = present ? (source.lastModified() * 31L + source.length()) : -1L;
        if (pid == scopePid && stamp == scopeStamp) {
            return;
        }
        int uid = targetUid(pid);
        if (uid <= 0) {
            scopeState("scope: uid unknown for pid=" + pid);
            return;
        }
        String owner = uid + ":" + uid;
        String script = "D=" + SCOPE_DIR + ";S=" + SCOPE_SRC + ";rc=0;"
                + "mkdir -p \"$D\" 2>/dev/null || rc=1;"
                + "chown " + owner + " \"$D\" 2>/dev/null;"
                + "if [ -f \"$S\" ]; then "
                + "cp -f \"$S\" \"$D/soter_scope\" 2>/dev/null || rc=2;"
                + "chown " + owner + " \"$D/soter_scope\" 2>/dev/null;"
                + "chmod 0600 \"$D/soter_scope\" 2>/dev/null;"
                + "restorecon \"$D/soter_scope\" 2>/dev/null;"
                + "else rm -f \"$D/soter_scope\" 2>/dev/null || rc=3; fi;"
                + "exit $rc";
        int code = exec(script);
        scopeState("scope: " + (present ? "pushed" : "cleared")
                + " pid=" + pid + " uid=" + uid + " rc=" + code);
        if (code == 0) {
            scopePid = pid;
            scopeStamp = stamp;
        }
    }

    /** Deduplicated scope journal line (the inner loop runs once a second). */
    private static void scopeState(String message) {
        if (message.equals(lastScopeNote)) {
            return;
        }
        lastScopeNote = message;
        Log.i(TAG, message);
        file(message);
    }

    // ------------------------------------------------------------------ identity push (p16r)

    /**
     * Generates (once) and mirrors the Soter identity into the service's files dir.
     *
     * <p>The material is generated here, in the daemon: it is the only process that (a) runs as
     * root, so it can read the keybox and write {@code /data/adb/tricky_store}, and (b) has
     * {@code libcertgen.so} loaded ({@code App.main} calls
     * {@code NativeCertGen.initialize}). The injected forge cannot do any of that, so it only
     * ever reads the pushed copy.</p>
     *
     * <p>Runs on pid change and whenever the source directory changes (mtime+size of every
     * file), which is what makes "toggle {@code soter_certs}, next transaction carries a chain"
     * work without restarting the service. When the master switch is absent/off, the pushed
     * copy is removed instead: a leftover chain would otherwise keep the feature on forever
     * and break the rollback promise.</p>
     */
    private static void syncIdentity(int pid) {
        int uid = targetUid(pid);
        if (uid <= 0) {
            identityState("identity: uid unknown for pid=" + pid);
            return;
        }
        boolean enabled = false;
        try {
            enabled = SoterIdentity.rootSwitchOn();
        } catch (Throwable error) {
            Log.w(TAG, "injector: identity switch unreadable", error);
        }
        long stamp = enabled ? identityStamp() : -1L;
        // A missing source directory must always fall through to generation, even right after
        // a clear (when the recorded stamp is also -1).
        boolean needWork = enabled && stamp < 0L;
        if (!needWork && uid == identityUid && stamp == identityStamp) {
            return;
        }
        if (needWork && System.currentTimeMillis() < identityRetryAt) {
            // Generation failed a moment ago (no keybox, native unavailable, disk full, ...):
            // retry once a minute instead of burning a keypair attempt every tick.
            return;
        }
        String generated = null;
        if (enabled) {
            try {
                generated = SoterIdentity.ensureRootIdentities(SoterForge.cpuIdForIdentity());
            } catch (Throwable error) {
                generated = "identity: generation failed: " + error;
            }
            stamp = identityStamp();
        }
        int code = exec(enabled ? identityPushScript(uid, pid) : identityClearScript());
        identityState((enabled ? "identity: pushed" : "identity: cleared")
                + " uid=" + uid + " rc=" + code + " stamp=" + stamp
                + (generated == null ? "" : " [" + generated + "]"));
        if (code == 0) {
            identityUid = uid;
            identityStamp = stamp;
        }
        if (enabled && stamp < 0L) {
            identityRetryAt = System.currentTimeMillis() + 60000L;
        } else {
            identityRetryAt = 0L;
        }
    }

    /** Deduplicated identity journal line. */
    private static void identityState(String message) {
        if (message.equals(lastIdentityNote)) {
            return;
        }
        lastIdentityNote = message;
        Log.i(TAG, message);
        file(message);
    }

    /** Sum of (mtime, size) over the root-owned identity directory; -1 when absent. */
    private static long identityStamp() {
        File dir = SoterIdentity.rootDir();
        String[] files = SoterIdentity.FILES;
        long stamp = 0L;
        boolean any = false;
        for (int i = 0; i < files.length; i++) {
            File file = new File(dir, files[i]);
            if (!file.isFile()) {
                continue;
            }
            any = true;
            stamp += (file.lastModified() * 31L + file.length()) * (i + 1);
        }
        return any ? stamp : -1L;
    }

    /**
     * Copies every identity file into the service files dir and mirrors the switch.
     *
     * <p>Three things have to be right or the service cannot read the copy:</p>
     * <ul>
     *   <li><b>owner/mode</b> - the files dir and everything below it must be the service uid,
     *       mode 0600 (0700 for the directory);</li>
     *   <li><b>SELinux label</b> - {@code app_data_file} <i>with the service's MLS categories</i>
     *       ({@code s0:c512,c768} on this device). {@code restorecon} only sets the type, so a
     *       directory created here as root ends up at {@code app_data_file:s0} and an
     *       {@code untrusted_app} process may then fail to write inside it. The categories are
     *       taken from the live target process ({@code /proc/<pid>/attr/current});</li>
     *   <li><b>parent</b> - {@code files/} itself may not exist yet. {@code mkdir -p} would
     *       leave it root-owned and the app could never write its own files dir again, so the
     *       parent is re-owned/re-labelled too.</li>
     * </ul>
     */
    private static String identityPushScript(int uid, int pid) {
        String owner = uid + ":" + uid;
        String src = SoterIdentity.rootDirPath();
        String dst = SCOPE_DIR + "/soter_identity";
        String parent = SCOPE_DIR;
        StringBuilder script = new StringBuilder(1024);
        script.append("S=").append(src).append(";D=").append(dst)
                .append(";P=").append(parent).append(";O=").append(owner).append(";rc=0;")
                .append("LVL=$(cut -d: -f4- /proc/").append(pid)
                .append("/attr/current 2>/dev/null | tr -d '\\n');")
                .append("mkdir -p \"$D\" || rc=1;")
                .append("chown $O \"$P\" 2>/dev/null; chmod 0771 \"$P\" 2>/dev/null;")
                .append("if [ -n \"$LVL\" ]; then "
                        + "chcon u:object_r:app_data_file:\"$LVL\" \"$P\" 2>/dev/null; fi;")
                .append("for f in");
        for (int i = 0; i < SoterIdentity.FILES.length; i++) {
            script.append(' ').append(SoterIdentity.FILES[i]);
        }
        script.append("; do cp -f \"$S/$f\" \"$D/$f\" 2>/dev/null || rc=2; done;")
                .append("chown $O \"$D\" 2>/dev/null; chmod 0700 \"$D\" 2>/dev/null;")
                .append("chown $O \"$D\"/* 2>/dev/null; chmod 0600 \"$D\"/* 2>/dev/null;")
                // restorecon first (type), then chcon (MLS categories): restorecon rewrites the
                // whole context from file_contexts and would drop the categories again.
                .append("restorecon -R \"$D\" 2>/dev/null;")
                .append("if [ -n \"$LVL\" ]; then chcon u:object_r:app_data_file:\"$LVL\" "
                        + "\"$P\" \"$D\" \"$D\"/* 2>/dev/null; fi;")
                .append("printf on > ").append(SoterIdentity.PUSHED_SWITCH).append(';')
                .append("chown $O ").append(SoterIdentity.PUSHED_SWITCH).append(" 2>/dev/null;")
                .append("chmod 0600 ").append(SoterIdentity.PUSHED_SWITCH).append(" 2>/dev/null;")
                .append("restorecon ").append(SoterIdentity.PUSHED_SWITCH).append(" 2>/dev/null;")
                .append("if [ -n \"$LVL\" ]; then chcon u:object_r:app_data_file:\"$LVL\" ")
                .append(SoterIdentity.PUSHED_SWITCH).append(" 2>/dev/null; fi;")
                .append("exit $rc");
        return script.toString();
    }

    /** Removes the pushed identity + switch mirror so the forge falls back to p16q behaviour. */
    private static String identityClearScript() {
        return "rm -rf " + SCOPE_DIR + "/soter_identity 2>/dev/null;"
                + "rm -f " + SoterIdentity.PUSHED_SWITCH + " 2>/dev/null;"
                + "exit 0";
    }

    /** Target uid via PackageManager (daemon has a system context); /proc is the fallback. */
    private static int targetUid(int pid) {
        Integer cached = cachedUid;
        if (cached != null && cached.intValue() > 0) {
            return cached.intValue();
        }
        int uid = uidFromPackageManager();
        if (uid <= 0) {
            uid = uidFromProc(pid);
        }
        if (uid > 0) {
            cachedUid = Integer.valueOf(uid);
        }
        return uid;
    }

    private static int uidFromPackageManager() {
        try {
            Context context = systemContext();
            if (context == null) {
                return -1;
            }
            PackageManager pm = context.getPackageManager();
            if (pm == null) {
                return -1;
            }
            ApplicationInfo info = pm.getApplicationInfo(TARGET, 0);
            return info == null ? -1 : info.uid;
        } catch (Throwable error) {
            Log.w(TAG, "injector: uid via PackageManager failed: " + error);
            return -1;
        }
    }

    /**
     * The daemon's system context. {@code SoterBridge} stores the one App.main built;
     * {@code ActivityThread} is reflected into as a standalone fallback (the injector thread
     * can run its first tick before {@code SoterBridge.start}).
     */
    private static Context systemContext() {
        Context context = SoterBridge.systemContext();
        if (context != null) {
            return context;
        }
        try {
            Class<?> activityThread = Class.forName("android.app.ActivityThread");
            Object thread = null;
            try {
                thread = activityThread.getMethod("currentActivityThread").invoke(null);
            } catch (Throwable ignored) {
                thread = null;
            }
            if (thread == null) {
                thread = activityThread.getMethod("systemMain").invoke(null);
            }
            Object value = activityThread.getMethod("getSystemContext").invoke(thread);
            return value instanceof Context ? (Context) value : null;
        } catch (Throwable error) {
            Log.w(TAG, "injector: system context unavailable: " + error);
            return null;
        }
    }

    /** Fallback uid source that needs no PackageManager: the process' own status file. */
    private static int uidFromProc(int pid) {
        BufferedReader reader = null;
        try {
            reader = new BufferedReader(new FileReader("/proc/" + pid + "/status"));
            String line;
            while ((line = reader.readLine()) != null) {
                if (!line.startsWith("Uid:")) {
                    continue;
                }
                String[] parts = line.substring(4).trim().split("\\s+");
                if (parts.length == 0) {
                    continue;
                }
                return parseInt(parts[0]);
            }
            return -1;
        } catch (Throwable ignored) {
            return -1;
        } finally {
            if (reader != null) {
                try {
                    reader.close();
                } catch (Throwable ignored) {
                    // best effort
                }
            }
        }
    }

    /** Run a shell script; the exit status, or -1 when the exec itself failed. */
    private static int exec(String script) {
        try {
            Process process = Runtime.getRuntime().exec(new String[]{"/system/bin/sh", "-c", script});
            return process.waitFor();
        } catch (Throwable error) {
            Log.w(TAG, "injector: exec failed", error);
            return -1;
        }
    }

    private static boolean inject(int pid) {
        // cwd is the module core dir (service.sh does `cd "$MODDIR"`), so relative
        // `inject` and `libTEESimulator.so` resolve there.
        String core = new File(".").getAbsolutePath();
        String script = "L=" + INJECT_LOG + ";"
                + "cg=$(awk -F: '$1==0{print $3}' /proc/" + pid + "/cgroup);"
                + "fz=/sys/fs/cgroup$cg/cgroup.freeze;"
                + "[ -n \"$cg\" ] && echo 0 >$fz 2>/dev/null;"
                + "kill -CONT " + pid + " 2>/dev/null;sleep 0.2;"
                + "\"" + core + "/inject\" " + pid + " \"" + core + "/" + LIB_NAME + "\" entry >>$L 2>&1;";
        file("inject core=" + core + " pid=" + pid);
        int code = exec(script);
        Log.i(TAG, "injector: inject pid=" + pid + " rc=" + code);
        file("inject rc=" + code);
        return code == 0;
    }

    private static int parseInt(String value) {
        try {
            return Integer.parseInt(value);
        } catch (Throwable ignored) {
            return -1;
        }
    }
}
