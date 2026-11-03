package mpl;

import android.util.Base64;
import android.util.Log;

import org.matrix.TEESimulator.pki.CertGenConfig;
import org.matrix.TEESimulator.pki.NativeCertGen;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.PrivateKey;
import java.security.SecureRandom;
import java.security.Signature;
import java.security.cert.Certificate;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.PKCS8EncodedKeySpec;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;

/**
 * Soter device identity: the ASK / AuthKey key pairs <i>and their certificate chains</i>.
 *
 * <p><b>Why this class exists.</b> Before p16r the forge minted a fresh software RSA key pair
 * per role and signed a JSON blob with it. That is arithmetically valid but structurally
 * wrong: a real {@code getAppSecureKey()} reply is
 * {@code LE32(len) || UTF-8 JSON || RSA_signature} whose JSON carries a {@code certs} array,
 * and the SDK ({@code com.tencent.soter.core.model.SoterPubKeyModel}) parses {@code certs[0]}
 * as an X.509 certificate and reads {@code cpu_id}/{@code uid}/{@code counter} out of the
 * KeyMint attestation extension {@code 1.3.6.1.4.1.11129.2.1.17}. A blob without
 * {@code certs} only exercises the model's fallback branch, which no genuine device does.</p>
 *
 * <p><b>Where the material comes from.</b> {@code libcertgen.so} (native, via
 * {@link NativeCertGen}) generates a fresh key pair <i>and</i> signs a leaf with the module's
 * keybox key, returning {@code PKCS8 || chain}. The native entry point cannot be handed an
 * existing public key (its {@link CertGenConfig} has no subject-key input at all), so the
 * identity is: generate once, persist, reuse. Generation therefore happens in the module
 * daemon (root, cwd = module dir, {@code libcertgen.so} already loaded by
 * {@code org.matrix.TEESimulator.App}) into {@link #ROOT_DIR}; {@code mpl.SoterInjector}
 * copies the result into the saterserver process' own {@code files/} directory because the
 * app uid cannot read {@code /data/adb}.</p>
 *
 * <p><b>Who reads what.</b> The daemon writes {@link #ROOT_DIR}; the forge never reads it -
 * it only reads the copy {@code SoterInjector} pushed into the service's own files dir. A
 * missing pushed copy therefore means "certs off", never "read the root copy instead".</p>
 *
 * <p><b>File format</b> (all under {@link #ROOT_DIR}, mode 0600, root-owned):</p>
 * <pre>
 *   ask.key   PKCS#8 DER, the Soter ASK private key
 *   ask.crt   one or more PEM CERTIFICATE blocks, leaf first (the full chain)
 *   auth.key  PKCS#8 DER, the Soter AuthKey private key
 *   auth.crt  same, for the AuthKey
 *   meta      "ask=native certs=5" style provenance, one line per role
 * </pre>
 *
 * <p><b>PEM, not bare base64.</b> {@code SoterPubKeyModel} feeds {@code certs[0]} to
 * {@code CertificateFactory.generateCertificate(new ByteArrayInputStream(s.getBytes()))} and
 * a real device's {@code CertUtil.format()} emits PEM with 64-column base64 and {@code \n}
 * line ends - so {@link #pem(byte[])} reproduces that byte shape exactly instead of shipping
 * naked base64.</p>
 *
 * <p><b>Failure policy.</b> Every public method here is total: a missing switch, a missing
 * file, a corrupt key, a missing keybox or a native failure all yield {@code null}/false and
 * are logged once, never thrown. {@code null} from {@link #get(String)} means "build the blob
 * exactly like p16q did" (no {@code certs}), which is the rollback.</p>
 *
 * <p><b>Switch.</b> {@link #SWITCH_PATH} ({@code on}/{@code off}, default off) gates the
 * whole feature. The forge runs as the saterserver uid, so it reads the <i>pushed mirror</i>
 * of that switch first ({@link #PUSHED_SWITCH}); the daemon refreshes it every tick.</p>
 *
 * <p><b>Modelled vs. genuine (see RESULT-sotercerts.md §5).</b> The attestation challenge is a
 * static JSON minted at generation time (not per-request), the issuer chain roots in the
 * module's keybox rather than the vendor Soter root, {@code cpu_id} is a build-derived value
 * and {@code counter} is not TEE-monotonic.</p>
 */
public final class SoterIdentity {

    private static final String TAG = "MPL-SOTER";

    /** KeyMint / Keymaster attestation extension (the one the Soter SDK greps for JSON). */
    public static final String OID_ATTESTATION = "1.3.6.1.4.1.11129.2.1.17";

    /** Root-owned generation directory. */
    public static final String ROOT_DIR = "/data/adb/tricky_store/soter_identity";
    /** Master switch, root side: file content {@code on} / {@code off}; absent means off. */
    public static final String SWITCH_PATH = "/data/adb/tricky_store/soter_certs";

    /** The saterserver files dir - the only place the injected forge can actually read. */
    public static final String PUSHED_DIR =
            "/data/user/0/com.tencent.soter.soterserver/files/soter_identity";
    private static final String PUSHED_DIR_LEGACY =
            "/data/data/com.tencent.soter.soterserver/files/soter_identity";
    /** Mirror of {@link #SWITCH_PATH} inside the service's files dir. */
    public static final String PUSHED_SWITCH =
            "/data/user/0/com.tencent.soter.soterserver/files/soter_certs";

    /** Test hooks, same shape as {@code mpl.SoterPolicy.ENV_OVERRIDE}. */
    public static final String ENV_DIR = "MPL_SOTER_IDENTITY_DIR";
    public static final String ENV_SWITCH = "MPL_SOTER_CERTS";

    public static final String FILE_ASK_KEY = "ask.key";
    public static final String FILE_ASK_CRT = "ask.crt";
    public static final String FILE_AUTH_KEY = "auth.key";
    public static final String FILE_AUTH_CRT = "auth.crt";
    public static final String FILE_META = "meta";
    /** Everything {@code SoterInjector} mirrors into the service files dir, in this order. */
    public static final String[] FILES = {
            FILE_ASK_KEY, FILE_ASK_CRT, FILE_AUTH_KEY, FILE_AUTH_CRT, FILE_META,
    };

    private static final String KEYBOX_NAME = "keybox.xml";
    private static final long SWITCH_TTL_MS = 500L;

