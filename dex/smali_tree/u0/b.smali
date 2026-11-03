.class public final Lu0/b;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/a;


# instance fields
.field public final a:Lorg/bouncycastle/crypto/a;

.field public final b:Lorg/bouncycastle/crypto/v;

.field public final c:I

.field public final d:[B

.field public e:Ljava/security/SecureRandom;

.field public f:Z


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/a;Lorg/bouncycastle/crypto/v;Lorg/bouncycastle/crypto/v;[B)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu0/b;->a:Lorg/bouncycastle/crypto/a;

    iput-object p3, p0, Lu0/b;->b:Lorg/bouncycastle/crypto/v;

    instance-of p1, p3, Lm4/e;

    if-eqz p1, :cond_18

    instance-of p1, p3, Lorg/bouncycastle/crypto/w;

    if-eqz p1, :cond_18

    check-cast p3, Lorg/bouncycastle/crypto/w;

    invoke-interface {p3}, Lorg/bouncycastle/crypto/w;->getByteLength()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_1b

    :cond_18
    const p1, 0x7fffffff

    :goto_1b
    iput p1, p0, Lu0/b;->c:I

    invoke-interface {p2}, Lorg/bouncycastle/crypto/v;->getDigestSize()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lu0/b;->d:[B

    invoke-interface {p2}, Lorg/bouncycastle/crypto/v;->reset()V

    const/4 p0, 0x0

    if-eqz p4, :cond_2f

    array-length p3, p4

    invoke-interface {p2, p4, p0, p3}, Lorg/bouncycastle/crypto/v;->update([BII)V

    :cond_2f
    invoke-interface {p2, p1, p0}, Lorg/bouncycastle/crypto/v;->doFinal([BI)I

    return-void
.end method


# virtual methods
.method public final a(IIII[B[B)V
    .registers 15

    iget-object v0, p0, Lu0/b;->b:Lorg/bouncycastle/crypto/v;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/v;->getDigestSize()I

    move-result v1

    new-array v2, v1, [B

    const/4 v3, 0x4

    new-array v4, v3, [B

    add-int/2addr p4, p3

    sub-int v5, p4, v1

    invoke-interface {v0, p5, p1, p2}, Lorg/bouncycastle/crypto/v;->update([BII)V

    iget p0, p0, Lu0/b;->c:I

    const/4 v6, 0x0

    if-le p2, p0, :cond_34

    move-object p0, v0

    check-cast p0, Lm4/e;

    invoke-interface {p0}, Lm4/e;->a()Lm4/e;

    move-result-object p1

    move p2, v6

    :goto_1e
    if-ge p3, v5, :cond_4c

    add-int/lit8 p5, p2, 0x1

    invoke-static {v4, p2, v6}, Lm4/d;->w([BII)V

    invoke-interface {v0, v4, v6, v3}, Lorg/bouncycastle/crypto/v;->update([BII)V

    invoke-interface {v0, v2, v6}, Lorg/bouncycastle/crypto/v;->doFinal([BI)I

    invoke-interface {p0, p1}, Lm4/e;->c(Lm4/e;)V

    invoke-static {v2, v1, v6, p6, p3}, Lm4/d;->L([BII[BI)V

    add-int/2addr p3, v1

    move p2, p5

    goto :goto_1e

    :cond_34
    move p0, v6

    :goto_35
    if-ge p3, v5, :cond_4b

    add-int/lit8 v7, p0, 0x1

    invoke-static {v4, p0, v6}, Lm4/d;->w([BII)V

    invoke-interface {v0, v4, v6, v3}, Lorg/bouncycastle/crypto/v;->update([BII)V

    invoke-interface {v0, v2, v6}, Lorg/bouncycastle/crypto/v;->doFinal([BI)I

    invoke-interface {v0, p5, p1, p2}, Lorg/bouncycastle/crypto/v;->update([BII)V

    invoke-static {v2, v1, v6, p6, p3}, Lm4/d;->L([BII[BI)V

    add-int/2addr p3, v1

    move p0, v7

    goto :goto_35

    :cond_4b
    move p2, p0

    :cond_4c
    invoke-static {v4, p2, v6}, Lm4/d;->w([BII)V

    invoke-interface {v0, v4, v6, v3}, Lorg/bouncycastle/crypto/v;->update([BII)V

    invoke-interface {v0, v2, v6}, Lorg/bouncycastle/crypto/v;->doFinal([BI)I

    sub-int/2addr p4, p3

    invoke-static {v2, p4, v6, p6, p3}, Lm4/d;->L([BII[BI)V

    return-void
.end method

.method public final getInputBlockSize()I
    .registers 3

    iget-object v0, p0, Lu0/b;->a:Lorg/bouncycastle/crypto/a;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/a;->getInputBlockSize()I

    move-result v0

    iget-boolean v1, p0, Lu0/b;->f:Z

    if-eqz v1, :cond_12

    add-int/lit8 v0, v0, -0x1

    iget-object p0, p0, Lu0/b;->d:[B

    array-length p0, p0

    mul-int/lit8 p0, p0, 0x2

    sub-int/2addr v0, p0

    :cond_12
    return v0
.end method

.method public final getOutputBlockSize()I
    .registers 3

    iget-object v0, p0, Lu0/b;->a:Lorg/bouncycastle/crypto/a;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/a;->getOutputBlockSize()I

    move-result v0

    iget-boolean v1, p0, Lu0/b;->f:Z

    if-eqz v1, :cond_b

    return v0

    :cond_b
    add-int/lit8 v0, v0, -0x1

    iget-object p0, p0, Lu0/b;->d:[B

    array-length p0, p0

    mul-int/lit8 p0, p0, 0x2

    sub-int/2addr v0, p0

    return v0
.end method

.method public final init(ZLorg/bouncycastle/crypto/g;)V
    .registers 5

    instance-of v0, p2, Le1/t0;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    move-object v0, p2

    check-cast v0, Le1/t0;

    iget-object v0, v0, Le1/t0;->c:Ljava/security/SecureRandom;

    goto :goto_c

    :cond_b
    move-object v0, v1

    :goto_c
    if-eqz p1, :cond_19

    if-nez v0, :cond_16

    invoke-static {}, Lorg/bouncycastle/crypto/o;->b()Ljava/security/SecureRandom;

    move-result-object v0

    :goto_14
    move-object v1, v0

    goto :goto_19

    :cond_16
    sget-object v1, Lorg/bouncycastle/crypto/o;->a:Ljava/lang/ThreadLocal;

    goto :goto_14

    :cond_19
    :goto_19
    iput-object v1, p0, Lu0/b;->e:Ljava/security/SecureRandom;

    iput-boolean p1, p0, Lu0/b;->f:Z

    iget-object p0, p0, Lu0/b;->a:Lorg/bouncycastle/crypto/a;

    invoke-interface {p0, p1, p2}, Lorg/bouncycastle/crypto/a;->init(ZLorg/bouncycastle/crypto/g;)V

    return-void
.end method

.method public final processBlock([BII)[B
    .registers 16

    iget-boolean v4, p0, Lu0/b;->f:Z

    iget-object v7, p0, Lu0/b;->a:Lorg/bouncycastle/crypto/a;

    iget-object v5, p0, Lu0/b;->b:Lorg/bouncycastle/crypto/v;

    iget-object v8, p0, Lu0/b;->d:[B

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v4, :cond_58

    invoke-virtual {p0}, Lu0/b;->getInputBlockSize()I

    move-result v4

    if-gt p3, v4, :cond_50

    add-int/2addr v4, v10

    array-length v6, v8

    mul-int/lit8 v6, v6, 0x2

    add-int v11, v6, v4

    new-array v6, v11, [B

    sub-int v4, v11, p3

    invoke-static {p1, p2, v6, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v4, v10

    aput-byte v10, v6, v4

    array-length v1, v8

    array-length v2, v8

    invoke-static {v8, v9, v6, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v8

    move-object v4, v5

    new-array v5, v2, [B

    iget-object v1, p0, Lu0/b;->e:Ljava/security/SecureRandom;

    invoke-virtual {v1, v5}, Ljava/security/SecureRandom;->nextBytes([B)V

    array-length v1, v8

    invoke-static {v5, v9, v6, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {v4}, Lorg/bouncycastle/crypto/v;->reset()V

    array-length v3, v8

    array-length v1, v8

    sub-int v4, v11, v1

    const/4 v1, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lu0/b;->a(IIII[B[B)V

    move-object v5, v6

    array-length v1, v8

    array-length v0, v8

    sub-int v2, v11, v0

    const/4 v3, 0x0

    array-length v4, v8

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lu0/b;->a(IIII[B[B)V

    invoke-interface {v7, v5, v9, v11}, Lorg/bouncycastle/crypto/a;->processBlock([BII)[B

    move-result-object v0

    return-object v0

    :cond_50
    new-instance v0, Lorg/bouncycastle/crypto/q;

    const-string v1, "input data too long"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_58
    move-object v4, v5

    invoke-virtual {p0}, Lu0/b;->getOutputBlockSize()I

    move-result v0

    invoke-interface {v7}, Lorg/bouncycastle/crypto/a;->getOutputBlockSize()I

    move-result v11

    new-array v5, v11, [B

    invoke-interface {v7, p1, p2, p3}, Lorg/bouncycastle/crypto/a;->processBlock([BII)[B

    move-result-object v1

    array-length v2, v1

    sub-int v2, v11, v2

    or-int/2addr v0, v2

    shr-int/lit8 v7, v0, 0x1f

    array-length v0, v1

    invoke-static {v11, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int v2, v11, v0

    invoke-static {v1, v9, v5, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v1, v9}, Ljava/util/Arrays;->fill([BB)V

    invoke-interface {v4}, Lorg/bouncycastle/crypto/v;->reset()V

    array-length v1, v8

    array-length v0, v8

    sub-int v2, v11, v0

    const/4 v3, 0x0

    array-length v4, v8

    move-object v6, v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lu0/b;->a(IIII[B[B)V

    array-length v2, v8

    array-length v3, v8

    array-length v0, v8

    sub-int v4, v11, v0

    const/4 v1, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lu0/b;->a(IIII[B[B)V

    move v0, v9

    :goto_93
    array-length v1, v8

    if-eq v0, v1, :cond_a1

    aget-byte v1, v8, v0

    array-length v2, v8

    add-int/2addr v2, v0

    aget-byte v2, v5, v2

    xor-int/2addr v1, v2

    or-int/2addr v7, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_93

    :cond_a1
    array-length v0, v8

    mul-int/lit8 v0, v0, 0x2

    const/4 v1, -0x1

    :goto_a5
    if-eq v0, v11, :cond_b4

    aget-byte v2, v5, v0

    and-int/lit16 v2, v2, 0xff

    neg-int v2, v2

    and-int/2addr v2, v1

    shr-int/lit8 v2, v2, 0x1f

    and-int/2addr v2, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_a5

    :cond_b4
    shr-int/lit8 v0, v1, 0x1f

    or-int/2addr v0, v7

    add-int/lit8 v2, v1, 0x1

    aget-byte v2, v5, v2

    xor-int/2addr v2, v10

    or-int/2addr v0, v2

    if-nez v0, :cond_cb

    add-int/lit8 v1, v1, 0x2

    sub-int/2addr v11, v1

    new-array v0, v11, [B

    invoke-static {v5, v1, v0, v9, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v5, v9}, Ljava/util/Arrays;->fill([BB)V

    return-object v0

    :cond_cb
    invoke-static {v5, v9}, Ljava/util/Arrays;->fill([BB)V

    new-instance v0, Lorg/bouncycastle/crypto/x;

    const-string v1, "data wrong"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method
