package mpl;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;

/**
 * MapleSU SOTER lane - the scope CLI both WebUI modes run.
 *
 * <p>Invocation (root, system context, no Activity needed):</p>
 * <pre>
 *   app_process -Djava.class.path=&lt;dex&gt; /system/bin mpl.ScopeCli list
 *   app_process -Djava.class.path=&lt;dex&gt; /system/bin mpl.ScopeCli set 10123,10124
 *   app_process -Djava.class.path=&lt;dex&gt; /system/bin mpl.ScopeCli setall
 *   app_process -Djava.class.path=&lt;dex&gt; /system/bin mpl.ScopeCli get
 * </pre>
 *
 * <p>Exactly one line of JSON on stdout, never anything else, and the process always exits
 * with status 0 - a front-end that parses stdout must not also have to interpret an exit
 * code or a Java stack trace. Every failure, including a missing PackageManager, becomes
 * {@code {"ok":false,"error":"..."}}.</p>
 *
 * <p>Commands:</p>
 * <ul>
 *   <li>{@code list}  - launchable packages with uid, label and a 96x96 PNG icon in base64,
 *       plus the current selection. Icon failures degrade to {@code "icon":""}.</li>
 *   <li>{@code set <uid,uid,...>} - atomic replace of the scope file (0644), count returned.</li>
 *   <li>{@code setall} - remove the scope file: back to "forge for every app".</li>
 *   <li>{@code get}   - the current selection and whether the default-all mode is active.</li>
 * </ul>
 *
 * <p>The file that is written is {@link SoterPolicy#FALLBACK}: the root-owned canonical
 * location the daemon reads and pushes from. The service itself reads the pushed copy, so a
 * change made here becomes effective on the service's next transaction once the daemon's
 * one-second sync has run (see {@code SoterInjector.syncScope}).</p>
 *
 * <p>Only a system {@link Context} is used (via {@code ActivityThread.systemMain()}), never
 * an Activity, a Service or an app-private resource: the same class therefore works from
 * the module WebUI and from the manager app.</p>
 */
public final class ScopeCli {

    /** Reply icon edge, in pixels. */
    private static final int ICON_PX = 96;

    private static final char[] BASE64 =
            "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".toCharArray();

    private ScopeCli() {
    }

    public static void main(String[] args) {
        String out;
        try {
            String command = (args != null && args.length > 0) ? args[0] : "get";
            if ("list".equals(command)) {
                out = list();
            } else if ("set".equals(command)) {
                out = set(args.length > 1 ? args[1] : "");
            } else if ("setall".equals(command)) {
                out = setAll();
            } else if ("get".equals(command)) {
                out = get();
            } else {
                out = error("unknown command: " + command);
            }
        } catch (Throwable error) {
            out = error(describe(error));
        }
        try {
            System.out.println(out);
            System.out.flush();
        } catch (Throwable ignored) {
            // nothing else to do: halt() below still exits 0
        }
        // The system context brings up a bare ActivityThread; do not wait for its threads.
        Runtime.getRuntime().halt(0);
    }

    // ------------------------------------------------------------------ list

    private static String list() throws Exception {
        Context context = systemContext();
        PackageManager pm = context.getPackageManager();

        Intent intent = new Intent(Intent.ACTION_MAIN);
        intent.addCategory(Intent.CATEGORY_LAUNCHER);
        List<ResolveInfo> resolved = null;
        try {
            resolved = pm.queryIntentActivities(intent, 0);
        } catch (Throwable error) {
            return error("queryIntentActivities: " + error);
        }

        Set<String> seen = new LinkedHashSet<String>();
        List<Row> rows = new ArrayList<Row>();
        if (resolved != null) {
            for (int i = 0; i < resolved.size(); i++) {
                ResolveInfo info = resolved.get(i);
                if (info == null || info.activityInfo == null) {
                    continue;
                }
                String pkg = info.activityInfo.packageName;
                if (pkg == null || pkg.length() == 0 || !seen.add(pkg)) {
                    continue;
                }
                ApplicationInfo app = null;
                try {
                    app = pm.getApplicationInfo(pkg, 0);
                } catch (Throwable ignored) {
                    app = null;
                }
                int uid = app != null ? app.uid : -1;
                String label = pkg;
                try {
                    CharSequence text = app != null ? pm.getApplicationLabel(app)
                            : info.loadLabel(pm);
                    if (text != null && text.length() > 0) {
                        label = text.toString();
                    }
                } catch (Throwable ignored) {
                    // keep the package name as the label
                }
                String icon = app != null ? iconBase64(pm, app) : "";
                rows.add(new Row(pkg, uid, label, icon));
            }
        }
        Collections.sort(rows, new Comparator<Row>() {
            @Override
            public int compare(Row left, Row right) {
                int byLabel = left.label.compareToIgnoreCase(right.label);
                return byLabel != 0 ? byLabel : left.pkg.compareTo(right.pkg);
            }
        });

        SoterPolicy.reload();
        List<Integer> selected = sorted(SoterPolicy.uids());
        boolean defaultAll = SoterPolicy.defaultAll();

        StringBuilder json = new StringBuilder(8192);
        json.append("{\"ok\":true,\"packages\":[");
        for (int i = 0; i < rows.size(); i++) {
            if (i > 0) {
                json.append(',');
            }
            Row row = rows.get(i);
            json.append("{\"pkg\":").append(quote(row.pkg))
                    .append(",\"uid\":").append(row.uid)
                    .append(",\"label\":").append(quote(row.label))
                    .append(",\"icon\":").append(quote(row.icon))
                    .append('}');
        }
        json.append("],\"selected\":").append(intArray(selected))
                .append(",\"defaultAll\":").append(defaultAll)
                .append('}');
        return json.toString();
    }