    private static final String ALG_RSA_SHA256 = "1.2.840.113549.1.1.11";
    private static final byte[] ALG_ID_RSA_SHA256 = {
            0x30, 0x0D, 0x06, 0x09,
            0x2A, (byte) 0x86, 0x48, (byte) 0x86, (byte) 0xF7, 0x0D, 0x01, 0x01, 0x0B,
            0x05, 0x00,
    };
    private static final byte[] ALG_ID_ECDSA_SHA256 = {
            0x30, 0x0A, 0x06, 0x08,
            0x2A, (byte) 0x86, 0x48, (byte) 0xCE, 0x3D, 0x04, 0x03, 0x02,
    };

    // ------------------------------------------------------------------ cached state

    private static volatile Identity askIdentity;
    private static volatile Identity authIdentity;
    private static volatile long askStamp = Long.MIN_VALUE;
    private static volatile long authStamp = Long.MIN_VALUE;
    private static volatile boolean switchOn;
    private static volatile long switchAt;
    private static volatile String lastNote;

    private SoterIdentity() {
    }

    /**
     * One decoded identity: the key pair the blob advertises/signs with and the PEM chain that
     * travels in {@code certs}.
     */
    public static final class Identity {
        /** Private key from the persisted PKCS#8 plus the public key taken from the leaf. */
        public final KeyPair keyPair;
        /** PEM CERTIFICATE strings, leaf first - exactly {@code CertUtil.format()} shape. */
        public final ArrayList certs;
        /** Parsed leaf (index 0 of {@link #certs}). */
        public final X509Certificate leaf;
        /** Directory the material was read from (diagnostics). */
        public final String dir;
        /** {@code native} or {@code selfsigned}, from the meta file. */
        public final String mode;

        Identity(KeyPair keyPair, ArrayList certs, X509Certificate leaf, String dir, String mode) {
            this.keyPair = keyPair;
            this.certs = certs;
            this.leaf = leaf;
            this.dir = dir;
            this.mode = mode;
        }

        public int certCount() {
            return certs == null ? 0 : certs.size();
        }

        public String toString() {
            return "SoterIdentity(mode=" + mode + " certs=" + certCount() + " dir=" + dir + ")";
        }
    }

    // ------------------------------------------------------------------ switch

    /** True when {@code certs} should be attached. Default false (rollback). */
    public static boolean certsEnabled() {
        long now = System.currentTimeMillis();
        if (now - switchAt < SWITCH_TTL_MS) {
            return switchOn;
        }
        boolean on = readAnySwitch();
        switchOn = on;
        switchAt = now;
        return on;
    }

    /** Root-side switch only - used by the daemon to decide whether to generate/push. */
    public static boolean rootSwitchOn() {
        return truthy(readText(new File(SWITCH_PATH)));
    }

    /**
     * Resolves the in-process switch. Order and failure direction are deliberate:
     *
     * <ol>
     *   <li>{@link #ENV_SWITCH} - test hook only, never present in production;</li>
     *   <li>the <b>pushed mirror</b> - the daemon writes {@code on} there only after it has
     *       successfully generated and pushed the identity, so the mirror is the single
     *       authoritative signal for this process;</li>
     *   <li><b>nothing else</b>. A missing mirror means OFF even when the root-side switch says
     *       {@code on}: the app cannot read {@code /data/adb} anyway, and a mirror that was
     *       deleted (daemon off, partial push, cleanup) must never leave the lane half-open.</li>
     * </ol>
     */
    private static boolean readAnySwitch() {
        String env = env(ENV_SWITCH);
        if (env != null) {
            return truthy(env);
        }
        return truthy(readText(new File(PUSHED_SWITCH)));
    }

    /**
     * Strict, fail-closed token test: only the exact word {@code on} (any case, surrounding
     * whitespace allowed) enables the lane.
     *
     * <p>Everything else - empty file, {@code yes}, {@code true}, {@code 1}, {@code off},
     * garbage, an unreadable file - is OFF. The feature is an optional fidelity upgrade, so an
     * ambiguous switch must resolve to the pre-p16r behaviour rather than to the new one.</p>
     */
    private static boolean truthy(String value) {
        if (value == null) {
            return false;
        }
        return "on".equals(value.trim().toLowerCase(Locale.US));
    }

    // ------------------------------------------------------------------ forge side

    /**
     * Identity for {@code "ASK"} or {@code "AUTH"}, or null when the switch is off, the files
     * are missing/unreadable, or the key does not match the certificate.
     *
     * <p>Re-reads only when (mtime, size) of the pair changes, so a hot toggle from the daemon
     * takes effect on the next transaction without a process restart.</p>
     */
    public static Identity get(String kind) {
        if (!certsEnabled()) {
            return null;
        }
        boolean auth = "AUTH".equals(kind);
        String base = auth ? "auth" : "ask";
        File dir = locate(base);
        if (dir == null) {
            note("identity " + kind + " absent (certs skipped)");
            return null;
        }
        File keyFile = new File(dir, base + ".key");
        File crtFile = new File(dir, base + ".crt");
        long stamp = stampOf(keyFile, crtFile);
        Identity cached = auth ? authIdentity : askIdentity;
        long cachedStamp = auth ? authStamp : askStamp;
        if (cached != null && stamp == cachedStamp) {
            return cached;
        }
        Identity fresh = read(dir, base, keyFile, crtFile, kind);
        if (fresh == null) {
            if (auth) {
                authIdentity = null;
                authStamp = Long.MIN_VALUE;
            } else {
                askIdentity = null;
                askStamp = Long.MIN_VALUE;
            }
            return null;
        }
        if (auth) {
            authIdentity = fresh;
            authStamp = stamp;
        } else {
            askIdentity = fresh;
            askStamp = stamp;
        }
        return fresh;
    }

    /**
     * Number of identity-directory probes executed in this process.
     *
     * <p>Diagnostic only (one increment per {@link #get(String)} cache miss): the toggle proof
     * uses it to show that an OFF process performs <b>zero</b> {@code soter_identity} filesystem
     * probes, i.e. "off" is not merely "read it and ignore it".</p>
     */
    private static final java.util.concurrent.atomic.AtomicInteger SCANS =
            new java.util.concurrent.atomic.AtomicInteger();

