package y4;

/**
 * COMPILE-TIME STUB ONLY (never dexed, never shipped).
 *
 * <p>Mirrors the module's {@code y4.e} keybox repository. {@code a(String)} loads
 * {@code /data/adb/tricky_store/<name>} and returns the "EC" entry, or the first entry when
 * the keybox has no EC key, or null when the file is missing/unparsable. That is exactly the
 * behaviour {@code mpl.SoterIdentity} relies on to obtain the attestation issuer key.</p>
 */
public abstract class e {

    public static d a(String keyboxName) {
        throw new UnsupportedOperationException("stub");
    }
}
