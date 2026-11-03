.class public final Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;
.super Lorg/matrix/TEESimulator/interception/keystore/AbstractKeystoreInterceptor;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"


# static fields
.field private static final DELETE_KEY_TRANSACTION:I

.field private static final GET_KEY_ENTRY_TRANSACTION:I

.field private static final GET_NUMBER_OF_ENTRIES_TRANSACTION:I

.field private static final GRANT_PUBLIC_API_SDK:I = 0x24

.field private static final GRANT_TRANSACTION:I

.field public static final INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;

.field private static final KEY_PERMISSION_GET_INFO:I = 0x4

.field private static final KEY_PERMISSION_UPDATE:I = 0x80

.field private static final LIST_ENTRIES_BATCHED_TRANSACTION:Ljava/lang/Integer;

.field private static final LIST_ENTRIES_TRANSACTION:I

.field private static final RESPONSE_KEY_NOT_FOUND:I = 0x7

.field private static final RESPONSE_PERMISSION_DENIED:I = 0x6

.field private static final UNGRANT_TRANSACTION:I

.field private static final UPDATE_SUBCOMPONENT_TRANSACTION:I

.field private static final deletedSoftwareKeys:Ljava/util/Set;

.field private static final injectionCommand:Ljava/lang/String;

.field private static final interceptedCodes$delegate:La/a;

.field private static final processName:Ljava/lang/String;

.field private static final serviceName:Ljava/lang/String;

.field private static final stubBinderClass:Ljava/lang/Class;

.field private static final transactionNames$delegate:La/a;