    /** @see #SCANS */
    public static int identityScans() {
        return SCANS.get();
    }

    /**
     * First directory that actually holds {@code <base>.key}, in precedence order.
     *
     * <p>Only two kinds of location are searched: the test override and the <b>pushed</b>
     * copies inside the service's own files dir. {@link #ROOT_DIR} is deliberately <i>not</i> a
     * candidate - it is the daemon's source of truth, not the forge's. That keeps the failure
     * direction closed: if the pushed copy is missing (the daemon cleared it on "off", or a
     * push was partial), the lane is OFF even for a caller that could technically read
     * {@code /data/adb}, instead of silently resurrecting a chain the switch said to drop.</p>
     */
    private static File locate(String base) {
        SCANS.incrementAndGet();
        ArrayList candidates = new ArrayList(3);
        String override = env(ENV_DIR);
        if (override != null && override.length() > 0) {
            candidates.add(new File(override));
        }
        candidates.add(new File(PUSHED_DIR));
        candidates.add(new File(PUSHED_DIR_LEGACY));
        for (int i = 0; i < candidates.size(); i++) {
            File dir = (File) candidates.get(i);
            if (new File(dir, base + ".key").isFile() && new File(dir, base + ".crt").isFile()) {
                return dir;
            }
        }
        return null;
    }

    private static long stampOf(File keyFile, File crtFile) {
        return (keyFile.lastModified() * 31L + keyFile.length()) * 31L
                + (crtFile.lastModified() * 131L + crtFile.length());
    }

    private static Identity read(File dir, String base, File keyFile, File crtFile, String kind) {
        try {
            byte[] pkcs8 = readBytes(keyFile);
            if (pkcs8 == null || pkcs8.length == 0) {
                note("identity " + kind + " key unreadable: " + keyFile);
                return null;
            }
            PrivateKey privateKey = privateKey(pkcs8);
            if (privateKey == null) {
                note("identity " + kind + " PKCS8 not RSA/EC: " + keyFile);
                return null;
            }
            ArrayList ders = pemToDer(readText(crtFile));
            if (ders.isEmpty()) {
                note("identity " + kind + " chain empty: " + crtFile);
                return null;
            }
            CertificateFactory factory = CertificateFactory.getInstance("X.509");
            ArrayList certs = new ArrayList(ders.size());
            X509Certificate leaf = null;
            for (int i = 0; i < ders.size(); i++) {
                byte[] der = (byte[]) ders.get(i);
                Certificate cert = factory.generateCertificate(new ByteArrayInputStream(der));
                if (!(cert instanceof X509Certificate)) {
                    note("identity " + kind + " cert[" + i + "] is not X509");
                    return null;
                }
                if (i == 0) {
                    leaf = (X509Certificate) cert;
                }
                certs.add(pem(der));
            }
            KeyPair pair = new KeyPair(leaf.getPublicKey(), privateKey);
            if (!consistent(pair)) {
                note("identity " + kind + " key/cert mismatch in " + dir);
                return null;
            }
            String mode = modeOf(dir, base);
            Identity identity = new Identity(pair, certs, leaf, dir.getAbsolutePath(), mode);
            note("identity " + kind + " loaded mode=" + mode + " certs=" + certs.size()
                    + " dir=" + dir.getAbsolutePath());
            return identity;
        } catch (Throwable t) {
            note("identity " + kind + " read failed: " + t);
            return null;
        }
    }

    /** Sign+verify a probe payload: catches a key file paired with a foreign certificate. */
    private static boolean consistent(KeyPair pair) {
        try {
            byte[] probe = new byte[32];
            new SecureRandom().nextBytes(probe);
            Signature signer = Signature.getInstance("SHA256withRSA");
            signer.initSign(pair.getPrivate());
            signer.update(probe);
            byte[] sig = signer.sign();
            Signature verifier = Signature.getInstance("SHA256withRSA");
            verifier.initVerify(pair.getPublic());
            verifier.update(probe);
            return verifier.verify(sig);
        } catch (Throwable t) {
            return false;
        }
    }

    // ------------------------------------------------------------------ daemon side

    /**
     * Generation directory: {@link #ROOT_DIR}, or the {@code MPL_SOTER_IDENTITY_DIR} override
     * (test hook - the on-device probes must not disturb the real lane's identity).
     */
    public static File rootDir() {
        String override = env(ENV_DIR);
        return override != null && override.length() > 0 ? new File(override) : new File(ROOT_DIR);
    }

    /** Same as {@link #rootDir()} but as a path string, for the daemon's shell scripts. */
    public static String rootDirPath() {
        return rootDir().getAbsolutePath();
    }

    /**
     * Daemon entry point: make sure both identities exist in {@link #ROOT_DIR}.
     *
     * <p>Runs only when the master switch is on. Existing, readable identities are kept (the
     * ASK must be stable across reboots - a device that changes its ASK on every boot is
     * exactly the kind of thing the SDK caches and complains about).</p>
     *
     * @param cpuId the 16-digit device id the forge would report, embedded in the challenge
     * @return a one-line summary for the journal ({@code ask=kept auth=native})
     */
    public static synchronized String ensureRootIdentities(String cpuId) {
        File dir = rootDir();
        if (!dir.isDirectory() && !dir.mkdirs()) {
            return "identity: cannot create " + dir;
        }
        StringBuilder notes = new StringBuilder();
        String[] kinds = {"ASK", "AUTH"};
        for (int i = 0; i < kinds.length; i++) {
            String kind = kinds[i];
            String base = "ASK".equals(kind) ? "ask" : "auth";
            File keyFile = new File(dir, base + ".key");
            File crtFile = new File(dir, base + ".crt");
            if (keyFile.isFile() && crtFile.isFile()
                    && read(dir, base, keyFile, crtFile, kind) != null) {
                notes.append(base).append("=kept ");
                continue;
            }
            notes.append(base).append('=').append(generate(dir, base, kind, cpuId)).append(' ');
        }
        return "identity: " + notes.toString().trim();
    }

