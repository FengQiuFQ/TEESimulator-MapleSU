package mpl;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.Parcel;
import android.util.Log;

import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

/**
 * On-device probe: can a root {@code app_process} with the module's system context bind
 * {@code com.tencent.soter.soterserver} directly?
 *
 * <p>p16l routed the bind through the manager app because an earlier lane claimed AMS
 * rejects a bare app_process caller. Upstream {@code SoterProcessSupervisor} binds from the
 * module daemon itself with {@code ActivityThread.systemMain().systemContext}, so the claim
 * needs a measurement. If this probe prints {@code bindService -> true} and a connected
 * binder, p16m can hold the binding itself (keeping soterserver warm and pre-injected),
 * which removes the cold-start race without depending on the manager process.</p>
 */
public final class BindProbe {

    private static final String TAG = "MPL-BINDPROBE";
    private static final String PKG = "com.tencent.soter.soterserver";
    private static final String DESCRIPTOR = "com.tencent.soter.soterserver.ISoterService";

    public static void main(String[] args) throws Exception {
        if (android.os.Looper.myLooper() == null) {
            android.os.Looper.prepareMainLooper();
        }
        Context context;
        try {
            Class<?> at = Class.forName("android.app.ActivityThread");
            Object thread = at.getMethod("systemMain").invoke(null);
            context = (Context) at.getMethod("getSystemContext").invoke(thread);
        } catch (Throwable t) {
            Throwable root = t;
            while (root.getCause() != null && root.getCause() != root) {
                root = root.getCause();
            }
            Log.i(TAG, "system context unavailable: " + root.getClass().getName() + ": "
                    + root.getMessage());
            return;
        }
        Log.i(TAG, "context=" + context + " uid=" + android.os.Process.myUid());

        final CountDownLatch latch = new CountDownLatch(1);
        Executor executor = new Executor() {
            @Override
            public void execute(Runnable command) {
                new Thread(command, "bindprobe-cb").start();
            }
        };
        ServiceConnection connection = new ServiceConnection() {
            @Override
            public void onServiceConnected(ComponentName name, IBinder binder) {
                Log.i(TAG, "onServiceConnected name=" + name + " binder=" + binder);
                probeVersion(binder);
                latch.countDown();
            }

            @Override
            public void onServiceDisconnected(ComponentName name) {
                Log.i(TAG, "onServiceDisconnected " + name);
            }

            @Override
            public void onBindingDied(ComponentName name) {
                Log.i(TAG, "onBindingDied " + name);
            }

            @Override
            public void onNullBinding(ComponentName name) {
                Log.i(TAG, "onNullBinding " + name);
            }
        };
        Intent intent = new Intent(DESCRIPTOR).setPackage(PKG);
        boolean bound;
        try {
            bound = context.bindService(intent, Context.BIND_AUTO_CREATE, executor, connection);
        } catch (Throwable t) {
            Log.i(TAG, "bindService threw: " + t);
            return;
        }
        Log.i(TAG, "bindService -> " + bound);
        boolean connected = latch.await(8, TimeUnit.SECONDS);
        Log.i(TAG, "connected=" + connected + " DONE");
    }

    /** tx12 getVersion through the raw binder: 0 = no exception, then the version int. */
    private static void probeVersion(IBinder binder) {
        Parcel data = Parcel.obtain();
        Parcel reply = Parcel.obtain();
        try {
            data.writeInterfaceToken(DESCRIPTOR);
            binder.transact(12, data, reply, 0);
            reply.setDataPosition(0);
            int exception = reply.readInt();
            int version = reply.readInt();
            Log.i(TAG, "tx12 getVersion exception=" + exception + " version=" + version
                    + "  (our forge answers 1; a real healthy saterserver also answers 1)");
        } catch (Throwable t) {
            Log.i(TAG, "tx12 failed: " + t);
        } finally {
            data.recycle();
            reply.recycle();
        }
    }
}
