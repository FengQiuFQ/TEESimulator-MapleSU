package mpl;

import java.io.ByteArrayInputStream;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;

import org.json.JSONArray;
import org.json.JSONObject;

/**
 * On-device replica of {@code com.tencent.soter.core.model.SoterPubKeyModel} (Duck Detector's
 * copy, {@code .analysis/duck/duck_src/sources/com/tencent/soter/core/model/SoterPubKeyModel.java})
 * plus {@code CertUtil.extractAttestationSequence}.
 *
 * <p>The replica is deliberately literal - same field defaults, same {@code JSONObject.has}
 * branch, same {@code getBytes()} on the PEM string, same first-{@code {} / last-{@code }}
 * scan, same "override the JSON values with what the certificate says" step - so the report
 * can show what the SDK would really do with the blob this lane produces, not what we hope it
 * does.</p>
 *
 * <p>Run (root or shell, with the product dex on the classpath):</p>
 * <pre>
 * /system/bin/app_process -Xverify:all \
 *   -Djava.class.path=/data/local/tmp/p16r.dex:/data/local/tmp/probe_r.dex \
 *   /data/local/tmp mpl.SoterPubKeyModelProbe ask
 * </pre>
 *
 * <p>Environment: {@code MPL_SOTER_CERTS=on|off} and {@code MPL_SOTER_IDENTITY_DIR=<dir>} are
 * the same hooks {@code mpl.SoterIdentity} uses, so the same binary runs the "certs on" and
 * "certs off" (rollback) case.</p>
 */
public final class SoterPubKeyModelProbe {

    private static final String TAG = "MODELPROBE";
    private static final String KEY_DESCRIPTION_OID = "1.3.6.1.4.1.11129.2.1.17";
    private static final StringBuilder trail = new StringBuilder(8192);
    private static final String DONE = "/data/local/tmp/mpl_modelprobe.txt";

    private SoterPubKeyModelProbe() {
    }

    private static void log(String message) {
        trail.append(message).append('\n');
        try {
            android.util.Log.i(TAG, message);
        } catch (Throwable ignored) {
            // never fail the probe
        }
    }

    // ================================================================== literal replica

    /** Verbatim port of {@code SoterPubKeyModel}'s two fields + certs branch. */
    static final class Model {
        private ArrayList certs;
        private long counter;
        private String cpu_id;
        private String pub_key_in_x509;
        private String rawJson;
        private String signature;
        private int uid;

        Model(String json, String signature) {
            this.counter = -1L;
            this.uid = -1;
            this.cpu_id = "";
            this.pub_key_in_x509 = "";
            this.rawJson = "";
            this.certs = null;
            this.signature = "";
            setRawJson(json);
            try {
                JSONObject object = new JSONObject(json);
                if (object.has("certs")) {
                    JSONArray array = object.optJSONArray("certs");
                    if (array.length() < 2) {
                        log("model: certificates train not enough (" + array.length() + ")");
                    }
                    log("model: certs size: [" + array.length() + "]");
                    this.certs = new ArrayList();
                    for (int i = 0; i < array.length(); i++) {
                        this.certs.add(array.getString(i));
                    }
                    // Exactly the SDK's call: the PEM *string bytes* go to CertificateFactory.
                    loadDeviceInfo((X509Certificate) CertificateFactory.getInstance("X.509")
                            .generateCertificate(new ByteArrayInputStream(
                                    ((String) this.certs.get(0)).getBytes())));
                    object.put("cpu_id", this.cpu_id);
                    object.put("uid", this.uid);
                    object.put("counter", this.counter);
                    setRawJson(object.toString());
                } else {
                    this.counter = object.optLong("counter");
                    this.uid = object.optInt("uid");
                    this.cpu_id = object.optString("cpu_id");
                    this.pub_key_in_x509 = object.optString("pub_key");
                }
            } catch (Exception unused) {
                log("model: soter: pub key model failed");
            }
            this.signature = signature;
        }

        private void loadDeviceInfo(X509Certificate certificate) {
            try {
                extractAttestationSequence(certificate, this);
            } catch (Exception e) {
                log("model: soter: loadDeviceInfo from attestationCert failed" + e);
            }
        }

        void setCounter(long value) {
            this.counter = value;
        }

        void setCpu_id(String value) {
            this.cpu_id = value;
        }

        void setUid(int value) {
            this.uid = value;
        }

        void setRawJson(String value) {
            this.rawJson = value;
        }

        String summary() {
            return "counter=" + counter + " uid=" + uid + " cpu_id=" + cpu_id
                    + " pub_key_in_x509.len=" + (pub_key_in_x509 == null ? -1
                    : pub_key_in_x509.length())
                    + " certs=" + (certs == null ? -1 : certs.size());
        }
    }

    /** Verbatim port of {@code CertUtil.extractAttestationSequence}. */
    static void extractAttestationSequence(X509Certificate certificate, Model model)
            throws Exception {
        byte[] extensionValue = certificate.getExtensionValue(KEY_DESCRIPTION_OID);
        if (extensionValue == null || extensionValue.length == 0) {
            throw new Exception("Couldn't find the keystore attestation extension data.");
        }
        try {
            byte open = "{".getBytes()[0];
            byte close = "}".getBytes()[0];
            int first = 0;
            int last = 0;
            for (int i = 0; i < extensionValue.length; i++) {
                byte b = extensionValue[i];
                if (b == open) {
                    first = i;
                } else if (b == close) {
                    last = i;
                }
            }
            if (first <= 0 || first >= last) {
                log("model: ext scan bailed out first=" + first + " last=" + last);
                return;
            }
            byte[] json = new byte[(last - first) + 1];
            System.arraycopy(extensionValue, first, json, 0, json.length);
            String text = new String(json);
            log("model: soter: challenge json in attestation certificate " + text);
            JSONObject object = new JSONObject(text);
            model.setCpu_id(object.getString("cpu_id"));
            model.setUid(object.getInt("uid"));
            model.setCounter(object.getLong("counter"));
        } catch (Exception e) {
            throw new Exception("Couldn't parse challenge json string in the attestation certificate" + e);
        }
    }

