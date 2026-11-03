package mpl;

import android.os.IBinder;
import android.os.Parcel;
import android.util.Log;

import java.util.concurrent.atomic.AtomicInteger;

/**
 * MapleSU SOTER lane - <b>truthful</b> interception probe (p16s).
 *
 * <h2>Why this class exists</h2>
 *
 * <p>The 6.0.7 bridge self-tested itself by transacting {@code tx=3} on the target binder
 * <em>from the daemon process</em>, which runs as uid 0. The injected {@code
 * libTEESimulator.so} deliberately exempts euid 0 from interception: in {@code
 * intercepted_ioctl} the driver-reported {@code sender_euid} is rewritten to 1000 for every
 * root-originated transaction and the registry lookup is skipped entirely (disassembly of the
 * shipped library, SHA-256 {@code ad17dd5b...}: {@code 0x1817c MOV W8,#0x3E8} /
 * {@code 0x18180 STR W8,[X22,#0x1C]} on the {@code sender_euid==0} branch, while the
 * {@code shouldIntercept} call at {@code 0x181ac} is only reachable from the other branch).
 * A root-originated self-test can therefore <b>never</b> observe the hook: it always reaches
 * the real service and reads its {@code 0} - exactly the {@code hook=MISSING} false negative.</p>
 *
 * <h2>What this class does</h2>
 *
 * <p>It is registered as the binder interceptor callback <em>instead of</em> {@code w4.e.a},
 * and it recognises one reserved probe transaction: {@code tx=3} whose AIDL argument (the
 * per-app uid) equals {@link #PROBE_UID}. That transaction is answered locally with
 * {@code NoException + 1 + }{@link #PROBE_MAGIC}, without consulting the forge, the per-uid
 * scope gate or the real service. Everything else is delegated byte-for-byte to
 * {@code w4.e.a.onPreTransact}, so the parity and scope semantics of the shipped dex are
 * untouched.</p>
 *
 * <p>Every other sender keeps the normal path, and the reply shape for real callers is not
 * affected: the probe uid is not a legal app uid, so no real client can hit this branch.</p>
 */
public final class ProbeInterceptor extends v4.g {

    private static final String TAG = "MPL-SOTER";

    /** {@code hasAskAlready}: the cheapest code that is already in the 13-code table. */
    public static final int PROBE_CODE = 3;
    /** Reserved AIDL uid that no real client uses; marks the transaction as ours. */
    public static final int PROBE_UID = 0x7fff0000;
    /** Second reply word: proves the answer came from this class, not from the real service. */
    public static final int PROBE_MAGIC = 0x004d504c;
    /** The descriptor the probe transaction enforces its interface token against. */
    public static final String DESCRIPTOR = "com.tencent.soter.soterserver.ISoterService";

    public static final ProbeInterceptor INSTANCE = new ProbeInterceptor();

    /** Probe transactions answered since process start (diagnostics only). */
    public static final AtomicInteger HITS = new AtomicInteger(0);

    private ProbeInterceptor() {
    }

    @Override
    public v4.f onPreTransact(long txId, IBinder target, int code, int flags, int callerUid,
                              int callerPid, Parcel data) {
        if (code == PROBE_CODE && isProbe(data)) {
            HITS.incrementAndGet();
            Parcel reply = Parcel.obtain();
            try {
                reply.writeNoException();
                reply.writeInt(1);
                reply.writeInt(PROBE_MAGIC);
                return new v4.d(reply);
            } catch (Throwable error) {
                reply.recycle();
                Log.w(TAG, "probe reply failed", error);
                return super.onPreTransact(txId, target, code, flags, callerUid, callerPid, data);
            }
        }
        return w4.e.a.onPreTransact(txId, target, code, flags, callerUid, callerPid, data);
    }

    /**
     * True only for our probe transaction. The Parcel position is always restored: the
     * scope gate and the forge read the very same Parcel afterwards.
     */
    private static boolean isProbe(Parcel data) {
        if (data == null) {
            return false;
        }
        int position = data.dataPosition();
        try {
            data.enforceInterface(DESCRIPTOR);
            return data.dataAvail() >= 4 && data.readInt() == PROBE_UID;
        } catch (Throwable error) {
            return false;
        } finally {
            try {
                data.setDataPosition(position);
            } catch (Throwable ignored) {
                // nothing else can be done; the delegated path uses its own copy
            }
        }
    }
}
