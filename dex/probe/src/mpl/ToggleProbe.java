package mpl;

import java.io.File;
import java.io.FileOutputStream;
import java.lang.reflect.Method;

/**
 * Runtime proof for the {@code certs} toggle. Four modes, each a separate process so the
 * per-process counter of {@code mpl.SoterForge} stays predictable:
 *
 * <ul>
 *   <li>{@code scans}  - OFF must not touch {@code soter_identity/} at all (identity present,
 *       switch off, {@code SoterIdentity.identityScans()} must stay 0);</li>
 *   <li>{@code toggle} - one process, mirror flipped off -> on -> off with timestamps, blob
 *       length must go 718 -> 5501 -> 718 within the 500 ms switch TTL;</li>
 *   <li>{@code fail}   - illegal switch values, corrupt key material, missing mirror: every
 *       case must fall back to the pre-p16r blob;</li>
 *   <li>{@code daemon} - drives the real {@code SoterInjector.syncIdentity(pid)} (root) to show
 *       that OFF clears the pushed copy and never generates, while ON generates + pushes.</li>
 * </ul>
 *
 * <p>Writes {@code /data/local/tmp/mpl_toggle_<mode>.txt}. Must run as root (it writes the
 * switch mirror and the root-side switch exactly like the daemon does).</p>
 */
public final class ToggleProbe {

    private static final String TAG = "TOGGLEPROBE";
    private static final String PUSHED_SWITCH =
            "/data/user/0/com.tencent.soter.soterserver/files/soter_certs";
    private static final String PUSHED_DIR =
            "/data/user/0/com.tencent.soter.soterserver/files/soter_identity";
    private static final String ROOT_SWITCH = "/data/adb/tricky_store/soter_certs";
    private static final String ROOT_DIR = "/data/adb/tricky_store/soter_identity";
    private static final String SOTER_FILES =
            "/data/user/0/com.tencent.soter.soterserver/files";
    private static final String JOURNAL = "/data/local/tmp/soter_inject.log";
    private static final int UID = 10393;

    private static final StringBuilder trail = new StringBuilder(16384);
    private static String mode = "toggle";

    private ToggleProbe() {
    }

    private static void log(String message) {
        trail.append(message).append('\n');
        try {
            android.util.Log.i(TAG, message);
        } catch (Throwable ignored) {
            // logging must never fail the probe
        }
    }

    public static void main(String[] args) {
        mode = args != null && args.length > 0 ? args[0] : "toggle";
        log("probe mode=" + mode + " pid=" + android.os.Process.myPid()
                + " t=" + System.currentTimeMillis());
        try {
            if ("scans".equals(mode)) {
                scans();
            } else if ("toggle".equals(mode)) {
                toggle();
            } else if ("fail".equals(mode)) {
                failures();
            } else if ("daemon".equals(mode)) {
                daemon();
            } else {
                log("unknown mode " + mode);
            }
        } catch (Throwable t) {
            log("PROBE FAILED: " + t);
            t.printStackTrace();
        }
        markDone();
    }

    // ================================================================== 2) runtime toggle

    private static void toggle() throws Exception {
        // Start from a real pushed identity: root switch on + one daemon pass.
        writeFile(ROOT_SWITCH, "on");
        log("daemon sync (setup): " + syncIdentity());
        state("after-setup");
        // Now simulate "identity present, lane disabled" (the transient state right after a
        // user turns the switch off, before the daemon's next tick removes the copy).
        writeFile(PUSHED_SWITCH, "off");
        Thread.sleep(700L);

        long t0 = System.currentTimeMillis();
        Blob off1 = build("off-1");
        log("STEP off-1 t=" + t0 + " enabled=" + SoterIdentity.certsEnabled()
                + " scans=" + SoterIdentity.identityScans()
                + " blobLen=" + off1.length + " hasCerts=" + off1.hasCerts
                + " certs=" + off1.certCount);

        long t1 = System.currentTimeMillis();
        writeFile(PUSHED_SWITCH, "on");
        Thread.sleep(600L);
        long t2 = System.currentTimeMillis();
        Blob on1 = build("on-1");
        log("STEP on-1 t=" + t2 + " sinceMirrorWrite=" + (t2 - t1) + "ms"
                + " enabled=" + SoterIdentity.certsEnabled()
                + " blobLen=" + on1.length + " hasCerts=" + on1.hasCerts
                + " certs=" + on1.certCount);

        long t3 = System.currentTimeMillis();
        writeFile(PUSHED_SWITCH, "off");
        Thread.sleep(600L);
        long t4 = System.currentTimeMillis();
        Blob off2 = build("off-2");
        log("STEP off-2 t=" + t4 + " sinceMirrorWrite=" + (t4 - t3) + "ms"
                + " enabled=" + SoterIdentity.certsEnabled()
                + " blobLen=" + off2.length + " hasCerts=" + off2.hasCerts
                + " certs=" + off2.certCount);

        log("RESULT toggle "
                + pass(off1.length == 718 && !off1.hasCerts)
                + " off->on " + pass(on1.length > 718 && on1.hasCerts && on1.certCount == 5)
                + " on->off " + pass(off2.length == 718 && !off2.hasCerts)
                + " pidStable=" + (off1.pid == on1.pid && on1.pid == off2.pid));
    }

