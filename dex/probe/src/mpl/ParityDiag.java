package mpl;

import android.os.Parcel;

/**
 * Focused diagnostic for the Soter reply envelope (probe-only, never shipped).
 *
 * <p>Prints, for one transaction, the reply object type, the parcel size and the first ints,
 * plus the marshalled bytes. Used to find where the value a transaction returns stops matching
 * the value {@code w4.e} writes.</p>
 */
public final class ParityDiag {

    private static final String DESCRIPTOR = "com.tencent.soter.soterserver.ISoterService";

    private static Parcel data(int code, int uid, String a, String b, long session) {
        Parcel p = Parcel.obtain();
        p.writeInterfaceToken(DESCRIPTOR);
        switch (code) {
            case 4:
            case 5:
            case 6:
            case 8:
                p.writeInt(uid);
                p.writeString(a);
                break;
            case 9:
                p.writeInt(uid);
                p.writeString(a);
                p.writeString(b);
                break;
            case 10:
                p.writeLong(session);
                break;
            case 11:
            case 12:
                break;
            default:
                p.writeInt(uid);
                break;
        }
        p.setDataPosition(0);
        return p;
    }

    private static String hex(byte[] raw) {
        if (raw == null) {
            return "null";
        }
        StringBuilder sb = new StringBuilder(raw.length * 2);
        for (int i = 0; i < raw.length && i < 48; i++) {
            int v = raw[i] & 0xff;
            if (v < 16) {
                sb.append('0');
            }
            sb.append(Integer.toHexString(v));
        }
        return sb.toString();
    }

    private static Object fetch(int code, Parcel request) throws Exception {
        Class<?> c = Class.forName("w4.e");
        Object inst = c.getField("a").get(null);
        java.lang.reflect.Method m = c.getMethod("onPreTransact", long.class,
                android.os.IBinder.class, int.class, int.class, int.class, int.class,
                Parcel.class);
        return m.invoke(inst, Long.valueOf(0L), new android.os.Binder(),
                Integer.valueOf(code), Integer.valueOf(0), Integer.valueOf(0),
                Integer.valueOf(0), request);
    }

    private static void dump(String label, int code, Parcel request) {
        try {
            Object r = fetch(code, request);
            java.lang.reflect.Field f = r.getClass().getField("a");
            Parcel reply = (Parcel) f.get(r);
            int pos = reply.dataPosition();
            int size = reply.dataSize();
            byte[] raw = null;
            if (pos == 0) {
                try {
                    raw = reply.marshall();
                } catch (Throwable t) {
                    raw = null;
                }
            }
            reply.setDataPosition(0);
            int a = reply.readInt();
            int b = reply.readInt();
            if (System.getenv("MPL_PROBE_RECYCLE") != null) {
                reply.recycle();
            }
            android.util.Log.i("VERIFYPROBE", "DIAG " + label + " cls=" + r.getClass().getName()
                    + " pos=" + pos + " size=" + size + " int0=" + a + " int1=" + b
                    + " hex=" + hex(raw));
        } catch (Throwable t) {
            android.util.Log.i("VERIFYPROBE", "DIAG " + label + " threw " + t);
        }
    }

    public static void main(String[] args) {
        android.util.Log.i("VERIFYPROBE", "DIAG start uid=" + android.os.Process.myUid());
        // Focused A: 20 identical has() calls - is the corruption positional?
        for (int i = 0; i < 20; i++) {
            dump("A" + i + " tx3", 3, data(3, 10502, null, null, 0L));
        }
        // Focused B: 20 identical gen-ask calls on a fresh uid.
        for (int i = 0; i < 20; i++) {
            dump("B" + i + " tx1", 1, data(1, 10520 + i, null, null, 0L));
        }
        android.util.Log.i("VERIFYPROBE", "DIAG done");
    }
}
