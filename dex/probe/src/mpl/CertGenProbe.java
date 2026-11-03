package mpl;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ByteArrayInputStream;
import java.security.KeyFactory;
import java.security.Signature;
import java.security.cert.Certificate;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.security.spec.PKCS8EncodedKeySpec;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;

/**
 * On-device capability probe for the p16r "certs" lane (root, app_process -Xverify:all).
 *
 * <p>It answers, with device evidence rather than static reading:</p>
 * <ol>
 *   <li>does {@code NativeCertGen.generateAttestedKeyPair()} hand back a <b>usable private
 *       key</b> (the module's {@code parseNativeResult} builds a {@code KeyPair} from a PKCS#8
 *       blob but the probe proves it by signing with it and verifying against the leaf);</li>
 *   <li>how many certificates the chain has and in which encoding they come back;</li>
 *   <li>whether the {@code attestationChallenge} we pass lands verbatim inside the leaf's
 *       {@code 1.3.6.1.4.1.11129.2.1.17} extension (the KeyDescription the Soter SDK greps);</li>
 *   <li>whether the identity survives a second {@code ensureRootIdentities()} call (persistence),
 *       and that a second generation attempt is not silently minting new keys.</li>
 * </ol>
 *
 * <p>Run as root because it reads the module's keybox and writes
 * {@code /data/adb/tricky_store/soter_identity}:</p>
 * <pre>
 * su -c 'cd /data/adb/modules/tricky_store &amp;&amp; MPL_SOTER_IDENTITY_DIR=/data/local/tmp/soter_identity \
 *   MPL_SOTER_CERTS=on /system/bin/app_process -Xverify:all \
 *   -Djava.class.path=/data/local/tmp/p16r.dex:/data/local/tmp/probe_r.dex \
 *   /data/local/tmp mpl.CertGenProbe'
 * </pre>
 */
public final class CertGenProbe {

    private static final String TAG = "CERTPROBE";
    private static final StringBuilder trail = new StringBuilder(16384);
    private static final String DONE = "/data/local/tmp/mpl_certprobe.txt";

    private CertGenProbe() {
    }

    private static void log(String message) {
        trail.append(message).append('\n');
        try {
            android.util.Log.i(TAG, message);
        } catch (Throwable ignored) {
            // logging must never fail the probe
        }
    }

    public static void main(String[] args) {
        String dir = arg(args, 0, "/data/local/tmp/soter_identity");
        String out = arg(args, 1, "/data/local/tmp/soter_probe_out");
        String cpu = arg(args, 2, null);
        if (cpu == null) {
            // Whatever the forge would report, so the certificate challenge and the JSON
            // cannot disagree (the daemon does exactly this via SoterInjector).
            cpu = mpl.SoterForge.cpuIdForIdentity();
        }
        log("probe dir=" + dir + " out=" + out + " cpu=" + cpu);
        log("env MPL_SOTER_IDENTITY_DIR=" + System.getenv("MPL_SOTER_IDENTITY_DIR")
                + " MPL_SOTER_CERTS=" + System.getenv("MPL_SOTER_CERTS"));
        // The daemon's App.main does this; a bare app_process run has to do it itself,
        // otherwise SoterIdentity sees isAvailable()=false and silently takes the
        // self-signed fallback (which is a valid test, just not the one we want first).
        initNative(arg(args, 3, "/data/adb/modules/tricky_store/libcertgen.so"));
        // Capability matrix: the SAME challenge handed to libcertgen for an EC and for an RSA
        // subject key, so "can native do our (RSA) identity" is answered by the library itself.
        String matrix = out + "/native";
        log("native matrix EC  (alg=3,k=256): " + SoterIdentity.nativeProbe(3, 256, 1, "ECASK", cpu, matrix));
        log("native matrix RSA (alg=1,k=2048): " + SoterIdentity.nativeProbe(1, 2048, -1, "ASK", cpu, matrix));
        try {
            log("certsEnabled=" + SoterIdentity.certsEnabled()
                    + " rootSwitchOn=" + SoterIdentity.rootSwitchOn());
            String first = SoterIdentity.ensureRootIdentities(cpu);
            log("generate#1 " + first);
            String second = SoterIdentity.ensureRootIdentities(cpu);
            log("generate#2 " + second);
            log("stable=" + second.contains("kept") + " (identity reused, keys not rotated)");
            File directory = new File(dir);
            for (int i = 0; i < SoterIdentity.FILES.length; i++) {
                File file = new File(directory, SoterIdentity.FILES[i]);
                log("file " + SoterIdentity.FILES[i] + " exists=" + file.isFile()
                        + " len=" + file.length() + " r=" + file.canRead());
            }
            dumpRole(directory, "ask", "ASK", cpu);
            dumpRole(directory, "auth", "AUTH", cpu);
            File nativeDir = new File(matrix);
            if (new File(nativeDir, "native_alg3.crt").isFile()) {
                dumpRole(nativeDir, "native_alg3", "NATIVE-EC", cpu);
            }
            File outDir = new File(out);
            if (!outDir.isDirectory()) {
                outDir.mkdirs();
            }
            // The PEM/keys already live in `dir`; copying them out keeps the openssl side
            // independent of the identity directory's permissions.
            copy(new File(directory, "ask.crt"), new File(outDir, "ask.crt.pem"));
            copy(new File(directory, "auth.crt"), new File(outDir, "auth.crt.pem"));
            copy(new File(directory, "ask.key"), new File(outDir, "ask.key.pk8"));
            copy(new File(directory, "auth.key"), new File(outDir, "auth.key.pk8"));
            log("dump written to " + outDir.getAbsolutePath());
        } catch (Throwable t) {
            log("PROBE FAILED: " + t);
            t.printStackTrace();
        }
        markDone();
    }

