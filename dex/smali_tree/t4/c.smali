.class public abstract Lt4/c;
.super Ljava/lang/Object;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"


# static fields
.field public static final a:La/f;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lorg/matrix/TEESimulator/interception/keystore/shim/h;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/matrix/TEESimulator/interception/keystore/shim/h;-><init>(I)V

    new-instance v1, La/f;

    invoke-direct {v1, v0}, La/f;-><init>(Lh/a;)V

    sput-object v1, Lt4/c;->a:La/f;

    return-void
.end method

.method public static a(Ljava/util/List;Ljava/util/Set;)Lm/x0;
    .registers 11

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Lb/k;->V0(Ljava/lang/Iterable;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_53

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/c;

    iget-object v3, v1, La/c;->c:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v1, v1, La/c;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    new-instance v1, Lm/a1;

    new-instance v6, Lm/x0;

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v8, "UTF_8"

    invoke-static {v8, v7}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    const-string v7, "getBytes(...)"

    invoke-static {v7, v3}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v6, v3}, Lm/r;-><init>([B)V

    new-instance v3, Lm/l;

    invoke-direct {v3, v4, v5}, Lm/l;-><init>(J)V

    const/4 v4, 0x2

    new-array v4, v4, [Lm/u;

    aput-object v6, v4, v2

    const/4 v2, 0x1

    aput-object v3, v4, v2

    check-cast v4, [Lm/f;

    invoke-direct {v1, v4}, Lm/a1;-><init>([Lm/f;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_53
    new-instance p0, Lm/b1;

    new-array v1, v2, [Lm/a1;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lm/f;

    invoke-direct {p0, v0}, Lm/b1;-><init>([Lm/f;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lb/k;->V0(Ljava/lang/Iterable;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_84

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt4/a;

    new-instance v3, Lm/x0;

    iget-object v1, v1, Lt4/a;->a:[B

    invoke-direct {v3, v1}, Lm/r;-><init>([B)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6d

    :cond_84
    new-array p1, v2, [Lm/x0;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lm/f;

    new-instance v0, Lm/b1;

    invoke-direct {v0, p1}, Lm/b1;-><init>([Lm/f;)V

    filled-new-array {p0, v0}, [Lm/b1;

    move-result-object p0

    check-cast p0, [Lm/f;

    new-instance p1, Lm/a1;

    invoke-direct {p1, p0}, Lm/a1;-><init>([Lm/f;)V

    new-instance p0, Lm/x0;

    invoke-virtual {p1}, Lm/n;->getEncoded()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lm/r;-><init>([B)V

    return-object p0
.end method

.method public static b()Lm/a1;
    .registers 5

    new-instance v0, Lm/x0;

    sget-object v1, Lz4/f;->a:La/f;

    sget-object v1, Lz4/f;->a:La/f;

    invoke-virtual {v1}, La/f;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-direct {v0, v1}, Lm/r;-><init>([B)V

    new-instance v1, Lm/h;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lm/h;-><init>(I)V

    new-instance v3, Lm/x0;

    sget-object v4, Lz4/f;->b:La/f;

    invoke-virtual {v4}, La/f;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-direct {v3, v4}, Lm/r;-><init>([B)V

    const/4 v4, 0x4

    new-array v4, v4, [Lm/f;

    aput-object v0, v4, v2

    sget-object v0, Lm/d;->x:Lm/d;

    const/4 v2, 0x1

    aput-object v0, v4, v2

    const/4 v0, 0x2

    aput-object v1, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    new-instance v0, Lm/a1;

    invoke-direct {v0, v4}, Lm/a1;-><init>([Lm/f;)V

    return-object v0
.end method

.method public static c(I)Lm/x0;
    .registers 15

    const v0, 0x186a0

    rem-int v1, p0, v0

    if-eqz v1, :cond_99

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_99

    invoke-static {}, Lu4/g;->c()Landroid/content/pm/IPackageManager;

    move-result-object v1

    if-eqz v1, :cond_91

    invoke-interface {v1, p0}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_85

    const-string v3, "SHA-256"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/LinkedHashSet;

    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    div-int/2addr p0, v0

    array-length v0, v2

    const/4 v6, 0x0

    move v7, v6

    :goto_2b
    if-ge v7, v0, :cond_80

    aget-object v8, v2, v7

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x21

    if-lt v9, v10, :cond_3d

    const-wide/32 v9, 0x8000000

    invoke-interface {v1, v8, v9, v10, p0}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v8

    goto :goto_43

    :cond_3d
    const/high16 v9, 0x8000000

    invoke-interface {v1, v8, v9, p0}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v8

    :goto_43
    iget-object v9, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    new-instance v11, La/c;

    invoke-direct {v11, v9, v10}, La/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, v8, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    if-eqz v8, :cond_7d

    invoke-virtual {v8}, Landroid/content/pm/SigningInfo;->getSigningCertificateHistory()[Landroid/content/pm/Signature;

    move-result-object v8

    if-eqz v8, :cond_7d

    array-length v9, v8

    move v10, v6

    :goto_61
    if-ge v10, v9, :cond_7d

    aget-object v11, v8, v10

    new-instance v12, Lt4/a;

    invoke-virtual {v11}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v11

    const-string v13, "digest(...)"

    invoke-static {v13, v11}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v12, v11}, Lt4/a;-><init>([B)V

    invoke-interface {v5, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_61

    :cond_7d
    add-int/lit8 v7, v7, 0x1

    goto :goto_2b

    :cond_80
    invoke-static {v4, v5}, Lt4/c;->a(Ljava/util/List;Ljava/util/Set;)Lm/x0;

    move-result-object p0

    return-object p0

    :cond_85
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No packages for UID "

    invoke-static {p0, v1}, Lb/b;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_91
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "PackageManager not found!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_99
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    new-instance v0, La/c;

    const-string v1, "AndroidSystem"

    invoke-direct {v0, v1, p0}, La/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Lt4/d;->n0(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    sget-object v0, Lb/s;->c:Lb/s;

    invoke-static {p0, v0}, Lt4/c;->a(Ljava/util/List;Ljava/util/Set;)Lm/x0;

    move-result-object p0

    return-object p0
.end method

.method public static d(I)Ljava/util/LinkedHashMap;
    .registers 13

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const/16 v1, 0x2c1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lm/d1;

    new-instance v4, Lm/l;

    sget-object v5, Lz4/f;->a:La/f;

    invoke-static {}, Lz4/f;->h()I

    move-result v5

    int-to-long v5, v5

    invoke-direct {v4, v5, v6}, Lm/l;-><init>(J)V

    const/4 v5, 0x1

    invoke-direct {v3, v5, v1, v4}, Lm/a0;-><init>(ZILm/f;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lz4/f;->i(I)I

    move-result v1

    const/16 v2, 0x2c2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, -0x1

    if-eq v1, v6, :cond_3a

    new-instance v7, Lm/d1;

    new-instance v8, Lm/l;

    int-to-long v9, v1

    invoke-direct {v8, v9, v10}, Lm/l;-><init>(J)V

    invoke-direct {v7, v5, v2, v8}, Lm/a0;-><init>(ZILm/f;)V

    goto :goto_3b

    :cond_3a
    move-object v7, v4

    :goto_3b
    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "vendor"

    invoke-static {v2, v5, p0}, Lz4/f;->f(Ljava/lang/String;ZI)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_4b

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_4f

    :cond_4b
    invoke-static {v5, v2}, Lz4/f;->j(ZLjava/lang/String;)I

    move-result v2

    :goto_4f
    const/16 v3, 0x2ce

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    if-eq v2, v6, :cond_63

    new-instance v8, Lm/d1;

    new-instance v9, Lm/l;

    int-to-long v10, v2

    invoke-direct {v9, v10, v11}, Lm/l;-><init>(J)V

    invoke-direct {v8, v5, v3, v9}, Lm/a0;-><init>(ZILm/f;)V

    goto :goto_64

    :cond_63
    move-object v8, v4

    :goto_64
    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "boot"

    invoke-static {v3, v5, p0}, Lz4/f;->f(Ljava/lang/String;ZI)Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_74

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_78

    :cond_74
    invoke-static {v5, v3}, Lz4/f;->j(ZLjava/lang/String;)I

    move-result v3

    :goto_78
    sget-object v7, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Attestation patch levels for uid="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ": os="

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", vendor="

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", boot="

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lx4/b;->c(Ljava/lang/String;)V

    const/16 p0, 0x2cf

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eq v3, v6, :cond_b6

    new-instance v4, Lm/d1;

    new-instance v2, Lm/l;

    int-to-long v6, v3

    invoke-direct {v2, v6, v7}, Lm/l;-><init>(J)V

    invoke-direct {v4, v5, p0, v2}, Lm/a0;-><init>(ZILm/f;)V

    :cond_b6
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