    // ------------------------------------------------------------------ set / setall / get

    private static String set(String spec) throws Exception {
        Set<Integer> uids = parseUids(spec);
        if (uids.isEmpty()) {
            return error("no uid given");
        }
        File target = writeTarget();
        StringBuilder text = new StringBuilder(256);
        text.append("# mpl soter scope - which app uids the SOTER forge answers for\n");
        text.append("# one uid per line (pkg=uid also accepted); '#' starts a comment\n");
        text.append("# absent or empty file = forge for every app (upstream behaviour)\n");
        for (Integer uid : uids) {
            text.append(uid.intValue()).append('\n');
        }
        writeAtomic(target, text.toString());
        return "{\"ok\":true,\"count\":" + uids.size() + "}";
    }

    /**
     * Where {@code set} writes: the root-owned canonical file the daemon pushes from, or
     * the {@link SoterPolicy#ENV_OVERRIDE} test path. It is never the pushed copy inside
     * saterserver's data dir - that one is owned by the service uid and is regenerated by
     * the daemon, so an edit there would be silently overwritten.
     */
    private static File writeTarget() {
        String override = null;
        try {
            override = System.getenv(SoterPolicy.ENV_OVERRIDE);
        } catch (Throwable ignored) {
            override = null;
        }
        if (override != null && override.trim().length() > 0) {
            return new File(override.trim());
        }
        return new File(SoterPolicy.FALLBACK);
    }

    private static String setAll() throws Exception {
        String[] paths = SoterPolicy.candidates();
        for (int i = 0; i < paths.length; i++) {
            File file = new File(paths[i]);
            if (file.exists() && !file.delete()) {
                return error("cannot remove " + paths[i]);
            }
            File tmp = new File(paths[i] + ".tmp");
            if (tmp.exists()) {
                tmp.delete();
            }
        }
        return "{\"ok\":true,\"defaultAll\":true}";
    }

    private static String get() throws Exception {
        SoterPolicy.reload();
        List<Integer> selected = sorted(SoterPolicy.uids());
        boolean defaultAll = SoterPolicy.defaultAll();
        return "{\"ok\":true,\"selected\":" + intArray(selected)
                + ",\"defaultAll\":" + defaultAll + "}";
    }

    // ------------------------------------------------------------------ helpers

    /**
     * The daemon's system context. {@code ActivityThread} is a hidden class, so it is
     * reached reflectively.
     *
     * <p>The main Looper has to exist before {@code systemMain()}: {@code ActivityThread
     * .attach()} builds its {@code H} handler on it, and without one the attach fails with
     * an {@code InvocationTargetException}. This is the same preamble the module's own
     * {@code App.main} uses.</p>
     */
    private static Context systemContext() throws Exception {
        if (android.os.Looper.getMainLooper() == null) {
            android.os.Looper.prepareMainLooper();
        }
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
        if (thread == null) {
            throw new IllegalStateException("ActivityThread unavailable");
        }
        Object context = activityThread.getMethod("getSystemContext").invoke(thread);
        if (!(context instanceof Context)) {
            throw new IllegalStateException("system context unavailable");
        }
        return (Context) context;
    }

