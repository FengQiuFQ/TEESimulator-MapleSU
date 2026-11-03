.class public final Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;
.super Ljava/lang/Object;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"


# static fields
.field public static final INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;

.field private static final callerNonceProhibited$delegate:La/a;

.field private static final incompatibleAlgorithm$delegate:La/a;

.field private static final incompatibleBlockMode$delegate:La/a;

.field private static final incompatibleDigest$delegate:La/a;

.field private static final incompatibleKey$delegate:La/a;

.field private static final incompatiblePaddingMode$delegate:La/a;

.field private static final incompatiblePurpose$delegate:La/a;

.field private static final invalidArgument$delegate:La/a;

.field private static final invalidInputLength$delegate:La/a;

.field private static final invalidMacLength$delegate:La/a;

.field private static final invalidOperationHandle$delegate:La/a;

.field private static final invalidTag$delegate:La/a;

.field private static final keyExpired$delegate:La/a;

.field private static final keyNotYetValid$delegate:La/a;

.field private static final tooMuchData$delegate:La/a;

.field private static final unknownError$delegate:La/a;

.field private static final unsupportedPurpose$delegate:La/a;

.field private static final verificationFailed$delegate:La/a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;

    invoke-direct {v0}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;-><init>()V

    sput-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;

    new-instance v0, Lorg/matrix/TEESimulator/interception/keystore/d;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lorg/matrix/TEESimulator/interception/keystore/d;-><init>(I)V

    new-instance v1, La/f;

    invoke-direct {v1, v0}, La/f;-><init>(Lh/a;)V

    sput-object v1, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->tooMuchData$delegate:La/a;

    new-instance v0, Lorg/matrix/TEESimulator/interception/keystore/shim/h;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/matrix/TEESimulator/interception/keystore/shim/h;-><init>(I)V

    new-instance v1, La/f;

    invoke-direct {v1, v0}, La/f;-><init>(Lh/a;)V

    sput-object v1, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->invalidOperationHandle$delegate:La/a;

    new-instance v0, Lorg/matrix/TEESimulator/interception/keystore/d;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lorg/matrix/TEESimulator/interception/keystore/d;-><init>(I)V

    new-instance v1, La/f;

    invoke-direct {v1, v0}, La/f;-><init>(Lh/a;)V

    sput-object v1, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->invalidTag$delegate:La/a;

    new-instance v0, Lorg/matrix/TEESimulator/interception/keystore/d;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lorg/matrix/TEESimulator/interception/keystore/d;-><init>(I)V

    new-instance v1, La/f;

    invoke-direct {v1, v0}, La/f;-><init>(Lh/a;)V

    sput-object v1, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->verificationFailed$delegate:La/a;

    new-instance v0, Lorg/matrix/TEESimulator/interception/keystore/d;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Lorg/matrix/TEESimulator/interception/keystore/d;-><init>(I)V

    new-instance v1, La/f;

    invoke-direct {v1, v0}, La/f;-><init>(Lh/a;)V

    sput-object v1, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->invalidArgument$delegate:La/a;

    new-instance v0, Lorg/matrix/TEESimulator/interception/keystore/d;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Lorg/matrix/TEESimulator/interception/keystore/d;-><init>(I)V

    new-instance v1, La/f;

    invoke-direct {v1, v0}, La/f;-><init>(Lh/a;)V

    sput-object v1, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->invalidInputLength$delegate:La/a;

    new-instance v0, Lorg/matrix/TEESimulator/interception/keystore/d;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lorg/matrix/TEESimulator/interception/keystore/d;-><init>(I)V

    new-instance v1, La/f;

    invoke-direct {v1, v0}, La/f;-><init>(Lh/a;)V

    sput-object v1, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->incompatibleKey$delegate:La/a;

    new-instance v0, Lorg/matrix/TEESimulator/interception/keystore/d;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, Lorg/matrix/TEESimulator/interception/keystore/d;-><init>(I)V

    new-instance v1, La/f;

    invoke-direct {v1, v0}, La/f;-><init>(Lh/a;)V

    sput-object v1, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->incompatiblePurpose$delegate:La/a;

    new-instance v0, Lorg/matrix/TEESimulator/interception/keystore/d;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Lorg/matrix/TEESimulator/interception/keystore/d;-><init>(I)V

    new-instance v1, La/f;

    invoke-direct {v1, v0}, La/f;-><init>(Lh/a;)V

    sput-object v1, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->unsupportedPurpose$delegate:La/a;

    new-instance v0, Lorg/matrix/TEESimulator/interception/keystore/d;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Lorg/matrix/TEESimulator/interception/keystore/d;-><init>(I)V

    new-instance v1, La/f;

    invoke-direct {v1, v0}, La/f;-><init>(Lh/a;)V

    sput-object v1, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->incompatibleAlgorithm$delegate:La/a;

    new-instance v0, Lorg/matrix/TEESimulator/interception/keystore/d;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Lorg/matrix/TEESimulator/interception/keystore/d;-><init>(I)V

    new-instance v1, La/f;

    invoke-direct {v1, v0}, La/f;-><init>(Lh/a;)V

    sput-object v1, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->keyNotYetValid$delegate:La/a;

    new-instance v0, Lorg/matrix/TEESimulator/interception/keystore/d;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Lorg/matrix/TEESimulator/interception/keystore/d;-><init>(I)V

    new-instance v1, La/f;

    invoke-direct {v1, v0}, La/f;-><init>(Lh/a;)V

    sput-object v1, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->keyExpired$delegate:La/a;

    new-instance v0, Lorg/matrix/TEESimulator/interception/keystore/d;

    const/16 v1, 0x1a

    invoke-direct {v0, v1}, Lorg/matrix/TEESimulator/interception/keystore/d;-><init>(I)V

    new-instance v1, La/f;

    invoke-direct {v1, v0}, La/f;-><init>(Lh/a;)V

    sput-object v1, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->callerNonceProhibited$delegate:La/a;

    new-instance v0, Lorg/matrix/TEESimulator/interception/keystore/d;

    const/16 v1, 0x1b

    invoke-direct {v0, v1}, Lorg/matrix/TEESimulator/interception/keystore/d;-><init>(I)V

    new-instance v1, La/f;

    invoke-direct {v1, v0}, La/f;-><init>(Lh/a;)V

    sput-object v1, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->unknownError$delegate:La/a;

    new-instance v0, Lorg/matrix/TEESimulator/interception/keystore/d;

    const/16 v1, 0x1c

    invoke-direct {v0, v1}, Lorg/matrix/TEESimulator/interception/keystore/d;-><init>(I)V

    new-instance v1, La/f;

    invoke-direct {v1, v0}, La/f;-><init>(Lh/a;)V

    sput-object v1, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->incompatibleBlockMode$delegate:La/a;

    new-instance v0, Lorg/matrix/TEESimulator/interception/keystore/d;

    const/16 v1, 0x1d

    invoke-direct {v0, v1}, Lorg/matrix/TEESimulator/interception/keystore/d;-><init>(I)V

    new-instance v1, La/f;

    invoke-direct {v1, v0}, La/f;-><init>(Lh/a;)V

    sput-object v1, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->incompatiblePaddingMode$delegate:La/a;

    new-instance v0, Lorg/matrix/TEESimulator/interception/keystore/shim/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/matrix/TEESimulator/interception/keystore/shim/h;-><init>(I)V

    new-instance v1, La/f;

    invoke-direct {v1, v0}, La/f;-><init>(Lh/a;)V

    sput-object v1, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->incompatibleDigest$delegate:La/a;

    new-instance v0, Lorg/matrix/TEESimulator/interception/keystore/shim/h;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/matrix/TEESimulator/interception/keystore/shim/h;-><init>(I)V

    new-instance v1, La/f;

    invoke-direct {v1, v0}, La/f;-><init>(Lh/a;)V

    sput-object v1, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->invalidMacLength$delegate:La/a;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()I
    .registers 1

    invoke-static {}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->invalidArgument_delegate$lambda$0()I

    move-result v0

    return v0