    /** Reflection keeps the probe independent of the module's build-time class layout. */
    private static void initNative(String lib) {
        try {
            Class<?> type = Class.forName("org.matrix.TEESimulator.pki.NativeCertGen");
            Object instance = type.getField("INSTANCE").get(null);
            type.getMethod("initialize", String.class).invoke(instance, lib);
            Object available = type.getMethod("isAvailable").invoke(instance);
            log("native initialize(" + lib + ") ok isAvailable=" + available);
        } catch (Throwable t) {
            log("native initialize failed: " + t);
        }
    }

    private static void dumpRole(File dir, String base, String kind, String cpu) {
        try {
            File keyFile = new File(dir, base + ".key");
            File crtFile = new File(dir, base + ".crt");
            byte[] pkcs8 = read(keyFile);
            String privateLine = "private key: ";
            java.security.PrivateKey privateKey = null;
            try {
                privateKey = KeyFactory.getInstance("RSA")
                        .generatePrivate(new PKCS8EncodedKeySpec(pkcs8));
                privateLine += "present RSA/" + ((java.security.interfaces.RSAPrivateKey) privateKey)
                        .getModulus().bitLength() + " bits pkcs8=" + pkcs8.length + "B";
            } catch (Throwable t) {
                privateLine += "RSA parse failed: " + t;
                try {
                    privateKey = KeyFactory.getInstance("EC")
                            .generatePrivate(new PKCS8EncodedKeySpec(pkcs8));
                    privateLine += " (EC instead)";
                } catch (Throwable ignored) {
                    privateLine += " (EC parse failed too)";
                }
            }
            log("[" + kind + "] " + privateLine);

            String text = new String(read(crtFile), "UTF-8");
            ArrayList ders = derBlocks(text);
            log("[" + kind + "] chain segments=" + ders.size()
                    + " pem_begin=" + text.startsWith("-----BEGIN CERTIFICATE-----")
                    + " crt_bytes=" + crtFile.length());
            CertificateFactory factory = CertificateFactory.getInstance("X.509");
            X509Certificate[] chain = new X509Certificate[ders.size()];
            for (int i = 0; i < ders.size(); i++) {
                Certificate cert = factory.generateCertificate(
                        new ByteArrayInputStream((byte[]) ders.get(i)));
                chain[i] = (X509Certificate) cert;
                log("[" + kind + "] cert[" + i + "] der=" + ((byte[]) ders.get(i)).length + "B"
                        + " subj=" + chain[i].getSubjectX500Principal().getName()
                        + " issuer=" + chain[i].getIssuerX500Principal().getName()
                        + " sigalg=" + chain[i].getSigAlgName()
                        + " key=" + chain[i].getPublicKey().getAlgorithm()
                        + "/" + keyBits(chain[i])
                        + " pemDecode=" + pemDecodes(factory, (byte[]) ders.get(i)));
            }
            for (int i = 0; i + 1 < chain.length; i++) {
                boolean ok = verifies(chain[i], chain[i + 1]);
                log("[" + kind + "] verify cert[" + i + "]<-cert[" + (i + 1) + "]=" + ok);
            }
            if (chain.length > 0 && privateKey != null) {
                boolean rsaKey = chain[0].getPublicKey().getAlgorithm().toUpperCase()
                        .contains("RSA");
                String jca = rsaKey ? "SHA256withRSA" : "SHA256withECDSA";
                byte[] payload = "certgen-probe".getBytes("UTF-8");
                Signature signer = Signature.getInstance(jca);
                signer.initSign(privateKey);
                signer.update(payload);
                byte[] signature = signer.sign();
                Signature verifier = Signature.getInstance(jca);
                verifier.initVerify(chain[0].getPublicKey());
                verifier.update(payload);
                log("[" + kind + "] private key signs for cert[0] public key: "
                        + verifier.verify(signature));
            }
            extensions(chain.length > 0 ? chain[0] : null, kind, cpu);
        } catch (Throwable t) {
            log("[" + kind + "] dump failed: " + t);
        }
    }

