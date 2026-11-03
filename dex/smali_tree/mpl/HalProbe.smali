.class public final Lmpl/HalProbe;
.super Ljava/lang/Object;
.source "HalProbe.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmpl/HalProbe$CodeResult;,
        Lmpl/HalProbe$Context;,
        Lmpl/HalProbe$Hal;,
        Lmpl/HalProbe$Scan;,
        Lmpl/HalProbe$Diag;,
        Lmpl/HalProbe$Sample;
    }
.end annotation


# static fields
.field private static final CODE_FIRST:I = 0x1

.field private static final CODE_LAST:I = 0x18

.field private static final HAL_DESCRIPTOR:Ljava/lang/String; = "vendor.qti.hardware.soter.ISoter"

.field public static final HAL_NAME:Ljava/lang/String; = "vendor.qti.hardware.soter.ISoter/default"

.field private static final LATIN1:Ljava/nio/charset/Charset;

.field private static final MAX_CERT_CHARS:I = 0x200

.field private static final MAX_DEPTH:I = 0x6

.field private static final MAX_FILES:I = 0x30d40

.field private static final MAX_FILE_BYTES:J = 0x200000L

.field private static final MAX_SAMPLES:I = 0xc8

.field private static final MAX_SCAN_MS:J = 0x493e0L

.field private static final MAX_TOTAL_BYTES:J = 0xc0000000L