    /**
     * Generation ladder: libcertgen (keybox), Java key pair + keybox signature, self-signed.
     *
     * <p>The order was measured on the device, not guessed. The shipped libcertgen refuses an
     * RSA <i>subject</i> key when the issuer is the EC keybox
     * ({@code signing failed: RSA key parse: public key error: unknown/unsupported algorithm
     * OID: 1.2.840.113549.1.1.1}), and the Soter ASK/AuthKey <b>must</b> be RSA because the SDK
     * verifies the blob's {@code SHA256withRSA} signature against {@code pub_key}. The keybox
     * still holds the P-256 attestation key and JCA can sign with it, so rung 2 builds the very
     * same leaf shape in Java and signs it with that key: the chain keeps its keybox root, which
     * is the property that matters for "does this look like a device chain". Rung 3 is the last
     * resort when there is no keybox at all (a chain that only verifies against itself).</p>
     */
    private static String generate(File dir, String base, String kind, String cpuId) {
        byte[] challenge = bytes(challenge(cpuId));
        String forced = env("MPL_SOTER_IDENTITY_MODE");
        if (forced != null && forced.length() > 0) {
            // Test hook: pin one rung so each can be evidenced separately on device.
            try {
                if ("native".equals(forced)) {
                    return generateNative(dir, base, kind, challenge)
                            ? "native" : "failed(native)";
                }
                if ("keybox".equals(forced)) {
                    return generateKeyboxSigned(dir, base, kind, challenge)
                            ? "keybox" : "failed(keybox)";
                }
                if ("selfsigned".equals(forced)) {
                    return generateSelfSigned(dir, base, kind, challenge)
                            ? "selfsigned" : "failed(selfsigned)";
                }
            } catch (Throwable t) {
                note("identity " + kind + " forced " + forced + " failed: " + t);
                return "failed(" + forced + ")";
            }
        }
        try {
            if (generateNative(dir, base, kind, challenge)) {
                return "native";
            }
        } catch (Throwable t) {
            note("identity " + kind + " native generation failed: " + t);
        }
        try {
            if (generateKeyboxSigned(dir, base, kind, challenge)) {
                return "keybox";
            }
        } catch (Throwable t) {
            note("identity " + kind + " keybox generation failed: " + t);
        }
        try {
            if (generateSelfSigned(dir, base, kind, challenge)) {
                return "selfsigned";
            }
        } catch (Throwable t) {
            note("identity " + kind + " self-signed generation failed: " + t);
        }
        return "failed";
    }

    /**
     * The attestation challenge. {@code CertUtil.extractAttestationSequence} greps the
     * extension bytes for the first {@code {} and the last {@code }} and parses that slice as
     * JSON, so the challenge <i>is</i> the JSON it will read back.
     */
    public static String challenge(String cpuId) {
        return "{\"cpu_id\":\"" + (cpuId == null ? "0000000000000000" : cpuId)
                + "\",\"uid\":0,\"counter\":1}";
    }

    // ---- rung 1: libcertgen -------------------------------------------

    private static boolean generateNative(File dir, String base, String kind, byte[] challenge)
            throws Exception {
        if (!NativeCertGen.INSTANCE.isAvailable()) {
            note("identity " + kind + ": libcertgen not initialized, skipping native rung");
            return false;
        }
        y4.d box = y4.e.a(KEYBOX_NAME);
        if (box == null || box.a == null || box.a.getPrivate() == null) {
            note("identity " + kind + ": no keybox (" + KEYBOX_NAME + "), skipping native rung");
            return false;
        }
        byte[] issuerPkcs8 = box.a.getPrivate().getEncoded();
        byte[] chainConcat = concatCertificates(box.b);
        if (issuerPkcs8 == null || chainConcat == null) {
            note("identity " + kind + ": keybox incomplete, skipping native rung");
            return false;
        }
        byte[] nativeResult = NativeCertGen.INSTANCE.generateAttestedKeyPair(
                config(1 /* RSA */, 2048, -1, challenge, issuerPkcs8, chainConcat, kind));
        if (nativeResult == null || nativeResult.length == 0) {
            note("identity " + kind + ": libcertgen returned null");
            return false;
        }
        Object[] decoded = decodeNative(nativeResult);
        if (decoded == null) {
            note("identity " + kind + ": libcertgen result undecodable");
            return false;
        }
        byte[] pkcs8 = (byte[]) decoded[0];
        ArrayList derCerts = (ArrayList) decoded[1];
        if (pkcs8 == null || pkcs8.length == 0 || derCerts.isEmpty()) {
            note("identity " + kind + ": libcertgen result empty");
            return false;
        }
        // Fidelity: if the native leaf did not carry the KeyDescription extension (or carried
        // one without our challenge), splice it in and re-sign with the same issuer key. The
        // chain still verifies because issuer/subject/SPKI are untouched.
        byte[] leaf = (byte[]) derCerts.get(0);
        byte[] patched = ensureAttestation(leaf, challenge, issuerPkcs8);
        if (patched != null && patched != leaf) {
            derCerts.set(0, patched);
        }
        writeIdentity(dir, base, pkcs8, derCerts, "native");
        return true;
    }

    /** One CertGenConfig shape for every rung: the Soter identity is always RSA-2048. */
    private static CertGenConfig config(int algorithm, int keySize, int ecCurve, byte[] challenge,
                                        byte[] issuerPkcs8, byte[] issuerChain, String kind) {
        long now = System.currentTimeMillis();
        return new CertGenConfig(algorithm, keySize, ecCurve, 65537L,
                challenge,
                new int[]{2 /* SIGN */},
                new int[]{0 /* SHA-256 */},
                serial(),
                subject(kind),
                now - 86400000L,
                now + 315360000000L,
                issuerPkcs8,
                issuerChain,
                1 /* SECURITY_LEVEL_TRUSTED_ENVIRONMENT */,
                300 /* attestationVersion */,
                4 /* keymasterVersion */,
                sdkInt(),
                patchLevel(),
                patchLevel(),
                patchLevel(),
                new byte[32],
                new byte[32],
                now,
                applicationId(),
                new byte[32],
                bytes("mpl"), bytes("soter-" + kind.toLowerCase(Locale.US)),
                bytes("soter"), bytes("0"), new byte[0], new byte[0],
                bytes("MapleSU"), bytes("Soter"), new byte[0],
                -1L, -1L, -1L, -1, false, false, true, 0, false);
    }

