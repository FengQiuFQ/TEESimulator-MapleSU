package mpl;

import android.os.Parcel;

import java.security.KeyFactory;
import java.security.PublicKey;
import java.security.Signature;
import java.security.spec.X509EncodedKeySpec;
import java.lang.reflect.Method;
import java.util.Arrays;

/**
 * Dex-independent "blob shape" recorder: it only references {@code mpl.SoterForge} members that
 * exist in <b>every</b> dex of this lane (p16l .. p16x), so the very same probe can be run
 * against the pre-certs baseline (p16q) and against the current dex, and the two outputs
 * compared field by field.
 *
 * <p>What it records for one blob:</p>
 * <ul>
 *   <li>total length, body length and signature length;</li>
 *   <li>the JSON key <b>set and order</b> (scanned textually, so it reflects the real wire
 *       order - {@code org.json.JSONObject} would reorder);</li>
 *   <li>the body with the (random) {@code pub_key} replaced by {@code <PUB>} plus its SHA-256,
 *       which is the part that must be byte-identical across dexes for the same inputs;</li>
 *   <li>whether a {@code certs} array is present;</li>
 *   <li>whether the trailing signature verifies with the advertised {@code pub_key}.</li>
 * </ul>
 *
 * <p>Plus the two lane invariants: ASK != AuthKey, and {@code initSigh -> finishSign} produces a
 * signature over the cached challenge that verifies with the AuthKey public key.</p>
 *
 * <p>Run: {@code app_process -Xverify:all -Djava.class.path=<probe>.dex:<product>.dex /data/local/tmp mpl.ShapeProbe}
 * Writes {@code /data/local/tmp/mpl_shape.txt}.</p>
 */
public final class ShapeProbe {

    private static final String TAG = "SHAPEPROBE";
    private static final String DONE = "/data/local/tmp/mpl_shape.txt";
    private static final String DESCRIPTOR = "com.tencent.soter.soterserver.ISoterService";
    private static final StringBuilder trail = new StringBuilder(8192);

    private ShapeProbe() {
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
        log("pid=" + android.os.Process.myPid() + " args=" + Arrays.toString(args));
        try {
            byte[] ask = mpl.SoterForge.askBlob(10393);
            shape("ASK", ask);
            byte[] auth = mpl.SoterForge.authBlob(10393);
            shape("AUTH", auth);
            log("INVARIANT askNeAuth=" + (ask != null && auth != null && !Arrays.equals(ask, auth)));
            signing("finishSign");
        } catch (Throwable t) {
            log("PROBE FAILED: " + t);
            t.printStackTrace();
        }
        markDone();
    }

    /**
     * {@code initSigh -> finishSign} invariant, across two generations of the lane API.
     *
     * <p>p16q exposes {@code initSign(Parcel)} + {@code finishSign(long)}; p16x moved the session
     * state machine into the AIDL layer and kept only {@code signChallenge(uid, alias, data)}.
     * Reflection lets one probe prove the same property on both dexes instead of pinning the
     * comparison to a single build.</p>
     */
    private static void signing(String tag) {
        String api = "none";
        byte[] signature = null;
        long session = -1L;
        try {
            String challenge = "toggle-shape-challenge";
            Method signChallenge = methodIfPresent("signChallenge",
                    new Class<?>[]{int.class, String.class, byte[].class});
            if (signChallenge != null) {
                api = "signChallenge";
                signature = (byte[]) signChallenge.invoke(null, Integer.valueOf(10393),
                        null, challenge.getBytes("UTF-8"));
            } else {
                Method initSign = methodIfPresent("initSign", new Class<?>[]{Parcel.class});
                Method finishSign = methodIfPresent("finishSign", new Class<?>[]{long.class});
                if (initSign != null && finishSign != null) {
                    api = "initSign/finishSign";
                    Parcel data = Parcel.obtain();
                    data.writeInterfaceToken(DESCRIPTOR);
                    data.writeInt(10393);
                    data.writeString("duck_probe");
                    data.writeString(challenge);
                    data.setDataPosition(0);
                    Object returned = initSign.invoke(null, data);
                    session = returned instanceof Long ? ((Long) returned).longValue() : -1L;
                    signature = (byte[]) finishSign.invoke(null, Long.valueOf(session));
                }
            }
            boolean verified = false;
            if (signature != null) {
                byte[] auth = mpl.SoterForge.authBlob(10393);
                PublicKey pub = publicKey(body(auth));
                Signature verifier = Signature.getInstance("SHA256withRSA");
                verifier.initVerify(pub);
                verifier.update("toggle-shape-challenge".getBytes("UTF-8"));
                verified = verifier.verify(signature);
            }
            log("INVARIANT " + tag + " api=" + api + " session=" + session
                    + " sigLen=" + (signature == null ? -1 : signature.length)
                    + " verifiesChallenge=" + verified);
        } catch (Throwable t) {
            log("INVARIANT " + tag + " threw " + t);
        }
    }

