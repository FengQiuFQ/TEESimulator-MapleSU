.class public final Lorg/matrix/TEESimulator/interception/keystore/ListEntriesHandler;
.super Ljava/lang/Object;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"


# static fields
.field public static final INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/ListEntriesHandler;

.field private static final RESPONSE_SIZE_LIMIT:I = 0x57800

.field private static final pendingParams:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/matrix/TEESimulator/interception/keystore/ListEntriesHandler;

    invoke-direct {v0}, Lorg/matrix/TEESimulator/interception/keystore/ListEntriesHandler;-><init>()V

    sput-object v0, Lorg/matrix/TEESimulator/interception/keystore/ListEntriesHandler;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/ListEntriesHandler;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/matrix/TEESimulator/interception/keystore/ListEntriesHandler;->pendingParams:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final estimateSafeAmountToReturn([Landroid/system/keystore2/KeyDescriptor;I)I
    .registers 9

    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_4
    if-ge v0, p0, :cond_58

    aget-object v3, p1, v0

    add-int/lit8 v1, v1, 0xc

    iget-object v4, v3, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    if-eqz v4, :cond_1d

    sget-object v5, Ll/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    const-string v5, "getBytes(...)"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    array-length v4, v4

    add-int/lit8 v4, v4, 0x4

    add-int/2addr v1, v4

    :cond_1d
    iget-object v3, v3, Landroid/system/keystore2/KeyDescriptor;->blob:[B

    if-eqz v3, :cond_26

    array-length v3, v3

    add-int/lit8 v3, v3, 0x4

    add-int/2addr v3, v1

    move v1, v3

    :cond_26
    if-le v1, p2, :cond_53

    sget-object p0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    array-length p0, p1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Key descriptors list ("

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " items) may exceed binder size limit, returning "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " items with estimated size: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " bytes."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lx4/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2

    :cond_53
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_58
    return v2
.end method

.method private final extractGeneratedKeyDescriptors(IJLjava/lang/String;)Ljava/util/List;
    .registers 9

    sget-object p0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->Companion:Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;

    invoke-virtual {p0}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;->getGeneratedKeys()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    const-string v0, "<get-keys>(...)"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_18
    :goto_18
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;

    invoke-virtual {v2}, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;->getUid()I

    move-result v3

    if-ne v3, p1, :cond_18

    if-eqz p4, :cond_37

    invoke-virtual {v2}, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;->getAlias()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_18

    :cond_37
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_3b
    new-instance p0, Ljava/util/ArrayList;

    invoke-static {v0}, Lb/k;->V0(Ljava/lang/Iterable;)I

    move-result p1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p4, 0x0

    move v1, p4

    :goto_4a
    if-ge v1, p1, :cond_6a

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;

    new-instance v3, Landroid/system/keystore2/KeyDescriptor;

    invoke-direct {v3}, Landroid/system/keystore2/KeyDescriptor;-><init>()V

    iput p4, v3, Landroid/system/keystore2/KeyDescriptor;->domain:I

    iput-wide p2, v3, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    invoke-virtual {v2}, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;->getAlias()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    const/4 v2, 0x0

    iput-object v2, v3, Landroid/system/keystore2/KeyDescriptor;->blob:[B

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4a

    :cond_6a
    return-object p0
.end method

.method private final mergeKeyDescriptors([Landroid/system/keystore2/KeyDescriptor;Ljava/util/List;)[Landroid/system/keystore2/KeyDescriptor;
    .registers 8

    new-instance p0, Ljava/util/TreeMap;

    invoke-direct {p0}, Ljava/util/TreeMap;-><init>()V

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_16

    aget-object v3, p1, v2

    iget-object v4, v3, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    if-eqz v4, :cond_13

    invoke-interface {p0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_16
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1a
    :goto_1a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/system/keystore2/KeyDescriptor;

    iget-object v0, p2, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    if-eqz v0, :cond_1a

    invoke-interface {p0, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a

    :cond_2e
    invoke-virtual {p0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object p0

    const-string p1, "<get-values>(...)"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-array p1, v1, [Landroid/system/keystore2/KeyDescriptor;

    invoke-interface {p0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/system/keystore2/KeyDescriptor;

    return-object p0
.end method


# virtual methods
.method public final cacheParameters(JLandroid/os/Parcel;Z)Z
    .registers 9

    const-string p0, "data"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "android.system.keystore2.IKeystoreService"

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    if-eqz p4, :cond_19

    invoke-virtual {p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    goto :goto_1a

    :cond_19
    const/4 p3, 0x0

    :goto_1a
    if-nez p0, :cond_54

    sget-object p4, Lorg/matrix/TEESimulator/interception/keystore/ListEntriesHandler;->pendingParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v3, Lorg/matrix/TEESimulator/interception/keystore/ListEntriesHandler$ListEntriesParams;

    invoke-direct {v3, p0, v0, v1, p3}, Lorg/matrix/TEESimulator/interception/keystore/ListEntriesHandler$ListEntriesParams;-><init>(IJLjava/lang/String;)V

    invoke-interface {p4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p4, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "[TX_ID: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "] Cached "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lx4/b;->a(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_54
    const/4 p0, 0x0

    return p0
.end method

.method public final injectGeneratedKeys(JILandroid/os/Parcel;)[Landroid/system/keystore2/KeyDescriptor;
    .registers 8

    const-string v0, "reply"

    invoke-static {v0, p4}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/ListEntriesHandler;->pendingParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/matrix/TEESimulator/interception/keystore/ListEntriesHandler$ListEntriesParams;

    if-eqz v0, :cond_92

    int-to-long v1, p3

    invoke-virtual {v0}, Lorg/matrix/TEESimulator/interception/keystore/ListEntriesHandler$ListEntriesParams;->getStartPastAlias()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, v1, v2, v0}, Lorg/matrix/TEESimulator/interception/keystore/ListEntriesHandler;->extractGeneratedKeyDescriptors(IJLjava/lang/String;)Ljava/util/List;

    move-result-object p3

    sget-object v0, Landroid/system/keystore2/KeyDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p4, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p4

    invoke-static {p4}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    check-cast p4, [Landroid/system/keystore2/KeyDescriptor;

    invoke-direct {p0, p4, p3}, Lorg/matrix/TEESimulator/interception/keystore/ListEntriesHandler;->mergeKeyDescriptors([Landroid/system/keystore2/KeyDescriptor;Ljava/util/List;)[Landroid/system/keystore2/KeyDescriptor;

    move-result-object p4

    const v0, 0x57800

    invoke-direct {p0, p4, v0}, Lorg/matrix/TEESimulator/interception/keystore/ListEntriesHandler;->estimateSafeAmountToReturn([Landroid/system/keystore2/KeyDescriptor;I)I

    move-result p0

    array-length v0, p4

    const-string v1, "[TX_ID: "

    if-ge p0, v0, :cond_66

    sget-object p3, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    array-length p3, p4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "] Listing entries are truncated ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " -> "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] to avoid transaction overflow."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lx4/b;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {p4, p1, p0}, Lb/h;->g1([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/system/keystore2/KeyDescriptor;

    return-object p0

    :cond_66
    sget-object p0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    array-length p0, p4

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "] Listing entries returns "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " [injected: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] keys."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lx4/b;->a(Ljava/lang/String;)V

    return-object p4

    :cond_92
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No params found for listing entries"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