    /**
     * 96x96 PNG of the app icon, base64; empty string on any failure.
     *
     * <p><b>Measured on device (PLQ110 / Android 16).</b> {@code
     * PackageManager.getApplicationIcon(ApplicationInfo)} is the obvious call, but from an
     * {@code app_process} running with the system context it throws for every third-party
     * package:</p>
     * <pre>
     *   SecurityException: Given calling package android does not match caller's uid 2000
     * </pre>
     * <p>i.e. the {@code android} package name the system context carries does not match
     * the uid that is actually calling. Every icon then degrades to the generic
     * {@code sym_def_app_icon} robot, so a WebUI list cannot be told apart app by app. The
     * package's own {@code Resources} do load fine from the same process
     * ({@code getResourcesForApplication} + {@code getDrawable}), and that is the primary
     * path here; {@code getApplicationIcon} stays as the first fallback because it is the
     * right call in a process that does have its own package identity.</p>
     */
    private static String iconBase64(PackageManager pm, ApplicationInfo app) {
        try {
            // SECURITY/STABILITY (Android 17 + ColorOS): never call
            // PackageManager.getApplicationIcon(). On Oplus ROMs that path goes
            // getDefaultActivityIcon -> OplusUXIconLoaderImpl.buildAdaptiveIconDrawable
            // -> android.graphics.Path.<init> -> libhwui SkPathGlue, which segfaults
            // inside a bare app_process (no graphics stack). A Java catch cannot
            // stop a SIGSEGV, so the call is simply not made.
            if (app.icon == 0) {
                return "";
            }
            Drawable drawable = null;
            try {
                Resources resources = pm.getResourcesForApplication(app);
                drawable = resources.getDrawable(app.icon, null);
            } catch (Throwable ignored) {
                drawable = null;
            }
            // Only bitmap-backed icons are rendered: adaptive/vector drawables need
            // the native icon pipeline we do not have here.
            if (!(drawable instanceof BitmapDrawable)) {
                return "";
            }
            Bitmap bitmap = toBitmap(drawable);
            if (bitmap == null) {
                return "";
            }
            if (bitmap.getWidth() != ICON_PX || bitmap.getHeight() != ICON_PX) {
                bitmap = Bitmap.createScaledBitmap(bitmap, ICON_PX, ICON_PX, true);
            }
            ByteArrayOutputStream out = new ByteArrayOutputStream(4096);
            if (!bitmap.compress(Bitmap.CompressFormat.PNG, 100, out)) {
                return "";
            }
            return base64(out.toByteArray());
        } catch (Throwable error) {
            return "";
        }
    }

