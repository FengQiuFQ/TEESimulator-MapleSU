.class public Lorg/bouncycastle/jcajce/provider/symmetric/TLSKDF;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static PRF_legacy(Ld2/a0;)[B
    .registers 2

    new-instance p0, Lz0/d;

    sget v0, Lj1/a;->a:I

    new-instance v0, Ls0/r;

    invoke-direct {v0}, Ls0/r;-><init>()V

    invoke-direct {p0, v0}, Lz0/d;-><init>(Lorg/bouncycastle/crypto/v;)V

    new-instance p0, Lz0/d;

    new-instance v0, Ls0/z;

    invoke-direct {v0}, Ls0/z;-><init>()V

    invoke-direct {p0, v0}, Lz0/d;-><init>(Lorg/bouncycastle/crypto/v;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic access$000(Ld2/a0;)[B
    .registers 1

    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/TLSKDF;->PRF_legacy(Ld2/a0;)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Lorg/bouncycastle/crypto/b0;[B[B[B)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lorg/bouncycastle/jcajce/provider/symmetric/TLSKDF;->hmac_hash(Lorg/bouncycastle/crypto/b0;[B[B[B)V

    return-void
.end method

.method private static hmac_hash(Lorg/bouncycastle/crypto/b0;[B[B[B)V
    .registers 12

    new-instance v0, Le1/o0;

    invoke-direct {v0, p1}, Le1/o0;-><init>([B)V

    invoke-interface {p0, v0}, Lorg/bouncycastle/crypto/b0;->init(Lorg/bouncycastle/crypto/g;)V

    invoke-interface {p0}, Lorg/bouncycastle/crypto/b0;->getMacSize()I

    move-result p1

    array-length v0, p3

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, p1

    invoke-interface {p0}, Lorg/bouncycastle/crypto/b0;->getMacSize()I

    move-result v1

    new-array v2, v1, [B

    invoke-interface {p0}, Lorg/bouncycastle/crypto/b0;->getMacSize()I

    move-result v3

    new-array v3, v3, [B

    const/4 v4, 0x0

    move-object v6, p2

    move v5, v4

    :goto_20
    if-ge v5, v0, :cond_42

    array-length v7, v6

    invoke-interface {p0, v6, v4, v7}, Lorg/bouncycastle/crypto/b0;->update([BII)V

    invoke-interface {p0, v2, v4}, Lorg/bouncycastle/crypto/b0;->doFinal([BI)I

    invoke-interface {p0, v2, v4, v1}, Lorg/bouncycastle/crypto/b0;->update([BII)V

    array-length v6, p2

    invoke-interface {p0, p2, v4, v6}, Lorg/bouncycastle/crypto/b0;->update([BII)V

    invoke-interface {p0, v3, v4}, Lorg/bouncycastle/crypto/b0;->doFinal([BI)I

    mul-int v6, p1, v5

    array-length v7, p3

    sub-int/2addr v7, v6

    invoke-static {p1, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v3, v4, p3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v5, v5, 0x1

    move-object v6, v2

    goto :goto_20

    :cond_42
    return-void
.end method