    // ================================================================== 3) no side effects

    private static void scans() throws Exception {
        // identity present on purpose: the OFF path must not even look at it.
        writeFile(ROOT_SWITCH, "on");
        log("daemon sync (setup): " + syncIdentity());
        writeFile(PUSHED_SWITCH, "off");
        Thread.sleep(600L);
        long keyBefore = new File(PUSHED_DIR + "/ask.key").lastModified();
        long crtBefore = new File(PUSHED_DIR + "/ask.crt").lastModified();
        int before = SoterIdentity.identityScans();
        for (int i = 0; i < 3; i++) {
            Blob blob = build("scan-" + i);
            log("STEP scan-" + i + " enabled=" + SoterIdentity.certsEnabled()
                    + " scans=" + SoterIdentity.identityScans()
                    + " blobLen=" + blob.length + " hasCerts=" + blob.hasCerts);
        }
        int after = SoterIdentity.identityScans();
        long keyAfter = new File(PUSHED_DIR + "/ask.key").lastModified();
        long crtAfter = new File(PUSHED_DIR + "/ask.crt").lastModified();
        log("RESULT scans before=" + before + " after=" + after
                + " delta=" + (after - before)
                + " keyMtimeSame=" + (keyBefore == keyAfter)
                + " crtMtimeSame=" + (crtBefore == crtAfter)
                + " " + pass(after == before));
    }

    // ================================================================== 4) failure modes

    private static void failures() throws Exception {
        writeFile(ROOT_SWITCH, "on");
        log("daemon sync (setup): " + syncIdentity());
        Thread.sleep(600L);

        // legal value first, to prove the harness can see the ON state at all
        writeFile(PUSHED_SWITCH, "on");
        Thread.sleep(600L);
        Blob on = build("legal-on");
        log("CASE legal-on blobLen=" + on.length + " hasCerts=" + on.hasCerts
                + " certs=" + on.certCount + " " + pass(on.hasCerts && on.certCount == 5));

        int failures = on.hasCerts && on.certCount == 5 ? 0 : 1;
        String[] badValues = {"yes", "true", "1", "", "   ", "garbage", "off"};
        for (int i = 0; i < badValues.length; i++) {
            writeFile(PUSHED_SWITCH, badValues[i]);
            Thread.sleep(600L);
            Blob blob = build("bad-" + i);
            boolean ok = !blob.hasCerts && blob.length == 718;
            if (!ok) {
                failures++;
            }
            log("CASE badValue=\"" + badValues[i] + "\" blobLen=" + blob.length
                    + " hasCerts=" + blob.hasCerts + " " + pass(ok));
        }

        // corrupt identity material (truncated PKCS#8) while the switch says on
        writeFile(PUSHED_SWITCH, "on");
        File key = new File(PUSHED_DIR + "/ask.key");
        byte[] original = readFile(key);
        writeFile(PUSHED_DIR + "/ask.key", "not-a-pkcs8");
        Thread.sleep(600L);
        Blob corruptKey = build("corrupt-key");
        if (corruptKey.hasCerts) {
            failures++;
        }
        log("CASE corruptKey blobLen=" + corruptKey.length + " hasCerts="
                + corruptKey.hasCerts + " " + pass(!corruptKey.hasCerts));
        writeFile(PUSHED_DIR + "/ask.key", new String(original));

        // corrupt certificate chain
        File crt = new File(PUSHED_DIR + "/ask.crt");
        byte[] originalCrt = readFile(crt);
        writeFile(PUSHED_DIR + "/ask.crt", "-----BEGIN CERTIFICATE-----\nAAAA\n-----END CERTIFICATE-----\n");
        Thread.sleep(600L);
        Blob corruptCrt = build("corrupt-crt");
        if (corruptCrt.hasCerts) {
            failures++;
        }
        log("CASE corruptCrt blobLen=" + corruptCrt.length + " hasCerts="
                + corruptCrt.hasCerts + " " + pass(!corruptCrt.hasCerts));
        writeFile(PUSHED_DIR + "/ask.crt", new String(originalCrt));

        // mirror lost (root switch still on): must be OFF, not "on via the root file"
        delete(PUSHED_SWITCH);
        Thread.sleep(600L);
        Blob noMirror = build("no-mirror");
        if (noMirror.hasCerts) {
            failures++;
        }
        log("CASE mirrorMissing blobLen=" + noMirror.length + " hasCerts="
                + noMirror.hasCerts + " " + pass(!noMirror.hasCerts));

        // identity directory gone, mirror says on
        writeFile(PUSHED_SWITCH, "on");
        deleteTree(new File(PUSHED_DIR));
        Thread.sleep(600L);
        Blob noIdentity = build("no-identity");
        if (noIdentity.hasCerts) {
            failures++;
        }
        log("CASE identityMissing blobLen=" + noIdentity.length + " hasCerts="
                + noIdentity.hasCerts + " " + pass(!noIdentity.hasCerts));

        log("RESULT failures cases=" + (badValues.length + 5) + " failures=" + failures
                + " " + pass(failures == 0));
    }