.end method

.method public static synthetic b()I
    .registers 1

    invoke-static {}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->incompatibleDigest_delegate$lambda$0()I

    move-result v0

    return v0
.end method

.method public static synthetic c()I
    .registers 1

    invoke-static {}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->unknownError_delegate$lambda$0()I

    move-result v0

    return v0
.end method

.method private static final callerNonceProhibited_delegate$lambda$0()I
    .registers 4

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;

    const-string v1, "CALLER_NONCE_PROHIBITED"

    const/16 v2, -0x37

    const-string v3, "android.hardware.security.keymint.ErrorCode"

    invoke-virtual {v0, v3, v1, v2}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->resolveField(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static synthetic d()I
    .registers 1

    invoke-static {}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->invalidMacLength_delegate$lambda$0()I

    move-result v0

    return v0
.end method

.method public static synthetic e()I
    .registers 1

    invoke-static {}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->incompatibleBlockMode_delegate$lambda$0()I

    move-result v0

    return v0
.end method

.method public static synthetic f()I
    .registers 1

    invoke-static {}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->invalidTag_delegate$lambda$0()I

    move-result v0

    return v0
.end method

.method public static synthetic g()I
    .registers 1

    invoke-static {}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->callerNonceProhibited_delegate$lambda$0()I

    move-result v0

    return v0
.end method

.method public static synthetic h()I
    .registers 1

    invoke-static {}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->incompatibleAlgorithm_delegate$lambda$0()I

    move-result v0

    return v0
.end method

.method public static synthetic i()I
    .registers 1

    invoke-static {}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->incompatiblePaddingMode_delegate$lambda$0()I

    move-result v0

    return v0
.end method

.method private static final incompatibleAlgorithm_delegate$lambda$0()I
    .registers 4

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;

    const-string v1, "INCOMPATIBLE_ALGORITHM"

    const/16 v2, -0x12

    const-string v3, "android.hardware.security.keymint.ErrorCode"

    invoke-virtual {v0, v3, v1, v2}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->resolveField(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static final incompatibleBlockMode_delegate$lambda$0()I
    .registers 4

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;

    const-string v1, "INCOMPATIBLE_BLOCK_MODE"

    const/4 v2, -0x8

    const-string v3, "android.hardware.security.keymint.ErrorCode"

    invoke-virtual {v0, v3, v1, v2}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->resolveField(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static final incompatibleDigest_delegate$lambda$0()I
    .registers 4

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;

    const-string v1, "INCOMPATIBLE_DIGEST"

    const/16 v2, -0xd

    const-string v3, "android.hardware.security.keymint.ErrorCode"

    invoke-virtual {v0, v3, v1, v2}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->resolveField(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static final incompatibleKey_delegate$lambda$0()I
    .registers 4

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;

    const-string v1, "INCOMPATIBLE_KEY"

    const/16 v2, -0x1f

    const-string v3, "android.hardware.security.keymint.ErrorCode"

    invoke-virtual {v0, v3, v1, v2}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->resolveField(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static final incompatiblePaddingMode_delegate$lambda$0()I
    .registers 4

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;

    const-string v1, "INCOMPATIBLE_PADDING_MODE"

    const/16 v2, -0xb

    const-string v3, "android.hardware.security.keymint.ErrorCode"

    invoke-virtual {v0, v3, v1, v2}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->resolveField(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static final incompatiblePurpose_delegate$lambda$0()I
    .registers 4

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;

    const-string v1, "INCOMPATIBLE_PURPOSE"

    const/16 v2, -0xd

    const-string v3, "android.hardware.security.keymint.ErrorCode"

    invoke-virtual {v0, v3, v1, v2}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->resolveField(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static final invalidArgument_delegate$lambda$0()I
    .registers 4

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;

    const-string v1, "INVALID_ARGUMENT"

    const/16 v2, -0x26

    const-string v3, "android.hardware.security.keymint.ErrorCode"

    invoke-virtual {v0, v3, v1, v2}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->resolveField(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static final invalidInputLength_delegate$lambda$0()I
    .registers 4

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;

    const-string v1, "INVALID_INPUT_LENGTH"

    const/16 v2, -0x15

    const-string v3, "android.hardware.security.keymint.ErrorCode"

    invoke-virtual {v0, v3, v1, v2}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->resolveField(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static final invalidMacLength_delegate$lambda$0()I
    .registers 4

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;

    const-string v1, "INVALID_MAC_LENGTH"

    const/16 v2, -0x39

    const-string v3, "android.hardware.security.keymint.ErrorCode"

    invoke-virtual {v0, v3, v1, v2}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->resolveField(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static final invalidOperationHandle_delegate$lambda$0()I
    .registers 4

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;

    const-string v1, "INVALID_OPERATION_HANDLE"

    const/16 v2, -0x1c

    const-string v3, "android.hardware.security.keymint.ErrorCode"

    invoke-virtual {v0, v3, v1, v2}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->resolveField(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static final invalidTag_delegate$lambda$0()I
    .registers 4

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;

    const-string v1, "INVALID_TAG"

    const/16 v2, -0x4c

    const-string v3, "android.hardware.security.keymint.ErrorCode"

    invoke-virtual {v0, v3, v1, v2}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->resolveField(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static synthetic j()I
    .registers 1

    invoke-static {}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->keyExpired_delegate$lambda$0()I

    move-result v0

    return v0
.end method

.method public static synthetic k()I
    .registers 1

    invoke-static {}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->verificationFailed_delegate$lambda$0()I

    move-result v0

    return v0
.end method

.method private static final keyExpired_delegate$lambda$0()I
    .registers 4

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;

    const-string v1, "KEY_EXPIRED"

    const/16 v2, -0x28

    const-string v3, "android.hardware.security.keymint.ErrorCode"

    invoke-virtual {v0, v3, v1, v2}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->resolveField(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static final keyNotYetValid_delegate$lambda$0()I
    .registers 4

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;

    const-string v1, "KEY_NOT_YET_VALID"

    const/16 v2, -0x27

    const-string v3, "android.hardware.security.keymint.ErrorCode"

    invoke-virtual {v0, v3, v1, v2}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->resolveField(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static synthetic l()I
    .registers 1

    invoke-static {}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->incompatibleKey_delegate$lambda$0()I

    move-result v0

    return v0
.end method

.method public static synthetic m()I
    .registers 1

    invoke-static {}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->invalidOperationHandle_delegate$lambda$0()I

    move-result v0

    return v0
.end method

.method public static synthetic n()I
    .registers 1

    invoke-static {}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->unsupportedPurpose_delegate$lambda$0()I

    move-result v0

    return v0
.end method

.method public static synthetic o()I
    .registers 1

    invoke-static {}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->tooMuchData_delegate$lambda$0()I

    move-result v0

    return v0
.end method

.method public static synthetic p()I
    .registers 1

    invoke-static {}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->invalidInputLength_delegate$lambda$0()I

    move-result v0

    return v0
.end method

.method public static synthetic q()I
    .registers 1

    invoke-static {}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->incompatiblePurpose_delegate$lambda$0()I

    move-result v0

    return v0
.end method

.method public static synthetic r()I
    .registers 1

    invoke-static {}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->keyNotYetValid_delegate$lambda$0()I

    move-result v0

    return v0
.end method

.method private static final tooMuchData_delegate$lambda$0()I
    .registers 4

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;

    const-string v1, "TOO_MUCH_DATA"

    const/16 v2, 0x15

    const-string v3, "android.system.keystore2.ResponseCode"

    invoke-virtual {v0, v3, v1, v2}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->resolveField(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static final unknownError_delegate$lambda$0()I
    .registers 4

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;

    const-string v1, "UNKNOWN_ERROR"

    const/16 v2, -0x3e8

    const-string v3, "android.hardware.security.keymint.ErrorCode"

    invoke-virtual {v0, v3, v1, v2}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->resolveField(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static final unsupportedPurpose_delegate$lambda$0()I
    .registers 4

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;

    const-string v1, "UNSUPPORTED_PURPOSE"

    const/16 v2, -0xe

    const-string v3, "android.hardware.security.keymint.ErrorCode"

    invoke-virtual {v0, v3, v1, v2}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->resolveField(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static final verificationFailed_delegate$lambda$0()I
    .registers 4

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;

    const-string v1, "VERIFICATION_FAILED"

    const/16 v2, -0x1e

    const-string v3, "android.hardware.security.keymint.ErrorCode"

    invoke-virtual {v0, v3, v1, v2}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->resolveField(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final getCallerNonceProhibited()I
    .registers 1

    sget-object p0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->callerNonceProhibited$delegate:La/a;

    check-cast p0, La/f;

    invoke-virtual {p0}, La/f;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final getIncompatibleAlgorithm()I
    .registers 1

    sget-object p0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->incompatibleAlgorithm$delegate:La/a;

    check-cast p0, La/f;

    invoke-virtual {p0}, La/f;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final getIncompatibleBlockMode()I
    .registers 1

    sget-object p0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->incompatibleBlockMode$delegate:La/a;

    check-cast p0, La/f;

    invoke-virtual {p0}, La/f;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final getIncompatibleDigest()I
    .registers 1

    sget-object p0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->incompatibleDigest$delegate:La/a;

    check-cast p0, La/f;

    invoke-virtual {p0}, La/f;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final getIncompatibleKey()I
    .registers 1

    sget-object p0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->incompatibleKey$delegate:La/a;

    check-cast p0, La/f;

    invoke-virtual {p0}, La/f;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final getIncompatiblePaddingMode()I
    .registers 1

    sget-object p0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->incompatiblePaddingMode$delegate:La/a;

    check-cast p0, La/f;

    invoke-virtual {p0}, La/f;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final getIncompatiblePurpose()I
    .registers 1

    sget-object p0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->incompatiblePurpose$delegate:La/a;

    check-cast p0, La/f;

    invoke-virtual {p0}, La/f;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final getInvalidArgument()I
    .registers 1

    sget-object p0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->invalidArgument$delegate:La/a;

    check-cast p0, La/f;

    invoke-virtual {p0}, La/f;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final getInvalidInputLength()I
    .registers 1

    sget-object p0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->invalidInputLength$delegate:La/a;

    check-cast p0, La/f;

    invoke-virtual {p0}, La/f;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final getInvalidMacLength()I
    .registers 1

    sget-object p0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->invalidMacLength$delegate:La/a;

    check-cast p0, La/f;

    invoke-virtual {p0}, La/f;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final getInvalidOperationHandle()I
    .registers 1

    sget-object p0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->invalidOperationHandle$delegate:La/a;

    check-cast p0, La/f;

    invoke-virtual {p0}, La/f;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final getInvalidTag()I
    .registers 1

    sget-object p0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->invalidTag$delegate:La/a;

    check-cast p0, La/f;

    invoke-virtual {p0}, La/f;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final getKeyExpired()I
    .registers 1

    sget-object p0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->keyExpired$delegate:La/a;

    check-cast p0, La/f;

    invoke-virtual {p0}, La/f;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final getKeyNotYetValid()I
    .registers 1

    sget-object p0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->keyNotYetValid$delegate:La/a;

    check-cast p0, La/f;

    invoke-virtual {p0}, La/f;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final getTooMuchData()I
    .registers 1

    sget-object p0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->tooMuchData$delegate:La/a;

    check-cast p0, La/f;

    invoke-virtual {p0}, La/f;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final getUnknownError()I
    .registers 1

    sget-object p0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->unknownError$delegate:La/a;

    check-cast p0, La/f;

    invoke-virtual {p0}, La/f;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final getUnsupportedPurpose()I
    .registers 1

    sget-object p0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->unsupportedPurpose$delegate:La/a;

    check-cast p0, La/f;

    invoke-virtual {p0}, La/f;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final getVerificationFailed()I
    .registers 1

    sget-object p0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->verificationFailed$delegate:La/a;

    check-cast p0, La/f;

    invoke-virtual {p0}, La/f;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final resolveField(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 5

    const-string p0, "className"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "fieldName"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_a
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_1b
    .catchall {:try_start_a .. :try_end_1b} :catchall_1c

    goto :goto_23

    :catchall_1c
    move-exception p0

    new-instance v0, La/d;

    invoke-direct {v0, p0}, La/d;-><init>(Ljava/lang/Throwable;)V

    move-object p0, v0

    :goto_23
    invoke-static {p0}, La/e;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_2a

    goto :goto_51

    :cond_2a
    sget-object p0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Resolved "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " via fallback: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lx4/b;->a(Ljava/lang/String;)V

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_51
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method
