.class public abstract Lz4/g;
.super Ljava/lang/Object;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"


# static fields
.field public static final a:Ljava/security/SecureRandom;

.field public static final b:La/f;

.field public static final c:La/f;

.field public static volatile d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lz4/g;->a:Ljava/security/SecureRandom;

    new-instance v0, Lz4/c;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lz4/c;-><init>(I)V

    new-instance v1, La/f;

    invoke-direct {v1, v0}, La/f;-><init>(Lh/a;)V

    sput-object v1, Lz4/g;->b:La/f;

    new-instance v0, Lz4/c;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lz4/c;-><init>(I)V

    new-instance v1, La/f;

    invoke-direct {v1, v0}, La/f;-><init>(Lh/a;)V

    sput-object v1, Lz4/g;->c:La/f;

    const/4 v0, 0x1

    sput-boolean v0, Lz4/g;->d:Z

    return-void
.end method

.method public static a(IJ)V
    .registers 13

    long-to-double p1, p1

    const-wide v0, 0x412e848000000000L    # 1000000.0

    div-double/2addr p1, v0

    const-wide v0, 0x3fb47ae147ae147bL    # 0.08

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-wide v1, 0x3fb999999999999aL    # 0.1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x1

    if-eq p0, v2, :cond_57

    const/4 v2, 0x3

    if-eq p0, v2, :cond_46

    const/16 v0, 0x20

    if-eq p0, v0, :cond_33

    const-wide/high16 v2, 0x4044000000000000L    # 40.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    new-instance v0, La/c;

    invoke-direct {v0, p0, v1}, La/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_6a

    :cond_33
    const-wide v2, 0x4041800000000000L    # 35.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    new-instance v0, La/c;

    invoke-direct {v0, p0, v1}, La/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_6a

    :cond_46
    const-wide/high16 v1, 0x404e000000000000L    # 60.0

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    new-instance v1, La/c;

    invoke-direct {v1, p0, v0}, La/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_55
    move-object v0, v1

    goto :goto_6a

    :cond_57
    const-wide v1, 0x4051800000000000L    # 70.0

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    new-instance v1, La/c;

    invoke-direct {v1, p0, v0}, La/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_55

    :goto_6a
    iget-object p0, v0, La/c;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    iget-object p0, v0, La/c;->d:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    sget-object p0, Lz4/g;->a:Ljava/security/SecureRandom;

    invoke-virtual {p0}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v5

    mul-double/2addr v5, v3

    add-double/2addr v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    invoke-virtual {p0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v2

    :goto_8a
    const-wide/16 v4, 0x0

    cmpg-double v6, v2, v4

    if-nez v6, :cond_95

    invoke-virtual {p0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v2

    goto :goto_8a

    :cond_95
    const-wide/high16 v6, -0x3ffc000000000000L    # -2.5

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    mul-double/2addr v2, v6

    sget-object p0, Lz4/g;->a:Ljava/security/SecureRandom;

    invoke-virtual {p0}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v6

    const-wide/high16 v8, 0x4004000000000000L    # 2.5

    mul-double/2addr v6, v8

    const-wide/high16 v8, -0x3fe0000000000000L    # -8.0

    cmpg-double p0, v6, v8

    if-gez p0, :cond_ad

    :goto_ab
    move-wide v6, v8

    goto :goto_b4

    :cond_ad
    const-wide/high16 v8, 0x4028000000000000L    # 12.0

    cmpl-double p0, v6, v8

    if-lez p0, :cond_b4

    goto :goto_ab

    :cond_b4
    :goto_b4
    sget-boolean p0, Lz4/g;->d:Z

    if-eqz p0, :cond_c7

    const/4 p0, 0x0

    sput-boolean p0, Lz4/g;->d:Z

    sget-object p0, Lz4/g;->c:La/f;

    invoke-virtual {p0}, La/f;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    :cond_c7
    add-double/2addr v0, v2

    add-double/2addr v0, v6

    sget-object p0, Lz4/g;->b:La/f;

    invoke-virtual {p0}, La/f;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    add-double/2addr v2, v0

    add-double/2addr v2, v4

    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    sub-double/2addr v0, p1

    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    cmpl-double p0, v0, p0

    if-lez p0, :cond_ed

    const p0, 0xf4240

    int-to-double p0, p0

    mul-double/2addr v0, p0

    double-to-long p0, v0

    invoke-static {p0, p1}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    :cond_ed
    return-void
.end method
