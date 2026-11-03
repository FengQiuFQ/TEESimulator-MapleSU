.class public final Ls0/q;
.super Ls0/j;


# instance fields
.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public final o:[I

.field public p:I


# direct methods
.method public constructor <init>()V
    .registers 2

    sget-object v0, Lorg/bouncycastle/crypto/j;->d:Lorg/bouncycastle/crypto/j;

    invoke-direct {p0, v0}, Ls0/j;-><init>(Lorg/bouncycastle/crypto/j;)V

    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Ls0/q;->o:[I

    invoke-static {p0}, Ls0/o0;->a(Lorg/bouncycastle/crypto/v;)Lr0/a;

    invoke-static {}, Lorg/bouncycastle/crypto/o;->a()V

    invoke-virtual {p0}, Ls0/q;->reset()V

    return-void
.end method

.method public constructor <init>(Ls0/q;)V
    .registers 3

    iget-object v0, p1, Ls0/j;->g:Lorg/bouncycastle/crypto/j;

    invoke-direct {p0, v0}, Ls0/j;-><init>(Lorg/bouncycastle/crypto/j;)V

    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Ls0/q;->o:[I

    invoke-static {p0}, Ls0/o0;->a(Lorg/bouncycastle/crypto/v;)Lr0/a;

    invoke-static {}, Lorg/bouncycastle/crypto/o;->a()V

    invoke-virtual {p0, p1}, Ls0/q;->k(Ls0/q;)V

    return-void
.end method

.method public static i(III)I
    .registers 3

    and-int/2addr p1, p0

    not-int p0, p0

    and-int/2addr p0, p2

    or-int/2addr p0, p1

    return p0
.end method

.method public static j(III)I
    .registers 4

    or-int v0, p1, p2

    and-int/2addr p0, v0

    and-int/2addr p1, p2

    or-int/2addr p0, p1

    return p0
.end method

.method public static l(II)I
    .registers 3

    shl-int v0, p0, p1

    rsub-int/lit8 p1, p1, 0x20

    ushr-int/2addr p0, p1

    or-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public final a()Lm4/e;
    .registers 2

    new-instance v0, Ls0/q;

    invoke-direct {v0, p0}, Ls0/q;-><init>(Ls0/q;)V

    return-object v0
.end method

.method public final c(Lm4/e;)V
    .registers 2

    check-cast p1, Ls0/q;

    invoke-virtual {p0, p1}, Ls0/q;->k(Ls0/q;)V

    return-void
.end method

.method public final doFinal([BI)I
    .registers 5

    invoke-virtual {p0}, Ls0/j;->e()V

    iget v0, p0, Ls0/q;->k:I

    invoke-static {p1, v0, p2}, Lm4/d;->x([BII)V

    iget v0, p0, Ls0/q;->l:I

    add-int/lit8 v1, p2, 0x4

    invoke-static {p1, v0, v1}, Lm4/d;->x([BII)V

    iget v0, p0, Ls0/q;->m:I

    add-int/lit8 v1, p2, 0x8

    invoke-static {p1, v0, v1}, Lm4/d;->x([BII)V

    iget v0, p0, Ls0/q;->n:I

    add-int/lit8 p2, p2, 0xc

    invoke-static {p1, v0, p2}, Lm4/d;->x([BII)V

    invoke-virtual {p0}, Ls0/q;->reset()V

    const/16 p0, 0x10

    return p0
.end method

.method public final f()V
    .registers 26

    move-object/from16 v0, p0

    iget v1, v0, Ls0/q;->k:I

    iget v2, v0, Ls0/q;->l:I

    iget v3, v0, Ls0/q;->m:I

    iget v4, v0, Ls0/q;->n:I

    invoke-static {v2, v3, v4}, Ls0/q;->i(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v1, v0, Ls0/q;->o:[I

    const/4 v6, 0x0

    aget v7, v1, v6

    add-int/2addr v5, v7

    const/4 v7, 0x3

    invoke-static {v5, v7}, Ls0/q;->l(II)I

    move-result v5

    invoke-static {v5, v2, v3}, Ls0/q;->i(III)I

    move-result v8

    add-int/2addr v8, v4

    const/4 v4, 0x1

    aget v9, v1, v4

    add-int/2addr v8, v9

    const/4 v9, 0x7

    invoke-static {v8, v9}, Ls0/q;->l(II)I

    move-result v8

    invoke-static {v8, v5, v2}, Ls0/q;->i(III)I

    move-result v10

    add-int/2addr v10, v3

    const/4 v3, 0x2

    aget v11, v1, v3

    add-int/2addr v10, v11

    const/16 v11, 0xb

    invoke-static {v10, v11}, Ls0/q;->l(II)I

    move-result v10

    invoke-static {v10, v8, v5}, Ls0/q;->i(III)I

    move-result v12

    add-int/2addr v12, v2

    aget v2, v1, v7

    add-int/2addr v12, v2

    const/16 v2, 0x13

    invoke-static {v12, v2}, Ls0/q;->l(II)I

    move-result v12

    invoke-static {v12, v10, v8}, Ls0/q;->i(III)I

    move-result v13

    add-int/2addr v13, v5

    const/4 v5, 0x4

    aget v14, v1, v5

    add-int/2addr v13, v14

    invoke-static {v13, v7}, Ls0/q;->l(II)I

    move-result v13

    invoke-static {v13, v12, v10}, Ls0/q;->i(III)I

    move-result v14

    add-int/2addr v14, v8

    const/4 v8, 0x5

    aget v15, v1, v8

    add-int/2addr v14, v15

    invoke-static {v14, v9}, Ls0/q;->l(II)I

    move-result v14

    invoke-static {v14, v13, v12}, Ls0/q;->i(III)I

    move-result v15

    add-int/2addr v15, v10

    const/4 v10, 0x6

    aget v16, v1, v10

    add-int v15, v15, v16

    invoke-static {v15, v11}, Ls0/q;->l(II)I

    move-result v15

    invoke-static {v15, v14, v13}, Ls0/q;->i(III)I

    move-result v16

    add-int v16, v16, v12

    aget v12, v1, v9

    add-int v12, v16, v12

    invoke-static {v12, v2}, Ls0/q;->l(II)I

    move-result v12

    invoke-static {v12, v15, v14}, Ls0/q;->i(III)I

    move-result v16

    add-int v16, v16, v13

    const/16 v13, 0x8

    aget v17, v1, v13

    move/from16 v18, v3

    add-int v3, v16, v17

    invoke-static {v3, v7}, Ls0/q;->l(II)I

    move-result v3

    invoke-static {v3, v12, v15}, Ls0/q;->i(III)I

    move-result v16

    add-int v16, v16, v14

    const/16 v14, 0x9

    aget v17, v1, v14

    move/from16 v19, v4

    add-int v4, v16, v17

    invoke-static {v4, v9}, Ls0/q;->l(II)I

    move-result v4

    invoke-static {v4, v3, v12}, Ls0/q;->i(III)I

    move-result v16

    add-int v16, v16, v15

    const/16 v15, 0xa

    aget v17, v1, v15

    move/from16 v20, v5

    add-int v5, v16, v17

    invoke-static {v5, v11}, Ls0/q;->l(II)I

    move-result v5

    invoke-static {v5, v4, v3}, Ls0/q;->i(III)I

    move-result v16

    add-int v16, v16, v12

    aget v12, v1, v11

    add-int v12, v16, v12

    invoke-static {v12, v2}, Ls0/q;->l(II)I

    move-result v12

    invoke-static {v12, v5, v4}, Ls0/q;->i(III)I

    move-result v16

    add-int v16, v16, v3

    const/16 v3, 0xc

    aget v17, v1, v3

    move/from16 v21, v3

    add-int v3, v16, v17

    invoke-static {v3, v7}, Ls0/q;->l(II)I

    move-result v3

    invoke-static {v3, v12, v5}, Ls0/q;->i(III)I

    move-result v16

    add-int v16, v16, v4

    const/16 v4, 0xd

    aget v17, v1, v4

    move/from16 v22, v10

    add-int v10, v16, v17

    invoke-static {v10, v9}, Ls0/q;->l(II)I

    move-result v10

    invoke-static {v10, v3, v12}, Ls0/q;->i(III)I

    move-result v16

    add-int v16, v16, v5

    const/16 v5, 0xe

    aget v17, v1, v5

    move/from16 v23, v5

    add-int v5, v16, v17

    invoke-static {v5, v11}, Ls0/q;->l(II)I

    move-result v5

    invoke-static {v5, v10, v3}, Ls0/q;->i(III)I

    move-result v16

    add-int v16, v16, v12

    const/16 v12, 0xf

    aget v17, v1, v12

    move/from16 v24, v9

    add-int v9, v16, v17

    invoke-static {v9, v2}, Ls0/q;->l(II)I

    move-result v2

    invoke-static {v2, v5, v10}, Ls0/q;->j(III)I

    move-result v9

    add-int/2addr v9, v3

    aget v3, v1, v6

    move/from16 v16, v13

    const v13, 0x5a827999

    invoke-static {v9, v3, v13, v7}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->a(IIII)I

    move-result v3

    invoke-static {v3, v2, v5}, Ls0/q;->j(III)I

    move-result v9

    add-int/2addr v9, v10

    aget v10, v1, v20

    invoke-static {v9, v10, v13, v8}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->a(IIII)I

    move-result v9

    invoke-static {v9, v3, v2}, Ls0/q;->j(III)I

    move-result v10

    add-int/2addr v10, v5

    aget v5, v1, v16

    invoke-static {v10, v5, v13, v14}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->a(IIII)I

    move-result v5

    invoke-static {v5, v9, v3}, Ls0/q;->j(III)I

    move-result v10

    add-int/2addr v10, v2

    aget v2, v1, v21

    invoke-static {v10, v2, v13, v4}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->a(IIII)I

    move-result v2

    invoke-static {v2, v5, v9}, Ls0/q;->j(III)I

    move-result v10

    add-int/2addr v10, v3

    aget v3, v1, v19

    invoke-static {v10, v3, v13, v7}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->a(IIII)I

    move-result v3

    invoke-static {v3, v2, v5}, Ls0/q;->j(III)I

    move-result v10

    add-int/2addr v10, v9

    aget v9, v1, v8

    invoke-static {v10, v9, v13, v8}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->a(IIII)I

    move-result v9

    invoke-static {v9, v3, v2}, Ls0/q;->j(III)I

    move-result v10

    add-int/2addr v10, v5

    aget v5, v1, v14

    invoke-static {v10, v5, v13, v14}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->a(IIII)I

    move-result v5

    invoke-static {v5, v9, v3}, Ls0/q;->j(III)I

    move-result v10

    add-int/2addr v10, v2

    aget v2, v1, v4

    invoke-static {v10, v2, v13, v4}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->a(IIII)I

    move-result v2

    invoke-static {v2, v5, v9}, Ls0/q;->j(III)I

    move-result v10

    add-int/2addr v10, v3

    aget v3, v1, v18

    invoke-static {v10, v3, v13, v7}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->a(IIII)I

    move-result v3

    invoke-static {v3, v2, v5}, Ls0/q;->j(III)I

    move-result v10

    add-int/2addr v10, v9

    aget v9, v1, v22

    invoke-static {v10, v9, v13, v8}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->a(IIII)I

    move-result v9

    invoke-static {v9, v3, v2}, Ls0/q;->j(III)I

    move-result v10

    add-int/2addr v10, v5

    aget v5, v1, v15

    invoke-static {v10, v5, v13, v14}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->a(IIII)I

    move-result v5

    invoke-static {v5, v9, v3}, Ls0/q;->j(III)I

    move-result v10

    add-int/2addr v10, v2

    aget v2, v1, v23

    invoke-static {v10, v2, v13, v4}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->a(IIII)I

    move-result v2

    invoke-static {v2, v5, v9}, Ls0/q;->j(III)I

    move-result v10

    add-int/2addr v10, v3

    aget v3, v1, v7

    invoke-static {v10, v3, v13, v7}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->a(IIII)I

    move-result v3

    invoke-static {v3, v2, v5}, Ls0/q;->j(III)I

    move-result v10

    add-int/2addr v10, v9

    aget v9, v1, v24

    invoke-static {v10, v9, v13, v8}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->a(IIII)I

    move-result v9

    invoke-static {v9, v3, v2}, Ls0/q;->j(III)I

    move-result v10

    add-int/2addr v10, v5

    aget v5, v1, v11

    invoke-static {v10, v5, v13, v14}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->a(IIII)I

    move-result v5

    invoke-static {v5, v9, v3}, Ls0/q;->j(III)I

    move-result v10

    add-int/2addr v10, v2

    aget v2, v1, v12

    invoke-static {v10, v2, v13, v4}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->a(IIII)I

    move-result v2

    xor-int v10, v2, v5

    xor-int/2addr v10, v9

    add-int/2addr v3, v10

    aget v10, v1, v6

    const v13, 0x6ed9eba1

    invoke-static {v3, v10, v13, v7}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->a(IIII)I

    move-result v3

    xor-int v10, v3, v2

    xor-int/2addr v10, v5

    add-int/2addr v9, v10

    aget v10, v1, v16

    invoke-static {v9, v10, v13, v14}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->a(IIII)I

    move-result v9

    xor-int v10, v9, v3

    xor-int/2addr v10, v2

    add-int/2addr v5, v10

    aget v10, v1, v20

    invoke-static {v5, v10, v13, v11}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->a(IIII)I

    move-result v5

    xor-int v10, v5, v9

    xor-int/2addr v10, v3

    add-int/2addr v2, v10

    aget v10, v1, v21

    invoke-static {v2, v10, v13, v12}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->a(IIII)I

    move-result v2

    xor-int v10, v2, v5

    xor-int/2addr v10, v9

    add-int/2addr v3, v10

    aget v10, v1, v18

    invoke-static {v3, v10, v13, v7}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->a(IIII)I

    move-result v3

    xor-int v10, v3, v2

    xor-int/2addr v10, v5

    add-int/2addr v9, v10

    aget v10, v1, v15

    invoke-static {v9, v10, v13, v14}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->a(IIII)I

    move-result v9

    xor-int v10, v9, v3

    xor-int/2addr v10, v2

    add-int/2addr v5, v10

    aget v10, v1, v22

    invoke-static {v5, v10, v13, v11}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->a(IIII)I

    move-result v5

    xor-int v10, v5, v9

    xor-int/2addr v10, v3

    add-int/2addr v2, v10

    aget v10, v1, v23

    invoke-static {v2, v10, v13, v12}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->a(IIII)I

    move-result v2

    xor-int v10, v2, v5

    xor-int/2addr v10, v9

    add-int/2addr v3, v10

    aget v10, v1, v19

    invoke-static {v3, v10, v13, v7}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->a(IIII)I

    move-result v3

    xor-int v10, v3, v2

    xor-int/2addr v10, v5

    add-int/2addr v9, v10

    aget v10, v1, v14

    invoke-static {v9, v10, v13, v14}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->a(IIII)I

    move-result v9

    xor-int v10, v9, v3

    xor-int/2addr v10, v2

    add-int/2addr v5, v10

    aget v8, v1, v8

    invoke-static {v5, v8, v13, v11}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->a(IIII)I

    move-result v5

    xor-int v8, v5, v9

    xor-int/2addr v8, v3

    add-int/2addr v2, v8

    aget v4, v1, v4

    invoke-static {v2, v4, v13, v12}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->a(IIII)I

    move-result v2

    xor-int v4, v2, v5

    xor-int/2addr v4, v9

    add-int/2addr v3, v4

    aget v4, v1, v7

    invoke-static {v3, v4, v13, v7}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->a(IIII)I

    move-result v3

    xor-int v4, v3, v2

    xor-int/2addr v4, v5

    add-int/2addr v9, v4

    aget v4, v1, v11

    invoke-static {v9, v4, v13, v14}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->a(IIII)I

    move-result v4

    xor-int v7, v4, v3

    xor-int/2addr v7, v2

    add-int/2addr v5, v7

    aget v7, v1, v24

    invoke-static {v5, v7, v13, v11}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->a(IIII)I

    move-result v5

    xor-int v7, v5, v4

    xor-int/2addr v7, v3

    add-int/2addr v2, v7

    aget v7, v1, v12

    invoke-static {v2, v7, v13, v12}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->a(IIII)I

    move-result v2

    iget v7, v0, Ls0/q;->k:I

    add-int/2addr v7, v3

    iput v7, v0, Ls0/q;->k:I

    iget v3, v0, Ls0/q;->l:I

    add-int/2addr v3, v2

    iput v3, v0, Ls0/q;->l:I

    iget v2, v0, Ls0/q;->m:I

    add-int/2addr v2, v5

    iput v2, v0, Ls0/q;->m:I

    iget v2, v0, Ls0/q;->n:I

    add-int/2addr v2, v4

    iput v2, v0, Ls0/q;->n:I

    iput v6, v0, Ls0/q;->p:I

    move v0, v6

    :goto_276
    array-length v2, v1

    if-eq v0, v2, :cond_27e

    aput v6, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_276

    :cond_27e
    return-void
.end method

.method public final g(J)V
    .registers 5

    iget v0, p0, Ls0/q;->p:I

    const/16 v1, 0xe

    if-le v0, v1, :cond_9

    invoke-virtual {p0}, Ls0/q;->f()V

    :cond_9
    long-to-int v0, p1

    iget-object p0, p0, Ls0/q;->o:[I

    aput v0, p0, v1

    const/16 v0, 0x20

    ushr-long/2addr p1, v0

    long-to-int p1, p1

    const/16 p2, 0xf

    aput p1, p0, p2

    return-void
.end method

.method public final getAlgorithmName()Ljava/lang/String;
    .registers 1

    const-string p0, "MD4"

    return-object p0
.end method

.method public final getDigestSize()I
    .registers 1

    const/16 p0, 0x10

    return p0
.end method

.method public final h(I[B)V
    .registers 5

    iget v0, p0, Ls0/q;->p:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ls0/q;->p:I

    invoke-static {p1, p2}, Lm4/d;->z(I[B)I

    move-result p1

    iget-object p2, p0, Ls0/q;->o:[I

    aput p1, p2, v0

    iget p1, p0, Ls0/q;->p:I

    const/16 p2, 0x10

    if-ne p1, p2, :cond_17

    invoke-virtual {p0}, Ls0/q;->f()V

    :cond_17
    return-void
.end method

.method public final k(Ls0/q;)V
    .registers 6

    invoke-virtual {p0, p1}, Ls0/j;->d(Ls0/j;)V

    iget v0, p1, Ls0/q;->k:I

    iput v0, p0, Ls0/q;->k:I

    iget v0, p1, Ls0/q;->l:I

    iput v0, p0, Ls0/q;->l:I

    iget v0, p1, Ls0/q;->m:I

    iput v0, p0, Ls0/q;->m:I

    iget v0, p1, Ls0/q;->n:I

    iput v0, p0, Ls0/q;->n:I

    iget-object v0, p1, Ls0/q;->o:[I

    iget-object v1, p0, Ls0/q;->o:[I

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p1, Ls0/q;->p:I

    iput p1, p0, Ls0/q;->p:I

    return-void
.end method

.method public final reset()V
    .registers 5

    invoke-super {p0}, Ls0/j;->reset()V

    const v0, 0x67452301

    iput v0, p0, Ls0/q;->k:I

    const v0, -0x10325477

    iput v0, p0, Ls0/q;->l:I

    const v0, -0x67452302

    iput v0, p0, Ls0/q;->m:I

    const v0, 0x10325476

    iput v0, p0, Ls0/q;->n:I

    const/4 v0, 0x0

    iput v0, p0, Ls0/q;->p:I

    move v1, v0

    :goto_1b
    iget-object v2, p0, Ls0/q;->o:[I

    array-length v3, v2

    if-eq v1, v3, :cond_25

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_25
    return-void
.end method
