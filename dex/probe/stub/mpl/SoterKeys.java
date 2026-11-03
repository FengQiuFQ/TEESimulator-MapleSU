package mpl;
/** compile-time stub only (never dexed): the real class comes from the product dex */
public final class SoterKeys {
    public static final String DIR =
            "/data/user/0/com.tencent.soter.soterserver/files/soter_keys";
    public static final String DIR_LEGACY =
            "/data/data/com.tencent.soter.soterserver/files/soter_keys";
    public static final String ENV_DIR = "MPL_SOTER_KEYS_DIR";
    public static final int MAX_AUTH_PER_UID = 64;
    public static final String DEFAULT_ALIAS = "mpl:default";

    public static void setDirForTest(String path) { }
    public static String dirPath() { return null; }
    public static boolean hasAsk(int uid) { return false; }
    public static boolean hasAuth(int uid, String alias) { return false; }
    public static boolean isGone(int uid, String alias) { return false; }
    public static void revive(int uid, String alias) { }
    public static int generateAsk(int uid) { return 0; }
    public static int generateAuth(int uid, String alias) { return 0; }
    public static int removeAuth(int uid, String alias) { return 0; }
    public static int removeAll(int uid) { return 0; }
    public static String describe(int uid) { return null; }
}