    /** Decodes {@code BE32 privLen || PKCS8 || BE32 n || (BE32 len || DER)*}. */
    private static Object[] decodeNative(byte[] blob) {
        try {
            DataInputStream in = new DataInputStream(new ByteArrayInputStream(blob));
            int privLen = in.readInt();
            if (privLen < 0 || privLen > in.available()) {
                return null;
            }
            byte[] pkcs8 = new byte[privLen];
            in.readFully(pkcs8);
            int count = in.readInt();
            if (count < 0 || count > 64) {
                return null;
            }
            ArrayList certs = new ArrayList(count);
            for (int i = 0; i < count; i++) {
                int len = in.readInt();
                if (len < 0 || len > in.available()) {
                    return null;
                }
                byte[] der = new byte[len];
                in.readFully(der);
                certs.add(der);
            }
            return new Object[]{pkcs8, certs};
        } catch (Throwable t) {
            return null;
        }
    }

    // ---- rung 2: Java key pair, keybox signature -----------------------

    private static boolean generateKeyboxSigned(File dir, String base, String kind,
                                                byte[] challenge) throws Exception {
        y4.d box = y4.e.a(KEYBOX_NAME);
        if (box == null || box.a == null || box.a.getPrivate() == null
                || box.b == null || box.b.isEmpty()) {
            note("identity " + kind + ": no keybox to sign with, skipping keybox rung");
            return false;
        }
        Object first = box.b.get(0);
        if (!(first instanceof X509Certificate)) {
            note("identity " + kind + ": keybox chain leaf is not an X509Certificate");
            return false;
        }
        X509Certificate issuerCert = (X509Certificate) first;
        note("identity " + kind + ": keybox rung issuerAlg="
                + box.a.getPrivate().getAlgorithm() + " chain=" + box.b.size());
        // Verbatim subject DN of the keybox leaf: re-encoding a DN through a String would
        // reorder the RDNs (the module already paid for that lesson in CertSurgery).
        byte[] issuerName = issuerCert.getSubjectX500Principal().getEncoded();
        note("identity " + kind + ": keybox rung issuerName=" + issuerName.length + "B");
        KeyPairGenerator generator = KeyPairGenerator.getInstance("RSA");
        generator.initialize(2048);
        KeyPair subjectPair = generator.generateKeyPair();
        note("identity " + kind + ": keybox rung subject keypair generated");
        byte[] leaf = certificate(subjectPair, subject(kind), issuerName,
                box.a.getPrivate(), challenge);
        note("identity " + kind + ": keybox rung leaf=" + leaf.length + "B");
        ArrayList certs = new ArrayList(box.b.size() + 1);
        certs.add(leaf);
        for (int i = 0; i < box.b.size(); i++) {
            Object entry = box.b.get(i);
            if (entry instanceof Certificate) {
                certs.add(((Certificate) entry).getEncoded());
            }
        }
        writeIdentity(dir, base, subjectPair.getPrivate().getEncoded(), certs, "keybox");
        return true;
    }

    // ---- rung 3: self-signed ------------------------------------------

    private static boolean generateSelfSigned(File dir, String base, String kind, byte[] challenge)
            throws Exception {
        KeyPairGenerator generator = KeyPairGenerator.getInstance("RSA");
        generator.initialize(2048);
        KeyPair pair = generator.generateKeyPair();
        byte[] name = subject(kind);
        byte[] cert = certificate(pair, name, name, pair.getPrivate(), challenge);
        ArrayList certs = new ArrayList(1);
        certs.add(cert);
        writeIdentity(dir, base, pair.getPrivate().getEncoded(), certs, "selfsigned");
        return true;
    }

    /**
     * X.509 v3 leaf: RSA-2048 subject key, KeyDescription extension carrying the JSON
     * challenge, {@code basicConstraints CA:FALSE} and {@code keyUsage digitalSignature},
     * signed by {@code issuerKey} (the P-256 keybox key, or the subject key itself when this is
     * a self-signed root).
     */
    static byte[] certificate(KeyPair subjectPair, byte[] subjectName, byte[] issuerName,
                              PrivateKey issuerKey, byte[] challenge) throws Exception {
        RSAPublicKey publicKey = (RSAPublicKey) subjectPair.getPublic();
        byte[] spki = Der.sequence(
                Der.sequence(Der.oid("1.2.840.113549.1.1.1"), Der.nullValue()),
                Der.bitString(0, Der.sequence(
                        Der.integerContent(publicKey.getModulus().toByteArray()),
                        Der.integerContent(publicKey.getPublicExponent().toByteArray()))));
        long now = System.currentTimeMillis();
        byte[] validity = Der.sequence(
                Der.utcTime(utc(now - 86400000L)),
                Der.utcTime(utc(now + 315360000000L)));
        byte[] extensions = Der.context(3, Der.sequence(
                attestationExtension(challenge),
                extension("2.5.29.19", true, Der.sequence()),
                extension("2.5.29.15", true, Der.bitString(7, new byte[]{(byte) 0x80}))));
        boolean rsa = isRsa(issuerKey);
        byte[] algorithm = rsa ? ALG_ID_RSA_SHA256 : ALG_ID_ECDSA_SHA256;
        byte[] tbs = Der.sequence(
                Der.context(0, Der.integer(2)),
                Der.integer(serialLong()),
                algorithm,
                issuerName,
                validity,
                subjectName,
                spki,
                extensions);
        Signature signer = Signature.getInstance(rsa ? "SHA256withRSA" : "SHA256withECDSA");
        signer.initSign(issuerKey);
        signer.update(tbs);
        return Der.sequence(tbs, algorithm, Der.bitString(signer.sign()));
    }

    /** Extension ::= SEQUENCE { extnID, critical BOOLEAN DEFAULT FALSE, extnValue OCTET STRING }. */
    private static byte[] extension(String oid, boolean critical, byte[] value) {
        if (critical) {
            return Der.sequence(Der.oid(oid),
                    Der.tlv(Der.TAG_BOOLEAN, new byte[]{(byte) 0xFF}),
                    Der.octetString(value));
        }
        return Der.sequence(Der.oid(oid), Der.octetString(value));
    }

    private static boolean isRsa(PrivateKey key) {
        String algorithm = key == null ? null : key.getAlgorithm();
        return algorithm == null || !algorithm.toUpperCase(Locale.US).contains("EC");
    }

    // ---- probe-only diagnostics ---------------------------------------

