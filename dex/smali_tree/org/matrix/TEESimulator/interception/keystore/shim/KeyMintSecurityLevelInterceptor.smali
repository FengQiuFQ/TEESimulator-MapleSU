.class public final Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;
.super Lv4/g;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"


# static fields
.field private static final CREATE_OPERATION_TRANSACTION:I

.field public static final Companion:Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;

.field private static final GENERATE_KEY_TRANSACTION:I

.field private static final IMPORT_KEY_TRANSACTION:I

.field private static final INTERCEPTED_CODES:[I

.field private static final KEYMINT_CANNOT_ATTEST_IDS:I = -0x42

.field private static final KEYMINT_INVALID_ARGUMENT:I = -0x26

.field private static final KEYMINT_INVALID_INPUT_LENGTH:I = -0x15

.field private static final KEYMINT_TOO_MANY_OPERATIONS:I = -0x1d

.field private static final KEYMINT_UNKNOWN_ERROR:I = -0x3e8

.field private static final MAX_ALIAS_LENGTH:I = 0x40000

.field private static final MAX_CONCURRENT_OPS_PER_UID:I = 0xf

.field private static final RESPONSE_INVALID_ARGUMENT:I = 0x14

.field private static final RESPONSE_KEY_NOT_FOUND:I = 0x7

.field private static final RESPONSE_PERMISSION_DENIED:I = 0x6

.field private static final SECURE_HW_COMMUNICATION_FAILED:I = -0x31

.field private static final STRONGBOX_KEYGEN_LATENCY_FLOOR_MS:J = 0xfaL

.field private static final STRONGBOX_MAX_CONCURRENT_OPS:I = 0x4

.field private static final STRONGBOX_OP_LATENCY_FLOOR_MS:J = 0x50L

.field private static final STRONGBOX_OP_WINDOW_NS:J = 0x2540be400L

.field private static final TEE_LATENCY_FLOOR_MS:J = 0xfL

.field private static final TEE_OP_LATENCY_FLOOR_MS:J = 0x4L

.field private static final attestationKeys:Ljava/util/Set;

.field private static final generatedKeys:Ljava/util/concurrent/ConcurrentHashMap;

.field private static final importedKeys:Ljava/util/Set;

.field private static final interceptedOperations:Ljava/util/concurrent/ConcurrentHashMap;

.field private static final patchedChains:Ljava/util/concurrent/ConcurrentHashMap;

.field private static final persistExecutor:Ljava/util/concurrent/ExecutorService;

.field private static final secureRandom:Ljava/security/SecureRandom;

.field private static final softwareGrants:Ljava/util/concurrent/ConcurrentHashMap;

.field private static final teeResponses:Ljava/util/concurrent/ConcurrentHashMap;

.field private static final transactionNames$delegate:La/a;

.field private static final usageCounters:Ljava/util/concurrent/ConcurrentHashMap;


# instance fields
.field private final activeOps:Ljava/util/concurrent/ConcurrentHashMap;

.field private final original:Landroid/system/keystore2/IKeystoreSecurityLevel;

.field private final recentOps:Ljava/util/concurrent/ConcurrentHashMap;

.field private final securityLevel:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;-><init>(Lkotlin/jvm/internal/f;)V

    sput-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->Companion:Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->secureRandom:Ljava/security/SecureRandom;

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;

    const-string v1, "generateKey"

    const-class v2, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub;

    invoke-virtual {v0, v2, v1}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->getTransactCode(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v1

    sput v1, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->GENERATE_KEY_TRANSACTION:I

    const-string v3, "importKey"

    invoke-virtual {v0, v2, v3}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->getTransactCode(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v3

    sput v3, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->IMPORT_KEY_TRANSACTION:I

    const-string v4, "createOperation"

    invoke-virtual {v0, v2, v4}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->getTransactCode(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->CREATE_OPERATION_TRANSACTION:I

    filled-new-array {v1, v3, v0}, [I

    move-result-object v0

    sput-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->INTERCEPTED_CODES:[I

    new-instance v0, Lorg/matrix/TEESimulator/interception/keystore/d;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lorg/matrix/TEESimulator/interception/keystore/d;-><init>(I)V

    new-instance v1, La/f;

    invoke-direct {v1, v0}, La/f;-><init>(Lh/a;)V

    sput-object v1, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->transactionNames$delegate:La/a;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->persistExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->generatedKeys:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->teeResponses:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->patchedChains:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v0

    const-string v1, "newKeySet(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    sput-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->attestationKeys:Ljava/util/Set;

    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    sput-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->importedKeys:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->usageCounters:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->interceptedOperations:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->softwareGrants:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/system/keystore2/IKeystoreSecurityLevel;I)V
    .registers 4

    const-string v0, "original"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->original:Landroid/system/keystore2/IKeystoreSecurityLevel;

    iput p2, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->securityLevel:I

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->activeOps:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->recentOps:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static final synthetic access$getAttestationKeys$cp()Ljava/util/Set;
    .registers 1

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->attestationKeys:Ljava/util/Set;

    return-object v0
.end method

.method public static final synthetic access$getGeneratedKeys$cp()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->generatedKeys:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public static final synthetic access$getINTERCEPTED_CODES$cp()[I
    .registers 1

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->INTERCEPTED_CODES:[I

    return-object v0
.end method

.method public static final synthetic access$getImportedKeys$cp()Ljava/util/Set;
    .registers 1

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->importedKeys:Ljava/util/Set;

    return-object v0
.end method

.method public static final synthetic access$getInterceptedOperations$cp()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->interceptedOperations:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public static final synthetic access$getPatchedChains$cp()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->patchedChains:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public static final synthetic access$getSecureRandom$cp()Ljava/security/SecureRandom;
    .registers 1

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->secureRandom:Ljava/security/SecureRandom;

    return-object v0
.end method

.method public static final synthetic access$getSoftwareGrants$cp()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->softwareGrants:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public static final synthetic access$getTeeResponses$cp()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->teeResponses:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public static final synthetic access$getTransactionNames$delegate$cp()La/a;
    .registers 1

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->transactionNames$delegate:La/a;

    return-object v0
.end method

.method public static final synthetic access$getUsageCounters$cp()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->usageCounters:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private final buildKeyEntryResponse(ILjava/util/List;Lt4/l;Landroid/system/keystore2/KeyDescriptor;)Landroid/system/keystore2/KeyEntryResponse;
    .registers 10

    # MPL-P16-D: keep uid (v3) and the request alias (v4); buildKeyEntryResponse overwrites
    # p1 with the authorizations and p4 with the response metadata later on.
    move/from16 v3, p1

    iget-object v4, p4, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    new-instance v0, Landroid/system/keystore2/KeyDescriptor;

    invoke-direct {v0}, Landroid/system/keystore2/KeyDescriptor;-><init>()V

    const/4 v1, 0x4

    iput v1, v0, Landroid/system/keystore2/KeyDescriptor;->domain:I

    iget-wide v1, p4, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    iput-wide v1, v0, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    const/4 p4, 0x0

    iput-object p4, v0, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    iput-object p4, v0, Landroid/system/keystore2/KeyDescriptor;->blob:[B

    new-instance p4, Landroid/system/keystore2/KeyMetadata;

    invoke-direct {p4}, Landroid/system/keystore2/KeyMetadata;-><init>()V

    iget v1, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->securityLevel:I

    iput v1, p4, Landroid/system/keystore2/KeyMetadata;->keySecurityLevel:I

    iput-object v0, p4, Landroid/system/keystore2/KeyMetadata;->key:Landroid/system/keystore2/KeyDescriptor;

    sget-object v0, Ly4/c;->a:La/f;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/security/cert/Certificate;

    invoke-interface {p2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/security/cert/Certificate;

    invoke-static {p4, p2}, Ly4/c;->f(Landroid/system/keystore2/KeyMetadata;[Ljava/security/cert/Certificate;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lq4/k;->U0(Ljava/lang/Object;)V

    iget p2, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->securityLevel:I

    # invokes: Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptorKt;->toAuthorizations(Lt4/l;II)[Landroid/system/keystore2/Authorization;
    invoke-static {p3, p1, p2}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptorKt;->access$toAuthorizations(Lt4/l;II)[Landroid/system/keystore2/Authorization;

    move-result-object p1

    # MPL-P16-D: report the live remaining count instead of the declared 405 limit.
    invoke-static {p1, v3, v4}, Lmpl/UsagePolicy;->adjust([Landroid/system/keystore2/Authorization;ILjava/lang/String;)[Landroid/system/keystore2/Authorization;

    move-result-object p1

    iput-object p1, p4, Landroid/system/keystore2/KeyMetadata;->authorizations:[Landroid/system/keystore2/Authorization;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p4, Landroid/system/keystore2/KeyMetadata;->modificationTimeMs:J

    new-instance p1, Landroid/system/keystore2/KeyEntryResponse;

    invoke-direct {p1}, Landroid/system/keystore2/KeyEntryResponse;-><init>()V

    iput-object p4, p1, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object p0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->original:Landroid/system/keystore2/IKeystoreSecurityLevel;

    iput-object p0, p1, Landroid/system/keystore2/KeyEntryResponse;->iSecurityLevel:Landroid/system/keystore2/IKeystoreSecurityLevel;

    return-object p1
.end method

.method public static synthetic c(JLjava/lang/Long;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->trackAndEnforceOpLimit$lambda$2(JLjava/lang/Long;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d()Ljava/util/Map;
    .registers 1

    invoke-static {}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->transactionNames_delegate$lambda$0()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private final doSoftwareKeyGen(JILandroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;Lt4/l;Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;Z)Lv4/f;
    .registers 35

    move-object/from16 v4, p0

    move/from16 v9, p3

    move-object/from16 v3, p4

    move-object/from16 v0, p5

    move-object/from16 v6, p6

    move-object/from16 v1, p7

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v17

    sget-object v2, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->secureRandom:Ljava/security/SecureRandom;

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v7

    iput-wide v7, v3, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    sget-object v2, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v2, v3, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v10, "Generating software key for "

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "]."

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lx4/b;->c(Ljava/lang/String;)V

    sget-object v2, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->Companion:Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;

    invoke-virtual {v2, v1}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;->cleanupKeyData(Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;)V

    iget v7, v6, Lt4/l;->b:I

    const/4 v5, 0x3

    const-wide/16 v19, 0x0

    const v8, 0xf4240

    const-wide/16 v21, 0xfa

    const/4 v10, 0x2

    const/4 v11, 0x0

    const-string v12, "obtain(...)"

    const/4 v13, 0x1

    const/16 v14, -0x26

    const/4 v15, 0x0

    if-eq v7, v5, :cond_188

    if-eq v7, v13, :cond_188

    if-nez v0, :cond_17a

    const/16 v0, 0x20

    if-eq v7, v0, :cond_90

    const/16 v0, 0x80

    if-ne v7, v0, :cond_84

    iget-object v0, v6, Lt4/l;->i:Ljava/util/List;

    invoke-static {v0}, Lb/i;->X0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_6a

    goto :goto_74

    :cond_6a
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v5, 0x5

    if-ne v2, v5, :cond_74

    const-string v0, "HmacSHA384"

    goto :goto_92

    :cond_74
    :goto_74
    if-nez v0, :cond_77

    goto :goto_81

    :cond_77
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_81

    const-string v0, "HmacSHA512"

    goto :goto_92

    :cond_81
    :goto_81
    const-string v0, "HmacSHA256"

    goto :goto_92

    :cond_84
    new-instance v0, Landroid/os/ServiceSpecificException;

    const-string v1, "Unsupported symmetric algorithm: "

    invoke-static {v7, v1}, Lb/b;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v14, v1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_90
    const-string v0, "AES"

    :goto_92
    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    iget v2, v6, Lt4/l;->a:I

    invoke-virtual {v0, v2}, Ljavax/crypto/KeyGenerator;->init(I)V

    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v2

    new-instance v5, Landroid/system/keystore2/KeyMetadata;

    invoke-direct {v5}, Landroid/system/keystore2/KeyMetadata;-><init>()V

    iget v0, v4, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->securityLevel:I

    iput v0, v5, Landroid/system/keystore2/KeyMetadata;->keySecurityLevel:I

    new-instance v0, Landroid/system/keystore2/KeyDescriptor;

    invoke-direct {v0}, Landroid/system/keystore2/KeyDescriptor;-><init>()V

    const/4 v13, 0x4

    iput v13, v0, Landroid/system/keystore2/KeyDescriptor;->domain:I

    iget-wide v13, v3, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    iput-wide v13, v0, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    iput-object v15, v0, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    iput-object v15, v0, Landroid/system/keystore2/KeyDescriptor;->blob:[B

    iput-object v0, v5, Landroid/system/keystore2/KeyMetadata;->key:Landroid/system/keystore2/KeyDescriptor;

    iput-object v15, v5, Landroid/system/keystore2/KeyMetadata;->certificate:[B

    iput-object v15, v5, Landroid/system/keystore2/KeyMetadata;->certificateChain:[B

    iget v0, v4, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->securityLevel:I

    # invokes: Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptorKt;->toAuthorizations(Lt4/l;II)[Landroid/system/keystore2/Authorization;
    invoke-static {v6, v9, v0}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptorKt;->access$toAuthorizations(Lt4/l;II)[Landroid/system/keystore2/Authorization;

    move-result-object v0

    iput-object v0, v5, Landroid/system/keystore2/KeyMetadata;->authorizations:[Landroid/system/keystore2/Authorization;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    iput-wide v13, v5, Landroid/system/keystore2/KeyMetadata;->modificationTimeMs:J

    move-object v13, v15

    new-instance v15, Landroid/system/keystore2/KeyEntryResponse;

    invoke-direct {v15}, Landroid/system/keystore2/KeyEntryResponse;-><init>()V

    iput-object v5, v15, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v0, v4, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->original:Landroid/system/keystore2/IKeystoreSecurityLevel;

    iput-object v0, v15, Landroid/system/keystore2/KeyEntryResponse;->iSecurityLevel:Landroid/system/keystore2/IKeystoreSecurityLevel;

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->generatedKeys:Ljava/util/concurrent/ConcurrentHashMap;

    move v14, v10

    new-instance v10, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$GeneratedKeyInfo;

    move/from16 v16, v11

    const/4 v11, 0x0

    move-object/from16 v24, v13

    move/from16 v23, v14

    iget-wide v13, v3, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    move-object/from16 v25, v12

    move-object v12, v2

    move-object/from16 v2, v25

    move/from16 v25, v16

    move-object/from16 v16, v6

    move/from16 v6, v25

    invoke-direct/range {v10 .. v16}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$GeneratedKeyInfo;-><init>(Ljava/security/KeyPair;Ljavax/crypto/SecretKey;JLandroid/system/keystore2/KeyEntryResponse;Lt4/l;)V

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;

    invoke-virtual {v0, v1}, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->forgetDeletedKey(Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;)V

    :try_start_fc
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v10

    invoke-static {v2, v10}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_103
    .catchall {:try_start_fc .. :try_end_103} :catchall_10f

    :try_start_103
    invoke-virtual {v5, v10, v6}, Landroid/system/keystore2/KeyMetadata;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v10}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0
    :try_end_10a
    .catchall {:try_start_103 .. :try_end_10a} :catchall_111

    :try_start_10a
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    move-object v15, v0

    goto :goto_11c

    :catchall_10f
    move-exception v0

    goto :goto_116

    :catchall_111
    move-exception v0

    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    throw v0
    :try_end_116
    .catchall {:try_start_10a .. :try_end_116} :catchall_10f

    :goto_116
    new-instance v2, La/d;

    invoke-direct {v2, v0}, La/d;-><init>(Ljava/lang/Throwable;)V

    move-object v15, v2

    :goto_11c
    instance-of v0, v15, La/d;

    if-eqz v0, :cond_122

    move-object/from16 v15, v24

    :cond_122
    move-object v6, v15

    check-cast v6, [B

    sget-object v10, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->persistExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lorg/matrix/TEESimulator/interception/keystore/shim/c;

    move-object v11, v5

    move-object v2, v12

    move/from16 v12, v23

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v6}, Lorg/matrix/TEESimulator/interception/keystore/shim/c;-><init>(Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;Ljavax/crypto/SecretKey;Landroid/system/keystore2/KeyDescriptor;Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;Lt4/l;[B)V

    move-object v15, v4

    invoke-interface {v10, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget v0, v15, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->securityLevel:I

    if-ne v0, v12, :cond_14e

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long v0, v0, v17

    int-to-long v2, v8

    div-long/2addr v0, v2

    sub-long v21, v21, v0

    cmp-long v0, v21, v19

    if-lez v0, :cond_159

    mul-long v21, v21, v2

    invoke-static/range {v21 .. v22}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    goto :goto_159

    :cond_14e
    sget-object v0, Lz4/g;->a:Ljava/security/SecureRandom;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long v0, v0, v17

    invoke-static {v7, v0, v1}, Lz4/g;->a(IJ)V

    :cond_159
    :goto_159
    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;

    new-instance v1, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils$ReplyDiagnostic;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "genkey-reply-sym"

    invoke-direct {v1, v9, v2, v3}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils$ReplyDiagnostic;-><init>(ILjava/lang/Long;Ljava/lang/String;)V

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 p0, v0

    move-object/from16 p3, v1

    move/from16 p4, v2

    move-object/from16 p5, v3

    move/from16 p2, v4

    move-object/from16 p1, v11

    invoke-static/range {p0 .. p5}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->createTypedObjectReply$default(Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;Landroid/os/Parcelable;ILorg/matrix/TEESimulator/interception/keystore/InterceptorUtils$ReplyDiagnostic;ILjava/lang/Object;)Lv4/d;

    move-result-object v0

    return-object v0

    :cond_17a
    new-instance v0, Landroid/os/ServiceSpecificException;

    const-string v1, "ATTEST_KEY tag is not supported for symmetric algorithms (algo="

    const-string v2, ")"

    invoke-static {v1, v2, v7}, Lb/b;->g(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v14, v1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_188
    move-object v5, v6

    move v6, v11

    move-object/from16 v24, v15

    move-object v11, v1

    move-object v15, v4

    move-object v1, v12

    move v12, v10

    move-object v10, v3

    if-eqz v0, :cond_1bb

    iget v3, v0, Landroid/system/keystore2/KeyDescriptor;->domain:I

    if-ne v3, v13, :cond_1aa

    iget-wide v3, v0, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    invoke-virtual {v2, v3, v4, v9}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;->resolveGrant(JI)Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion$SoftwareGrant;

    move-result-object v2

    if-eqz v2, :cond_1bb

    invoke-virtual {v2}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion$SoftwareGrant;->getOwnerKeyId()Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;

    move-result-object v2

    if-eqz v2, :cond_1bb

    invoke-virtual {v2}, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;->getAlias()Ljava/lang/String;

    move-result-object v2

    goto :goto_1bd

    :cond_1aa
    iget-object v3, v0, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    if-nez v3, :cond_1b9

    iget-wide v3, v0, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v9, v3}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;->findGeneratedAliasByKeyId(ILjava/lang/Long;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1bd

    :cond_1b9
    move-object v2, v3

    goto :goto_1bd

    :cond_1bb
    move-object/from16 v2, v24

    :goto_1bd
    if-eqz v0, :cond_1e0

    if-eqz v2, :cond_1c2

    goto :goto_1e0

    :cond_1c2
    new-instance v1, Landroid/os/ServiceSpecificException;

    iget-wide v2, v0, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Designated attest key not resolvable (nspace="

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ") for uid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v14, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_1e0
    :goto_1e0
    sget-object v3, Lorg/matrix/TEESimulator/pki/NativeCertGen;->INSTANCE:Lorg/matrix/TEESimulator/pki/NativeCertGen;

    invoke-virtual {v3}, Lorg/matrix/TEESimulator/pki/NativeCertGen;->isAvailable()Z

    move-result v3

    const-string v4, "alias"

    if-eqz v3, :cond_200

    if-nez v0, :cond_200

    invoke-direct {v15, v9, v5}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->generateAttestedKeyPairNative(ILt4/l;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_1f4

    :goto_1f2
    move-object v13, v0

    goto :goto_20c

    :cond_1f4
    iget-object v0, v10, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    invoke-static {v4, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget v3, v15, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->securityLevel:I

    invoke-static {v9, v0, v2, v5, v3}, Ls2/b;->w(ILjava/lang/String;Ljava/lang/String;Lt4/l;I)Landroid/util/Pair;

    move-result-object v0

    goto :goto_1f2

    :cond_200
    iget-object v0, v10, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    invoke-static {v4, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget v3, v15, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->securityLevel:I

    invoke-static {v9, v0, v2, v5, v3}, Ls2/b;->w(ILjava/lang/String;Ljava/lang/String;Lt4/l;I)Landroid/util/Pair;

    move-result-object v0

    goto :goto_1f2

    :goto_20c
    if-eqz v13, :cond_2ec

    iget-object v0, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    const-string v14, "second"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v0, Ljava/util/List;

    iget-object v0, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v14, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v0, Ljava/util/List;

    invoke-direct {v15, v9, v0, v5, v10}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->buildKeyEntryResponse(ILjava/util/List;Lt4/l;Landroid/system/keystore2/KeyDescriptor;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object v2

    iget-object v0, v2, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->generatedKeys:Ljava/util/concurrent/ConcurrentHashMap;

    move-object v3, v0

    new-instance v0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$GeneratedKeyInfo;

    iget-object v4, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/security/KeyPair;

    move-object v5, v2

    const/4 v2, 0x0

    move-object/from16 v23, v1

    move-object/from16 v16, v3

    move-object v1, v4

    iget-wide v3, v10, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    move-object/from16 v6, p6

    move-object/from16 v8, v16

    move-object/from16 v12, v23

    invoke-direct/range {v0 .. v6}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$GeneratedKeyInfo;-><init>(Ljava/security/KeyPair;Ljavax/crypto/SecretKey;JLandroid/system/keystore2/KeyEntryResponse;Lt4/l;)V

    move-object v1, v5

    invoke-interface {v8, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;

    invoke-virtual {v0, v11}, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->forgetDeletedKey(Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;)V

    if-eqz p8, :cond_24f

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->attestationKeys:Ljava/util/Set;

    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_24f
    iget-object v0, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v14, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lb/i;->c1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v5

    iget-object v0, v1, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    if-eqz v0, :cond_28b

    :try_start_25e
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    invoke-static {v12, v2}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_265
    .catchall {:try_start_25e .. :try_end_265} :catchall_271

    const/4 v6, 0x0

    :try_start_266
    invoke-virtual {v0, v2, v6}, Landroid/system/keystore2/KeyMetadata;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v2}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0
    :try_end_26d
    .catchall {:try_start_266 .. :try_end_26d} :catchall_273

    :try_start_26d
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    goto :goto_27e

    :catchall_271
    move-exception v0

    goto :goto_278

    :catchall_273
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0
    :try_end_278
    .catchall {:try_start_26d .. :try_end_278} :catchall_271

    :goto_278
    new-instance v2, La/d;

    invoke-direct {v2, v0}, La/d;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v2

    :goto_27e
    instance-of v2, v0, La/d;

    if-eqz v2, :cond_283

    goto :goto_285

    :cond_283
    move-object/from16 v24, v0

    :goto_285
    move-object/from16 v0, v24

    check-cast v0, [B

    move-object v8, v0

    goto :goto_28d

    :cond_28b
    move-object/from16 v8, v24

    :goto_28d
    sget-object v12, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->persistExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lorg/matrix/TEESimulator/interception/keystore/shim/e;

    move-object v2, v11

    move-object v11, v1

    move-object v1, v2

    move-object/from16 v6, p6

    move-object v3, v10

    move-object v2, v13

    move-object v4, v15

    const v13, 0xf4240

    move v10, v7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v8}, Lorg/matrix/TEESimulator/interception/keystore/shim/e;-><init>(Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;Landroid/util/Pair;Landroid/system/keystore2/KeyDescriptor;Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;Ljava/util/List;Lt4/l;Z[B)V

    invoke-interface {v12, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget v0, v4, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->securityLevel:I

    const/4 v12, 0x2

    if-ne v0, v12, :cond_2be

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long v0, v0, v17

    int-to-long v2, v13

    div-long/2addr v0, v2

    sub-long v21, v21, v0

    cmp-long v0, v21, v19

    if-lez v0, :cond_2c9

    mul-long v21, v21, v2

    invoke-static/range {v21 .. v22}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    goto :goto_2c9

    :cond_2be
    sget-object v0, Lz4/g;->a:Ljava/security/SecureRandom;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long v0, v0, v17

    invoke-static {v10, v0, v1}, Lz4/g;->a(IJ)V

    :cond_2c9
    :goto_2c9
    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;

    iget-object v1, v11, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    new-instance v2, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils$ReplyDiagnostic;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "genkey-reply-asym"

    invoke-direct {v2, v9, v3, v4}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils$ReplyDiagnostic;-><init>(ILjava/lang/Long;Ljava/lang/String;)V

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 p0, v0

    move-object/from16 p1, v1

    move-object/from16 p3, v2

    move/from16 p4, v3

    move-object/from16 p5, v4

    move/from16 p2, v5

    invoke-static/range {p0 .. p5}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->createTypedObjectReply$default(Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;Landroid/os/Parcelable;ILorg/matrix/TEESimulator/interception/keystore/InterceptorUtils$ReplyDiagnostic;ILjava/lang/Object;)Lv4/d;

    move-result-object v0

    return-object v0

    :cond_2ec
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Both native and BouncyCastle cert gen failed."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final doSoftwareKeyGen$lambda$3(Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;Ljavax/crypto/SecretKey;Landroid/system/keystore2/KeyDescriptor;Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;Lt4/l;[B)V
    .registers 21

    move-object/from16 v0, p4

    sget-object v1, Lorg/matrix/TEESimulator/interception/keystore/shim/GeneratedKeyPersistence;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/shim/GeneratedKeyPersistence;

    move-object/from16 v2, p2

    iget-wide v4, v2, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    move-object/from16 v2, p3

    iget v6, v2, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->securityLevel:I

    iget v8, v0, Lt4/l;->b:I

    iget v9, v0, Lt4/l;->a:I

    iget-object v2, v0, Lt4/l;->c:Ljava/lang/Integer;

    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_18
    move v10, v2

    goto :goto_1c

    :cond_1a
    const/4 v2, 0x0

    goto :goto_18

    :goto_1c
    iget-object v11, v0, Lt4/l;->h:Ljava/util/List;

    iget-object v12, v0, Lt4/l;->i:Ljava/util/List;

    const/4 v13, 0x0

    const/4 v2, 0x0

    sget-object v7, Lb/q;->c:Lb/q;

    move-object/from16 v3, p1

    move-object/from16 v14, p5

    move-object v0, v1

    move-object v1, p0

    invoke-virtual/range {v0 .. v14}, Lorg/matrix/TEESimulator/interception/keystore/shim/GeneratedKeyPersistence;->save(Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;Ljava/security/KeyPair;Ljavax/crypto/SecretKey;JILjava/util/List;IIILjava/util/List;Ljava/util/List;Z[B)V

    return-void
.end method

.method private static final doSoftwareKeyGen$lambda$9(Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;Landroid/util/Pair;Landroid/system/keystore2/KeyDescriptor;Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;Ljava/util/List;Lt4/l;Z[B)V
    .registers 23

    move-object/from16 v0, p5

    sget-object v1, Lorg/matrix/TEESimulator/interception/keystore/shim/GeneratedKeyPersistence;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/shim/GeneratedKeyPersistence;

    move-object/from16 v2, p1

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/security/KeyPair;

    move-object/from16 v3, p2

    iget-wide v4, v3, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    move-object/from16 v3, p3

    iget v6, v3, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->securityLevel:I

    iget v8, v0, Lt4/l;->b:I

    iget v9, v0, Lt4/l;->a:I

    iget-object v3, v0, Lt4/l;->c:Ljava/lang/Integer;

    if-eqz v3, :cond_20

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_1e
    move v10, v3

    goto :goto_22

    :cond_20
    const/4 v3, 0x0

    goto :goto_1e

    :goto_22
    iget-object v11, v0, Lt4/l;->h:Ljava/util/List;

    iget-object v12, v0, Lt4/l;->i:Ljava/util/List;

    const/4 v3, 0x0

    move-object/from16 v7, p4

    move/from16 v13, p6

    move-object/from16 v14, p7

    move-object v0, v1

    move-object v1, p0

    invoke-virtual/range {v0 .. v14}, Lorg/matrix/TEESimulator/interception/keystore/shim/GeneratedKeyPersistence;->save(Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;Ljava/security/KeyPair;Ljavax/crypto/SecretKey;JILjava/util/List;IIILjava/util/List;Ljava/util/List;Z[B)V

    return-void
.end method

.method public static synthetic e(Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;Ljavax/crypto/SecretKey;Landroid/system/keystore2/KeyDescriptor;Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;Lt4/l;[B)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->doSoftwareKeyGen$lambda$3(Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;Ljavax/crypto/SecretKey;Landroid/system/keystore2/KeyDescriptor;Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;Lt4/l;[B)V

    return-void
.end method

.method public static synthetic f(Lorg/matrix/TEESimulator/interception/keystore/d;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentLinkedDeque;
    .registers 2

    invoke-static {p0, p1}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->pruneOpsForUid$lambda$1(Lh/l;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentLinkedDeque;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lorg/matrix/TEESimulator/interception/keystore/shim/f;Ljava/lang/Object;)Z
    .registers 2

    invoke-static {p0, p1}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->trackAndEnforceOpLimit$lambda$3(Lh/l;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private final generateAttestedKeyPairNative(ILt4/l;)Landroid/util/Pair;
    .registers 61

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    const/16 v51, 0x0

    :try_start_8
    iget v3, v2, Lt4/l;->b:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_18

    const/4 v5, 0x3

    if-eq v3, v5, :cond_12

    goto/16 :goto_22b

    :cond_12
    const-string v3, "EC"

    goto :goto_1a

    :catchall_15
    move-exception v0

    goto/16 :goto_25b

    :cond_18
    const-string v3, "RSA"

    :goto_1a
    invoke-static {v1}, Lu4/g;->b(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Ly4/e;->b(Ljava/lang/String;Ljava/lang/String;)Ly4/d;

    move-result-object v3

    if-nez v3, :cond_26

    goto/16 :goto_22b

    :cond_26
    iget-object v5, v3, Ly4/d;->a:Ljava/security/KeyPair;

    invoke-virtual {v5}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v5

    invoke-interface {v5}, Ljava/security/Key;->getEncoded()[B

    move-result-object v15

    iget-object v3, v3, Ly4/d;->b:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v3}, Lb/k;->V0(Ljava/lang/Iterable;)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    move v8, v7

    :goto_41
    if-ge v8, v6, :cond_53

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    check-cast v9, Ljava/security/cert/Certificate;

    invoke-virtual {v9}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_41

    :cond_53
    new-array v3, v7, [B

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v8, v7

    :goto_5a
    if-ge v8, v6, :cond_6c

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    check-cast v9, [B

    invoke-static {v9}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    invoke-static {v3, v9}, Lb/h;->j1([B[B)[B

    move-result-object v3

    goto :goto_5a

    :cond_6c
    sget-object v5, Lz4/f;->a:La/f;

    iget v5, v0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->securityLevel:I

    invoke-static {v5}, Lz4/f;->e(I)I

    move-result v5

    iget v6, v0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->securityLevel:I

    invoke-static {v6}, Lz4/f;->g(I)I

    move-result v19

    iget-object v6, v2, Lt4/l;->o:[B

    if-eqz v6, :cond_83

    invoke-static {v1}, Lt4/c;->c(I)Lm/x0;

    move-result-object v6

    goto :goto_85

    :cond_83
    move-object/from16 v6, v51

    :goto_85
    new-instance v8, Lorg/matrix/TEESimulator/pki/CertGenConfig;

    iget v9, v2, Lt4/l;->b:I

    iget v10, v2, Lt4/l;->a:I

    iget-object v11, v2, Lt4/l;->c:Ljava/lang/Integer;

    if-eqz v11, :cond_94

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    goto :goto_95

    :cond_94
    move v11, v7

    :goto_95
    iget-object v12, v2, Lt4/l;->j:Ljava/math/BigInteger;

    if-eqz v12, :cond_9e

    invoke-virtual {v12}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v12

    goto :goto_a1

    :cond_9e
    const-wide/32 v12, 0x10001

    :goto_a1
    iget-object v14, v2, Lt4/l;->o:[B

    iget-object v7, v2, Lt4/l;->h:Ljava/util/List;

    invoke-static {v7}, Lb/i;->b1(Ljava/util/Collection;)[I

    move-result-object v7

    iget-object v4, v2, Lt4/l;->i:Ljava/util/List;

    invoke-static {v4}, Lb/i;->b1(Ljava/util/Collection;)[I

    move-result-object v4

    move-object/from16 v18, v3

    iget-object v3, v2, Lt4/l;->k:Ljava/math/BigInteger;

    if-eqz v3, :cond_bc

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    move-object/from16 v20, v3

    goto :goto_be

    :cond_bc
    move-object/from16 v20, v51

    :goto_be
    iget-object v3, v2, Lt4/l;->l:Lj0/c;

    if-eqz v3, :cond_c9

    invoke-virtual {v3}, Lm/n;->getEncoded()[B

    move-result-object v3

    move-object/from16 v21, v3

    goto :goto_cb

    :cond_c9
    move-object/from16 v21, v51

    :goto_cb
    iget-object v3, v2, Lt4/l;->m:Ljava/util/Date;

    const-wide/16 v22, -0x1

    if-eqz v3, :cond_d6

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v24

    goto :goto_d8

    :cond_d6
    move-wide/from16 v24, v22

    :goto_d8
    iget-object v3, v2, Lt4/l;->n:Ljava/util/Date;

    if-eqz v3, :cond_e1

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v26

    goto :goto_e3

    :cond_e1
    move-wide/from16 v26, v22

    :goto_e3
    invoke-static {v15}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    iget v0, v0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->securityLevel:I

    move v3, v9

    move-object/from16 v9, v20

    invoke-static {}, Lz4/f;->h()I

    move-result v20

    move/from16 v28, v10

    move-object/from16 v10, v21

    invoke-static {v1}, Lz4/f;->i(I)I

    move-result v21

    move/from16 v29, v0

    const-string v0, "vendor"

    move/from16 p0, v3

    const/4 v3, 0x1

    invoke-static {v0, v3, v1}, Lz4/f;->f(Ljava/lang/String;ZI)Ljava/lang/Integer;

    move-result-object v17

    if-eqz v17, :cond_10b

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_108
    move/from16 v30, v0

    goto :goto_110

    :cond_10b
    invoke-static {v3, v0}, Lz4/f;->j(ZLjava/lang/String;)I

    move-result v0

    goto :goto_108

    :goto_110
    const-string v0, "boot"

    invoke-static {v0, v3, v1}, Lz4/f;->f(Ljava/lang/String;ZI)Ljava/lang/Integer;

    move-result-object v17

    if-eqz v17, :cond_11d

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_121

    :cond_11d
    invoke-static {v3, v0}, Lz4/f;->j(ZLjava/lang/String;)I

    move-result v0

    :goto_121
    sget-object v3, Lz4/f;->a:La/f;

    invoke-virtual {v3}, La/f;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    sget-object v31, Lz4/f;->b:La/f;

    invoke-virtual/range {v31 .. v31}, La/f;->a()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, [B

    move-wide/from16 v32, v12

    move-object v12, v14

    move-wide/from16 v13, v26

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    if-eqz v6, :cond_140

    iget-object v6, v6, Lm/r;->c:[B

    if-nez v6, :cond_142

    :cond_140
    const/4 v6, 0x0

    goto :goto_145

    :cond_142
    :goto_142
    move/from16 v16, v0

    goto :goto_148

    :goto_145
    new-array v6, v6, [B

    goto :goto_142

    :goto_148
    const/16 v0, 0x190

    if-lt v5, v0, :cond_15a

    sget-object v0, Lz4/f;->l:La/f;

    invoke-virtual {v0}, La/f;->a()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v0, [B

    goto :goto_15c

    :cond_15a
    move-object/from16 v0, v51

    :goto_15c
    iget-object v1, v2, Lt4/l;->p:[B

    move-object/from16 v34, v0

    iget-object v0, v2, Lt4/l;->q:[B

    move-object/from16 v35, v0

    iget-object v0, v2, Lt4/l;->r:[B

    move-object/from16 v36, v0

    iget-object v0, v2, Lt4/l;->s:[B

    move-object/from16 v37, v0

    iget-object v0, v2, Lt4/l;->t:[B

    move-object/from16 v38, v0

    iget-object v0, v2, Lt4/l;->u:[B

    move-object/from16 v39, v0

    iget-object v0, v2, Lt4/l;->v:[B

    move-object/from16 v40, v0

    iget-object v0, v2, Lt4/l;->w:[B

    move-object/from16 v41, v0

    const/16 v0, 0x12c

    if-lt v5, v0, :cond_185

    iget-object v0, v2, Lt4/l;->x:[B

    move-object/from16 v42, v0

    goto :goto_187

    :cond_185
    move-object/from16 v42, v51

    :goto_187
    iget-object v0, v2, Lt4/l;->y:Ljava/util/Date;

    if-eqz v0, :cond_190

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v43

    goto :goto_192

    :cond_190
    move-wide/from16 v43, v22

    :goto_192
    iget-object v0, v2, Lt4/l;->z:Ljava/util/Date;

    if-eqz v0, :cond_19b

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v45

    goto :goto_19d

    :cond_19b
    move-wide/from16 v45, v22

    :goto_19d
    iget-object v0, v2, Lt4/l;->A:Ljava/util/Date;

    if-eqz v0, :cond_1a5

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v22

    :cond_1a5
    iget-object v0, v2, Lt4/l;->B:Ljava/lang/Integer;

    if-eqz v0, :cond_1b0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1ad
    move/from16 v47, v0

    goto :goto_1b2

    :cond_1b0
    const/4 v0, -0x1

    goto :goto_1ad

    :goto_1b2
    iget-object v0, v2, Lt4/l;->C:Ljava/lang/Boolean;

    move-object/from16 v48, v1

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    move/from16 v49, v0

    iget-object v0, v2, Lt4/l;->E:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, v2, Lt4/l;->L:Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/16 v17, 0x1

    xor-int/lit8 v1, v1, 0x1

    sget-object v2, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    const/16 v50, 0x0

    move/from16 v2, v28

    move/from16 v17, v29

    move-object/from16 v29, v34

    move-object/from16 v34, v38

    move-object/from16 v38, v42

    move-object/from16 v28, v6

    move-object v6, v12

    move/from16 v52, v1

    move/from16 v1, p0

    move/from16 v53, v49

    move/from16 v49, p1

    move/from16 v54, v47

    move/from16 v47, v0

    move-object v0, v8

    move-object v8, v4

    move-object/from16 v55, v48

    move/from16 v48, v52

    move-wide/from16 v56, v24

    move-object/from16 v24, v3

    move v3, v11

    move-wide/from16 v11, v56

    move-object/from16 v25, v31

    move-object/from16 v31, v35

    move-object/from16 v35, v39

    move-object/from16 v52, v18

    move/from16 v18, v5

    move-wide/from16 v4, v32

    move-object/from16 v32, v36

    move-object/from16 v33, v37

    move-object/from16 v36, v40

    move-object/from16 v37, v41

    move-wide/from16 v39, v43

    move-wide/from16 v41, v45

    move/from16 v45, v54

    move/from16 v46, v53

    move-wide/from16 v43, v22

    move/from16 v22, v30

    move-object/from16 v30, v55

    move/from16 v23, v16

    move-object/from16 v16, v52

    invoke-direct/range {v0 .. v50}, Lorg/matrix/TEESimulator/pki/CertGenConfig;-><init>(IIIJ[B[I[I[B[BJJ[B[BIIIIIII[B[BJ[B[B[B[B[B[B[B[B[B[B[BJJJIZZZIZ)V

    sget-object v1, Lorg/matrix/TEESimulator/pki/NativeCertGen;->INSTANCE:Lorg/matrix/TEESimulator/pki/NativeCertGen;

    invoke-virtual {v1, v0}, Lorg/matrix/TEESimulator/pki/NativeCertGen;->generateAttestedKeyPair(Lorg/matrix/TEESimulator/pki/CertGenConfig;)[B

    move-result-object v0

    if-nez v0, :cond_22c

    :goto_22b
    return-object v51

    :cond_22c
    invoke-virtual {v1, v0}, Lorg/matrix/TEESimulator/pki/NativeCertGen;->parseNativeResult([B)La/c;

    move-result-object v0

    iget-object v1, v0, La/c;->c:Ljava/lang/Object;

    check-cast v1, Ljava/security/KeyPair;

    iget-object v0, v0, La/c;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NativeCertGen: generated key pair successfully ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " certs)"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lx4/b;->c(Ljava/lang/String;)V

    # MPL-P16-F: ak INCLUDE_UNIQUE_ID - the native encoder has no uniqueId field, so a
    # per-boot 32-byte value is spliced into KeyDescription index 5 and the leaf is
    # re-signed with the keybox key. patchChain returns the original list on any failure.
    move-object/from16 v13, v0

    move-object/from16 v14, p2

    invoke-static/range {v13 .. v15}, Lmpl/LeafSurgery;->patchChain(Ljava/util/List;Lt4/l;[B)Ljava/util/List;

    move-result-object v13

    # patchChain returns null to mean "keep the chain the native library produced".
    if-eqz v13, :mpl_p16_f_keep

    move-object/from16 v0, v13

    :mpl_p16_f_keep

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_25a
    .catchall {:try_start_8 .. :try_end_25a} :catchall_15

    goto :goto_260

    :goto_25b
    new-instance v2, La/d;

    invoke-direct {v2, v0}, La/d;-><init>(Ljava/lang/Throwable;)V

    :goto_260
    invoke-static {v2}, La/e;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_26d

    sget-object v1, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    const-string v1, "NativeCertGen: generation failed, falling back to BouncyCastle"

    invoke-static {v1, v0}, Lx4/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_26d
    instance-of v0, v2, La/d;

    if-eqz v0, :cond_272

    goto :goto_274

    :cond_272
    move-object/from16 v51, v2

    :goto_274
    check-cast v51, Landroid/util/Pair;

    return-object v51
.end method

.method public static synthetic h(Ljava/lang/Integer;)Ljava/util/concurrent/ConcurrentLinkedDeque;
    .registers 1

    invoke-static {p0}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->trackAndEnforceOpLimit$lambda$0(Ljava/lang/Integer;)Ljava/util/concurrent/ConcurrentLinkedDeque;

    move-result-object p0

    return-object p0
.end method

.method private final handleCreateOperation(JILandroid/os/Parcel;)Lv4/f;
    .registers 34

    move-object/from16 v0, p0

    move-wide/from16 v2, p1

    move/from16 v9, p3

    move-object/from16 v1, p4

    const-string v10, "."

    const-string v4, "[TX_ID: "

    :try_start_c
    sget-object v5, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v5

    invoke-virtual {v1}, Landroid/os/Parcel;->dataAvail()I

    move-result v6

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, "] createOperation parcel: dataSize="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " dataAvail="

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " dataPos="

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lx4/b;->a(Ljava/lang/String;)V

    const-string v5, "android.system.keystore2.IKeystoreSecurityLevel"

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v5, Landroid/system/keystore2/KeyDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    check-cast v5, Landroid/system/keystore2/KeyDescriptor;

    iget v6, v5, Landroid/system/keystore2/KeyDescriptor;->domain:I

    iget-wide v7, v5, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    iget-object v11, v5, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, "] createOperation descriptor: domain="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " nspace="

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " alias="

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lx4/b;->a(Ljava/lang/String;)V

    iget v6, v5, Landroid/system/keystore2/KeyDescriptor;->domain:I
    :try_end_80
    .catchall {:try_start_c .. :try_end_80} :catchall_a6

    const-wide/16 v7, 0x0

    const/4 v11, 0x4

    sget-object v12, Lv4/c;->a:Lv4/c;

    if-eqz v6, :cond_13c

    if-eq v6, v11, :cond_a9

    :try_start_89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "] createOperation domain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", forwarding to HAL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lx4/b;->c(Ljava/lang/String;)V

    return-object v12

    :catchall_a6
    move-exception v0

    goto/16 :goto_375

    :cond_a9
    iget-wide v14, v5, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    cmp-long v6, v14, v7

    if-nez v6, :cond_b1

    const/4 v11, 0x0

    goto :goto_107

    :cond_b1
    sget-object v6, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->generatedKeys:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    const-string v7, "<get-entries>(...)"

    invoke-static {v7, v6}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_c5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v16, v8

    check-cast v16, Ljava/util/Map$Entry;

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;

    invoke-virtual/range {v16 .. v16}, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;->getUid()I

    move-result v11

    if-ne v11, v9, :cond_e2

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e2
    const/4 v11, 0x4

    goto :goto_c5

    :cond_e4
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v8, 0x0

    :cond_e9
    if-ge v8, v6, :cond_104

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v16, v11

    check-cast v16, Ljava/util/Map$Entry;

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$GeneratedKeyInfo;

    invoke-virtual/range {v16 .. v16}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$GeneratedKeyInfo;->getNspace()J

    move-result-wide v17

    cmp-long v16, v17, v14

    if-nez v16, :cond_e9

    goto :goto_105

    :cond_104
    const/4 v11, 0x0

    :goto_105
    check-cast v11, Ljava/util/Map$Entry;

    :goto_107
    if-nez v11, :cond_169

    invoke-direct {v0, v9, v2, v3}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->trackAndEnforceOpLimit(IJ)Lv4/f;

    move-result-object v0

    if-eqz v0, :cond_110

    return-object v0

    :cond_110
    sget-object v0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    iget-wide v0, v5, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "] createOperation KeyId("

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ") NOT FOUND for uid="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ". Forwarding to HAL."

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lx4/b;->c(Ljava/lang/String;)V

    return-object v12

    :cond_13c
    iget-object v5, v5, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    if-nez v5, :cond_155

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "] createOperation domain=APP with null alias, forwarding to HAL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lx4/b;->c(Ljava/lang/String;)V

    return-object v12

    :cond_155
    new-instance v6, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;

    invoke-direct {v6, v9, v5}, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;-><init>(ILjava/lang/String;)V

    sget-object v7, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->generatedKeys:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$GeneratedKeyInfo;

    if-eqz v7, :cond_358

    new-instance v11, Ljava/util/AbstractMap$SimpleEntry;

    invoke-direct {v11, v6, v7}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_169
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$GeneratedKeyInfo;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    move-object v11, v6

    check-cast v11, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;

    invoke-direct {v0, v9, v2, v3}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->trackAndEnforceOpLimit(IJ)Lv4/f;

    move-result-object v6

    if-eqz v6, :cond_17d

    return-object v6

    :cond_17d
    sget-object v6, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "] Creating SOFTWARE operation for uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lx4/b;->c(Ljava/lang/String;)V

    sget-object v6, Landroid/hardware/security/keymint/KeyParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    check-cast v6, [Landroid/hardware/security/keymint/KeyParameter;

    new-instance v7, Lt4/l;

    invoke-direct {v7, v6}, Lt4/l;-><init>([Landroid/hardware/security/keymint/KeyParameter;)V

    iget v8, v7, Lt4/l;->b:I

    const/4 v12, 0x1

    if-eqz v8, :cond_1b3

    goto/16 :goto_21f

    :cond_1b3
    invoke-virtual {v5}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$GeneratedKeyInfo;->getKeyPair()Ljava/security/KeyPair;

    move-result-object v14

    if-eqz v14, :cond_1c4

    invoke-virtual {v14}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v14

    if-eqz v14, :cond_1c4

    invoke-interface {v14}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v14

    goto :goto_1c5

    :cond_1c4
    const/4 v14, 0x0

    :goto_1c5
    if-eqz v14, :cond_1fc

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v15

    const/16 v13, 0x89e

    if-eq v15, v13, :cond_1ef

    const v13, 0x13e20

    if-eq v15, v13, :cond_1e3

    const v13, 0x3ebd434

    if-eq v15, v13, :cond_1da

    goto :goto_1fc

    :cond_1da
    const-string v13, "ECDSA"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1fc

    goto :goto_1f8

    :cond_1e3
    const-string v13, "RSA"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1ec

    goto :goto_1fc

    :cond_1ec
    move/from16 v18, v12

    goto :goto_205

    :cond_1ef
    const-string v13, "EC"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1f8

    goto :goto_1fc

    :cond_1f8
    :goto_1f8
    const/4 v8, 0x3

    :cond_1f9
    :goto_1f9
    move/from16 v18, v8

    goto :goto_205

    :cond_1fc
    :goto_1fc
    invoke-virtual {v5}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$GeneratedKeyInfo;->getKeyParams()Lt4/l;

    move-result-object v13

    if-eqz v13, :cond_1f9

    iget v8, v13, Lt4/l;->b:I

    goto :goto_1f9

    :goto_205
    const/16 v27, -0x3

    const/16 v28, 0x7ff

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v17, v7

    invoke-static/range {v17 .. v28}, Lt4/l;->a(Lt4/l;ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;[BLjava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;II)Lt4/l;

    move-result-object v7

    :goto_21f
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iget-object v8, v7, Lt4/l;->h:Ljava/util/List;

    invoke-static {v8}, Lb/i;->X0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    if-nez v8, :cond_236

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;

    const/16 v1, -0x26

    invoke-virtual {v0, v1}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->createServiceSpecificErrorReply(I)Lv4/d;

    move-result-object v0

    return-object v0

    :cond_236
    if-eqz v1, :cond_240

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->createServiceSpecificErrorReply(I)Lv4/d;

    move-result-object v0

    return-object v0

    :cond_240
    sget-object v1, Lorg/matrix/TEESimulator/interception/keystore/shim/AuthorizeCreate;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/shim/AuthorizeCreate;

    invoke-virtual {v5}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$GeneratedKeyInfo;->getKeyParams()Lt4/l;

    move-result-object v8

    invoke-virtual {v1, v8, v7, v6}, Lorg/matrix/TEESimulator/interception/keystore/shim/AuthorizeCreate;->check(Lt4/l;Lt4/l;[Landroid/hardware/security/keymint/KeyParameter;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_271

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "] authorize_create rejected: errorCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lx4/b;->c(Ljava/lang/String;)V

    sget-object v1, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;

    invoke-virtual {v1, v0}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->createServiceSpecificErrorReply(I)Lv4/d;

    move-result-object v0

    return-object v0

    :cond_271
    invoke-virtual {v5}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$GeneratedKeyInfo;->getKeyParams()Lt4/l;

    move-result-object v1

    if-eqz v1, :cond_2cc

    iget-object v4, v7, Lt4/l;->h:Ljava/util/List;

    iget-object v6, v7, Lt4/l;->i:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_283

    iget-object v6, v1, Lt4/l;->i:Ljava/util/List;

    :cond_283
    move-object/from16 v22, v6

    iget-object v6, v7, Lt4/l;->f:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_28f

    iget-object v6, v1, Lt4/l;->f:Ljava/util/List;

    :cond_28f
    move-object/from16 v19, v6

    iget-object v6, v7, Lt4/l;->g:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_29b

    iget-object v6, v1, Lt4/l;->g:Ljava/util/List;

    :cond_29b
    move-object/from16 v20, v6

    iget-object v6, v7, Lt4/l;->Q:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2a7

    iget-object v6, v1, Lt4/l;->Q:Ljava/util/List;

    :cond_2a7
    move-object/from16 v26, v6

    iget-object v6, v7, Lt4/l;->D:[B

    iget-object v8, v7, Lt4/l;->O:Ljava/lang/Integer;

    if-nez v8, :cond_2b1

    iget-object v8, v1, Lt4/l;->O:Ljava/lang/Integer;

    :cond_2b1
    move-object/from16 v24, v8

    iget-object v7, v7, Lt4/l;->P:Ljava/lang/Integer;

    const v27, -0x200001e1

    const/16 v28, 0xff

    const/16 v18, 0x0

    move-object/from16 v17, v1

    move-object/from16 v21, v4

    move-object/from16 v23, v6

    move-object/from16 v25, v7

    invoke-static/range {v17 .. v28}, Lt4/l;->a(Lt4/l;ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;[BLjava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;II)Lt4/l;

    move-result-object v7

    move-object/from16 v13, v17

    :goto_2ca
    move-object v6, v7

    goto :goto_2ce

    :cond_2cc
    move-object v13, v1

    goto :goto_2ca

    :goto_2ce
    iget v1, v0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->securityLevel:I

    const/4 v14, 0x2

    if-eq v1, v12, :cond_2db

    if-eq v1, v14, :cond_2d8

    const-wide/16 v7, 0x0

    goto :goto_2dd

    :cond_2d8
    const-wide/16 v7, 0x50

    goto :goto_2dd

    :cond_2db
    const-wide/16 v7, 0x4

    :goto_2dd
    new-instance v1, Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperation;

    invoke-virtual {v5}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$GeneratedKeyInfo;->getKeyPair()Ljava/security/KeyPair;

    move-result-object v4

    invoke-virtual {v5}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$GeneratedKeyInfo;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v5

    invoke-direct/range {v1 .. v8}, Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperation;-><init>(JLjava/security/KeyPair;Ljavax/crypto/SecretKey;Lt4/l;J)V

    if-eqz v13, :cond_2ef

    iget-object v2, v13, Lt4/l;->B:Ljava/lang/Integer;

    goto :goto_2f0

    :cond_2ef
    const/4 v2, 0x0

    :goto_2f0
    if-eqz v2, :cond_32d

    iget-object v2, v13, Lt4/l;->B:Ljava/lang/Integer;

    sget-object v3, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->usageCounters:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v3, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_30d

    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-interface {v3, v11, v4}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_30c

    goto :goto_30d

    :cond_30c
    move-object v4, v5

    :cond_30d
    :goto_30d
    check-cast v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    if-gtz v5, :cond_325

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->Companion:Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;

    invoke-virtual {v0, v11}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;->cleanupKeyData(Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;)V

    invoke-virtual {v3, v11}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->createServiceSpecificErrorReply(I)Lv4/d;

    move-result-object v0

    return-object v0

    :cond_325
    new-instance v3, Lorg/matrix/TEESimulator/interception/keystore/shim/d;

    invoke-direct {v3, v4, v11, v2}, Lorg/matrix/TEESimulator/interception/keystore/shim/d;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;Ljava/lang/Integer;)V

    invoke-virtual {v1, v3}, Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperation;->setOnFinishCallback(Lh/a;)V

    :cond_32d
    iget v2, v0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->securityLevel:I

    if-ne v2, v14, :cond_333

    const/4 v11, 0x4

    goto :goto_335

    :cond_333
    const/16 v11, 0xf

    :goto_335
    invoke-direct {v0, v9, v1, v11}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->pruneOpsForUid(ILorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperation;I)V

    new-instance v0, Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperationBinder;

    invoke-direct {v0, v1}, Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperationBinder;-><init>(Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperation;)V

    new-instance v3, Landroid/system/keystore2/CreateOperationResponse;

    invoke-direct {v3}, Landroid/system/keystore2/CreateOperationResponse;-><init>()V

    iput-object v0, v3, Landroid/system/keystore2/CreateOperationResponse;->iOperation:Landroid/system/keystore2/IKeystoreOperation;

    const/4 v0, 0x0

    iput-object v0, v3, Landroid/system/keystore2/CreateOperationResponse;->operationChallenge:Landroid/system/keystore2/OperationChallenge;

    invoke-virtual {v1}, Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperation;->getBeginParameters()Landroid/system/keystore2/KeyParameters;

    move-result-object v0

    iput-object v0, v3, Landroid/system/keystore2/CreateOperationResponse;->parameters:Landroid/system/keystore2/KeyParameters;

    sget-object v2, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->createTypedObjectReply$default(Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;Landroid/os/Parcelable;ILorg/matrix/TEESimulator/interception/keystore/InterceptorUtils$ReplyDiagnostic;ILjava/lang/Object;)Lv4/d;

    move-result-object v0

    goto :goto_37b

    :cond_358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "] createOperation alias="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not in generatedKeys, forwarding to HAL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lx4/b;->c(Ljava/lang/String;)V
    :try_end_374
    .catchall {:try_start_89 .. :try_end_374} :catchall_a6

    return-object v12

    :goto_375
    new-instance v1, La/d;

    invoke-direct {v1, v0}, La/d;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v1

    :goto_37b
    invoke-static {v0}, La/e;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_382

    goto :goto_3a0

    :cond_382
    sget-object v0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Error during createOperation for UID "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lx4/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;

    const/16 v1, -0x3e8

    invoke-virtual {v0, v1}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->createServiceSpecificErrorReply(I)Lv4/d;

    move-result-object v0

    :goto_3a0
    check-cast v0, Lv4/f;

    return-object v0
.end method

.method private static final handleCreateOperation$lambda$0$14(Ljava/util/concurrent/atomic/AtomicInteger;Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;Ljava/lang/Integer;)La/h;
    .registers 6

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p0

    # MPL-P16-G2b: mirror the module's post-decrement value, keyed by the exact
    # KeyIdentifier it used, so a map that cannot be found by (uid, alias) still reports
    # the right remaining count. (uid, alias) is also kept, for the reply hooks.
    move-object/from16 v1, p1

    move/from16 v2, p0

    invoke-static {v1, v2}, Lmpl/UsagePolicy;->onFinish(Ljava/lang/Object;I)V

    if-gtz p0, :cond_30

    sget-object p0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->Companion:Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;

    invoke-virtual {p0, p1}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;->cleanupKeyData(Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;)V

    sget-object p0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->usageCounters:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Key "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " exhausted (USAGE_COUNT_LIMIT="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lx4/b;->c(Ljava/lang/String;)V

    :cond_30
    sget-object p0, La/h;->a:La/h;

    return-object p0
.end method

.method private final handleGenerateKey(JIILandroid/os/Parcel;)Lv4/f;
    .registers 26

    move-wide/from16 v2, p1

    move/from16 v1, p3

    move-object/from16 v0, p5

    sget-object v10, Lv4/b;->a:Lv4/b;

    sget-object v11, Lv4/c;->a:Lv4/c;

    const-string v4, "Handling generateKey "

    sget-object v5, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v5

    const/high16 v6, 0x40000

    if-le v5, v6, :cond_18

    const/4 v5, 0x1

    goto :goto_19

    :cond_18
    const/4 v5, 0x0

    :goto_19
    :try_start_19
    const-string v6, "android.system.keystore2.IKeystoreSecurityLevel"

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v6, Landroid/system/keystore2/KeyDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    check-cast v9, Landroid/system/keystore2/KeyDescriptor;

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    move-object v12, v6

    check-cast v12, Landroid/system/keystore2/KeyDescriptor;

    iget-object v6, v9, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    if-eqz v12, :cond_3a

    iget-object v14, v12, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    goto :goto_3b

    :catchall_37
    move-exception v0

    goto/16 :goto_3ca

    :cond_3a
    const/4 v14, 0x0

    :goto_3b
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", attestKey="

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lx4/b;->a(Ljava/lang/String;)V

    sget-object v4, Landroid/hardware/security/keymint/KeyParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    check-cast v0, [Landroid/hardware/security/keymint/KeyParameter;

    array-length v4, v0
    :try_end_5e
    .catchall {:try_start_19 .. :try_end_5e} :catchall_37

    const/4 v6, 0x0

    :goto_5f
    const-string v14, "android.permission.REQUEST_UNIQUE_ID_ATTESTATION"

    const-string v15, "[TX_ID: "

    if-ge v6, v4, :cond_eb

    :try_start_65
    aget-object v13, v0, v6

    iget v13, v13, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    const v8, 0x700000ca

    if-ne v13, v8, :cond_ee

    invoke-static/range {p4 .. p4}, Lu4/g;->a(I)Z

    move-result v4

    if-nez v4, :cond_eb

    const v4, 0x186a0

    div-int v4, v1, v4

    invoke-static {v1}, Lu4/g;->e(I)[Ljava/lang/String;

    move-result-object v6

    array-length v13, v6

    const/4 v7, 0x0

    :goto_7f
    if-ge v7, v13, :cond_9b

    aget-object v8, v6, v7
    :try_end_83
    .catchall {:try_start_65 .. :try_end_83} :catchall_37

    move/from16 v17, v5

    :try_start_85
    invoke-static {}, Lu4/g;->c()Landroid/content/pm/IPackageManager;

    move-result-object v5

    if-eqz v5, :cond_93

    invoke-interface {v5, v14, v8, v4}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_8f} :catch_93
    .catchall {:try_start_85 .. :try_end_8f} :catchall_37

    if-nez v5, :cond_93

    :goto_91
    const/4 v7, 0x0

    goto :goto_e9

    :catch_93
    :cond_93
    add-int/lit8 v7, v7, 0x1

    move/from16 v5, v17

    const v8, 0x700000ca

    goto :goto_7f

    :cond_9b
    move/from16 v17, v5

    :try_start_9d
    sget-object v4, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "] Stripping INCLUDE_UNIQUE_ID for uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " (no permission)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lx4/b;->a(Ljava/lang/String;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    array-length v5, v0

    const/4 v6, 0x0

    :goto_cf
    if-ge v6, v5, :cond_e0

    aget-object v7, v0, v6

    iget v8, v7, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    const v13, 0x12345678

    if-eq v8, v13, :cond_dd

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_dd
    add-int/lit8 v6, v6, 0x1

    goto :goto_cf

    :cond_e0
    const/4 v7, 0x0

    new-array v0, v7, [Landroid/hardware/security/keymint/KeyParameter;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/security/keymint/KeyParameter;

    :goto_e9
    move-object v8, v0

    goto :goto_f9

    :cond_eb
    move/from16 v17, v5

    goto :goto_91

    :cond_ee
    move/from16 v17, v5

    const/4 v7, 0x0

    move/from16 v5, p4

    add-int/lit8 v6, v6, 0x1

    move/from16 v5, v17

    goto/16 :goto_5f

    :goto_f9
    new-instance v5, Lt4/l;

    invoke-direct {v5, v8}, Lt4/l;-><init>([Landroid/hardware/security/keymint/KeyParameter;)V

    iget-object v0, v5, Lt4/l;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_114

    const/4 v4, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_114

    const/4 v0, 0x1

    goto :goto_115

    :cond_114
    move v0, v7

    :goto_115
    array-length v4, v8

    move v6, v7

    :goto_117
    if-ge v6, v4, :cond_13d

    aget-object v7, v8, v6

    iget v7, v7, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    const v13, -0x6ffffd36

    if-eq v7, v13, :cond_13b

    const v13, -0x6ffffd35

    if-eq v7, v13, :cond_13b

    const v13, -0x6ffffd37

    if-eq v7, v13, :cond_13b

    const v13, 0x700002d0

    if-eq v7, v13, :cond_13b

    const v13, -0x6ffffd2d

    if-ne v7, v13, :cond_137

    goto :goto_13b

    :cond_137
    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x0

    goto :goto_117

    :cond_13b
    :goto_13b
    const/4 v7, 0x1

    goto :goto_13e

    :cond_13d
    const/4 v7, 0x0

    :goto_13e
    iget-object v4, v5, Lt4/l;->p:[B

    if-nez v4, :cond_155

    iget-object v4, v5, Lt4/l;->q:[B

    if-nez v4, :cond_155

    iget-object v4, v5, Lt4/l;->r:[B

    if-nez v4, :cond_155

    iget-object v4, v5, Lt4/l;->v:[B

    if-nez v4, :cond_155

    iget-object v4, v5, Lt4/l;->w:[B

    if-eqz v4, :cond_153

    goto :goto_155

    :cond_153
    const/4 v6, 0x0

    goto :goto_156

    :cond_155
    :goto_155
    const/4 v6, 0x1

    :goto_156
    invoke-static {v1}, Lu4/g;->j(I)Z

    move-result v4
    :try_end_15a
    .catchall {:try_start_9d .. :try_end_15a} :catchall_37

    if-eqz v4, :cond_171

    if-nez v12, :cond_171

    if-nez v0, :cond_171

    if-nez v7, :cond_171

    move-object v4, v9

    :try_start_163
    const-string v9, "SKIP"

    move-object/from16 v6, p0

    invoke-static/range {v1 .. v9}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->handleGenerateKey$lambda$0$logProbe(IJLandroid/system/keystore2/KeyDescriptor;Lt4/l;Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;Z[Landroid/hardware/security/keymint/KeyParameter;Ljava/lang/String;)V

    goto/16 :goto_2ef

    :catchall_16c
    move-exception v0

    move/from16 v1, p3

    goto/16 :goto_3ca

    :cond_171
    move-object v4, v9

    sget-object v1, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v1, v5, Lt4/l;->o:[B

    const/16 v9, 0x80

    if-eqz v1, :cond_1b0

    array-length v13, v1

    if-le v13, v9, :cond_1b0

    array-length v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "] Rejecting oversized attestation challenge: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes (max 128)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lx4/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v9, "REJECT:challenge_len"

    move-object/from16 v6, p0

    move/from16 v1, p3

    invoke-static/range {v1 .. v9}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->handleGenerateKey$lambda$0$logProbe(IJLandroid/system/keystore2/KeyDescriptor;Lt4/l;Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;Z[Landroid/hardware/security/keymint/KeyParameter;Ljava/lang/String;)V

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;

    const/16 v1, -0x15

    invoke-virtual {v0, v1}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->createErrorReply(I)Lv4/d;

    move-result-object v0

    return-object v0

    :cond_1b0
    array-length v1, v8
    :try_end_1b1
    .catchall {:try_start_163 .. :try_end_1b1} :catchall_16c

    const/4 v13, 0x0

    :goto_1b2
    if-ge v13, v1, :cond_207

    :try_start_1b4
    aget-object v9, v8, v13

    iget v9, v9, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    move/from16 v18, v0

    const v0, 0x600002bd

    if-ne v9, v0, :cond_1f8

    sget-object v0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "] Rejecting CREATION_DATETIME in generateKey params"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lx4/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v9, "REJECT:creation_datetime"
    :try_end_1db
    .catchall {:try_start_1b4 .. :try_end_1db} :catchall_1f4

    move-object/from16 v6, p0

    move/from16 v1, p3

    :try_start_1df
    invoke-static/range {v1 .. v9}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->handleGenerateKey$lambda$0$logProbe(IJLandroid/system/keystore2/KeyDescriptor;Lt4/l;Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;Z[Landroid/hardware/security/keymint/KeyParameter;Ljava/lang/String;)V
    :try_end_1e2
    .catchall {:try_start_1df .. :try_end_1e2} :catchall_1f0

    move v3, v1

    :try_start_1e3
    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->createErrorReply(I)Lv4/d;

    move-result-object v0

    return-object v0

    :catchall_1ec
    move-exception v0

    :goto_1ed
    move v1, v3

    goto/16 :goto_3ca

    :catchall_1f0
    move-exception v0

    move v3, v1

    goto/16 :goto_3ca

    :catchall_1f4
    move-exception v0

    move/from16 v3, p3

    goto :goto_1ed

    :cond_1f8
    move-object v9, v4

    move-object v0, v5

    move-wide v4, v2

    move/from16 v3, p3

    add-int/lit8 v13, v13, 0x1

    move-wide v2, v4

    move-object v4, v9

    const/16 v9, 0x80

    move-object v5, v0

    move/from16 v0, v18

    goto :goto_1b2

    :cond_207
    move/from16 v18, v0

    move-object v9, v4

    move-object v0, v5

    move-wide v4, v2

    move/from16 v3, p3

    array-length v1, v8

    const/4 v2, 0x0

    :goto_210
    if-ge v2, v1, :cond_25c

    aget-object v13, v8, v2

    iget v13, v13, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    move-object/from16 v19, v0

    const v0, 0x700002d0

    if-ne v13, v0, :cond_257

    invoke-static {v3, v14}, Ls2/b;->E(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25e

    sget-object v0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "] Rejecting DEVICE_UNIQUE_ATTESTATION for uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lx4/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v4, v9

    const-string v9, "REJECT:cannot_attest_unique"
    :try_end_243
    .catchall {:try_start_1e3 .. :try_end_243} :catchall_1ec

    move-object/from16 v6, p0

    move v1, v3

    move-object/from16 v5, v19

    move-wide/from16 v2, p1

    :try_start_24a
    invoke-static/range {v1 .. v9}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->handleGenerateKey$lambda$0$logProbe(IJLandroid/system/keystore2/KeyDescriptor;Lt4/l;Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;Z[Landroid/hardware/security/keymint/KeyParameter;Ljava/lang/String;)V
    :try_end_24d
    .catchall {:try_start_24a .. :try_end_24d} :catchall_1f0

    move v3, v1

    :try_start_24e
    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;

    const/16 v1, -0x42

    invoke-virtual {v0, v1}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->createErrorReply(I)Lv4/d;

    move-result-object v0
    :try_end_256
    .catchall {:try_start_24e .. :try_end_256} :catchall_1ec

    return-object v0

    :cond_257
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v19

    goto :goto_210

    :cond_25c
    move-object/from16 v19, v0

    :cond_25e
    if-eqz v7, :cond_29b

    :try_start_260
    const-string v0, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-static {v3, v0}, Ls2/b;->E(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29b

    sget-object v0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "] Rejecting DEVICE_ID_ATTESTATION for uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lx4/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v4, v9

    const-string v9, "REJECT:cannot_attest_ids"

    move-object/from16 v6, p0

    move v1, v3

    move-object/from16 v5, v19

    move-wide/from16 v2, p1

    invoke-static/range {v1 .. v9}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->handleGenerateKey$lambda$0$logProbe(IJLandroid/system/keystore2/KeyDescriptor;Lt4/l;Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;Z[Landroid/hardware/security/keymint/KeyParameter;Ljava/lang/String;)V

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;

    const/16 v1, -0x42

    invoke-virtual {v0, v1}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->createErrorReply(I)Lv4/d;

    move-result-object v0

    return-object v0

    :cond_29b
    move-object/from16 v0, p0

    move-wide v2, v4

    move-object v4, v9

    move-object/from16 v5, v19

    iget v1, v5, Lt4/l;->b:I

    const/16 v9, 0x20

    if-eq v1, v9, :cond_2ad

    const/16 v9, 0x80

    if-eq v1, v9, :cond_2ad

    const/16 v9, 0x21

    :cond_2ad
    iget v1, v0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->securityLevel:I

    const/4 v9, 0x2

    if-ne v1, v9, :cond_2f0

    sget-object v1, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->Companion:Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;

    # invokes: Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;->isStrongBoxCapable(Lt4/l;)Z
    invoke-static {v1, v5}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;->access$isStrongBoxCapable(Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;Lt4/l;)Z

    move-result v1

    if-nez v1, :cond_2f0

    sget-object v1, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    iget v1, v5, Lt4/l;->b:I

    iget v6, v5, Lt4/l;->a:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, "] StrongBox-unsupported params (algo="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " size="

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") \u2192 forwarding to HAL for rejection"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lx4/b;->c(Ljava/lang/String;)V

    const-string v9, "FORWARD_HAL"
    :try_end_2e9
    .catchall {:try_start_260 .. :try_end_2e9} :catchall_16c

    move/from16 v1, p3

    move-object v6, v0

    :try_start_2ec
    invoke-static/range {v1 .. v9}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->handleGenerateKey$lambda$0$logProbe(IJLandroid/system/keystore2/KeyDescriptor;Lt4/l;Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;Z[Landroid/hardware/security/keymint/KeyParameter;Ljava/lang/String;)V

    :goto_2ef
    return-object v11

    :cond_2f0
    move/from16 v1, p3

    new-instance v11, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;

    iget-object v2, v4, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    const-string v3, "alias"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v11, v1, v2}, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;-><init>(ILjava/lang/String;)V

    sget-object v2, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->generatedKeys:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v11}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30b

    sget-object v2, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->Companion:Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;

    invoke-virtual {v2, v11}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;->cleanupKeyData(Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;)V

    :cond_30b
    iget v2, v0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->securityLevel:I

    if-ne v2, v9, :cond_311

    const/4 v2, 0x1

    goto :goto_312

    :cond_311
    const/4 v2, 0x0

    :goto_312
    if-nez v17, :cond_389

    invoke-static {v1}, Lu4/g;->d(I)Lu4/d;

    move-result-object v3

    sget-object v13, Lu4/d;->q:Lu4/d;

    if-ne v3, v13, :cond_31e

    const/4 v3, 0x1

    goto :goto_31f

    :cond_31e
    const/4 v3, 0x0

    :goto_31f
    if-nez v3, :cond_389

    if-nez v18, :cond_389

    if-nez v12, :cond_389

    if-nez v7, :cond_389

    if-nez v6, :cond_389

    invoke-static {v1}, Lu4/g;->e(I)[Ljava/lang/String;

    move-result-object v3

    array-length v6, v3

    const/4 v13, 0x0

    :goto_32f
    if-ge v13, v6, :cond_387

    aget-object v14, v3, v13

    sget-object v15, Lu4/g;->b:Ljava/lang/Object;

    invoke-interface {v15, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lu4/d;

    const/4 v15, -0x1

    if-nez v14, :cond_340

    move v14, v15

    goto :goto_348

    :cond_340
    sget-object v16, Lu4/e;->a:[I

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    aget v14, v16, v14

    :goto_348
    if-eq v14, v15, :cond_383

    const/4 v15, 0x1

    if-eq v14, v15, :cond_387

    if-eq v14, v9, :cond_387

    const/4 v3, 0x3

    if-ne v14, v3, :cond_37d

    iget-object v6, v5, Lt4/l;->o:[B

    if-eqz v6, :cond_387

    iget v6, v5, Lt4/l;->b:I

    if-eq v6, v15, :cond_36d

    if-eq v6, v3, :cond_35d

    goto :goto_387

    :cond_35d
    sget-object v3, Lt4/j;->a:La/f;

    if-eqz v2, :cond_364

    sget-object v2, Lt4/j;->e:Lt4/i;

    goto :goto_366

    :cond_364
    sget-object v2, Lt4/j;->d:Lt4/i;

    :goto_366
    invoke-static {v2}, Lt4/j;->c(Lt4/i;)Z

    move-result v2

    if-nez v2, :cond_387

    goto :goto_38a

    :cond_36d
    sget-object v3, Lt4/j;->a:La/f;

    if-eqz v2, :cond_374

    sget-object v2, Lt4/j;->c:Lt4/i;

    goto :goto_376

    :cond_374
    sget-object v2, Lt4/j;->b:Lt4/i;

    :goto_376
    invoke-static {v2}, Lt4/j;->c(Lt4/i;)Z

    move-result v2

    if-nez v2, :cond_387

    goto :goto_38a

    :cond_37d
    new-instance v0, La/b;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_383
    const/4 v15, 0x1

    add-int/lit8 v13, v13, 0x1

    goto :goto_32f

    :cond_387
    :goto_387
    const/4 v15, 0x0

    goto :goto_38a

    :cond_389
    const/4 v15, 0x1

    :goto_38a
    # --- MPL-AES: symmetric (AES/HMAC/3DES) keys are served by the real keystore2/KeyMint HAL.
    #     They carry no attestation certificate chain, so forging them only replaces hardware
    #     crypto with JCA-in-daemon plus a 4 ms latency floor (detectable AES timing fingerprint).
    iget v2, v5, Lt4/l;->b:I

    const/16 v3, 0x20

    if-eq v2, v3, :mpl_sym_pass

    const/16 v3, 0x80

    if-eq v2, v3, :mpl_sym_pass

    const/16 v3, 0x21

    if-eq v2, v3, :mpl_sym_pass

    goto :mpl_forge_dispatch

    :mpl_sym_pass
    sget-object v2, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->Companion:Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;

    invoke-virtual {v2, v11}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;->cleanupKeyData(Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;)V

    sget-object v2, Lv4/c;->a:Lv4/c;

    return-object v2

    :mpl_forge_dispatch
    sget-object v2, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;
    :try_end_38c
    .catchall {:try_start_2ec .. :try_end_38c} :catchall_37

    if-eqz v15, :cond_3a8

    :try_start_38e
    const-string v9, "FORGE"

    move-wide/from16 v2, p1

    move-object v6, v0

    invoke-static/range {v1 .. v9}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->handleGenerateKey$lambda$0$logProbe(IJLandroid/system/keystore2/KeyDescriptor;Lt4/l;Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;Z[Landroid/hardware/security/keymint/KeyParameter;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p3

    move-object v6, v5

    move-object v7, v11

    move-object v5, v12

    move/from16 v8, v18

    invoke-direct/range {v0 .. v8}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->doSoftwareKeyGen(JILandroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;Lt4/l;Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;Z)Lv4/f;

    move-result-object v10

    :goto_3a5
    move/from16 v1, p3

    goto :goto_3cf

    :cond_3a8
    move-object v0, v11

    iget-object v1, v5, Lt4/l;->o:[B

    if-eqz v1, :cond_3b9

    const-string v9, "PATCH"

    move-object/from16 v6, p0

    move-wide/from16 v2, p1

    move/from16 v1, p3

    invoke-static/range {v1 .. v9}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->handleGenerateKey$lambda$0$logProbe(IJLandroid/system/keystore2/KeyDescriptor;Lt4/l;Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;Z[Landroid/hardware/security/keymint/KeyParameter;Ljava/lang/String;)V

    goto :goto_3a5

    :cond_3b9
    const-string v9, "PASSTHROUGH"
    :try_end_3bb
    .catchall {:try_start_38e .. :try_end_3bb} :catchall_16c

    move-object/from16 v6, p0

    move-wide/from16 v2, p1

    move/from16 v1, p3

    :try_start_3c1
    invoke-static/range {v1 .. v9}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->handleGenerateKey$lambda$0$logProbe(IJLandroid/system/keystore2/KeyDescriptor;Lt4/l;Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;Z[Landroid/hardware/security/keymint/KeyParameter;Ljava/lang/String;)V

    sget-object v2, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->Companion:Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;

    invoke-virtual {v2, v0}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;->cleanupKeyData(Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;)V
    :try_end_3c9
    .catchall {:try_start_3c1 .. :try_end_3c9} :catchall_37

    goto :goto_3cf

    :goto_3ca
    new-instance v10, La/d;

    invoke-direct {v10, v0}, La/d;-><init>(Ljava/lang/Throwable;)V

    :goto_3cf
    invoke-static {v10}, La/e;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_3d6

    goto :goto_3f6

    :cond_3d6
    sget-object v2, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error during generateKey handling for UID "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lx4/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;

    const/16 v1, -0x31

    invoke-virtual {v0, v1}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->createServiceSpecificErrorReply(I)Lv4/d;

    move-result-object v10

    :goto_3f6
    check-cast v10, Lv4/f;

    return-object v10
.end method

.method private static final handleGenerateKey$lambda$0$logProbe(IJLandroid/system/keystore2/KeyDescriptor;Lt4/l;Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;Z[Landroid/hardware/security/keymint/KeyParameter;Ljava/lang/String;)V
    .registers 9

    sget-object p0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public static synthetic i(Lorg/matrix/TEESimulator/interception/keystore/d;Ljava/lang/Object;)Z
    .registers 2

    invoke-static {p0, p1}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->pruneOpsForUid$lambda$3(Lh/l;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic j(Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperation;)Z
    .registers 1

    invoke-static {p0}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->pruneOpsForUid$lambda$2(Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperation;)Z

    move-result p0

    return p0
.end method

.method public static synthetic k(Ljava/util/concurrent/atomic/AtomicInteger;Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;Ljava/lang/Integer;)La/h;
    .registers 3

    invoke-static {p0, p1, p2}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->handleCreateOperation$lambda$0$14(Ljava/util/concurrent/atomic/AtomicInteger;Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;Ljava/lang/Integer;)La/h;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;Landroid/util/Pair;Landroid/system/keystore2/KeyDescriptor;Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;Ljava/util/List;Lt4/l;Z[B)V
    .registers 8

    invoke-static/range {p0 .. p7}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->doSoftwareKeyGen$lambda$9(Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;Landroid/util/Pair;Landroid/system/keystore2/KeyDescriptor;Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;Ljava/util/List;Lt4/l;Z[B)V

    return-void
.end method

.method public static synthetic m(Ljava/lang/Integer;)Ljava/util/concurrent/ConcurrentLinkedDeque;
    .registers 1

    invoke-static {p0}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->pruneOpsForUid$lambda$0(Ljava/lang/Integer;)Ljava/util/concurrent/ConcurrentLinkedDeque;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Lorg/matrix/TEESimulator/interception/keystore/d;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentLinkedDeque;
    .registers 2

    invoke-static {p0, p1}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->trackAndEnforceOpLimit$lambda$1(Lh/l;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentLinkedDeque;

    move-result-object p0

    return-object p0
.end method

.method private final pruneOpsForUid(ILorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperation;I)V
    .registers 10

    iget-object p0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->activeOps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lorg/matrix/TEESimulator/interception/keystore/d;

    const/16 v2, 0xd

    invoke-direct {v1, v2}, Lorg/matrix/TEESimulator/interception/keystore/d;-><init>(I)V

    new-instance v2, Lorg/matrix/TEESimulator/interception/keystore/shim/b;

    const/4 v3, 0x2

    invoke-direct {v2, v1, v3}, Lorg/matrix/TEESimulator/interception/keystore/shim/b;-><init>(Lh/l;I)V

    invoke-virtual {p0, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "computeIfAbsent(...)"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->size()I

    move-result v0

    new-instance v1, Lorg/matrix/TEESimulator/interception/keystore/d;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, Lorg/matrix/TEESimulator/interception/keystore/d;-><init>(I)V

    new-instance v2, Lorg/matrix/TEESimulator/interception/keystore/shim/g;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lorg/matrix/TEESimulator/interception/keystore/shim/g;-><init>(Lh/l;I)V

    invoke-virtual {p0, v2}, Ljava/util/concurrent/ConcurrentLinkedDeque;->removeIf(Ljava/util/function/Predicate;)Z

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->size()I

    move-result v1

    :cond_36
    :goto_36
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->size()I

    move-result v2

    if-lt v2, p3, :cond_7b

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperation;

    if-nez v2, :cond_45

    goto :goto_7b

    :cond_45
    invoke-virtual {v2}, Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperation;->getFinalized()Z

    move-result v3

    if-nez v3, :cond_36

    sget-object v3, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->size()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[LRU] Pruning operation for uid="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " (active="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lx4/b;->c(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperation;->abort()V

    goto :goto_36

    :cond_7b
    :goto_7b
    invoke-virtual {p0, p2}, Ljava/util/concurrent/ConcurrentLinkedDeque;->addLast(Ljava/lang/Object;)V

    sget-object p2, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    sub-int p2, v0, v1

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->size()I

    move-result p0

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "[LRU] uid="

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ops: before="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " cleaned="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " active="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lx4/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic pruneOpsForUid$default(Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;ILorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperation;IILjava/lang/Object;)V
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_6

    const/16 p3, 0xf

    :cond_6
    invoke-direct {p0, p1, p2, p3}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->pruneOpsForUid(ILorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperation;I)V

    return-void
.end method

.method private static final pruneOpsForUid$lambda$0(Ljava/lang/Integer;)Ljava/util/concurrent/ConcurrentLinkedDeque;
    .registers 2

    const-string v0, "it"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    return-object p0
.end method

.method private static final pruneOpsForUid$lambda$1(Lh/l;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentLinkedDeque;
    .registers 2

    invoke-interface {p0, p1}, Lh/l;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    return-object p0
.end method

.method private static final pruneOpsForUid$lambda$2(Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperation;)Z
    .registers 1

    invoke-virtual {p0}, Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperation;->getFinalized()Z

    move-result p0

    return p0
.end method

.method private static final pruneOpsForUid$lambda$3(Lh/l;Ljava/lang/Object;)Z
    .registers 2

    invoke-interface {p0, p1}, Lh/l;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private final rebuildResponseFromRecord(Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;Ljava/util/List;Landroid/system/keystore2/KeyDescriptor;)Landroid/system/keystore2/KeyEntryResponse;
    .registers 14

    new-instance v0, Lt4/l;

    invoke-virtual {p1}, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->getKeySize()I

    move-result v1

    invoke-virtual {p1}, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->getAlgorithm()I

    move-result v2

    invoke-virtual {p1}, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->getEcCurve()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1}, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->getPurposes()Ljava/util/List;

    move-result-object v5

    invoke-virtual {p1}, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->getDigests()Ljava/util/List;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v4, ""

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v9}, Lt4/l;-><init>(IILjava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/math/BigInteger;Ljava/util/Date;[B)V

    invoke-virtual {p1}, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->getUid()I

    move-result p1

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->buildKeyEntryResponse(ILjava/util/List;Lt4/l;Landroid/system/keystore2/KeyDescriptor;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object p0

    return-object p0
.end method

.method private final rebuildSymmetricResponse(Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;)Landroid/system/keystore2/KeyEntryResponse;
    .registers 12

    new-instance v0, Lt4/l;

    invoke-virtual {p1}, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->getKeySize()I

    move-result v1

    invoke-virtual {p1}, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->getAlgorithm()I

    move-result v2

    invoke-virtual {p1}, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->getEcCurve()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1}, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->getPurposes()Ljava/util/List;

    move-result-object v5

    invoke-virtual {p1}, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->getDigests()Ljava/util/List;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v4, ""

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v9}, Lt4/l;-><init>(IILjava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/math/BigInteger;Ljava/util/Date;[B)V

    new-instance v1, Landroid/system/keystore2/KeyMetadata;

    invoke-direct {v1}, Landroid/system/keystore2/KeyMetadata;-><init>()V

    iget v2, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->securityLevel:I

    iput v2, v1, Landroid/system/keystore2/KeyMetadata;->keySecurityLevel:I

    new-instance v2, Landroid/system/keystore2/KeyDescriptor;

    invoke-direct {v2}, Landroid/system/keystore2/KeyDescriptor;-><init>()V

    const/4 v3, 0x4

    iput v3, v2, Landroid/system/keystore2/KeyDescriptor;->domain:I

    invoke-virtual {p1}, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->getNspace()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    iput-object v3, v2, Landroid/system/keystore2/KeyDescriptor;->blob:[B

    iput-object v2, v1, Landroid/system/keystore2/KeyMetadata;->key:Landroid/system/keystore2/KeyDescriptor;

    iput-object v3, v1, Landroid/system/keystore2/KeyMetadata;->certificate:[B

    iput-object v3, v1, Landroid/system/keystore2/KeyMetadata;->certificateChain:[B

    invoke-virtual {p1}, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->getUid()I

    move-result p1

    iget v2, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->securityLevel:I

    # invokes: Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptorKt;->toAuthorizations(Lt4/l;II)[Landroid/system/keystore2/Authorization;
    invoke-static {v0, p1, v2}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptorKt;->access$toAuthorizations(Lt4/l;II)[Landroid/system/keystore2/Authorization;

    move-result-object p1

    iput-object p1, v1, Landroid/system/keystore2/KeyMetadata;->authorizations:[Landroid/system/keystore2/Authorization;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/system/keystore2/KeyMetadata;->modificationTimeMs:J

    new-instance p1, Landroid/system/keystore2/KeyEntryResponse;

    invoke-direct {p1}, Landroid/system/keystore2/KeyEntryResponse;-><init>()V

    iput-object v1, p1, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object p0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->original:Landroid/system/keystore2/IKeystoreSecurityLevel;

    iput-object p0, p1, Landroid/system/keystore2/KeyEntryResponse;->iSecurityLevel:Landroid/system/keystore2/IKeystoreSecurityLevel;

    return-object p1
.end method

.method private final trackAndEnforceOpLimit(IJ)Lv4/f;
    .registers 11

    iget v0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->securityLevel:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_7

    return-object v2

    :cond_7
    iget-object v0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->recentOps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lorg/matrix/TEESimulator/interception/keystore/d;

    const/16 v4, 0xc

    invoke-direct {v3, v4}, Lorg/matrix/TEESimulator/interception/keystore/d;-><init>(I)V

    new-instance v4, Lorg/matrix/TEESimulator/interception/keystore/shim/b;

    const/4 v5, 0x1

    invoke-direct {v4, v3, v5}, Lorg/matrix/TEESimulator/interception/keystore/shim/b;-><init>(Lh/l;I)V

    invoke-virtual {v0, v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "computeIfAbsent(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    const-wide v5, 0x2540be400L

    sub-long/2addr v3, v5

    new-instance v1, Lorg/matrix/TEESimulator/interception/keystore/shim/f;

    invoke-direct {v1, v3, v4}, Lorg/matrix/TEESimulator/interception/keystore/shim/f;-><init>(J)V

    new-instance v3, Lorg/matrix/TEESimulator/interception/keystore/shim/g;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lorg/matrix/TEESimulator/interception/keystore/shim/g;-><init>(Lh/l;I)V

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentLinkedDeque;->removeIf(Ljava/util/function/Predicate;)Z

    iget-object p0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->activeOps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    if-eqz p0, :cond_75

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_52

    goto :goto_75

    :cond_52
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_56
    :goto_56
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_75

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperation;

    invoke-virtual {v1}, Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperation;->getFinalized()Z

    move-result v1

    if-nez v1, :cond_56

    add-int/lit8 v4, v4, 0x1

    if-ltz v4, :cond_6d

    goto :goto_56

    :cond_6d
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "Count overflow has happened."

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_75
    :goto_75
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->size()I

    move-result p0

    add-int/2addr p0, v4

    const/4 v1, 0x4

    if-lt p0, v1, :cond_ba

    sget-object p0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->size()I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[TX_ID: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "] StrongBox op limit reached for uid="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " (hw="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " sw="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " max=4)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lx4/b;->c(Ljava/lang/String;)V

    sget-object p0, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;

    const/16 p1, -0x1d

    invoke-virtual {p0, p1}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->createErrorReply(I)Lv4/d;

    move-result-object p0

    return-object p0

    :cond_ba
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->addLast(Ljava/lang/Object;)V

    return-object v2
.end method

.method private static final trackAndEnforceOpLimit$lambda$0(Ljava/lang/Integer;)Ljava/util/concurrent/ConcurrentLinkedDeque;
    .registers 2

    const-string v0, "it"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    return-object p0
.end method

.method private static final trackAndEnforceOpLimit$lambda$1(Lh/l;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentLinkedDeque;
    .registers 2

    invoke-interface {p0, p1}, Lh/l;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    return-object p0
.end method

.method private static final trackAndEnforceOpLimit$lambda$2(JLjava/lang/Long;)Z
    .registers 5

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long p0, v0, p0

    if-gez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method private static final trackAndEnforceOpLimit$lambda$3(Lh/l;Ljava/lang/Object;)Z
    .registers 2

    invoke-interface {p0, p1}, Lh/l;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final transactionNames_delegate$lambda$0()Ljava/util/Map;
    .registers 9

    const-class v0, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    const-string v1, "getDeclaredFields(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_13
    const-string v5, "getName(...)"

    const/4 v6, 0x1

    if-ge v4, v2, :cond_3e

    aget-object v7, v0, v4

    invoke-virtual {v7, v6}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v8}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "TRANSACTION_"

    invoke-virtual {v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3b
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    :cond_3e
    invoke-static {v1}, Lb/k;->V0(Ljava/lang/Iterable;)I

    move-result v0

    invoke-static {v0}, Lb/t;->f1(I)I

    move-result v0

    const/16 v2, 0x10

    if-ge v0, v2, :cond_4b

    move v0, v2

    :cond_4b
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_54
    if-ge v3, v0, :cond_83

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Ljava/lang/reflect/Field;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v8, v7}, Lkotlin/jvm/internal/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v8, "_"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Ll/q;->p1(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_54

    :cond_83
    return-object v2
.end method


# virtual methods
.method public final loadPersistedKeys()V
    .registers 19

    move-object/from16 v1, p0

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/GeneratedKeyPersistence;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/shim/GeneratedKeyPersistence;

    iget v2, v1, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->securityLevel:I

    invoke-virtual {v0, v2}, Lorg/matrix/TEESimulator/interception/keystore/shim/GeneratedKeyPersistence;->loadAll(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_26

    sget-object v0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    iget v0, v1, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->securityLevel:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No persisted keys to restore for security level "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lx4/b;->a(Ljava/lang/String;)V

    return-void

    :cond_26
    sget-object v2, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iget v3, v1, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->securityLevel:I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Restoring "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " persisted keys for security level "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lx4/b;->c(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4b
    :goto_4b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3bb

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;

    :try_start_58
    new-instance v4, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;

    invoke-virtual {v3}, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->getUid()I

    move-result v0

    invoke-virtual {v3}, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->getAlias()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;-><init>(ILjava/lang/String;)V

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->generatedKeys:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_88

    sget-object v0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping already-loaded key: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lx4/b;->a(Ljava/lang/String;)V

    goto/16 :goto_387

    :catchall_85
    move-exception v0

    goto/16 :goto_38a

    :cond_88
    invoke-virtual {v3}, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->getSymmetricKeyBytes()[B

    move-result-object v0

    array-length v0, v0
    :try_end_8d
    .catchall {:try_start_58 .. :try_end_8d} :catchall_85

    const-string v5, "obtain(...)"

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-nez v0, :cond_26e

    :try_start_93
    invoke-virtual {v3}, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->getAlgorithm()I

    move-result v0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_bb

    const/4 v4, 0x3

    if-ne v0, v4, :cond_a0

    const-string v0, "EC"

    goto :goto_bd

    :cond_a0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->getAlgorithm()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown algorithm: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_bb
    const-string v0, "RSA"

    :goto_bd
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v4

    new-instance v8, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {v3}, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->getPrivateKeyBytes()[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v4, v8}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v4

    const-string v8, "X.509"

    invoke-static {v8}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v8

    invoke-virtual {v3}, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->getCertChainBytes()Ljava/util/List;

    move-result-object v9

    new-instance v10, Ljava/util/ArrayList;

    invoke-static {v9}, Lb/k;->V0(Ljava/lang/Iterable;)I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_e5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_fe

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    new-instance v12, Ljava/io/ByteArrayInputStream;

    invoke-direct {v12, v11}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v8, v12}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e5

    :cond_fe
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_266

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/cert/Certificate;

    invoke-virtual {v8}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v8

    invoke-interface {v8}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v0}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_22e

    new-instance v12, Ljava/security/KeyPair;

    invoke-direct {v12, v8, v4}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    new-instance v4, Landroid/system/keystore2/KeyDescriptor;

    invoke-direct {v4}, Landroid/system/keystore2/KeyDescriptor;-><init>()V

    iput v7, v4, Landroid/system/keystore2/KeyDescriptor;->domain:I

    invoke-virtual {v3}, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->getNspace()J

    move-result-wide v8

    iput-wide v8, v4, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    invoke-virtual {v3}, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->getAlias()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    iput-object v6, v4, Landroid/system/keystore2/KeyDescriptor;->blob:[B

    invoke-virtual {v3}, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->getMetadataBytes()[B

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_13f

    invoke-direct {v1, v3, v10, v4}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->rebuildResponseFromRecord(Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;Ljava/util/List;Landroid/system/keystore2/KeyDescriptor;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object v0
    :try_end_13d
    .catchall {:try_start_93 .. :try_end_13d} :catchall_85

    goto/16 :goto_1bb

    :cond_13f
    :try_start_13f
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v8

    invoke-static {v5, v8}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_146
    .catchall {:try_start_13f .. :try_end_146} :catchall_187

    :try_start_146
    invoke-virtual {v3}, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->getMetadataBytes()[B

    move-result-object v0

    invoke-virtual {v3}, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->getMetadataBytes()[B

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v8, v0, v7, v5}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v8, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v0, Landroid/system/keystore2/KeyMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/system/keystore2/KeyMetadata;

    iget-object v5, v0, Landroid/system/keystore2/KeyMetadata;->key:Landroid/system/keystore2/KeyDescriptor;

    if-nez v5, :cond_176

    new-instance v5, Landroid/system/keystore2/KeyDescriptor;

    invoke-direct {v5}, Landroid/system/keystore2/KeyDescriptor;-><init>()V

    const/4 v9, 0x4

    iput v9, v5, Landroid/system/keystore2/KeyDescriptor;->domain:I

    invoke-virtual {v3}, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->getNspace()J

    move-result-wide v13

    iput-wide v13, v5, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    iput-object v6, v5, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    iput-object v6, v5, Landroid/system/keystore2/KeyDescriptor;->blob:[B

    goto :goto_176

    :catchall_174
    move-exception v0

    goto :goto_189

    :cond_176
    :goto_176
    iput-object v5, v0, Landroid/system/keystore2/KeyMetadata;->key:Landroid/system/keystore2/KeyDescriptor;

    new-instance v5, Landroid/system/keystore2/KeyEntryResponse;

    invoke-direct {v5}, Landroid/system/keystore2/KeyEntryResponse;-><init>()V

    iput-object v0, v5, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v0, v1, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->original:Landroid/system/keystore2/IKeystoreSecurityLevel;

    iput-object v0, v5, Landroid/system/keystore2/KeyEntryResponse;->iSecurityLevel:Landroid/system/keystore2/IKeystoreSecurityLevel;
    :try_end_183
    .catchall {:try_start_146 .. :try_end_183} :catchall_174

    :try_start_183
    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    goto :goto_192

    :catchall_187
    move-exception v0

    goto :goto_18d

    :goto_189
    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    throw v0
    :try_end_18d
    .catchall {:try_start_183 .. :try_end_18d} :catchall_187

    :goto_18d
    :try_start_18d
    new-instance v5, La/d;

    invoke-direct {v5, v0}, La/d;-><init>(Ljava/lang/Throwable;)V

    :goto_192
    invoke-static {v5}, La/e;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_199

    goto :goto_1b8

    :cond_199
    sget-object v5, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to restore metadata bytes for "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ".alias, falling back to rebuild"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lx4/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v1, v3, v10, v4}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->rebuildResponseFromRecord(Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;Ljava/util/List;Landroid/system/keystore2/KeyDescriptor;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object v5

    :goto_1b8
    move-object v0, v5

    check-cast v0, Landroid/system/keystore2/KeyEntryResponse;

    :goto_1bb
    new-instance v4, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;

    invoke-virtual {v3}, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->getUid()I

    move-result v5

    invoke-virtual {v3}, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->getAlias()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v5, v8}, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;-><init>(ILjava/lang/String;)V

    sget-object v5, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->generatedKeys:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->getNspace()J

    move-result-wide v14

    iget-object v8, v0, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    if-eqz v8, :cond_1fe

    iget-object v6, v8, Landroid/system/keystore2/KeyMetadata;->authorizations:[Landroid/system/keystore2/Authorization;

    if-eqz v6, :cond_1f4

    new-instance v8, Ljava/util/ArrayList;

    array-length v9, v6

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    array-length v9, v6

    move v10, v7

    :goto_1de
    if-ge v10, v9, :cond_1ea

    aget-object v11, v6, v10

    iget-object v11, v11, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_1de

    :cond_1ea
    new-array v6, v7, [Landroid/hardware/security/keymint/KeyParameter;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/hardware/security/keymint/KeyParameter;

    if-nez v6, :cond_1f6

    :cond_1f4
    new-array v6, v7, [Landroid/hardware/security/keymint/KeyParameter;

    :cond_1f6
    new-instance v7, Lt4/l;

    invoke-direct {v7, v6}, Lt4/l;-><init>([Landroid/hardware/security/keymint/KeyParameter;)V

    move-object/from16 v17, v7

    goto :goto_200

    :cond_1fe
    move-object/from16 v17, v6

    :goto_200
    new-instance v11, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$GeneratedKeyInfo;

    const/4 v13, 0x0

    move-object/from16 v16, v0

    invoke-direct/range {v11 .. v17}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$GeneratedKeyInfo;-><init>(Ljava/security/KeyPair;Ljavax/crypto/SecretKey;JLandroid/system/keystore2/KeyEntryResponse;Lt4/l;)V

    invoke-interface {v5, v4, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->isAttestationKey()Z

    move-result v0

    if-eqz v0, :cond_216

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->attestationKeys:Ljava/util/Set;

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_216
    sget-object v0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Restored persisted key: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lx4/b;->a(Ljava/lang/String;)V

    goto/16 :goto_387

    :cond_22e
    invoke-virtual {v3}, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->getAlias()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v8}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Persisted key "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " splits private="

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " vs served leaf="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; dropping"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_266
    const-string v0, "Persisted key has empty certificate chain"

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_26e
    new-instance v8, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v3}, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->getSymmetricKeyBytes()[B

    move-result-object v0

    invoke-virtual {v3}, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->getSymmetricAlgorithm()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v0, v9}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3}, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->getMetadataBytes()[B

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_2a7

    sget-object v0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->getAlias()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Symmetric record "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " missing metadata bytes, rebuilding from primitives"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lx4/b;->c(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->rebuildSymmetricResponse(Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object v0
    :try_end_2a5
    .catchall {:try_start_18d .. :try_end_2a5} :catchall_85

    :goto_2a5
    move-object v10, v0

    goto :goto_30e

    :cond_2a7
    :try_start_2a7
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v9

    invoke-static {v5, v9}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2ae
    .catchall {:try_start_2a7 .. :try_end_2ae} :catchall_2d4

    :try_start_2ae
    invoke-virtual {v3}, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->getMetadataBytes()[B

    move-result-object v0

    invoke-virtual {v3}, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->getMetadataBytes()[B

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v9, v0, v7, v5}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v9, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v0, Landroid/system/keystore2/KeyMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/system/keystore2/KeyMetadata;

    new-instance v5, Landroid/system/keystore2/KeyEntryResponse;

    invoke-direct {v5}, Landroid/system/keystore2/KeyEntryResponse;-><init>()V

    iput-object v0, v5, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v0, v1, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->original:Landroid/system/keystore2/IKeystoreSecurityLevel;

    iput-object v0, v5, Landroid/system/keystore2/KeyEntryResponse;->iSecurityLevel:Landroid/system/keystore2/IKeystoreSecurityLevel;
    :try_end_2d0
    .catchall {:try_start_2ae .. :try_end_2d0} :catchall_2d6

    :try_start_2d0
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    goto :goto_2e0

    :catchall_2d4
    move-exception v0

    goto :goto_2db

    :catchall_2d6
    move-exception v0

    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    throw v0
    :try_end_2db
    .catchall {:try_start_2d0 .. :try_end_2db} :catchall_2d4

    :goto_2db
    :try_start_2db
    new-instance v5, La/d;

    invoke-direct {v5, v0}, La/d;-><init>(Ljava/lang/Throwable;)V

    :goto_2e0
    invoke-static {v5}, La/e;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_2e7

    goto :goto_30a

    :cond_2e7
    sget-object v5, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->getAlias()Ljava/lang/String;

    move-result-object v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to restore symmetric metadata for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", falling back to primitive rebuild"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lx4/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v1, v3}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->rebuildSymmetricResponse(Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object v5

    :goto_30a
    move-object v0, v5

    check-cast v0, Landroid/system/keystore2/KeyEntryResponse;

    goto :goto_2a5

    :goto_30e
    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->generatedKeys:Ljava/util/concurrent/ConcurrentHashMap;

    move-object v5, v8

    invoke-virtual {v3}, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->getNspace()J

    move-result-wide v8

    iget-object v11, v10, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    if-eqz v11, :cond_346

    iget-object v6, v11, Landroid/system/keystore2/KeyMetadata;->authorizations:[Landroid/system/keystore2/Authorization;

    if-eqz v6, :cond_33c

    new-instance v11, Ljava/util/ArrayList;

    array-length v12, v6

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    array-length v12, v6

    move v13, v7

    :goto_325
    if-ge v13, v12, :cond_331

    aget-object v14, v6, v13

    iget-object v14, v14, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_325

    :cond_331
    new-array v6, v7, [Landroid/hardware/security/keymint/KeyParameter;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/hardware/security/keymint/KeyParameter;

    if-eqz v6, :cond_33c

    goto :goto_33e

    :cond_33c
    new-array v6, v7, [Landroid/hardware/security/keymint/KeyParameter;

    :goto_33e
    new-instance v7, Lt4/l;

    invoke-direct {v7, v6}, Lt4/l;-><init>([Landroid/hardware/security/keymint/KeyParameter;)V

    move-object v11, v7

    :goto_344
    move-object v7, v5

    goto :goto_348

    :cond_346
    move-object v11, v6

    goto :goto_344

    :goto_348
    new-instance v5, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$GeneratedKeyInfo;

    const/4 v6, 0x0

    invoke-direct/range {v5 .. v11}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$GeneratedKeyInfo;-><init>(Ljava/security/KeyPair;Ljavax/crypto/SecretKey;JLandroid/system/keystore2/KeyEntryResponse;Lt4/l;)V

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->getSymmetricAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->getSymmetricKeyBytes()[B

    move-result-object v5

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Restored symmetric persisted key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "bit)"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lx4/b;->a(Ljava/lang/String;)V

    :goto_387
    sget-object v0, La/h;->a:La/h;
    :try_end_389
    .catchall {:try_start_2db .. :try_end_389} :catchall_85

    goto :goto_390

    :goto_38a
    new-instance v4, La/d;

    invoke-direct {v4, v0}, La/d;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v4

    :goto_390
    invoke-static {v0}, La/e;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_4b

    sget-object v4, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->getUid()I

    move-result v4

    invoke-virtual {v3}, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->getAlias()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failed to restore key: uid="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " alias="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lx4/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4b

    :cond_3bb
    sget-object v0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->generatedKeys:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Key restoration complete. Total in memory: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lx4/b;->c(Ljava/lang/String;)V

    return-void
.end method

.method public onPostTransact(JLandroid/os/IBinder;IIIILandroid/os/Parcel;Landroid/os/Parcel;I)Lv4/f;
    .registers 28

    move/from16 v0, p4

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    const-string v1, "target"

    move-object/from16 v11, p3

    invoke-static {v1, v11}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "data"

    invoke-static {v1, v9}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v12, Lv4/e;->a:Lv4/e;

    if-nez p10, :cond_60e

    if-nez v10, :cond_1a

    goto/16 :goto_60e

    :cond_1a
    sget-object v13, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;

    invoke-virtual {v13, v10}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->exceptionOrNull(Landroid/os/Parcel;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_29

    sget v1, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->GENERATE_KEY_TRANSACTION:I

    if-ne v0, v1, :cond_60e

    sget-object v0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v12

    :cond_29
    sget v1, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->IMPORT_KEY_TRANSACTION:I

    const-string v14, "alias"

    const-string v15, "android.system.keystore2.IKeystoreSecurityLevel"

    const-string v2, "post-"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v1, :cond_11e

    sget-object v1, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->Companion:Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;

    # invokes: Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;->getTransactionNames()Ljava/util/Map;
    invoke-static {v1}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;->access$getTransactionNames(Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-wide/from16 v1, p1

    move/from16 v4, p6

    move/from16 v5, p7

    move v11, v3

    move-object v3, v0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v8}, Lv4/g;->logTransaction$default(Lv4/g;JLjava/lang/String;IIZILjava/lang/Object;)V

    move-object v1, v0

    invoke-virtual {v9, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v0, Landroid/system/keystore2/KeyDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/system/keystore2/KeyDescriptor;

    if-nez v0, :cond_73

    goto/16 :goto_60e

    :cond_73
    new-instance v2, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;

    iget-object v0, v0, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    invoke-static {v14, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v2, v4, v0}, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;-><init>(ILjava/lang/String;)V

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->generatedKeys:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9d

    sget-object v0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Remove generated key on importKey "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lx4/b;->a(Ljava/lang/String;)V

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/GeneratedKeyPersistence;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/shim/GeneratedKeyPersistence;

    invoke-virtual {v0, v2}, Lorg/matrix/TEESimulator/interception/keystore/shim/GeneratedKeyPersistence;->delete(Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;)V

    :cond_9d
    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->teeResponses:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->patchedChains:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->attestationKeys:Ljava/util/Set;

    invoke-interface {v5, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v5, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->importedKeys:Ljava/util/Set;

    invoke-interface {v5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v5, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v4}, Lu4/g;->j(I)Z

    move-result v5

    if-nez v5, :cond_60e

    sget-object v5, Landroid/system/keystore2/KeyMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/system/keystore2/KeyMetadata;

    if-nez v5, :cond_c5

    goto/16 :goto_60e

    :cond_c5
    invoke-static {v5}, Ly4/c;->b(Landroid/system/keystore2/KeyMetadata;)[Ljava/security/cert/Certificate;

    move-result-object v6

    if-eqz v6, :cond_60e

    array-length v7, v6

    if-le v7, v11, :cond_60e

    const/4 v7, 0x0

    invoke-static {v6, v4, v7, v7}, Lt4/f;->d([Ljava/security/cert/Certificate;ILjava/util/Date;Ljava/util/Date;)[Ljava/security/cert/Certificate;

    move-result-object v6

    invoke-static {v5, v6}, Ly4/c;->f(Landroid/system/keystore2/KeyMetadata;[Ljava/security/cert/Certificate;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lq4/k;->U0(Ljava/lang/Object;)V

    iget-object v7, v5, Landroid/system/keystore2/KeyMetadata;->authorizations:[Landroid/system/keystore2/Authorization;

    invoke-virtual {v13, v7, v4}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->patchAuthorizations([Landroid/system/keystore2/Authorization;I)[Landroid/system/keystore2/Authorization;

    move-result-object v4

    iput-object v4, v5, Landroid/system/keystore2/KeyMetadata;->authorizations:[Landroid/system/keystore2/Authorization;

    invoke-interface {v3, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroid/system/keystore2/KeyEntryResponse;

    invoke-direct {v3}, Landroid/system/keystore2/KeyEntryResponse;-><init>()V

    iput-object v5, v3, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v1, v1, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->original:Landroid/system/keystore2/IKeystoreSecurityLevel;

    iput-object v1, v3, Landroid/system/keystore2/KeyEntryResponse;->iSecurityLevel:Landroid/system/keystore2/IKeystoreSecurityLevel;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cached patched certificate chain for imported key "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lx4/b;->a(Ljava/lang/String;)V

    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 p4, v0

    move-object/from16 p5, v1

    move/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p1, v5

    move-object/from16 p0, v13

    invoke-static/range {p0 .. p5}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->createTypedObjectReply$default(Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;Landroid/os/Parcelable;ILorg/matrix/TEESimulator/interception/keystore/InterceptorUtils$ReplyDiagnostic;ILjava/lang/Object;)Lv4/d;

    move-result-object v0

    return-object v0

    :cond_11e
    move-object/from16 v1, p0

    move v13, v3

    move-object v7, v4

    move/from16 v4, p6

    sget v3, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->CREATE_OPERATION_TRANSACTION:I

    const v5, 0x600003f1

    const v6, 0x600003f0

    const/16 v16, 0x0

    if-ne v0, v3, :cond_4ba

    sget-object v3, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->Companion:Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;

    # invokes: Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;->getTransactionNames()Ljava/util/Map;
    invoke-static {v3}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;->access$getTransactionNames(Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v7

    const/16 v7, 0x10

    const/4 v8, 0x0

    move v2, v6

    const/4 v6, 0x0

    move/from16 v5, p7

    move-object v0, v1

    move v14, v2

    move-wide/from16 v1, p1

    invoke-static/range {v0 .. v8}, Lv4/g;->logTransaction$default(Lv4/g;JLjava/lang/String;IIZILjava/lang/Object;)V

    move-wide v3, v1

    invoke-virtual {v9, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v0, Landroid/system/keystore2/KeyDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/system/keystore2/KeyDescriptor;

    if-nez v0, :cond_16c

    goto/16 :goto_60e

    :cond_16c
    sget-object v0, Landroid/hardware/security/keymint/KeyParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/security/keymint/KeyParameter;

    if-nez v0, :cond_178

    goto/16 :goto_60e

    :cond_178
    const v1, 0x30000003

    invoke-static {v0, v1}, Ls2/a;->j([Landroid/hardware/security/keymint/KeyParameter;I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x3

    const/4 v6, 0x2

    const v7, 0x1000000a

    if-eqz v2, :cond_187

    goto :goto_1a4

    :cond_187
    array-length v2, v0

    move/from16 v8, v16

    :goto_18a
    if-ge v8, v2, :cond_199

    aget-object v15, v0, v8

    iget v14, v15, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    if-ne v14, v7, :cond_193

    goto :goto_19a

    :cond_193
    add-int/lit8 v8, v8, 0x1

    const v14, 0x600003f0

    goto :goto_18a

    :cond_199
    const/4 v15, 0x0

    :goto_19a
    if-eqz v15, :cond_1a4

    iget-object v2, v15, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    if-eqz v2, :cond_1a4

    invoke-virtual {v2}, Landroid/hardware/security/keymint/KeyParameterValue;->getEcCurve()I

    move-result v2

    :cond_1a4
    :goto_1a4
    array-length v2, v0

    move/from16 v8, v16

    :goto_1a7
    if-ge v8, v2, :cond_1b9

    aget-object v14, v0, v8

    iget v15, v14, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    const v1, 0x10000002

    if-ne v15, v1, :cond_1b3

    goto :goto_1ba

    :cond_1b3
    add-int/lit8 v8, v8, 0x1

    const v1, 0x30000003

    goto :goto_1a7

    :cond_1b9
    const/4 v14, 0x0

    :goto_1ba
    if-eqz v14, :cond_1c3

    iget-object v1, v14, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    if-eqz v1, :cond_1c3

    invoke-virtual {v1}, Landroid/hardware/security/keymint/KeyParameterValue;->getAlgorithm()I

    :cond_1c3
    array-length v1, v0

    move/from16 v2, v16

    :goto_1c6
    if-ge v2, v1, :cond_1d2

    aget-object v8, v0, v2

    iget v14, v8, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    if-ne v14, v7, :cond_1cf

    goto :goto_1d3

    :cond_1cf
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c6

    :cond_1d2
    const/4 v8, 0x0

    :goto_1d3
    if-eqz v8, :cond_1dc

    iget-object v1, v8, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    if-eqz v1, :cond_1dc

    invoke-virtual {v1}, Landroid/hardware/security/keymint/KeyParameterValue;->getEcCurve()I

    :cond_1dc
    array-length v1, v0

    move/from16 v2, v16

    :goto_1df
    if-ge v2, v1, :cond_1eb

    aget-object v8, v0, v2

    iget v14, v8, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    if-ne v14, v7, :cond_1e8

    goto :goto_1ec

    :cond_1e8
    add-int/lit8 v2, v2, 0x1

    goto :goto_1df

    :cond_1eb
    const/4 v8, 0x0

    :goto_1ec
    if-eqz v8, :cond_20c

    iget-object v1, v8, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v1}, Landroid/hardware/security/keymint/KeyParameterValue;->getEcCurve()I

    move-result v1

    if-eqz v1, :cond_212

    if-eq v1, v13, :cond_212

    if-eq v1, v6, :cond_212

    if-eq v1, v5, :cond_212

    const/4 v2, 0x4

    if-ne v1, v2, :cond_200

    goto :goto_212

    :cond_200
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unknown EC curve: "

    invoke-static {v1, v2}, Lb/b;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20c
    const v1, 0x30000003

    invoke-static {v0, v1}, Ls2/a;->j([Landroid/hardware/security/keymint/KeyParameter;I)Ljava/lang/Integer;

    :cond_212
    :goto_212
    array-length v1, v0

    move/from16 v2, v16

    :goto_215
    if-ge v2, v1, :cond_224

    aget-object v5, v0, v2

    iget v6, v5, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    const v7, 0x100002be

    if-ne v6, v7, :cond_221

    goto :goto_225

    :cond_221
    add-int/lit8 v2, v2, 0x1

    goto :goto_215

    :cond_224
    const/4 v5, 0x0

    :goto_225
    if-eqz v5, :cond_22e

    iget-object v1, v5, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    if-eqz v1, :cond_22e

    invoke-virtual {v1}, Landroid/hardware/security/keymint/KeyParameterValue;->getOrigin()I

    :cond_22e
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, v0

    move/from16 v5, v16

    :goto_236
    if-ge v5, v2, :cond_247

    aget-object v6, v0, v5

    iget v7, v6, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    const v8, 0x20000004

    if-ne v7, v8, :cond_244

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_244
    add-int/lit8 v5, v5, 0x1

    goto :goto_236

    :cond_247
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1}, Lb/k;->V0(Ljava/lang/Iterable;)I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v6, v16

    :goto_256
    if-ge v6, v5, :cond_26e

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Landroid/hardware/security/keymint/KeyParameter;

    iget-object v7, v7, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v7}, Landroid/hardware/security/keymint/KeyParameterValue;->getBlockMode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_256

    :cond_26e
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v5, v0

    move/from16 v6, v16

    :goto_276
    if-ge v6, v5, :cond_287

    aget-object v7, v0, v6

    iget v8, v7, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    const v14, 0x20000006

    if-ne v8, v14, :cond_284

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_284
    add-int/lit8 v6, v6, 0x1

    goto :goto_276

    :cond_287
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v1}, Lb/k;->V0(Ljava/lang/Iterable;)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    move/from16 v7, v16

    :goto_296
    if-ge v7, v6, :cond_2ae

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Landroid/hardware/security/keymint/KeyParameter;

    iget-object v8, v8, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v8}, Landroid/hardware/security/keymint/KeyParameterValue;->getPaddingMode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_296

    :cond_2ae
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v5, v0

    move/from16 v6, v16

    :goto_2b6
    if-ge v6, v5, :cond_2c7

    aget-object v7, v0, v6

    iget v8, v7, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    const v14, 0x20000001

    if-ne v8, v14, :cond_2c4

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2c4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2b6

    :cond_2c7
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v1}, Lb/k;->V0(Ljava/lang/Iterable;)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    move/from16 v7, v16

    :goto_2d6
    if-ge v7, v6, :cond_2ee

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Landroid/hardware/security/keymint/KeyParameter;

    iget-object v8, v8, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v8}, Landroid/hardware/security/keymint/KeyParameterValue;->getKeyPurpose()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2d6

    :cond_2ee
    const v1, 0x20000005

    invoke-static {v0, v1}, Ls2/a;->d([Landroid/hardware/security/keymint/KeyParameter;I)Ljava/util/ArrayList;

    array-length v1, v0

    move/from16 v5, v16

    :goto_2f7
    if-ge v5, v1, :cond_306

    aget-object v6, v0, v5

    iget v7, v6, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    const v8, 0x500000c8

    if-ne v7, v8, :cond_303

    goto :goto_307

    :cond_303
    add-int/lit8 v5, v5, 0x1

    goto :goto_2f7

    :cond_306
    const/4 v6, 0x0

    :goto_307
    if-eqz v6, :cond_31a

    iget-object v1, v6, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    if-eqz v1, :cond_31a

    invoke-virtual {v1}, Landroid/hardware/security/keymint/KeyParameterValue;->getLongInteger()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    const-string v5, "valueOf(...)"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_31a
    const v1, -0x7ffffc12

    invoke-static {v0, v1}, Ls2/a;->e([Landroid/hardware/security/keymint/KeyParameter;I)[B

    move-result-object v1

    if-eqz v1, :cond_328

    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v1}, Ljava/math/BigInteger;-><init>([B)V

    :cond_328
    const v1, -0x6ffffc11

    invoke-static {v0, v1}, Ls2/a;->e([Landroid/hardware/security/keymint/KeyParameter;I)[B

    move-result-object v1

    if-eqz v1, :cond_33f

    new-instance v5, Lj0/c;

    new-instance v6, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v6, v1}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    invoke-virtual {v6}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Lj0/c;-><init>(Ljava/lang/String;)V

    :cond_33f
    const v14, 0x600003f0

    invoke-static {v0, v14}, Ls2/a;->g([Landroid/hardware/security/keymint/KeyParameter;I)Ljava/util/Date;

    const v1, 0x600003f1

    invoke-static {v0, v1}, Ls2/a;->g([Landroid/hardware/security/keymint/KeyParameter;I)Ljava/util/Date;

    const v1, -0x6ffffd3c

    invoke-static {v0, v1}, Ls2/a;->e([Landroid/hardware/security/keymint/KeyParameter;I)[B

    const v1, -0x6ffffd3a

    invoke-static {v0, v1}, Ls2/a;->e([Landroid/hardware/security/keymint/KeyParameter;I)[B

    const v1, -0x6ffffd39

    invoke-static {v0, v1}, Ls2/a;->e([Landroid/hardware/security/keymint/KeyParameter;I)[B

    const v1, -0x6ffffd38

    invoke-static {v0, v1}, Ls2/a;->e([Landroid/hardware/security/keymint/KeyParameter;I)[B

    const v1, -0x6ffffd37

    invoke-static {v0, v1}, Ls2/a;->e([Landroid/hardware/security/keymint/KeyParameter;I)[B

    const v1, -0x6ffffd36

    invoke-static {v0, v1}, Ls2/a;->e([Landroid/hardware/security/keymint/KeyParameter;I)[B

    const v1, -0x6ffffd35

    invoke-static {v0, v1}, Ls2/a;->e([Landroid/hardware/security/keymint/KeyParameter;I)[B

    const v1, -0x6ffffd34

    invoke-static {v0, v1}, Ls2/a;->e([Landroid/hardware/security/keymint/KeyParameter;I)[B

    const v1, -0x6ffffd33

    invoke-static {v0, v1}, Ls2/a;->e([Landroid/hardware/security/keymint/KeyParameter;I)[B

    const v1, -0x6ffffd2d

    invoke-static {v0, v1}, Ls2/a;->e([Landroid/hardware/security/keymint/KeyParameter;I)[B

    const v1, 0x60000190

    invoke-static {v0, v1}, Ls2/a;->g([Landroid/hardware/security/keymint/KeyParameter;I)Ljava/util/Date;

    const v1, 0x60000191

    invoke-static {v0, v1}, Ls2/a;->g([Landroid/hardware/security/keymint/KeyParameter;I)Ljava/util/Date;

    const v1, 0x60000192

    invoke-static {v0, v1}, Ls2/a;->g([Landroid/hardware/security/keymint/KeyParameter;I)Ljava/util/Date;

    const v1, 0x30000195

    invoke-static {v0, v1}, Ls2/a;->j([Landroid/hardware/security/keymint/KeyParameter;I)Ljava/lang/Integer;

    const v1, 0x70000007

    invoke-static {v0, v1}, Ls2/a;->f([Landroid/hardware/security/keymint/KeyParameter;I)Ljava/lang/Boolean;

    const v1, -0x6ffffc17

    invoke-static {v0, v1}, Ls2/a;->e([Landroid/hardware/security/keymint/KeyParameter;I)[B

    const v1, 0x700001fd

    invoke-static {v0, v1}, Ls2/a;->f([Landroid/hardware/security/keymint/KeyParameter;I)Ljava/lang/Boolean;

    const v1, 0x700000ca

    invoke-static {v0, v1}, Ls2/a;->f([Landroid/hardware/security/keymint/KeyParameter;I)Ljava/lang/Boolean;

    const v1, 0x7000012f

    invoke-static {v0, v1}, Ls2/a;->f([Landroid/hardware/security/keymint/KeyParameter;I)Ljava/lang/Boolean;

    const v1, 0x70000131

    invoke-static {v0, v1}, Ls2/a;->f([Landroid/hardware/security/keymint/KeyParameter;I)Ljava/lang/Boolean;

    const v1, 0x700001fa

    invoke-static {v0, v1}, Ls2/a;->f([Landroid/hardware/security/keymint/KeyParameter;I)Ljava/lang/Boolean;

    const v1, 0x700001fb

    invoke-static {v0, v1}, Ls2/a;->f([Landroid/hardware/security/keymint/KeyParameter;I)Ljava/lang/Boolean;

    const v1, 0x700001fc

    invoke-static {v0, v1}, Ls2/a;->f([Landroid/hardware/security/keymint/KeyParameter;I)Ljava/lang/Boolean;

    const v1, 0x700001f7

    invoke-static {v0, v1}, Ls2/a;->f([Landroid/hardware/security/keymint/KeyParameter;I)Ljava/lang/Boolean;

    const v1, 0x30000194

    invoke-static {v0, v1}, Ls2/a;->j([Landroid/hardware/security/keymint/KeyParameter;I)Ljava/lang/Integer;

    const v1, 0x300003f2

    invoke-static {v0, v1}, Ls2/a;->j([Landroid/hardware/security/keymint/KeyParameter;I)Ljava/lang/Integer;

    const v1, 0x30000008

    invoke-static {v0, v1}, Ls2/a;->j([Landroid/hardware/security/keymint/KeyParameter;I)Ljava/lang/Integer;

    const v1, 0x300003eb

    invoke-static {v0, v1}, Ls2/a;->j([Landroid/hardware/security/keymint/KeyParameter;I)Ljava/lang/Integer;

    const v1, 0x200000cb

    invoke-static {v0, v1}, Ls2/a;->d([Landroid/hardware/security/keymint/KeyParameter;I)Ljava/util/ArrayList;

    array-length v1, v0

    move/from16 v5, v16

    :goto_3fc
    if-ge v5, v1, :cond_419

    aget-object v6, v0, v5

    sget-object v7, Lx4/a;->a:La/f;

    const-string v7, "param"

    invoke-static {v7, v6}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v7, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v6}, Lx4/a;->a(Landroid/hardware/security/keymint/KeyParameter;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "KeyParam: "

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lx4/b;->a(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3fc

    :cond_419
    invoke-virtual {v9}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    const-string v1, "message"

    const-string v5, "[TX_ID: "

    if-eqz v0, :cond_439

    sget-object v0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "] Current operation has a very high pruning power."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_439
    sget-object v0, Landroid/system/keystore2/CreateOperationResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/system/keystore2/CreateOperationResponse;

    if-nez v0, :cond_445

    goto/16 :goto_60e

    :cond_445
    sget-object v6, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v6, v0, Landroid/system/keystore2/CreateOperationResponse;->iOperation:Landroid/system/keystore2/IKeystoreOperation;

    iget-object v7, v0, Landroid/system/keystore2/CreateOperationResponse;->operationChallenge:Landroid/system/keystore2/OperationChallenge;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "] CreateOperationResponse: "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v0, Landroid/system/keystore2/CreateOperationResponse;->iOperation:Landroid/system/keystore2/IKeystoreOperation;

    if-eqz v0, :cond_60e

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    sget-object v3, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->interceptedOperations:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_60e

    const-string v4, "Found new IKeystoreOperation. Registering interceptor..."

    invoke-static {v4}, Lx4/b;->c(Ljava/lang/String;)V

    sget-object v4, Lv4/g;->Companion:Lv4/a;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11}, Lv4/a;->a(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v4

    if-eqz v4, :cond_4b3

    invoke-static {v2}, Lb/i;->X0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_493

    goto :goto_49c

    :cond_493
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v5, 0x20

    if-ne v2, v5, :cond_49c

    goto :goto_49e

    :cond_49c
    :goto_49c
    move/from16 v13, v16

    :goto_49e
    new-instance v2, Lorg/matrix/TEESimulator/interception/keystore/shim/OperationInterceptor;

    invoke-direct {v2, v0, v4, v13}, Lorg/matrix/TEESimulator/interception/keystore/shim/OperationInterceptor;-><init>(Landroid/system/keystore2/IKeystoreOperation;Landroid/os/IBinder;Z)V

    invoke-static {v1}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/OperationInterceptor;->Companion:Lorg/matrix/TEESimulator/interception/keystore/shim/OperationInterceptor$Companion;

    invoke-virtual {v0}, Lorg/matrix/TEESimulator/interception/keystore/shim/OperationInterceptor$Companion;->getINTERCEPTED_CODES()[I

    move-result-object v0

    invoke-static {v4, v1, v2, v0}, Lv4/a;->b(Landroid/os/IBinder;Landroid/os/IBinder;Lv4/g;[I)Z

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v12

    :cond_4b3
    const-string v0, "Failed to get backdoor to register OperationInterceptor."

    const/4 v11, 0x0

    invoke-static {v0, v11}, Lx4/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v12

    :cond_4ba
    move-wide/from16 v3, p1

    move-object v11, v7

    move-object v1, v14

    move v14, v5

    sget v5, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->GENERATE_KEY_TRANSACTION:I

    if-ne v0, v5, :cond_60e

    sget-object v5, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->Companion:Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;

    # invokes: Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;->getTransactionNames()Ljava/util/Map;
    invoke-static {v5}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;->access$getTransactionNames(Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;)Ljava/util/Map;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v14, v1

    move-wide v1, v3

    move-object v11, v5

    move/from16 v4, p6

    move/from16 v5, p7

    move-object v3, v0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v8}, Lv4/g;->logTransaction$default(Lv4/g;JLjava/lang/String;IIZILjava/lang/Object;)V

    sget-object v1, Landroid/system/keystore2/KeyMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/system/keystore2/KeyMetadata;

    if-nez v3, :cond_4fe

    goto/16 :goto_60e

    :cond_4fe
    invoke-virtual {v9, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v1, Landroid/system/keystore2/KeyDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/system/keystore2/KeyDescriptor;

    if-nez v2, :cond_50d

    goto/16 :goto_60e

    :cond_50d
    new-instance v5, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;

    iget-object v2, v2, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    invoke-static {v14, v2}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v5, v4, v2}, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;-><init>(ILjava/lang/String;)V

    invoke-static {v3}, Ly4/c;->b(Landroid/system/keystore2/KeyMetadata;)[Ljava/security/cert/Certificate;

    move-result-object v2

    if-eqz v2, :cond_5fb

    array-length v6, v2

    if-gt v6, v13, :cond_522

    goto/16 :goto_5fb

    :cond_522
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    sget-object v1, Landroid/hardware/security/keymint/KeyParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/security/keymint/KeyParameter;

    if-eqz v1, :cond_552

    array-length v6, v1

    move/from16 v7, v16

    :goto_532
    if-ge v7, v6, :cond_541

    aget-object v8, v1, v7

    iget v9, v8, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    const v14, 0x600003f0

    if-ne v9, v14, :cond_53e

    goto :goto_542

    :cond_53e
    add-int/lit8 v7, v7, 0x1

    goto :goto_532

    :cond_541
    const/4 v8, 0x0

    :goto_542
    if-eqz v8, :cond_552

    iget-object v6, v8, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    if-eqz v6, :cond_552

    invoke-virtual {v6}, Landroid/hardware/security/keymint/KeyParameterValue;->getDateTime()J

    move-result-wide v6

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8, v6, v7}, Ljava/util/Date;-><init>(J)V

    goto :goto_553

    :cond_552
    const/4 v8, 0x0

    :goto_553
    if-eqz v1, :cond_578

    array-length v6, v1

    move/from16 v7, v16

    :goto_558
    if-ge v7, v6, :cond_567

    aget-object v9, v1, v7

    iget v10, v9, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    const v14, 0x600003f1

    if-ne v10, v14, :cond_564

    goto :goto_568

    :cond_564
    add-int/lit8 v7, v7, 0x1

    goto :goto_558

    :cond_567
    const/4 v9, 0x0

    :goto_568
    if-eqz v9, :cond_578

    iget-object v1, v9, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    if-eqz v1, :cond_578

    invoke-virtual {v1}, Landroid/hardware/security/keymint/KeyParameterValue;->getDateTime()J

    move-result-wide v6

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v6, v7}, Ljava/util/Date;-><init>(J)V

    goto :goto_579

    :cond_578
    const/4 v1, 0x0

    :goto_579
    sget v6, Lt4/f;->a:I

    invoke-static {v2, v4, v8, v1}, Lt4/f;->d([Ljava/security/cert/Certificate;ILjava/util/Date;Ljava/util/Date;)[Ljava/security/cert/Certificate;

    move-result-object v1

    iget-object v2, v3, Landroid/system/keystore2/KeyMetadata;->key:Landroid/system/keystore2/KeyDescriptor;

    if-nez v2, :cond_585

    goto/16 :goto_60e

    :cond_585
    invoke-static {v3, v1}, Ly4/c;->f(Landroid/system/keystore2/KeyMetadata;[Ljava/security/cert/Certificate;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lq4/k;->U0(Ljava/lang/Object;)V

    sget-object v6, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;

    iget-object v7, v3, Landroid/system/keystore2/KeyMetadata;->authorizations:[Landroid/system/keystore2/Authorization;

    invoke-virtual {v6, v7, v4}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->patchAuthorizations([Landroid/system/keystore2/Authorization;I)[Landroid/system/keystore2/Authorization;

    move-result-object v4

    iput-object v4, v3, Landroid/system/keystore2/KeyMetadata;->authorizations:[Landroid/system/keystore2/Authorization;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const-string v7, "asList(...)"

    invoke-static {v7, v4}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v4, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    sget-object v4, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->Companion:Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;

    invoke-virtual {v4, v5}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;->cleanupKeyData(Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;)V

    sget-object v4, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->patchedChains:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->teeResponses:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v4, Landroid/system/keystore2/KeyEntryResponse;

    invoke-direct {v4}, Landroid/system/keystore2/KeyEntryResponse;-><init>()V

    iput-object v3, v4, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v0, v0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->original:Landroid/system/keystore2/IKeystoreSecurityLevel;

    iput-object v0, v4, Landroid/system/keystore2/KeyEntryResponse;->iSecurityLevel:Landroid/system/keystore2/IKeystoreSecurityLevel;

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v0, v2, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    iget v1, v2, Landroid/system/keystore2/KeyDescriptor;->domain:I

    iget-wide v7, v2, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Cached patched certificate chain for "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ". ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "])"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lx4/b;->a(Ljava/lang/String;)V

    move-object v2, v6

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->createTypedObjectReply$default(Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;Landroid/os/Parcelable;ILorg/matrix/TEESimulator/interception/keystore/InterceptorUtils$ReplyDiagnostic;ILjava/lang/Object;)Lv4/d;

    move-result-object v0

    return-object v0

    :cond_5fb
    :goto_5fb
    invoke-virtual {v11, v5}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;->cleanupKeyData(Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;)V

    sget-object v1, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->teeResponses:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Landroid/system/keystore2/KeyEntryResponse;

    invoke-direct {v2}, Landroid/system/keystore2/KeyEntryResponse;-><init>()V

    iput-object v3, v2, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v0, v0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->original:Landroid/system/keystore2/IKeystoreSecurityLevel;

    iput-object v0, v2, Landroid/system/keystore2/KeyEntryResponse;->iSecurityLevel:Landroid/system/keystore2/IKeystoreSecurityLevel;

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_60e
    :goto_60e
    return-object v12
.end method

.method public onPreTransact(JLandroid/os/IBinder;IIIILandroid/os/Parcel;)Lv4/f;
    .registers 20

    move v0, p4

    move-object/from16 v9, p8

    const-string v1, "target"

    move-object v2, p3

    invoke-static {v1, p3}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "data"

    invoke-static {v1, v9}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget v1, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->GENERATE_KEY_TRANSACTION:I

    if-ne v0, v1, :cond_3b

    sget-object v1, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->Companion:Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;

    # invokes: Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;->getTransactionNames()Ljava/util/Map;
    invoke-static {v1}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;->access$getTransactionNames(Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-static/range {v0 .. v8}, Lv4/g;->logTransaction$default(Lv4/g;JLjava/lang/String;IIZILjava/lang/Object;)V

    move v3, v4

    move v4, v5

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->handleGenerateKey(JIILandroid/os/Parcel;)Lv4/f;

    move-result-object v0

    return-object v0

    :cond_3b
    sget v1, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->CREATE_OPERATION_TRANSACTION:I

    if-ne v0, v1, :cond_65

    sget-object v1, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->Companion:Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;

    # invokes: Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;->getTransactionNames()Ljava/util/Map;
    invoke-static {v1}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;->access$getTransactionNames(Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-static/range {v0 .. v8}, Lv4/g;->logTransaction$default(Lv4/g;JLjava/lang/String;IIZILjava/lang/Object;)V

    invoke-direct {p0, p1, p2, v4, v9}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->handleCreateOperation(JILandroid/os/Parcel;)Lv4/f;

    move-result-object v0

    return-object v0

    :cond_65
    move/from16 v4, p6

    sget v5, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->IMPORT_KEY_TRANSACTION:I

    sget-object v10, Lv4/c;->a:Lv4/c;

    if-ne v0, v5, :cond_cb

    sget-object v5, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->Companion:Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;

    # invokes: Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;->getTransactionNames()Ljava/util/Map;
    invoke-static {v5}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;->access$getTransactionNames(Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;)Ljava/util/Map;

    move-result-object v5

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/String;

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-wide v1, p1

    move/from16 v5, p7

    move-object v3, v0

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Lv4/g;->logTransaction$default(Lv4/g;JLjava/lang/String;IIZILjava/lang/Object;)V

    const-string v0, "android.system.keystore2.IKeystoreSecurityLevel"

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v0, Landroid/system/keystore2/KeyDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/system/keystore2/KeyDescriptor;

    if-nez v0, :cond_9c

    return-object v10

    :cond_9c
    sget-object v3, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v3, v0, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    iget-wide v4, v0, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "[TX_ID: "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "] Forward to post-importKey hook for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lx4/b;->c(Ljava/lang/String;)V

    sget-object v0, Lv4/b;->a:Lv4/b;

    return-object v0

    :cond_cb
    sget-object v3, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->Companion:Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;

    # invokes: Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;->getTransactionNames()Ljava/util/Map;
    invoke-static {v3}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;->access$getTransactionNames(Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;)Ljava/util/Map;

    move-result-object v3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_e3

    const-string v3, "unknown code="

    invoke-static {p4, v3}, Lb/b;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_e3
    const/4 v6, 0x1

    move-object v0, p0

    move-wide v1, p1

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-virtual/range {v0 .. v6}, Lv4/g;->logTransaction(JLjava/lang/String;IIZ)V

    return-object v10
.end method
