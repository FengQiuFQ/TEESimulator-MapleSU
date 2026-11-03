package mpl;
/** compile-time stub only (never dexed): the real class comes from the product dex */
public final class SoterSvc {
    public static final int OK = 0;
    public static final int ERR_EXPORT = -200;
    public static final int ERR_EMPTY_ALIAS = -202;
    public static final int ERR_EMPTY_CHALLENGE = -203;
    public static final int ERR_BAD_SESSION = -204;
    public static final int ERR_DEFAULT = -1000;

    public static int intOp(int code, android.os.Parcel data) { return 0; }
    public static int has(int code, android.os.Parcel data) { return 0; }
    public static SoterResult exportAsk(android.os.Parcel data) { return null; }
    public static SoterResult exportAuth(android.os.Parcel data) { return null; }
    public static SoterResult initSigh(android.os.Parcel data) { return null; }
    public static SoterResult finishSign(android.os.Parcel data) { return null; }
    public static void setCallerUidForTest(int uid) { }
    public static void setTtlForTest(long millis) { }
    public static int callerUid() { return 0; }
    public static int sessionCount() { return 0; }
}
