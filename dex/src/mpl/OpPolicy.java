package mpl;

import android.hardware.security.keymint.KeyParameter;
import android.hardware.security.keymint.KeyParameterValue;
import android.system.keystore2.Authorization;

import org.matrix.TEESimulator.interception.keystore.KeyIdentifier;
import org.matrix.TEESimulator.interception.keystore.shim.KeyMintSecurityLevelInterceptor;

import java.io.FileInputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

import t4.l;

/**
 * KeyMint-level operation policy for the tee16-fix lane.
 *
 * <h3>B - G05 APPLICATION_ID (tag 601) binding</h3>
 * {@link #allow} runs inside {@code AuthorizeCreate.check}. A key that was generated with an
 * APPLICATION_ID may only be used by a createOperation request that carries <b>exactly one</b>
 * 601 parameter, byte-for-byte identical to the bound value. Missing / duplicated / different
 * yields {@link #INVALID_TAG} (-33), which {@code check()} turns into the error reply.
 *
 * <h3>C - ag MAX_USES_PER_BOOT (tag 404)</h3>
 * {@link #allowUsage} runs once per intercepted createOperation, keyed by
 * {@code (uid, alias)}. The budget is per boot: the key of the map is derived from
 * {@code /proc/sys/kernel/random/boot_id}; if that ever changes, every counter is dropped.
 * A key with 404=N may begin N operations per boot; the N+1-th returns
 * {@link #KEY_MAX_OPS_EXCEEDED} (-27). 0 means "no limit" (KeyMint semantics).
 *
 * <h3>D - g G02 remaining usage (tag 405)</h3>
 * {@link #patchRemaining} rewrites the USAGE_COUNT_LIMIT authorization of a getKeyEntry reply
 * from "declared limit" to "remaining". The device framework computes
 * {@code KeyInfo.getRemainingUsageCount()} straight from this tag's integer value
 * (AndroidKeyStoreSecretKeyFactorySpi :sswitch_10b -> KeyStore2ParameterUtils.getUnsignedInt),
 * so this is the only place the number can come from.
 * The used count is not tracked twice: it is read from the module's own
 * {@code usageCounters} (limit at createOperation, decrement on successful finish,
 * entry dropped when exhausted), which keeps abort() from consuming budget.
 */
public final class OpPolicy {

    /** KeyMint ErrorCode::INVALID_TAG */
    public static final int INVALID_TAG = -33;

    /** KeyMint ErrorCode::KEY_MAX_OPS_EXCEEDED */
    public static final int KEY_MAX_OPS_EXCEEDED = -27;

    private static final Object LOCK = new Object();

    /** boot epoch fingerprint; every counter is dropped when it changes. */
    private static String epoch;

    /** (uid/alias) -> {usedThisBoot, limitThisBoot} for MAX_USES_PER_BOOT. */
    private static final HashMap<String, int[]> PER_BOOT = new HashMap<String, int[]>();

    /** module's own remaining-uses map, resolved lazily (null until available). */
    private static volatile Map counters;

    private OpPolicy() {
    }

    // ------------------------------------------------------------------ B

    /**
     * G05: key/operation APPLICATION_ID binding.
     *
     * @return null when the operation may proceed, otherwise the KeyMint error code.
     */
    public static Integer allow(l keyParams, l opParams, KeyParameter[] rawOpParams) {
        if (keyParams == null) {
            return null;
        }
        byte[] bound = keyParams.applicationId;
        if (bound == null || bound.length == 0) {
            return null; // key is not bound to an application id
        }
        int n = KeyParams.count(rawOpParams, KeyParams.TAG_APPLICATION_ID);
        if (n != 1) {
            // 0 = not bound in this request, >1 = ambiguous: KeyMint rejects both
            return Integer.valueOf(INVALID_TAG);
        }
        byte[] requested = KeyParams.applicationId(rawOpParams);
        if (requested == null || !java.util.Arrays.equals(bound, requested)) {
            return Integer.valueOf(INVALID_TAG);
        }
        return null;
    }

    // ------------------------------------------------------------------ C

    /**
     * ag: per-boot MAX_USES_PER_BOOT budget. Called once per intercepted createOperation;
     * a successful call consumes one use.
     *
     * @return null when the operation may proceed, otherwise the KeyMint error code.
     */
    public static Integer allowUsage(KeyIdentifier id, l keyParams) {
        if (id == null || keyParams == null) {
            return null;
        }
        Integer limitObj = keyParams.M;
        if (limitObj == null) {
            return null; // key declares no MAX_USES_PER_BOOT
        }
        int limit = limitObj.intValue();
        if (limit <= 0) {
            return null; // 0 = unlimited (KeyMint semantics)
        }
        String key = keyOf(id);
        synchronized (LOCK) {
            rotateLocked();
            int[] state = PER_BOOT.get(key);
            if (state == null) {
                state = new int[]{0, limit};
                PER_BOOT.put(key, state);
            }
            state[1] = limit;
            if (state[0] >= state[1]) {
                return Integer.valueOf(KEY_MAX_OPS_EXCEEDED);
            }
            state[0] = state[0] + 1;
        }
        return null;
    }

