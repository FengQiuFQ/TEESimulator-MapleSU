package mpl;

import java.io.File;

/**
 * Experimental switch: force a target app's stale keys through the simulator.
 *
 * <p>When {@code /data/adb/tricky_store/key_takeover} exists, an unknown KeyId from a
 * target uid is answered with KEY_NOT_FOUND instead of being forwarded to the real HAL.
 * The app then calls generateKey again, which the simulator owns. Without the file the
 * old forwarding behaviour is unchanged.</p>
 */
public final class KeyTakeover {

    private static final String FLAG = "/data/adb/tricky_store/key_takeover";
    private static final long CACHE_MS = 2000L;

    private static volatile long lastCheck;
    private static volatile boolean cached;

    private KeyTakeover() {
    }

    public static boolean enabled() {
        long now = System.currentTimeMillis();
        if (now - lastCheck < CACHE_MS) {
            return cached;
        }
        lastCheck = now;
        boolean value;
        try {
            value = new File(FLAG).exists();
        } catch (Throwable ignored) {
            value = false;
        }
        cached = value;
        return value;
    }
}
