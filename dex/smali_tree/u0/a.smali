.class public final Lu0/a;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/a;


# static fields
.field public static final f:Ljava/math/BigInteger;

.field public static final g:Ljava/math/BigInteger;

.field public static final h:[B

.field public static final i:[B


# instance fields
.field public final a:Lorg/bouncycastle/crypto/a;

.field public b:Z

.field public c:I

.field public d:I

.field public e:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x10

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lu0/a;->f:Ljava/math/BigInteger;

    const-wide/16 v0, 0x6

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lu0/a;->g:Ljava/math/BigInteger;

    const/16 v0, 0x10

    new-array v1, v0, [B

    fill-array-data v1, :array_22

    sput-object v1, Lu0/a;->h:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_2e

    sput-object v0, Lu0/a;->i:[B

    return-void

    nop

    :array_22
    .array-data 1
        0xet
        0x3t
        0x5t
        0x8t
        0x9t
        0x4t
        0x2t
        0xft
        0x0t
        0xdt
        0xbt
        0x6t
        0x7t
        0xat
        0xct
        0x1t
    .end array-data

    :array_2e
    .array-data 1
        0x8t
        0xft
        0x6t
        0x1t
        0x5t
        0x2t
        0xbt
        0xct
        0x3t
        0x4t
        0xdt
        0xat
        0xet
        0x9t
        0x0t
        0x7t
    .end array-data
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lu0/a;->d:I

    iput-object p1, p0, Lu0/a;->a:Lorg/bouncycastle/crypto/a;

    return-void
.end method


# virtual methods
.method public final getInputBlockSize()I
    .registers 2

    iget-object v0, p0, Lu0/a;->a:Lorg/bouncycastle/crypto/a;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/a;->getInputBlockSize()I

    move-result v0

    iget-boolean p0, p0, Lu0/a;->b:Z

    if-eqz p0, :cond_e

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    :cond_e
    return v0
.end method

.method public final getOutputBlockSize()I
    .registers 2

    iget-object v0, p0, Lu0/a;->a:Lorg/bouncycastle/crypto/a;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/a;->getOutputBlockSize()I

    move-result v0

    iget-boolean p0, p0, Lu0/a;->b:Z

    if-eqz p0, :cond_b

    return v0

    :cond_b
    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public final init(ZLorg/bouncycastle/crypto/g;)V
    .registers 5

    instance-of v0, p2, Le1/t0;

    if-eqz v0, :cond_c

    move-object v0, p2

    check-cast v0, Le1/t0;

    iget-object v0, v0, Le1/t0;->d:Lorg/bouncycastle/crypto/g;

    check-cast v0, Le1/z0;

    goto :goto_f

    :cond_c
    move-object v0, p2

    check-cast v0, Le1/z0;

    :goto_f
    iget-object v1, p0, Lu0/a;->a:Lorg/bouncycastle/crypto/a;

    invoke-interface {v1, p1, p2}, Lorg/bouncycastle/crypto/a;->init(ZLorg/bouncycastle/crypto/g;)V

    iget-object p2, v0, Le1/z0;->d:Ljava/math/BigInteger;

    iput-object p2, p0, Lu0/a;->e:Ljava/math/BigInteger;

    invoke-virtual {p2}, Ljava/math/BigInteger;->bitLength()I

    move-result p2

    iput p2, p0, Lu0/a;->c:I

    iput-boolean p1, p0, Lu0/a;->b:Z

    return-void
.end method

.method public final processBlock([BII)[B
    .registers 15

    iget-boolean v0, p0, Lu0/a;->b:Z

    if-eqz v0, :cond_97

    iget v0, p0, Lu0/a;->c:I

    add-int/lit8 v1, v0, 0x7

    const/16 v2, 0x8

    div-int/2addr v1, v2

    new-array v3, v1, [B

    iget v4, p0, Lu0/a;->d:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    add-int/lit8 v0, v0, 0xd

    div-int/lit8 v0, v0, 0x10

    const/4 v6, 0x0

    move v7, v6

    :goto_17
    if-ge v7, v0, :cond_31

    sub-int v8, v0, p3

    if-le v7, v8, :cond_28

    add-int v8, p2, p3

    sub-int v9, v0, v7

    sub-int/2addr v8, v9

    sub-int v10, v1, v0

    invoke-static {p1, v8, v3, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2f

    :cond_28
    add-int v8, v7, p3

    sub-int v8, v1, v8

    invoke-static {p1, p2, v3, v8, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2f
    add-int/2addr v7, p3

    goto :goto_17

    :cond_31
    mul-int/lit8 p1, v0, 0x2

    sub-int p1, v1, p1

    :goto_35
    if-eq p1, v1, :cond_57

    sub-int p2, v1, v0

    div-int/lit8 v7, p1, 0x2

    add-int/2addr v7, p2

    aget-byte p2, v3, v7

    and-int/lit16 v7, p2, 0xff

    ushr-int/lit8 v7, v7, 0x4

    sget-object v8, Lu0/a;->h:[B

    aget-byte v7, v8, v7

    shl-int/lit8 v7, v7, 0x4

    and-int/lit8 v9, p2, 0xf

    aget-byte v8, v8, v9

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v3, p1

    add-int/lit8 v7, p1, 0x1

    aput-byte p2, v3, v7

    add-int/lit8 p1, p1, 0x2

    goto :goto_35

    :cond_57
    mul-int/lit8 p3, p3, 0x2

    sub-int p1, v1, p3

    aget-byte p2, v3, p1

    xor-int/2addr p2, v4

    int-to-byte p2, p2

    aput-byte p2, v3, p1

    add-int/lit8 p1, v1, -0x1

    aget-byte p2, v3, p1

    shl-int/lit8 p2, p2, 0x4

    or-int/lit8 p2, p2, 0x6

    int-to-byte p2, p2

    aput-byte p2, v3, p1

    iget p1, p0, Lu0/a;->c:I

    sub-int/2addr p1, v5

    rem-int/2addr p1, v2

    rsub-int/lit8 p1, p1, 0x8

    const/16 p2, 0x80

    if-eq p1, v2, :cond_87

    aget-byte p3, v3, v6

    const/16 v0, 0xff

    ushr-int/2addr v0, p1

    and-int/2addr p3, v0

    int-to-byte p3, p3

    aput-byte p3, v3, v6

    ushr-int p1, p2, p1

    or-int/2addr p1, p3

    int-to-byte p1, p1

    aput-byte p1, v3, v6

    move v5, v6

    goto :goto_8f

    :cond_87
    aput-byte v6, v3, v6

    aget-byte p1, v3, v5

    or-int/2addr p1, p2

    int-to-byte p1, p1

    aput-byte p1, v3, v5

    :goto_8f
    iget-object p0, p0, Lu0/a;->a:Lorg/bouncycastle/crypto/a;

    sub-int/2addr v1, v5

    invoke-interface {p0, v3, v5, v1}, Lorg/bouncycastle/crypto/a;->processBlock([BII)[B

    move-result-object p0

    return-object p0

    :cond_97
    iget-object v0, p0, Lu0/a;->a:Lorg/bouncycastle/crypto/a;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/a;->processBlock([BII)[B

    move-result-object p1

    iget p2, p0, Lu0/a;->c:I

    add-int/lit8 p2, p2, 0xd

    div-int/lit8 p2, p2, 0x10

    new-instance p3, Ljava/math/BigInteger;

    const/4 v0, 0x1

    invoke-direct {p3, v0, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    sget-object p1, Lu0/a;->f:Ljava/math/BigInteger;

    invoke-virtual {p3, p1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Lu0/a;->g:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b8

    goto :goto_ce

    :cond_b8
    iget-object v1, p0, Lu0/a;->e:Ljava/math/BigInteger;

    invoke-virtual {v1, p3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16e

    iget-object p1, p0, Lu0/a;->e:Ljava/math/BigInteger;

    invoke-virtual {p1, p3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p3

    :goto_ce
    invoke-virtual {p3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    const/4 p3, 0x0

    aget-byte v1, p1, p3

    if-nez v1, :cond_df

    array-length v1, p1

    sub-int/2addr v1, v0

    new-array v2, v1, [B

    invoke-static {p1, v0, v2, p3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v2

    :cond_df
    array-length v1, p1

    sub-int/2addr v1, v0

    aget-byte v1, p1, v1

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x6

    if-ne v1, v2, :cond_166

    array-length v1, p1

    sub-int/2addr v1, v0

    array-length v2, p1

    sub-int/2addr v2, v0

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    ushr-int/lit8 v2, v2, 0x4

    array-length v3, p1

    add-int/lit8 v3, v3, -0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v3, v3, 0x4

    sget-object v4, Lu0/a;->i:[B

    aget-byte v3, v4, v3

    shl-int/lit8 v3, v3, 0x4

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    aget-byte v1, p1, v0

    and-int/lit16 v2, v1, 0xff

    ushr-int/lit8 v2, v2, 0x4

    sget-object v3, Lu0/a;->h:[B

    aget-byte v2, v3, v2

    shl-int/lit8 v2, v2, 0x4

    and-int/lit8 v1, v1, 0xf

    aget-byte v1, v3, v1

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p1, p3

    array-length v1, p1

    sub-int/2addr v1, v0

    move v2, p3

    move v4, v2

    move v5, v0

    :goto_11e
    array-length v6, p1

    mul-int/lit8 v7, p2, 0x2

    sub-int/2addr v6, v7

    if-lt v1, v6, :cond_14d

    aget-byte v6, p1, v1

    and-int/lit16 v7, v6, 0xff

    ushr-int/lit8 v7, v7, 0x4

    aget-byte v7, v3, v7

    shl-int/lit8 v7, v7, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-byte v6, v3, v6

    or-int/2addr v6, v7

    add-int/lit8 v7, v1, -0x1

    aget-byte v8, p1, v7

    xor-int/2addr v6, v8

    and-int/lit16 v6, v6, 0xff

    if-eqz v6, :cond_14a

    if-nez v4, :cond_142

    move v4, v0

    move v5, v6

    move v2, v7

    goto :goto_14a

    :cond_142
    new-instance p0, Lorg/bouncycastle/crypto/x;

    const-string p1, "invalid tsums in block"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_14a
    :goto_14a
    add-int/lit8 v1, v1, -0x2

    goto :goto_11e

    :cond_14d
    aput-byte p3, p1, v2

    array-length p2, p1

    sub-int/2addr p2, v2

    div-int/lit8 p2, p2, 0x2

    new-array v1, p2, [B

    :goto_155
    if-ge p3, p2, :cond_162

    mul-int/lit8 v3, p3, 0x2

    add-int/2addr v3, v2

    add-int/2addr v3, v0

    aget-byte v3, p1, v3

    aput-byte v3, v1, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_155

    :cond_162
    sub-int/2addr v5, v0

    iput v5, p0, Lu0/a;->d:I

    return-object v1

    :cond_166
    new-instance p0, Lorg/bouncycastle/crypto/x;

    const-string p1, "invalid forcing byte in block"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_16e
    new-instance p0, Lorg/bouncycastle/crypto/x;

    const-string p1, "resulting integer iS or (modulus - iS) is not congruent to 6 mod 16"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method