    private static String keyBits(X509Certificate cert) {
        try {
            java.security.PublicKey key = cert.getPublicKey();
            if (key instanceof java.security.interfaces.RSAPublicKey) {
                return ((java.security.interfaces.RSAPublicKey) key).getModulus().bitLength() + "";
            }
            if (key instanceof java.security.interfaces.ECPublicKey) {
                return ((java.security.interfaces.ECPublicKey) key).getParams().getCurve()
                        .getField().getFieldSize() + "";
            }
        } catch (Throwable ignored) {
            // unknown
        }
        return "?";
    }

    private static void extensions(X509Certificate leaf, String kind, String cpu) {
        if (leaf == null) {
            return;
        }
        Set critical = leaf.getCriticalExtensionOIDs();
        Set nonCritical = leaf.getNonCriticalExtensionOIDs();
        log("[" + kind + "] extensions critical=" + names(critical)
                + " nonCritical=" + names(nonCritical));
        byte[] value = leaf.getExtensionValue(SoterIdentity.OID_ATTESTATION);
        log("[" + kind + "] attestation ext " + SoterIdentity.OID_ATTESTATION
                + " present=" + (value != null) + " len=" + (value == null ? -1 : value.length));
        if (value == null) {
            return;
        }
        int first = -1;
        int last = -1;
        for (int i = 0; i < value.length; i++) {
            if (value[i] == (byte) '{' && first < 0) {
                first = i;
            }
            if (value[i] == (byte) '}') {
                last = i;
            }
        }
        log("[" + kind + "] ext first '{'=" + first + " last '}'=" + last
                + " (CertUtil requires 0<first<last)");
        if (first > 0 && last > first) {
            try {
                String json = new String(value, first, last - first + 1, "UTF-8");
                log("[" + kind + "] challenge json in ext = " + json);
                log("[" + kind + "] challenge matches SoterIdentity.challenge(cpu)="
                        + json.equals(SoterIdentity.challenge(cpu)));
            } catch (Throwable t) {
                log("[" + kind + "] ext json decode failed: " + t);
            }
        }
        // The extension is a DER OCTET STRING wrapping the KeyDescription; dump the nesting
        // so the "8-field KeyDescription" claim is evidence, not folklore.
        byte[] inner = value;
        if (value.length > 2 && value[0] == 0x04) {
            int header = 2;
            int length = value[1] & 0xFF;
            if ((value[1] & 0x80) != 0) {
                int bytes = value[1] & 0x7F;
                header = 2 + bytes;
                length = 0;
                for (int i = 0; i < bytes; i++) {
                    length = (length << 8) | (value[2 + i] & 0xFF);
                }
            }
            if (header + length <= value.length) {
                inner = new byte[length];
                System.arraycopy(value, header, inner, 0, length);
            }
        }
        log("[" + kind + "] KeyDescription TLV:");
        dumpTlv(inner, 0, 3);
    }

    private static final int TLV_LINE_BUDGET = 400;

    private static int tlvLines;

    private static void dumpTlv(byte[] data, int offset, int depth) {
        dumpTlv(data, offset, data.length, depth);
    }

    private static void dumpTlv(byte[] data, int offset, int end, int depth) {
        try {
            int at = offset;
            while (at < end && at < data.length) {
                if (tlvLines++ > TLV_LINE_BUDGET) {
                    if (tlvLines == TLV_LINE_BUDGET + 1) {
                        log("  ... TLV dump truncated at " + TLV_LINE_BUDGET + " lines");
                    }
                    return;
                }
                int tag = data[at] & 0xFF;
                int tagLength = 1;
                if ((tag & 0x1F) == 0x1F) {
                    // high-tag-number form: continuation bytes until one has bit 8 clear
                    while (at + tagLength < end
                            && (data[at + tagLength] & 0x80) != 0) {
                        tagLength++;
                    }
                    tagLength++;
                }
                int lengthAt = at + tagLength;
                if (lengthAt >= end) {
                    return;
                }
                int length = data[lengthAt] & 0xFF;
                int header = tagLength + 1;
                if ((length & 0x80) != 0) {
                    int bytes = length & 0x7F;
                    header = tagLength + 1 + bytes;
                    if (lengthAt + 1 + bytes > end) {
                        return;
                    }
                    length = 0;
                    for (int k = 0; k < bytes; k++) {
                        length = (length << 8) | (data[lengthAt + 1 + k] & 0xFF);
                    }
                }
                int valueAt = at + header;
                StringBuilder sb = new StringBuilder();
                for (int k = 0; k < depth; k++) {
                    sb.append(' ');
                }
                sb.append("tag=").append(tagHex(data, at, tagLength))
                        .append(" len=").append(length);
                if (valueAt < at || valueAt + length > end) {
                    sb.append(" (truncated)");
                    log(sb.toString());
                    return;
                }
                if ((tag & 0x20) != 0) {
                    log(sb.toString());
                    dumpTlv(data, valueAt, valueAt + length, depth + 2);
                } else {
                    sb.append(" preview=").append(preview(data, valueAt, length));
                    log(sb.toString());
                }
                at = valueAt + length;
            }
        } catch (Throwable t) {
            log("dumpTlv failed: " + t);
        }
    }

