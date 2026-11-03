package mpl;

import java.security.KeyFactory;
import java.security.PrivateKey;
import java.security.Signature;
import java.security.spec.PKCS8EncodedKeySpec;
import java.util.Arrays;

/**
 * In-place X.509 "surgery" for a KeyMint attestation leaf certificate that was
 * produced by a native encoder.
 *
 * <p>Two fields are rewritten and the TBSCertificate is re-signed with the
 * keybox / attestation private key:</p>
 * <ol>
 *   <li><b>subject</b> &mdash; the caller-supplied Subject Name DER is spliced in
 *       verbatim, so the encoded DN (including RDN order) is preserved exactly.
 *       Nothing is re-encoded from a textual DN.</li>
 *   <li><b>the KeyMint KeyDescription {@code uniqueId}</b> &mdash; field index 5 of
 *       the {@code 1.3.6.1.4.1.11129.2.1.17} extension is replaced with a 32-byte
 *       value.</li>
 * </ol>
 *
 * <p>Only the length headers on the ancestor chain of a replaced node are
 * re-encoded. Every other TLV in the certificate is copied through byte for byte;
 * ASN.1 content is never reordered, canonicalized or re-tagged.</p>
 *
 * <p>Failure policy: {@link #patchLeaf} never throws. Any structural or
 * cryptographic problem yields {@code null} so the caller can keep the original
 * certificate. The input array is never modified.</p>
 *
 * <p>Dependencies: {@code java.*}, {@code java.security}, {@code javax.crypto}
 * only. Java 8 syntax, no lambdas, no {@code java.nio.file}. Suitable for an
 * Android app_process (API 36) host; ECDSA signatures from JCA are already DER
 * {@code SEQUENCE { r, s }}, which is exactly what a BIT STRING payload needs.</p>
 */
public final class CertSurgery {

    private CertSurgery() {
    }

    // ----------------------------------------------------------------
    // Constants
    // ----------------------------------------------------------------

    /** OID 1.3.6.1.4.1.11129.2.1.17 (KeyMint / Keymaster attestation). */
    private static final byte[] OID_ATTESTATION = {
        0x2B, 0x06, 0x01, 0x04, 0x01, (byte) 0xD6, 0x79, 0x02, 0x01, 0x11
    };

    /** AlgorithmIdentifier ::= SEQUENCE { OID ecdsa-with-SHA256 } (no parameters). */
    private static final byte[] ALGORITHM_ECDSA_SHA256 = {
        0x30, 0x0A,
        0x06, 0x08,
        0x2A, (byte) 0x86, 0x48, (byte) 0xCE, 0x3D, 0x04, 0x03, 0x02
    };

    /** AlgorithmIdentifier ::= SEQUENCE { OID sha256WithRSAEncryption, NULL }. */
    private static final byte[] ALGORITHM_RSA_SHA256 = {
        0x30, 0x0D,
        0x06, 0x09,
        0x2A, (byte) 0x86, 0x48, (byte) 0x86, (byte) 0xF7, 0x0D, 0x01, 0x01, 0x0B,
        0x05, 0x00
    };

    private static final String OID_ECDSA_WITH_SHA256 = "1.2.840.10045.4.3.2";
    private static final String OID_SHA256_WITH_RSA = "1.2.840.113549.1.1.11";

    /** ECDSA signature algorithm OIDs (we emit SHA-256, all of these are the same family). */
    private static final String[] ECDSA_FAMILY = {
        "1.2.840.10045.4.1",     // ecdsa-with-SHA1
        "1.2.840.10045.4.3.1",   // ecdsa-with-SHA224
        "1.2.840.10045.4.3.2",   // ecdsa-with-SHA256
        "1.2.840.10045.4.3.3",   // ecdsa-with-SHA384
        "1.2.840.10045.4.3.4"    // ecdsa-with-SHA512
    };

