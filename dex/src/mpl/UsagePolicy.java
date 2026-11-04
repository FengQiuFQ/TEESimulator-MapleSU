package mpl;

import android.hardware.security.keymint.KeyParameter;
import android.hardware.security.keymint.KeyParameterValue;
import android.system.keystore2.Authorization;
import android.system.keystore2.KeyEntryResponse;
import android.system.keystore2.KeyMetadata;

import org.matrix.TEESimulator.interception.keystore.KeyIdentifier;
import org.matrix.TEESimulator.interception.keystore.shim.KeyMintSecurityLevelInterceptor;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;

/**
 * G02 (g / "successful use decrements the remaining count") metadata fix.
 *
 * <p>The framework derives {@code KeyInfo.getRemainingUsageCount()} from the {@code
 * USAGE_COUNT_LIMIT} (405) authorization in {@code KeyMetadata.authorizations}. The module
 * echoes the <em>declared</em> limit there and keeps the live count in its static
 * {@code usageCounters} map keyed by {@link KeyIdentifier}(uid, alias), created at
 * createOperation and decremented by the finish callback.</p>
 *
 * <p>p16h/p16k patched {@code buildKeyEntryResponse} and {@code
 * InterceptorUtils.patchAuthorizations}, and the device log showed {@code limit=2 -> no live
 * counter (null)} right after a successful signature. That is not a broken key comparison:
 * the second {@code getKeyEntry} never re-enters those two methods at all. For a key the
 * module generated, {@code Keystore2Interceptor.onPreTransact} answers from its cached
 * {@code KeyEntryResponse} (via {@code logServedChain}) and returns it verbatim, so the 405
 * value frozen at generation time is replayed forever.</p>
 *
 * <p>p16l therefore adjusts the live value at three points: the object cache
 * ({@link #adjustResponse}, hooked at {@code Keystore2Interceptor.logServedChain}), the two
 * pre-existing reply builders, and - as a last resort - a mirror ledger maintained by
 * {@link #onFinish} so a lost/ambiguous module counter still decrements.</p>
 */
public final class UsagePolicy {

    /** KeyMint tag 405 USAGE_COUNT_LIMIT (0x30000195). */
    public static final int TAG_USAGE_COUNT_LIMIT = 805306773;

    private static final int DIAG_LIMIT = 48;

    private static volatile Map counters;

    /** uid|alias -> remaining, mirrored from the module's finish callback. */
    private static final Map LEDGER = new ConcurrentHashMap();

    /** uid|alias -> declared limit, learned from any 405 we ever saw. */
    private static final Map LIMITS = new ConcurrentHashMap();

    private static final Set DIAG = new HashSet();

    private UsagePolicy() {
    }

    private static String key(int uid, String alias) {
        return uid + "|" + alias;
    }

    // ------------------------------------------------------------------ entry points

    /**
     * Object-cache hook: {@code Keystore2Interceptor.logServedChain} is called immediately
     * before every cached {@code KeyEntryResponse} is turned into a reply, and it carries
     * both the uid and either the alias or a {@code keyid:<nspace>} marker.
     */


    /** Hidden KeyMetadata carries the leaf in "certificate"; read it reflectively. */
    private static byte[] leafOf(Object metadata) {
        try {
            java.lang.reflect.Field field = metadata.getClass().getField("certificate");
            Object value = field.get(metadata);
            return (value instanceof byte[]) ? (byte[]) value : null;
        } catch (Throwable ignored) {
            return null;
        }
    }

