.class public final Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor;
.super Lorg/matrix/TEESimulator/interception/keystore/AbstractKeystoreInterceptor;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"


# static fields
.field private static final ATTEST_KEY_TRANSACTION$delegate:La/a;

.field private static final EXPORT_KEY_TRANSACTION$delegate:La/a;

.field private static final GENERATE_KEY_TRANSACTION$delegate:La/a;

.field private static final GET_KEY_CHARACTERISTICS_TRANSACTION$delegate:La/a;

.field private static final GET_TRANSACTION$delegate:La/a;

.field public static final INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor;

.field private static final generateKeyHandlers$delegate:La/a;

.field private static final generatedKeyPairs:Ljava/util/concurrent/ConcurrentHashMap;

.field private static final injectionCommand:Ljava/lang/String;

.field private static final keygenParameters:Ljava/util/concurrent/ConcurrentHashMap;

.field private static final patchedChainCache:Ljava/util/concurrent/ConcurrentHashMap;

.field private static final processName:Ljava/lang/String;

.field private static final serviceName:Ljava/lang/String;

.field private static final transactionNames$delegate:La/a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor;

    invoke-direct {v0}, Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor;-><init>()V

    sput-object v0, Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor;

    new-instance v0, Lorg/matrix/TEESimulator/interception/keystore/d;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/matrix/TEESimulator/interception/keystore/d;-><init>(I)V

    new-instance v1, La/f;

    invoke-direct {v1, v0}, La/f;-><init>(Lh/a;)V

    sput-object v1, Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor;->GET_TRANSACTION$delegate:La/a;

    new-instance v0, Lorg/matrix/TEESimulator/interception/keystore/d;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/matrix/TEESimulator/interception/keystore/d;-><init>(I)V

    new-instance v1, La/f;

    invoke-direct {v1, v0}, La/f;-><init>(Lh/a;)V

    sput-object v1, Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor;->GENERATE_KEY_TRANSACTION$delegate:La/a;

    new-instance v0, Lorg/matrix/TEESimulator/interception/keystore/d;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lorg/matrix/TEESimulator/interception/keystore/d;-><init>(I)V

    new-instance v1, La/f;

    invoke-direct {v1, v0}, La/f;-><init>(Lh/a;)V

    sput-object v1, Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor;->GET_KEY_CHARACTERISTICS_TRANSACTION$delegate:La/a;

    new-instance v0, Lorg/matrix/TEESimulator/interception/keystore/d;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lorg/matrix/TEESimulator/interception/keystore/d;-><init>(I)V

    new-instance v1, La/f;

    invoke-direct {v1, v0}, La/f;-><init>(Lh/a;)V

    sput-object v1, Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor;->EXPORT_KEY_TRANSACTION$delegate:La/a;

    new-instance v0, Lorg/matrix/TEESimulator/interception/keystore/d;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lorg/matrix/TEESimulator/interception/keystore/d;-><init>(I)V

    new-instance v1, La/f;

    invoke-direct {v1, v0}, La/f;-><init>(Lh/a;)V

    sput-object v1, Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor;->ATTEST_KEY_TRANSACTION$delegate:La/a;

    new-instance v0, Lorg/matrix/TEESimulator/interception/keystore/d;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lorg/matrix/TEESimulator/interception/keystore/d;-><init>(I)V

    new-instance v1, La/f;

    invoke-direct {v1, v0}, La/f;-><init>(Lh/a;)V

    sput-object v1, Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor;->transactionNames$delegate:La/a;

    new-instance v0, Lorg/matrix/TEESimulator/interception/keystore/d;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lorg/matrix/TEESimulator/interception/keystore/d;-><init>(I)V

    new-instance v1, La/f;

    invoke-direct {v1, v0}, La/f;-><init>(Lh/a;)V

    sput-object v1, Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor;->generateKeyHandlers$delegate:La/a;

    const-string v0, "android.security.keystore"

    sput-object v0, Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor;->serviceName:Ljava/lang/String;

    const-string v0, "keystore"

    sput-object v0, Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor;->processName:Ljava/lang/String;

    const-string v0, "exec ./inject `pidof keystore` libTEESimulator.so entry"

    sput-object v0, Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor;->injectionCommand:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor;->keygenParameters:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor;->generatedKeyPairs:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor;->patchedChainCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/matrix/TEESimulator/interception/keystore/AbstractKeystoreInterceptor;-><init>()V

    return-void
