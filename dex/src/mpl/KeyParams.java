package mpl;

import android.hardware.security.keymint.KeyParameter;

/**
 * KeyMint tag extraction used by the tee16-fix lane.
 *
 * Mirrors the semantics of the module's own `s2.a.e/j/f` helpers (first matching tag wins,
 * `KeyParameterValue` accessors are guarded because the union throws on a type mismatch),
 * but also exposes an occurrence count, which the APPLICATION_ID binding check needs:
 * a request carrying tag 601 twice is invalid, not "take the first".
 */
public final class KeyParams {

    /** KeyMint tag 601 APPLICATION_ID (0x90000259), BYTES. */
    public static final int TAG_APPLICATION_ID = -1879047591;

    /** KeyMint tag 1007 CERTIFICATE_SUBJECT (0x900003EF), BYTES (DER Name). */
    public static final int TAG_CERTIFICATE_SUBJECT = -1879047185;

    /** KeyMint tag 404 MAX_USES_PER_BOOT (0x30000194), UINT. */
    public static final int TAG_MAX_USES_PER_BOOT = 805306772;

    /** KeyMint tag 405 USAGE_COUNT_LIMIT (0x30000195), UINT. */
    public static final int TAG_USAGE_COUNT_LIMIT = 805306773;

    /** KeyMint tag 202 INCLUDE_UNIQUE_ID (0x700000CA), BOOL. */
    public static final int TAG_INCLUDE_UNIQUE_ID = 1879048394;

    private KeyParams() {
    }

    /** Number of parameters carrying {@code tag}. */
    public static int count(KeyParameter[] params, int tag) {
        if (params == null) {
            return 0;
        }
        int n = 0;
        for (int i = 0; i < params.length; i++) {
            KeyParameter p = params[i];
            if (p != null && p.tag == tag) {
                n++;
            }
        }
        return n;
    }

    /** First blob payload for {@code tag}, or null. */
    public static byte[] blob(KeyParameter[] params, int tag) {
        if (params == null) {
            return null;
        }
        for (int i = 0; i < params.length; i++) {
            KeyParameter p = params[i];
            if (p == null || p.tag != tag || p.value == null) {
                continue;
            }
            try {
                byte[] b = p.value.getBlob();
                if (b != null) {
                    return b;
                }
            } catch (Throwable ignored) {
                // wrong union member: treat as absent
            }
        }
        return null;
    }

    /** First integer payload for {@code tag}, or null. */
    public static Integer integer(KeyParameter[] params, int tag) {
        if (params == null) {
            return null;
        }
        for (int i = 0; i < params.length; i++) {
            KeyParameter p = params[i];
            if (p == null || p.tag != tag || p.value == null) {
                continue;
            }
            try {
                return Integer.valueOf(p.value.getInteger());
            } catch (Throwable ignored) {
                // wrong union member: treat as absent
            }
        }
        return null;
    }

    public static byte[] applicationId(KeyParameter[] params) {
        return blob(params, TAG_APPLICATION_ID);
    }

    public static byte[] certSubjectDer(KeyParameter[] params) {
        return blob(params, TAG_CERTIFICATE_SUBJECT);
    }

    public static Integer maxUsesPerBoot(KeyParameter[] params) {
        return integer(params, TAG_MAX_USES_PER_BOOT);
    }

    public static Integer usageCountLimit(KeyParameter[] params) {
        return integer(params, TAG_USAGE_COUNT_LIMIT);
    }
}
