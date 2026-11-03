package mpl;

import android.system.Os;
import android.util.Log;

/** Verifies that android.system.Os.seteuid() is usable and fails cleanly without CAP_SETUID. */
public final class EuidProbe {
    private static final String TAG = "EUIDPROBE";

    public static void main(String[] args) {
        Log.i(TAG, "euid=" + Os.geteuid() + " uid=" + Os.getuid());
        try {
            Os.seteuid(Os.geteuid());
            Log.i(TAG, "self-seteuid ok (no-op)");
        } catch (Throwable error) {
            Log.e(TAG, "self-seteuid failed: " + error, error);
        }
        try {
            Os.seteuid(0);
            Log.e(TAG, "UNEXPECTED: seteuid(0) allowed without CAP_SETUID");
        } catch (Throwable error) {
            Log.i(TAG, "seteuid(0) denied as expected: " + error.getClass().getSimpleName()
                    + ": " + error.getMessage());
        }
        Log.i(TAG, "euid=" + Os.geteuid());
    }
}
