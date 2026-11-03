.class public final Ls0/z;
.super Ls0/j;


# instance fields
.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public final p:[I

.field public q:I


# direct methods
.method public constructor <init>()V
    .registers 2

    sget-object v0, Lorg/bouncycastle/crypto/j;->d:Lorg/bouncycastle/crypto/j;

    invoke-direct {p0, v0}, Ls0/z;-><init>(Lorg/bouncycastle/crypto/j;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/j;)V
    .registers 2

    invoke-direct {p0, p1}, Ls0/j;-><init>(Lorg/bouncycastle/crypto/j;)V

    const/16 p1, 0x50

    new-array p1, p1, [I

    iput-object p1, p0, Ls0/z;->p:[I

    invoke-static {p0}, Ls0/o0;->a(Lorg/bouncycastle/crypto/v;)Lr0/a;

    invoke-static {}, Lorg/bouncycastle/crypto/o;->a()V

    invoke-virtual {p0}, Ls0/z;->reset()V

    return-void
.end method

.method public constructor <init>(Ls0/z;)V
    .registers 3

    invoke-direct {p0, p1}, Ls0/j;-><init>(Ls0/j;)V

    const/16 v0, 0x50

    new-array v0, v0, [I

    iput-object v0, p0, Ls0/z;->p:[I

    invoke-static {p0}, Ls0/o0;->a(Lorg/bouncycastle/crypto/v;)Lr0/a;

    invoke-static {}, Lorg/bouncycastle/crypto/o;->a()V

    invoke-virtual {p0, p1}, Ls0/z;->i(Ls0/z;)V

    return-void
.end method


# virtual methods
.method public final a()Lm4/e;
    .registers 2

    new-instance v0, Ls0/z;

    invoke-direct {v0, p0}, Ls0/z;-><init>(Ls0/z;)V

    return-object v0
.end method

.method public final c(Lm4/e;)V
    .registers 2

    check-cast p1, Ls0/z;

    invoke-virtual {p0, p1}, Ls0/j;->d(Ls0/j;)V

    invoke-virtual {p0, p1}, Ls0/z;->i(Ls0/z;)V

    return-void
.end method

.method public final doFinal([BI)I
    .registers 5

    invoke-virtual {p0}, Ls0/j;->e()V

    iget v0, p0, Ls0/z;->k:I

    invoke-static {p1, v0, p2}, Lm4/d;->w([BII)V

    iget v0, p0, Ls0/z;->l:I

    add-int/lit8 v1, p2, 0x4

    invoke-static {p1, v0, v1}, Lm4/d;->w([BII)V

    iget v0, p0, Ls0/z;->m:I

    add-int/lit8 v1, p2, 0x8

    invoke-static {p1, v0, v1}, Lm4/d;->w([BII)V

    iget v0, p0, Ls0/z;->n:I

    add-int/lit8 v1, p2, 0xc

    invoke-static {p1, v0, v1}, Lm4/d;->w([BII)V

    iget v0, p0, Ls0/z;->o:I

    add-int/lit8 p2, p2, 0x10

    invoke-static {p1, v0, p2}, Lm4/d;->w([BII)V

    invoke-virtual {p0}, Ls0/z;->reset()V

    const/16 p0, 0x14

    return p0
.end method

.method public final f()V
    .registers 18

    move-object/from16 v0, p0

    const/16 v1, 0x10

    move v2, v1

    :goto_5
    const/16 v3, 0x50

    iget-object v4, v0, Ls0/z;->p:[I

    if-ge v2, v3, :cond_28

    add-int/lit8 v3, v2, -0x3

    aget v3, v4, v3

    add-int/lit8 v5, v2, -0x8

    aget v5, v4, v5

    xor-int/2addr v3, v5

    add-int/lit8 v5, v2, -0xe

    aget v5, v4, v5

    xor-int/2addr v3, v5

    add-int/lit8 v5, v2, -0x10

    aget v5, v4, v5

    xor-int/2addr v3, v5

    shl-int/lit8 v5, v3, 0x1

    ushr-int/lit8 v3, v3, 0x1f

    or-int/2addr v3, v5

    aput v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_28
    iget v2, v0, Ls0/z;->k:I

    iget v3, v0, Ls0/z;->l:I

    iget v5, v0, Ls0/z;->m:I

    iget v6, v0, Ls0/z;->n:I

    iget v7, v0, Ls0/z;->o:I

    const/4 v8, 0x0

    move v9, v8

    move v10, v9

    :goto_35
    const/4 v11, 0x4

    if-ge v9, v11, :cond_b7

    shl-int/lit8 v11, v2, 0x5

    ushr-int/lit8 v12, v2, 0x1b

    or-int/2addr v11, v12

    and-int v12, v3, v5

    not-int v13, v3

    and-int/2addr v13, v6

    or-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/lit8 v11, v10, 0x1

    aget v13, v4, v10

    const v14, 0x5a827999

    invoke-static {v12, v13, v14, v7}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->t(IIII)I

    move-result v7

    shl-int/lit8 v12, v3, 0x1e

    ushr-int/lit8 v3, v3, 0x2

    or-int/2addr v3, v12

    shl-int/lit8 v12, v7, 0x5

    ushr-int/lit8 v13, v7, 0x1b

    or-int/2addr v12, v13

    and-int v13, v2, v3

    not-int v15, v2

    and-int/2addr v15, v5

    or-int/2addr v13, v15

    add-int/2addr v13, v12

    add-int/lit8 v12, v10, 0x2

    aget v11, v4, v11

    invoke-static {v13, v11, v14, v6}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->t(IIII)I

    move-result v6

    shl-int/lit8 v11, v2, 0x1e

    ushr-int/lit8 v2, v2, 0x2

    or-int/2addr v2, v11

    shl-int/lit8 v11, v6, 0x5

    ushr-int/lit8 v13, v6, 0x1b

    or-int/2addr v11, v13

    and-int v13, v7, v2

    not-int v15, v7

    and-int/2addr v15, v3

    or-int/2addr v13, v15

    add-int/2addr v13, v11

    add-int/lit8 v11, v10, 0x3

    aget v12, v4, v12

    invoke-static {v13, v12, v14, v5}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->t(IIII)I

    move-result v5

    shl-int/lit8 v12, v7, 0x1e

    ushr-int/lit8 v7, v7, 0x2

    or-int/2addr v7, v12

    shl-int/lit8 v12, v5, 0x5

    ushr-int/lit8 v13, v5, 0x1b

    or-int/2addr v12, v13

    and-int v13, v6, v7

    not-int v15, v6

    and-int/2addr v15, v2

    or-int/2addr v13, v15

    add-int/2addr v13, v12

    add-int/lit8 v12, v10, 0x4

    aget v11, v4, v11

    invoke-static {v13, v11, v14, v3}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->t(IIII)I

    move-result v3

    shl-int/lit8 v11, v6, 0x1e

    ushr-int/lit8 v6, v6, 0x2

    or-int/2addr v6, v11

    shl-int/lit8 v11, v3, 0x5

    ushr-int/lit8 v13, v3, 0x1b

    or-int/2addr v11, v13

    and-int v13, v5, v6

    not-int v15, v5

    and-int/2addr v15, v7

    or-int/2addr v13, v15

    add-int/2addr v13, v11

    add-int/lit8 v10, v10, 0x5

    aget v11, v4, v12

    invoke-static {v13, v11, v14, v2}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->t(IIII)I

    move-result v2

    shl-int/lit8 v11, v5, 0x1e

    ushr-int/lit8 v5, v5, 0x2

    or-int/2addr v5, v11

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_35

    :cond_b7
    move v9, v8

    :goto_b8
    if-ge v9, v11, :cond_12e

    shl-int/lit8 v12, v2, 0x5

    ushr-int/lit8 v13, v2, 0x1b

    or-int/2addr v12, v13

    xor-int v13, v3, v5

    xor-int/2addr v13, v6

    add-int/2addr v12, v13

    add-int/lit8 v13, v10, 0x1

    aget v14, v4, v10

    const v15, 0x6ed9eba1

    invoke-static {v12, v14, v15, v7}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->t(IIII)I

    move-result v7

    shl-int/lit8 v12, v3, 0x1e

    ushr-int/lit8 v3, v3, 0x2

    or-int/2addr v3, v12

    shl-int/lit8 v12, v7, 0x5

    ushr-int/lit8 v14, v7, 0x1b

    or-int/2addr v12, v14

    xor-int v14, v2, v3

    xor-int/2addr v14, v5

    add-int/2addr v12, v14

    add-int/lit8 v14, v10, 0x2

    aget v13, v4, v13

    invoke-static {v12, v13, v15, v6}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->t(IIII)I

    move-result v6

    shl-int/lit8 v12, v2, 0x1e

    ushr-int/lit8 v2, v2, 0x2

    or-int/2addr v2, v12

    shl-int/lit8 v12, v6, 0x5

    ushr-int/lit8 v13, v6, 0x1b

    or-int/2addr v12, v13

    xor-int v13, v7, v2

    xor-int/2addr v13, v3

    add-int/2addr v12, v13

    add-int/lit8 v13, v10, 0x3

    aget v14, v4, v14

    invoke-static {v12, v14, v15, v5}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->t(IIII)I

    move-result v5

    shl-int/lit8 v12, v7, 0x1e

    ushr-int/lit8 v7, v7, 0x2

    or-int/2addr v7, v12

    shl-int/lit8 v12, v5, 0x5

    ushr-int/lit8 v14, v5, 0x1b

    or-int/2addr v12, v14

    xor-int v14, v6, v7

    xor-int/2addr v14, v2

    add-int/2addr v12, v14

    add-int/lit8 v14, v10, 0x4

    aget v13, v4, v13

    invoke-static {v12, v13, v15, v3}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->t(IIII)I

    move-result v3

    shl-int/lit8 v12, v6, 0x1e

    ushr-int/lit8 v6, v6, 0x2

    or-int/2addr v6, v12

    shl-int/lit8 v12, v3, 0x5

    ushr-int/lit8 v13, v3, 0x1b

    or-int/2addr v12, v13

    xor-int v13, v5, v6

    xor-int/2addr v13, v7

    add-int/2addr v12, v13

    add-int/lit8 v10, v10, 0x5

    aget v13, v4, v14

    invoke-static {v12, v13, v15, v2}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->t(IIII)I

    move-result v2

    shl-int/lit8 v12, v5, 0x1e

    ushr-int/lit8 v5, v5, 0x2

    or-int/2addr v5, v12

    add-int/lit8 v9, v9, 0x1

    goto :goto_b8

    :cond_12e
    move v9, v8

    :goto_12f
    if-ge v9, v11, :cond_1b9

    shl-int/lit8 v12, v2, 0x5

    ushr-int/lit8 v13, v2, 0x1b

    or-int/2addr v12, v13

    or-int v13, v5, v6

    and-int/2addr v13, v3

    and-int v14, v5, v6

    or-int/2addr v13, v14

    add-int/2addr v13, v12

    add-int/lit8 v12, v10, 0x1

    aget v14, v4, v10

    const v15, -0x70e44324

    invoke-static {v13, v14, v15, v7}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->t(IIII)I

    move-result v7

    shl-int/lit8 v13, v3, 0x1e

    ushr-int/lit8 v3, v3, 0x2

    or-int/2addr v3, v13

    shl-int/lit8 v13, v7, 0x5

    ushr-int/lit8 v14, v7, 0x1b

    or-int/2addr v13, v14

    or-int v14, v3, v5

    and-int/2addr v14, v2

    and-int v16, v3, v5

    or-int v14, v14, v16

    add-int/2addr v14, v13

    add-int/lit8 v13, v10, 0x2

    aget v12, v4, v12

    invoke-static {v14, v12, v15, v6}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->t(IIII)I

    move-result v6

    shl-int/lit8 v12, v2, 0x1e

    ushr-int/lit8 v2, v2, 0x2

    or-int/2addr v2, v12

    shl-int/lit8 v12, v6, 0x5

    ushr-int/lit8 v14, v6, 0x1b

    or-int/2addr v12, v14

    or-int v14, v2, v3

    and-int/2addr v14, v7

    and-int v16, v2, v3

    or-int v14, v14, v16

    add-int/2addr v14, v12

    add-int/lit8 v12, v10, 0x3

    aget v13, v4, v13

    invoke-static {v14, v13, v15, v5}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->t(IIII)I

    move-result v5

    shl-int/lit8 v13, v7, 0x1e

    ushr-int/lit8 v7, v7, 0x2

    or-int/2addr v7, v13

    shl-int/lit8 v13, v5, 0x5

    ushr-int/lit8 v14, v5, 0x1b

    or-int/2addr v13, v14

    or-int v14, v7, v2

    and-int/2addr v14, v6

    and-int v16, v7, v2

    or-int v14, v14, v16

    add-int/2addr v14, v13

    add-int/lit8 v13, v10, 0x4

    aget v12, v4, v12

    invoke-static {v14, v12, v15, v3}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->t(IIII)I

    move-result v3

    shl-int/lit8 v12, v6, 0x1e

    ushr-int/lit8 v6, v6, 0x2

    or-int/2addr v6, v12

    shl-int/lit8 v12, v3, 0x5

    ushr-int/lit8 v14, v3, 0x1b

    or-int/2addr v12, v14

    or-int v14, v6, v7

    and-int/2addr v14, v5

    and-int v16, v6, v7

    or-int v14, v14, v16

    add-int/2addr v14, v12

    add-int/lit8 v10, v10, 0x5

    aget v12, v4, v13

    invoke-static {v14, v12, v15, v2}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->t(IIII)I

    move-result v2

    shl-int/lit8 v12, v5, 0x1e

    ushr-int/lit8 v5, v5, 0x2

    or-int/2addr v5, v12

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_12f

    :cond_1b9
    move v9, v8

    :goto_1ba
    const/4 v11, 0x3

    if-gt v9, v11, :cond_231

    shl-int/lit8 v11, v2, 0x5

    ushr-int/lit8 v12, v2, 0x1b

    or-int/2addr v11, v12

    xor-int v12, v3, v5

    xor-int/2addr v12, v6

    add-int/2addr v11, v12

    add-int/lit8 v12, v10, 0x1

    aget v13, v4, v10

    const v14, -0x359d3e2a    # -3715189.5f

    invoke-static {v11, v13, v14, v7}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->t(IIII)I

    move-result v7

    shl-int/lit8 v11, v3, 0x1e

    ushr-int/lit8 v3, v3, 0x2

    or-int/2addr v3, v11

    shl-int/lit8 v11, v7, 0x5

    ushr-int/lit8 v13, v7, 0x1b

    or-int/2addr v11, v13

    xor-int v13, v2, v3

    xor-int/2addr v13, v5

    add-int/2addr v11, v13

    add-int/lit8 v13, v10, 0x2

    aget v12, v4, v12

    invoke-static {v11, v12, v14, v6}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->t(IIII)I

    move-result v6

    shl-int/lit8 v11, v2, 0x1e

    ushr-int/lit8 v2, v2, 0x2

    or-int/2addr v2, v11

    shl-int/lit8 v11, v6, 0x5

    ushr-int/lit8 v12, v6, 0x1b

    or-int/2addr v11, v12

    xor-int v12, v7, v2

    xor-int/2addr v12, v3

    add-int/2addr v11, v12

    add-int/lit8 v12, v10, 0x3

    aget v13, v4, v13

    invoke-static {v11, v13, v14, v5}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->t(IIII)I

    move-result v5

    shl-int/lit8 v11, v7, 0x1e

    ushr-int/lit8 v7, v7, 0x2

    or-int/2addr v7, v11

    shl-int/lit8 v11, v5, 0x5

    ushr-int/lit8 v13, v5, 0x1b

    or-int/2addr v11, v13

    xor-int v13, v6, v7

    xor-int/2addr v13, v2

    add-int/2addr v11, v13

    add-int/lit8 v13, v10, 0x4

    aget v12, v4, v12

    invoke-static {v11, v12, v14, v3}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->t(IIII)I

    move-result v3

    shl-int/lit8 v11, v6, 0x1e

    ushr-int/lit8 v6, v6, 0x2

    or-int/2addr v6, v11

    shl-int/lit8 v11, v3, 0x5

    ushr-int/lit8 v12, v3, 0x1b

    or-int/2addr v11, v12

    xor-int v12, v5, v6

    xor-int/2addr v12, v7

    add-int/2addr v11, v12

    add-int/lit8 v10, v10, 0x5

    aget v12, v4, v13

    invoke-static {v11, v12, v14, v2}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->t(IIII)I

    move-result v2

    shl-int/lit8 v11, v5, 0x1e

    ushr-int/lit8 v5, v5, 0x2

    or-int/2addr v5, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_1ba

    :cond_231
    iget v9, v0, Ls0/z;->k:I

    add-int/2addr v9, v2

    iput v9, v0, Ls0/z;->k:I

    iget v2, v0, Ls0/z;->l:I

    add-int/2addr v2, v3

    iput v2, v0, Ls0/z;->l:I

    iget v2, v0, Ls0/z;->m:I

    add-int/2addr v2, v5

    iput v2, v0, Ls0/z;->m:I

    iget v2, v0, Ls0/z;->n:I

    add-int/2addr v2, v6

    iput v2, v0, Ls0/z;->n:I

    iget v2, v0, Ls0/z;->o:I

    add-int/2addr v2, v7

    iput v2, v0, Ls0/z;->o:I

    iput v8, v0, Ls0/z;->q:I

    move v0, v8

    :goto_24d
    if-ge v0, v1, :cond_254

    aput v8, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_24d

    :cond_254
    return-void
.end method

.method public final g(J)V
    .registers 7

    iget v0, p0, Ls0/z;->q:I

    const/16 v1, 0xe

    if-le v0, v1, :cond_9

    invoke-virtual {p0}, Ls0/z;->f()V

    :cond_9
    const/16 v0, 0x20

    ushr-long v2, p1, v0

    long-to-int v0, v2

    iget-object p0, p0, Ls0/z;->p:[I

    aput v0, p0, v1

    const/16 v0, 0xf

    long-to-int p1, p1

    aput p1, p0, v0

    return-void
.end method

.method public final getAlgorithmName()Ljava/lang/String;
    .registers 1

    const-string p0, "SHA-1"

    return-object p0
.end method

.method public final getDigestSize()I
    .registers 1

    const/16 p0, 0x14

    return p0
.end method

.method public final h(I[B)V
    .registers 4

    iget v0, p0, Ls0/z;->q:I

    invoke-static {p1, p2}, Lm4/d;->b(I[B)I

    move-result p1

    iget-object p2, p0, Ls0/z;->p:[I

    aput p1, p2, v0

    iget p1, p0, Ls0/z;->q:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ls0/z;->q:I

    const/16 p2, 0x10

    if-ne p1, p2, :cond_17

    invoke-virtual {p0}, Ls0/z;->f()V

    :cond_17
    return-void
.end method

.method public final i(Ls0/z;)V
    .registers 6

    iget v0, p1, Ls0/z;->k:I

    iput v0, p0, Ls0/z;->k:I

    iget v0, p1, Ls0/z;->l:I

    iput v0, p0, Ls0/z;->l:I

    iget v0, p1, Ls0/z;->m:I

    iput v0, p0, Ls0/z;->m:I

    iget v0, p1, Ls0/z;->n:I

    iput v0, p0, Ls0/z;->n:I

    iget v0, p1, Ls0/z;->o:I

    iput v0, p0, Ls0/z;->o:I

    iget-object v0, p1, Ls0/z;->p:[I

    iget-object v1, p0, Ls0/z;->p:[I

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p1, Ls0/z;->q:I

    iput p1, p0, Ls0/z;->q:I

    return-void
.end method

.method public final reset()V
    .registers 5

    invoke-super {p0}, Ls0/j;->reset()V

    const v0, 0x67452301

    iput v0, p0, Ls0/z;->k:I

    const v0, -0x10325477

    iput v0, p0, Ls0/z;->l:I

    const v0, -0x67452302

    iput v0, p0, Ls0/z;->m:I

    const v0, 0x10325476

    iput v0, p0, Ls0/z;->n:I

    const v0, -0x3c2d1e10

    iput v0, p0, Ls0/z;->o:I

    const/4 v0, 0x0

    iput v0, p0, Ls0/z;->q:I

    move v1, v0

    :goto_20
    iget-object v2, p0, Ls0/z;->p:[I

    array-length v3, v2

    if-eq v1, v3, :cond_2a

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    :cond_2a
    return-void
.end method