    /** RSASSA-PKCS1-v1_5 signature algorithm OIDs. */
    private static final String[] RSA_PKCS1_FAMILY = {
        "1.2.840.113549.1.1.5",   // sha1WithRSAEncryption
        "1.2.840.113549.1.1.11",  // sha256WithRSAEncryption
        "1.2.840.113549.1.1.12",  // sha384WithRSAEncryption
        "1.2.840.113549.1.1.13",  // sha512WithRSAEncryption
        "1.2.840.113549.1.1.14"   // sha224WithRSAEncryption
    };

    /** KeyDescription.uniqueId is index 5 (0-based) per the KeyMint schema. */
    private static final int FIELD_UNIQUE_ID = 5;
    /** KeyDescription has exactly 8 fields; anything else is not a KeyDescription. */
    private static final int KEY_DESCRIPTION_FIELDS = 8;
    private static final int UNIQUE_ID_BYTES = 32;

    // ----------------------------------------------------------------
    // Public API
    // ----------------------------------------------------------------

    /**
     * Rewrites the subject and/or the KeyDescription uniqueId of an attestation leaf
     * certificate and re-signs the TBSCertificate.
     *
     * @param leafDer              leaf certificate DER as produced by the native generator
     * @param subjectDer           target Subject Name DER ({@code SEQUENCE}), or null to keep
     * @param uniqueId             exactly 32 bytes to store in KeyDescription index 5, or null to keep
     * @param issuerPrivateKeyPkcs8 keybox / attestation private key in PKCS#8 (EC or RSA)
     * @return the rewritten certificate DER, or null on any failure; when both
     *         {@code subjectDer} and {@code uniqueId} are null the input array is
     *         returned unchanged
     */
    public static byte[] patchLeaf(byte[] leafDer,
                                   byte[] subjectDer,
                                   byte[] uniqueId,
                                   byte[] issuerPrivateKeyPkcs8) {
        try {
            return patch(leafDer, subjectDer, uniqueId, issuerPrivateKeyPkcs8);
        } catch (Exception e) {
            // Contract: every failure (bad DER, wrong key type, JCA refusal, ...)
            // becomes null instead of an exception thrown into the caller.
            return null;
        }
    }

    // ----------------------------------------------------------------
    // Implementation
    // ----------------------------------------------------------------

