package mpl;

import android.os.Binder;
import android.os.Parcel;
import android.util.Base64;

import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.MessageDigest;
import java.security.Signature;
import java.security.spec.MGF1ParameterSpec;
import java.security.spec.PSSParameterSpec;
import java.util.concurrent.atomic.AtomicInteger;

/**
 * Soter (com.tencent.soter.soterserver) forge payloads.
 *
 * <p>Duck Detector flags four constant placeholders in the forged ASK/AuthKey replies:
 * {@code counter:0}, {@code cpu_id:"0000000000000000"}, {@code uid:0} and a 256-byte
 * all-zero "signature" that no RSA operation can produce. p16l removed them: the blob is
 * {@code LE32(len) || UTF-8 JSON || SHA256withRSA(json)} signed by the very key the JSON
 * advertises.</p>
 *
 * <p><b>p16n uid source.</b> The reply JSON echoes the uid the caller <i>asked for</i>
 * ({@code getAppSecureKey(int uid)} / {@code getAuthKey(int uid, String kname)}). That value
 * lives in the request Parcel, right after the AIDL interface token. {@code
 * Binder.getCallingUid()} is not it on this lane: the keep-alive binding is held by the module
 * daemon, so a transaction can be attributed to the intermediary process (observed 10276)
 * instead of the app that issued it (10494). The Parcel is therefore the primary source and
 * the binder uid is only the fallback - and the key registry is keyed by the same requested
 * uid, so {@code generateAppSecureKey(7)}, {@code getAppSecureKey(7)} and the JSON inside that
 * blob always describe the same key.</p>
 *
 * <p><b>p16 parity (this revision).</b> Key material now comes from {@link SoterKeys} - one ASK
 * per uid, one AuthKey per (uid, alias), persisted at mode 0600 and therefore stable across a
 * process restart - unless the certificate lane is on, in which case the daemon-provisioned
 * {@link SoterIdentity} pair is used for the blob's key <i>and</i> its {@code certs} array, as
 * p16r established. {@link #signChallenge} signs with the same selection, so a
 * {@code finishSign} signature verifies against the {@code pub_key} the matching
 * {@code getAuthKey} advertised.</p>
 *
 * <p><b>Removed in this revision:</b> the {@code finishSign} fallback chain (mismatched session
 * -> last payload -> the constant {@code "TEESIM-SOTER-SIGN"}). Session semantics live in
 * {@link SoterSvc}; this class only produces bytes.</p>
 */
public final class SoterForge {

    private static final String TAG = "MPL-SOTER";

    /**
     * First field of every {@code ISoterService} request Parcel: the AIDL interface token.
     * {@code Parcel.enforceInterface} consumes it; nothing else in the request is consumed by
     * the interceptor before this class reads it.
     */
    private static final String DESCRIPTOR = "com.tencent.soter.soterserver.ISoterService";

    private static String cpuId;
    private static final AtomicInteger COUNTER = new AtomicInteger(1);

    private SoterForge() {
    }

    /** 16 decimal digits, stable per device, non-zero. */
    private static synchronized String cpu() {
        if (cpuId == null) {
            String seed = String.valueOf(BuildFingerprint())
                    + "|" + android.os.Build.BOARD
                    + "|" + android.os.Build.SOC_MODEL
                    + "|" + android.os.Build.DEVICE;
            try {
                MessageDigest md = MessageDigest.getInstance("SHA-256");
                byte[] d = md.digest(seed.getBytes("UTF-8"));
                // Soter treats cpu_id as a numeric 64-bit id, so a hex string with letters
                // fails its parser: use 16 decimal digits.
                long v = 0;
                for (int i = 0; i < 8; i++) {
                    v = (v << 8) | (d[i] & 0xffL);
                }
                if (v < 0) {
                    v = -v;
                }
                String dec = Long.toString(v);
                while (dec.length() < 16) {
                    dec = "0" + dec;
                }
                if (dec.length() > 16) {
                    dec = dec.substring(dec.length() - 16);
                }
                cpuId = dec;
            } catch (Throwable t) {
                cpuId = "7310578350219486";
            }
        }
        return cpuId;
    }

    private static String BuildFingerprint() {
        try {
            return android.os.Build.FINGERPRINT;
        } catch (Throwable t) {
            return "";
        }
    }

