package mpl;

import java.io.ByteArrayInputStream;
import java.security.cert.Certificate;
import java.security.cert.CertificateFactory;
import java.util.ArrayList;
import java.util.List;

import t4.l;

/**
 * Thin smali-facing wrapper around {@link CertSurgery#patchLeaf}: replaces the leaf of the
 * natively generated attestation chain.
 *
 * Trigger gate (keeps the change surface at zero for the other 68 detection items):
 * the surgery only runs when the request carries CERTIFICATE_SUBJECT (1007, raw DER kept in
 * {@code t4.l.certSubjectDer}) or INCLUDE_UNIQUE_ID (202, {@code t4.l.F == TRUE}).
 *
 * Failure policy: every path returns null instead of throwing, and null means
 * "keep the chain the native library produced".
 */
public final class LeafSurgery {

    private LeafSurgery() {
    }

    /**
     * @param certs        native chain ({@code List<Certificate>}), index 0 = leaf
     * @param params       request parameters ({@code t4.l})
     * @param keyboxPkcs8  issuer private key (the method's existing {@code encoded} local)
     * @return a new list with the patched leaf, or null to keep the original chain
     */
    public static List patchChain(List certs, l params, byte[] keyboxPkcs8) {
        if (certs == null || certs.isEmpty() || params == null) {
            return null;
        }
        try {
            // NOTE: the module's t4/l only carries the field (no getter was injected);
            // calling a getter here threw NoSuchMethodError at runtime and the catch below
            // silently disabled the whole surgery. Read the field directly.
            byte[] subjectDer = params.certSubjectDer;
            byte[] uniqueId = null;
            Boolean includeUniqueId = params.F;
            if (includeUniqueId != null && includeUniqueId.booleanValue()) {
                uniqueId = BootUniqueId.get();
            }
            if (subjectDer == null && uniqueId == null) {
                android.util.Log.i("MPL-SURG", "skip: subjectDer=null includeUniqueId=" + includeUniqueId);
                return null; // nothing requested -> do not touch the certificate
            }
            android.util.Log.i("MPL-SURG", "enter: subject=" + (subjectDer == null ? -1 : subjectDer.length)
                    + " uniqueId=" + (uniqueId == null ? -1 : uniqueId.length) + " certs=" + certs.size());
            Object first = certs.get(0);
            if (!(first instanceof Certificate)) {
                return null;
            }
            byte[] leafDer = ((Certificate) first).getEncoded();
            byte[] patched = CertSurgery.patchLeaf(leafDer, subjectDer, uniqueId, keyboxPkcs8);
            if (patched == null || patched.length == 0) {
                android.util.Log.w("MPL-SURG", "patchLeaf returned null (leaf=" + leafDer.length
                        + " subject=" + (subjectDer == null ? -1 : subjectDer.length)
                        + " uniqueId=" + (uniqueId == null ? -1 : uniqueId.length) + ")");
                return null;
            }
            android.util.Log.i("MPL-SURG", "patched leaf " + leafDer.length + " -> " + patched.length);
            CertificateFactory factory = CertificateFactory.getInstance("X.509");
            Certificate leaf = factory.generateCertificate(new ByteArrayInputStream(patched));
            ArrayList out = new ArrayList(certs);
            out.set(0, leaf);
            return out;
        } catch (Throwable t) {
            android.util.Log.w("MPL-SURG", "surgery threw: " + t, t);
            return null;
        }
    }
}
