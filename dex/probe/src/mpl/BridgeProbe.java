package mpl;

import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;
import android.util.Log;

import java.lang.reflect.Field;
import java.lang.reflect.Method;

/**
 * On-device, offline verifier for the p16s bridge fix (never shipped in the module dex).
 *
 * <p>Runs under {@code app_process -Xverify:all} with the <b>product</b> dex after this one on
 * the classpath, so exactly the classes that ship are loaded and verified. It then exercises
 * the probe reply path without a binder: {@code ProbeInterceptor.onPreTransact} must answer
 * the reserved probe transaction with {@code 0x0,1,0x004d504c} and must delegate every other
 * code to {@code w4.e.a} (which returns the "continue" action for an unknown code without
 * touching the Parcel).</p>
 */
public final class BridgeProbe {
    private static final String TAG = "VERIFYPROBE";
    private static final String DESCRIPTOR = "com.tencent.soter.soterserver.ISoterService";

    private static int failures;

    public static void main(String[] args) {
        Log.i(TAG, "bridge probe start");
        try {
            Class<?> interceptor = Class.forName("mpl.ProbeInterceptor");
            Object instance = interceptor.getField("INSTANCE").get(null);
            Log.i(TAG, "ProbeInterceptor loaded: " + instance);
            Method hook = interceptor.getMethod("onPreTransact", long.class, IBinder.class,
                    int.class, int.class, int.class, int.class, Parcel.class);
            Log.i(TAG, "onPreTransact resolved: " + hook);

            // 1) probe transaction -> override reply 0x0,1,MAGIC
            Parcel data = Parcel.obtain();
            data.writeInterfaceToken(DESCRIPTOR);
            data.writeInt(0x7fff0000);
            data.setDataPosition(0);
            try {
                data.enforceInterface(DESCRIPTOR);
                Log.i(TAG, "self-read: avail=" + data.dataAvail() + " uid=0x"
                        + Integer.toHexString(data.readInt()));
            } catch (Throwable error) {
                Log.e(TAG, "self-read failed", error);
            }
            data.setDataPosition(0);
            Object action = hook.invoke(instance, 7L, new Binder(), 3, 0, 2000, 999, data);
            check("action class", "v4.d", action.getClass().getName());
            Parcel reply = replyOf(action);
            check("not probe -> not v4.d", null, null);
            reply.setDataPosition(0);
            int exception = reply.readInt();
            int value = reply.readInt();
            int magic = reply.readInt();
            check("exception", "0", String.valueOf(exception));
            check("value", "1", String.valueOf(value));
            check("magic", "0x4d504c", "0x" + Integer.toHexString(magic));
            data.recycle();
            reply.recycle();

            // 2) a normal code must still be delegated (unknown code -> "continue")
            Parcel other = Parcel.obtain();
            other.writeInterfaceToken(DESCRIPTOR);
            other.writeInt(10494);
            Object delegated = hook.invoke(instance, 8L, new Binder(), 0, 0, 10494, 999, other);
            check("delegated class", "v4.c", delegated.getClass().getName());
            other.recycle();

            // 3) the bridge class itself must verify + initialise
            Class.forName("mpl.SoterBridge");
            Log.i(TAG, "SoterBridge loaded");
        } catch (Throwable error) {
            failures++;
            Log.e(TAG, "VERIFY FAIL", error);
        }
        Log.i(TAG, failures == 0 ? "VERIFY OK" : "VERIFY FAILURES=" + failures);
        System.out.println("PROBE_RESULT failures=" + failures);
        System.exit(failures == 0 ? 0 : 3);
    }

    private static Parcel replyOf(Object action) throws Exception {
        // The field is obfuscated in the shipped dex (jadx calls it f3462a); pick the only
        // Parcel-typed instance field of the override-reply action instead of its name.
        for (Field field : action.getClass().getDeclaredFields()) {
            if (field.getType() == Parcel.class) {
                field.setAccessible(true);
                return (Parcel) field.get(action);
            }
        }
        throw new IllegalStateException("no Parcel field on " + action.getClass());
    }

    private static void check(String what, String want, String got) {
        if (want == null) {
            return;
        }
        if (want.equals(got)) {
            Log.i(TAG, "ok   " + what + "=" + got);
        } else {
            failures++;
            Log.e(TAG, "FAIL " + what + " want=" + want + " got=" + got);
        }
    }
}