    private static byte[] patch(byte[] leafDer,
                                byte[] subjectDer,
                                byte[] uniqueId,
                                byte[] issuerPrivateKeyPkcs8) throws Exception {
        if (leafDer == null || leafDer.length == 0) {
            return null;
        }
        // Nothing to do: honor "return leafDer unchanged" literally (same array).
        if (subjectDer == null && uniqueId == null) {
            return leafDer;
        }
        if (issuerPrivateKeyPkcs8 == null || issuerPrivateKeyPkcs8.length == 0) {
            return null;
        }
        if (uniqueId != null && uniqueId.length != UNIQUE_ID_BYTES) {
            return null;
        }

        SigningKey signingKey = resolveSigningKey(issuerPrivateKeyPkcs8);
        if (signingKey == null) {
            return null;
        }

        Der.Node certificate = Der.parse(leafDer);
        if (certificate.tag() != Der.TAG_SEQUENCE || certificate.childCount() != 3) {
            return null;
        }
        Der.Node tbs = certificate.child(0);
        Der.Node outerAlgorithm = certificate.child(1);
        Der.Node outerSignature = certificate.child(2);
        if (tbs.tag() != Der.TAG_SEQUENCE
                || outerAlgorithm.tag() != Der.TAG_SEQUENCE
                || outerSignature.tag() != Der.TAG_BIT_STRING
                || outerSignature.isConstructed()
                || outerSignature.valueLength() < 1) {
            return null;
        }

        // TBSCertificate ::= SEQUENCE {
        //   [0] EXPLICIT version OPTIONAL, serialNumber, signature, issuer,
        //   validity, subject, subjectPublicKeyInfo, [1], [2], [3] }
        int index = 0;
        if (tbs.childCount() > 0 && (tbs.child(0).tag() & 0xFF) == 0xA0) {
            index = 1;
        }
        int serialIndex = index;
        int signatureIndex = index + 1;
        int issuerIndex = index + 2;
        int validityIndex = index + 3;
        int subjectIndex = index + 4;
        int spkiIndex = index + 5;
        if (tbs.childCount() <= spkiIndex) {
            return null;
        }
        if (tbs.child(serialIndex).tag() != Der.TAG_INTEGER
                || tbs.child(signatureIndex).tag() != Der.TAG_SEQUENCE
                || tbs.child(issuerIndex).tag() != Der.TAG_SEQUENCE
                || tbs.child(validityIndex).tag() != Der.TAG_SEQUENCE
                || tbs.child(subjectIndex).tag() != Der.TAG_SEQUENCE
                || tbs.child(spkiIndex).tag() != Der.TAG_SEQUENCE) {
            return null;
        }

        Der.Node tbsAlgorithm = tbs.child(signatureIndex);
        if (tbsAlgorithm.childCount() < 1 || outerAlgorithm.childCount() < 1) {
            return null;
        }
        String tbsOid = tbsAlgorithm.child(0).oid();
        String outerOid = outerAlgorithm.child(0).oid();
        if (tbsOid == null || outerOid == null) {
            return null;
        }

        // The signature we can produce must be describable by this certificate. A key
        // of the wrong family (EC key vs RSA certificate or vice versa) cannot be
        // reconciled, so fail closed. Same-family hash differences are reconciled by
        // rewriting both AlgorithmIdentifier encodings to the SHA-256 OID.
        if (signingKey.rsa) {
            if (!contains(RSA_PKCS1_FAMILY, tbsOid)) {
                return null;
            }
        } else if (!contains(ECDSA_FAMILY, tbsOid)) {
            return null;
        }
        boolean rewriteAlgorithm = !signingKey.oid.equals(tbsOid) || !signingKey.oid.equals(outerOid);

        // --- subject surgery (verbatim splice; no DN parsing) ---
        if (subjectDer != null) {
            Der.Node newSubject = Der.parse(subjectDer);
            if (newSubject.tag() != Der.TAG_SEQUENCE) {
                return null;
            }
            tbs.replaceChild(subjectIndex, newSubject);
        }

        // --- uniqueId surgery inside the KeyMint attestation extension ---
        if (uniqueId != null) {
            if (!injectUniqueId(tbs, uniqueId)) {
                return null;
            }
        }

        // --- keep both AlgorithmIdentifier encodings consistent with the signing key ---
        if (rewriteAlgorithm) {
            tbs.replaceChild(signatureIndex, Der.parse(signingKey.algorithmIdentifier));
            certificate.replaceChild(1, Der.parse(signingKey.algorithmIdentifier));
        }

        // --- re-sign the (now modified) TBSCertificate ---
        byte[] tbsBytes = tbs.serialize();
        Signature signer = Signature.getInstance(signingKey.jcaName);
        signer.initSign(signingKey.key);
        signer.update(tbsBytes);
        byte[] signature = signer.sign();
        if (signature == null || signature.length == 0) {
            return null;
        }

        certificate.replaceChild(0, tbs);
        certificate.replaceChild(2, Der.parse(Der.bitString(signature)));
        return certificate.serialize();
    }

    /** Picks the JCA signature algorithm and the matching AlgorithmIdentifier. */
    private static SigningKey resolveSigningKey(byte[] pkcs8) {
        PKCS8EncodedKeySpec spec = new PKCS8EncodedKeySpec(pkcs8);
        try {
            PrivateKey ec = KeyFactory.getInstance("EC").generatePrivate(spec);
            if (ec != null) {
                return new SigningKey(ec, false, "SHA256withECDSA",
                        OID_ECDSA_WITH_SHA256, ALGORITHM_ECDSA_SHA256);
            }
        } catch (Exception ignored) {
            // not an EC key; fall through to RSA
        }
        try {
            PrivateKey rsa = KeyFactory.getInstance("RSA").generatePrivate(spec);
            if (rsa != null) {
                return new SigningKey(rsa, true, "SHA256withRSA",
                        OID_SHA256_WITH_RSA, ALGORITHM_RSA_SHA256);
            }
        } catch (Exception ignored) {
            // not an RSA key either
        }
        return null;
    }