    // ================================================================== daemon side

    private static void daemon() throws Exception {
        delete(ROOT_SWITCH);
        delete(PUSHED_SWITCH);
        deleteTree(new File(ROOT_DIR));
        deleteTree(new File(PUSHED_DIR));
        log("cleaned: " + state("clean"));

        long t0 = System.currentTimeMillis();
        log("SYNC #1 switch=absent -> " + syncIdentity() + " in "
                + (System.currentTimeMillis() - t0) + "ms");
        state("after-off");

        writeFile(ROOT_SWITCH, "on");
        long t1 = System.currentTimeMillis();
        log("SYNC #2 switch=on -> " + syncIdentity() + " in "
                + (System.currentTimeMillis() - t1) + "ms");
        state("after-on");

        writeFile(ROOT_SWITCH, "off");
        long t2 = System.currentTimeMillis();
        log("SYNC #3 switch=off -> " + syncIdentity() + " in "
                + (System.currentTimeMillis() - t2) + "ms");
        state("after-off2");

        log("JOURNAL tail:");
        String journal = readText(new File(JOURNAL));
        if (journal != null) {
            String[] lines = journal.split("\n");
            int from = Math.max(0, lines.length - 8);
            for (int i = from; i < lines.length; i++) {
                log("  " + lines[i]);
            }
        }
    }

    // ================================================================== helpers

    private static final class Blob {
        int length;
        boolean hasCerts;
        int certCount;
        int pid;

        Blob(int length, boolean hasCerts, int certCount, int pid) {
            this.length = length;
            this.hasCerts = hasCerts;
            this.certCount = certCount;
            this.pid = pid;
        }
    }

    private static Blob build(String tag) {
        byte[] blob = mpl.SoterForge.askBlob(UID);
        int length = blob == null ? -1 : blob.length;
        boolean hasCerts = false;
        int certs = 0;
        if (blob != null && blob.length > 4) {
            int body = (blob[0] & 0xff) | ((blob[1] & 0xff) << 8)
                    | ((blob[2] & 0xff) << 16) | ((blob[3] & 0xff) << 24);
            if (body > 0 && 4 + body <= blob.length) {
                String json = new String(blob, 4, body);
                hasCerts = json.contains("\"certs\"");
                int at = json.indexOf("-----BEGIN CERTIFICATE-----");
                while (at >= 0) {
                    certs++;
                    at = json.indexOf("-----BEGIN CERTIFICATE-----", at + 27);
                }
            }
        }
        return new Blob(length, hasCerts, certs, android.os.Process.myPid());
    }

    /** Reflective so this probe also compiles/runs when SoterInjector is absent. */
    private static String syncIdentity() {
        try {
            Class<?> type = Class.forName("mpl.SoterInjector");
            Method method = type.getDeclaredMethod("syncIdentity", int.class);
            method.setAccessible(true);
            int pid = soterserverPid();
            method.invoke(null, Integer.valueOf(pid));
            return "ok pid=" + pid;
        } catch (Throwable t) {
            Throwable root = t;
            while (root.getCause() != null) {
                root = root.getCause();
            }
            return "threw " + root;
        }
    }

