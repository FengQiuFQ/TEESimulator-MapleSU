package v4;

import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;

/**
 * COMPILE-TIME STUB ONLY (never dexed) - the module's interceptor base class.
 *
 * <p>Runtime shape (measured, classes_p16.dex / {@code v4.g}): {@code public abstract class g
 * extends android.os.Binder} with a <b>final</b> {@code onTransact(int, Parcel, Parcel, int)}
 * that dispatches transaction codes 1/2 to the two virtual hooks below and encodes their
 * return value as the action word ({@code 3}=override reply, {@code 5}=continue). Subclassing
 * it from Java and overriding {@link #onPreTransact} is therefore the supported extension
 * point; {@code mpl.ProbeInterceptor} relies on exactly this.</p>
 */
public abstract class g extends Binder {
    public f onPreTransact(long txId, IBinder target, int code, int flags, int callerUid,
                           int callerPid, Parcel data) {
        return null;
    }

    public f onPostTransact(long txId, IBinder target, int code, int flags, int callerUid,
                            int callerPid, Parcel data, Parcel reply, int resultCode) {
        return null;
    }
}