.field private static final METHOD:[Ljava/lang/String;

.field private static final MUTATING:[Z

.field private static final NEEDLE_CPU_ID:[B

.field private static final NEEDLE_PUB_KEY:[B

.field public static final OUT:Ljava/lang/String; = "/sdcard/Download/soter_hal_probe.json"

.field public static final OUT_FALLBACK:Ljava/lang/String; = "/data/local/tmp/soter_hal_probe.json"

.field private static final PROBE_BUDGET_MS:J = 0x1d4c0L

.field private static final RE_COUNTER:Ljava/util/regex/Pattern;

.field private static final RE_CPU_ID_Q:Ljava/util/regex/Pattern;

.field private static final RE_CPU_ID_U:Ljava/util/regex/Pattern;

.field private static final RE_PUB_KEY_Q:Ljava/util/regex/Pattern;

.field private static final RE_PUB_KEY_U:Ljava/util/regex/Pattern;

.field private static final RE_UID:Ljava/util/regex/Pattern;

.field private static final SKIP_DIRS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SKIP_EXT:[Ljava/lang/String;

.field public static final SWITCH:Ljava/lang/String; = "/data/adb/tricky_store/run_hal_probe"

.field public static final SWITCH_DONE:Ljava/lang/String; = "/data/adb/tricky_store/run_hal_probe.done"

.field private static final TAG:Ljava/lang/String; = "MPL-HALPROBE"

.field private static final TX_HASH:I = 0xfffffe

.field private static final TX_TIMEOUT_MS:J = 0x9c4L

.field private static final TX_VERSION:I = 0xffffff

.field private static volatile pool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 39

    .line 107
    const-string v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lmpl/HalProbe;->LATIN1:Ljava/nio/charset/Charset;

    .line 109
    const-string v0, "cpu_id"

    invoke-static {v0}, Lmpl/HalProbe;->asciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lmpl/HalProbe;->NEEDLE_CPU_ID:[B

    .line 110
    const-string v0, "pub_key"

    invoke-static {v0}, Lmpl/HalProbe;->asciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lmpl/HalProbe;->NEEDLE_PUB_KEY:[B

    .line 118
    const-string v14, "removeAuthKey(int uid, String alias, out SoterErrorCode)"

    const-string v15, "verifyAttkKeyPair(out SoterErrorCode)"

    const-string v1, ""

    const-string v2, "exportAskPublicKey(int uid, out SoterBufferReturn)"

    const-string v3, "exportAttkPublicKey(out SoterBufferReturn)"

    const-string v4, "exportAuthKeyPublicKey(int uid, String alias, out SoterBufferReturn)"

    const-string v5, "finishSign(long session, out SoterBufferReturn)"

    const-string v6, "generateAskKeyPair(int uid, out SoterErrorCode)"

    const-string v7, "generateAttkKeyPair(byte mode, out SoterErrorCode)"

    const-string v8, "generateAuthKeyPair(int uid, String alias, out SoterErrorCode)"

    const-string v9, "getDeviceId(out SoterBufferReturn)"

    const-string v10, "hasAskAlready(int uid, out SoterErrorCode)"

    const-string v11, "hasAuthKey(int uid, String alias, out SoterErrorCode)"

    const-string v12, "initSign(int uid, String challenge, String alias, out SoterInitReturn)"

    const-string v13, "removeAllUidKey(int uid, out SoterErrorCode)"

    filled-new-array/range {v1 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmpl/HalProbe;->METHOD:[Ljava/lang/String;

    const/16 v0, 0xf

    .line 137
    new-array v0, v0, [Z

    fill-array-data v0, :array_e0

    sput-object v0, Lmpl/HalProbe;->MUTATING:[Z

    .line 155
    const-string v0, "\"cpu_id\"\\s*:\\s*\"([^\"]{1,512})\""

    .line 156
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmpl/HalProbe;->RE_CPU_ID_Q:Ljava/util/regex/Pattern;

    .line 157
    const-string v0, "cpu_id\\s*[:=]\\s*\"?([A-Za-z0-9_+/=.:-]{2,256})"

    .line 158
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmpl/HalProbe;->RE_CPU_ID_U:Ljava/util/regex/Pattern;

    .line 159
    const-string v0, "\"counter\"\\s*:\\s*(-?\\d{1,19})"

    .line 160
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmpl/HalProbe;->RE_COUNTER:Ljava/util/regex/Pattern;

    .line 161
    const-string v0, "\"uid\"\\s*:\\s*\"?(\\d{1,10})"

    .line 162
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmpl/HalProbe;->RE_UID:Ljava/util/regex/Pattern;

    .line 163
    const-string v0, "\"pub_key\"\\s*:\\s*\"([^\"]{2,16384})\""

    .line 164
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmpl/HalProbe;->RE_PUB_KEY_Q:Ljava/util/regex/Pattern;

    .line 165
    const-string v0, "pub_key\\s*[:=]\\s*\"?([A-Za-z0-9_+/=.:-]{2,16384})"

    .line 166
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmpl/HalProbe;->RE_PUB_KEY_U:Ljava/util/regex/Pattern;

    .line 168
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "oat"

    const-string v2, "no_backup"

    const-string v3, "lib"

    const-string v4, "cache"

    const-string v5, "code_cache"

    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lmpl/HalProbe;->SKIP_DIRS:Ljava/util/Set;

    .line 171
    const-string v37, ".idx"

    const-string v38, ".odex"

    const-string v2, ".so"

    const-string v3, ".dex"

    const-string v4, ".odex"

    const-string v5, ".oat"

    const-string v6, ".vdex"

    const-string v7, ".art"

    const-string v8, ".apk"

    const-string v9, ".jar"

    const-string v10, ".zip"

    const-string v11, ".gz"

    const-string v12, ".xz"

    const-string v13, ".bz2"

    const-string v14, ".7z"

    const-string v15, ".png"

    const-string v16, ".jpg"

    const-string v17, ".jpeg"

    const-string v18, ".webp"

    const-string v19, ".gif"

    const-string v20, ".bmp"

    const-string v21, ".ttf"

    const-string v22, ".otf"

    const-string v23, ".ttc"

    const-string v24, ".mp3"

    const-string v25, ".mp4"

    const-string v26, ".m4a"

    const-string v27, ".aac"

    const-string v28, ".ogg"

    const-string v29, ".wav"

    const-string v30, ".db"

    const-string v31, ".sqlite"

    const-string v32, ".sqlite3"

    const-string v33, ".db-wal"

    const-string v34, ".db-shm"

    const-string v35, ".db-journal"

    const-string v36, ".pack"

    filled-new-array/range {v2 .. v38}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmpl/HalProbe;->SKIP_EXT:[Ljava/lang/String;

    return-void

    nop

    :array_e0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Z
    .registers 1

    .line 68
    invoke-static {p0}, Lmpl/HalProbe;->execute(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Landroid/os/IBinder;Ljava/lang/String;IZLjava/lang/String;)Lmpl/HalProbe$CodeResult;
    .registers 5

    .line 68
    invoke-static {p0, p1, p2, p3, p4}, Lmpl/HalProbe;->transactBlocking(Landroid/os/IBinder;Ljava/lang/String;IZLjava/lang/String;)Lmpl/HalProbe$CodeResult;

    move-result-object p0

    return-object p0
.end method

.method private static addItem(Ljava/util/List;Ljava/lang/StringBuilder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    .line 809
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 810
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_11

    .line 811
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11
    const/4 p0, 0x0

    .line 813
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void
.end method

.method private static asciiBytes(Ljava/lang/String;)[B
    .registers 4

    .line 1243
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 1244
    :goto_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_17

    .line 1245
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_17
    return-object v0
.end method

.method private static bool(Z)Ljava/lang/String;
    .registers 1

    if-eqz p0, :cond_5

    .line 1495
    const-string p0, "true"

    return-object p0

    :cond_5
    const-string p0, "false"

    return-object p0
.end method

.method private static buildJson(Ljava/lang/String;Lmpl/HalProbe$Context;Lmpl/HalProbe$Hal;Ljava/util/List;Lmpl/HalProbe$Scan;Lmpl/HalProbe$Diag;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lmpl/HalProbe$Context;",
            "Lmpl/HalProbe$Hal;",
            "Ljava/util/List<",
            "Lmpl/HalProbe$Sample;",
            ">;",
            "Lmpl/HalProbe$Scan;",
            "Lmpl/HalProbe$Diag;",
            "JJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 927
    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x18000

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x1

    .line 928
    new-array v2, v1, [Z

    const/4 v3, 0x0

    aput-boolean v1, v2, v3

    const/16 v1, 0x7b

    .line 929
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 930
    const-string v1, "maple.soter.halprobe/1"

    invoke-static {v1}, Lmpl/HalProbe;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "schema"

    invoke-static {v0, v2, v3, v1}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 931
    invoke-static {p6, p7}, Lmpl/HalProbe;->iso(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmpl/HalProbe;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "generated_at"

    invoke-static {v0, v2, v3, v1}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 932
    const-string v1, "generated_at_ms"

    invoke-static {p6, p7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p6

    invoke-static {v0, v2, v1, p6}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 933
    const-string p6, "duration_ms"

    invoke-static {p8, p9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p7

    invoke-static {v0, v2, p6, p7}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 934
    const-string p6, "mode"

    invoke-static {p0}, Lmpl/HalProbe;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v2, p6, p0}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 935
    const-string p0, "written_to"

    invoke-static {p10}, Lmpl/HalProbe;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    invoke-static {v0, v2, p0, p6}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 936
    const-string p0, "context"

    move-object/from16 p7, p12

    invoke-static {p1, p11, p7}, Lmpl/HalProbe;->contextJson(Lmpl/HalProbe$Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v2, p0, p1}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 937
    const-string p0, "hal"

    invoke-static {p2}, Lmpl/HalProbe;->halJson(Lmpl/HalProbe$Hal;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v2, p0, p1}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 938
    const-string p0, "samples"

    invoke-static {p3}, Lmpl/HalProbe;->samplesJson(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v2, p0, p1}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 939
    const-string p0, "scan"

    invoke-static {p4}, Lmpl/HalProbe;->scanJson(Lmpl/HalProbe$Scan;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v2, p0, p1}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 940
    const-string p0, "diagnostics"

    invoke-static {p5}, Lmpl/HalProbe;->diagJson(Lmpl/HalProbe$Diag;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v2, p0, p1}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x7d

    .line 941
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 942
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static codeJson(Lmpl/HalProbe$CodeResult;)Ljava/lang/String;
    .registers 8

    .line 1018
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x1

    .line 1019
    new-array v2, v1, [Z

    const/4 v3, 0x0

    aput-boolean v1, v2, v3

    const/16 v4, 0x7b

    .line 1020
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1021
    iget v4, p0, Lmpl/HalProbe$CodeResult;->code:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "code"

    invoke-static {v0, v2, v5, v4}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 1022
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "0x"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lmpl/HalProbe$CodeResult;->code:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmpl/HalProbe;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "code_hex"

    invoke-static {v0, v2, v5, v4}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 1023
    iget v4, p0, Lmpl/HalProbe$CodeResult;->code:I

    invoke-static {v4}, Lmpl/HalProbe;->methodName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmpl/HalProbe;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "method"

    invoke-static {v0, v2, v5, v4}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 1024
    iget v4, p0, Lmpl/HalProbe$CodeResult;->code:I

    if-lez v4, :cond_5b

    iget v4, p0, Lmpl/HalProbe$CodeResult;->code:I

    sget-object v5, Lmpl/HalProbe;->MUTATING:[Z

    array-length v6, v5

    if-ge v4, v6, :cond_5b

    iget v4, p0, Lmpl/HalProbe$CodeResult;->code:I

    aget-boolean v4, v5, v4

    if-eqz v4, :cond_5b

    goto :goto_5c

    :cond_5b
    const/4 v1, 0x0

    :goto_5c
    invoke-static {v1}, Lmpl/HalProbe;->bool(Z)Ljava/lang/String;

    move-result-object v1

    const-string v3, "mutating"

    invoke-static {v0, v2, v3, v1}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 1025
    iget-object v1, p0, Lmpl/HalProbe$CodeResult;->variant:Ljava/lang/String;

    invoke-static {v1}, Lmpl/HalProbe;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "variant"

    invoke-static {v0, v2, v3, v1}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 1026
    iget-boolean v1, p0, Lmpl/HalProbe$CodeResult;->ok:Z

    invoke-static {v1}, Lmpl/HalProbe;->bool(Z)Ljava/lang/String;

    move-result-object v1

    const-string v3, "ok"

    invoke-static {v0, v2, v3, v1}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 1027
    iget-object v1, p0, Lmpl/HalProbe$CodeResult;->exception:Ljava/lang/String;

    invoke-static {v1}, Lmpl/HalProbe;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "exception"

    invoke-static {v0, v2, v3, v1}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 1028
    iget-boolean v1, p0, Lmpl/HalProbe$CodeResult;->timeout:Z

    invoke-static {v1}, Lmpl/HalProbe;->bool(Z)Ljava/lang/String;

    move-result-object v1

    const-string v3, "timeout"

    invoke-static {v0, v2, v3, v1}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 1029
    iget v1, p0, Lmpl/HalProbe$CodeResult;->dataSize:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "data_size"

    invoke-static {v0, v2, v3, v1}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 1030
    iget-object v1, p0, Lmpl/HalProbe$CodeResult;->hex:Ljava/lang/String;

    invoke-static {v1}, Lmpl/HalProbe;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "hex16"

    invoke-static {v0, v2, v3, v1}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 1031
    iget-object v1, p0, Lmpl/HalProbe$CodeResult;->ints:[I

    invoke-static {v1}, Lmpl/HalProbe;->intArray([I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "ints"

    invoke-static {v0, v2, v3, v1}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 1032
    iget-wide v3, p0, Lmpl/HalProbe$CodeResult;->elapsedMs:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    const-string v1, "elapsed_ms"

    invoke-static {v0, v2, v1, p0}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x7d

    .line 1033
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1034
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static codesJson(Ljava/util/List;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmpl/HalProbe$CodeResult;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_5

    .line 1001
    const-string p0, "[]"

    return-object p0

    .line 1003
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit16 v1, v1, 0xc8

    add-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x5b

    .line 1004
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1006
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x1

    :goto_1c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmpl/HalProbe$CodeResult;

    if-nez v1, :cond_2f

    const/16 v1, 0x2c

    .line 1008
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1011
    :cond_2f
    invoke-static {v2}, Lmpl/HalProbe;->codeJson(Lmpl/HalProbe$CodeResult;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    goto :goto_1c

    :cond_38
    const/16 p0, 0x5d

    .line 1013
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1014
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static contains([B[B)Z
    .registers 10

    .line 1251
    array-length v0, p0

    array-length v1, p1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    .line 1252
    aget-byte v2, p1, v1

    const/4 v3, 0x0

    :goto_7
    if-gt v3, v0, :cond_25

    .line 1254
    aget-byte v4, p0, v3

    if-eq v4, v2, :cond_e

    goto :goto_22

    :cond_e
    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 1258
    :goto_10
    array-length v6, p1

    if-ge v5, v6, :cond_1e

    add-int v6, v3, v5

    aget-byte v6, p0, v6

    aget-byte v7, p1, v5

    if-ne v6, v7, :cond_1e

    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 1261
    :cond_1e
    array-length v6, p1

    if-ne v5, v6, :cond_22

    return v4

    :cond_22
    :goto_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_25
    return v1
.end method

.method private static context(Ljava/lang/String;Z)Lmpl/HalProbe$Context;
    .registers 5

    .line 318
    new-instance v0, Lmpl/HalProbe$Context;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmpl/HalProbe$Context;-><init>(Lmpl/HalProbe$1;)V

    .line 319
    iput-object p0, v0, Lmpl/HalProbe$Context;->mode:Ljava/lang/String;

    .line 320
    iput-boolean p1, v0, Lmpl/HalProbe$Context;->switchExisted:Z

    .line 321
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    iput p0, v0, Lmpl/HalProbe$Context;->pid:I

    .line 322
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p0

    iput p0, v0, Lmpl/HalProbe$Context;->uid:I

    .line 323
    new-instance p0, Ljava/io/File;

    const-string p1, "/proc/self/attr/current"

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-wide/16 v1, 0x100

    invoke-static {p0, v1, v2}, Lmpl/HalProbe;->readTextCapped(Ljava/io/File;J)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmpl/HalProbe;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lmpl/HalProbe$Context;->selinux:Ljava/lang/String;

    .line 324
    invoke-static {}, Lmpl/HalProbe;->readStatus()[Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lmpl/HalProbe$Context;->status:[Ljava/lang/String;

    .line 325
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput p0, v0, Lmpl/HalProbe$Context;->sdk:I

    .line 326
    sget-object p0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object p0, v0, Lmpl/HalProbe$Context;->release:Ljava/lang/String;

    .line 327
    sget-object p0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    iput-object p0, v0, Lmpl/HalProbe$Context;->device:Ljava/lang/String;

    .line 328
    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object p0, v0, Lmpl/HalProbe$Context;->model:Ljava/lang/String;

    .line 329
    sget-object p0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    iput-object p0, v0, Lmpl/HalProbe$Context;->fingerprint:Ljava/lang/String;

    return-object v0
.end method

.method private static contextJson(Lmpl/HalProbe$Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .line 946
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x1

    .line 947
    new-array v2, v1, [Z

    const/4 v3, 0x0

    aput-boolean v1, v2, v3

    const/16 v4, 0x7b

    .line 948
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 949
    iget v5, p0, Lmpl/HalProbe$Context;->pid:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "pid"

    invoke-static {v0, v2, v6, v5}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 950
    iget v5, p0, Lmpl/HalProbe$Context;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "uid"

    invoke-static {v0, v2, v6, v5}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 951
    iget-object v5, p0, Lmpl/HalProbe$Context;->selinux:Ljava/lang/String;

    invoke-static {v5}, Lmpl/HalProbe;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "selinux"

    invoke-static {v0, v2, v6, v5}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 952
    iget v5, p0, Lmpl/HalProbe$Context;->sdk:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "sdk"

    invoke-static {v0, v2, v6, v5}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 953
    iget-object v5, p0, Lmpl/HalProbe$Context;->release:Ljava/lang/String;

    invoke-static {v5}, Lmpl/HalProbe;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "release"

    invoke-static {v0, v2, v6, v5}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 954
    iget-object v5, p0, Lmpl/HalProbe$Context;->device:Ljava/lang/String;

    invoke-static {v5}, Lmpl/HalProbe;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "device"

    invoke-static {v0, v2, v6, v5}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 955
    iget-object v5, p0, Lmpl/HalProbe$Context;->model:Ljava/lang/String;

    invoke-static {v5}, Lmpl/HalProbe;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "model"

    invoke-static {v0, v2, v6, v5}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 956
    iget-object v5, p0, Lmpl/HalProbe$Context;->fingerprint:Ljava/lang/String;

    invoke-static {v5}, Lmpl/HalProbe;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "fingerprint"

    invoke-static {v0, v2, v6, v5}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 957
    iget-object v5, p0, Lmpl/HalProbe$Context;->status:[Ljava/lang/String;

    invoke-static {v5}, Lmpl/HalProbe;->stringMapJson([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status"

    invoke-static {v0, v2, v6, v5}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 958
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x100

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 959
    new-array v6, v1, [Z

    aput-boolean v1, v6, v3

    .line 960
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 961
    const-string v1, "/data/adb/tricky_store/run_hal_probe"

    invoke-static {v1}, Lmpl/HalProbe;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "path"

    invoke-static {v5, v6, v3, v1}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 962
    const-string v1, "/data/adb/tricky_store/run_hal_probe.done"

    invoke-static {v1}, Lmpl/HalProbe;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "done_path"

    invoke-static {v5, v6, v3, v1}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 963
    iget-boolean p0, p0, Lmpl/HalProbe$Context;->switchExisted:Z

    invoke-static {p0}, Lmpl/HalProbe;->bool(Z)Ljava/lang/String;

    move-result-object p0

    const-string v1, "existed"

    invoke-static {v5, v6, v1, p0}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 964
    const-string p0, "renamed_to"

    invoke-static {p1}, Lmpl/HalProbe;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, v6, p0, p1}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 965
    const-string p0, "rename_error"

    invoke-static {p2}, Lmpl/HalProbe;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, v6, p0, p1}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x7d

    .line 966
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 967
    const-string p1, "switch"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, v2, p1, p2}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 968
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 969
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static countLines(Ljava/lang/String;)I
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1570
    :goto_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ge v1, v4, :cond_1b

    .line 1571
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0xa

    if-ne v2, v4, :cond_17

    add-int/lit8 v3, v3, 0x1

    const/4 v2, 0x0

    goto :goto_18

    :cond_17
    const/4 v2, 0x1

    :goto_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_1b
    if-eqz v2, :cond_1e

    add-int/2addr v3, v5

    :cond_1e
    return v3
.end method

.method private static describe(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1601
    :cond_4
    invoke-static {p0}, Lmpl/HalProbe;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    .line 1602
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 1603
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_21

    const-string p0, ""

    goto :goto_2f

    :cond_21
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_2f
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static diagJson(Lmpl/HalProbe$Diag;)Ljava/lang/String;
    .registers 15

    .line 1093
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x800

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x1

    .line 1094
    new-array v2, v1, [Z

    const/4 v3, 0x0

    aput-boolean v1, v2, v3

    const/16 v4, 0x7b

    .line 1095
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1096
    iget-object v5, p0, Lmpl/HalProbe$Diag;->error:Ljava/lang/String;

    invoke-static {v5}, Lmpl/HalProbe;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "error"

    invoke-static {v0, v2, v6, v5}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 1097
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v7, 0x100

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1098
    new-array v8, v1, [Z

    aput-boolean v1, v8, v3

    .line 1099
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1100
    iget-object v9, p0, Lmpl/HalProbe$Diag;->qseePath:Ljava/lang/String;

    invoke-static {v9}, Lmpl/HalProbe;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "path"

    invoke-static {v5, v8, v10, v9}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 1101
    iget-boolean v9, p0, Lmpl/HalProbe$Diag;->qseeExists:Z

    invoke-static {v9}, Lmpl/HalProbe;->bool(Z)Ljava/lang/String;

    move-result-object v9

    const-string v11, "exists"

    invoke-static {v5, v8, v11, v9}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 1102
    iget-boolean v9, p0, Lmpl/HalProbe$Diag;->qseeCanRead:Z

    invoke-static {v9}, Lmpl/HalProbe;->bool(Z)Ljava/lang/String;

    move-result-object v9

    const-string v12, "can_read"

    invoke-static {v5, v8, v12, v9}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 1103
    iget-boolean v9, p0, Lmpl/HalProbe$Diag;->qseeOpened:Z

    invoke-static {v9}, Lmpl/HalProbe;->bool(Z)Ljava/lang/String;

    move-result-object v9

    const-string v12, "opened"

    invoke-static {v5, v8, v12, v9}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 1104
    iget-object v9, p0, Lmpl/HalProbe$Diag;->qseeError:Ljava/lang/String;

    invoke-static {v9}, Lmpl/HalProbe;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v8, v6, v9}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    const/16 v8, 0x7d

    .line 1105
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1106
    const-string v9, "qsee_ipc_irq_spss"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v2, v9, v5}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 1107
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v9, 0x300

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1108
    new-array v9, v1, [Z

    aput-boolean v1, v9, v3

    .line 1109
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1110
    iget v12, p0, Lmpl/HalProbe$Diag;->halPidRequested:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "pid_requested"

    invoke-static {v5, v9, v13, v12}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 1111
    iget v12, p0, Lmpl/HalProbe$Diag;->halPidFound:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "pid_found"

    invoke-static {v5, v9, v13, v12}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 1112
    iget v12, p0, Lmpl/HalProbe$Diag;->halPidUsed:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "pid_used"

    invoke-static {v5, v9, v13, v12}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 1113
    iget-object v12, p0, Lmpl/HalProbe$Diag;->mapsPath:Ljava/lang/String;

    invoke-static {v12}, Lmpl/HalProbe;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v9, v10, v12}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 1114
    iget-boolean v10, p0, Lmpl/HalProbe$Diag;->mapsExists:Z

    invoke-static {v10}, Lmpl/HalProbe;->bool(Z)Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v9, v11, v10}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 1115
    iget-wide v10, p0, Lmpl/HalProbe$Diag;->mapsSize:J

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    const-string v11, "size"

    invoke-static {v5, v9, v11, v10}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 1116
    iget-boolean v10, p0, Lmpl/HalProbe$Diag;->mapsReadable:Z

    invoke-static {v10}, Lmpl/HalProbe;->bool(Z)Ljava/lang/String;

    move-result-object v10

    const-string v11, "readable"

    invoke-static {v5, v9, v11, v10}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 1117
    iget-wide v10, p0, Lmpl/HalProbe$Diag;->mapsBytes:J

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    const-string v11, "bytes"

    invoke-static {v5, v9, v11, v10}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 1118
    iget-boolean v10, p0, Lmpl/HalProbe$Diag;->mapsTruncated:Z

    invoke-static {v10}, Lmpl/HalProbe;->bool(Z)Ljava/lang/String;

    move-result-object v10

    const-string v11, "truncated"

    invoke-static {v5, v9, v11, v10}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 1119
    iget v10, p0, Lmpl/HalProbe$Diag;->mapsLines:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "lines"

    invoke-static {v5, v9, v11, v10}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 1120
    iget-boolean v10, p0, Lmpl/HalProbe$Diag;->mapsHasQsee:Z

    invoke-static {v10}, Lmpl/HalProbe;->bool(Z)Ljava/lang/String;

    move-result-object v10

    const-string v11, "contains_qsee"

    invoke-static {v5, v9, v11, v10}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 1121
    iget-boolean v10, p0, Lmpl/HalProbe$Diag;->mapsHasSpss:Z

    invoke-static {v10}, Lmpl/HalProbe;->bool(Z)Ljava/lang/String;

    move-result-object v10

    const-string v11, "contains_spss"

    invoke-static {v5, v9, v11, v10}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 1122
    iget-boolean v10, p0, Lmpl/HalProbe$Diag;->mapsHasSoter:Z

    invoke-static {v10}, Lmpl/HalProbe;->bool(Z)Ljava/lang/String;

    move-result-object v10

    const-string v11, "contains_soter"

    invoke-static {v5, v9, v11, v10}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 1123
    iget-object v10, p0, Lmpl/HalProbe$Diag;->mapsFirstLines:[Ljava/lang/String;

    invoke-static {v10}, Lmpl/HalProbe;->stringArray([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "first_lines"

    invoke-static {v5, v9, v11, v10}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 1124
    iget-object v10, p0, Lmpl/HalProbe$Diag;->mapsError:Ljava/lang/String;

    invoke-static {v10}, Lmpl/HalProbe;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v9, v6, v10}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 1125
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1126
    const-string v6, "hal_maps"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v2, v6, v5}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 1127
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1128
    new-array v6, v1, [Z

    aput-boolean v1, v6, v3

    .line 1129
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1130
    iget-object v1, p0, Lmpl/HalProbe$Diag;->binder:[Ljava/lang/String;

    if-eqz v1, :cond_14e

    .line 1131
    :goto_137
    iget-object v1, p0, Lmpl/HalProbe$Diag;->binder:[Ljava/lang/String;

    array-length v1, v1

    if-ge v3, v1, :cond_14e

    .line 1132
    iget-object v1, p0, Lmpl/HalProbe$Diag;->binder:[Ljava/lang/String;

    aget-object v1, v1, v3

    iget-object v4, p0, Lmpl/HalProbe$Diag;->binderExists:[Z

    aget-boolean v4, v4, v3

    invoke-static {v4}, Lmpl/HalProbe;->bool(Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v6, v1, v4}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_137

    .line 1135
    :cond_14e
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1136
    const-string v1, "binder_devices"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v1, v3}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 1137
    iget-object p0, p0, Lmpl/HalProbe$Diag;->trickyStoreListing:[Ljava/lang/String;

    invoke-static {p0}, Lmpl/HalProbe;->stringArray([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "tricky_store"

    invoke-static {v0, v2, v1, p0}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 1138
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1139
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static diagnostics()Lmpl/HalProbe$Diag;
    .registers 5

    .line 821
    new-instance v0, Lmpl/HalProbe$Diag;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmpl/HalProbe$Diag;-><init>(Lmpl/HalProbe$1;)V

    .line 822
    new-instance v2, Ljava/io/File;

    const-string v3, "/dev/qsee_ipc_irq_spss"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 823
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lmpl/HalProbe$Diag;->qseePath:Ljava/lang/String;

    .line 824
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    iput-boolean v3, v0, Lmpl/HalProbe$Diag;->qseeExists:Z

    .line 825
    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v3

    iput-boolean v3, v0, Lmpl/HalProbe$Diag;->qseeCanRead:Z

    .line 830
    :try_start_1f
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_2d

    const/4 v1, 0x1

    .line 831
    :try_start_25
    iput-boolean v1, v0, Lmpl/HalProbe$Diag;->qseeOpened:Z
    :try_end_27
    .catchall {:try_start_25 .. :try_end_27} :catchall_2b

    .line 837
    :goto_27
    :try_start_27
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_39

    goto :goto_39

    :catchall_2b
    move-exception v1

    goto :goto_30

    :catchall_2d
    move-exception v2

    move-object v3, v1

    move-object v1, v2

    .line 833
    :goto_30
    :try_start_30
    invoke-static {v1}, Lmpl/HalProbe;->describe(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmpl/HalProbe$Diag;->qseeError:Ljava/lang/String;
    :try_end_36
    .catchall {:try_start_30 .. :try_end_36} :catchall_8c

    if-eqz v3, :cond_39

    goto :goto_27

    .line 844
    :catchall_39
    :cond_39
    :goto_39
    const-string v1, "/dev/vndbinder"

    const-string v2, "/dev/hwbinder"

    const-string v3, "/dev/binder"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmpl/HalProbe$Diag;->binder:[Ljava/lang/String;

    .line 845
    iget-object v1, v0, Lmpl/HalProbe$Diag;->binder:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [Z

    iput-object v1, v0, Lmpl/HalProbe$Diag;->binderExists:[Z

    const/4 v1, 0x0

    .line 846
    :goto_4d
    iget-object v2, v0, Lmpl/HalProbe$Diag;->binder:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_66

    .line 847
    iget-object v2, v0, Lmpl/HalProbe$Diag;->binderExists:[Z

    new-instance v3, Ljava/io/File;

    iget-object v4, v0, Lmpl/HalProbe$Diag;->binder:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    aput-boolean v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4d

    .line 850
    :cond_66
    const-string v1, "vendor.qti.hardware.soter-service"

    invoke-static {v1}, Lmpl/HalProbe;->findPid(Ljava/lang/String;)I

    move-result v1

    .line 851
    iput v1, v0, Lmpl/HalProbe$Diag;->halPidFound:I

    const/16 v2, 0xc2f

    .line 852
    iput v2, v0, Lmpl/HalProbe$Diag;->halPidRequested:I

    if-lez v1, :cond_75

    goto :goto_77

    :cond_75
    const/16 v1, 0xc2f

    .line 854
    :goto_77
    iput v1, v0, Lmpl/HalProbe$Diag;->halPidUsed:I

    .line 855
    invoke-static {v0, v1}, Lmpl/HalProbe;->readMaps(Lmpl/HalProbe$Diag;I)V

    .line 857
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/adb/tricky_store"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x28

    invoke-static {v1, v2}, Lmpl/HalProbe;->listDirCapped(Ljava/io/File;I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmpl/HalProbe$Diag;->trickyStoreListing:[Ljava/lang/String;

    return-object v0

    :catchall_8c
    move-exception v0

    if-eqz v3, :cond_92

    .line 837
    :try_start_8f
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_92
    .catchall {:try_start_8f .. :try_end_92} :catchall_92

    .line 842
    :catchall_92
    :cond_92
    throw v0
.end method

.method private static elapsedMs(J)J
    .registers 4

    .line 1547
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long/2addr v0, p0

    const-wide/32 p0, 0xf4240

    div-long/2addr v0, p0

    return-wide v0
.end method

.method private static execute(Ljava/lang/String;)Z
    .registers 18

    .line 231
    const-string v1, "/data/adb/tricky_store/run_hal_probe.done"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 232
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v15

    .line 233
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/adb/tricky_store/run_hal_probe"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    move-object/from16 v4, p0

    move v5, v3

    .line 235
    invoke-static {v4, v5}, Lmpl/HalProbe;->context(Ljava/lang/String;Z)Lmpl/HalProbe$Context;

    move-result-object v3

    const/4 v6, 0x0

    .line 238
    :try_start_1d
    invoke-static {}, Lmpl/HalProbe;->probeHal()Lmpl/HalProbe$Hal;

    move-result-object v0
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_24

    move-object v7, v0

    :goto_22
    move v10, v5

    goto :goto_38

    :catchall_24
    move-exception v0

    .line 240
    new-instance v7, Lmpl/HalProbe$Hal;

    invoke-direct {v7, v6}, Lmpl/HalProbe$Hal;-><init>(Lmpl/HalProbe$1;)V

    .line 241
    invoke-static {v0}, Lmpl/HalProbe;->describe(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lmpl/HalProbe$Hal;->error:Ljava/lang/String;

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v7, Lmpl/HalProbe$Hal;->codes:Ljava/util/List;

    goto :goto_22

    .line 244
    :goto_38
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 245
    new-instance v11, Lmpl/HalProbe$Scan;

    invoke-direct {v11, v6}, Lmpl/HalProbe$Scan;-><init>(Lmpl/HalProbe$1;)V

    .line 247
    :try_start_42
    invoke-static {v5, v11}, Lmpl/HalProbe;->scanSamples(Ljava/util/List;Lmpl/HalProbe$Scan;)V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_46

    goto :goto_5e

    :catchall_46
    move-exception v0

    .line 249
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "scan_error: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lmpl/HalProbe;->describe(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lmpl/HalProbe$Scan;->stopReason:Ljava/lang/String;

    const/4 v0, 0x1

    .line 250
    iput-boolean v0, v11, Lmpl/HalProbe$Scan;->truncated:Z

    .line 254
    :goto_5e
    :try_start_5e
    invoke-static {}, Lmpl/HalProbe;->diagnostics()Lmpl/HalProbe$Diag;

    move-result-object v0
    :try_end_62
    .catchall {:try_start_5e .. :try_end_62} :catchall_64

    move-object v12, v0

    goto :goto_70

    :catchall_64
    move-exception v0

    .line 256
    new-instance v12, Lmpl/HalProbe$Diag;

    invoke-direct {v12, v6}, Lmpl/HalProbe$Diag;-><init>(Lmpl/HalProbe$1;)V

    .line 257
    invoke-static {v0}, Lmpl/HalProbe;->describe(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v12, Lmpl/HalProbe$Diag;->error:Ljava/lang/String;

    :goto_70
    if-eqz v10, :cond_a2

    .line 264
    :try_start_72
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 265
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_88

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v10

    if-nez v10, :cond_88

    .line 266
    const-string v0, "cannot replace /data/adb/tricky_store/run_hal_probe.done"

    :goto_85
    move-object v1, v6

    move-object v6, v0

    goto :goto_97

    .line 267
    :cond_88
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_94

    goto :goto_97

    .line 270
    :cond_94
    const-string v0, "rename failed"
    :try_end_96
    .catchall {:try_start_72 .. :try_end_96} :catchall_9a

    goto :goto_85

    :goto_97
    move-object v13, v1

    move-object v14, v6

    goto :goto_a4

    :catchall_9a
    move-exception v0

    .line 273
    invoke-static {v0}, Lmpl/HalProbe;->describe(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    move-object v13, v6

    goto :goto_a4

    :cond_a2
    move-object v13, v6

    move-object v14, v13

    .line 276
    :goto_a4
    invoke-static {}, Lmpl/HalProbe;->shutdownPool()V

    move-object v6, v11

    .line 280
    invoke-static/range {v15 .. v16}, Lmpl/HalProbe;->elapsedMs(J)J

    move-result-wide v10

    move-object v4, v7

    move-object v7, v12

    .line 279
    const-string v12, "/sdcard/Download/soter_hal_probe.json"

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v14}, Lmpl/HalProbe;->buildJson(Ljava/lang/String;Lmpl/HalProbe$Context;Lmpl/HalProbe$Hal;Ljava/util/List;Lmpl/HalProbe$Scan;Lmpl/HalProbe$Diag;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 281
    invoke-static {v12, v0}, Lmpl/HalProbe;->writeText(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_cc

    .line 285
    invoke-static/range {v15 .. v16}, Lmpl/HalProbe;->elapsedMs(J)J

    move-result-wide v10

    .line 284
    const-string v12, "/data/local/tmp/soter_hal_probe.json"

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v14}, Lmpl/HalProbe;->buildJson(Ljava/lang/String;Lmpl/HalProbe$Context;Lmpl/HalProbe$Hal;Ljava/util/List;Lmpl/HalProbe$Scan;Lmpl/HalProbe$Diag;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 286
    invoke-static {v12, v0}, Lmpl/HalProbe;->writeText(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 291
    :cond_cc
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 292
    iget-object v2, v4, Lmpl/HalProbe$Hal;->codes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :cond_da
    :goto_da
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_146

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lmpl/HalProbe$CodeResult;

    add-int/lit8 v8, v8, 0x1

    .line 294
    iget-boolean v10, v9, Lmpl/HalProbe$CodeResult;->ok:Z

    if-eqz v10, :cond_ee

    add-int/lit8 v7, v7, 0x1

    .line 297
    :cond_ee
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    const/16 v11, 0x7d0

    if-ge v10, v11, :cond_da

    .line 298
    const-string v10, "code="

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v9, Lmpl/HalProbe$CodeResult;->code:I

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v10, 0x2f

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v10, v9, Lmpl/HalProbe$CodeResult;->variant:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " ok="

    .line 299
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, v9, Lmpl/HalProbe$CodeResult;->ok:Z

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " size="

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v9, Lmpl/HalProbe$CodeResult;->dataSize:I

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " hex="

    .line 300
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v9, Lmpl/HalProbe$CodeResult;->hex:Ljava/lang/String;

    if-nez v10, :cond_12a

    const-string v10, ""

    goto :goto_12c

    :cond_12a
    iget-object v10, v9, Lmpl/HalProbe$CodeResult;->hex:Ljava/lang/String;

    :goto_12c
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " err="

    .line 301
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v9, Lmpl/HalProbe$CodeResult;->exception:Ljava/lang/String;

    if-nez v10, :cond_13b

    const-string v9, "-"

    goto :goto_13d

    :cond_13b
    iget-object v9, v9, Lmpl/HalProbe$CodeResult;->exception:Ljava/lang/String;

    :goto_13d
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " | "

    .line 302
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_da

    .line 305
    :cond_146
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v9, "hal found="

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v9, v4, Lmpl/HalProbe$Hal;->found:Z

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " descriptor="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v4, Lmpl/HalProbe$Hal;->descriptor:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " alive="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, v4, Lmpl/HalProbe$Hal;->alive:Z

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " ping="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v4, Lmpl/HalProbe$Hal;->ping:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " tx="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "MPL-HALPROBE"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "tx-journal "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    const/16 v8, 0x708

    if-le v7, v8, :cond_19d

    .line 309
    invoke-virtual {v1, v3, v8}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1a1

    :cond_19d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1a1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 308
    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "samples="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " files_read="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v6, Lmpl/HalProbe$Scan;->filesRead:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v6, Lmpl/HalProbe$Scan;->bytesRead:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Lmpl/HalProbe$Scan;->stopReason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "written="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " switch_renamed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " switch_error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private static extract(Ljava/io/File;[B)Lmpl/HalProbe$Sample;
    .registers 7

    .line 707
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lmpl/HalProbe;->LATIN1:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 708
    new-instance p1, Lmpl/HalProbe$Sample;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Lmpl/HalProbe$Sample;-><init>(Lmpl/HalProbe$1;)V

    .line 709
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lmpl/HalProbe$Sample;->path:Ljava/lang/String;

    .line 710
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    iput-wide v1, p1, Lmpl/HalProbe$Sample;->size:J

    .line 711
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    iput-wide v1, p1, Lmpl/HalProbe$Sample;->mtimeMs:J

    const/4 p0, 0x2

    .line 712
    new-array v1, p0, [Ljava/util/regex/Pattern;

    sget-object v2, Lmpl/HalProbe;->RE_CPU_ID_Q:Ljava/util/regex/Pattern;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lmpl/HalProbe;->RE_CPU_ID_U:Ljava/util/regex/Pattern;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lmpl/HalProbe;->firstMatch(Ljava/lang/String;[Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lmpl/HalProbe$Sample;->cpuId:Ljava/lang/String;

    .line 713
    new-array v1, v4, [Ljava/util/regex/Pattern;

    sget-object v2, Lmpl/HalProbe;->RE_COUNTER:Ljava/util/regex/Pattern;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lmpl/HalProbe;->firstMatch(Ljava/lang/String;[Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lmpl/HalProbe$Sample;->counter:Ljava/lang/String;

    .line 714
    new-array v1, v4, [Ljava/util/regex/Pattern;

    sget-object v2, Lmpl/HalProbe;->RE_UID:Ljava/util/regex/Pattern;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lmpl/HalProbe;->firstMatch(Ljava/lang/String;[Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lmpl/HalProbe$Sample;->uid:Ljava/lang/String;

    .line 715
    new-array p0, p0, [Ljava/util/regex/Pattern;

    sget-object v1, Lmpl/HalProbe;->RE_PUB_KEY_Q:Ljava/util/regex/Pattern;

    aput-object v1, p0, v3

    sget-object v1, Lmpl/HalProbe;->RE_PUB_KEY_U:Ljava/util/regex/Pattern;

    aput-object v1, p0, v4

    invoke-static {v0, p0}, Lmpl/HalProbe;->firstMatch(Ljava/lang/String;[Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x20

    invoke-static {p0, v1}, Lmpl/HalProbe;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lmpl/HalProbe$Sample;->pubKey32:Ljava/lang/String;

    .line 716
    invoke-static {v0, p1}, Lmpl/HalProbe;->parseCerts(Ljava/lang/String;Lmpl/HalProbe$Sample;)V

    return-object p1
.end method

.method private static field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    .line 1487
    aget-boolean v1, p1, v0

    if-nez v1, :cond_a

    const/16 v1, 0x2c

    .line 1488
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1490
    :cond_a
    aput-boolean v0, p1, v0

    .line 1491
    invoke-static {p2}, Lmpl/HalProbe;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3a

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-nez p3, :cond_1c

    const-string p3, "null"

    :cond_1c
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static findPid(Ljava/lang/String;)I
    .registers 9

    .line 885
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 886
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_f

    return v1

    .line 890
    :cond_f
    array-length v2, v0

    const/4 v3, 0x0

    :goto_11
    if-ge v3, v2, :cond_4a

    aget-object v4, v0, v3

    .line 891
    invoke-static {v4}, Lmpl/HalProbe;->isDigits(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1c

    goto :goto_47

    .line 894
    :cond_1c
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "/proc/"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/cmdline"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-wide/16 v6, 0x200

    invoke-static {v5, v6, v7}, Lmpl/HalProbe;->readTextCapped(Ljava/io/File;J)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_47

    .line 895
    invoke-virtual {v5, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_47

    .line 897
    :try_start_42
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_46
    .catchall {:try_start_42 .. :try_end_46} :catchall_47

    return p0

    :catchall_47
    :cond_47
    :goto_47
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_4a
    return v1
.end method

.method private static firstLines(Ljava/lang/String;I)[Ljava/lang/String;
    .registers 8

    .line 1583
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1585
    :goto_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_28

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v4, p1, :cond_28

    .line 1586
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_25

    .line 1587
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v2, 0x1

    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1591
    :cond_28
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_43

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_43

    .line 1592
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v2, 0xc8

    if-le p1, v2, :cond_40

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_40
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1594
    :cond_43
    new-array p0, v1, [Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method private static varargs firstMatch(Ljava/lang/String;[Ljava/util/regex/Pattern;)Ljava/lang/String;
    .registers 6

    .line 1337
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_19

    aget-object v2, p1, v1

    .line 1338
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1339
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_16

    const/4 p0, 0x1

    .line 1340
    invoke-virtual {v2, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_19
    const/4 p0, 0x0

    return-object p0
.end method

.method private static halJson(Lmpl/HalProbe$Hal;)Ljava/lang/String;
    .registers 6

    .line 973
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x4000

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x1

    .line 974
    new-array v2, v1, [Z

    const/4 v3, 0x0

    aput-boolean v1, v2, v3

    const/16 v1, 0x7b

    .line 975
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 976
    iget-object v1, p0, Lmpl/HalProbe$Hal;->name:Ljava/lang/String;

    invoke-static {v1}, Lmpl/HalProbe;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "name"

    invoke-static {v0, v2, v3, v1}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 977
    iget-boolean v1, p0, Lmpl/HalProbe$Hal;->found:Z

    invoke-static {v1}, Lmpl/HalProbe;->bool(Z)Ljava/lang/String;

    move-result-object v1

    const-string v3, "found"

    invoke-static {v0, v2, v3, v1}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 978
    iget-object v1, p0, Lmpl/HalProbe$Hal;->lookup:Ljava/lang/String;

    invoke-static {v1}, Lmpl/HalProbe;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "lookup"

    invoke-static {v0, v2, v3, v1}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 979
    iget-wide v3, p0, Lmpl/HalProbe$Hal;->lookupMs:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v3, "lookup_ms"

    invoke-static {v0, v2, v3, v1}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 980
    iget-object v1, p0, Lmpl/HalProbe$Hal;->error:Ljava/lang/String;

    invoke-static {v1}, Lmpl/HalProbe;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "error"

    invoke-static {v0, v2, v3, v1}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 981
    iget v1, p0, Lmpl/HalProbe$Hal;->serviceCount:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "service_count"

    invoke-static {v0, v2, v3, v1}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 982
    iget-boolean v1, p0, Lmpl/HalProbe$Hal;->listed:Z

    invoke-static {v1}, Lmpl/HalProbe;->bool(Z)Ljava/lang/String;

    move-result-object v1

    const-string v3, "listed_in_service_list"

    invoke-static {v0, v2, v3, v1}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 983
    iget-object v1, p0, Lmpl/HalProbe$Hal;->listSource:Ljava/lang/String;

    invoke-static {v1}, Lmpl/HalProbe;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "list_source"

    invoke-static {v0, v2, v3, v1}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 984
    iget-object v1, p0, Lmpl/HalProbe$Hal;->listError:Ljava/lang/String;

    invoke-static {v1}, Lmpl/HalProbe;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "list_error"

    invoke-static {v0, v2, v3, v1}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 985
    iget-object v1, p0, Lmpl/HalProbe$Hal;->descriptor:Ljava/lang/String;

    invoke-static {v1}, Lmpl/HalProbe;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "descriptor"

    invoke-static {v0, v2, v3, v1}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 986
    iget-object v1, p0, Lmpl/HalProbe$Hal;->descriptorError:Ljava/lang/String;

    invoke-static {v1}, Lmpl/HalProbe;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "descriptor_error"

    invoke-static {v0, v2, v3, v1}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 987
    iget-object v1, p0, Lmpl/HalProbe$Hal;->descriptorNote:Ljava/lang/String;

    invoke-static {v1}, Lmpl/HalProbe;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "descriptor_note"

    invoke-static {v0, v2, v3, v1}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 988
    iget-boolean v1, p0, Lmpl/HalProbe$Hal;->alive:Z

    invoke-static {v1}, Lmpl/HalProbe;->bool(Z)Ljava/lang/String;

    move-result-object v1

    const-string v3, "binder_alive"

    invoke-static {v0, v2, v3, v1}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 989
    iget-object v1, p0, Lmpl/HalProbe$Hal;->aliveError:Ljava/lang/String;

    invoke-static {v1}, Lmpl/HalProbe;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "binder_alive_error"

    invoke-static {v0, v2, v3, v1}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 990
    iget-boolean v1, p0, Lmpl/HalProbe$Hal;->ping:Z

    invoke-static {v1}, Lmpl/HalProbe;->bool(Z)Ljava/lang/String;

    move-result-object v1

    const-string v3, "ping"

    invoke-static {v0, v2, v3, v1}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 991
    iget-object v1, p0, Lmpl/HalProbe$Hal;->pingError:Ljava/lang/String;

    invoke-static {v1}, Lmpl/HalProbe;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "ping_error"

    invoke-static {v0, v2, v3, v1}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 992
    iget-boolean v1, p0, Lmpl/HalProbe$Hal;->truncated:Z

    invoke-static {v1}, Lmpl/HalProbe;->bool(Z)Ljava/lang/String;

    move-result-object v1

    const-string v3, "truncated"

    invoke-static {v0, v2, v3, v1}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 993
    iget-object v1, p0, Lmpl/HalProbe$Hal;->truncatedReason:Ljava/lang/String;

    invoke-static {v1}, Lmpl/HalProbe;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "truncated_reason"

    invoke-static {v0, v2, v3, v1}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 994
    iget-object p0, p0, Lmpl/HalProbe$Hal;->codes:Ljava/util/List;

    invoke-static {p0}, Lmpl/HalProbe;->codesJson(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "codes"

    invoke-static {v0, v2, v1, p0}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x7d

    .line 995
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 996
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static hasNul([B)Z
    .registers 5

    .line 1269
    array-length v0, p0

    const/16 v1, 0x400

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_14

    .line 1271
    aget-byte v3, p0, v2

    if-nez v3, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_14
    return v1
.end method

.method private static hexPrefix(Landroid/os/Parcel;I)Ljava/lang/String;
    .registers 10

    .line 1372
    invoke-virtual {p0}, Landroid/os/Parcel;->dataSize()I

    move-result v0

    .line 1373
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-gtz p1, :cond_d

    .line 1375
    const-string p0, ""

    return-object p0

    .line 1377
    :cond_d
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 1378
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, p1, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    .line 1380
    :try_start_19
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    const/4 v3, 0x0

    :goto_1d
    if-ge v3, p1, :cond_47

    .line 1383
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    const/4 v5, 0x0

    :goto_24
    const/4 v6, 0x4

    if-ge v5, v6, :cond_44

    add-int v6, v3, v5

    if-ge v6, p1, :cond_44

    mul-int/lit8 v6, v5, 0x8

    ushr-int v6, v4, v6

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x10

    if-ge v6, v7, :cond_3a

    const/16 v7, 0x30

    .line 1387
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1389
    :cond_3a
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_41
    .catchall {:try_start_19 .. :try_end_41} :catchall_47

    add-int/lit8 v5, v5, 0x1

    goto :goto_24

    :cond_44
    add-int/lit8 v3, v3, 0x4

    goto :goto_1d

    .line 1397
    :catchall_47
    :cond_47
    :try_start_47
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_4a

    .line 1402
    :catchall_4a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9

    .line 1354
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 1355
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v6, v0, v5

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_c
    if-gt v2, v6, :cond_1e

    const/4 v1, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    .line 1357
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p0

    if-eqz p0, :cond_19

    return v2

    :cond_19
    add-int/lit8 v2, v2, 0x1

    move-object p0, v0

    move-object p1, v3

    goto :goto_c

    :cond_1e
    const/4 p0, -0x1

    return p0
.end method

.method private static intArray([I)Ljava/lang/String;
    .registers 1

    .line 1446
    invoke-static {p0}, Lmpl/HalProbe;->intsCsv([I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static intPrefix(Landroid/os/Parcel;I)[I
    .registers 7

    .line 1406
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    const/4 v1, 0x0

    .line 1408
    :try_start_5
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1409
    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-gtz p1, :cond_1a

    .line 1411
    new-array p1, v1, [I
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_2c

    .line 1422
    :try_start_16
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_19

    :catchall_19
    return-object p1

    .line 1413
    :cond_1a
    :try_start_1a
    new-array v2, p1, [I

    const/4 v3, 0x0

    :goto_1d
    if-ge v3, p1, :cond_28

    .line 1415
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    aput v4, v2, v3
    :try_end_25
    .catchall {:try_start_1a .. :try_end_25} :catchall_2c

    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 1422
    :cond_28
    :try_start_28
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2b

    :catchall_2b
    return-object v2

    .line 1419
    :catchall_2c
    :try_start_2c
    new-array p1, v1, [I
    :try_end_2e
    .catchall {:try_start_2c .. :try_end_2e} :catchall_32

    .line 1422
    :try_start_2e
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_31

    :catchall_31
    return-object p1

    :catchall_32
    move-exception p1

    :try_start_33
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_36

    .line 1426
    :catchall_36
    throw p1
.end method

.method private static intsCsv([I)Ljava/lang/String;
    .registers 4

    if-eqz p0, :cond_30

    .line 1430
    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_30

    .line 1433
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x5b

    .line 1434
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 1435
    :goto_14
    array-length v2, p0

    if-ge v1, v2, :cond_26

    if-lez v1, :cond_1e

    const/16 v2, 0x2c

    .line 1437
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1439
    :cond_1e
    aget v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_26
    const/16 p0, 0x5d

    .line 1441
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1442
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1431
    :cond_30
    :goto_30
    const-string p0, "[]"

    return-object p0
.end method

.method private static isDigits(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_24

    .line 1555
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_24

    :cond_a
    const/4 v1, 0x0

    .line 1558
    :goto_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 1559
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_21

    const/16 v3, 0x39

    if-le v2, v3, :cond_1e

    goto :goto_21

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_21
    :goto_21
    return v0

    :cond_22
    const/4 p0, 0x1

    return p0

    :cond_24
    :goto_24
    return v0
.end method

.method private static iso(J)Ljava/lang/String;
    .registers 5

    .line 1541
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1542
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1543
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static joinErrors([Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 1616
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1617
    array-length v1, p0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_1f

    aget-object v3, p0, v2

    if-nez v3, :cond_e

    goto :goto_1c

    .line 1621
    :cond_e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_19

    .line 1622
    const-string v4, " | "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1624
    :cond_19
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1626
    :cond_1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-nez p0, :cond_27

    const/4 p0, 0x0

    return-object p0

    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static listDirCapped(Ljava/io/File;I)[Ljava/lang/String;
    .registers 4

    .line 907
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 911
    :cond_8
    invoke-static {p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 912
    array-length v0, p0

    if-gt v0, p1, :cond_f

    return-object p0

    .line 915
    :cond_f
    new-array v0, p1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 916
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_17

    .line 216
    array-length v1, p0

    if-lez v1, :cond_17

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "standalone:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object p0, p0, v0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_19

    :cond_17
    const-string p0, "standalone"

    .line 219
    :goto_19
    :try_start_19
    invoke-static {p0}, Lmpl/HalProbe;->execute(Ljava/lang/String;)Z

    move-result p0
    :try_end_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_22

    if-eqz p0, :cond_20

    goto :goto_3b

    :cond_20
    const/4 v0, 0x2

    goto :goto_3b

    :catchall_22
    move-exception p0

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FATAL "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lmpl/HalProbe;->describe(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MPL-HALPROBE"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 223
    :goto_3b
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method private static matchingBracket(Ljava/lang/String;I)I
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 750
    :goto_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge p1, v4, :cond_38

    .line 751
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x22

    const/4 v6, 0x1

    if-eqz v1, :cond_21

    if-eqz v2, :cond_17

    const/4 v2, 0x0

    goto :goto_35

    :cond_17
    const/16 v7, 0x5c

    if-ne v4, v7, :cond_1d

    const/4 v2, 0x1

    goto :goto_35

    :cond_1d
    if-ne v4, v5, :cond_35

    const/4 v1, 0x0

    goto :goto_35

    :cond_21
    if-ne v4, v5, :cond_25

    const/4 v1, 0x1

    goto :goto_35

    :cond_25
    const/16 v5, 0x5b

    if-ne v4, v5, :cond_2c

    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    :cond_2c
    const/16 v5, 0x5d

    if-ne v4, v5, :cond_35

    add-int/lit8 v3, v3, -0x1

    if-nez v3, :cond_35

    return p1

    :cond_35
    :goto_35
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_38
    const/4 p0, -0x1

    return p0
.end method

.method private static methodName(I)Ljava/lang/String;
    .registers 3

    const v0, 0xffffff

    if-ne p0, v0, :cond_8

    .line 500
    const-string p0, "getInterfaceVersion()"

    return-object p0

    :cond_8
    const v0, 0xfffffe

    if-ne p0, v0, :cond_10

    .line 503
    const-string p0, "getInterfaceHash()"

    return-object p0

    :cond_10
    const/4 v0, 0x1

    if-lt p0, v0, :cond_1b

    .line 505
    sget-object v0, Lmpl/HalProbe;->METHOD:[Ljava/lang/String;

    array-length v1, v0

    if-ge p0, v1, :cond_1b

    .line 506
    aget-object p0, v0, p0

    return-object p0

    .line 508
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unknown(code "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static mode0644(Ljava/io/File;)V
    .registers 9

    .line 1186
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1188
    :try_start_6
    const-string v3, "android.system.Os"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 1189
    const-string v4, "chmod"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v2

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v1

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/16 v4, 0x1a4

    .line 1190
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v2

    aput-object v4, v5, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2d
    .catchall {:try_start_6 .. :try_end_2d} :catchall_2e

    return-void

    .line 1196
    :catchall_2e
    :try_start_2e
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    const-string v4, "/system/bin/chmod"

    const-string v5, "644"

    filled-new-array {v4, v5, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 1198
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    move-result v0
    :try_end_42
    .catchall {:try_start_2e .. :try_end_42} :catchall_45

    if-nez v0, :cond_45

    goto :goto_4e

    .line 1205
    :catchall_45
    :cond_45
    :try_start_45
    invoke-virtual {p0, v1, v2}, Ljava/io/File;->setReadable(ZZ)Z

    .line 1206
    invoke-virtual {p0, v1, v1}, Ljava/io/File;->setWritable(ZZ)Z

    .line 1207
    invoke-virtual {p0, v2, v2}, Ljava/io/File;->setExecutable(ZZ)Z
    :try_end_4e
    .catchall {:try_start_45 .. :try_end_4e} :catchall_4e

    :catchall_4e
    :goto_4e
    return-void
.end method

.method private static mutating(I)Z
    .registers 3

    if-lez p0, :cond_d

    .line 495
    sget-object v0, Lmpl/HalProbe;->MUTATING:[Z

    array-length v1, v0

    if-ge p0, v1, :cond_d

    aget-boolean p0, v0, p0

    if-eqz p0, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method private static parseCerts(Ljava/lang/String;Lmpl/HalProbe$Sample;)V
    .registers 5

    .line 721
    const-string v0, "\"certs\""

    invoke-static {p0, v0}, Lmpl/HalProbe;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_e

    .line 723
    const-string v0, "certs"

    invoke-static {p0, v0}, Lmpl/HalProbe;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_e
    if-gez v0, :cond_11

    goto :goto_52

    :cond_11
    const/16 v1, 0x5b

    .line 728
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-gez v0, :cond_1a

    goto :goto_52

    .line 732
    :cond_1a
    invoke-static {p0, v0}, Lmpl/HalProbe;->matchingBracket(Ljava/lang/String;I)I

    move-result v1

    if-gez v1, :cond_25

    .line 734
    const-string p0, "certs array not closed"

    iput-object p0, p1, Lmpl/HalProbe$Sample;->certsNote:Ljava/lang/String;

    return-void

    :cond_25
    const/4 v2, 0x1

    add-int/2addr v0, v2

    .line 737
    invoke-static {p0, v0, v1}, Lmpl/HalProbe;->splitTopLevel(Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0

    .line 738
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p1, Lmpl/HalProbe$Sample;->certs:I

    .line 739
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_52

    const/4 v0, 0x0

    .line 740
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const/16 v1, 0x200

    .line 741
    invoke-static {p0, v1}, Lmpl/HalProbe;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lmpl/HalProbe$Sample;->firstCert:Ljava/lang/String;

    .line 742
    const-string v1, "BEGIN CERTIFICATE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_4f

    goto :goto_50

    :cond_4f
    const/4 v2, 0x0

    :goto_50
    iput-boolean v2, p1, Lmpl/HalProbe$Sample;->certPem:Z

    :cond_52
    :goto_52
    return-void
.end method

.method private static pool()Ljava/util/concurrent/ExecutorService;
    .registers 2

    .line 1218
    const-class v0, Lmpl/HalProbe;

    monitor-enter v0

    .line 1219
    :try_start_3
    sget-object v1, Lmpl/HalProbe;->pool:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_12

    .line 1220
    new-instance v1, Lmpl/HalProbe$4;

    invoke-direct {v1}, Lmpl/HalProbe$4;-><init>()V

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sput-object v1, Lmpl/HalProbe;->pool:Ljava/util/concurrent/ExecutorService;

    .line 1229
    :cond_12
    sget-object v1, Lmpl/HalProbe;->pool:Ljava/util/concurrent/ExecutorService;

    monitor-exit v0

    return-object v1

    :catchall_16
    move-exception v1

    .line 1230
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method private static probeHal()Lmpl/HalProbe$Hal;
    .registers 16

    .line 338
    new-instance v0, Lmpl/HalProbe$Hal;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmpl/HalProbe$Hal;-><init>(Lmpl/HalProbe$1;)V

    .line 339
    const-string v2, "vendor.qti.hardware.soter.ISoter/default"

    iput-object v2, v0, Lmpl/HalProbe$Hal;->name:Ljava/lang/String;

    .line 340
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lmpl/HalProbe$Hal;->codes:Ljava/util/List;

    .line 342
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    const/4 v5, 0x4

    .line 344
    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 348
    :try_start_19
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7
    :try_end_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_26

    if-eqz v7, :cond_3c

    .line 350
    :try_start_1f
    const-string v8, "direct:android.os.ServiceManager.getService"

    iput-object v8, v0, Lmpl/HalProbe$Hal;->lookup:Ljava/lang/String;
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_24

    goto :goto_3c

    :catchall_24
    move-exception v8

    goto :goto_28

    :catchall_26
    move-exception v8

    move-object v7, v1

    .line 353
    :goto_28
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "direct "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lmpl/HalProbe;->describe(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v6

    .line 356
    :cond_3c
    :goto_3c
    const-string v8, "getService"

    const-string v9, "android.os.ServiceManager"

    const/4 v10, 0x1

    if-nez v7, :cond_7f

    .line 358
    :try_start_43
    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    .line 359
    new-array v12, v10, [Ljava/lang/Class;

    const-class v13, Ljava/lang/String;

    aput-object v13, v12, v6

    invoke-virtual {v11, v8, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 360
    new-array v12, v10, [Ljava/lang/Object;

    aput-object v2, v12, v6

    invoke-virtual {v11, v1, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 361
    instance-of v12, v11, Landroid/os/IBinder;

    if-eqz v12, :cond_7f

    .line 362
    check-cast v11, Landroid/os/IBinder;
    :try_end_5f
    .catchall {:try_start_43 .. :try_end_5f} :catchall_66

    .line 363
    :try_start_5f
    const-string v7, "reflect:ServiceManager.getService"

    iput-object v7, v0, Lmpl/HalProbe$Hal;->lookup:Ljava/lang/String;
    :try_end_63
    .catchall {:try_start_5f .. :try_end_63} :catchall_64

    goto :goto_7e

    :catchall_64
    move-exception v7

    goto :goto_6a

    :catchall_66
    move-exception v11

    move-object v15, v11

    move-object v11, v7

    move-object v7, v15

    .line 366
    :goto_6a
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "reflect "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lmpl/HalProbe;->describe(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v10

    :goto_7e
    move-object v7, v11

    :cond_7f
    const/4 v11, 0x2

    if-nez v7, :cond_c1

    .line 372
    :try_start_82
    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    .line 373
    new-array v13, v10, [Ljava/lang/Class;

    const-class v14, Ljava/lang/String;

    aput-object v14, v13, v6

    invoke-virtual {v12, v8, v13}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 374
    invoke-virtual {v8, v10}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 375
    new-array v12, v10, [Ljava/lang/Object;

    aput-object v2, v12, v6

    invoke-virtual {v8, v1, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 376
    instance-of v12, v8, Landroid/os/IBinder;

    if-eqz v12, :cond_c1

    .line 377
    check-cast v8, Landroid/os/IBinder;
    :try_end_a1
    .catchall {:try_start_82 .. :try_end_a1} :catchall_a8

    .line 378
    :try_start_a1
    const-string v7, "reflect+accessible:ServiceManager.getService"

    iput-object v7, v0, Lmpl/HalProbe$Hal;->lookup:Ljava/lang/String;
    :try_end_a5
    .catchall {:try_start_a1 .. :try_end_a5} :catchall_a6

    goto :goto_c0

    :catchall_a6
    move-exception v7

    goto :goto_ac

    :catchall_a8
    move-exception v8

    move-object v15, v8

    move-object v8, v7

    move-object v7, v15

    .line 381
    :goto_ac
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "reflect+accessible "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lmpl/HalProbe;->describe(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v11

    :goto_c0
    move-object v7, v8

    .line 384
    :cond_c1
    invoke-static {v3, v4}, Lmpl/HalProbe;->elapsedMs(J)J

    move-result-wide v3

    iput-wide v3, v0, Lmpl/HalProbe$Hal;->lookupMs:J

    if-eqz v7, :cond_cb

    const/4 v3, 0x1

    goto :goto_cc

    :cond_cb
    const/4 v3, 0x0

    .line 385
    :goto_cc
    iput-boolean v3, v0, Lmpl/HalProbe$Hal;->found:Z

    .line 386
    iget-boolean v3, v0, Lmpl/HalProbe$Hal;->found:Z

    if-nez v3, :cond_d8

    .line 387
    invoke-static {v5}, Lmpl/HalProbe;->joinErrors([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lmpl/HalProbe$Hal;->error:Ljava/lang/String;

    .line 392
    :cond_d8
    :try_start_d8
    invoke-static {}, Landroid/os/ServiceManager;->listServices()[Ljava/lang/String;

    move-result-object v3
    :try_end_dc
    .catchall {:try_start_d8 .. :try_end_dc} :catchall_e3

    .line 393
    :try_start_dc
    const-string v4, "direct"

    iput-object v4, v0, Lmpl/HalProbe$Hal;->listSource:Ljava/lang/String;
    :try_end_e0
    .catchall {:try_start_dc .. :try_end_e0} :catchall_e1

    goto :goto_129

    :catchall_e1
    move-exception v4

    goto :goto_e5

    :catchall_e3
    move-exception v4

    move-object v3, v1

    .line 395
    :goto_e5
    invoke-static {v4}, Lmpl/HalProbe;->describe(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lmpl/HalProbe$Hal;->listError:Ljava/lang/String;

    .line 397
    :try_start_eb
    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 398
    const-string v5, "listServices"

    new-array v8, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 399
    invoke-virtual {v4, v1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 400
    instance-of v5, v4, [Ljava/lang/String;

    if-eqz v5, :cond_129

    .line 401
    check-cast v4, [Ljava/lang/String;
    :try_end_101
    .catchall {:try_start_eb .. :try_end_101} :catchall_108

    .line 402
    :try_start_101
    const-string v3, "reflect"

    iput-object v3, v0, Lmpl/HalProbe$Hal;->listSource:Ljava/lang/String;
    :try_end_105
    .catchall {:try_start_101 .. :try_end_105} :catchall_106

    goto :goto_128

    :catchall_106
    move-exception v3

    goto :goto_10c

    :catchall_108
    move-exception v4

    move-object v15, v4

    move-object v4, v3

    move-object v3, v15

    .line 405
    :goto_10c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Lmpl/HalProbe$Hal;->listError:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " / "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lmpl/HalProbe;->describe(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lmpl/HalProbe$Hal;->listError:Ljava/lang/String;

    :goto_128
    move-object v3, v4

    :cond_129
    :goto_129
    if-eqz v3, :cond_140

    .line 409
    array-length v4, v3

    iput v4, v0, Lmpl/HalProbe$Hal;->serviceCount:I

    .line 410
    array-length v4, v3

    const/4 v5, 0x0

    :goto_130
    if-ge v5, v4, :cond_140

    aget-object v8, v3, v5

    .line 411
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13d

    .line 412
    iput-boolean v10, v0, Lmpl/HalProbe$Hal;->listed:Z

    goto :goto_140

    :cond_13d
    add-int/lit8 v5, v5, 0x1

    goto :goto_130

    :cond_140
    :goto_140
    if-nez v7, :cond_143

    return-object v0

    .line 421
    :cond_143
    iput-object v7, v0, Lmpl/HalProbe$Hal;->binder:Landroid/os/IBinder;

    .line 423
    :try_start_145
    invoke-interface {v7}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v2

    iput-boolean v2, v0, Lmpl/HalProbe$Hal;->alive:Z
    :try_end_14b
    .catchall {:try_start_145 .. :try_end_14b} :catchall_14c

    goto :goto_153

    :catchall_14c
    move-exception v2

    .line 425
    invoke-static {v2}, Lmpl/HalProbe;->describe(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lmpl/HalProbe$Hal;->aliveError:Ljava/lang/String;

    .line 428
    :goto_153
    :try_start_153
    invoke-interface {v7}, Landroid/os/IBinder;->pingBinder()Z

    move-result v2

    iput-boolean v2, v0, Lmpl/HalProbe$Hal;->ping:Z
    :try_end_159
    .catchall {:try_start_153 .. :try_end_159} :catchall_15a

    goto :goto_161

    :catchall_15a
    move-exception v2

    .line 430
    invoke-static {v2}, Lmpl/HalProbe;->describe(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lmpl/HalProbe$Hal;->pingError:Ljava/lang/String;

    .line 434
    :goto_161
    :try_start_161
    invoke-interface {v7}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v1
    :try_end_165
    .catchall {:try_start_161 .. :try_end_165} :catchall_166

    goto :goto_16d

    :catchall_166
    move-exception v2

    .line 436
    invoke-static {v2}, Lmpl/HalProbe;->describe(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lmpl/HalProbe$Hal;->descriptorError:Ljava/lang/String;

    .line 438
    :goto_16d
    const-string v2, "vendor.qti.hardware.soter.ISoter"

    if-eqz v1, :cond_17a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_178

    goto :goto_17a

    :cond_178
    move-object v3, v1

    goto :goto_17b

    :cond_17a
    :goto_17a
    move-object v3, v2

    .line 439
    :goto_17b
    iput-object v3, v0, Lmpl/HalProbe$Hal;->descriptor:Ljava/lang/String;

    if-eqz v1, :cond_18f

    .line 440
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_18f

    .line 441
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18f

    .line 442
    const-string v1, "device descriptor differs from static BnSoter descriptor"

    iput-object v1, v0, Lmpl/HalProbe$Hal;->descriptorNote:Ljava/lang/String;

    .line 446
    :cond_18f
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    :goto_195
    const/16 v3, 0x18

    if-gt v2, v3, :cond_1a9

    .line 448
    invoke-static {v2}, Lmpl/HalProbe;->mutating(I)Z

    move-result v3

    if-nez v3, :cond_1a6

    .line 449
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1a6
    add-int/lit8 v2, v2, 0x1

    goto :goto_195

    :cond_1a9
    const/4 v2, 0x1

    :goto_1aa
    if-gt v2, v3, :cond_1bc

    .line 453
    invoke-static {v2}, Lmpl/HalProbe;->mutating(I)Z

    move-result v4

    if-eqz v4, :cond_1b9

    .line 454
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1b9
    add-int/lit8 v2, v2, 0x1

    goto :goto_1aa

    .line 457
    :cond_1bc
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide v4, 0x1bf08eb000L

    add-long/2addr v2, v4

    .line 458
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1ca
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 459
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x0

    :goto_1db
    if-ge v5, v11, :cond_266

    .line 461
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    cmp-long v9, v7, v2

    if-lez v9, :cond_1ed

    .line 462
    iput-boolean v10, v0, Lmpl/HalProbe$Hal;->truncated:Z

    .line 463
    const-string v4, "probe budget 120000 ms exceeded"

    iput-object v4, v0, Lmpl/HalProbe$Hal;->truncatedReason:Ljava/lang/String;

    goto/16 :goto_266

    .line 466
    :cond_1ed
    iget-object v7, v0, Lmpl/HalProbe$Hal;->binder:Landroid/os/IBinder;

    iget-object v8, v0, Lmpl/HalProbe$Hal;->descriptor:Ljava/lang/String;

    if-ne v5, v10, :cond_1f5

    const/4 v9, 0x1

    goto :goto_1f6

    :cond_1f5
    const/4 v9, 0x0

    :goto_1f6
    invoke-static {v7, v8, v4, v9}, Lmpl/HalProbe;->transact(Landroid/os/IBinder;Ljava/lang/String;IZ)Lmpl/HalProbe$CodeResult;

    move-result-object v7

    .line 467
    iget-object v8, v0, Lmpl/HalProbe$Hal;->codes:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 468
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "tx code="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v7, Lmpl/HalProbe$CodeResult;->variant:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " ok="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, v7, Lmpl/HalProbe$CodeResult;->ok:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " size="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v7, Lmpl/HalProbe$CodeResult;->dataSize:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " hex="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v7, Lmpl/HalProbe$CodeResult;->hex:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " ints="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v7, Lmpl/HalProbe$CodeResult;->ints:[I

    .line 470
    invoke-static {v9}, Lmpl/HalProbe;->intsCsv([I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    iget-object v9, v7, Lmpl/HalProbe$CodeResult;->exception:Ljava/lang/String;

    if-nez v9, :cond_246

    const-string v7, ""

    goto :goto_256

    :cond_246
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v12, " exception="

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v7, Lmpl/HalProbe$CodeResult;->exception:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_256
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 468
    const-string v8, "MPL-HALPROBE"

    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1db

    .line 473
    :cond_266
    :goto_266
    iget-boolean v4, v0, Lmpl/HalProbe$Hal;->truncated:Z

    if-eqz v4, :cond_1ca

    .line 478
    :cond_26a
    iget-boolean v1, v0, Lmpl/HalProbe$Hal;->truncated:Z

    if-nez v1, :cond_28e

    .line 479
    iget-object v1, v0, Lmpl/HalProbe$Hal;->codes:Ljava/util/List;

    iget-object v2, v0, Lmpl/HalProbe$Hal;->binder:Landroid/os/IBinder;

    iget-object v3, v0, Lmpl/HalProbe$Hal;->descriptor:Ljava/lang/String;

    const v4, 0xffffff

    invoke-static {v2, v3, v4, v6}, Lmpl/HalProbe;->transact(Landroid/os/IBinder;Ljava/lang/String;IZ)Lmpl/HalProbe$CodeResult;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 480
    iget-object v1, v0, Lmpl/HalProbe$Hal;->codes:Ljava/util/List;

    iget-object v2, v0, Lmpl/HalProbe$Hal;->binder:Landroid/os/IBinder;

    iget-object v3, v0, Lmpl/HalProbe$Hal;->descriptor:Ljava/lang/String;

    const v4, 0xfffffe

    invoke-static {v2, v3, v4, v6}, Lmpl/HalProbe;->transact(Landroid/os/IBinder;Ljava/lang/String;IZ)Lmpl/HalProbe$CodeResult;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 482
    :cond_28e
    iget-object v1, v0, Lmpl/HalProbe$Hal;->codes:Ljava/util/List;

    new-instance v2, Lmpl/HalProbe$2;

    invoke-direct {v2}, Lmpl/HalProbe$2;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method private static q(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    if-nez p0, :cond_5

    .line 1501
    const-string p0, "null"

    return-object p0

    .line 1503
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x22

    .line 1504
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 1505
    :goto_16
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_7b

    .line 1506
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_73

    const/16 v4, 0xa

    if-eq v3, v4, :cond_6d

    const/16 v4, 0xd

    if-eq v3, v4, :cond_67

    if-eq v3, v1, :cond_61

    const/16 v4, 0x5c

    if-eq v3, v4, :cond_5b

    const/16 v4, 0x20

    if-lt v3, v4, :cond_3f

    const/16 v4, 0x7e

    if-le v3, v4, :cond_3b

    goto :goto_3f

    .line 1532
    :cond_3b
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_78

    .line 1525
    :cond_3f
    :goto_3f
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 1526
    const-string v4, "\\u"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1527
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    :goto_4c
    const/4 v5, 0x4

    if-ge v4, v5, :cond_57

    const/16 v5, 0x30

    .line 1528
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_4c

    .line 1530
    :cond_57
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_78

    .line 1512
    :cond_5b
    const-string v3, "\\\\"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_78

    .line 1509
    :cond_61
    const-string v3, "\\\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_78

    .line 1518
    :cond_67
    const-string v3, "\\r"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_78

    .line 1515
    :cond_6d
    const-string v3, "\\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_78

    .line 1521
    :cond_73
    const-string v3, "\\t"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_78
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 1536
    :cond_7b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1537
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static readCapped(Ljava/io/File;J)[B
    .registers 9

    const/4 v0, 0x0

    .line 1281
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_c

    move-wide v1, p1

    .line 1282
    :cond_c
    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    long-to-int p2, p1

    .line 1283
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_38

    .line 1284
    :try_start_16
    new-array p0, p2, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1a
    if-ge v2, p2, :cond_27

    sub-int v3, p2, v2

    .line 1287
    invoke-virtual {p1, p0, v2, v3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v3
    :try_end_22
    .catchall {:try_start_16 .. :try_end_22} :catchall_36

    if-gtz v3, :cond_25

    goto :goto_27

    :cond_25
    add-int/2addr v2, v3

    goto :goto_1a

    :cond_27
    :goto_27
    if-ne v2, p2, :cond_2d

    .line 1304
    :try_start_29
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_2c

    :catchall_2c
    return-object p0

    .line 1296
    :cond_2d
    :try_start_2d
    new-array p2, v2, [B

    .line 1297
    invoke-static {p0, v1, p2, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_32
    .catchall {:try_start_2d .. :try_end_32} :catchall_36

    .line 1304
    :try_start_32
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_35

    :catchall_35
    return-object p2

    :catchall_36
    nop

    goto :goto_3a

    :catchall_38
    nop

    move-object p1, v0

    :goto_3a
    if-eqz p1, :cond_3f

    :try_start_3c
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_3f

    :catchall_3f
    :cond_3f
    return-object v0
.end method

.method private static readMaps(Lmpl/HalProbe$Diag;I)V
    .registers 9

    .line 862
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/proc/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/maps"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 863
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmpl/HalProbe$Diag;->mapsPath:Ljava/lang/String;

    .line 864
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    iput-boolean p1, p0, Lmpl/HalProbe$Diag;->mapsExists:Z

    .line 865
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 866
    iput-wide v1, p0, Lmpl/HalProbe$Diag;->mapsSize:J

    const-wide/32 v3, 0x40000

    .line 867
    invoke-static {v0, v3, v4}, Lmpl/HalProbe;->readCapped(Ljava/io/File;J)[B

    move-result-object p1

    if-nez p1, :cond_38

    .line 869
    const-string p1, "read failed"

    iput-object p1, p0, Lmpl/HalProbe$Diag;->mapsError:Ljava/lang/String;

    return-void

    :cond_38
    const/4 v0, 0x1

    .line 872
    iput-boolean v0, p0, Lmpl/HalProbe$Diag;->mapsReadable:Z

    .line 873
    array-length v3, p1

    int-to-long v3, v3

    iput-wide v3, p0, Lmpl/HalProbe$Diag;->mapsBytes:J

    .line 874
    array-length v3, p1

    int-to-long v3, v3

    const/4 v5, 0x0

    cmp-long v6, v1, v3

    if-lez v6, :cond_48

    const/4 v1, 0x1

    goto :goto_49

    :cond_48
    const/4 v1, 0x0

    :goto_49
    iput-boolean v1, p0, Lmpl/HalProbe$Diag;->mapsTruncated:Z

    .line 875
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lmpl/HalProbe;->LATIN1:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 876
    invoke-static {v1}, Lmpl/HalProbe;->countLines(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lmpl/HalProbe$Diag;->mapsLines:I

    .line 877
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 878
    const-string v2, "qsee"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_68

    const/4 v2, 0x1

    goto :goto_69

    :cond_68
    const/4 v2, 0x0

    :goto_69
    iput-boolean v2, p0, Lmpl/HalProbe$Diag;->mapsHasQsee:Z

    .line 879
    const-string v2, "soter"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_75

    const/4 v2, 0x1

    goto :goto_76

    :cond_75
    const/4 v2, 0x0

    :goto_76
    iput-boolean v2, p0, Lmpl/HalProbe$Diag;->mapsHasSoter:Z

    .line 880
    const-string v2, "spss"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_81

    goto :goto_82

    :cond_81
    const/4 v0, 0x0

    :goto_82
    iput-boolean v0, p0, Lmpl/HalProbe$Diag;->mapsHasSpss:Z

    const/4 p1, 0x3

    .line 881
    invoke-static {v1, p1}, Lmpl/HalProbe;->firstLines(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmpl/HalProbe$Diag;->mapsFirstLines:[Ljava/lang/String;

    return-void
.end method

.method private static readStatus()[Ljava/lang/String;
    .registers 7

    .line 1321
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/self/status"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-wide/16 v1, 0x2000

    invoke-static {v0, v1, v2}, Lmpl/HalProbe;->readTextCapped(Ljava/io/File;J)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_11

    const/4 v0, 0x0

    return-object v0

    .line 1325
    :cond_11
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1326
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1327
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1f
    if-ge v4, v2, :cond_55

    aget-object v5, v0, v4

    .line 1328
    const-string v6, "Uid:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4b

    const-string v6, "Gid:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4b

    const-string v6, "CapEff:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4b

    const-string v6, "Seccomp:"

    .line 1329
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4b

    const-string v6, "NoNewPrivs:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_52

    .line 1330
    :cond_4b
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_52
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    .line 1333
    :cond_55
    new-array v0, v3, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private static readTextCapped(Ljava/io/File;J)Ljava/lang/String;
    .registers 3

    .line 1313
    invoke-static {p0, p1, p2}, Lmpl/HalProbe;->readCapped(Ljava/io/File;J)[B

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 1317
    :cond_8
    new-instance p1, Ljava/lang/String;

    sget-object p2, Lmpl/HalProbe;->LATIN1:Ljava/nio/charset/Charset;

    invoke-direct {p1, p0, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p1
.end method

.method public static runAtStartup()V
    .registers 4

    .line 194
    const-string v0, "MPL-HALPROBE"

    :try_start_2
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/adb/tricky_store/run_hal_probe"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_10

    return-void

    .line 197
    :cond_10
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lmpl/HalProbe$1;

    invoke-direct {v2}, Lmpl/HalProbe$1;-><init>()V

    const-string v3, "mpl-halprobe"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 203
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 204
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 205
    const-string v1, "armed by /data/adb/tricky_store/run_hal_probe - probe running in background"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catchall {:try_start_2 .. :try_end_28} :catchall_29

    return-void

    :catchall_29
    move-exception v1

    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "runAtStartup failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lmpl/HalProbe;->describe(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static samplesJson(Ljava/util/List;)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmpl/HalProbe$Sample;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_e3

    .line 1038
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_e3

    .line 1041
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x200

    mul-int/lit16 v1, v1, 0x200

    add-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x5b

    .line 1042
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1044
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x1

    const/4 v3, 0x1

    :goto_24
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmpl/HalProbe$Sample;

    if-nez v3, :cond_37

    const/16 v3, 0x2c

    .line 1046
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1049
    :cond_37
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1050
    new-array v5, v1, [Z

    const/4 v6, 0x0

    aput-boolean v1, v5, v6

    const/16 v7, 0x7b

    .line 1051
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1052
    iget-object v7, v4, Lmpl/HalProbe$Sample;->path:Ljava/lang/String;

    invoke-static {v7}, Lmpl/HalProbe;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "path"

    invoke-static {v3, v5, v8, v7}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 1053
    iget-wide v7, v4, Lmpl/HalProbe$Sample;->size:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    const-string v8, "size"

    invoke-static {v3, v5, v8, v7}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 1054
    iget-wide v7, v4, Lmpl/HalProbe$Sample;->mtimeMs:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    const-string v8, "mtime_ms"

    invoke-static {v3, v5, v8, v7}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 1055
    iget-wide v7, v4, Lmpl/HalProbe$Sample;->mtimeMs:J

    invoke-static {v7, v8}, Lmpl/HalProbe;->iso(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lmpl/HalProbe;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "mtime"

    invoke-static {v3, v5, v8, v7}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 1056
    iget-object v7, v4, Lmpl/HalProbe$Sample;->cpuId:Ljava/lang/String;

    invoke-static {v7}, Lmpl/HalProbe;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "cpu_id"

    invoke-static {v3, v5, v8, v7}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 1057
    iget-object v7, v4, Lmpl/HalProbe$Sample;->counter:Ljava/lang/String;

    invoke-static {v7}, Lmpl/HalProbe;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "counter"

    invoke-static {v3, v5, v8, v7}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 1058
    iget-object v7, v4, Lmpl/HalProbe$Sample;->uid:Ljava/lang/String;

    invoke-static {v7}, Lmpl/HalProbe;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "uid"

    invoke-static {v3, v5, v8, v7}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 1059
    iget-object v7, v4, Lmpl/HalProbe$Sample;->pubKey32:Ljava/lang/String;

    invoke-static {v7}, Lmpl/HalProbe;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "pub_key32"

    invoke-static {v3, v5, v8, v7}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 1060
    iget v7, v4, Lmpl/HalProbe$Sample;->certs:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "certs"

    invoke-static {v3, v5, v8, v7}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 1061
    iget-object v7, v4, Lmpl/HalProbe$Sample;->certsNote:Ljava/lang/String;

    invoke-static {v7}, Lmpl/HalProbe;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "certs_note"

    invoke-static {v3, v5, v8, v7}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 1062
    iget-object v7, v4, Lmpl/HalProbe$Sample;->firstCert:Ljava/lang/String;

    invoke-static {v7}, Lmpl/HalProbe;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "cert_first_512"

    invoke-static {v3, v5, v8, v7}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 1063
    iget-boolean v4, v4, Lmpl/HalProbe$Sample;->certPem:Z

    invoke-static {v4}, Lmpl/HalProbe;->bool(Z)Ljava/lang/String;

    move-result-object v4

    const-string v7, "cert_looks_pem"

    invoke-static {v3, v5, v7, v4}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x7d

    .line 1064
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1065
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    goto/16 :goto_24

    :cond_d9
    const/16 p0, 0x5d

    .line 1067
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1068
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1039
    :cond_e3
    :goto_e3
    const-string p0, "[]"

    return-object p0
.end method

.method private static scanJson(Lmpl/HalProbe$Scan;)Ljava/lang/String;
    .registers 7

    .line 1072
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x1

    .line 1073
    new-array v2, v1, [Z

    const/4 v3, 0x0

    aput-boolean v1, v2, v3

    const/16 v1, 0x7b

    .line 1074
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1075
    iget-object v1, p0, Lmpl/HalProbe$Scan;->roots:[Ljava/lang/String;

    invoke-static {v1}, Lmpl/HalProbe;->stringArray([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "roots"

    invoke-static {v0, v2, v4, v1}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x6

    .line 1076
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "max_depth"

    invoke-static {v0, v2, v4, v1}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    const-wide/32 v4, 0x200000

    .line 1077
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v4, "max_file_bytes"

    invoke-static {v0, v2, v4, v1}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 1078
    iget v1, p0, Lmpl/HalProbe$Scan;->dirs:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "dirs"

    invoke-static {v0, v2, v4, v1}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 1079
    iget v1, p0, Lmpl/HalProbe$Scan;->filesSeen:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "files_seen"

    invoke-static {v0, v2, v4, v1}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 1080
    iget v1, p0, Lmpl/HalProbe$Scan;->filesRead:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "files_read"

    invoke-static {v0, v2, v4, v1}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 1081
    iget-wide v4, p0, Lmpl/HalProbe$Scan;->bytesRead:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v4, "bytes_read"

    invoke-static {v0, v2, v4, v1}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 1082
    iget v1, p0, Lmpl/HalProbe$Scan;->matches:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "matches"

    invoke-static {v0, v2, v4, v1}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 1083
    iget-wide v4, p0, Lmpl/HalProbe$Scan;->startedNs:J

    invoke-static {v4, v5}, Lmpl/HalProbe;->elapsedMs(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v4, "elapsed_ms"

    invoke-static {v0, v2, v4, v1}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 1084
    iget-boolean v1, p0, Lmpl/HalProbe$Scan;->truncated:Z

    invoke-static {v1}, Lmpl/HalProbe;->bool(Z)Ljava/lang/String;

    move-result-object v1

    const-string v4, "truncated"

    invoke-static {v0, v2, v4, v1}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 1085
    iget-object v1, p0, Lmpl/HalProbe$Scan;->stopReason:Ljava/lang/String;

    invoke-static {v1}, Lmpl/HalProbe;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "stop_reason"

    invoke-static {v0, v2, v4, v1}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    .line 1086
    iget-object v1, p0, Lmpl/HalProbe$Scan;->notes:Ljava/util/List;

    if-nez v1, :cond_95

    const/4 p0, 0x0

    goto :goto_9f

    .line 1087
    :cond_95
    iget-object p0, p0, Lmpl/HalProbe$Scan;->notes:Ljava/util/List;

    new-array v1, v3, [Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    .line 1086
    :goto_9f
    invoke-static {p0}, Lmpl/HalProbe;->stringArray([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "notes"

    invoke-static {v0, v2, v1, p0}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x7d

    .line 1088
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1089
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static scanSamples(Ljava/util/List;Lmpl/HalProbe$Scan;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmpl/HalProbe$Sample;",
            ">;",
            "Lmpl/HalProbe$Scan;",
            ")V"
        }
    .end annotation

    .line 585
    const-string v0, "/data/user/0"

    const-string v1, "/data/data"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lmpl/HalProbe$Scan;->roots:[Ljava/lang/String;

    .line 586
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p1, Lmpl/HalProbe$Scan;->startedNs:J

    .line 587
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p1, Lmpl/HalProbe$Scan;->visited:Ljava/util/Set;

    .line 588
    iget-object v0, p1, Lmpl/HalProbe$Scan;->roots:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1c
    if-ge v3, v1, :cond_5a

    aget-object v4, v0, v3

    .line 589
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 590
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    if-nez v5, :cond_3d

    .line 592
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "cannot list "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lmpl/HalProbe$Scan;->note(Ljava/lang/String;)V

    goto :goto_57

    .line 595
    :cond_3d
    array-length v4, v5

    const/4 v6, 0x0

    :goto_3f
    if-ge v6, v4, :cond_57

    aget-object v7, v5, v6

    .line 596
    invoke-static {p1, v2}, Lmpl/HalProbe;->stopped(Lmpl/HalProbe$Scan;I)Z

    move-result v8

    if-eqz v8, :cond_4a

    goto :goto_57

    .line 599
    :cond_4a
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_51

    goto :goto_54

    .line 602
    :cond_51
    invoke-static {v7, v2, p0, p1}, Lmpl/HalProbe;->walk(Ljava/io/File;ILjava/util/List;Lmpl/HalProbe$Scan;)V

    :goto_54
    add-int/lit8 v6, v6, 0x1

    goto :goto_3f

    :cond_57
    :goto_57
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_5a
    return-void
.end method

.method private static shutdownPool()V
    .registers 2

    .line 1234
    const-class v0, Lmpl/HalProbe;

    monitor-enter v0

    .line 1235
    :try_start_3
    sget-object v1, Lmpl/HalProbe;->pool:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_f

    .line 1236
    sget-object v1, Lmpl/HalProbe;->pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    const/4 v1, 0x0

    .line 1237
    sput-object v1, Lmpl/HalProbe;->pool:Ljava/util/concurrent/ExecutorService;

    .line 1239
    :cond_f
    monitor-exit v0

    return-void

    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method private static skipName(Ljava/lang/String;)Z
    .registers 6

    .line 697
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 698
    sget-object v0, Lmpl/HalProbe;->SKIP_EXT:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v1, :cond_1a

    aget-object v4, v0, v3

    .line 699
    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    const/4 p0, 0x1

    return p0

    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_1a
    return v2
.end method

.method private static splitTopLevel(Ljava/lang/String;II)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 778
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 779
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_d
    if-ge p1, p2, :cond_3e

    .line 783
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x22

    const/4 v7, 0x1

    if-eqz v3, :cond_29

    .line 785
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_1f

    const/4 v4, 0x0

    goto :goto_3b

    :cond_1f
    const/16 v8, 0x5c

    if-ne v5, v8, :cond_25

    const/4 v4, 0x1

    goto :goto_3b

    :cond_25
    if-ne v5, v6, :cond_3b

    const/4 v3, 0x0

    goto :goto_3b

    :cond_29
    if-ne v5, v6, :cond_30

    .line 797
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    goto :goto_3b

    :cond_30
    const/16 v6, 0x2c

    if-ne v5, v6, :cond_38

    .line 799
    invoke-static {v0, v1}, Lmpl/HalProbe;->addItem(Ljava/util/List;Ljava/lang/StringBuilder;)V

    goto :goto_3b

    .line 801
    :cond_38
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3b
    :goto_3b
    add-int/lit8 p1, p1, 0x1

    goto :goto_d

    .line 804
    :cond_3e
    invoke-static {v0, v1}, Lmpl/HalProbe;->addItem(Ljava/util/List;Ljava/lang/StringBuilder;)V

    return-object v0
.end method

.method private static stopped(Lmpl/HalProbe$Scan;I)Z
    .registers 8

    const/4 v0, 0x6

    const/4 v1, 0x1

    if-le p1, v0, :cond_5

    return v1

    .line 678
    :cond_5
    iget-boolean p1, p0, Lmpl/HalProbe$Scan;->truncated:Z

    if-eqz p1, :cond_a

    return v1

    .line 681
    :cond_a
    iget p1, p0, Lmpl/HalProbe$Scan;->filesSeen:I

    const v0, 0x30d40

    if-lt p1, v0, :cond_17

    .line 682
    const-string p1, "max_files"

    invoke-virtual {p0, p1}, Lmpl/HalProbe$Scan;->truncate(Ljava/lang/String;)V

    return v1

    .line 685
    :cond_17
    iget-wide v2, p0, Lmpl/HalProbe$Scan;->bytesRead:J

    const-wide v4, 0xc0000000L

    cmp-long p1, v2, v4

    if-ltz p1, :cond_28

    .line 686
    const-string p1, "max_bytes"

    invoke-virtual {p0, p1}, Lmpl/HalProbe$Scan;->truncate(Ljava/lang/String;)V

    return v1

    .line 689
    :cond_28
    iget-wide v2, p0, Lmpl/HalProbe$Scan;->startedNs:J

    invoke-static {v2, v3}, Lmpl/HalProbe;->elapsedMs(J)J

    move-result-wide v2

    const-wide/32 v4, 0x493e0

    cmp-long p1, v2, v4

    if-ltz p1, :cond_3b

    .line 690
    const-string p1, "max_time"

    invoke-virtual {p0, p1}, Lmpl/HalProbe$Scan;->truncate(Ljava/lang/String;)V

    return v1

    :cond_3b
    const/4 p0, 0x0

    return p0
.end method

.method private static stringArray([Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_5

    .line 1451
    const-string p0, "null"

    return-object p0

    .line 1453
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x18

    add-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x5b

    .line 1454
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 1455
    :goto_15
    array-length v2, p0

    if-ge v1, v2, :cond_2b

    if-lez v1, :cond_1f

    const/16 v2, 0x2c

    .line 1457
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1459
    :cond_1f
    aget-object v2, p0, v1

    invoke-static {v2}, Lmpl/HalProbe;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_2b
    const/16 p0, 0x5d

    .line 1461
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1462
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static stringMapJson([Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    if-nez p0, :cond_5

    .line 1467
    const-string p0, "null"

    return-object p0

    .line 1469
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x1

    .line 1470
    new-array v2, v1, [Z

    const/4 v3, 0x0

    aput-boolean v1, v2, v3

    const/16 v1, 0x7b

    .line 1471
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1472
    array-length v1, p0

    const/4 v4, 0x0

    :goto_19
    if-ge v4, v1, :cond_42

    aget-object v5, p0, v4

    const/16 v6, 0x3a

    .line 1473
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-gtz v6, :cond_26

    goto :goto_3f

    .line 1477
    :cond_26
    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    .line 1478
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 1479
    invoke-static {v5}, Lmpl/HalProbe;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v2, v7, v5}, Lmpl/HalProbe;->field(Ljava/lang/StringBuilder;[ZLjava/lang/String;Ljava/lang/String;)V

    :goto_3f
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    :cond_42
    const/16 p0, 0x7d

    .line 1481
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1482
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static transact(Landroid/os/IBinder;Ljava/lang/String;IZ)Lmpl/HalProbe$CodeResult;
    .registers 13

    if-eqz p3, :cond_5

    .line 513
    const-string v0, "token+int0"

    goto :goto_7

    :cond_5
    const-string v0, "token"

    :goto_7
    move-object v6, v0

    .line 514
    invoke-static {}, Lmpl/HalProbe;->pool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lmpl/HalProbe$3;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lmpl/HalProbe$3;-><init>(Landroid/os/IBinder;Ljava/lang/String;IZLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    .line 520
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    const/4 p3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 522
    :try_start_20
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0x9c4

    invoke-interface {p0, v7, v8, v0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmpl/HalProbe$CodeResult;
    :try_end_2a
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_20 .. :try_end_2a} :catch_4b
    .catchall {:try_start_20 .. :try_end_2a} :catchall_2b

    return-object v0

    :catchall_2b
    move-exception v0

    .line 534
    invoke-interface {p0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 535
    new-instance p0, Lmpl/HalProbe$CodeResult;

    invoke-direct {p0, v1}, Lmpl/HalProbe$CodeResult;-><init>(Lmpl/HalProbe$1;)V

    .line 536
    iput v4, p0, Lmpl/HalProbe$CodeResult;->code:I

    .line 537
    iput-object v6, p0, Lmpl/HalProbe$CodeResult;->variant:Ljava/lang/String;

    .line 538
    iput-boolean p3, p0, Lmpl/HalProbe$CodeResult;->ok:Z

    .line 539
    invoke-static {v0}, Lmpl/HalProbe;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p3

    invoke-static {p3}, Lmpl/HalProbe;->describe(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lmpl/HalProbe$CodeResult;->exception:Ljava/lang/String;

    .line 540
    invoke-static {p1, p2}, Lmpl/HalProbe;->elapsedMs(J)J

    move-result-wide p1

    iput-wide p1, p0, Lmpl/HalProbe$CodeResult;->elapsedMs:J

    return-object p0

    .line 524
    :catch_4b
    invoke-interface {p0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 525
    new-instance p0, Lmpl/HalProbe$CodeResult;

    invoke-direct {p0, v1}, Lmpl/HalProbe$CodeResult;-><init>(Lmpl/HalProbe$1;)V

    .line 526
    iput v4, p0, Lmpl/HalProbe$CodeResult;->code:I

    .line 527
    iput-object v6, p0, Lmpl/HalProbe$CodeResult;->variant:Ljava/lang/String;

    .line 528
    iput-boolean p3, p0, Lmpl/HalProbe$CodeResult;->ok:Z

    .line 529
    iput-boolean v2, p0, Lmpl/HalProbe$CodeResult;->timeout:Z

    .line 530
    const-string p3, "timeout after 2500 ms (binder transaction abandoned)"

    iput-object p3, p0, Lmpl/HalProbe$CodeResult;->exception:Ljava/lang/String;

    .line 531
    invoke-static {p1, p2}, Lmpl/HalProbe;->elapsedMs(J)J

    move-result-wide p1

    iput-wide p1, p0, Lmpl/HalProbe$CodeResult;->elapsedMs:J

    return-object p0
.end method

.method private static transactBlocking(Landroid/os/IBinder;Ljava/lang/String;IZLjava/lang/String;)Lmpl/HalProbe$CodeResult;
    .registers 9

    .line 547
    new-instance v0, Lmpl/HalProbe$CodeResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmpl/HalProbe$CodeResult;-><init>(Lmpl/HalProbe$1;)V

    .line 548
    iput p2, v0, Lmpl/HalProbe$CodeResult;->code:I

    .line 549
    iput-object p4, v0, Lmpl/HalProbe$CodeResult;->variant:Ljava/lang/String;

    .line 550
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 551
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p4

    .line 552
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 554
    :try_start_16
    invoke-virtual {p4, p1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 p1, 0x0

    if-eqz p3, :cond_1f

    .line 556
    invoke-virtual {p4, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 558
    :cond_1f
    invoke-interface {p0, p2, p4, v3, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    iput-boolean p0, v0, Lmpl/HalProbe$CodeResult;->ok:Z

    .line 559
    invoke-virtual {v3}, Landroid/os/Parcel;->dataSize()I

    move-result p0

    iput p0, v0, Lmpl/HalProbe$CodeResult;->dataSize:I

    const/16 p0, 0x10

    .line 560
    invoke-static {v3, p0}, Lmpl/HalProbe;->hexPrefix(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lmpl/HalProbe$CodeResult;->hex:Ljava/lang/String;

    const/16 p0, 0x8

    .line 561
    invoke-static {v3, p0}, Lmpl/HalProbe;->intPrefix(Landroid/os/Parcel;I)[I

    move-result-object p0

    iput-object p0, v0, Lmpl/HalProbe$CodeResult;->ints:[I
    :try_end_3b
    .catchall {:try_start_16 .. :try_end_3b} :catchall_3f

    .line 566
    :try_start_3b
    invoke-virtual {p4}, Landroid/os/Parcel;->recycle()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_4d

    goto :goto_4d

    :catchall_3f
    move-exception p0

    .line 563
    :try_start_40
    invoke-static {p0}, Lmpl/HalProbe;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {p0}, Lmpl/HalProbe;->describe(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lmpl/HalProbe$CodeResult;->exception:Ljava/lang/String;
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_57

    .line 566
    :try_start_4a
    invoke-virtual {p4}, Landroid/os/Parcel;->recycle()V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_4d

    .line 571
    :catchall_4d
    :goto_4d
    :try_start_4d
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_50

    .line 575
    :catchall_50
    invoke-static {v1, v2}, Lmpl/HalProbe;->elapsedMs(J)J

    move-result-wide p0

    iput-wide p0, v0, Lmpl/HalProbe$CodeResult;->elapsedMs:J

    return-object v0

    :catchall_57
    move-exception p0

    .line 566
    :try_start_58
    invoke-virtual {p4}, Landroid/os/Parcel;->recycle()V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_5b

    .line 571
    :catchall_5b
    :try_start_5b
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_5e

    .line 575
    :catchall_5e
    invoke-static {v1, v2}, Lmpl/HalProbe;->elapsedMs(J)J

    move-result-wide p1

    iput-wide p1, v0, Lmpl/HalProbe$CodeResult;->elapsedMs:J

    .line 576
    throw p0
.end method

.method private static trim(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1551
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static truncate(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_e

    .line 1347
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p1, :cond_9

    goto :goto_e

    :cond_9
    const/4 v0, 0x0

    .line 1350
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_e
    :goto_e
    return-object p0
.end method

.method private static unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 2

    .line 1608
    :goto_0
    instance-of v0, p0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v0, :cond_f

    .line 1609
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1610
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    :cond_f
    return-object p0
.end method

.method private static walk(Ljava/io/File;ILjava/util/List;Lmpl/HalProbe$Scan;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I",
            "Ljava/util/List<",
            "Lmpl/HalProbe$Sample;",
            ">;",
            "Lmpl/HalProbe$Scan;",
            ")V"
        }
    .end annotation

    .line 608
    invoke-static {p3, p1}, Lmpl/HalProbe;->stopped(Lmpl/HalProbe$Scan;I)Z

    move-result v0

    if-eqz v0, :cond_8

    goto/16 :goto_cf

    .line 613
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_cf

    .line 617
    iget-object v1, p3, Lmpl/HalProbe$Scan;->visited:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto/16 :goto_cf

    .line 620
    :cond_16
    iget v0, p3, Lmpl/HalProbe$Scan;->dirs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p3, Lmpl/HalProbe$Scan;->dirs:I

    .line 621
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_24

    goto/16 :goto_cf

    .line 625
    :cond_24
    array-length v0, p0

    const/4 v1, 0x0

    :goto_26
    if-ge v1, v0, :cond_cf

    aget-object v2, p0, v1

    .line 626
    invoke-static {p3, p1}, Lmpl/HalProbe;->stopped(Lmpl/HalProbe$Scan;I)Z

    move-result v3

    if-eqz v3, :cond_32

    goto/16 :goto_cf

    .line 629
    :cond_32
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 631
    :try_start_36
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 632
    sget-object v4, Lmpl/HalProbe;->SKIP_DIRS:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    goto/16 :goto_cb

    :cond_46
    add-int/lit8 v3, p1, 0x1

    .line 635
    invoke-static {v2, v3, p2, p3}, Lmpl/HalProbe;->walk(Ljava/io/File;ILjava/util/List;Lmpl/HalProbe$Scan;)V

    goto/16 :goto_cb

    .line 636
    :cond_4d
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_cb

    .line 637
    iget v4, p3, Lmpl/HalProbe$Scan;->filesSeen:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p3, Lmpl/HalProbe$Scan;->filesSeen:I

    .line 638
    iget v4, p3, Lmpl/HalProbe$Scan;->filesSeen:I

    const v5, 0x30d40

    if-le v4, v5, :cond_67

    .line 639
    const-string v2, "max_files"

    invoke-virtual {p3, v2}, Lmpl/HalProbe$Scan;->truncate(Ljava/lang/String;)V

    goto/16 :goto_cf

    .line 642
    :cond_67
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_cb

    const-wide/32 v6, 0x200000

    cmp-long v8, v4, v6

    if-gtz v8, :cond_cb

    .line 643
    invoke-static {v3}, Lmpl/HalProbe;->skipName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7f

    goto :goto_cb

    .line 646
    :cond_7f
    invoke-static {v2, v6, v7}, Lmpl/HalProbe;->readCapped(Ljava/io/File;J)[B

    move-result-object v3

    if-eqz v3, :cond_cb

    .line 647
    array-length v4, v3

    if-nez v4, :cond_89

    goto :goto_cb

    .line 650
    :cond_89
    iget v4, p3, Lmpl/HalProbe$Scan;->filesRead:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p3, Lmpl/HalProbe$Scan;->filesRead:I

    .line 651
    iget-wide v4, p3, Lmpl/HalProbe$Scan;->bytesRead:J

    array-length v6, v3

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, p3, Lmpl/HalProbe$Scan;->bytesRead:J

    .line 652
    sget-object v4, Lmpl/HalProbe;->NEEDLE_PUB_KEY:[B

    invoke-static {v3, v4}, Lmpl/HalProbe;->contains([B[B)Z

    move-result v4

    if-eqz v4, :cond_cb

    sget-object v4, Lmpl/HalProbe;->NEEDLE_CPU_ID:[B

    invoke-static {v3, v4}, Lmpl/HalProbe;->contains([B[B)Z

    move-result v4

    if-nez v4, :cond_a7

    goto :goto_cb

    .line 655
    :cond_a7
    invoke-static {v3}, Lmpl/HalProbe;->hasNul([B)Z

    move-result v4

    if-eqz v4, :cond_ae

    goto :goto_cb

    .line 658
    :cond_ae
    invoke-static {v2, v3}, Lmpl/HalProbe;->extract(Ljava/io/File;[B)Lmpl/HalProbe$Sample;

    move-result-object v2

    if-eqz v2, :cond_cb

    .line 660
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 661
    iget v2, p3, Lmpl/HalProbe$Scan;->matches:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p3, Lmpl/HalProbe$Scan;->matches:I

    .line 662
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0xc8

    if-lt v2, v3, :cond_cb

    .line 663
    const-string v2, "max_samples"

    invoke-virtual {p3, v2}, Lmpl/HalProbe$Scan;->truncate(Ljava/lang/String;)V
    :try_end_ca
    .catchall {:try_start_36 .. :try_end_ca} :catchall_cb

    goto :goto_cf

    :catchall_cb
    :cond_cb
    :goto_cb
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_26

    :catchall_cf
    :cond_cf
    :goto_cf
    return-void
.end method

.method private static writeText(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    const-string v0, "writeText "

    .line 1147
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1148
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1b

    .line 1149
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_1b

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_1b

    return v3

    .line 1152
    :cond_1b
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 1155
    :try_start_32
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_37
    .catchall {:try_start_32 .. :try_end_37} :catchall_67

    .line 1156
    :try_start_37
    sget-object v6, Lmpl/HalProbe;->LATIN1:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 1157
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 1158
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_46
    .catchall {:try_start_37 .. :try_end_46} :catchall_64

    .line 1160
    :try_start_46
    invoke-static {v2}, Lmpl/HalProbe;->mode0644(Ljava/io/File;)V

    .line 1161
    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_5f

    .line 1162
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result p1

    if-eqz p1, :cond_5b

    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_5f

    .line 1163
    :cond_5b
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    return v3

    .line 1167
    :cond_5f
    invoke-static {v1}, Lmpl/HalProbe;->mode0644(Ljava/io/File;)V
    :try_end_62
    .catchall {:try_start_46 .. :try_end_62} :catchall_67

    const/4 p0, 0x1

    return p0

    :catchall_64
    move-exception p1

    move-object v4, v5

    goto :goto_68

    :catchall_67
    move-exception p1

    .line 1170
    :goto_68
    :try_start_68
    const-string v1, "MPL-HALPROBE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " failed: "

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lmpl/HalProbe;->describe(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_88
    .catchall {:try_start_68 .. :try_end_88} :catchall_8e

    if-eqz v4, :cond_8d

    .line 1176
    :try_start_8a
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8d
    .catchall {:try_start_8a .. :try_end_8d} :catchall_8d

    :catchall_8d
    :cond_8d
    return v3

    :catchall_8e
    move-exception p0

    if-eqz v4, :cond_94

    :try_start_91
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_94
    .catchall {:try_start_91 .. :try_end_94} :catchall_94

    .line 1181
    :catchall_94
    :cond_94
    throw p0
.end method
