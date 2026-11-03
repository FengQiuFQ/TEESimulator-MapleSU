package mpl;

/**
 * compile-time stub only (never dexed): the real class comes from the product dex
 * (work/tee16-fix/dex/classes_p16.dex). Member list mirrors the real signatures used by the
 * probes; a mismatch would surface as NoSuchMethodError/NoSuchFieldError at run time.
 */
public final class SoterIdentity {

    public static String ROOT_DIR = "/data/adb/tricky_store/soter_identity";
    public static String SWITCH_PATH = "/data/adb/tricky_store/soter_certs";
    public static String PUSHED_SWITCH =
            "/data/user/0/com.tencent.soter.soterserver/files/soter_certs";
    public static String ENV_DIR = "MPL_SOTER_IDENTITY_DIR";
    public static String ENV_SWITCH = "MPL_SOTER_CERTS";
    public static String OID_ATTESTATION = "1.3.6.1.4.1.11129.2.1.17";
    public static String[] FILES = {"ask.key", "ask.crt", "auth.key", "auth.crt", "meta"};

    public static int identityScans() { return 0; }

    public static boolean certsEnabled() {
        return false;
    }

    public static boolean rootSwitchOn() {
        return false;
    }

    public static Identity get(String kind) {
        return null;
    }

    public static String nativeProbe(int algorithm, int keySize, int ecCurve, String kind,
                                     String cpuId, String outDir) {
        return null;
    }

    public static String ensureRootIdentities(String cpuId) {
        return null;
    }

    public static String challenge(String cpuId) {
        return null;
    }

    public static String pem(byte[] der) {
        return null;
    }

    public static byte[] keyDescription(byte[] challenge, byte[] uniqueId) {
        return null;
    }

    public static final class Identity {
        public java.security.KeyPair keyPair;
        public java.util.ArrayList certs;
        public java.security.cert.X509Certificate leaf;
        public String dir;
        public String mode;

        public int certCount() {
            return 0;
        }
    }
}
