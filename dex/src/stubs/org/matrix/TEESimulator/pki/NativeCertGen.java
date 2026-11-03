package org.matrix.TEESimulator.pki;

/**
 * COMPILE-TIME STUB ONLY (never dexed, never shipped).
 *
 * <p>Mirrors the real class in the module's own {@code classes.dex}
 * ({@code org.matrix.TEESimulator.pki.NativeCertGen}), which is on the runtime classpath of
 * the daemon and of the injected process, so the dex compiled against this stub links to the
 * genuine implementation at run time.</p>
 *
 * <p>Signature source: {@code smali_tree/org/matrix/TEESimulator/pki/NativeCertGen.smali}
 * (p16 tree). Only the three members used by {@link mpl.SoterIdentity} are declared.</p>
 */
public final class NativeCertGen {

    /** Real field is a static singleton; the value is irrelevant at compile time. */
    public static final NativeCertGen INSTANCE = null;

    private NativeCertGen() {
    }

    /** Loads libcertgen.so and enables native logging (called once by the daemon). */
    public final void initialize(String libraryPath) {
        throw new UnsupportedOperationException("stub");
    }

    /** True once {@link #initialize} succeeded. */
    public final boolean isAvailable() {
        throw new UnsupportedOperationException("stub");
    }

    /**
     * Generates a key pair plus its attestation certificate chain.
     *
     * @return the native blob ({@code BE32 privLen || PKCS8 || BE32 certCount ||
     *         (BE32 certLen || DER)*}) or null on failure
     */
    public final native byte[] generateAttestedKeyPair(CertGenConfig config);
}