    /**
     * Package-private accessor for the daemon: the Soter identity challenge embeds the very
     * {@code cpu_id} this class reports, so the certificate and the JSON can never disagree.
     */
    static String cpuIdForIdentity() {
        return cpu();
    }

    /**
     * Signs with an explicit key pair.
     *
     * <p>The old {@code sign(body)} picked "the AuthKey if one exists, else the ASK key", which
     * meant a second ASK reply (after {@code getAuthKey} had run once) carried the ASK pub_key
     * signed with the AuthKey private key - a blob whose own signature does not verify. Each
     * blob is now signed with the very pair whose public key it advertises.</p>
     */
    static byte[] signWith(KeyPair pair, byte[] data) {
        if (data == null || pair == null) {
            return new byte[256];
        }
        try {
            /* Stock Soter: SHA-256, MGF1-SHA-256, salt 20, emBits = 2047. */
            return PssSigner.sign(pair.getPrivate(), data, 20);
        } catch (Throwable ignored) {
            /* fall through to the platform/legacy path below */
        }
        Signature s = pssSignature();
        if (s != null) {
            try {
                s.initSign(pair.getPrivate());
                s.update(data);
                return s.sign();
            } catch (Throwable ignored) {
                /* fall through to PKCS#1 v1.5 below */
            }
        }
        try {
            Signature legacy = Signature.getInstance("SHA256withRSA");
            legacy.initSign(pair.getPrivate());
            legacy.update(data);
            return legacy.sign();
        } catch (Throwable t) {
            return new byte[256];
        }
    }

    /** Test hook: signs exactly like the forge does (PSS, falling back to v1.5). */
    static byte[] signForTest(KeyPair pair, byte[] data) {
        return signWith(pair, data);
    }

    /**
     * RSASSA-PSS with SHA-256 / MGF1-SHA-256 / salt 20, exactly like the stock Soter TA.
     *
     * <p>A 2048-bit key gives emBits = 2047, which is what the reference implementation uses.
     * Providers differ in how the parameter object is accepted ("RSASSA-PSS" vs
     * "SHA256withRSA/PSS"), so both spellings and the BC provider are tried; null means the
     * platform cannot do PSS and the caller falls back to PKCS#1 v1.5.</p>
     */
    private static Signature pssSignature() {
        try {
            PSSParameterSpec spec = new PSSParameterSpec(
                    "SHA-256", "MGF1", MGF1ParameterSpec.SHA256, 20, 1);
            String[] algorithms = {"RSASSA-PSS", "SHA256withRSA/PSS"};
            for (int i = 0; i < algorithms.length; i++) {
                try {
                    Signature candidate = Signature.getInstance(algorithms[i]);
                    candidate.setParameter(spec);
                    return candidate;
                } catch (Throwable ignored) {
                    /* try the next spelling */
                }
            }
            try {
                Signature bc = Signature.getInstance("RSASSA-PSS", "BC");
                bc.setParameter(spec);
                return bc;
            } catch (Throwable ignored) {
                /* no PSS available */
            }
        } catch (Throwable ignored) {
            /* spec construction never fails on Android, but keep this total */
        }
        return null;
    }

    /**
     * Key pair of the persisted Soter identity for {@code kind}, or null when the feature is
     * off / the material is missing. Never throws: a broken identity must degrade to the
     * registry key, not fail the transaction.
     */
    private static KeyPair identityKey(String kind) {
        try {
            SoterIdentity.Identity identity = SoterIdentity.get(kind);
            return identity == null ? null : identity.keyPair;
        } catch (Throwable t) {
            return null;
        }
    }

    private static SoterIdentity.Identity identity(String kind) {
        try {
            return SoterIdentity.get(kind);
        } catch (Throwable t) {
            return null;
        }
    }

    /** True when the certificate lane supplies this role's key (and therefore its certs). */
    public static boolean identityPresent(String kind) {
        return identity(kind) != null;
    }

    private static byte[] le32(int v) {
        return new byte[]{(byte) (v & 0xff), (byte) ((v >> 8) & 0xff),
                (byte) ((v >> 16) & 0xff), (byte) ((v >> 24) & 0xff)};
    }