.end method

.method private static final ATTEST_KEY_TRANSACTION_delegate$lambda$0()I
    .registers 3

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;

    const-class v1, Landroid/security/keystore/IKeystoreService$Stub;

    const-string v2, "attestKey"

    invoke-virtual {v0, v1, v2}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->getTransactCode(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static final EXPORT_KEY_TRANSACTION_delegate$lambda$0()I
    .registers 3

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;

    const-class v1, Landroid/security/keystore/IKeystoreService$Stub;

    const-string v2, "exportKey"

    invoke-virtual {v0, v1, v2}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->getTransactCode(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static final GENERATE_KEY_TRANSACTION_delegate$lambda$0()I
    .registers 3

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;

    const-class v1, Landroid/security/keystore/IKeystoreService$Stub;

    const-string v2, "generateKey"

    invoke-virtual {v0, v1, v2}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->getTransactCode(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static final GET_KEY_CHARACTERISTICS_TRANSACTION_delegate$lambda$0()I
    .registers 3

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;

    const-class v1, Landroid/security/keystore/IKeystoreService$Stub;

    const-string v2, "getKeyCharacteristics"

    invoke-virtual {v0, v1, v2}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->getTransactCode(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static final GET_TRANSACTION_delegate$lambda$0()I
    .registers 3

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;

    const-class v1, Landroid/security/keystore/IKeystoreService$Stub;

    const-string v2, "get"

    invoke-virtual {v0, v1, v2}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->getTransactCode(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static final synthetic access$handleAttestKey(Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor;JIILandroid/os/Parcel;)Lv4/f;
    .registers 6

    invoke-direct/range {p0 .. p5}, Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor;->handleAttestKey(JIILandroid/os/Parcel;)Lv4/f;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$handleExportKey(Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor;JIILandroid/os/Parcel;)Lv4/f;
    .registers 6

    invoke-direct/range {p0 .. p5}, Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor;->handleExportKey(JIILandroid/os/Parcel;)Lv4/f;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$handleGenerateKey(Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor;JIILandroid/os/Parcel;)Lv4/f;
    .registers 6

    invoke-direct/range {p0 .. p5}, Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor;->handleGenerateKey(JIILandroid/os/Parcel;)Lv4/f;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$handleGetKeyCharacteristics(Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor;JIILandroid/os/Parcel;)Lv4/f;
    .registers 6

    invoke-direct/range {p0 .. p5}, Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor;->handleGetKeyCharacteristics(JIILandroid/os/Parcel;)Lv4/f;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d()I
    .registers 1

    invoke-static {}, Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor;->GENERATE_KEY_TRANSACTION_delegate$lambda$0()I

    move-result v0

    return v0
.end method

.method public static synthetic e()I
    .registers 1

    invoke-static {}, Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor;->GET_KEY_CHARACTERISTICS_TRANSACTION_delegate$lambda$0()I

    move-result v0

    return v0
.end method

.method public static synthetic f()I
    .registers 1

    invoke-static {}, Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor;->ATTEST_KEY_TRANSACTION_delegate$lambda$0()I

    move-result v0

    return v0
.end method

.method public static synthetic g()Ljava/util/Map;
    .registers 1

    invoke-static {}, Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor;->generateKeyHandlers_delegate$lambda$0()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static final generateKeyHandlers_delegate$lambda$0()Ljava/util/Map;
    .registers 6

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor;

    invoke-direct {v0}, Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor;->getGENERATE_KEY_TRANSACTION()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor$generateKeyHandlers$2$1;

    invoke-direct {v2, v0}, Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor$generateKeyHandlers$2$1;-><init>(Ljava/lang/Object;)V

    new-instance v3, La/c;

    invoke-direct {v3, v1, v2}, La/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0}, Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor;->getGET_KEY_CHARACTERISTICS_TRANSACTION()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor$generateKeyHandlers$2$2;

    invoke-direct {v2, v0}, Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor$generateKeyHandlers$2$2;-><init>(Ljava/lang/Object;)V

    new-instance v4, La/c;

    invoke-direct {v4, v1, v2}, La/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0}, Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor;->getEXPORT_KEY_TRANSACTION()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor$generateKeyHandlers$2$3;

    invoke-direct {v2, v0}, Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor$generateKeyHandlers$2$3;-><init>(Ljava/lang/Object;)V

    new-instance v5, La/c;

    invoke-direct {v5, v1, v2}, La/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0}, Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor;->getATTEST_KEY_TRANSACTION()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor$generateKeyHandlers$2$4;

    invoke-direct {v2, v0}, Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor$generateKeyHandlers$2$4;-><init>(Ljava/lang/Object;)V

    new-instance v0, La/c;

    invoke-direct {v0, v1, v2}, La/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v3, v4, v5, v0}, [La/c;

    move-result-object v0

    invoke-static {v0}, Lb/t;->g1([La/c;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private final getATTEST_KEY_TRANSACTION()I
    .registers 1

    sget-object p0, Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor;->ATTEST_KEY_TRANSACTION$delegate:La/a;

    check-cast p0, La/f;

    invoke-virtual {p0}, La/f;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method private final getEXPORT_KEY_TRANSACTION()I
    .registers 1

    sget-object p0, Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor;->EXPORT_KEY_TRANSACTION$delegate:La/a;

    check-cast p0, La/f;

    invoke-virtual {p0}, La/f;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method private final getGENERATE_KEY_TRANSACTION()I
    .registers 1

    sget-object p0, Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor;->GENERATE_KEY_TRANSACTION$delegate:La/a;

    check-cast p0, La/f;

    invoke-virtual {p0}, La/f;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method private final getGET_KEY_CHARACTERISTICS_TRANSACTION()I
    .registers 1

    sget-object p0, Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor;->GET_KEY_CHARACTERISTICS_TRANSACTION$delegate:La/a;

    check-cast p0, La/f;

    invoke-virtual {p0}, La/f;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method private final getGET_TRANSACTION()I
    .registers 1

    sget-object p0, Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor;->GET_TRANSACTION$delegate:La/a;

    check-cast p0, La/f;

    invoke-virtual {p0}, La/f;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method private final getGenerateKeyHandlers()Ljava/util/Map;
    .registers 1

    sget-object p0, Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor;->generateKeyHandlers$delegate:La/a;

    check-cast p0, La/f;

    invoke-virtual {p0}, La/f;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method private final getTransactionNames()Ljava/util/Map;
    .registers 1

    sget-object p0, Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor;->transactionNames$delegate:La/a;

    check-cast p0, La/f;

    invoke-virtual {p0}, La/f;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic h()I
    .registers 1

    invoke-static {}, Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor;->GET_TRANSACTION_delegate$lambda$0()I

    move-result v0

    return v0
.end method

.method private final handleAttestKey(JIILandroid/os/Parcel;)Lv4/f;
    .registers 11

    const-string p0, "No keypair found for "

    const-string p4, "No params found for "

    :try_start_4
    const-string v0, "android.security.keystore.IKeystoreService"

    invoke-virtual {p5, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p5}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/security/keystore/IKeystoreCertificateChainCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/keystore/IKeystoreCertificateChainCallback;

    move-result-object v0

    sget-object v1, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;

    invoke-virtual {p5}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->extractAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;

    invoke-direct {v2, p3, v1}, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;-><init>(ILjava/lang/String;)V

    sget-object v1, Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor;->keygenParameters:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;

    if-eqz v1, :cond_af

    sget-object p4, Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor;->generatedKeyPairs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/security/KeyPair;

    if-eqz p4, :cond_9d

    new-instance p0, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {p0}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    invoke-virtual {p5}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_56

    invoke-virtual {p0, p5}, Landroid/security/keymaster/KeymasterArguments;->readFromParcel(Landroid/os/Parcel;)V

    new-array p5, v3, [B

    const v2, -0x6ffffd3c

    invoke-virtual {p0, v2, p5}, Landroid/security/keymaster/KeymasterArguments;->getBytes(I[B)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;->setAttestationChallenge([B)V

    goto :goto_56

    :catchall_54
    move-exception p0

    goto :goto_c1

    :cond_56
    :goto_56
    invoke-virtual {v1}, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;->toKeyMintAttestation()Lt4/l;

    move-result-object p0

    const/4 p5, 0x0

    invoke-static {p3, p4, p5, p0, v4}, Ls2/b;->x(ILjava/security/KeyPair;Ljava/lang/String;Lt4/l;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_95

    new-instance p3, Ljava/util/ArrayList;

    invoke-static {p0}, Lb/k;->V0(Ljava/lang/Iterable;)I

    move-result p4

    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_82

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/security/cert/Certificate;

    invoke-virtual {p4}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6e

    :cond_82
    new-instance p0, Landroid/security/keymaster/KeymasterCertificateChain;

    invoke-direct {p0, p3}, Landroid/security/keymaster/KeymasterCertificateChain;-><init>(Ljava/util/List;)V

    sget-object p3, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;

    invoke-virtual {p3}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->createSuccessKeystoreResponse()Landroid/security/keystore/KeystoreResponse;

    move-result-object p4

    invoke-interface {v0, p4, p0}, Landroid/security/keystore/IKeystoreCertificateChainCallback;->onFinished(Landroid/security/keystore/KeystoreResponse;Landroid/security/keymaster/KeymasterCertificateChain;)V

    invoke-static {p3, v3, v4, p5}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->createSuccessReply$default(Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;ZILjava/lang/Object;)Lv4/d;

    move-result-object p0

    goto :goto_c7

    :cond_95
    new-instance p0, Ljava/lang/Exception;

    const-string p3, "CertificateGenerator failed to create attested key pair."

    invoke-direct {p0, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9d
    new-instance p3, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_af
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_c1
    .catchall {:try_start_4 .. :try_end_c1} :catchall_54

    :goto_c1
    new-instance p3, La/d;

    invoke-direct {p3, p0}, La/d;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p3

    :goto_c7
    invoke-static {p0}, La/e;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p3

    if-nez p3, :cond_ce

    goto :goto_e8

    :cond_ce
    sget-object p0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p4, "[TX_ID: "

    invoke-direct {p0, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "] Failed during handleAttestKey."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p3}, Lx4/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p0, Lv4/c;->a:Lv4/c;

    :goto_e8
    check-cast p0, Lv4/f;

    return-object p0
.end method

.method private final handleExportKey(JIILandroid/os/Parcel;)Lv4/f;
    .registers 8

    const-string p0, "No params found for "

    :try_start_2
    const-string p4, "android.security.keystore.IKeystoreService"

    invoke-virtual {p5, p4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p5}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/security/keystore/IKeystoreExportKeyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/keystore/IKeystoreExportKeyCallback;

    move-result-object p4

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;

    invoke-virtual {p5}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, p5}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->extractAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    new-instance v1, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;

    invoke-direct {v1, p3, p5}, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;-><init>(ILjava/lang/String;)V

    sget-object p3, Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor;->keygenParameters:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;

    if-eqz p3, :cond_6f

    invoke-virtual {p3}, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;->toKeyMintAttestation()Lt4/l;

    move-result-object p0

    invoke-static {p0}, Ls2/b;->y(Lt4/l;)Ljava/security/KeyPair;

    move-result-object p0

    if-eqz p0, :cond_67

    sget-object p3, Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor;->generatedKeyPairs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p3, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p3

    const/4 p5, 0x1

    invoke-virtual {p3, p5}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object p0

    invoke-interface {p0}, Ljava/security/Key;->getEncoded()[B

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    const/4 p0, 0x0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v1, Landroid/security/keymaster/ExportResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p3}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/security/keymaster/ExportResult;

    invoke-virtual {p3}, Landroid/os/Parcel;->recycle()V

    invoke-interface {p4, v1}, Landroid/security/keystore/IKeystoreExportKeyCallback;->onFinished(Landroid/security/keymaster/ExportResult;)V

    const/4 p3, 0x0

    invoke-static {v0, p0, p5, p3}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->createSuccessReply$default(Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;ZILjava/lang/Object;)Lv4/d;

    move-result-object p0

    goto :goto_87

    :catchall_65
    move-exception p0

    goto :goto_81

    :cond_67
    new-instance p0, Ljava/lang/Exception;

    const-string p3, "Failed to generate software key pair."

    invoke-direct {p0, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6f
    new-instance p3, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p3
    :try_end_81
    .catchall {:try_start_2 .. :try_end_81} :catchall_65

    :goto_81
    new-instance p3, La/d;

    invoke-direct {p3, p0}, La/d;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p3

    :goto_87
    invoke-static {p0}, La/e;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p3

    if-nez p3, :cond_8e

    goto :goto_a8

    :cond_8e
    sget-object p0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p4, "[TX_ID: "

    invoke-direct {p0, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "] Failed during handleExportKey."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p3}, Lx4/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p0, Lv4/c;->a:Lv4/c;

    :goto_a8
    check-cast p0, Lv4/f;

    return-object p0
.end method

.method private final handleGenerateKey(JIILandroid/os/Parcel;)Lv4/f;
    .registers 9

    :try_start_0
    const-string p0, "android.security.keystore.IKeystoreService"

    invoke-virtual {p5, p0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p5}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/security/keystore/IKeystoreKeyCharacteristicsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/keystore/IKeystoreKeyCharacteristicsCallback;

    move-result-object p0

    sget-object p4, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;

    invoke-virtual {p5}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    invoke-virtual {p4, v0}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->extractAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;

    invoke-direct {v1, p3, v0}, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;-><init>(ILjava/lang/String;)V

    new-instance p3, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {p3}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    invoke-virtual {p5}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_31

    invoke-virtual {p3, p5}, Landroid/security/keymaster/KeymasterArguments;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_31

    :catchall_2f
    move-exception p0

    goto :goto_58

    :cond_31
    :goto_31
    sget-object p5, Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor;->keygenParameters:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;->Companion:Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters$Companion;

    invoke-virtual {v0, p3}, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters$Companion;->fromKeymasterArguments(Landroid/security/keymaster/KeymasterArguments;)Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;

    move-result-object v0

    invoke-interface {p5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p5, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct {p5}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    new-instance v0, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v0}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    iput-object v0, p5, Landroid/security/keymaster/KeyCharacteristics;->swEnforced:Landroid/security/keymaster/KeymasterArguments;

    iput-object p3, p5, Landroid/security/keymaster/KeyCharacteristics;->hwEnforced:Landroid/security/keymaster/KeymasterArguments;

    invoke-virtual {p4}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->createSuccessKeystoreResponse()Landroid/security/keystore/KeystoreResponse;

    move-result-object p3

    invoke-interface {p0, p3, p5}, Landroid/security/keystore/IKeystoreKeyCharacteristicsCallback;->onFinished(Landroid/security/keystore/KeystoreResponse;Landroid/security/keymaster/KeyCharacteristics;)V

    const/4 p0, 0x0

    const/4 p3, 0x0

    invoke-static {p4, p0, v2, p3}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->createSuccessReply$default(Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;ZILjava/lang/Object;)Lv4/d;

    move-result-object p0
    :try_end_57
    .catchall {:try_start_0 .. :try_end_57} :catchall_2f

    goto :goto_5e

    :goto_58
    new-instance p3, La/d;

    invoke-direct {p3, p0}, La/d;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p3

    :goto_5e
    invoke-static {p0}, La/e;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p3

    if-nez p3, :cond_65

    goto :goto_7f

    :cond_65
    sget-object p0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p4, "[TX_ID: "

    invoke-direct {p0, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "] Failed during handleGenerateKey."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p3}, Lx4/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p0, Lv4/c;->a:Lv4/c;

    :goto_7f
    check-cast p0, Lv4/f;

    return-object p0
.end method

.method private final handleGetKeyCharacteristics(JIILandroid/os/Parcel;)Lv4/f;
    .registers 8

    const-string p0, "No params found for "

    :try_start_2
    const-string p4, "android.security.keystore.IKeystoreService"

    invoke-virtual {p5, p4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p5}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/security/keystore/IKeystoreKeyCharacteristicsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/keystore/IKeystoreKeyCharacteristicsCallback;

    move-result-object p4

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;

    invoke-virtual {p5}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, p5}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->extractAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    new-instance v1, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;

    invoke-direct {v1, p3, p5}, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;-><init>(ILjava/lang/String;)V

    sget-object p3, Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor;->keygenParameters:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;

    if-eqz p3, :cond_59

    new-instance p0, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct {p0}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    new-instance p5, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {p5}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    iput-object p5, p0, Landroid/security/keymaster/KeyCharacteristics;->swEnforced:Landroid/security/keymaster/KeymasterArguments;

    new-instance p5, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {p5}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    invoke-virtual {p3}, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;->getAlgorithm()I

    move-result p3

    const v1, 0x10000002

    invoke-virtual {p5, v1, p3}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    iput-object p5, p0, Landroid/security/keymaster/KeyCharacteristics;->hwEnforced:Landroid/security/keymaster/KeymasterArguments;

    invoke-virtual {v0}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->createSuccessKeystoreResponse()Landroid/security/keystore/KeystoreResponse;

    move-result-object p3

    invoke-interface {p4, p3, p0}, Landroid/security/keystore/IKeystoreKeyCharacteristicsCallback;->onFinished(Landroid/security/keystore/KeystoreResponse;Landroid/security/keymaster/KeyCharacteristics;)V

    const/4 p0, 0x1

    const/4 p3, 0x0

    const/4 p4, 0x0

    invoke-static {v0, p4, p0, p3}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->createSuccessReply$default(Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;ZILjava/lang/Object;)Lv4/d;

    move-result-object p0

    goto :goto_71

    :catchall_57
    move-exception p0

    goto :goto_6b

    :cond_59
    new-instance p3, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p3
    :try_end_6b
    .catchall {:try_start_2 .. :try_end_6b} :catchall_57

    :goto_6b
    new-instance p3, La/d;

    invoke-direct {p3, p0}, La/d;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p3

    :goto_71
    invoke-static {p0}, La/e;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p3

    if-nez p3, :cond_78

    goto :goto_92

    :cond_78
    sget-object p0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p4, "[TX_ID: "

    invoke-direct {p0, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "] Failed during handleGetKeyCharacteristics."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p3}, Lx4/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p0, Lv4/c;->a:Lv4/c;

    :goto_92
    check-cast p0, Lv4/f;

    return-object p0
.end method

.method public static synthetic i()I
    .registers 1

    invoke-static {}, Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor;->EXPORT_KEY_TRANSACTION_delegate$lambda$0()I

    move-result v0

    return v0
.end method

.method public static synthetic j()Ljava/util/Map;
    .registers 1

    invoke-static {}, Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor;->transactionNames_delegate$lambda$0()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static final transactionNames_delegate$lambda$0()Ljava/util/Map;
    .registers 9

    const-class v0, Landroid/security/keystore/IKeystoreService$Stub;

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
.method public getInjectionCommand()Ljava/lang/String;
    .registers 1

    sget-object p0, Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor;->injectionCommand:Ljava/lang/String;

    return-object p0
.end method

.method public getProcessName()Ljava/lang/String;
    .registers 1

    sget-object p0, Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor;->processName:Ljava/lang/String;

    return-object p0
.end method

.method public getServiceName()Ljava/lang/String;
    .registers 1

    sget-object p0, Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor;->serviceName:Ljava/lang/String;

    return-object p0
.end method

.method public onPostTransact(JLandroid/os/IBinder;IIIILandroid/os/Parcel;Landroid/os/Parcel;I)Lv4/f;
    .registers 27

    move-wide/from16 v1, p1

    move-object/from16 v0, p3

    move/from16 v3, p4

    move/from16 v4, p6

    move-object/from16 v5, p8

    move-object/from16 v9, p9

    const-string v6, "target"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "data"

    invoke-static {v6, v5}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lorg/matrix/TEESimulator/interception/keystore/AbstractKeystoreInterceptor;->getKeystoreService()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    sget-object v10, Lv4/e;->a:Lv4/e;

    const-string v11, "[TX_ID: "

    if-eqz v6, :cond_186

    invoke-direct/range {p0 .. p0}, Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor;->getGET_TRANSACTION()I

    move-result v6

    if-ne v3, v6, :cond_186

    if-eqz v9, :cond_186

    sget-object v12, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;

    invoke-virtual {v12, v9}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->hasException(Landroid/os/Parcel;)Z

    move-result v6

    if-eqz v6, :cond_36

    goto/16 :goto_186

    :cond_36
    invoke-static {v4}, Lu4/g;->d(I)Lu4/d;

    move-result-object v0

    sget-object v6, Lu4/d;->d:Lu4/d;

    if-eq v0, v6, :cond_44

    sget-object v6, Lu4/d;->c:Lu4/d;

    if-ne v0, v6, :cond_43

    goto :goto_44

    :cond_43
    return-object v10

    :cond_44
    :goto_44
    :try_start_44
    const-string v0, "android.security.keystore.IKeystoreService"

    invoke-virtual {v5, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_55

    const-string v0, ""

    goto :goto_55

    :catch_52
    move-exception v0

    goto/16 :goto_16f

    :cond_55
    :goto_55
    invoke-virtual {v12, v0}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->extractAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;

    invoke-direct {v14, v4, v13}, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;-><init>(ILjava/lang/String;)V

    sget-object v5, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct/range {p0 .. p0}, Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor;->getTransactionNames()Ljava/util/Map;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "] Parsed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " during post-transaction of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lx4/b;->a(Ljava/lang/String;)V

    const-string v3, "USRCERT_"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_102

    const-string v3, "post-get (user cert)"

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v15, v5

    move/from16 v5, p7

    invoke-static/range {v0 .. v8}, Lv4/g;->logTransaction$default(Lv4/g;JLjava/lang/String;IIZILjava/lang/Object;)V

    invoke-virtual {v9}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    if-nez v0, :cond_aa

    goto/16 :goto_16e

    :cond_aa
    invoke-static {v0}, Ly4/c;->e([B)Ls2/a;

    move-result-object v0

    instance-of v3, v0, Ly4/b;

    if-nez v3, :cond_b4

    goto/16 :goto_16e

    :cond_b4
    check-cast v0, Ly4/b;

    iget-object v0, v0, Ly4/b;->a:Ljava/lang/Object;

    check-cast v0, Ljava/security/cert/X509Certificate;

    new-array v3, v15, [Ljava/security/cert/Certificate;

    const/4 v5, 0x0

    aput-object v0, v3, v5

    const/4 v6, 0x0

    invoke-static {v3, v4, v6, v6}, Lt4/f;->d([Ljava/security/cert/Certificate;ILjava/util/Date;Ljava/util/Date;)[Ljava/security/cert/Certificate;

    move-result-object v3

    array-length v4, v3

    if-nez v4, :cond_c9

    goto/16 :goto_16e

    :cond_c9
    aget-object v4, v3, v5

    invoke-static {v4, v0}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16e

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor;->patchedChainCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v0, v14, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "] Patched and cached chain for alias \'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'. Returning new leaf."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lx4/b;->c(Ljava/lang/String;)V

    aget-object v0, v3, v5

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v0

    const-string v3, "getEncoded(...)"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v12, v0}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->createByteArrayReply([B)Lv4/d;

    move-result-object v0

    return-object v0

    :cond_102
    move v15, v5

    const-string v3, "CACERT_"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16e

    const-string v3, "post-get (ca cert)"

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v5, p7

    invoke-static/range {v0 .. v8}, Lv4/g;->logTransaction$default(Lv4/g;JLjava/lang/String;IIZILjava/lang/Object;)V

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor;->patchedChainCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v14}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/Certificate;

    if-eqz v0, :cond_151

    array-length v3, v0

    if-le v3, v15, :cond_151

    invoke-static {v0}, Lb/h;->h1([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ly4/c;->a(Ljava/util/List;)[B

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "] Returning cached CA chain for alias \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lx4/b;->c(Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    invoke-virtual {v12, v0}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->createByteArrayReply([B)Lv4/d;

    move-result-object v0

    return-object v0

    :cond_151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "] No cached chain found for CA request on alias \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'. Skipping."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    invoke-static {v0, v6}, Lx4/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_16e
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_16e} :catch_52

    :cond_16e
    :goto_16e
    return-object v10

    :goto_16f
    sget-object v3, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "] Failed during legacy post-transaction patching."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lx4/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v10

    :cond_186
    :goto_186
    sget-object v4, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "] Skip parsing post-transaction for [target, code, reply]: ["

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lx4/b;->a(Ljava/lang/String;)V

    return-object v10
.end method

.method public onPreTransact(JLandroid/os/IBinder;IIIILandroid/os/Parcel;)Lv4/f;
    .registers 28

    move/from16 v0, p4

    move-object/from16 v1, p8

    const-string v2, "target"

    move-object/from16 v3, p3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "data"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static/range {p6 .. p6}, Lu4/g;->d(I)Lu4/d;

    move-result-object v2

    sget-object v3, Lu4/d;->q:Lu4/d;

    if-ne v2, v3, :cond_5c

    invoke-direct/range {p0 .. p0}, Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor;->getGenerateKeyHandlers()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh/r;

    if-eqz v2, :cond_5c

    sget-object v3, Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor;

    invoke-direct {v3}, Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor;->getTransactionNames()Ljava/util/Map;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    const/16 v10, 0x10

    const/4 v11, 0x0

    const/4 v9, 0x0

    move-wide/from16 v4, p1

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-static/range {v3 .. v11}, Lv4/g;->logTransaction$default(Lv4/g;JLjava/lang/String;IIZILjava/lang/Object;)V

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v0, v3, v4, v1}, Lh/r;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv4/f;

    return-object v0

    :cond_5c
    invoke-static/range {p6 .. p6}, Lu4/g;->d(I)Lu4/d;

    move-result-object v1

    sget-object v2, Lu4/d;->d:Lu4/d;

    if-eq v1, v2, :cond_68

    sget-object v2, Lu4/d;->c:Lu4/d;

    if-ne v1, v2, :cond_90

    :cond_68
    invoke-direct/range {p0 .. p0}, Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor;->getGET_TRANSACTION()I

    move-result v1

    if-ne v0, v1, :cond_90

    invoke-direct/range {p0 .. p0}, Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor;->getTransactionNames()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    move-object v15, v0

    check-cast v15, Ljava/lang/String;

    const/16 v18, 0x1

    move-object/from16 v12, p0

    move-wide/from16 v13, p1

    move/from16 v16, p6

    move/from16 v17, p7

    invoke-virtual/range {v12 .. v18}, Lv4/g;->logTransaction(JLjava/lang/String;IIZ)V

    sget-object v0, Lv4/b;->a:Lv4/b;

    return-object v0

    :cond_90
    invoke-direct/range {p0 .. p0}, Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor;->getTransactionNames()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_a6

    const-string v1, "unknown code="

    invoke-static {v0, v1}, Lb/b;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_a6
    move-object v15, v1

    const/16 v18, 0x1

    move-object/from16 v12, p0

    move-wide/from16 v13, p1

    move/from16 v16, p6

    move/from16 v17, p7

    invoke-virtual/range {v12 .. v18}, Lv4/g;->logTransaction(JLjava/lang/String;IIZ)V

    sget-object v0, Lv4/c;->a:Lv4/c;

    return-object v0
.end method
