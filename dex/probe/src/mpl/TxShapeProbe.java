package mpl;

import android.os.Parcel;

/**
 * AIDL-level shape recorder: drives the real {@code w4.e.onPreTransact} handler for the two
 * transactions that carry a Soter blob ({@code code 2 = getAppSecureKey},
 * {@code code 6 = getAuthKey}) and prints the reply envelope plus the blob shape.
 *
 * <p>Deliberately references only {@code w4.e} + {@code android.os.*}, both of which exist in
 * every dex of this lane, so the same probe can be run against the p16q baseline, the current
 * dex (certs off) and a control build with the feature compiled out.</p>
 *
 * <p>Writes {@code /data/local/tmp/mpl_tx.txt}.</p>
 */
public final class TxShapeProbe {

    private static final String TAG = "TXPROBE";
    private static final String DONE = "/data/local/tmp/mpl_tx.txt";
    private static final String DESCRIPTOR = "com.tencent.soter.soterserver.ISoterService";
    private static final int UID = 10393;
    private static final StringBuilder trail = new StringBuilder(8192);

    private TxShapeProbe() {
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
        log("pid=" + android.os.Process.myPid());
        try {
            // code 1: generateAppSecureKey(uid) - p16x makes this a real state transition
            call(1, parcel(1, UID, null));
            // code 2: getAppSecureKey(uid) - carries the ASK blob
            call(2, parcel(2, UID, null));
            // code 6: getAuthKey(uid, kname) - carries the AuthKey blob
            call(6, parcel(6, UID, "duck_probe"));
        } catch (Throwable t) {
            log("PROBE FAILED: " + t);
            t.printStackTrace();
        }
        markDone();
    }

    private static Parcel parcel(int code, int uid, String alias) {
        Parcel data = Parcel.obtain();
        data.writeInterfaceToken(DESCRIPTOR);
        data.writeInt(uid);
        if (code == 6 && alias != null) {
            data.writeString(alias);
        }
        data.setDataPosition(0);
        return data;
    }

    private static void call(int code, Parcel data) {
        try {
            Class<?> interceptor = Class.forName("w4.e");
            Object instance = interceptor.getField("a").get(null);
            java.lang.reflect.Method onPreTransact = interceptor.getMethod("onPreTransact",
                    long.class, android.os.IBinder.class, int.class, int.class, int.class,
                    int.class, Parcel.class);
            Object result = onPreTransact.invoke(instance, Long.valueOf(0L),
                    new android.os.Binder(), Integer.valueOf(code), Integer.valueOf(0),
                    Integer.valueOf(UID), Integer.valueOf(0), data);
            java.lang.reflect.Field replyField = result.getClass().getField("a");
            Parcel reply = (Parcel) replyField.get(result);
            reply.setDataPosition(0);
            int exception = reply.readInt();
            StringBuilder line = new StringBuilder(160);
            line.append("TX code=").append(code).append(" ex=").append(exception);
            if (exception == 0) {
                int presence = reply.readInt();
                int rc = reply.readInt();
                byte[] blob = reply.createByteArray();
                int declared = reply.readInt();
                line.append(" presence=").append(presence)
                        .append(" rc=").append(rc)
                        .append(" blobLen=").append(blob == null ? -1 : blob.length)
                        .append(" declaredLen=").append(declared);
                if (blob != null && blob.length > 4) {
                    int body = (blob[0] & 0xff) | ((blob[1] & 0xff) << 8)
                            | ((blob[2] & 0xff) << 16) | ((blob[3] & 0xff) << 24);
                    if (body > 0 && 4 + body <= blob.length) {
                        String json = new String(blob, 4, body);
                        line.append(" hasCerts=").append(json.contains("\"certs\""))
                                .append(" keys=").append(keyOrder(json));
                    }
                }
            }
            log(line.toString());
        } catch (Throwable t) {
            Throwable root = t;
            while (root.getCause() != null) {
                root = root.getCause();
            }
            log("TX code=" + code + " threw " + root);
        }
    }

    private static String keyOrder(String json) {
        String[] names = {"pub_key", "counter", "cpu_id", "uid", "certs"};
        int[] positions = new int[names.length];
        for (int i = 0; i < names.length; i++) {
            positions[i] = json.indexOf("\"" + names[i] + "\":");
        }
        StringBuilder order = new StringBuilder("[");
        boolean first = true;
        for (int round = 0; round < names.length; round++) {
            int best = -1;
            for (int i = 0; i < names.length; i++) {
                if (positions[i] >= 0 && (best < 0 || positions[i] < positions[best])) {
                    best = i;
                }
            }
            if (best < 0) {
                break;
            }
            if (!first) {
                order.append(',');
            }
            order.append(names[best]);
            first = false;
            positions[best] = -1;
        }
        return order.append(']').toString();
    }

    private static void markDone() {
        try {
            java.io.FileOutputStream out = new java.io.FileOutputStream(DONE, false);
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
