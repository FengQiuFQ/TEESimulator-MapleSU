.class public final Lorg/matrix/TEESimulator/interception/keystore/Keystore2MaintenanceInterceptor;
.super Lv4/g;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"


# static fields
.field private static final CLEAR_NAMESPACE_TRANSACTION:I

.field private static final DELETE_ALL_KEYS_TRANSACTION:I

.field public static final INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/Keystore2MaintenanceInterceptor;

.field private static final MIGRATE_KEY_NAMESPACE_TRANSACTION:I

.field private static final interceptedCodes$delegate:La/a;

.field private static final stubClass:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lorg/matrix/TEESimulator/interception/keystore/Keystore2MaintenanceInterceptor;

    invoke-direct {v0}, Lorg/matrix/TEESimulator/interception/keystore/Keystore2MaintenanceInterceptor;-><init>()V

    sput-object v0, Lorg/matrix/TEESimulator/interception/keystore/Keystore2MaintenanceInterceptor;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/Keystore2MaintenanceInterceptor;

    const-class v0, Landroid/security/maintenance/IKeystoreMaintenance$Stub;

    sput-object v0, Lorg/matrix/TEESimulator/interception/keystore/Keystore2MaintenanceInterceptor;->stubClass:Ljava/lang/Class;

    sget-object v1, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;

    const-string v2, "clearNamespace"

    invoke-virtual {v1, v0, v2}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->getTransactCode(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v2

    sput v2, Lorg/matrix/TEESimulator/interception/keystore/Keystore2MaintenanceInterceptor;->CLEAR_NAMESPACE_TRANSACTION:I

    const-string v2, "deleteAllKeys"

    invoke-virtual {v1, v0, v2}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->getTransactCode(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v2

    sput v2, Lorg/matrix/TEESimulator/interception/keystore/Keystore2MaintenanceInterceptor;->DELETE_ALL_KEYS_TRANSACTION:I

    const-string v2, "migrateKeyNamespace"

    invoke-virtual {v1, v0, v2}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->getTransactCode(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/matrix/TEESimulator/interception/keystore/Keystore2MaintenanceInterceptor;->MIGRATE_KEY_NAMESPACE_TRANSACTION:I

    new-instance v0, Lorg/matrix/TEESimulator/interception/keystore/d;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/matrix/TEESimulator/interception/keystore/d;-><init>(I)V

    new-instance v1, La/f;

    invoke-direct {v1, v0}, La/f;-><init>(Lh/a;)V

    sput-object v1, Lorg/matrix/TEESimulator/interception/keystore/Keystore2MaintenanceInterceptor;->interceptedCodes$delegate:La/a;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method

.method public static synthetic c()[I
    .registers 1

    invoke-static {}, Lorg/matrix/TEESimulator/interception/keystore/Keystore2MaintenanceInterceptor;->interceptedCodes_delegate$lambda$0()[I

    move-result-object v0

    return-object v0
.end method

.method private final handleClearNamespace(Landroid/os/Parcel;)V
    .registers 4

    const-string p0, "android.security.maintenance.IKeystoreMaintenance"

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    if-nez p0, :cond_15

    sget-object p0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->Companion:Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;

    long-to-int p1, v0

    invoke-virtual {p0, p1}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;->clearNamespaceKeys(I)V

    :cond_15
    return-void
.end method

.method private final handleMigrateKeyNamespace(Landroid/os/Parcel;I)V
    .registers 6

    const-string v0, "android.security.maintenance.IKeystoreMaintenance"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v0, Landroid/system/keystore2/KeyDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/system/keystore2/KeyDescriptor;

    if-nez v1, :cond_10

    goto :goto_2c

    :cond_10
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/system/keystore2/KeyDescriptor;

    if-nez p1, :cond_19

    goto :goto_2c

    :cond_19
    invoke-direct {p0, v1, p2}, Lorg/matrix/TEESimulator/interception/keystore/Keystore2MaintenanceInterceptor;->resolveSyntheticKeyId(Landroid/system/keystore2/KeyDescriptor;I)Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;

    move-result-object v0

    if-nez v0, :cond_20

    goto :goto_2c

    :cond_20
    sget-object v1, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->Companion:Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;

    invoke-virtual {v1}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;->getGeneratedKeys()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    :goto_2c
    return-void

    :cond_2d
    invoke-direct {p0, p1, p2}, Lorg/matrix/TEESimulator/interception/keystore/Keystore2MaintenanceInterceptor;->resolveDestinationKeyId(Landroid/system/keystore2/KeyDescriptor;I)Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;

    move-result-object p0

    if-nez p0, :cond_37

    invoke-virtual {v1, v0}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;->cleanupKeyData(Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;)V

    return-void

    :cond_37
    invoke-virtual {v1, v0, p0}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;->migrateGeneratedKey(Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;)V

    return-void
.end method

.method private static final interceptedCodes_delegate$lambda$0()[I
    .registers 5

    sget v0, Lorg/matrix/TEESimulator/interception/keystore/Keystore2MaintenanceInterceptor;->CLEAR_NAMESPACE_TRANSACTION:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v1, Lorg/matrix/TEESimulator/interception/keystore/Keystore2MaintenanceInterceptor;->DELETE_ALL_KEYS_TRANSACTION:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lorg/matrix/TEESimulator/interception/keystore/Keystore2MaintenanceInterceptor;->MIGRATE_KEY_NAMESPACE_TRANSACTION:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lb/j;->U0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_23
    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_23

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_3b
    invoke-static {v1}, Lb/i;->b1(Ljava/util/Collection;)[I

    move-result-object v0

    return-object v0
.end method

.method private final resolveDestinationKeyId(Landroid/system/keystore2/KeyDescriptor;I)Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;
    .registers 7

    iget-object p0, p1, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return-object v0

    :cond_6
    iget v1, p1, Landroid/system/keystore2/KeyDescriptor;->domain:I

    if-eqz v1, :cond_b

    return-object v0

    :cond_b
    iget-wide v0, p1, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_14

    long-to-int p2, v0

    :cond_14
    new-instance p1, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;

    invoke-direct {p1, p2, p0}, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;-><init>(ILjava/lang/String;)V

    return-object p1
.end method

.method private final resolveSyntheticKeyId(Landroid/system/keystore2/KeyDescriptor;I)Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;
    .registers 9

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

    if-ne p0, v0, :cond_5e

    sget-object p0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->Companion:Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;

    invoke-virtual {p0}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;->getGeneratedKeys()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    const-string v0, "<get-entries>(...)"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_28
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;

    invoke-virtual {v3}, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;->getUid()I

    move-result v3

    if-ne v3, p2, :cond_28

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$GeneratedKeyInfo;

    invoke-virtual {v2}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$GeneratedKeyInfo;->getNspace()J

    move-result-wide v2

    iget-wide v4, p1, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_28

    goto :goto_53

    :cond_52
    move-object v0, v1

    :goto_53
    check-cast v0, Ljava/util/Map$Entry;

    if-eqz v0, :cond_5e

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;

    return-object p0

    :cond_5e
    return-object v1
.end method


# virtual methods
.method public final getInterceptedCodes()[I
    .registers 1

    sget-object p0, Lorg/matrix/TEESimulator/interception/keystore/Keystore2MaintenanceInterceptor;->interceptedCodes$delegate:La/a;

    check-cast p0, La/f;

    invoke-virtual {p0}, La/f;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0
.end method

.method public onPreTransact(JLandroid/os/IBinder;IIIILandroid/os/Parcel;)Lv4/f;
    .registers 9

    const-string p1, "target"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "data"

    invoke-static {p1, p8}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget p1, Lorg/matrix/TEESimulator/interception/keystore/Keystore2MaintenanceInterceptor;->CLEAR_NAMESPACE_TRANSACTION:I

    if-ne p4, p1, :cond_12

    invoke-direct {p0, p8}, Lorg/matrix/TEESimulator/interception/keystore/Keystore2MaintenanceInterceptor;->handleClearNamespace(Landroid/os/Parcel;)V

    goto :goto_25

    :cond_12
    sget p1, Lorg/matrix/TEESimulator/interception/keystore/Keystore2MaintenanceInterceptor;->DELETE_ALL_KEYS_TRANSACTION:I

    if-ne p4, p1, :cond_1e

    sget-object p0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->Companion:Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;

    const-string p1, "maintenance.deleteAllKeys"

    invoke-virtual {p0, p1}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;->clearAllGeneratedKeys(Ljava/lang/String;)V

    goto :goto_25

    :cond_1e
    sget p1, Lorg/matrix/TEESimulator/interception/keystore/Keystore2MaintenanceInterceptor;->MIGRATE_KEY_NAMESPACE_TRANSACTION:I

    if-ne p4, p1, :cond_25

    invoke-direct {p0, p8, p6}, Lorg/matrix/TEESimulator/interception/keystore/Keystore2MaintenanceInterceptor;->handleMigrateKeyNamespace(Landroid/os/Parcel;I)V

    :cond_25
    :goto_25
    sget-object p0, Lv4/c;->a:Lv4/c;

    return-object p0
.end method