    // ================================================================== probe driver

    public static void main(String[] args) {
        String which = args != null && args.length > 0 ? args[0] : "both";
        log("env MPL_SOTER_CERTS=" + System.getenv("MPL_SOTER_CERTS")
                + " MPL_SOTER_IDENTITY_DIR=" + System.getenv("MPL_SOTER_IDENTITY_DIR"));
        log("SoterIdentity.certsEnabled=" + SoterIdentity.certsEnabled());
        if (!"auth".equals(which)) {
            run("ASK", mpl.SoterForge.askBlob(10393));
        }
        if (!"ask".equals(which)) {
            run("AUTH", mpl.SoterForge.authBlob(10393));
        }
        markDone();
    }

    private static void run(String kind, byte[] blob) {
        if (blob == null || blob.length < 5) {
            log(kind + ": blob missing");
            return;
        }
        int length = (blob[0] & 0xFF) | ((blob[1] & 0xFF) << 8)
                | ((blob[2] & 0xFF) << 16) | ((blob[3] & 0xFF) << 24);
        if (length < 0 || 4 + length > blob.length) {
            log(kind + ": bad frame len=" + length + " blob=" + blob.length);
            return;
        }
        byte[] body = new byte[length];
        System.arraycopy(blob, 4, body, 0, length);
        byte[] signature = new byte[blob.length - 4 - length];
        System.arraycopy(blob, 4 + length, signature, 0, signature.length);
        String json = new String(body);
        log(kind + ": blob=" + blob.length + " body=" + length + " sig=" + signature.length);
        log(kind + ": json head=" + json.substring(0, Math.min(96, json.length())));
        log(kind + ": json has certs=" + json.contains("\"certs\"")
                + " has pem=" + json.contains("-----BEGIN CERTIFICATE-----"));
        // signature over the whole body (certs included) must verify with the advertised key
        try {
            String b64 = json.substring(json.indexOf("pub_key\":\"") + 10,
                    json.indexOf("\",\"counter\""));
            java.security.PublicKey pub = java.security.KeyFactory.getInstance("RSA")
                    .generatePublic(new java.security.spec.X509EncodedKeySpec(
                            android.util.Base64.decode(b64, android.util.Base64.DEFAULT)));
            java.security.Signature verifier = java.security.Signature.getInstance("SHA256withRSA");
            verifier.initVerify(pub);
            verifier.update(body);
            log(kind + ": body signature verifies=" + verifier.verify(signature)
                    + " (covers certs=" + json.contains("\"certs\"") + ")");
        } catch (Throwable t) {
            log(kind + ": signature check failed: " + t);
        }
        // the JSON's own values, before any certificate override
        try {
            JSONObject object = new JSONObject(json);
            log(kind + ": json fields before model: counter=" + object.optLong("counter")
                    + " uid=" + object.optInt("uid")
                    + " cpu_id=" + object.optString("cpu_id")
                    + " certs=" + (object.has("certs") ? object.optJSONArray("certs").length() : -1));
        } catch (Throwable t) {
            log(kind + ": json parse failed: " + t);
        }
        Model model = new Model(json, android.util.Base64.encodeToString(signature,
                android.util.Base64.NO_WRAP));
        log(kind + ": model " + model.summary());
        log(kind + ": model rawJson head="
                + (model.rawJson == null ? null
                : model.rawJson.substring(0, Math.min(120, model.rawJson.length()))));
        if (model.certs != null && !model.certs.isEmpty()) {
            String first = (String) model.certs.get(0);
            log(kind + ": certs[0] startsWithPem=" + first.startsWith("-----BEGIN CERTIFICATE-----")
                    + " chars=" + first.length()
                    + " newlineEscapedInJson=" + json.contains("\\n"));
            try {
                X509Certificate leaf = (X509Certificate) CertificateFactory.getInstance("X.509")
                        .generateCertificate(new ByteArrayInputStream(first.getBytes()));
                log(kind + ": certs[0] parses as X509 subj="
                        + leaf.getSubjectX500Principal().getName()
                        + " issuer=" + leaf.getIssuerX500Principal().getName()
                        + " key=" + leaf.getPublicKey().getAlgorithm());
                byte[] ext = leaf.getExtensionValue(KEY_DESCRIPTION_OID);
                log(kind + ": certs[0] attestation ext=" + (ext != null)
                        + " len=" + (ext == null ? -1 : ext.length));
            } catch (Throwable t) {
                log(kind + ": certs[0] parse failed: " + t);
            }
        }
    }

    private static void markDone() {
        try {
            java.io.FileOutputStream out = new java.io.FileOutputStream(DONE, false);
            try {
                out.write(trail.toString().getBytes("UTF-8"));
            } finally {
                out.close();
            }
        } catch (Throwable ignored) {
            // logcat already carried it
        }
    }
}