    // ------------------------------------------------------------------ diagnostics

    /** Entry proof for every intercepted transaction (code 1..13). */
    public static void logTx(int code) {
        // SoterSvc.callerUid() is Binder.getCallingUid() on the binder lane and the
        // frame-reported uid on the native control-channel lane (p16socket), so this line
        // names the app either way.
        int uid = SoterSvc.callerUid();
        android.util.Log.i(TAG, "txn code=" + code + " uid=" + uid);
    }

    // ------------------------------------------------------------------ ASK / AuthKey

    /**
     * ASK blob for {@code getAppSecureKey(int uid)} - uid read from the request Parcel.
     *
     * <p>See {@link #blobFromParcel(Parcel, String)} for the read order, the interface-token
     * rule and the fallback. This method never throws: a transaction must not fail because a
     * payload could not be parsed.</p>
     */
    public static byte[] askBlob(Parcel data) {
        return blobFromParcel(data, "ASK");
    }

    /**
     * AuthKey blob for {@code getAuthKey(int uid, String kname)} - uid and alias read from the
     * request Parcel. A *different* RSA key from the ASK, as a real device has, and a different
     * key per alias.
     */
    public static byte[] authBlob(Parcel data) {
        return blobFromParcel(data, "AUTH");
    }

    /** uid-only ASK entry point: the on-device probe and any caller without a Parcel. */
    public static byte[] askBlob(int uid) {
        return askBlobFor(uid, uid);
    }

    /** uid-only AuthKey entry point (probe / legacy dex shape); alias-less. */
    public static byte[] authBlob(int uid) {
        return authBlobFor(uid, null, uid);
    }

    /** ASK blob for an explicit uid (registry-backed; provisions the key if needed). */
    public static byte[] askBlobFor(int uid, int callingUid) {
        return blobFor("ASK", uid, null, "arg", callingUid, null);
    }

    /** AuthKey blob for an explicit {@code (uid, alias)}. Alias null/empty = the bare slot. */
    public static byte[] authBlobFor(int uid, String alias, int callingUid) {
        return blobFor("AUTH", uid, alias, "arg", callingUid, null);
    }

    /**
     * Reads {@code uid} (and {@code kname} for the AuthKey) out of an ISoterService request.
     *
     * <p>AIDL wire order, verified against the shipped stub ({@code ISoterService$Stub
     * .onTransact}) and the SDK's proxy:</p>
     * <pre>
     *   getAppSecureKey(int uid)                 : String16 token, int uid
     *   getAuthKey(int uid, String kname)        : String16 token, int uid, String16 kname
     * </pre>
     *
     * <p>{@code enforceInterface} both validates and consumes the token, exactly like the real
     * {@code Stub.onTransact} would; the arguments therefore start at the next 4 bytes. Every
     * failure mode (null parcel, missing/foreign token, truncated payload) is caught here and
     * falls back to {@code Binder.getCallingUid()} - never to an exception out of {@code
     * onPreTransact}, which would hand the transaction back to the real (TA-less) service.</p>
     */
    private static byte[] blobFromParcel(Parcel data, String kind) {
        int callingUid = -1;
        try {
            callingUid = Binder.getCallingUid();
        } catch (Throwable t) {
            callingUid = -1;
        }
        int parcelUid = -1;
        String alias = null;
        String error = null;
        if (data == null) {
            error = "null parcel";
        } else {
            try {
                data.enforceInterface(DESCRIPTOR);
                int available = data.dataAvail();
                if (available < 4) {
                    error = "no uid field (avail=" + available + ")";
                } else {
                    parcelUid = data.readInt();
                    if (parcelUid < 0) {
                        error = "negative uid " + parcelUid;
                        parcelUid = -1;
                    } else if ("AUTH".equals(kind) && data.dataAvail() > 0) {
                        try {
                            alias = data.readString();
                        } catch (Throwable t) {
                            alias = null;
                        }
                    }
                }
            } catch (Throwable t) {
                // Most likely the token was already consumed, or this is not an AIDL parcel.
                error = String.valueOf(t);
                parcelUid = -1;
            }
        }
        int uid = parcelUid >= 0 ? parcelUid : callingUid;
        String source = parcelUid >= 0 ? "parcel" : "binder";
        return blobFor(kind, uid, alias, source, callingUid, error);
    }