    /**
     * Writes {@code uniqueId} into field 5 of the KeyMint KeyDescription carried by
     * the attestation extension.
     *
     * @return false when the extension or the expected structure is missing
     */
    private static boolean injectUniqueId(Der.Node tbs, byte[] uniqueId) {
        Der.Node extension = findAttestationExtension(tbs);
        if (extension == null) {
            return false;
        }
        // Extension ::= SEQUENCE { extnID, critical OPTIONAL, extnValue OCTET STRING }
        Der.Node extnValue = extension.child(extension.childCount() - 1);
        if (extnValue.tag() != Der.TAG_OCTET_STRING || extnValue.isConstructed()) {
            return false;
        }
        byte[] keyDescriptionBytes = extnValue.value();
        Der.Node keyDescription = Der.parse(keyDescriptionBytes);
        if (keyDescription.tag() != Der.TAG_SEQUENCE
                || keyDescription.childCount() != KEY_DESCRIPTION_FIELDS) {
            return false;
        }
        Der.Node uniqueIdNode = keyDescription.child(FIELD_UNIQUE_ID);
        if (uniqueIdNode.tag() != Der.TAG_OCTET_STRING || uniqueIdNode.isConstructed()) {
            return false;
        }
        uniqueIdNode.setValue(uniqueId);
        // Re-encoding the KeyDescription only touches this OCTET STRING and the
        // KeyDescription header; the challenge and both AuthorizationLists are
        // copied through untouched.
        extnValue.setValue(keyDescription.serialize());
        return true;
    }

    /** Finds the KeyDescription extension inside the [3] EXPLICIT extensions field. */
    private static Der.Node findAttestationExtension(Der.Node tbs) {
        for (int i = 0; i < tbs.childCount(); i++) {
            Der.Node field = tbs.child(i);
            if ((field.tag() & 0xFF) != 0xA3) {
                continue;
            }
            if (field.childCount() != 1) {
                return null;
            }
            Der.Node extensions = field.child(0);
            if (extensions.tag() != Der.TAG_SEQUENCE) {
                return null;
            }
            for (int j = 0; j < extensions.childCount(); j++) {
                Der.Node extension = extensions.child(j);
                if (extension.tag() != Der.TAG_SEQUENCE || extension.childCount() < 2) {
                    continue;
                }
                String oid = extension.child(0).oid();
                if (oid != null && oid.equals("1.3.6.1.4.1.11129.2.1.17")) {
                    return extension;
                }
            }
        }
        return null;
    }

    private static boolean contains(String[] values, String candidate) {
        for (int i = 0; i < values.length; i++) {
            if (values[i].equals(candidate)) {
                return true;
            }
        }
        return false;
    }

    /** Small holder so unpacking the key stays allocation-cheap and readable. */
    private static final class SigningKey {
        final PrivateKey key;
        final boolean rsa;
        final String jcaName;
        final String oid;
        final byte[] algorithmIdentifier;

        SigningKey(PrivateKey key, boolean rsa, String jcaName, String oid, byte[] algorithmIdentifier) {
            this.key = key;
            this.rsa = rsa;
            this.jcaName = jcaName;
            this.oid = oid;
            this.algorithmIdentifier = algorithmIdentifier;
        }
    }

    // Kept for the sanity of callers that check the OID constants themselves.
    static boolean isAttestationOid(byte[] oidContent) {
        return oidContent != null && Arrays.equals(oidContent, OID_ATTESTATION);
    }
}