    /**
     * ag: per-boot MAX_USES_PER_BOOT budget keyed by the (stable) key-parameter object,
     * for the AuthorizeCreate.check hook where no KeyIdentifier is available.
     *
     * <p>The module caches one {@code t4.l} per generated key inside
     * {@code KeyMintSecurityLevelInterceptor$GeneratedKeyInfo}, so the identity of that
     * object is a per-key identity for the lifetime of the daemon (a restart is a new
     * boot anyway, which is exactly when the budget resets).</p>
     *
     * @return null when the operation may proceed, otherwise the KeyMint error code.
     */
    public static Integer allowMaxUses(Object keyObj, l keyParams) {
        if (keyObj == null || keyParams == null) {
            return null;
        }
        Integer limitObj = keyParams.M;
        if (limitObj == null) {
            return null;
        }
        int limit = limitObj.intValue();
        if (limit <= 0) {
            return null;
        }
        String key = "obj@" + System.identityHashCode(keyObj);
        synchronized (LOCK) {
            rotateLocked();
            int[] state = PER_BOOT.get(key);
            if (state == null) {
                state = new int[]{0, limit};
                PER_BOOT.put(key, state);
            }
            state[1] = limit;
            if (state[0] >= state[1]) {
                return Integer.valueOf(KEY_MAX_OPS_EXCEEDED);
            }
            state[0] = state[0] + 1;
        }
        return null;
    }

    // ------------------------------------------------------------------ D

    /**
     * g: rewrite tag 405 of a getKeyEntry reply to the remaining use count.
     *
     * @return a patched copy of {@code auths}, or null when nothing has to change
     *         (which the caller reads as "keep the original array").
     */
    public static Authorization[] patchRemaining(Authorization[] auths, KeyIdentifier id) {
        if (auths == null || id == null) {
            return null;
        }
        int index = -1;
        int limit = -1;
        for (int i = 0; i < auths.length; i++) {
            Authorization a = auths[i];
            if (a == null || a.keyParameter == null) {
                continue;
            }
            if (a.keyParameter.tag != KeyParams.TAG_USAGE_COUNT_LIMIT) {
                continue;
            }
            index = i;
            try {
                limit = a.keyParameter.value.getInteger();
            } catch (Throwable t) {
                return null;
            }
            break;
        }
        if (index < 0 || limit < 0) {
            // no USAGE_COUNT_LIMIT in this reply -> the key is not a limited-use key.
            // (The persisted-record rebuild path drops 405 entirely; re-adding it there
            // would need a persisted limit, see RESULT.md risk R4.)
            return null;
        }
        int used = usedCount(id, limit);
        int remaining = limit - used;
        if (remaining < 0) {
            remaining = 0;
        }
        if (remaining == limit) {
            return null; // unchanged
        }
        Authorization src = auths[index];
        Authorization patched = new Authorization();
        patched.keyParameter = new KeyParameter();
        patched.keyParameter.tag = KeyParams.TAG_USAGE_COUNT_LIMIT;
        patched.keyParameter.value = KeyParameterValue.integer(remaining);
        patched.securityLevel = src.securityLevel;
        Authorization[] copy = new Authorization[auths.length];
        System.arraycopy(auths, 0, copy, 0, auths.length);
        copy[index] = patched;
        return copy;
    }

    /** Uses of {@code id} according to the module's own remaining-uses map. */
    private static int usedCount(KeyIdentifier id, int limit) {
        Map map = counters();
        if (map == null) {
            return 0;
        }
        try {
            Object v = map.get(id);
            if (v instanceof AtomicInteger) {
                int current = ((AtomicInteger) v).get();
                int used = limit - current;
                return used < 0 ? 0 : used;
            }
        } catch (Throwable ignored) {
            // fall through: treat as unused
        }
        return 0;
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

    // ------------------------------------------------------------------ state

    private static String keyOf(KeyIdentifier id) {
        String alias = id.getAlias();
        return id.getUid() + "/" + (alias == null ? "" : alias);
    }

    /** drop all per-boot counters when the boot epoch changed. Caller holds LOCK. */
    private static void rotateLocked() {
        // The epoch can only change across a reboot, and a reboot restarts this process,
        // so read /proc once per process instead of once per keystore operation.
        if (epoch != null) {
            return;
        }
        epoch = bootEpoch();
    }

    private static String bootEpoch() {
        byte[] raw = readFile("/proc/sys/kernel/random/boot_id");
        if (raw == null || raw.length == 0) {
            return "no-boot-id";
        }
        return new String(raw).trim();
    }

    private static byte[] readFile(String path) {
        FileInputStream in = null;
        try {
            in = new FileInputStream(path);
            byte[] buf = new byte[128];
            int n = in.read(buf);
            if (n <= 0) {
                return null;
            }
            byte[] out = new byte[n];
            System.arraycopy(buf, 0, out, 0, n);
            return out;
        } catch (Throwable t) {
            return null;
        } finally {
            if (in != null) {
                try {
                    in.close();
                } catch (Throwable ignored) {
                    // ignore
                }
            }
        }
    }
}