    /**
     * Runs one libcertgen generation with explicit key parameters and writes the result under
     * {@code outDir} (never into the identity directory). Only {@code mpl.CertGenProbe} calls
     * this; it exists so the native capability questions are answered with device evidence.
     */
    public static String nativeProbe(int algorithm, int keySize, int ecCurve, String kind,
                                     String cpuId, String outDir) {
        try {
            if (!NativeCertGen.INSTANCE.isAvailable()) {
                return "native unavailable";
            }
            y4.d box = y4.e.a(KEYBOX_NAME);
            if (box == null || box.a == null || box.a.getPrivate() == null) {
                return "native: no keybox";
            }
            byte[] issuerPkcs8 = box.a.getPrivate().getEncoded();
            byte[] chainConcat = concatCertificates(box.b);
            byte[] challenge = bytes(challenge(cpuId));
            byte[] result = NativeCertGen.INSTANCE.generateAttestedKeyPair(
                    config(algorithm, keySize, ecCurve, challenge, issuerPkcs8, chainConcat, kind));
            if (result == null || result.length == 0) {
                return "native: returned null (see certgen.log / stderr)";
            }
            Object[] decoded = decodeNative(result);
            if (decoded == null) {
                return "native: undecodable result len=" + result.length;
            }
            byte[] pkcs8 = (byte[]) decoded[0];
            ArrayList certs = (ArrayList) decoded[1];
            File dir = new File(outDir);
            if (!dir.isDirectory()) {
                dir.mkdirs();
            }
            writeIdentity(dir, "native_alg" + algorithm, pkcs8, certs, "native-probe");
            return "native ok alg=" + algorithm + " keySize=" + keySize
                    + " pkcs8=" + pkcs8.length + "B certs=" + certs.size();
        } catch (Throwable t) {
            return "native threw: " + t;
        }
    }

    private static String utc(long millis) {
        SimpleDateFormat format = new SimpleDateFormat("yyMMddHHmmss'Z'", Locale.US);
        format.setTimeZone(TimeZone.getTimeZone("UTC"));
        return format.format(new Date(millis));
    }

    // ---- attestation extension ----------------------------------------

    /**
     * KeyDescription ::= SEQUENCE { attestationVersion, attestationSecurityLevel,
     * keymasterVersion, keymasterSecurityLevel, attestationChallenge, uniqueId,
     * softwareEnforced, teeEnforced }.
     */
    public static byte[] keyDescription(byte[] challenge, byte[] uniqueId) {
        return Der.sequence(
                Der.integer(300),
                Der.enumerated(1),
                Der.integer(4),
                Der.enumerated(1),
                Der.octetString(challenge),
                Der.octetString(uniqueId == null ? new byte[0] : uniqueId),
                Der.sequence(),
                Der.sequence());
    }

    private static byte[] attestationExtension(byte[] challenge) {
        return Der.sequence(
                Der.oid(OID_ATTESTATION),
                Der.octetString(keyDescription(challenge, null)));
    }

    /**
     * Guarantees that {@code leafDer} carries the attestation extension with {@code challenge}.
     *
     * @return the leaf to use: the input array when nothing had to change, a re-signed leaf
     *         when the extension had to be added/replaced, or null when the rewrite failed
     */
    static byte[] ensureAttestation(byte[] leafDer, byte[] challenge, byte[] issuerPkcs8) {
        try {
            if (leafDer == null || leafDer.length == 0 || issuerPkcs8 == null) {
                return null;
            }
            byte[] json = challenge;
            Der.Node certificate = Der.parse(leafDer);
            if (certificate.tag() != Der.TAG_SEQUENCE || certificate.childCount() != 3) {
                return null;
            }
            Der.Node tbs = certificate.child(0);
            Der.Node outerAlgorithm = certificate.child(1);
            int index = tbs.childCount() > 0 && (tbs.child(0).tag() & 0xFF) == 0xA0 ? 1 : 0;
            int signatureIndex = index + 1;
            Der.Node extensionsField = null;
            for (int i = index; i < tbs.childCount(); i++) {
                if ((tbs.child(i).tag() & 0xFF) == 0xA3) {
                    extensionsField = tbs.child(i);
                    break;
                }
            }
            boolean present = false;
            boolean carriesJson = false;
            if (extensionsField != null && extensionsField.childCount() == 1) {
                Der.Node extensions = extensionsField.child(0);
                if (extensions.tag() == Der.TAG_SEQUENCE) {
                    for (int i = 0; i < extensions.childCount(); i++) {
                        Der.Node extension = extensions.child(i);
                        if (extension.tag() != Der.TAG_SEQUENCE || extension.childCount() < 2) {
                            continue;
                        }
                        String oid = extension.child(0).oid();
                        if (oid != null && oid.equals(OID_ATTESTATION)) {
                            present = true;
                            byte[] value = extension.child(extension.childCount() - 1).value();
                            carriesJson = containsJson(value, json);
                            break;
                        }
                    }
                }
            }
            if (present && carriesJson) {
                return leafDer;
            }
            byte[] extension = attestationExtension(challenge);
            ArrayList parts = new ArrayList();
            if (extensionsField != null && extensionsField.childCount() == 1) {
                Der.Node extensions = extensionsField.child(0);
                for (int i = 0; i < extensions.childCount(); i++) {
                    Der.Node existing = extensions.child(i);
                    if (existing.tag() == Der.TAG_SEQUENCE && existing.childCount() >= 2) {
                        String oid = existing.child(0).oid();
                        if (oid != null && oid.equals(OID_ATTESTATION)) {
                            continue; // replaced below
                        }
                    }
                    parts.add(existing.serialize());
                }
            }
            parts.add(extension);
            byte[] all = new byte[0];
            ArrayList encoded = new ArrayList(parts.size());
            for (int i = 0; i < parts.size(); i++) {
                encoded.add((byte[]) parts.get(i));
            }
            byte[] sequence = Der.sequence(toArray(encoded));
            byte[] rebuiltExtensions = Der.context(3, sequence);
            Der.Node newExtensions = Der.parse(rebuiltExtensions);
            if (extensionsField != null) {
                // Position of the [3] field is stable; replace it in place.
                int at = index;
                for (int i = index; i < tbs.childCount(); i++) {
                    if ((tbs.child(i).tag() & 0xFF) == 0xA3) {
                        at = i;
                        break;
                    }
                }
                tbs.replaceChild(at, newExtensions);
            } else {
                // Rebuild the TBS with [3] appended (Der.Node has no appendChild).
                ArrayList children = new ArrayList(tbs.childCount() + 1);
                for (int i = 0; i < tbs.childCount(); i++) {
                    children.add(tbs.child(i).serialize());
                }
                children.add(rebuiltExtensions);
                Der.Node rebuilt = Der.parse(Der.sequence(toArray(children)));
                tbs = rebuilt;
            }
            byte[] algorithmIdentifier = signingAlgorithm(issuerPkcs8);
            if (algorithmIdentifier == null) {
                return null;
            }
            String verifier = signingJca(issuerPkcs8);
            if (verifier == null) {
                return null;
            }
            tbs.replaceChild(signatureIndex,
                    Der.parse(algorithmIdentifier));
            byte[] tbsBytes = tbs.serialize();
            Signature signer = Signature.getInstance(verifier);
            signer.initSign(privateKey(issuerPkcs8));
            signer.update(tbsBytes);
            byte[] signature = signer.sign();
            return Der.sequence(tbsBytes, algorithmIdentifier, Der.bitString(signature));
        } catch (Throwable t) {
            note("identity: attestation splice failed: " + t);
            return null;
        }
    }