    /**
     * ASK / AuthKey blob: little-endian int32 length, JSON body, RSA signature over that body.
     *
     * <p>The log line is the acceptance criterion for the uid fix:</p>
     * <pre>MPL-SOTER blob kind=ASK uid=10494 callingUid=10276 counter=7 src=parcel</pre>
     *
     * @param uid        the uid written into the JSON (parcel value, or the binder fallback)
     * @param kind       {@code ASK} or {@code AUTH}
     * @param alias      {@code getAuthKey}'s kname when it could be read
     * @param source     {@code parcel} / {@code binder} / {@code arg}
     * @param callingUid {@code Binder.getCallingUid()} observed on this transaction, -1 unknown
     * @param error      why the parcel was not used, null when it was
     * @return the framed blob, or null when no key could be produced (the caller maps that to
     *         the -200 export error)
     */
    private static byte[] blobFor(String kind, int uid, String alias, String source,
                                  int callingUid, String error) {
        // The certificate lane (p16r) owns both the key and the chain when it is enabled; the
        // registry owns them otherwise. Mixing them would produce a blob whose certs[0] does not
        // match the advertised pub_key.
        SoterIdentity.Identity identity = identity(kind);
        KeyPair kp;
        if (identity != null) {
            kp = identity.keyPair;
        } else if ("AUTH".equals(kind)) {
            // A caller with no kname (probe / legacy entry point) still gets the per-uid
            // default AuthKey, never the ASK: the two roles must be different keys.
            kp = SoterKeys.ensureAuth(uid,
                    alias == null || alias.length() == 0 ? SoterKeys.DEFAULT_ALIAS : alias);
        } else {
            kp = SoterKeys.ensureAsk(uid);
        }
        if (kp == null) {
            android.util.Log.i(TAG, "blob kind=" + kind + " uid=" + uid + " no key");
            return null;
        }
        String pub = Base64.encodeToString(kp.getPublic().getEncoded(), Base64.NO_WRAP);
        int counter = COUNTER.getAndIncrement();
        StringBuilder line = new StringBuilder(96);
        line.append("blob kind=").append(kind)
                .append(" uid=").append(uid)
                .append(" callingUid=").append(callingUid)
                .append(" counter=").append(counter)
                .append(" src=").append(source);
        if (alias != null) {
            line.append(" alias=").append(alias);
        }
        if (identity != null) {
            line.append(" certs=").append(identity.certCount())
                    .append(" idmode=").append(identity.mode);
        }
        if (error != null) {
            line.append(" err=").append(error);
        }
        android.util.Log.i(TAG, line.toString());
        StringBuilder json = new StringBuilder(256);
        json.append("{\"pub_key\":\"").append(pub).append("\"")
                .append(",\"counter\":").append(counter)
                .append(",\"cpu_id\":\"").append(cpu()).append("\"")
                .append(",\"uid\":").append(uid);
        int certs = 0;
        if (identity != null) {
            certs = appendCerts(json, identity.certs);
        }
        json.append('}');
        String body = json.toString();
        byte[] encoded;
        try {
            encoded = body.getBytes("UTF-8");
        } catch (Throwable t) {
            encoded = body.getBytes();
        }
        // The signature has to cover the whole body, certs array included: the SDK hands the
        // blob to SoterPubKeyModel together with this signature and verifies it as-is.
        byte[] sig = signWith(kp, encoded);
        byte[] len = le32(encoded.length);
        byte[] out = new byte[len.length + encoded.length + sig.length];
        System.arraycopy(len, 0, out, 0, len.length);
        System.arraycopy(encoded, 0, out, len.length, encoded.length);
        System.arraycopy(sig, 0, out, len.length + encoded.length, sig.length);
        if (certs > 0) {
            android.util.Log.i(TAG, "blob body bytes=" + encoded.length + " certs=" + certs
                    + " idmode=" + identity.mode);
        }
        return out;
    }

