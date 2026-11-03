.class public final Li1/j;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/m0;


# instance fields
.field public final g:Lorg/bouncycastle/crypto/v;

.field public final h:Lorg/bouncycastle/crypto/v;

.field public final i:Lorg/bouncycastle/crypto/v;

.field public final j:Lorg/bouncycastle/crypto/a;

.field public k:Ljava/security/SecureRandom;

.field public final l:I

.field public final m:I

.field public final n:I

.field public o:I

.field public final p:[B

.field public final q:[B

.field public r:[B

.field public final s:B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/a;Lorg/bouncycastle/crypto/v;Lorg/bouncycastle/crypto/v;IB)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li1/j;->j:Lorg/bouncycastle/crypto/a;

    iput-object p2, p0, Li1/j;->g:Lorg/bouncycastle/crypto/v;

    iput-object p2, p0, Li1/j;->h:Lorg/bouncycastle/crypto/v;

    iput-object p3, p0, Li1/j;->i:Lorg/bouncycastle/crypto/v;

    invoke-interface {p2}, Lorg/bouncycastle/crypto/v;->getDigestSize()I

    move-result p1

    iput p1, p0, Li1/j;->l:I

    invoke-interface {p3}, Lorg/bouncycastle/crypto/v;->getDigestSize()I

    move-result p2

    iput p2, p0, Li1/j;->m:I

    iput p4, p0, Li1/j;->n:I

    new-array p2, p4, [B

    iput-object p2, p0, Li1/j;->p:[B

    add-int/lit8 p4, p4, 0x8

    add-int/2addr p4, p1

    new-array p1, p4, [B

    iput-object p1, p0, Li1/j;->q:[B

    iput-byte p5, p0, Li1/j;->s:B

    return-void
.end method

.method public static c(I[B)V
    .registers 4

    ushr-int/lit8 v0, p0, 0x18

    int-to-byte v0, v0

    const/4 v1, 0x0

    aput-byte v0, p1, v1

    ushr-int/lit8 v0, p0, 0x10

    int-to-byte v0, v0

    const/4 v1, 0x1

    aput-byte v0, p1, v1

    ushr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    const/4 v1, 0x2

    aput-byte v0, p1, v1

    const/4 v0, 0x3

    int-to-byte p0, p0

    aput-byte p0, p1, v0

    return-void
.end method

.method public static d([B)V
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
    .registers 12

    iget-object v0, p0, Li1/j;->g:Lorg/bouncycastle/crypto/v;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/v;->getDigestSize()I

    move-result v1

    iget v2, p0, Li1/j;->l:I

    if-ne v1, v2, :cond_d2

    iget-object v1, p0, Li1/j;->q:[B

    array-length v3, v1

    sub-int/2addr v3, v2

    iget v4, p0, Li1/j;->n:I

    sub-int/2addr v3, v4

    invoke-interface {v0, v1, v3}, Lorg/bouncycastle/crypto/v;->doFinal([BI)I

    const/4 v0, 0x0

    :try_start_15
    iget-object v3, p0, Li1/j;->j:Lorg/bouncycastle/crypto/a;

    array-length v5, p1

    invoke-interface {v3, p1, v0, v5}, Lorg/bouncycastle/crypto/a;->processBlock([BII)[B

    move-result-object p1

    iget-object v3, p0, Li1/j;->r:[B

    array-length v5, v3

    array-length v6, p1

    sub-int/2addr v5, v6

    invoke-static {v3, v0, v5, v0}, Ljava/util/Arrays;->fill([BIIB)V

    iget-object v3, p0, Li1/j;->r:[B

    array-length v5, v3

    array-length v6, p1

    sub-int/2addr v5, v6

    array-length v6, p1

    invoke-static {p1, v0, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_2d} :catch_d1

    iget-object p1, p0, Li1/j;->r:[B

    array-length v3, p1

    mul-int/lit8 v3, v3, 0x8

    iget v5, p0, Li1/j;->o:I

    sub-int/2addr v3, v5

    const/16 v5, 0xff

    ushr-int v3, v5, v3

    aget-byte v5, p1, v0

    and-int/lit16 v6, v5, 0xff

    and-int/2addr v5, v3

    if-ne v6, v5, :cond_ce

    array-length v5, p1

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    aget-byte v5, p1, v5

    iget-byte v7, p0, Li1/j;->s:B

    if-eq v5, v7, :cond_4b

    goto/16 :goto_ce

    :cond_4b
    array-length v5, p1

    sub-int/2addr v5, v2

    sub-int/2addr v5, v6

    array-length v7, p1

    sub-int/2addr v7, v2

    sub-int/2addr v7, v6

    invoke-virtual {p0, p1, v5, v2, v7}, Li1/j;->e([BIII)[B

    move-result-object p1

    move v5, v0

    :goto_56
    array-length v7, p1

    if-eq v5, v7, :cond_66

    iget-object v7, p0, Li1/j;->r:[B

    aget-byte v8, v7, v5

    aget-byte v9, p1, v5

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_56

    :cond_66
    iget-object p1, p0, Li1/j;->r:[B

    aget-byte v5, p1, v0

    and-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, p1, v0

    move p1, v0

    :goto_6f
    iget-object v3, p0, Li1/j;->r:[B

    array-length v5, v3

    sub-int/2addr v5, v2

    sub-int/2addr v5, v4

    add-int/lit8 v5, v5, -0x2

    if-eq p1, v5, :cond_83

    aget-byte v5, v3, p1

    if-eqz v5, :cond_80

    invoke-static {v3}, Li1/j;->d([B)V

    return v0

    :cond_80
    add-int/lit8 p1, p1, 0x1

    goto :goto_6f

    :cond_83
    array-length p1, v3

    sub-int/2addr p1, v2

    sub-int/2addr p1, v4

    add-int/lit8 p1, p1, -0x2

    aget-byte p1, v3, p1

    if-eq p1, v6, :cond_90

    invoke-static {v3}, Li1/j;->d([B)V

    return v0

    :cond_90
    array-length p1, v3

    sub-int/2addr p1, v4

    sub-int/2addr p1, v2

    sub-int/2addr p1, v6

    array-length v5, v1

    sub-int/2addr v5, v4

    invoke-static {v3, p1, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, v1

    iget-object v3, p0, Li1/j;->h:Lorg/bouncycastle/crypto/v;

    invoke-interface {v3, v1, v0, p1}, Lorg/bouncycastle/crypto/v;->update([BII)V

    array-length p1, v1

    sub-int/2addr p1, v2

    invoke-interface {v3, v1, p1}, Lorg/bouncycastle/crypto/v;->doFinal([BI)I

    iget-object p1, p0, Li1/j;->r:[B

    array-length p1, p1

    sub-int/2addr p1, v2

    sub-int/2addr p1, v6

    array-length v3, v1

    sub-int/2addr v3, v2

    :goto_ab
    array-length v2, v1

    if-eq v3, v2, :cond_c5

    iget-object v2, p0, Li1/j;->r:[B

    aget-byte v2, v2, p1

    aget-byte v4, v1, v3

    xor-int/2addr v2, v4

    if-eqz v2, :cond_c0

    invoke-static {v1}, Li1/j;->d([B)V

    iget-object p0, p0, Li1/j;->r:[B

    invoke-static {p0}, Li1/j;->d([B)V

    return v0

    :cond_c0
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_ab

    :cond_c5
    invoke-static {v1}, Li1/j;->d([B)V

    iget-object p0, p0, Li1/j;->r:[B

    invoke-static {p0}, Li1/j;->d([B)V

    return v6

    :cond_ce
    :goto_ce
    invoke-static {p1}, Li1/j;->d([B)V

    :catch_d1
    return v0

    :cond_d2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public final b()[B
    .registers 10

    iget-object v0, p0, Li1/j;->g:Lorg/bouncycastle/crypto/v;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/v;->getDigestSize()I

    move-result v1

    iget v2, p0, Li1/j;->l:I

    if-ne v1, v2, :cond_86

    iget-object v1, p0, Li1/j;->q:[B

    array-length v3, v1

    sub-int/2addr v3, v2

    iget v4, p0, Li1/j;->n:I

    sub-int/2addr v3, v4

    invoke-interface {v0, v1, v3}, Lorg/bouncycastle/crypto/v;->doFinal([BI)I

    iget-object v0, p0, Li1/j;->p:[B

    const/4 v3, 0x0

    if-eqz v4, :cond_23

    iget-object v5, p0, Li1/j;->k:Ljava/security/SecureRandom;

    invoke-virtual {v5, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    array-length v5, v1

    sub-int/2addr v5, v4

    invoke-static {v0, v3, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_23
    new-array v5, v2, [B

    array-length v6, v1

    iget-object v7, p0, Li1/j;->h:Lorg/bouncycastle/crypto/v;

    invoke-interface {v7, v1, v3, v6}, Lorg/bouncycastle/crypto/v;->update([BII)V

    invoke-interface {v7, v5, v3}, Lorg/bouncycastle/crypto/v;->doFinal([BI)I

    iget-object v1, p0, Li1/j;->r:[B

    array-length v6, v1

    sub-int/2addr v6, v4

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    sub-int/2addr v6, v2

    sub-int/2addr v6, v7

    aput-byte v7, v1, v6

    array-length v6, v1

    sub-int/2addr v6, v4

    sub-int/2addr v6, v2

    sub-int/2addr v6, v7

    invoke-static {v0, v3, v1, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Li1/j;->r:[B

    array-length v0, v0

    sub-int/2addr v0, v2

    sub-int/2addr v0, v7

    invoke-virtual {p0, v5, v3, v2, v0}, Li1/j;->e([BIII)[B

    move-result-object v0

    move v1, v3

    :goto_49
    array-length v4, v0

    if-eq v1, v4, :cond_59

    iget-object v4, p0, Li1/j;->r:[B

    aget-byte v6, v4, v1

    aget-byte v8, v0, v1

    xor-int/2addr v6, v8

    int-to-byte v6, v6

    aput-byte v6, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_49

    :cond_59
    iget-object v0, p0, Li1/j;->r:[B

    array-length v1, v0

    sub-int/2addr v1, v2

    sub-int/2addr v1, v7

    invoke-static {v5, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Li1/j;->r:[B

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x8

    iget v2, p0, Li1/j;->o:I

    sub-int/2addr v1, v2

    const/16 v2, 0xff

    ushr-int v1, v2, v1

    aget-byte v2, v0, v3

    and-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    array-length v1, v0

    sub-int/2addr v1, v7

    iget-byte v2, p0, Li1/j;->s:B

    aput-byte v2, v0, v1

    iget-object v1, p0, Li1/j;->j:Lorg/bouncycastle/crypto/a;

    array-length v2, v0

    invoke-interface {v1, v0, v3, v2}, Lorg/bouncycastle/crypto/a;->processBlock([BII)[B

    move-result-object v0

    iget-object p0, p0, Li1/j;->r:[B

    invoke-static {p0}, Li1/j;->d([B)V

    return-object v0

    :cond_86
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public final e([BIII)[B
    .registers 13

    iget-object v0, p0, Li1/j;->i:Lorg/bouncycastle/crypto/v;

    instance-of v1, v0, Lorg/bouncycastle/crypto/q0;

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    new-array p0, p4, [B

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/v;->update([BII)V

    check-cast v0, Lorg/bouncycastle/crypto/q0;

    invoke-interface {v0, p0, v2, p4}, Lorg/bouncycastle/crypto/q0;->b([BII)I

    return-object p0

    :cond_12
    new-array v1, p4, [B

    iget p0, p0, Li1/j;->m:I

    new-array v3, p0, [B

    const/4 v4, 0x4

    new-array v5, v4, [B

    invoke-interface {v0}, Lorg/bouncycastle/crypto/v;->reset()V

    move v6, v2

    :goto_1f
    div-int v7, p4, p0

    if-ge v6, v7, :cond_37

    invoke-static {v6, v5}, Li1/j;->c(I[B)V

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/v;->update([BII)V

    invoke-interface {v0, v5, v2, v4}, Lorg/bouncycastle/crypto/v;->update([BII)V

    invoke-interface {v0, v3, v2}, Lorg/bouncycastle/crypto/v;->doFinal([BI)I

    mul-int v7, v6, p0

    invoke-static {v3, v2, v1, v7, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1f

    :cond_37
    mul-int/2addr p0, v6

    if-ge p0, p4, :cond_4a

    invoke-static {v6, v5}, Li1/j;->c(I[B)V

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/v;->update([BII)V

    invoke-interface {v0, v5, v2, v4}, Lorg/bouncycastle/crypto/v;->update([BII)V

    invoke-interface {v0, v3, v2}, Lorg/bouncycastle/crypto/v;->doFinal([BI)I

    sub-int/2addr p4, p0

    invoke-static {v3, v2, v1, p0, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4a
    return-object v1
.end method

.method public final init(ZLorg/bouncycastle/crypto/g;)V
    .registers 5

    instance-of v0, p2, Le1/t0;

    if-eqz v0, :cond_e

    check-cast p2, Le1/t0;

    iget-object v0, p2, Le1/t0;->d:Lorg/bouncycastle/crypto/g;

    iget-object p2, p2, Le1/t0;->c:Ljava/security/SecureRandom;

    iput-object p2, p0, Li1/j;->k:Ljava/security/SecureRandom;

    move-object p2, v0

    goto :goto_16

    :cond_e
    if-eqz p1, :cond_16

    invoke-static {}, Lorg/bouncycastle/crypto/o;->b()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Li1/j;->k:Ljava/security/SecureRandom;

    :cond_16
    :goto_16
    move-object v0, p2

    check-cast v0, Le1/z0;

    iget-object v1, p0, Li1/j;->j:Lorg/bouncycastle/crypto/a;

    invoke-interface {v1, p1, p2}, Lorg/bouncycastle/crypto/a;->init(ZLorg/bouncycastle/crypto/g;)V

    iget-object p1, v0, Le1/z0;->d:Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    add-int/lit8 p2, p1, -0x1

    iput p2, p0, Li1/j;->o:I

    iget v0, p0, Li1/j;->l:I

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Li1/j;->n:I

    mul-int/lit8 v1, v1, 0x8

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x9

    if-lt p2, v1, :cond_43

    add-int/lit8 p1, p1, 0x6

    div-int/lit8 p1, p1, 0x8

    new-array p1, p1, [B

    iput-object p1, p0, Li1/j;->r:[B

    iget-object p0, p0, Li1/j;->g:Lorg/bouncycastle/crypto/v;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/v;->reset()V

    return-void

    :cond_43
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "key too small for specified hash and salt lengths"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final update(B)V
    .registers 2

    iget-object p0, p0, Li1/j;->g:Lorg/bouncycastle/crypto/v;

    invoke-interface {p0, p1}, Lorg/bouncycastle/crypto/v;->update(B)V

    return-void
.end method

.method public final update([BII)V
    .registers 4

    iget-object p0, p0, Li1/j;->g:Lorg/bouncycastle/crypto/v;

    invoke-interface {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/v;->update([BII)V

    return-void
.end method
