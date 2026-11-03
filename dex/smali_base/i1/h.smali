.class public final Li1/h;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/m0;


# instance fields
.field public g:Lorg/bouncycastle/crypto/v;

.field public h:Lorg/bouncycastle/crypto/a;

.field public i:I

.field public j:I

.field public k:[B

.field public l:[B

.field public m:I

.field public n:[B


# direct methods
.method public static c([B)V
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    array-length v2, p0

    if-eq v1, v2, :cond_a

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_a
    return-void
.end method


# virtual methods
.method public final a([B)Z
    .registers 14

    iget-object v0, p0, Li1/h;->g:Lorg/bouncycastle/crypto/v;

    const/4 v1, 0x0

    :try_start_3
    iget-object v2, p0, Li1/h;->h:Lorg/bouncycastle/crypto/a;

    array-length v3, p1

    invoke-interface {v2, p1, v1, v3}, Lorg/bouncycastle/crypto/a;->processBlock([BII)[B

    move-result-object p1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_a} :catch_138

    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xc0

    xor-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_16

    invoke-virtual {p0, p1}, Li1/h;->d([B)V

    return v1

    :cond_16
    array-length v2, p1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-byte v2, p1, v2

    and-int/lit8 v2, v2, 0xf

    xor-int/lit8 v2, v2, 0xc

    if-eqz v2, :cond_25

    invoke-virtual {p0, p1}, Li1/h;->d([B)V

    return v1

    :cond_25
    array-length v2, p1

    sub-int/2addr v2, v3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    xor-int/lit16 v2, v2, 0xbc

    if-nez v2, :cond_31

    move v4, v3

    goto :goto_6a

    :cond_31
    array-length v2, p1

    const/4 v4, 0x2

    sub-int/2addr v2, v4

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    array-length v5, p1

    sub-int/2addr v5, v3

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v2, v5

    sget-object v5, Li1/i;->a:Ljava/util/Map;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/v;->getAlgorithmName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_130

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v2, v5, :cond_6a

    const/16 v6, 0x3acc

    if-ne v5, v6, :cond_5e

    const/16 v5, 0x40cc

    if-ne v2, v5, :cond_5e

    goto :goto_6a

    :cond_5e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "signer initialised with wrong digest for trailer "

    invoke-static {v2, p1}, Lb/b;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6a
    :goto_6a
    move v2, v1

    :goto_6b
    array-length v5, p1

    if-eq v2, v5, :cond_7a

    aget-byte v5, p1, v2

    and-int/lit8 v5, v5, 0xf

    xor-int/lit8 v5, v5, 0xa

    if-nez v5, :cond_77

    goto :goto_7a

    :cond_77
    add-int/lit8 v2, v2, 0x1

    goto :goto_6b

    :cond_7a
    :goto_7a
    add-int/2addr v2, v3

    invoke-interface {v0}, Lorg/bouncycastle/crypto/v;->getDigestSize()I

    move-result v5

    new-array v6, v5, [B

    array-length v7, p1

    sub-int/2addr v7, v4

    sub-int/2addr v7, v5

    sub-int v4, v7, v2

    if-gtz v4, :cond_8c

    invoke-virtual {p0, p1}, Li1/h;->d([B)V

    return v1

    :cond_8c
    aget-byte v8, p1, v1

    and-int/lit8 v8, v8, 0x20

    if-nez v8, :cond_c5

    iget v8, p0, Li1/h;->m:I

    if-le v8, v4, :cond_9a

    invoke-virtual {p0, p1}, Li1/h;->d([B)V

    return v1

    :cond_9a
    invoke-interface {v0}, Lorg/bouncycastle/crypto/v;->reset()V

    invoke-interface {v0, p1, v2, v4}, Lorg/bouncycastle/crypto/v;->update([BII)V

    invoke-interface {v0, v6, v1}, Lorg/bouncycastle/crypto/v;->doFinal([BI)I

    move v0, v1

    move v8, v3

    :goto_a5
    if-eq v0, v5, :cond_b7

    add-int v9, v7, v0

    aget-byte v10, p1, v9

    aget-byte v11, v6, v0

    xor-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, p1, v9

    if-eqz v10, :cond_b4

    move v8, v1

    :cond_b4
    add-int/lit8 v0, v0, 0x1

    goto :goto_a5

    :cond_b7
    if-nez v8, :cond_bd

    invoke-virtual {p0, p1}, Li1/h;->d([B)V

    return v1

    :cond_bd
    new-array v0, v4, [B

    iput-object v0, p0, Li1/h;->n:[B

    invoke-static {p1, v2, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_e9

    :cond_c5
    invoke-interface {v0, v6, v1}, Lorg/bouncycastle/crypto/v;->doFinal([BI)I

    move v0, v1

    move v8, v3

    :goto_ca
    if-eq v0, v5, :cond_dc

    add-int v9, v7, v0

    aget-byte v10, p1, v9

    aget-byte v11, v6, v0

    xor-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, p1, v9

    if-eqz v10, :cond_d9

    move v8, v1

    :cond_d9
    add-int/lit8 v0, v0, 0x1

    goto :goto_ca

    :cond_dc
    if-nez v8, :cond_e2

    invoke-virtual {p0, p1}, Li1/h;->d([B)V

    return v1

    :cond_e2
    new-array v0, v4, [B

    iput-object v0, p0, Li1/h;->n:[B

    invoke-static {p1, v2, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_e9
    iget v0, p0, Li1/h;->m:I

    if-eqz v0, :cond_125

    iget-object v2, p0, Li1/h;->l:[B

    iget-object v4, p0, Li1/h;->n:[B

    array-length v5, v2

    if-le v0, v5, :cond_10b

    array-length v0, v2

    array-length v5, v4

    if-le v0, v5, :cond_fa

    move v0, v1

    goto :goto_fb

    :cond_fa
    move v0, v3

    :goto_fb
    move v5, v1

    :goto_fc
    iget-object v6, p0, Li1/h;->l:[B

    array-length v6, v6

    if-eq v5, v6, :cond_11f

    aget-byte v6, v2, v5

    aget-byte v7, v4, v5

    if-eq v6, v7, :cond_108

    move v0, v1

    :cond_108
    add-int/lit8 v5, v5, 0x1

    goto :goto_fc

    :cond_10b
    array-length v5, v4

    if-eq v0, v5, :cond_110

    move v0, v1

    goto :goto_111

    :cond_110
    move v0, v3

    :goto_111
    move v5, v1

    :goto_112
    array-length v6, v4

    if-eq v5, v6, :cond_11f

    aget-byte v6, v2, v5

    aget-byte v7, v4, v5

    if-eq v6, v7, :cond_11c

    move v0, v1

    :cond_11c
    add-int/lit8 v5, v5, 0x1

    goto :goto_112

    :cond_11f
    if-nez v0, :cond_125

    invoke-virtual {p0, p1}, Li1/h;->d([B)V

    return v1

    :cond_125
    iget-object v0, p0, Li1/h;->l:[B

    invoke-static {v0}, Li1/h;->c([B)V

    invoke-static {p1}, Li1/h;->c([B)V

    iput v1, p0, Li1/h;->m:I

    return v3

    :cond_130
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unrecognised hash in signature"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_138
    return v1
.end method

.method public final b()[B
    .registers 8

    iget-object v0, p0, Li1/h;->g:Lorg/bouncycastle/crypto/v;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/v;->getDigestSize()I

    move-result v1

    iget v2, p0, Li1/h;->i:I

    const/16 v3, 0xbc

    const/16 v4, 0x8

    if-ne v2, v3, :cond_22

    iget-object v2, p0, Li1/h;->k:[B

    array-length v3, v2

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v2, v3}, Lorg/bouncycastle/crypto/v;->doFinal([BI)I

    iget-object v0, p0, Li1/h;->k:[B

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    const/16 v5, -0x44

    aput-byte v5, v0, v2

    move v0, v4

    goto :goto_3e

    :cond_22
    iget-object v3, p0, Li1/h;->k:[B

    array-length v5, v3

    sub-int/2addr v5, v1

    add-int/lit8 v5, v5, -0x2

    invoke-interface {v0, v3, v5}, Lorg/bouncycastle/crypto/v;->doFinal([BI)I

    iget-object v0, p0, Li1/h;->k:[B

    array-length v3, v0

    add-int/lit8 v3, v3, -0x2

    ushr-int/lit8 v6, v2, 0x8

    int-to-byte v6, v6

    aput-byte v6, v0, v3

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    int-to-byte v2, v2

    aput-byte v2, v0, v3

    const/16 v0, 0x10

    move v3, v5

    :goto_3e
    iget v2, p0, Li1/h;->m:I

    add-int/2addr v1, v2

    mul-int/2addr v1, v4

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x4

    iget v0, p0, Li1/h;->j:I

    sub-int/2addr v1, v0

    const/4 v0, 0x0

    if-lez v1, :cond_5e

    add-int/lit8 v1, v1, 0x7

    div-int/2addr v1, v4

    sub-int/2addr v2, v1

    sub-int/2addr v3, v2

    iget-object v1, p0, Li1/h;->l:[B

    iget-object v4, p0, Li1/h;->k:[B

    invoke-static {v1, v0, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v1, v2, [B

    iput-object v1, p0, Li1/h;->n:[B

    const/16 v1, 0x60

    goto :goto_6e

    :cond_5e
    sub-int/2addr v3, v2

    iget-object v1, p0, Li1/h;->l:[B

    iget-object v4, p0, Li1/h;->k:[B

    invoke-static {v1, v0, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Li1/h;->m:I

    new-array v1, v1, [B

    iput-object v1, p0, Li1/h;->n:[B

    const/16 v1, 0x40

    :goto_6e
    add-int/lit8 v3, v3, -0x1

    if-lez v3, :cond_90

    move v2, v3

    :goto_73
    if-eqz v2, :cond_7e

    iget-object v4, p0, Li1/h;->k:[B

    const/16 v5, -0x45

    aput-byte v5, v4, v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_73

    :cond_7e
    iget-object v2, p0, Li1/h;->k:[B

    aget-byte v4, v2, v3

    xor-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/16 v3, 0xb

    aput-byte v3, v2, v0

    or-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, v2, v0

    goto :goto_9a

    :cond_90
    iget-object v2, p0, Li1/h;->k:[B

    const/16 v3, 0xa

    aput-byte v3, v2, v0

    or-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, v2, v0

    :goto_9a
    iget-object v1, p0, Li1/h;->h:Lorg/bouncycastle/crypto/a;

    iget-object v2, p0, Li1/h;->k:[B

    array-length v3, v2

    invoke-interface {v1, v2, v0, v3}, Lorg/bouncycastle/crypto/a;->processBlock([BII)[B

    move-result-object v1

    iget-object v2, p0, Li1/h;->l:[B

    iget-object v3, p0, Li1/h;->n:[B

    array-length v4, v3

    invoke-static {v2, v0, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Li1/h;->m:I

    iget-object v0, p0, Li1/h;->l:[B

    invoke-static {v0}, Li1/h;->c([B)V

    iget-object p0, p0, Li1/h;->k:[B

    invoke-static {p0}, Li1/h;->c([B)V

    return-object v1
.end method

.method public final d([B)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Li1/h;->m:I

    iget-object p0, p0, Li1/h;->l:[B

    invoke-static {p0}, Li1/h;->c([B)V

    invoke-static {p1}, Li1/h;->c([B)V

    return-void
.end method

.method public final init(ZLorg/bouncycastle/crypto/g;)V
    .registers 5

    iget-object v0, p0, Li1/h;->g:Lorg/bouncycastle/crypto/v;

    check-cast p2, Le1/z0;

    iget-object v1, p0, Li1/h;->h:Lorg/bouncycastle/crypto/a;

    invoke-interface {v1, p1, p2}, Lorg/bouncycastle/crypto/a;->init(ZLorg/bouncycastle/crypto/g;)V

    iget-object p1, p2, Le1/z0;->d:Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    iput p1, p0, Li1/h;->j:I

    add-int/lit8 p1, p1, 0x7

    div-int/lit8 p1, p1, 0x8

    new-array p2, p1, [B

    iput-object p2, p0, Li1/h;->k:[B

    iget p2, p0, Li1/h;->i:I

    const/16 v1, 0xbc

    if-ne p2, v1, :cond_2b

    invoke-interface {v0}, Lorg/bouncycastle/crypto/v;->getDigestSize()I

    move-result p2

    sub-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x2

    new-array p1, p1, [B

    iput-object p1, p0, Li1/h;->l:[B

    goto :goto_36

    :cond_2b
    invoke-interface {v0}, Lorg/bouncycastle/crypto/v;->getDigestSize()I

    move-result p2

    sub-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x3

    new-array p1, p1, [B

    iput-object p1, p0, Li1/h;->l:[B

    :goto_36
    invoke-interface {v0}, Lorg/bouncycastle/crypto/v;->reset()V

    const/4 p1, 0x0

    iput p1, p0, Li1/h;->m:I

    iget-object p1, p0, Li1/h;->l:[B

    invoke-static {p1}, Li1/h;->c([B)V

    iget-object p1, p0, Li1/h;->n:[B

    if-eqz p1, :cond_48

    invoke-static {p1}, Li1/h;->c([B)V

    :cond_48
    const/4 p1, 0x0

    iput-object p1, p0, Li1/h;->n:[B

    return-void
.end method

.method public final update(B)V
    .registers 5

    iget-object v0, p0, Li1/h;->g:Lorg/bouncycastle/crypto/v;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/v;->update(B)V

    iget v0, p0, Li1/h;->m:I

    iget-object v1, p0, Li1/h;->l:[B

    array-length v2, v1

    if-ge v0, v2, :cond_e

    aput-byte p1, v1, v0

    :cond_e
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Li1/h;->m:I

    return-void
.end method

.method public final update([BII)V
    .registers 6

    :goto_0
    if-lez p3, :cond_13

    iget v0, p0, Li1/h;->m:I

    iget-object v1, p0, Li1/h;->l:[B

    array-length v1, v1

    if-ge v0, v1, :cond_13

    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Li1/h;->update(B)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_13
    iget-object v0, p0, Li1/h;->g:Lorg/bouncycastle/crypto/v;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/v;->update([BII)V

    iget p1, p0, Li1/h;->m:I

    add-int/2addr p1, p3

    iput p1, p0, Li1/h;->m:I

    return-void
.end method