    /**
     * Appends {@code ,"certs":["<pem>", ...]} to the reply JSON.
     *
     * <p><b>The elements must be PEM text, not bare base64.</b> A real device fills this array
     * from {@code CertUtil.format(certificate)}, which wraps {@code Base64.encode(der, NO_WRAP)}
     * in {@code -----BEGIN CERTIFICATE-----} / {@code -----END CERTIFICATE-----} lines of 64
     * characters. {@code SoterPubKeyModel} then does
     * {@code CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(certs.get(0).getBytes()))}
     * - and while {@code CertificateFactory} tolerates both encodings, only the PEM shape is
     * byte-identical to what the SDK produces when it writes the chain back out, so a model
     * round-trip through {@code getRawJson()} stays comparable to a genuine device.</p>
     *
     * <p>Newlines inside the PEM have to be escaped for JSON ({@code \n}); the SDK's
     * {@code JSONObject.getString(i)} un-escapes them again before {@code getBytes()}.</p>
     *
     * @return the number of certificates appended (0 = nothing written)
     */
    private static int appendCerts(StringBuilder json, java.util.List pemCerts) {
        if (pemCerts == null || pemCerts.isEmpty()) {
            return 0;
        }
        json.append(",\"certs\":[");
        for (int i = 0; i < pemCerts.size(); i++) {
            Object cert = pemCerts.get(i);
            if (cert == null) {
                return 0;
            }
            if (i > 0) {
                json.append(',');
            }
            json.append('"');
            escapeJson(json, String.valueOf(cert));
            json.append('"');
        }
        json.append(']');
        return pemCerts.size();
    }

    /** Minimal JSON string escaping: the PEM body only ever needs backslash/quote/newline. */
    private static void escapeJson(StringBuilder out, String value) {
        for (int i = 0; i < value.length(); i++) {
            char c = value.charAt(i);
            switch (c) {
                case '"':
                    out.append("\\\"");
                    break;
                case '\\':
                    out.append("\\\\");
                    break;
                case '\n':
                    out.append("\\n");
                    break;
                case '\r':
                    out.append("\\r");
                    break;
                case '\t':
                    out.append("\\t");
                    break;
                default:
                    out.append(c);
                    break;
            }
        }
    }

    // ------------------------------------------------------------------ signing

    /**
     * {@code finishSign}: sign {@code data} with the AuthKey of {@code (uid, alias)}.
     *
     * <p>Same key selection as {@link #authBlobFor}, so the signature verifies against the
     * {@code pub_key} of the blob that advertised it. Returns null when no key is available -
     * the caller turns that into the -200 export error, and never into a placeholder
     * signature.</p>
     */
    static byte[] signChallenge(int uid, String alias, byte[] data) {
        KeyPair identity = identityKey("AUTH");
        KeyPair kp;
        if (identity != null) {
            kp = identity;
        } else {
            kp = SoterKeys.ensureAuth(uid,
                    alias == null || alias.length() == 0 ? SoterKeys.DEFAULT_ALIAS : alias);
        }
        if (kp == null) {
            // Never substitute a freshly generated key here: the caller advertises a public key
            // it has already handed out, and a signature from any other key simply does not
            // verify. No key means no signature, and the service answers -200.
            return null;
        }
        return signWith(kp, data);
    }

    // ------------------------------------------------------------------ device id

    /**
     * {@code getDeviceId()}: 32 lowercase hex derived from the build identity.
     *
     * <p>The upstream forge returned the literal {@code TEESIM-SOTER-0001}, which is both a
     * placeholder and identical across every device. This is still synthetic - a real device
     * id is provisioned by the vendor TA - but it is device-derived and stable per boot
     * fingerprint, which is what a "not obviously fabricated" reply needs.</p>
     */
    public static byte[] deviceId() {
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-256");
            String seed = BuildFingerprint() + "|" + android.os.Build.MODEL + "|"
                    + android.os.Build.DEVICE + "|" + cpu();
            byte[] d = md.digest(seed.getBytes("UTF-8"));
            StringBuilder sb = new StringBuilder(32);
            for (int i = 0; i < 16; i++) {
                int b = d[i] & 0xff;
                if (b < 16) {
                    sb.append('0');
                }
                sb.append(Integer.toHexString(b));
            }
            String id = sb.toString();
            android.util.Log.i(TAG, "deviceId len=" + id.length());
            return id.getBytes("UTF-8");
        } catch (Throwable t) {
            return ("0000000000000000" + cpu()).getBytes();
        }
    }
}
