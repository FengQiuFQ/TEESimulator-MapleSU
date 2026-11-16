package mpl;

import java.util.HashMap;
import java.util.Map;
import java.util.regex.Pattern;

/**
 * Keeps the SOTER lane's idle loops from repeating themselves in logcat.
 *
 * <p>While {@code com.tencent.soter.soterserver} is not running, the socket client retries
 * every 1.5 s and the bridge polls every 5 s, and every pass used to log its failure again:
 * about 40 warnings and 36 info lines a minute, which pushed everything else out of the
 * WebUI's diagnostic export. The retry timing stays as it is (the forge has to be in place
 * before an app's first SOTER call), only the repeats go.</p>
 *
 * <p>{@link #admit} answers true for a message that was not logged in the last
 * {@link #QUIET_MS}; {@link #forget} after a change of state (a connection, a new route,
 * the service seen again) makes every message news again. So a state change is logged when
 * it happens, and a lane that stays down says so once every ten minutes.</p>
 *
 * <p>Messages are compared after {@link #key} has dropped object hashes such as
 * {@code Proxy@94d71f}: the framework puts them into exception text and they differ on
 * every call.</p>
 */
final class LogGate {

    /** How long a repeated message stays quiet. */
    static final long QUIET_MS = 10L * 60L * 1000L;
    /** A message with ever-changing text must not grow the table without bound. */
    private static final int MAX_KEYS = 64;
    private static final Pattern HASH = Pattern.compile("@[0-9a-f]+\\b");

    private final long quietMs;
    private final Map<String, Long> logged = new HashMap<String, Long>();

    LogGate() {
        this(QUIET_MS);
    }

    LogGate(long quietMs) {
        this.quietMs = quietMs;
    }

    /** True when {@code message} should be logged now. */
    boolean admit(String message) {
        return admit(message, System.nanoTime() / 1000000L);
    }

    /** {@link #admit(String)} with an explicit monotonic clock in milliseconds. */
    synchronized boolean admit(String message, long nowMs) {
        String key = key(message);
        Long at = logged.get(key);
        if (at != null && nowMs - at.longValue() < quietMs) {
            return false;
        }
        if (at == null && logged.size() >= MAX_KEYS) {
            logged.clear();
        }
        logged.put(key, Long.valueOf(nowMs));
        return true;
    }

    /** The state changed: whatever comes next is logged again. */
    synchronized void forget() {
        logged.clear();
    }

    static String key(String message) {
        return message == null ? "" : HASH.matcher(message).replaceAll("@");
    }
}