    private static boolean containsJson(byte[] value, byte[] json) {
        if (value == null || json == null || json.length == 0) {
            return false;
        }
        byte open = (byte) '{';
        byte close = (byte) '}';
        int first = -1;
        int last = -1;
        for (int i = 0; i < value.length; i++) {
            if (value[i] == open && first < 0) {
                first = i;
            }
            if (value[i] == close) {
                last = i;
            }
        }
        if (first < 0 || last <= first) {
            return false;
        }
        int length = last - first + 1;
        if (length != json.length) {
            return false;
        }
        for (int i = 0; i < length; i++) {
            if (value[first + i] != json[i]) {
                return false;
            }
        }
        return true;
    }

    private static String signingJca(byte[] pkcs8) {
        PrivateKey key = privateKey(pkcs8);
        if (key == null) {
            return null;
        }
        return key.getAlgorithm() != null && key.getAlgorithm().toUpperCase(Locale.US).contains("EC")
                ? "SHA256withECDSA" : "SHA256withRSA";
    }

    private static byte[] signingAlgorithm(byte[] pkcs8) {
        PrivateKey key = privateKey(pkcs8);
        if (key == null) {
            return null;
        }
        return key.getAlgorithm() != null && key.getAlgorithm().toUpperCase(Locale.US).contains("EC")
                ? ALG_ID_ECDSA_SHA256 : ALG_ID_RSA_SHA256;
    }

    // ------------------------------------------------------------------ persistence

    private static void writeIdentity(File dir, String base, byte[] pkcs8, ArrayList ders,
                                      String mode) throws Exception {
        if (pkcs8 == null || pkcs8.length == 0 || ders == null || ders.isEmpty()) {
            throw new IllegalArgumentException("empty identity material");
        }
        byte[] bundle = new byte[0];
        ByteArrayOutputStream out = new ByteArrayOutputStream();
        for (int i = 0; i < ders.size(); i++) {
            out.write(pem((byte[]) ders.get(i)).getBytes("UTF-8"));
        }
        bundle = out.toByteArray();
        write(new File(dir, base + ".key"), pkcs8);
        write(new File(dir, base + ".crt"), bundle);
        writeMeta(dir, base, mode);
        note("identity " + base + " generated mode=" + mode + " certs=" + ders.size()
                + " key=" + pkcs8.length + "B crt=" + bundle.length + "B");
    }

    private static void write(File file, byte[] data) throws Exception {
        FileOutputStream out = new FileOutputStream(file, false);
        try {
            out.write(data);
            out.flush();
        } finally {
            out.close();
        }
        restrict(file);
    }

    /** mode 0600: the Soter ASK private key is as sensitive as any keystore key. */
    private static void restrict(File file) {
        try {
            file.setReadable(false, false);
            file.setWritable(false, false);
            file.setReadable(true, true);
            file.setWritable(true, true);
            file.setExecutable(false, false);
        } catch (Throwable ignored) {
            // best effort; the directory itself is root-only
        }
    }

    private static void writeMeta(File dir, String base, String mode) {
        try {
            String[] order = {"ask", "auth"};
            String existing = readText(new File(dir, FILE_META));
            StringBuilder meta = new StringBuilder(160);
            meta.append("format=1\n");
            for (int i = 0; i < order.length; i++) {
                String key = order[i];
                String value = key.equals(base) ? mode : modeFrom(existing, key);
                if (value == null) {
                    continue;
                }
                meta.append(key).append('=').append(value)
                        .append(" certs=").append(countPem(new File(dir, key + ".crt")))
                        .append(" key=").append(new File(dir, key + ".key").length())
                        .append('\n');
            }
            File file = new File(dir, FILE_META);
            FileOutputStream out = new FileOutputStream(file, false);
            try {
                out.write(meta.toString().getBytes("UTF-8"));
            } finally {
                out.close();
            }
            restrict(file);
        } catch (Throwable ignored) {
            // diagnostics only
        }
    }

    private static String modeFrom(String meta, String base) {
        if (meta == null) {
            return null;
        }
        String[] lines = meta.split("\n");
        for (int i = 0; i < lines.length; i++) {
            String line = lines[i].trim();
            if (line.startsWith(base + "=")) {
                int space = line.indexOf(' ');
                return space < 0 ? line.substring(base.length() + 1)
                        : line.substring(base.length() + 1, space);
            }
        }
        return null;
    }

    /** {@code native} / {@code selfsigned} / {@code unknown}, read back from the meta file. */
    private static String modeOf(File dir, String base) {
        String mode = modeFrom(readText(new File(dir, FILE_META)), base);
        return mode == null ? "unknown" : mode;
    }

    private static int countPem(File file) {
        String text = readText(file);
        if (text == null) {
            return 0;
        }
        int count = 0;
        int at = 0;
        while ((at = text.indexOf("-----BEGIN CERTIFICATE-----", at)) >= 0) {
            count++;
            at += 27;
        }
        return count;
    }

    // ------------------------------------------------------------------ primitives