.field private static final userUpdatedKeys:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;

    invoke-direct {v0}, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;-><init>()V

    sput-object v0, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;

    const-class v0, Landroid/system/keystore2/IKeystoreService$Stub;

    sput-object v0, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->stubBinderClass:Ljava/lang/Class;

    sget-object v1, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;

    const-string v2, "getKeyEntry"

    invoke-virtual {v1, v0, v2}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->getTransactCode(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v2

    sput v2, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->GET_KEY_ENTRY_TRANSACTION:I

    const-string v2, "deleteKey"

    invoke-virtual {v1, v0, v2}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->getTransactCode(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v2

    sput v2, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->DELETE_KEY_TRANSACTION:I

    const-string v2, "updateSubcomponent"

    invoke-virtual {v1, v0, v2}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->getTransactCode(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v2

    sput v2, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->UPDATE_SUBCOMPONENT_TRANSACTION:I

    const-string v2, "listEntries"

    invoke-virtual {v1, v0, v2}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->getTransactCode(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v2

    sput v2, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->LIST_ENTRIES_TRANSACTION:I

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x22

    if-lt v2, v3, :cond_3e

    const-string v2, "listEntriesBatched"

    invoke-virtual {v1, v0, v2}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->getTransactCode(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_3f

    :cond_3e
    const/4 v2, 0x0

    :goto_3f
    sput-object v2, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->LIST_ENTRIES_BATCHED_TRANSACTION:Ljava/lang/Integer;

    const-string v2, "getNumberOfEntries"

    invoke-virtual {v1, v0, v2}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->getTransactCode(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v2

    sput v2, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->GET_NUMBER_OF_ENTRIES_TRANSACTION:I

    const-string v2, "grant"

    invoke-virtual {v1, v0, v2}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->getTransactCode(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v2

    sput v2, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->GRANT_TRANSACTION:I

    const-string v2, "ungrant"

    invoke-virtual {v1, v0, v2}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->getTransactCode(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->UNGRANT_TRANSACTION:I

    new-instance v0, Lorg/matrix/TEESimulator/interception/keystore/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/matrix/TEESimulator/interception/keystore/d;-><init>(I)V

    new-instance v1, La/f;

    invoke-direct {v1, v0}, La/f;-><init>(Lh/a;)V

    sput-object v1, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->transactionNames$delegate:La/a;

    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v0

    const-string v1, "newKeySet(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    sput-object v0, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->deletedSoftwareKeys:Ljava/util/Set;

    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v0

    sput-object v0, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->userUpdatedKeys:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    const-string v0, "android.system.keystore2.IKeystoreService/default"

    sput-object v0, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->serviceName:Ljava/lang/String;

    const-string v0, "keystore2"

    sput-object v0, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->processName:Ljava/lang/String;

    const-string v0, "exec ./inject `pidof keystore2` libTEESimulator.so entry"

    sput-object v0, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->injectionCommand:Ljava/lang/String;

    new-instance v0, Lorg/matrix/TEESimulator/interception/keystore/d;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/matrix/TEESimulator/interception/keystore/d;-><init>(I)V

    new-instance v1, La/f;

    invoke-direct {v1, v0}, La/f;-><init>(Lh/a;)V

    sput-object v1, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->interceptedCodes$delegate:La/a;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/matrix/TEESimulator/interception/keystore/AbstractKeystoreInterceptor;-><init>()V

    return-void
.end method

.method public static synthetic d()Ljava/util/Map;
    .registers 1

    invoke-static {}, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->transactionNames_delegate$lambda$0()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic e(Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$GeneratedKeyInfo;Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion$SoftwareGrant;)La/h;
    .registers 2

    invoke-static {p0, p1}, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->handleUpdateSubcomponent$lambda$0(Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$GeneratedKeyInfo;Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion$SoftwareGrant;)La/h;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f()[I
    .registers 1

    invoke-static {}, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->interceptedCodes_delegate$lambda$0()[I

    move-result-object v0

    return-object v0
.end method

.method public static synthetic g(ILorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$GeneratedKeyInfo;)La/h;
    .registers 2

    invoke-static {p0, p1}, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->handleUpdateSubcomponent$lambda$4(ILorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$GeneratedKeyInfo;)La/h;

    move-result-object p0

    return-object p0
.end method

.method private final getTransactionNames()Ljava/util/Map;
    .registers 1

    sget-object p0, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->transactionNames$delegate:La/a;

    check-cast p0, La/f;

    invoke-virtual {p0}, La/f;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method private final handleUpdateSubcomponent(ILandroid/os/Parcel;)Lv4/f;
    .registers 11

    const-string v0, "android.system.keystore2.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v0, Landroid/system/keystore2/KeyDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/system/keystore2/KeyDescriptor;

    sget-object v1, Lv4/c;->a:Lv4/c;

    if-nez v0, :cond_13

    goto/16 :goto_102

    :cond_13
    iget v2, v0, Landroid/system/keystore2/KeyDescriptor;->domain:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a2

    sget-object v2, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->Companion:Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;

    iget-wide v3, v0, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    invoke-virtual {v2, v3, v4, p1}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;->resolveGrant(JI)Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion$SoftwareGrant;

    move-result-object p1

    const/4 v3, 0x7

    if-nez p1, :cond_3a

    invoke-virtual {v2}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;->getSoftwareGrants()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    iget-wide p1, v0, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_102

    sget-object p0, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;

    invoke-virtual {p0, v3}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->createErrorReply(I)Lv4/d;

    move-result-object p0

    return-object p0

    :cond_3a
    invoke-virtual {p1}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion$SoftwareGrant;->getAccessVector()I

    move-result v1

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_4a

    sget-object p0, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->createErrorReply(I)Lv4/d;

    move-result-object p0

    return-object p0

    :cond_4a
    invoke-virtual {v2}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;->getGeneratedKeys()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {p1}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion$SoftwareGrant;->getOwnerKeyId()Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$GeneratedKeyInfo;

    if-eqz v1, :cond_60

    invoke-virtual {v1}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$GeneratedKeyInfo;->getResponse()Landroid/system/keystore2/KeyEntryResponse;

    move-result-object v4

    if-nez v4, :cond_71

    :cond_60
    invoke-virtual {p1}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion$SoftwareGrant;->getOwnerKeyId()Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;->getGeneratedKeyResponse(Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object v4

    if-nez v4, :cond_71

    sget-object p0, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;

    invoke-virtual {p0, v3}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->createErrorReply(I)Lv4/d;

    move-result-object p0

    return-object p0

    :cond_71
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    move-object p2, v1

    move-object v1, v4

    new-instance v4, Lorg/matrix/TEESimulator/interception/keystore/b;

    invoke-direct {v4, p2, p1}, Lorg/matrix/TEESimulator/interception/keystore/b;-><init>(Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$GeneratedKeyInfo;Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion$SoftwareGrant;)V

    iget-wide v5, v0, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    invoke-virtual {p1}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion$SoftwareGrant;->getOwnerKeyId()Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "grant["

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "] -> "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->updateResponseSubcomponent(Landroid/system/keystore2/KeyEntryResponse;[B[BLh/a;Ljava/lang/String;)Lv4/f;

    move-result-object p0

    return-object p0

    :cond_a2
    move-object v7, v0

    move-object v0, p0

    move-object p0, v7

    const/4 v3, 0x0

    const/4 v4, 0x4

    if-eqz v2, :cond_b9

    if-eq v2, v4, :cond_ac

    goto :goto_cf

    :cond_ac
    sget-object v2, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->Companion:Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;

    iget-wide v5, p0, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;->findGeneratedKeyByKeyId(ILjava/lang/Long;)Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$GeneratedKeyInfo;

    move-result-object v3

    goto :goto_cf

    :cond_b9
    iget-object v2, p0, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    if-eqz v2, :cond_cf

    sget-object v3, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->Companion:Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;

    invoke-virtual {v3}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;->getGeneratedKeys()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    new-instance v5, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;

    invoke-direct {v5, p1, v2}, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$GeneratedKeyInfo;

    :cond_cf
    :goto_cf
    if-nez v3, :cond_103

    iget p2, p0, Landroid/system/keystore2/KeyDescriptor;->domain:I

    if-eqz p2, :cond_e4

    if-eq p2, v4, :cond_d8

    goto :goto_f2

    :cond_d8
    sget-object p2, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->Companion:Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;

    iget-wide v2, p0, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;->evictTeeResponseByKeyId(ILjava/lang/Long;)V

    goto :goto_f2

    :cond_e4
    iget-object p2, p0, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    if-eqz p2, :cond_f2

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->Companion:Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;

    new-instance v2, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;

    invoke-direct {v2, p1, p2}, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;->evictTeeResponse(Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;)V

    :cond_f2
    :goto_f2
    iget-object p0, p0, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    if-eqz p0, :cond_102

    new-instance p2, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;

    invoke-direct {p2, p1, p0}, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;-><init>(ILjava/lang/String;)V

    sget-object p0, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->userUpdatedKeys:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    invoke-virtual {p0, p2}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->add(Ljava/lang/Object;)Z

    sget-object p0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    :cond_102
    :goto_102
    return-object v1

    :cond_103
    invoke-virtual {v3}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$GeneratedKeyInfo;->getResponse()Landroid/system/keystore2/KeyEntryResponse;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p0

    new-instance v4, Lorg/matrix/TEESimulator/interception/keystore/c;

    invoke-direct {v4, p1, v3}, Lorg/matrix/TEESimulator/interception/keystore/c;-><init>(ILorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$GeneratedKeyInfo;)V

    invoke-virtual {v3}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$GeneratedKeyInfo;->getNspace()J

    move-result-wide p1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "key["

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->updateResponseSubcomponent(Landroid/system/keystore2/KeyEntryResponse;[B[BLh/a;Ljava/lang/String;)Lv4/f;

    move-result-object p0

    return-object p0
.end method

.method private static final handleUpdateSubcomponent$lambda$0(Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$GeneratedKeyInfo;Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion$SoftwareGrant;)La/h;
    .registers 3

    if-eqz p0, :cond_f

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/GeneratedKeyPersistence;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/shim/GeneratedKeyPersistence;

    invoke-virtual {p1}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion$SoftwareGrant;->getOwnerKeyId()Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;

    move-result-object p1

    invoke-virtual {p1}, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;->getUid()I

    move-result p1

    invoke-virtual {v0, p1, p0}, Lorg/matrix/TEESimulator/interception/keystore/shim/GeneratedKeyPersistence;->rePersistIfNeeded(ILorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$GeneratedKeyInfo;)V

    :cond_f
    sget-object p0, La/h;->a:La/h;

    return-object p0
.end method

.method private static final handleUpdateSubcomponent$lambda$4(ILorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$GeneratedKeyInfo;)La/h;
    .registers 3

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/GeneratedKeyPersistence;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/shim/GeneratedKeyPersistence;

    invoke-virtual {v0, p0, p1}, Lorg/matrix/TEESimulator/interception/keystore/shim/GeneratedKeyPersistence;->rePersistIfNeeded(ILorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$GeneratedKeyInfo;)V

    sget-object p0, La/h;->a:La/h;

    return-object p0
.end method

.method private static final interceptedCodes_delegate$lambda$0()[I
    .registers 9

    sget v0, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->GET_KEY_ENTRY_TRANSACTION:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v0, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->DELETE_KEY_TRANSACTION:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v0, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->UPDATE_SUBCOMPONENT_TRANSACTION:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget v0, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->LIST_ENTRIES_TRANSACTION:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->LIST_ENTRIES_BATCHED_TRANSACTION:Ljava/lang/Integer;

    sget v0, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->GET_NUMBER_OF_ENTRIES_TRANSACTION:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget v0, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->GRANT_TRANSACTION:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget v0, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->UNGRANT_TRANSACTION:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_36
    const/16 v3, 0x8

    if-ge v2, v3, :cond_44

    aget-object v3, v0, v2

    if-eqz v3, :cond_41

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    :cond_44
    invoke-static {v1}, Lb/i;->b1(Ljava/util/Collection;)[I

    move-result-object v0

    return-object v0
.end method

.method private final logServedChain(IJLjava/lang/String;Landroid/system/keystore2/KeyEntryResponse;)V
    .registers 6

    if-eqz p5, :cond_4

    sget-object p0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    :cond_4
    return-void
.end method

.method private final resolveOwnerKeyId(Landroid/system/keystore2/KeyDescriptor;I)Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;
    .registers 10

    iget-object p0, p1, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    if-eqz p0, :cond_f

    new-instance p1, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;

    const-string v0, "alias"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p1, p2, p0}, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;-><init>(ILjava/lang/String;)V

    return-object p1

    :cond_f
    iget p0, p1, Landroid/system/keystore2/KeyDescriptor;->domain:I

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-ne p0, v0, :cond_6c

    sget-object p0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->Companion:Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;

    iget-wide v2, p1, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;->findGeneratedKeyByKeyId(ILjava/lang/Long;)Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$GeneratedKeyInfo;

    move-result-object p1

    if-eqz p1, :cond_6c

    invoke-virtual {p0}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;->getGeneratedKeys()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    const-string v0, "<get-entries>(...)"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_34
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$GeneratedKeyInfo;

    invoke-virtual {v3}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$GeneratedKeyInfo;->getNspace()J

    move-result-wide v3

    invoke-virtual {p1}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$GeneratedKeyInfo;->getNspace()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_34

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;

    invoke-virtual {v2}, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;->getUid()I

    move-result v2

    if-ne v2, p2, :cond_34

    goto :goto_61

    :cond_60
    move-object v0, v1

    :goto_61
    check-cast v0, Ljava/util/Map$Entry;

    if-eqz v0, :cond_6c

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;

    return-object p0

    :cond_6c
    return-object v1
.end method

.method private final setupMaintenanceInterceptor(Landroid/os/IBinder;)V
    .registers 5

    :try_start_0
    const-string p0, "android.security.maintenance"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    if-eqz p0, :cond_23

    sget-object v0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    const-string v0, "Found maintenance binder. Registering interceptor..."

    invoke-static {v0}, Lx4/b;->c(Ljava/lang/String;)V

    sget-object v0, Lv4/g;->Companion:Lv4/a;

    sget-object v1, Lorg/matrix/TEESimulator/interception/keystore/Keystore2MaintenanceInterceptor;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/Keystore2MaintenanceInterceptor;

    invoke-virtual {v1}, Lorg/matrix/TEESimulator/interception/keystore/Keystore2MaintenanceInterceptor;->getInterceptedCodes()[I

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p0, v1, v2}, Lv4/a;->b(Landroid/os/IBinder;Landroid/os/IBinder;Lv4/g;[I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_35

    :cond_23
    sget-object p0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    const-string p0, "Maintenance binder not found; skipping lifecycle parity."

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lx4/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p0, La/h;->a:La/h;
    :try_end_2d
    .catchall {:try_start_0 .. :try_end_2d} :catchall_2e

    goto :goto_35

    :catchall_2e
    move-exception p0

    new-instance p1, La/d;

    invoke-direct {p1, p0}, La/d;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :goto_35
    invoke-static {p0}, La/e;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_42

    sget-object p1, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    const-string p1, "Failed to intercept maintenance binder."

    invoke-static {p1, p0}, Lx4/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_42
    return-void
.end method

.method private final setupSecurityLevelInterceptors(Landroid/system/keystore2/IKeystoreService;Landroid/os/IBinder;)V
    .registers 9

    sget-object p0, La/h;->a:La/h;

    const-string v0, "asBinder(...)"

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_6
    invoke-interface {p1, v2}, Landroid/system/keystore2/IKeystoreService;->getSecurityLevel(I)Landroid/system/keystore2/IKeystoreSecurityLevel;

    move-result-object v3

    if-eqz v3, :cond_34

    sget-object v4, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    const-string v4, "Found TEE SecurityLevel. Registering interceptor..."

    invoke-static {v4}, Lx4/b;->c(Ljava/lang/String;)V

    new-instance v4, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;

    invoke-direct {v4, v3, v2}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;-><init>(Landroid/system/keystore2/IKeystoreSecurityLevel;I)V

    sget-object v2, Lv4/g;->Companion:Lv4/a;

    invoke-interface {v3}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v5, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->Companion:Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;

    invoke-virtual {v5}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;->getINTERCEPTED_CODES()[I

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, v3, v4, v5}, Lv4/a;->b(Landroid/os/IBinder;Landroid/os/IBinder;Lv4/g;[I)Z

    invoke-virtual {v4}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->loadPersistedKeys()V
    :try_end_30
    .catchall {:try_start_6 .. :try_end_30} :catchall_32

    move-object v2, p0

    goto :goto_3c

    :catchall_32
    move-exception v2

    goto :goto_36

    :cond_34
    move-object v2, v1

    goto :goto_3c

    :goto_36
    new-instance v3, La/d;

    invoke-direct {v3, v2}, La/d;-><init>(Ljava/lang/Throwable;)V

    move-object v2, v3

    :goto_3c
    invoke-static {v2}, La/e;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_49

    sget-object v3, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    const-string v3, "Failed to intercept TEE SecurityLevel."

    invoke-static {v3, v2}, Lx4/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_49
    const/4 v2, 0x2

    :try_start_4a
    invoke-interface {p1, v2}, Landroid/system/keystore2/IKeystoreService;->getSecurityLevel(I)Landroid/system/keystore2/IKeystoreSecurityLevel;

    move-result-object p1

    if-eqz p1, :cond_75

    sget-object v1, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    const-string v1, "Found StrongBox SecurityLevel. Registering interceptor..."

    invoke-static {v1}, Lx4/b;->c(Ljava/lang/String;)V

    new-instance v1, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;

    invoke-direct {v1, p1, v2}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;-><init>(Landroid/system/keystore2/IKeystoreSecurityLevel;I)V

    sget-object v2, Lv4/g;->Companion:Lv4/a;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->Companion:Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;

    invoke-virtual {v0}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;->getINTERCEPTED_CODES()[I

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, p1, v1, v0}, Lv4/a;->b(Landroid/os/IBinder;Landroid/os/IBinder;Lv4/g;[I)Z

    invoke-virtual {v1}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->loadPersistedKeys()V
    :try_end_74
    .catchall {:try_start_4a .. :try_end_74} :catchall_77

    goto :goto_7e

    :cond_75
    move-object p0, v1

    goto :goto_7e

    :catchall_77
    move-exception p0

    new-instance p1, La/d;

    invoke-direct {p1, p0}, La/d;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :goto_7e
    invoke-static {p0}, La/e;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_8b

    sget-object p1, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    const-string p1, "Failed to intercept StrongBox SecurityLevel."

    invoke-static {p1, p0}, Lx4/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8b
    return-void
.end method

.method private static final transactionNames_delegate$lambda$0()Ljava/util/Map;
    .registers 9

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->stubBinderClass:Ljava/lang/Class;

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

.method private final updateResponseSubcomponent(Landroid/system/keystore2/KeyEntryResponse;[B[BLh/a;Ljava/lang/String;)Lv4/f;
    .registers 7

    sget-object p0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Updating sub-component with "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lx4/b;->c(Ljava/lang/String;)V

    iget-object p0, p1, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iput-object p2, p0, Landroid/system/keystore2/KeyMetadata;->certificate:[B

    iput-object p3, p0, Landroid/system/keystore2/KeyMetadata;->certificateChain:[B

    invoke-interface {p4}, Lh/a;->a()Ljava/lang/Object;

    const/4 p0, 0x0

    if-eqz p2, :cond_25

    array-length p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_26

    :cond_25
    move-object p1, p0

    :goto_26
    if-eqz p3, :cond_2d

    array-length p0, p3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :cond_2d
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Key updated with sizes: [publicCert, certificateChain] = ["

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "message"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->createSuccessReply(Z)Lv4/d;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final forgetDeletedKey(Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;)V
    .registers 3

    const-string p0, "keyId"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->deletedSoftwareKeys:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_24

    sget-object p0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;->getAlias()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Cleared deletion marker for "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lx4/b;->a(Ljava/lang/String;)V

    :cond_24
    return-void
.end method

.method public getInjectionCommand()Ljava/lang/String;
    .registers 1

    sget-object p0, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->injectionCommand:Ljava/lang/String;

    return-object p0
.end method

.method public getInterceptedCodes()[I
    .registers 1

    sget-object p0, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->interceptedCodes$delegate:La/a;

    check-cast p0, La/f;

    invoke-virtual {p0}, La/f;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0
.end method

.method public getProcessName()Ljava/lang/String;
    .registers 1

    sget-object p0, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->processName:Ljava/lang/String;

    return-object p0
.end method

.method public getServiceName()Ljava/lang/String;
    .registers 1

    sget-object p0, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->serviceName:Ljava/lang/String;

    return-object p0
.end method

.method public onInterceptorReady(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 4

    const-string v0, "service"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "backdoor"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Landroid/system/keystore2/IKeystoreService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/system/keystore2/IKeystoreService;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->setupSecurityLevelInterceptors(Landroid/system/keystore2/IKeystoreService;Landroid/os/IBinder;)V

    invoke-direct {p0, p2}, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->setupMaintenanceInterceptor(Landroid/os/IBinder;)V

    return-void
.end method

.method public onPostTransact(JLandroid/os/IBinder;IIIILandroid/os/Parcel;Landroid/os/Parcel;I)Lv4/f;
    .registers 45

    move-object/from16 v0, p3

    move/from16 v9, p4

    move-object/from16 v1, p8

    move-object/from16 v10, p9

    const-string v11, "second"

    const-string v2, "target"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "data"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lorg/matrix/TEESimulator/interception/keystore/AbstractKeystoreInterceptor;->getKeystoreService()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    sget-object v12, Lv4/e;->a:Lv4/e;

    if-eqz v0, :cond_22

    if-nez v10, :cond_26

    :cond_22
    :goto_22
    move-object/from16 p3, v12

    goto/16 :goto_50f

    :cond_26
    sget-object v13, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;

    invoke-virtual {v13, v10}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->hasException(Landroid/os/Parcel;)Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-virtual {v13, v10}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->normalizeServiceSpecificReply(Landroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    if-eqz v0, :cond_22

    new-instance v1, Lv4/d;

    invoke-direct {v1, v0}, Lv4/d;-><init>(Landroid/os/Parcel;)V

    return-object v1

    :cond_3a
    sget v0, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->GET_NUMBER_OF_ENTRIES_TRANSACTION:I

    const-string v2, "post-"

    const/4 v14, 0x0

    const-string v15, "[TX_ID: "

    if-ne v9, v0, :cond_e5

    invoke-direct/range {p0 .. p0}, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->getTransactionNames()Ljava/util/Map;

    move-result-object v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-static/range {v0 .. v8}, Lv4/g;->logTransaction$default(Lv4/g;JLjava/lang/String;IIZILjava/lang/Object;)V

    move v0, v4

    move-wide v3, v1

    :try_start_6f
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    sget-object v2, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->Companion:Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;

    invoke-virtual {v2}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;->getGeneratedKeys()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    const-string v5, "<get-keys>(...)"

    invoke-static {v5, v2}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_89

    goto :goto_ae

    :cond_89
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8d
    :goto_8d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_ae

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;

    invoke-virtual {v5}, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;->getUid()I

    move-result v5

    if-ne v5, v0, :cond_8d

    add-int/lit8 v14, v14, 0x1

    if-ltz v14, :cond_a4

    goto :goto_8d

    :cond_a4
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Count overflow has happened."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_ac
    move-exception v0

    goto :goto_bf

    :cond_ae
    :goto_ae
    add-int/2addr v1, v14

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    new-instance v1, Lv4/d;

    invoke-direct {v1, v0}, Lv4/d;-><init>(Landroid/os/Parcel;)V
    :try_end_be
    .catchall {:try_start_6f .. :try_end_be} :catchall_ac

    goto :goto_c4

    :goto_bf
    new-instance v1, La/d;

    invoke-direct {v1, v0}, La/d;-><init>(Ljava/lang/Throwable;)V

    :goto_c4
    invoke-static {v1}, La/e;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_cc

    move-object v12, v1

    goto :goto_e2

    :cond_cc
    sget-object v1, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "] Failed to modify getNumberOfEntries."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lx4/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_e2
    check-cast v12, Lv4/f;

    return-object v12

    :cond_e5
    move-wide/from16 v3, p1

    move/from16 v0, p6

    sget v5, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->LIST_ENTRIES_TRANSACTION:I

    const-string v6, "."

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-eq v9, v5, :cond_fc

    sget-object v5, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->LIST_ENTRIES_BATCHED_TRANSACTION:Ljava/lang/Integer;

    if-nez v5, :cond_f6

    goto :goto_101

    :cond_f6
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v9, v5, :cond_101

    :cond_fc
    move-object v9, v6

    move v11, v7

    move-object v5, v8

    goto/16 :goto_492

    :cond_101
    :goto_101
    sget v5, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->GET_KEY_ENTRY_TRANSACTION:I

    if-ne v9, v5, :cond_22

    const-string v5, "android.system.keystore2.IKeystoreService"

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v5, Landroid/system/keystore2/KeyDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/system/keystore2/KeyDescriptor;

    if-nez v13, :cond_117

    goto/16 :goto_22

    :cond_117
    invoke-direct/range {p0 .. p0}, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->getTransactionNames()Ljava/util/Map;

    move-result-object v1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    iget-object v5, v13, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move v2, v7

    const/16 v7, 0x10

    move-object v5, v8

    const/4 v8, 0x0

    move-object v9, v6

    const/4 v6, 0x0

    move-wide/from16 v32, v3

    move-object v3, v1

    move-wide/from16 v1, v32

    move/from16 v5, p7

    move v4, v0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v8}, Lv4/g;->logTransaction$default(Lv4/g;JLjava/lang/String;IIZILjava/lang/Object;)V

    move v0, v4

    move-wide v3, v1

    invoke-static {v0}, Lu4/g;->d(I)Lu4/d;

    move-result-object v1

    sget-object v2, Lu4/d;->d:Lu4/d;

    if-eq v1, v2, :cond_160

    sget-object v2, Lu4/d;->c:Lu4/d;

    if-ne v1, v2, :cond_15f

    goto :goto_160

    :cond_15f
    return-object v12

    :cond_160
    :goto_160
    :try_start_160
    sget-object v1, Landroid/system/keystore2/KeyEntryResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    check-cast v1, Landroid/system/keystore2/KeyEntryResponse;

    new-instance v2, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;

    iget-object v5, v13, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    const-string v6, "alias"

    invoke-static {v6, v5}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v2, v0, v5}, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;-><init>(ILjava/lang/String;)V

    sget-object v5, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->userUpdatedKeys:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    invoke-virtual {v5, v2}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19f

    sget-object v0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "] Skipping cert patch for user-updated key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lx4/b;->a(Ljava/lang/String;)V

    return-object v12

    :catchall_19c
    move-exception v0

    goto/16 :goto_470

    :cond_19f
    iget-object v5, v1, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v5, v5, Landroid/system/keystore2/KeyMetadata;->authorizations:[Landroid/system/keystore2/Authorization;

    if-eqz v5, :cond_1c3

    new-instance v6, Ljava/util/ArrayList;

    array-length v7, v5

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    array-length v7, v5

    move v8, v14

    :goto_1ad
    if-ge v8, v7, :cond_1b9

    aget-object v10, v5, v8

    iget-object v10, v10, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1ad

    :cond_1b9
    new-array v5, v14, [Landroid/hardware/security/keymint/KeyParameter;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/hardware/security/keymint/KeyParameter;

    if-nez v5, :cond_1c5

    :cond_1c3
    new-array v5, v14, [Landroid/hardware/security/keymint/KeyParameter;

    :cond_1c5
    new-instance v6, Lt4/l;

    invoke-direct {v6, v5}, Lt4/l;-><init>([Landroid/hardware/security/keymint/KeyParameter;)V

    sget-object v5, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v5, v6, Lt4/l;->e:Ljava/lang/Integer;

    const/4 v7, 0x1

    if-nez v5, :cond_1d3

    const/4 v10, 0x2

    goto :goto_1da

    :cond_1d3
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v10, 0x2

    if-eq v8, v10, :cond_1e7

    :goto_1da
    if-nez v5, :cond_1dd

    goto :goto_1e5

    :cond_1dd
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5
    :try_end_1e1
    .catchall {:try_start_160 .. :try_end_1e1} :catchall_19c

    const/4 v8, 0x4

    if-ne v5, v8, :cond_1e5

    goto :goto_1e7

    :cond_1e5
    :goto_1e5
    move v5, v14

    goto :goto_1e8

    :cond_1e7
    :goto_1e7
    move v5, v7

    :goto_1e8
    const-string v8, "metadata"

    if-eqz v5, :cond_255

    :try_start_1ec
    sget-object v5, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->Companion:Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;

    invoke-virtual {v5, v2}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;->getPatchedChain(Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;)[Ljava/security/cert/Certificate;

    move-result-object v5

    if-nez v5, :cond_20c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "] Skip patching for imported key (no prior attestation)."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lx4/b;->c(Ljava/lang/String;)V

    return-object v12

    :cond_20c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "] Imported key overwrote attested alias, serving retained chain for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lx4/b;->c(Ljava/lang/String;)V

    sget-object v2, Ly4/c;->a:La/f;

    iget-object v2, v1, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    invoke-static {v8, v2}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v2, v5}, Ly4/c;->f(Landroid/system/keystore2/KeyMetadata;[Ljava/security/cert/Certificate;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lq4/k;->U0(Ljava/lang/Object;)V

    iget-object v2, v1, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    sget-object v5, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;

    iget-object v6, v2, Landroid/system/keystore2/KeyMetadata;->authorizations:[Landroid/system/keystore2/Authorization;

    invoke-virtual {v5, v6, v0}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->patchAuthorizations([Landroid/system/keystore2/Authorization;I)[Landroid/system/keystore2/Authorization;

    move-result-object v0

    iput-object v0, v2, Landroid/system/keystore2/KeyMetadata;->authorizations:[Landroid/system/keystore2/Authorization;

    const/4 v0, 0x6

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 p8, v0

    move-object/from16 p5, v1

    move-object/from16 p9, v2

    move-object/from16 p4, v5

    move/from16 p6, v6

    move-object/from16 p7, v7

    invoke-static/range {p4 .. p9}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->createTypedObjectReply$default(Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;Landroid/os/Parcelable;ILorg/matrix/TEESimulator/interception/keystore/InterceptorUtils$ReplyDiagnostic;ILjava/lang/Object;)Lv4/d;

    move-result-object v0

    return-object v0

    :cond_255
    sget-object v5, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->Companion:Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;

    invoke-virtual {v5}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;->getImportedKeys()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_27c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "] Skipping attest-key override for imported key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lx4/b;->a(Ljava/lang/String;)V

    return-object v12

    :cond_27c
    iget-object v13, v6, Lt4/l;->h:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v10

    if-ne v10, v7, :cond_290

    const/4 v10, 0x7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v13, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_290

    goto :goto_291

    :cond_290
    move v7, v14

    :goto_291
    if-eqz v7, :cond_3b3

    invoke-virtual {v2}, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;->getAlias()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, "] Found hardware attest key "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " in the reply."

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    invoke-static {v7, v9}, Lx4/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v2}, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;->getAlias()Ljava/lang/String;

    move-result-object v7

    iget-object v10, v1, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget v10, v10, Landroid/system/keystore2/KeyMetadata;->keySecurityLevel:I

    invoke-static {v0, v7, v9, v6, v10}, Ls2/b;->w(ILjava/lang/String;Ljava/lang/String;Lt4/l;I)Landroid/util/Pair;

    move-result-object v7

    if-eqz v7, :cond_3ab

    sget-object v9, Ly4/c;->a:La/f;

    iget-object v9, v1, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v8, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v11, v8}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v8, Ljava/util/Collection;

    new-array v10, v14, [Ljava/security/cert/Certificate;

    invoke-interface {v8, v10}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/security/cert/Certificate;

    invoke-static {v9, v8}, Ly4/c;->f(Landroid/system/keystore2/KeyMetadata;[Ljava/security/cert/Certificate;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lq4/k;->U0(Ljava/lang/Object;)V

    iget-object v8, v1, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    sget-object v9, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;

    iget-object v10, v8, Landroid/system/keystore2/KeyMetadata;->authorizations:[Landroid/system/keystore2/Authorization;

    invoke-virtual {v9, v10, v0}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->patchAuthorizations([Landroid/system/keystore2/Authorization;I)[Landroid/system/keystore2/Authorization;

    move-result-object v0

    iput-object v0, v8, Landroid/system/keystore2/KeyMetadata;->authorizations:[Landroid/system/keystore2/Authorization;

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v8

    iget-object v0, v1, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v0, v0, Landroid/system/keystore2/KeyMetadata;->key:Landroid/system/keystore2/KeyDescriptor;

    if-eqz v0, :cond_2ff

    iput-wide v8, v0, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    :cond_2ff
    invoke-virtual {v5}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;->getGeneratedKeys()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    new-instance v10, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$GeneratedKeyInfo;

    iget-object v13, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Ljava/security/KeyPair;

    const/16 v16, 0x0

    move-object/from16 p9, v1

    move-object/from16 p10, v6

    move-wide/from16 p7, v8

    move-object/from16 p4, v10

    move-object/from16 p5, v13

    move-object/from16 p6, v16

    invoke-direct/range {p4 .. p10}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$GeneratedKeyInfo;-><init>(Ljava/security/KeyPair;Ljavax/crypto/SecretKey;JLandroid/system/keystore2/KeyEntryResponse;Lt4/l;)V

    move-object/from16 v8, p4

    move-wide/from16 v21, p7

    invoke-interface {v0, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;->getAttestationKeys()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;
    :try_end_32a
    .catchall {:try_start_1ec .. :try_end_32a} :catchall_19c

    if-eqz v0, :cond_358

    :try_start_32c
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    const-string v8, "obtain(...)"

    invoke-static {v8, v5}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_335
    .catchall {:try_start_32c .. :try_end_335} :catchall_341

    :try_start_335
    invoke-virtual {v0, v5, v14}, Landroid/system/keystore2/KeyMetadata;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v5}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0
    :try_end_33c
    .catchall {:try_start_335 .. :try_end_33c} :catchall_343

    :try_start_33c
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    move-object v8, v0

    goto :goto_34e

    :catchall_341
    move-exception v0

    goto :goto_348

    :catchall_343
    move-exception v0

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    throw v0
    :try_end_348
    .catchall {:try_start_33c .. :try_end_348} :catchall_341

    :goto_348
    :try_start_348
    new-instance v5, La/d;

    invoke-direct {v5, v0}, La/d;-><init>(Ljava/lang/Throwable;)V

    move-object v8, v5

    :goto_34e
    instance-of v0, v8, La/d;

    if-eqz v0, :cond_353

    const/4 v8, 0x0

    :cond_353
    check-cast v8, [B

    move-object/from16 v31, v8

    goto :goto_35a

    :cond_358
    const/16 v31, 0x0

    :goto_35a
    sget-object v17, Lorg/matrix/TEESimulator/interception/keystore/shim/GeneratedKeyPersistence;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/shim/GeneratedKeyPersistence;

    iget-object v0, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Ljava/security/KeyPair;

    iget-object v0, v1, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget v0, v0, Landroid/system/keystore2/KeyMetadata;->keySecurityLevel:I

    iget-object v5, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v11, v5}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v24, v5

    check-cast v24, Ljava/util/List;

    iget v5, v6, Lt4/l;->b:I

    iget v7, v6, Lt4/l;->a:I

    iget-object v8, v6, Lt4/l;->c:Ljava/lang/Integer;

    if-eqz v8, :cond_37b

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v14

    :cond_37b
    move/from16 v27, v14

    iget-object v8, v6, Lt4/l;->h:Ljava/util/List;

    iget-object v6, v6, Lt4/l;->i:Ljava/util/List;

    const/16 v30, 0x1

    const/16 v20, 0x0

    move/from16 v23, v0

    move-object/from16 v18, v2

    move/from16 v25, v5

    move-object/from16 v29, v6

    move/from16 v26, v7

    move-object/from16 v28, v8

    invoke-virtual/range {v17 .. v31}, Lorg/matrix/TEESimulator/interception/keystore/shim/GeneratedKeyPersistence;->save(Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;Ljava/security/KeyPair;Ljavax/crypto/SecretKey;JILjava/util/List;IIILjava/util/List;Ljava/util/List;Z[B)V

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;

    const/4 v2, 0x6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 p4, v0

    move-object/from16 p5, v1

    move/from16 p8, v2

    move-object/from16 p9, v5

    move/from16 p6, v6

    move-object/from16 p7, v7

    invoke-static/range {p4 .. p9}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->createTypedObjectReply$default(Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;Landroid/os/Parcelable;ILorg/matrix/TEESimulator/interception/keystore/InterceptorUtils$ReplyDiagnostic;ILjava/lang/Object;)Lv4/d;

    move-result-object v0

    return-object v0

    :cond_3ab
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Failed to create overriding attest key pair."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3b3
    sget-object v6, Ly4/c;->a:La/f;

    iget-object v6, v1, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    invoke-static {v6}, Ly4/c;->b(Landroid/system/keystore2/KeyMetadata;)[Ljava/security/cert/Certificate;

    move-result-object v6

    if-eqz v6, :cond_3c1

    array-length v7, v6

    const/4 v10, 0x2

    if-ge v7, v10, :cond_3c4

    :cond_3c1
    const/4 v7, 0x0

    goto/16 :goto_449

    :cond_3c4
    invoke-virtual {v5, v2}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;->getPatchedChain(Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;)[Ljava/security/cert/Certificate;

    move-result-object v7

    if-eqz v7, :cond_3e8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "] Using cached patched certificate chain for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lx4/b;->a(Ljava/lang/String;)V

    goto :goto_413

    :cond_3e8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, "] No cached chain for "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ". Performing live patch as a fallback."

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lx4/b;->c(Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-static {v6, v0, v7, v7}, Lt4/f;->d([Ljava/security/cert/Certificate;ILjava/util/Date;Ljava/util/Date;)[Ljava/security/cert/Certificate;

    move-result-object v7

    invoke-virtual {v5}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;->getPatchedChains()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    invoke-interface {v5, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_413
    iget-object v2, v1, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    invoke-static {v8, v2}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v2, v7}, Ly4/c;->f(Landroid/system/keystore2/KeyMetadata;[Ljava/security/cert/Certificate;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lq4/k;->U0(Ljava/lang/Object;)V

    iget-object v2, v1, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    sget-object v5, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;

    iget-object v6, v2, Landroid/system/keystore2/KeyMetadata;->authorizations:[Landroid/system/keystore2/Authorization;

    invoke-virtual {v5, v6, v0}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->patchAuthorizations([Landroid/system/keystore2/Authorization;I)[Landroid/system/keystore2/Authorization;

    move-result-object v0

    iput-object v0, v2, Landroid/system/keystore2/KeyMetadata;->authorizations:[Landroid/system/keystore2/Authorization;

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v2, "asList(...)"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x6

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 p8, v0

    move-object/from16 p5, v1

    move-object/from16 p9, v2

    move-object/from16 p4, v5

    move/from16 p6, v6

    move-object/from16 p7, v7

    invoke-static/range {p4 .. p9}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->createTypedObjectReply$default(Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;Landroid/os/Parcelable;ILorg/matrix/TEESimulator/interception/keystore/InterceptorUtils$ReplyDiagnostic;ILjava/lang/Object;)Lv4/d;

    move-result-object v0

    return-object v0

    :goto_449
    if-eqz v6, :cond_451

    array-length v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_452

    :cond_451
    move-object v8, v7

    :goto_452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "] Skip patching short certificate chain of length "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lx4/b;->c(Ljava/lang/String;)V
    :try_end_46f
    .catchall {:try_start_348 .. :try_end_46f} :catchall_19c

    return-object v12

    :goto_470
    new-instance v1, La/d;

    invoke-direct {v1, v0}, La/d;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, La/e;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_22

    sget-object v1, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "] Failed to modify hardware KeyEntryResponse."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lx4/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v12

    :goto_492
    invoke-direct/range {p0 .. p0}, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->getTransactionNames()Ljava/util/Map;

    move-result-object v1

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-wide/from16 v32, v3

    move-object v3, v1

    move-wide/from16 v1, v32

    move v4, v0

    move-object/from16 p3, v12

    move-object/from16 v0, p0

    move-object v12, v5

    move/from16 v5, p7

    invoke-static/range {v0 .. v8}, Lv4/g;->logTransaction$default(Lv4/g;JLjava/lang/String;IIZILjava/lang/Object;)V

    :try_start_4c1
    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/ListEntriesHandler;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/ListEntriesHandler;

    invoke-virtual {v0, v1, v2, v4, v10}, Lorg/matrix/TEESimulator/interception/keystore/ListEntriesHandler;->injectGeneratedKeys(JILandroid/os/Parcel;)[Landroid/system/keystore2/KeyDescriptor;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    invoke-static {v13, v0, v14, v11, v12}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->createTypedArrayReply$default(Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;[Landroid/os/Parcelable;IILjava/lang/Object;)Lv4/d;

    move-result-object v0
    :try_end_4cd
    .catchall {:try_start_4c1 .. :try_end_4cd} :catchall_4ce

    goto :goto_4d5

    :catchall_4ce
    move-exception v0

    new-instance v3, La/d;

    invoke-direct {v3, v0}, La/d;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v3

    :goto_4d5
    invoke-static {v0}, La/e;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    if-nez v3, :cond_4dd

    move-object v12, v0

    goto :goto_50c

    :cond_4dd
    sget-object v0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;

    invoke-direct {v0}, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->getTransactionNames()Ljava/util/Map;

    move-result-object v0

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "] Failed to update the result of "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lx4/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v12, p3

    :goto_50c
    check-cast v12, Lv4/f;

    return-object v12

    :goto_50f
    return-object p3
.end method

.method public onPreTransact(JLandroid/os/IBinder;IIIILandroid/os/Parcel;)Lv4/f;
    .registers 32

    move/from16 v9, p4

    move-object/from16 v10, p8

    const-string v0, "target"

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "data"

    invoke-static {v0, v10}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget v0, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->GET_NUMBER_OF_ENTRIES_TRANSACTION:I

    sget-object v11, Lv4/b;->a:Lv4/b;

    sget-object v12, Lv4/c;->a:Lv4/c;

    if-ne v9, v0, :cond_3e

    invoke-direct/range {p0 .. p0}, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->getTransactionNames()Ljava/util/Map;

    move-result-object v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-virtual/range {v0 .. v6}, Lv4/g;->logTransaction(JLjava/lang/String;IIZ)V

    invoke-static/range {p6 .. p6}, Lu4/g;->j(I)Z

    move-result v0

    if-eqz v0, :cond_3d7

    goto/16 :goto_4e1

    :cond_3e
    sget v0, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->LIST_ENTRIES_TRANSACTION:I

    const/4 v13, 0x1

    const/4 v14, 0x0

    const-string v15, "[TX_ID: "

    if-eq v9, v0, :cond_51

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->LIST_ENTRIES_BATCHED_TRANSACTION:Ljava/lang/Integer;

    if-nez v0, :cond_4b

    goto :goto_54

    :cond_4b
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v9, v0, :cond_54

    :cond_51
    move v8, v13

    goto/16 :goto_456

    :cond_54
    :goto_54
    sget v0, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->GET_KEY_ENTRY_TRANSACTION:I

    const/4 v1, 0x6

    const-string v2, "android.system.keystore2.IKeystoreService"

    const/4 v3, 0x0

    if-eq v9, v0, :cond_64

    sget v4, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->DELETE_KEY_TRANSACTION:I

    if-eq v9, v4, :cond_64

    sget v4, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->UPDATE_SUBCOMPONENT_TRANSACTION:I

    if-ne v9, v4, :cond_68

    :cond_64
    move-object/from16 v16, v3

    goto/16 :goto_177

    :cond_68
    sget v0, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->GRANT_TRANSACTION:I

    const/16 v11, 0x24

    if-ne v9, v0, :cond_f1

    invoke-direct/range {p0 .. p0}, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->getTransactionNames()Ljava/util/Map;

    move-result-object v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_80

    const-string v0, "grant"

    :cond_80
    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v6, 0x0

    move/from16 v4, p6

    move/from16 v5, p7

    move v9, v1

    move-object v14, v2

    move-object v15, v3

    move-wide/from16 v1, p1

    move-object v3, v0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v8}, Lv4/g;->logTransaction$default(Lv4/g;JLjava/lang/String;IIZILjava/lang/Object;)V

    invoke-virtual {v10, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v1, Landroid/system/keystore2/KeyDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/system/keystore2/KeyDescriptor;

    if-nez v1, :cond_a2

    goto/16 :goto_4e1

    :cond_a2
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-direct {v0, v1, v4}, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->resolveOwnerKeyId(Landroid/system/keystore2/KeyDescriptor;I)Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;

    move-result-object v0

    if-eqz v0, :cond_4e1

    sget-object v1, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->Companion:Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;

    invoke-virtual {v1, v0}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;->ownsKeyResponse(Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;)Z

    move-result v4

    if-eqz v4, :cond_b9

    goto :goto_ba

    :cond_b9
    move-object v0, v15

    :goto_ba
    if-nez v0, :cond_be

    goto/16 :goto_4e1

    :cond_be
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v4, v11, :cond_c9

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;

    invoke-virtual {v0, v9}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->createErrorReply(I)Lv4/d;

    move-result-object v0

    return-object v0

    :cond_c9
    invoke-virtual {v1, v0, v2, v3}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;->issueGrant(Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;II)J

    move-result-wide v0

    new-instance v2, Landroid/system/keystore2/KeyDescriptor;

    invoke-direct {v2}, Landroid/system/keystore2/KeyDescriptor;-><init>()V

    iput v13, v2, Landroid/system/keystore2/KeyDescriptor;->domain:I

    iput-wide v0, v2, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    iput-object v15, v2, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    iput-object v15, v2, Landroid/system/keystore2/KeyDescriptor;->blob:[B

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;

    const/4 v1, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 p0, v0

    move/from16 p4, v1

    move-object/from16 p1, v2

    move-object/from16 p5, v3

    move/from16 p2, v4

    move-object/from16 p3, v5

    invoke-static/range {p0 .. p5}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->createTypedObjectReply$default(Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;Landroid/os/Parcelable;ILorg/matrix/TEESimulator/interception/keystore/InterceptorUtils$ReplyDiagnostic;ILjava/lang/Object;)Lv4/d;

    move-result-object v0

    return-object v0

    :cond_f1
    move-object/from16 v0, p0

    move/from16 v4, p6

    move v13, v1

    move-object v1, v2

    move-object v15, v3

    sget v2, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->UNGRANT_TRANSACTION:I

    if-ne v9, v2, :cond_157

    invoke-direct {v0}, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->getTransactionNames()Ljava/util/Map;

    move-result-object v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_10e

    const-string v2, "ungrant"

    :cond_10e
    move-object v3, v2

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v6, 0x0

    move/from16 v5, p7

    move-object v9, v1

    move-wide/from16 v1, p1

    invoke-static/range {v0 .. v8}, Lv4/g;->logTransaction$default(Lv4/g;JLjava/lang/String;IIZILjava/lang/Object;)V

    invoke-virtual {v10, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v1, Landroid/system/keystore2/KeyDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/system/keystore2/KeyDescriptor;

    if-nez v1, :cond_12a

    goto/16 :goto_4e1

    :cond_12a
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-direct {v0, v1, v4}, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->resolveOwnerKeyId(Landroid/system/keystore2/KeyDescriptor;I)Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;

    move-result-object v3

    if-eqz v3, :cond_4e1

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->Companion:Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;

    invoke-virtual {v0, v3}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;->ownsKeyResponse(Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;)Z

    move-result v1

    if-eqz v1, :cond_13d

    goto :goto_13e

    :cond_13d
    move-object v3, v15

    :goto_13e
    if-nez v3, :cond_142

    goto/16 :goto_4e1

    :cond_142
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v11, :cond_14d

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;

    invoke-virtual {v0, v13}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->createErrorReply(I)Lv4/d;

    move-result-object v0

    return-object v0

    :cond_14d
    invoke-virtual {v0, v3, v2}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;->revokeGrant(Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;I)V

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;

    invoke-virtual {v0, v14}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->createSuccessReply(Z)Lv4/d;

    move-result-object v0

    return-object v0

    :cond_157
    invoke-direct {v0}, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->getTransactionNames()Ljava/util/Map;

    move-result-object v1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_16d

    const-string v1, "unknown code="

    invoke-static {v9, v1}, Lb/b;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_16d
    move-object v3, v1

    const/4 v6, 0x1

    move-wide/from16 v1, p1

    move/from16 v5, p7

    invoke-virtual/range {v0 .. v6}, Lv4/g;->logTransaction(JLjava/lang/String;IIZ)V

    return-object v12

    :goto_177
    invoke-direct/range {p0 .. p0}, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->getTransactionNames()Ljava/util/Map;

    move-result-object v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    check-cast v3, Ljava/lang/String;

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v6, 0x0

    move/from16 v4, p6

    move/from16 v5, p7

    move v14, v0

    move-object v13, v2

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-static/range {v0 .. v8}, Lv4/g;->logTransaction$default(Lv4/g;JLjava/lang/String;IIZILjava/lang/Object;)V

    sget v3, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->UPDATE_SUBCOMPONENT_TRANSACTION:I

    if-ne v9, v3, :cond_1aa

    invoke-static {v4}, Lu4/g;->j(I)Z

    move-result v1

    if-eqz v1, :cond_1a5

    goto/16 :goto_4e1

    :cond_1a5
    invoke-direct {v0, v4, v10}, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->handleUpdateSubcomponent(ILandroid/os/Parcel;)Lv4/f;

    move-result-object v0

    return-object v0

    :cond_1aa
    invoke-virtual {v10, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v3, Landroid/system/keystore2/KeyDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/system/keystore2/KeyDescriptor;

    if-nez v3, :cond_1b9

    goto/16 :goto_4e1

    :cond_1b9
    const/4 v5, 0x4

    const/4 v6, 0x7

    if-ne v9, v14, :cond_21a

    iget v7, v3, Landroid/system/keystore2/KeyDescriptor;->domain:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_21a

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->Companion:Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;

    iget-wide v1, v3, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    invoke-virtual {v0, v1, v2, v4}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;->resolveGrant(JI)Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion$SoftwareGrant;

    move-result-object v1

    if-nez v1, :cond_1e3

    invoke-virtual {v0}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;->getSoftwareGrants()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-wide v1, v3, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e1

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;

    invoke-virtual {v0, v6}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->createErrorReply(I)Lv4/d;

    move-result-object v0

    return-object v0

    :cond_1e3
    invoke-virtual {v1}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion$SoftwareGrant;->getAccessVector()I

    move-result v2

    and-int/2addr v2, v5

    if-nez v2, :cond_1f2

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;

    const/4 v9, 0x6

    invoke-virtual {v0, v9}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->createErrorReply(I)Lv4/d;

    move-result-object v0

    return-object v0

    :cond_1f2
    invoke-virtual {v1}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion$SoftwareGrant;->getOwnerKeyId()Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;->getGeneratedKeyResponse(Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object v0

    if-nez v0, :cond_203

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;

    invoke-virtual {v0, v6}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->createErrorReply(I)Lv4/d;

    move-result-object v0

    return-object v0

    :cond_203
    sget-object v1, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 p1, v0

    move-object/from16 p0, v1

    move/from16 p4, v2

    move-object/from16 p5, v3

    move/from16 p2, v4

    move-object/from16 p3, v5

    invoke-static/range {p0 .. p5}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->createTypedObjectReply$default(Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;Landroid/os/Parcelable;ILorg/matrix/TEESimulator/interception/keystore/InterceptorUtils$ReplyDiagnostic;ILjava/lang/Object;)Lv4/d;

    move-result-object v0

    return-object v0

    :cond_21a
    if-eq v9, v14, :cond_224

    invoke-static {v4}, Lu4/g;->j(I)Z

    move-result v7

    if-eqz v7, :cond_224

    goto/16 :goto_4e1

    :cond_224
    sget v7, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->DELETE_KEY_TRANSACTION:I

    if-ne v9, v7, :cond_2d2

    iget-object v0, v3, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    if-eqz v0, :cond_232

    new-instance v3, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;

    invoke-direct {v3, v4, v0}, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;-><init>(ILjava/lang/String;)V

    goto :goto_292

    :cond_232
    iget v0, v3, Landroid/system/keystore2/KeyDescriptor;->domain:I

    if-ne v0, v5, :cond_290

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->Companion:Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;

    iget-wide v5, v3, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;->findGeneratedKeyByKeyId(ILjava/lang/Long;)Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$GeneratedKeyInfo;

    move-result-object v3

    if-eqz v3, :cond_290

    invoke-virtual {v0}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;->getGeneratedKeys()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    const-string v5, "<get-entries>(...)"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_255
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_282

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$GeneratedKeyInfo;

    invoke-virtual {v7}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$GeneratedKeyInfo;->getNspace()J

    move-result-wide v7

    invoke-virtual {v3}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$GeneratedKeyInfo;->getNspace()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-nez v7, :cond_255

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;

    invoke-virtual {v6}, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;->getUid()I

    move-result v6

    if-ne v6, v4, :cond_255

    move-object v3, v5

    goto :goto_284

    :cond_282
    move-object/from16 v3, v16

    :goto_284
    check-cast v3, Ljava/util/Map$Entry;

    if-eqz v3, :cond_290

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;

    goto :goto_292

    :cond_290
    move-object/from16 v3, v16

    :goto_292
    if-eqz v3, :cond_4e1

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->Companion:Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;

    invoke-virtual {v0}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;->getGeneratedKeys()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v0, v3}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;->cleanupKeyData(Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;)V

    if-eqz v4, :cond_4e1

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->deletedSoftwareKeys:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;->getAlias()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "] Deleted cached keypair "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", replying with empty response."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lx4/b;->c(Ljava/lang/String;)V

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->createSuccessReply(Z)Lv4/d;

    move-result-object v0

    return-object v0

    :cond_2d2
    iget-object v7, v3, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    if-nez v7, :cond_398

    iget v6, v3, Landroid/system/keystore2/KeyDescriptor;->domain:I

    if-ne v6, v5, :cond_4e1

    sget-object v5, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->Companion:Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;

    iget-wide v6, v3, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;->findGeneratedKeyByKeyId(ILjava/lang/Long;)Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$GeneratedKeyInfo;

    move-result-object v6

    if-eqz v6, :cond_2ed

    invoke-virtual {v6}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$GeneratedKeyInfo;->getResponse()Landroid/system/keystore2/KeyEntryResponse;

    move-result-object v7

    goto :goto_2ef

    :cond_2ed
    move-object/from16 v7, v16

    :goto_2ef
    const-string v8, "keyid:"

    if-eqz v7, :cond_344

    sget-object v5, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    iget-wide v9, v3, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "] Found generated response via KEY_ID nspace="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lx4/b;->c(Ljava/lang/String;)V

    iget-wide v9, v3, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$GeneratedKeyInfo;->getResponse()Landroid/system/keystore2/KeyEntryResponse;

    move-result-object v5

    move/from16 v22, v4

    move-object v4, v3

    move-wide v2, v1

    move/from16 v1, v22

    invoke-direct/range {v0 .. v5}, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->logServedChain(IJLjava/lang/String;Landroid/system/keystore2/KeyEntryResponse;)V

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;

    invoke-virtual {v6}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$GeneratedKeyInfo;->getResponse()Landroid/system/keystore2/KeyEntryResponse;

    move-result-object v1

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 p0, v0

    move-object/from16 p1, v1

    move/from16 p4, v2

    move-object/from16 p5, v3

    move/from16 p2, v4

    move-object/from16 p3, v5

    invoke-static/range {p0 .. p5}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->createTypedObjectReply$default(Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;Landroid/os/Parcelable;ILorg/matrix/TEESimulator/interception/keystore/InterceptorUtils$ReplyDiagnostic;ILjava/lang/Object;)Lv4/d;

    move-result-object v0

    return-object v0

    :cond_344
    iget-wide v6, v3, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v5, v4, v0}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;->findTeeResponseByKeyId(ILjava/lang/Long;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object v5

    if-eqz v5, :cond_4e1

    sget-object v0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    iget-wide v6, v3, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, "] Found TEE response via KEY_ID nspace="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lx4/b;->c(Ljava/lang/String;)V

    iget-wide v6, v3, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-wide v2, v1

    move v1, v4

    move-object v4, v0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->logServedChain(IJLjava/lang/String;Landroid/system/keystore2/KeyEntryResponse;)V

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 p0, v0

    move/from16 p4, v1

    move-object/from16 p5, v2

    move/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p1, v5

    invoke-static/range {p0 .. p5}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->createTypedObjectReply$default(Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;Landroid/os/Parcelable;ILorg/matrix/TEESimulator/interception/keystore/InterceptorUtils$ReplyDiagnostic;ILjava/lang/Object;)Lv4/d;

    move-result-object v0

    return-object v0

    :cond_398
    new-instance v0, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;

    invoke-direct {v0, v4, v7}, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;-><init>(ILjava/lang/String;)V

    sget-object v5, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->Companion:Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;

    invoke-virtual {v5, v0}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;->getGeneratedKeyResponse(Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object v7

    if-nez v7, :cond_3d8

    sget-object v5, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->deletedSoftwareKeys:Ljava/util/Set;

    invoke-interface {v5, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3cf

    sget-object v0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v0, v3, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "] Returning KEY_NOT_FOUND for deleted key "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lx4/b;->c(Ljava/lang/String;)V

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;

    invoke-virtual {v0, v6}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->createErrorReply(I)Lv4/d;

    move-result-object v0

    return-object v0

    :cond_3cf
    invoke-static {v4}, Lu4/g;->j(I)Z

    move-result v0

    if-eqz v0, :cond_3d7

    goto/16 :goto_4e1

    :cond_3d7
    return-object v11

    :cond_3d8
    invoke-virtual {v5, v0}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;->isAttestationKey(Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;)Z

    move-result v0

    if-eqz v0, :cond_3f6

    sget-object v0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v0, v3, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " was an attestation key"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lx4/b;->c(Ljava/lang/String;)V

    :cond_3f6
    sget-object v0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v0, v3, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "] Found generated response for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lx4/b;->c(Ljava/lang/String;)V

    iget-object v0, v7, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    if-eqz v0, :cond_435

    iget-object v0, v0, Landroid/system/keystore2/KeyMetadata;->authorizations:[Landroid/system/keystore2/Authorization;

    if-eqz v0, :cond_435

    array-length v5, v0

    const/4 v14, 0x0

    :goto_420
    if-ge v14, v5, :cond_435

    aget-object v6, v0, v14

    sget-object v8, Lx4/a;->a:La/f;

    iget-object v6, v6, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    const-string v8, "keyParameter"

    invoke-static {v8, v6}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v8, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v6}, Lx4/a;->a(Landroid/hardware/security/keymint/KeyParameter;)Ljava/lang/String;

    add-int/lit8 v14, v14, 0x1

    goto :goto_420

    :cond_435
    iget-object v0, v3, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    const-string v3, "alias"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    move-wide v2, v1

    move v1, v4

    move-object v5, v7

    move-object v4, v0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->logServedChain(IJLjava/lang/String;Landroid/system/keystore2/KeyEntryResponse;)V

    move-object/from16 v17, v5

    sget-object v16, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;

    const/16 v20, 0x6

    const/16 v21, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v16 .. v21}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->createTypedObjectReply$default(Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;Landroid/os/Parcelable;ILorg/matrix/TEESimulator/interception/keystore/InterceptorUtils$ReplyDiagnostic;ILjava/lang/Object;)Lv4/d;

    move-result-object v0

    return-object v0

    :goto_456
    invoke-direct/range {p0 .. p0}, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->getTransactionNames()Ljava/util/Map;

    move-result-object v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-virtual/range {v0 .. v6}, Lv4/g;->logTransaction(JLjava/lang/String;IIZ)V

    invoke-static/range {p6 .. p6}, Lu4/g;->e(I)[Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x3f

    invoke-static {v0, v3}, Lb/h;->i1([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.google.android.gms"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Ll/q;->f1(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_4e1

    invoke-static/range {p6 .. p6}, Lu4/g;->j(I)Z

    move-result v0

    if-eqz v0, :cond_48e

    goto :goto_4e1

    :cond_48e
    :try_start_48e
    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->LIST_ENTRIES_BATCHED_TRANSACTION:Ljava/lang/Integer;

    if-nez v0, :cond_493

    goto :goto_49b

    :cond_493
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v9, v0, :cond_49b

    move v13, v8

    goto :goto_49c

    :cond_49b
    :goto_49b
    move v13, v4

    :goto_49c
    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/ListEntriesHandler;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/ListEntriesHandler;

    invoke-virtual {v0, v1, v2, v10, v13}, Lorg/matrix/TEESimulator/interception/keystore/ListEntriesHandler;->cacheParameters(JLandroid/os/Parcel;Z)Z

    move-result v0
    :try_end_4a2
    .catchall {:try_start_48e .. :try_end_4a2} :catchall_4a7

    if-eqz v0, :cond_4a5

    goto :goto_4ad

    :cond_4a5
    move-object v11, v12

    goto :goto_4ad

    :catchall_4a7
    move-exception v0

    new-instance v11, La/d;

    invoke-direct {v11, v0}, La/d;-><init>(Ljava/lang/Throwable;)V

    :goto_4ad
    invoke-static {v11}, La/e;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_4b5

    move-object v12, v11

    goto :goto_4df

    :cond_4b5
    sget-object v3, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    sget-object v3, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;

    invoke-direct {v3}, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->getTransactionNames()Ljava/util/Map;

    move-result-object v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "] Failed to parse parameters for "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lx4/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4df
    check-cast v12, Lv4/f;

    :cond_4e1
    :goto_4e1
    return-object v12
.end method