    private static Method methodIfPresent(String name, Class<?>[] signature) {
        try {
            Method method = mpl.SoterForge.class.getDeclaredMethod(name, signature);
            method.setAccessible(true);
            return method;
        } catch (Throwable t) {
            return null;
        }
    }

    private static void shape(String kind, byte[] blob) {
        if (blob == null || blob.length < 5) {
            log("SHAPE " + kind + " missing");
            return;
        }
        int length = le32(blob);
        if (length < 0 || 4 + length > blob.length) {
            log("SHAPE " + kind + " badFrame len=" + length + " blob=" + blob.length);
            return;
        }
        byte[] raw = new byte[length];
        System.arraycopy(blob, 4, raw, 0, length);
        byte[] sig = new byte[blob.length - 4 - length];
        System.arraycopy(blob, 4 + length, sig, 0, sig.length);
        String json = new String(raw);
        String redacted = redact(json);
        log("SHAPE " + kind + " blobLen=" + blob.length + " bodyLen=" + raw.length
                + " sigLen=" + sig.length
                + " hasCerts=" + json.contains("\"certs\"")
                + " keys=" + keyOrder(json));
        log("SHAPE " + kind + " redacted=" + redacted);
        log("SHAPE " + kind + " redactedSha256=" + sha256(redacted));
        log("SHAPE " + kind + " sigVerifies=" + verifies(json, raw, sig));
    }

    private static boolean verifies(String json, byte[] body, byte[] signature) {
        try {
            PublicKey pub = publicKey(json);
            Signature verifier = Signature.getInstance("SHA256withRSA");
            verifier.initVerify(pub);
            verifier.update(body);
            return verifier.verify(signature);
        } catch (Throwable t) {
            log("sig verify threw " + t);
            return false;
        }
    }

    private static PublicKey publicKey(String json) throws Exception {
        int at = json.indexOf("pub_key\":\"");
        int end = json.indexOf('"', at + 10);
        String base64 = json.substring(at + 10, end);
        return KeyFactory.getInstance("RSA").generatePublic(
                new X509EncodedKeySpec(android.util.Base64.decode(base64,
                        android.util.Base64.DEFAULT)));
    }

    private static String body(byte[] blob) {
        int length = le32(blob);
        return new String(blob, 4, length);
    }

    private static int le32(byte[] blob) {
        return (blob[0] & 0xff) | ((blob[1] & 0xff) << 8)
                | ((blob[2] & 0xff) << 16) | ((blob[3] & 0xff) << 24);
    }

    /** JSON key order as it appears on the wire (top-level only). */
    private static String keyOrder(String json) {
        String[] names = {"pub_key", "counter", "cpu_id", "uid", "certs"};
        StringBuilder order = new StringBuilder("[");
        int[] positions = new int[names.length];
        for (int i = 0; i < names.length; i++) {
            positions[i] = json.indexOf("\"" + names[i] + "\":");
        }
        boolean first = true;
        for (int round = 0; round < names.length; round++) {
            int best = -1;
            for (int i = 0; i < names.length; i++) {
                if (positions[i] >= 0 && (best < 0 || positions[i] < positions[best])) {
                    best = i;
                }
            }
            if (best < 0) {
                break;
            }
            if (!first) {
                order.append(',');
            }
            order.append(names[best]);
            first = false;
            positions[best] = -1;
        }
        return order.append(']').toString();
    }

    private static String redact(String json) {
        int at = json.indexOf("pub_key\":\"");
        if (at < 0) {
            return json;
        }
        int end = json.indexOf('"', at + 10);
        if (end < 0) {
            return json;
        }
        return json.substring(0, at + 10) + "<PUB>" + json.substring(end);
    }

    private static String sha256(String value) {
        try {
            java.security.MessageDigest md = java.security.MessageDigest.getInstance("SHA-256");
            byte[] digest = md.digest(value.getBytes("UTF-8"));
            StringBuilder hex = new StringBuilder(64);
            for (int i = 0; i < digest.length; i++) {
                int b = digest[i] & 0xFF;
                if (b < 16) {
                    hex.append('0');
                }
                hex.append(Integer.toHexString(b));
            }
            return hex.toString();
        } catch (Throwable t) {
            return "sha256-failed";
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