    private static String tagHex(byte[] data, int at, int tagLength) {
        StringBuilder sb = new StringBuilder("0x");
        for (int i = 0; i < tagLength; i++) {
            int b = data[at + i] & 0xFF;
            if (b < 16) {
                sb.append('0');
            }
            sb.append(Integer.toHexString(b));
        }
        return sb.toString();
    }

    private static String preview(byte[] data, int at, int length) {
        StringBuilder sb = new StringBuilder();
        int limit = Math.min(length, 48);
        boolean printable = true;
        for (int i = 0; i < limit; i++) {
            int b = data[at + i] & 0xFF;
            if (b < 0x20 || b > 0x7E) {
                printable = false;
                break;
            }
        }
        if (printable) {
            sb.append('"');
            for (int i = 0; i < limit; i++) {
                sb.append((char) (data[at + i] & 0xFF));
            }
            sb.append('"');
        } else {
            for (int i = 0; i < limit; i++) {
                int b = data[at + i] & 0xFF;
                if (b < 16) {
                    sb.append('0');
                }
                sb.append(Integer.toHexString(b));
            }
        }
        if (length > limit) {
            sb.append("...");
        }
        return sb.toString();
    }

    private static String names(Set set) {
        if (set == null) {
            return "[]";
        }
        StringBuilder sb = new StringBuilder("[");
        Iterator it = set.iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            if (it.hasNext()) {
                sb.append(',');
            }
        }
        return sb.append(']').toString();
    }

    private static boolean verifies(X509Certificate cert, X509Certificate issuer) {
        try {
            cert.verify(issuer.getPublicKey());
            return true;
        } catch (Throwable t) {
            return false;
        }
    }

    private static boolean pemDecodes(CertificateFactory factory, byte[] der) {
        try {
            String pem = SoterIdentity.pem(der);
            Certificate parsed = factory.generateCertificate(
                    new ByteArrayInputStream(pem.getBytes("UTF-8")));
            return parsed != null;
        } catch (Throwable t) {
            return false;
        }
    }

    private static ArrayList derBlocks(String pem) {
        ArrayList out = new ArrayList();
        String begin = "-----BEGIN CERTIFICATE-----";
        String end = "-----END CERTIFICATE-----";
        int at = 0;
        while (true) {
            int start = pem.indexOf(begin, at);
            if (start < 0) {
                break;
            }
            int stop = pem.indexOf(end, start);
            if (stop < 0) {
                break;
            }
            StringBuilder body = new StringBuilder();
            String slice = pem.substring(start + begin.length(), stop);
            for (int i = 0; i < slice.length(); i++) {
                char c = slice.charAt(i);
                if (c != '\n' && c != '\r' && c != ' ') {
                    body.append(c);
                }
            }
            try {
                out.add(android.util.Base64.decode(body.toString(),
                        android.util.Base64.DEFAULT));
            } catch (Throwable ignored) {
                // skip a bad block
            }
            at = stop + end.length();
        }
        return out;
    }

    private static byte[] read(File file) throws IOException {
        java.io.FileInputStream in = new java.io.FileInputStream(file);
        try {
            byte[] data = new byte[(int) file.length()];
            int at = 0;
            while (at < data.length) {
                int n = in.read(data, at, data.length - at);
                if (n <= 0) {
                    break;
                }
                at += n;
            }
            return data;
        } finally {
            in.close();
        }
    }

    private static void copy(File from, File to) {
        try {
            byte[] data = read(from);
            FileOutputStream out = new FileOutputStream(to, false);
            try {
                out.write(data);
            } finally {
                out.close();
            }
        } catch (Throwable t) {
            log("copy " + from + " -> " + to + " failed: " + t);
        }
    }

    private static String arg(String[] args, int index, String fallback) {
        return args != null && args.length > index && args[index] != null
                && args[index].length() > 0 ? args[index] : fallback;
    }

    private static void markDone() {
        try {
            FileOutputStream out = new FileOutputStream(DONE, false);
            try {
                out.write(trail.toString().getBytes("UTF-8"));
            } finally {
                out.close();
            }
        } catch (Throwable ignored) {
            // the logcat stream already carried everything
        }
    }
}