    /** First 8 hex chars of SHA-256, or "null"/"err". */
    private static String leafHash(byte[] leaf) {
        if (leaf == null) {
            return "null";
        }
        try {
            java.security.MessageDigest md = java.security.MessageDigest.getInstance("SHA-256");
            byte[] digest = md.digest(leaf);
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < 4 && i < digest.length; i++) {
                sb.append(String.format("%02x", digest[i] & 0xff));
            }
            return sb.toString();
        } catch (Throwable t) {
            return "err";
        }
    }

    public static void adjustResponse(KeyEntryResponse response, int uid, String alias) {
        if (response == null) {
            return;
        }
        KeyMetadata metadata = response.metadata;
        if (metadata == null) {
            return;
        }
        String name = alias;
        if (name != null && name.startsWith("keyid:")) {
            name = null; // key-id addressed: no alias in this leg
        }
        try {
            // H03 evidence: the same KEY_ID must serve the same leaf DER every time.
            android.util.Log.i("MPL-KEY", "serve uid=" + uid + " alias=" + name
                    + " leaf=" + leafHash(leafOf(metadata)));
            Authorization[] before = metadata.authorizations;
            Authorization[] after = adjust0(before, uid, name, "serve");
            if (after != before) {
                metadata.authorizations = after;
            }
        } catch (Throwable t) {
            android.util.Log.i("MPL-USAGE", "adjustResponse failed uid=" + uid + " alias=" + name + ": " + t);
        }
    }

    /**
     * @param auths authorizations built by {@code KeyMintSecurityLevelInterceptorKt}
     * @param uid   owning uid
     * @param alias key alias ({@code KeyDescriptor.alias} of the request)
     * @return a patched copy, or the original array when nothing has to change
     */
    public static Authorization[] adjust(Authorization[] auths, int uid, String alias) {
        return adjust0(auths, uid, alias, "build");
    }

    /** Same as {@link #adjust(Authorization[], int, String)} but without an alias. */
    public static Authorization[] adjustUid(Authorization[] auths, int uid) {
        return adjust0(auths, uid, null, "wrap");
    }

    /**
     * Finish callback mirror: {@code handleCreateOperation$lambda$0$14} passes the exact
     * {@link KeyIdentifier} the module used and the counter value after its decrement.
     */
    public static void onFinish(Object identifier, int remaining) {
        try {
            if (!(identifier instanceof KeyIdentifier)) {
                return;
            }
            KeyIdentifier id = (KeyIdentifier) identifier;
            String name = id.getAlias();
            LEDGER.put(key(id.getUid(), name), Integer.valueOf(remaining));
        } catch (Throwable ignored) {
            // a mirror must never break the finish path
        }
    }

    // ------------------------------------------------------------------ core

    private static Authorization[] adjust0(Authorization[] auths, int uid, String alias, String site) {
        if (auths == null) {
            diag(uid, alias, site, "null auths");
            return auths;
        }
        int index = -1;
        int limit = -1;
        for (int i = 0; i < auths.length; i++) {
            Authorization a = auths[i];
            if (a == null || a.keyParameter == null) {
                continue;
            }
            if (a.keyParameter.tag != TAG_USAGE_COUNT_LIMIT) {
                continue;
            }
            try {
                limit = a.keyParameter.value.getInteger();
            } catch (Throwable t) {
                return auths;
            }
            index = i;
            break;
        }
        if (index < 0 || limit < 0) {
            diag(uid, alias, site, "no USAGE_COUNT_LIMIT(405) n=" + auths.length);
            return auths; // not a limited-use key
        }
        if (alias != null) {
            LIMITS.put(key(uid, alias), Integer.valueOf(limit));
        }

        Integer remaining = lookup(uid, alias);
        if (remaining == null) {
            diag(uid, alias, site, "no live counter n=" + auths.length + " limit=" + limit
                    + " " + dump(uid, alias));
            return auths;
        }
        int value = remaining.intValue();
        if (value < 0) {
            value = 0;
        }
        android.util.Log.i("MPL-USAGE", "adjust site=" + site + " uid=" + uid + " alias=" + alias
                + " limit=" + limit + " remaining=" + value);
        if (value >= limit) {
            return auths; // nothing consumed yet -> the declared limit is already correct
        }
        Authorization src = auths[index];
        Authorization patched = new Authorization();
        patched.keyParameter = new KeyParameter();
        patched.keyParameter.tag = TAG_USAGE_COUNT_LIMIT;
        patched.keyParameter.value = KeyParameterValue.integer(value);
        patched.securityLevel = src.securityLevel;
        Authorization[] copy = new Authorization[auths.length];
        System.arraycopy(auths, 0, copy, 0, auths.length);
        copy[index] = patched;
        return copy;
    }

    /** Module counter first (authoritative), then the mirror ledger, then a sole-uid guess. */
    private static Integer lookup(int uid, String alias) {
        Map map = counters();
        Object v = null;
        if (map != null) {
            if (alias != null) {
                // The module's KeyIdentifier rejects a null alias (Kotlin non-null parameter),
                // so (uid, null) is not a lookup we can even construct.
                v = map.get(new KeyIdentifier(uid, alias));
            } else {
                // key-id addressed reply: the uid's only counter is the best guess
                v = soleCounterOfUid(map, uid, null);
            }
            if (v instanceof AtomicInteger) {
                return Integer.valueOf(((AtomicInteger) v).get());
            }
        }
        Object mirror = alias == null ? null : LEDGER.get(key(uid, alias));
        if (mirror instanceof Integer) {
            return (Integer) mirror;
        }
        return null;
    }

    /**
     * When exactly one counter of that uid exists it is authoritative; a second limited-use
     * key of the same uid would otherwise be silently mis-reported, so ambiguity is null.
     */
    private static Object soleCounterOfUid(Map map, int uid, String skipAlias) {
        Object found = null;
        try {
            Iterator it = map.entrySet().iterator();
            while (it.hasNext()) {
                Object e = it.next();
                Object k = ((Map.Entry) e).getKey();
                if (!(k instanceof KeyIdentifier)) {
                    continue;
                }
                KeyIdentifier id = (KeyIdentifier) k;
                if (id.getUid() != uid) {
                    continue;
                }
                if (skipAlias != null && skipAlias.equals(id.getAlias())) {
                    continue;
                }
                if (found != null) {
                    return null; // ambiguous: more than one counter
                }
                found = ((Map.Entry) e).getValue();
            }
        } catch (Throwable t) {
            return null;
        }
        return found;
    }

    private static Map counters() {
        Map map = counters;
        if (map != null) {
            return map;
        }
        try {
            map = KeyMintSecurityLevelInterceptor.access$getUsageCounters$cp();
        } catch (Throwable t) {
            map = null;
        }
        counters = map;
        return map;
    }

    // ------------------------------------------------------------------ diagnostics

    /** One line per (uid, alias, site); bounded so a 77-item audit cannot flood logcat. */
    private static void diag(int uid, String alias, String site, String message) {
        String tagKey = uid + "|" + alias + "|" + site;
        try {
            synchronized (DIAG) {
                if (DIAG.size() >= DIAG_LIMIT || DIAG.contains(tagKey)) {
                    return;
                }
                DIAG.add(tagKey);
            }
        } catch (Throwable ignored) {
            return;
        }
        android.util.Log.i("MPL-USAGE", "adjust site=" + site + " uid=" + uid + " alias=" + alias
                + " " + message);
    }

    /** map size + the constructed key + up to five live keys, so a mismatch is provable. */
    private static String dump(int uid, String alias) {
        StringBuilder sb = new StringBuilder();
        try {
            sb.append("built=").append(new KeyIdentifier(uid, alias));
        } catch (Throwable t) {
            sb.append("built=<").append(t).append('>');
        }
        Map map = counters();
        if (map == null) {
            sb.append(" map=unavailable");
            return sb.toString();
        }
        try {
            sb.append(" mapSize=").append(map.size()).append(" keys=[");
            int n = 0;
            Iterator it = map.keySet().iterator();
            while (it.hasNext() && n < 5) {
                Object k = it.next();
                if (n > 0) {
                    sb.append(", ");
                }
                sb.append(k);
                n++;
            }
            if (map.size() > n) {
                sb.append(", ...");
            }
            sb.append(']');
        } catch (Throwable t) {
            sb.append(" mapDump=<").append(t).append('>');
        }
        try {
            sb.append(" ledger=").append(LEDGER.size());
        } catch (Throwable ignored) {
            // best effort
        }
        return sb.toString();
    }
}