    private static int soterserverPid() {
        try {
            String[] entries = new File("/proc").list();
            for (int i = 0; i < entries.length; i++) {
                String name = entries[i];
                if (name.length() == 0 || !Character.isDigit(name.charAt(0))) {
                    continue;
                }
                String cmdline = readProc("/proc/" + name + "/cmdline");
                if (cmdline != null && cmdline.startsWith("com.tencent.soter.soterserver")) {
                    return Integer.parseInt(name);
                }
            }
        } catch (Throwable ignored) {
            // fall through
        }
        return -1;
    }

    /** procfs files report length 0, so they must be read with a fixed buffer. */
    private static String readProc(String path) {
        java.io.FileInputStream in = null;
        try {
            in = new java.io.FileInputStream(path);
            byte[] buffer = new byte[256];
            int count = in.read(buffer);
            if (count <= 0) {
                return "";
            }
            int end = 0;
            while (end < count && buffer[end] != 0) {
                end++;
            }
            return new String(buffer, 0, end, "UTF-8");
        } catch (Throwable t) {
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

    private static String state(String tag) {
        StringBuilder sb = new StringBuilder();
        sb.append("STATE ").append(tag)
                .append(" rootSwitch=").append(describeFile(ROOT_SWITCH))
                .append(" mirror=").append(describeFile(PUSHED_SWITCH))
                .append(" rootDir=").append(describeTree(ROOT_DIR))
                .append(" pushedDir=").append(describeTree(PUSHED_DIR));
        log(sb.toString());
        return sb.toString();
    }

    private static String describeFile(String path) {
        File file = new File(path);
        if (!file.exists()) {
            return "absent";
        }
        return "\"" + trim(readText(file)) + "\"(" + file.length() + "B,mtime="
                + file.lastModified() + ")";
    }

    private static String describeTree(String path) {
        File dir = new File(path);
        if (!dir.isDirectory()) {
            return "absent";
        }
        String[] names = dir.list();
        StringBuilder sb = new StringBuilder("present[");
        if (names != null) {
            for (int i = 0; i < names.length; i++) {
                if (i > 0) {
                    sb.append(',');
                }
                sb.append(names[i]);
            }
        }
        return sb.append("]").toString();
    }

    private static String trim(String value) {
        if (value == null) {
            return "";
        }
        String v = value.replace("\n", "\\n").replace("\r", "");
        return v.length() > 24 ? v.substring(0, 24) : v;
    }

    private static String pass(boolean ok) {
        return ok ? "PASS" : "FAIL";
    }

    private static boolean writeFile(String path, String content) {
        FileOutputStream out = null;
        try {
            File file = new File(path);
            File parent = file.getParentFile();
            if (parent != null && !parent.isDirectory()) {
                parent.mkdirs();
            }
            out = new FileOutputStream(file, false);
            out.write(content.getBytes("UTF-8"));
            return true;
        } catch (Throwable t) {
            log("write " + path + " failed: " + t);
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

    private static boolean writeFile(String path, byte[] content) {
        FileOutputStream out = null;
        try {
            out = new FileOutputStream(path, false);
            out.write(content);
            return true;
        } catch (Throwable t) {
            log("write " + path + " failed: " + t);
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

    private static byte[] readFile(File file) {
        try {
            java.io.FileInputStream in = new java.io.FileInputStream(file);
            try {
                byte[] data = new byte[(int) file.length()];
                int at = 0;
                while (at < data.length) {
                    int n = in.read(data, at, data.length - at);
                    if (n <= 0) {
                        break;
                    }
                    at += n;
                }
                return data;
            } finally {
                in.close();
            }
        } catch (Throwable t) {
            return new byte[0];
        }
    }

    private static String readText(File file) {
        byte[] data = readFile(file);
        try {
            return new String(data, "UTF-8");
        } catch (Throwable t) {
            return new String(data);
        }
    }

    private static void delete(String path) {
        File file = new File(path);
        if (file.exists() && !file.delete()) {
            log("delete " + path + " failed");
        }
    }

    private static void deleteTree(File file) {
        if (!file.exists()) {
            return;
        }
        File[] children = file.listFiles();
        if (children != null) {
            for (int i = 0; i < children.length; i++) {
                deleteTree(children[i]);
            }
        }
        if (!file.delete()) {
            log("deleteTree " + file + " failed");
        }
    }

    private static void markDone() {
        try {
            FileOutputStream out = new FileOutputStream(
                    "/data/local/tmp/mpl_toggle_" + mode + ".txt", false);
            try {
                out.write(trail.toString().getBytes("UTF-8"));
            } finally {
                out.close();
            }
        } catch (Throwable ignored) {
            // logcat already carried it
        }
    }
}