    /** {@code CertUtil.format()} byte shape: 64-column base64, LF ends, trailing LF. */
    public static String pem(byte[] der) {
        String base64 = Base64.encodeToString(der, Base64.NO_WRAP);
        StringBuilder pem = new StringBuilder(base64.length() + 64);
        pem.append("-----BEGIN CERTIFICATE-----\n");
        for (int i = 0; i < base64.length(); i += 64) {
            pem.append(base64, i, Math.min(base64.length(), i + 64)).append('\n');
        }
        pem.append("-----END CERTIFICATE-----\n");
        return pem.toString();
    }

    /** Extracts every PEM CERTIFICATE block back to DER (empty list when none). */
    static ArrayList pemToDer(String text) {
        ArrayList out = new ArrayList();
        if (text == null) {
            return out;
        }
        String begin = "-----BEGIN CERTIFICATE-----";
        String end = "-----END CERTIFICATE-----";
        int at = 0;
        while (true) {
            int start = text.indexOf(begin, at);
            if (start < 0) {
                break;
            }
            int stop = text.indexOf(end, start + begin.length());
            if (stop < 0) {
                break;
            }
            String body = text.substring(start + begin.length(), stop);
            StringBuilder clean = new StringBuilder(body.length());
            for (int i = 0; i < body.length(); i++) {
                char c = body.charAt(i);
                if (c != '\n' && c != '\r' && c != ' ' && c != '\t') {
                    clean.append(c);
                }
            }
            try {
                out.add(Base64.decode(clean.toString(), Base64.DEFAULT));
            } catch (Throwable ignored) {
                // a truncated block invalidates the whole chain; the caller sees it
            }
            at = stop + end.length();
        }
        return out;
    }

    private static PrivateKey privateKey(byte[] pkcs8) {
        PKCS8EncodedKeySpec spec = new PKCS8EncodedKeySpec(pkcs8);
        try {
            return KeyFactory.getInstance("RSA").generatePrivate(spec);
        } catch (Throwable ignored) {
            // not RSA
        }
        try {
            return KeyFactory.getInstance("EC").generatePrivate(spec);
        } catch (Throwable ignored) {
            // not EC either
        }
        return null;
    }

    private static byte[] concatCertificates(List certificates) {
        if (certificates == null) {
            return null;
        }
        try {
            ByteArrayOutputStream out = new ByteArrayOutputStream();
            for (int i = 0; i < certificates.size(); i++) {
                Object entry = certificates.get(i);
                if (entry instanceof Certificate) {
                    byte[] der = ((Certificate) entry).getEncoded();
                    out.write(der, 0, der.length);
                }
            }
            return out.toByteArray();
        } catch (Throwable t) {
            return null;
        }
    }

    /** Subject DN DER: CN=Soter <kind> / O=MapleSU (no textual round-trip). */
    static byte[] subject(String kind) {
        return Der.sequence(
                Der.set(Der.sequence(Der.oid("2.5.4.6"), Der.printableString("MapleSU"))),
                Der.set(Der.sequence(Der.oid("2.5.4.3"), Der.utf8String("Soter " + kind))));
    }

    /** attestationApplicationId: SEQUENCE { OCTET STRING package, OCTET STRING digest }. */
    private static byte[] applicationId() {
        return Der.sequence(
                Der.octetString(bytes("com.tencent.soter.soterserver")),
                Der.octetString(new byte[32]));
    }

    private static byte[] serial() {
        byte[] serial = new byte[8];
        new SecureRandom().nextBytes(serial);
        serial[0] = (byte) (serial[0] & 0x7F);
        if (serial[0] == 0) {
            serial[0] = 1;
        }
        return serial;
    }

    private static long serialLong() {
        byte[] serial = serial();
        long value = 0;
        for (int i = 0; i < serial.length; i++) {
            value = (value << 8) | (serial[i] & 0xFFL);
        }
        return value == 0 ? 1L : value;
    }

    private static int sdkInt() {
        try {
            return android.os.Build.VERSION.SDK_INT;
        } catch (Throwable t) {
            return 35;
        }
    }

    /** {@code YYYY-MM-DD} -> {@code YYYYMM}; falls back to 202501. */
    private static int patchLevel() {
        try {
            String patch = android.os.Build.VERSION.SECURITY_PATCH;
            if (patch != null && patch.length() >= 7) {
                return Integer.parseInt(patch.substring(0, 4) + patch.substring(5, 7));
            }
        } catch (Throwable ignored) {
            // fall through
        }
        return 202501;
    }

    private static byte[] bytes(String value) {
        try {
            return value.getBytes("UTF-8");
        } catch (Throwable t) {
            return value.getBytes();
        }
    }

    private static String env(String name) {
        try {
            return System.getenv(name);
        } catch (Throwable t) {
            return null;
        }
    }

    private static byte[] readBytes(File file) {
        FileInputStream in = null;
        try {
            in = new FileInputStream(file);
            byte[] data = new byte[(int) file.length()];
            int at = 0;
            while (at < data.length) {
                int read = in.read(data, at, data.length - at);
                if (read <= 0) {
                    break;
                }
                at += read;
            }
            if (at != data.length) {
                byte[] shorter = new byte[at];
                System.arraycopy(data, 0, shorter, 0, at);
                return shorter;
            }
            return data;
        } catch (Throwable t) {
            return null;
        } finally {
            if (in != null) {
                try {
                    in.close();
                } catch (Throwable ignored) {
                    // best effort
                }
            }
        }
    }

    private static String readText(File file) {
        byte[] data = readBytes(file);
        if (data == null) {
            return null;
        }
        try {
            return new String(data, "UTF-8");
        } catch (Throwable t) {
            return new String(data);
        }
    }

    private static byte[] toArray(ArrayList list) {
        byte[][] out = new byte[list.size()][];
        for (int i = 0; i < out.length; i++) {
            out[i] = (byte[]) list.get(i);
        }
        return Der.concat(out);
    }

    /** Deduplicated journal/log line: the forge sees one transaction per SDK call. */
    private static void note(String message) {
        if (message.equals(lastNote)) {
            return;
        }
        lastNote = message;
        Log.i(TAG, message);
        try {
            SoterInjector.file(message);
        } catch (Throwable ignored) {
            // the journal is best effort
        }
    }
}