    private static Bitmap toBitmap(Drawable drawable) {
        try {
            if (drawable instanceof BitmapDrawable) {
                Bitmap bitmap = ((BitmapDrawable) drawable).getBitmap();
                if (bitmap != null && bitmap.getWidth() > 0 && bitmap.getHeight() > 0) {
                    return bitmap;
                }
            }
            int width = drawable.getIntrinsicWidth();
            int height = drawable.getIntrinsicHeight();
            if (width <= 0 || width > 1024) {
                width = ICON_PX;
            }
            if (height <= 0 || height > 1024) {
                height = ICON_PX;
            }
            Bitmap bitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmap);
            drawable.setBounds(0, 0, width, height);
            drawable.draw(canvas);
            return bitmap;
        } catch (Throwable error) {
            return null;
        }
    }

    /** "10123,10124" or "10123 10124"; sorted and deduplicated. */
    private static Set<Integer> parseUids(String spec) {
        Set<Integer> uids = new TreeSet<Integer>();
        if (spec == null) {
            return uids;
        }
        String[] tokens = spec.split("[,\\s]+");
        for (int i = 0; i < tokens.length; i++) {
            String token = tokens[i].trim();
            if (token.length() == 0) {
                continue;
            }
            int equals = token.lastIndexOf('=');
            if (equals >= 0) {
                token = token.substring(equals + 1).trim();
            }
            try {
                int uid = Integer.parseInt(token);
                if (uid > 0) {
                    uids.add(Integer.valueOf(uid));
                }
            } catch (Throwable ignored) {
                // a non-numeric token is ignored, not fatal
            }
        }
        return uids;
    }

    /** Write via a same-directory temp file + rename, so a reader never sees half a list. */
    private static void writeAtomic(File target, String text) throws Exception {
        File dir = target.getParentFile();
        if (dir != null && !dir.isDirectory() && !dir.mkdirs() && !dir.isDirectory()) {
            throw new java.io.IOException("cannot create " + dir);
        }
        File tmp = new File(dir, target.getName() + ".tmp");
        FileOutputStream out = new FileOutputStream(tmp, false);
        try {
            out.write(text.getBytes("UTF-8"));
            out.flush();
        } finally {
            try {
                out.close();
            } catch (Throwable ignored) {
                // best effort
            }
        }
        mode0644(tmp);
        if (!tmp.renameTo(target)) {
            // Java's renameTo does not document replace-on-exist; POSIX rename does.
            if (!target.delete() || !tmp.renameTo(target)) {
                tmp.delete();
                throw new java.io.IOException("rename failed: " + tmp + " -> " + target);
            }
        }
        mode0644(target);
    }

    /**
     * Owner rw, group/world r, no execute: the 0644 the WebUI contract asks for.
     *
     * <p>Measured: {@code File.setReadable/setWritable} does <b>not</b> yield 0644 on this
     * ROM - a file written here ended up {@code -rw-rw-rw-}, because Java's permission bits
     * are not a mode replacement. {@code android.system.Os.chmod} or {@code /system/bin
     * /chmod} are exact, so they are tried first and the File API is only the last
     * resort.</p>
     */
    private static void mode0644(File file) {
        String path = file.getAbsolutePath();
        if (chmodOs(path, 0644) || chmodBinary(path, 0644)) {
            return;
        }
        try {
            file.setReadable(true, false);
            file.setWritable(true, true);
            file.setExecutable(false, false);
        } catch (Throwable ignored) {
            // a mode mismatch must not fail the write itself
        }
    }

    private static boolean chmodOs(String path, int mode) {
        try {
            Class<?> os = Class.forName("android.system.Os");
            java.lang.reflect.Method chmod = os.getMethod("chmod", String.class, int.class);
            chmod.invoke(null, path, Integer.valueOf(mode));
            return true;
        } catch (Throwable ignored) {
            return false;
        }
    }

    private static boolean chmodBinary(String path, int mode) {
        try {
            Process process = Runtime.getRuntime().exec(
                    new String[]{"/system/bin/chmod", Integer.toOctalString(mode), path});
            return process.waitFor() == 0;
        } catch (Throwable ignored) {
            return false;
        }
    }

    private static List<Integer> sorted(Set<Integer> values) {
        List<Integer> list = new ArrayList<Integer>(values);
        Collections.sort(list);
        return list;
    }

    private static String intArray(List<Integer> values) {
        StringBuilder json = new StringBuilder(values.size() * 8 + 2);
        json.append('[');
        for (int i = 0; i < values.size(); i++) {
            if (i > 0) {
                json.append(',');
            }
            json.append(values.get(i).intValue());
        }
        json.append(']');
        return json.toString();
    }

    /** JSON string literal; non-ASCII is passed through as UTF-8 (valid JSON). */
    private static String quote(String value) {
        if (value == null) {
            return "\"\"";
        }
        StringBuilder out = new StringBuilder(value.length() + 2);
        out.append('"');
        for (int i = 0; i < value.length(); i++) {
            char c = value.charAt(i);
            switch (c) {
                case '"':
                    out.append("\\\"");
                    break;
                case '\\':
                    out.append("\\\\");
                    break;
                case '\n':
                    out.append("\\n");
                    break;
                case '\r':
                    out.append("\\r");
                    break;
                case '\t':
                    out.append("\\t");
                    break;
                default:
                    if (c < 0x20 || c == 0x7f) {
                        out.append("\\u");
                        String hex = Integer.toHexString(c);
                        for (int pad = hex.length(); pad < 4; pad++) {
                            out.append('0');
                        }
                        out.append(hex);
                    } else {
                        out.append(c);
                    }
                    break;
            }
        }
        out.append('"');
        return out.toString();
    }

    private static String base64(byte[] data) {
        if (data == null || data.length == 0) {
            return "";
        }
        StringBuilder out = new StringBuilder(((data.length + 2) / 3) * 4);
        int i = 0;
        while (i + 2 < data.length) {
            int chunk = ((data[i] & 0xff) << 16)
                    | ((data[i + 1] & 0xff) << 8)
                    | (data[i + 2] & 0xff);
            out.append(BASE64[(chunk >>> 18) & 63])
                    .append(BASE64[(chunk >>> 12) & 63])
                    .append(BASE64[(chunk >>> 6) & 63])
                    .append(BASE64[chunk & 63]);
            i += 3;
        }
        int remaining = data.length - i;
        if (remaining == 1) {
            int chunk = (data[i] & 0xff) << 16;
            out.append(BASE64[(chunk >>> 18) & 63])
                    .append(BASE64[(chunk >>> 12) & 63])
                    .append("==");
        } else if (remaining == 2) {
            int chunk = ((data[i] & 0xff) << 16) | ((data[i + 1] & 0xff) << 8);
            out.append(BASE64[(chunk >>> 18) & 63])
                    .append(BASE64[(chunk >>> 12) & 63])
                    .append(BASE64[(chunk >>> 6) & 63])
                    .append('=');
        }
        return out.toString();
    }

    private static String error(String message) {
        return "{\"ok\":false,\"error\":" + quote(message) + "}";
    }

    /** Root cause of a reflective/checked failure, with its message. */
    private static String describe(Throwable error) {
        Throwable root = error;
        for (int depth = 0; depth < 8 && root.getCause() != null && root.getCause() != root;
                depth++) {
            root = root.getCause();
        }
        String message = root.getMessage();
        return root.getClass().getName() + (message == null ? "" : ": " + message);
    }

    /** One launchable package. */
    private static final class Row {
        final String pkg;
        final int uid;
        final String label;
        final String icon;

        Row(String pkg, int uid, String label, String icon) {
            this.pkg = pkg;
            this.uid = uid;
            this.label = label;
            this.icon = icon;
        }
    }
}
