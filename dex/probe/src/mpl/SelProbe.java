package mpl;

import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;

import java.lang.reflect.Field;
import java.lang.reflect.Method;

/**
 * Host-side SELinux/binder reachability probe (never shipped).
 *
 * <p>Answers exactly one question that decides how the SOTER self-test may be built: can a
 * <b>non-root</b> process in the {@code shell} domain make a binder transaction into an app
 * process ({@code platform_app})? It performs the same caller-less provider lookup the bridge
 * uses ({@code IActivityManager.getContentProviderExternal} + {@code IContentProvider.call})
 * and reports whether the failure is "provider said no" (binder reached the server) or
 * "binder call denied" (SELinux / EPERM).</p>
 */
public final class SelProbe {
    private static final String TAG = "SELPROBE";
    private static final String AUTHORITY = "dev.maplesu.manager.soter";

    public static void main(String[] args) {
        Log.i(TAG, "uid=" + android.os.Process.myUid());
        try {
            Object am = activityManager();
            Log.i(TAG, "ams=" + am);
            Object holder = getContentProviderExternal(am);
            Log.i(TAG, "holder=" + holder);
            if (holder == null) {
                Log.i(TAG, "RESULT holder-null (provider not published / AMS refused)");
                return;
            }
            Object provider = field(holder, "provider");
            Log.i(TAG, "provider=" + provider);
            Bundle bundle = callProvider(provider);
            Log.i(TAG, "RESULT binder-reached provider bundle=" + bundle);
            if (bundle != null) {
                IBinder binder = bundle.getBinder("target");
                Log.i(TAG, "RESULT target=" + binder + " ping="
                        + (binder != null && binder.pingBinder()));
            }
        } catch (Throwable error) {
            Throwable root = error;
            while (root.getCause() != null && root.getCause() != root) {
                root = root.getCause();
            }
            Log.e(TAG, "RESULT FAILED " + root.getClass().getName() + ": " + root.getMessage(),
                    error);
        }
    }

    private static Object activityManager() throws Exception {
        Class<?> amClass = Class.forName("android.app.ActivityManager");
        Method getService = amClass.getDeclaredMethod("getService");
        getService.setAccessible(true);
        return getService.invoke(null);
    }

    private static Object getContentProviderExternal(Object am) throws Exception {
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
            Log.i(TAG, "using " + method);
            return method.invoke(am, AUTHORITY, Integer.valueOf(0), null, "selprobe");
        }
        return null;
    }

    private static Object field(Object owner, String name) throws Exception {
        Field field = owner.getClass().getField(name);
        return field.get(owner);
    }

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
            Log.i(TAG, "using " + method);
            Object result = method.invoke(provider, source, AUTHORITY, "target", null, null);
            return result instanceof Bundle ? (Bundle) result : null;
        }
        Log.i(TAG, "no 5-arg call() on " + provider.getClass());
        return null;
    }

    private static Object attributionSource() throws Exception {
        Class<?> type = Class.forName("android.content.AttributionSource");
        int uid = android.os.Process.myUid();
        try {
            java.lang.reflect.Constructor<?> ctor =
                    type.getDeclaredConstructor(int.class, String.class, String.class);
            ctor.setAccessible(true);
            return ctor.newInstance(Integer.valueOf(uid), "dev.maplesu.manager", null);
        } catch (Throwable ignored) {
            // fall through
        }
        Class<?> builderType = Class.forName("android.content.AttributionSource$Builder");
        java.lang.reflect.Constructor<?> ctor = builderType.getDeclaredConstructor(int.class);
        ctor.setAccessible(true);
        Object builder = ctor.newInstance(Integer.valueOf(uid));
        builderType.getMethod("setPackageName", String.class).invoke(builder, "dev.maplesu.manager");
        return builderType.getMethod("build").invoke(builder);
    }
}
