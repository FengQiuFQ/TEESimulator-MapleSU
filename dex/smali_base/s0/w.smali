.class public final Ls0/w;
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

    invoke-direct {p0, v0}, Ls0/w;-><init>(Lorg/bouncycastle/crypto/j;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/j;)V
    .registers 2

    invoke-direct {p0, p1}, Ls0/j;-><init>(Lorg/bouncycastle/crypto/j;)V

    const/16 p1, 0x10

    new-array p1, p1, [I

    iput-object p1, p0, Ls0/w;->p:[I

    invoke-static {p0}, Ls0/o0;->a(Lorg/bouncycastle/crypto/v;)Lr0/a;

    invoke-static {}, Lorg/bouncycastle/crypto/o;->a()V

    invoke-virtual {p0}, Ls0/w;->reset()V

    return-void
.end method

.method public constructor <init>(Ls0/w;)V
    .registers 3

    invoke-direct {p0, p1}, Ls0/j;-><init>(Ls0/j;)V

    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Ls0/w;->p:[I

    invoke-static {p0}, Ls0/o0;->a(Lorg/bouncycastle/crypto/v;)Lr0/a;

    invoke-static {}, Lorg/bouncycastle/crypto/o;->a()V

    invoke-virtual {p0, p1}, Ls0/w;->j(Ls0/w;)V

    return-void
.end method

.method public static i(II)I
    .registers 3

    shl-int v0, p0, p1

    rsub-int/lit8 p1, p1, 0x20

    ushr-int/2addr p0, p1

    or-int/2addr p0, v0

    return p0
.end method

.method public static k(III)I
    .registers 3

    xor-int/2addr p0, p1

    xor-int/2addr p0, p2

    return p0
.end method

.method public static l(III)I
    .registers 3

    and-int/2addr p1, p0

    not-int p0, p0

    and-int/2addr p0, p2

    or-int/2addr p0, p1

    return p0
.end method

.method public static m(III)I
    .registers 3

    not-int p1, p1

    or-int/2addr p0, p1

    xor-int/2addr p0, p2

    return p0
.end method

.method public static n(III)I
    .registers 3

    and-int/2addr p0, p2

    not-int p2, p2

    and-int/2addr p1, p2

    or-int/2addr p0, p1

    return p0
.end method

.method public static o(III)I
    .registers 3

    not-int p2, p2

    or-int/2addr p1, p2

    xor-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public final a()Lm4/e;
    .registers 2

    new-instance v0, Ls0/w;

    invoke-direct {v0, p0}, Ls0/w;-><init>(Ls0/w;)V

    return-object v0
.end method

.method public final c(Lm4/e;)V
    .registers 2

    check-cast p1, Ls0/w;

    invoke-virtual {p0, p1}, Ls0/w;->j(Ls0/w;)V

    return-void
.end method

.method public final doFinal([BI)I
    .registers 5

    invoke-virtual {p0}, Ls0/j;->e()V

    iget v0, p0, Ls0/w;->k:I

    invoke-static {p1, v0, p2}, Lm4/d;->x([BII)V

    iget v0, p0, Ls0/w;->l:I

    add-int/lit8 v1, p2, 0x4

    invoke-static {p1, v0, v1}, Lm4/d;->x([BII)V

    iget v0, p0, Ls0/w;->m:I

    add-int/lit8 v1, p2, 0x8

    invoke-static {p1, v0, v1}, Lm4/d;->x([BII)V

    iget v0, p0, Ls0/w;->n:I

    add-int/lit8 v1, p2, 0xc

    invoke-static {p1, v0, v1}, Lm4/d;->x([BII)V

    iget v0, p0, Ls0/w;->o:I

    add-int/lit8 p2, p2, 0x10

    invoke-static {p1, v0, p2}, Lm4/d;->x([BII)V

    invoke-virtual {p0}, Ls0/w;->reset()V

    const/16 p0, 0x14

    return p0
.end method

.method public final f()V
    .registers 32

    move-object/from16 v0, p0

    iget v1, v0, Ls0/w;->k:I

    iget v2, v0, Ls0/w;->l:I

    iget v3, v0, Ls0/w;->m:I

    iget v4, v0, Ls0/w;->n:I

    iget v5, v0, Ls0/w;->o:I

    xor-int v6, v2, v3

    xor-int/2addr v6, v4

    add-int/2addr v6, v1

    iget-object v7, v0, Ls0/w;->p:[I

    const/4 v8, 0x0

    aget v9, v7, v8

    const/16 v10, 0xb

    invoke-static {v6, v9, v10, v5}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->m(IIII)I

    move-result v6

    const/16 v9, 0xa

    invoke-static {v3, v9}, Ls0/w;->i(II)I

    move-result v11

    xor-int v12, v6, v2

    xor-int/2addr v12, v11

    add-int/2addr v12, v5

    const/4 v13, 0x1

    aget v14, v7, v13

    const/16 v15, 0xe

    invoke-static {v12, v14, v15, v4}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->m(IIII)I

    move-result v12

    invoke-static {v2, v9}, Ls0/w;->i(II)I

    move-result v14

    xor-int v16, v12, v6

    xor-int v16, v16, v14

    move/from16 v17, v13

    add-int v13, v16, v4

    const/16 v16, 0x2

    move/from16 v18, v8

    aget v8, v7, v16

    const/16 v15, 0xf

    invoke-static {v13, v8, v15, v11}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->m(IIII)I

    move-result v8

    invoke-static {v6, v9}, Ls0/w;->i(II)I

    move-result v6

    xor-int v13, v8, v12

    xor-int/2addr v13, v6

    add-int/2addr v13, v11

    const/16 v20, 0x3

    aget v11, v7, v20

    const/16 v15, 0xc

    invoke-static {v13, v11, v15, v14}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->m(IIII)I

    move-result v11

    invoke-static {v12, v9}, Ls0/w;->i(II)I

    move-result v12

    xor-int v13, v11, v8

    xor-int/2addr v13, v12

    add-int/2addr v13, v14

    const/16 v22, 0x4

    aget v14, v7, v22

    move/from16 v23, v15

    const/4 v15, 0x5

    invoke-static {v13, v14, v15, v6}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->m(IIII)I

    move-result v13

    invoke-static {v8, v9}, Ls0/w;->i(II)I

    move-result v8

    xor-int v14, v13, v11

    xor-int/2addr v14, v8

    add-int/2addr v14, v6

    aget v6, v7, v15

    move/from16 v24, v15

    const/16 v15, 0x8

    invoke-static {v14, v6, v15, v12}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->m(IIII)I

    move-result v6

    invoke-static {v11, v9}, Ls0/w;->i(II)I

    move-result v11

    xor-int v14, v6, v13

    xor-int/2addr v14, v11

    add-int/2addr v14, v12

    const/4 v12, 0x6

    move/from16 v25, v15

    aget v15, v7, v12

    const/4 v12, 0x7

    invoke-static {v14, v15, v12, v8}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->m(IIII)I

    move-result v14

    invoke-static {v13, v9}, Ls0/w;->i(II)I

    move-result v13

    xor-int v15, v14, v6

    xor-int/2addr v15, v13

    add-int/2addr v15, v8

    aget v8, v7, v12

    const/16 v12, 0x9

    invoke-static {v15, v8, v12, v11}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->m(IIII)I

    move-result v8

    invoke-static {v6, v9}, Ls0/w;->i(II)I

    move-result v6

    xor-int v15, v8, v14

    xor-int/2addr v15, v6

    add-int/2addr v15, v11

    aget v11, v7, v25

    invoke-static {v15, v11, v10, v13}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->m(IIII)I

    move-result v11

    invoke-static {v14, v9}, Ls0/w;->i(II)I

    move-result v14

    xor-int v15, v11, v8

    xor-int/2addr v15, v14

    add-int/2addr v15, v13

    aget v13, v7, v12

    move/from16 v28, v10

    const/16 v10, 0xd

    invoke-static {v15, v13, v10, v6}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->m(IIII)I

    move-result v13

    invoke-static {v8, v9}, Ls0/w;->i(II)I

    move-result v8

    xor-int v15, v13, v11

    xor-int/2addr v15, v8

    add-int/2addr v15, v6

    aget v6, v7, v9

    move/from16 v29, v10

    const/16 v10, 0xe

    invoke-static {v15, v6, v10, v14}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->m(IIII)I

    move-result v6

    invoke-static {v11, v9}, Ls0/w;->i(II)I

    move-result v10

    xor-int v11, v6, v13

    xor-int/2addr v11, v10

    add-int/2addr v11, v14

    aget v14, v7, v28

    const/16 v15, 0xf

    invoke-static {v11, v14, v15, v8}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->m(IIII)I

    move-result v11

    invoke-static {v13, v9}, Ls0/w;->i(II)I

    move-result v13

    xor-int v14, v11, v6

    xor-int/2addr v14, v13

    add-int/2addr v14, v8

    aget v8, v7, v23

    const/4 v15, 0x6

    invoke-static {v14, v8, v15, v10}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->m(IIII)I

    move-result v8

    invoke-static {v6, v9}, Ls0/w;->i(II)I

    move-result v6

    xor-int v14, v8, v11

    xor-int/2addr v14, v6

    add-int/2addr v14, v10

    aget v10, v7, v29

    const/4 v15, 0x7

    invoke-static {v14, v10, v15, v13}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->m(IIII)I

    move-result v10

    invoke-static {v11, v9}, Ls0/w;->i(II)I

    move-result v11

    xor-int v14, v10, v8

    xor-int/2addr v14, v11

    add-int/2addr v14, v13

    const/16 v19, 0xe

    aget v13, v7, v19

    invoke-static {v14, v13, v12, v6}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->m(IIII)I

    move-result v13

    invoke-static {v8, v9}, Ls0/w;->i(II)I

    move-result v8

    xor-int v14, v13, v10

    xor-int/2addr v14, v8

    add-int/2addr v14, v6

    const/16 v21, 0xf

    aget v6, v7, v21

    move/from16 v15, v25

    invoke-static {v14, v6, v15, v11}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->m(IIII)I

    move-result v6

    invoke-static {v10, v9}, Ls0/w;->i(II)I

    move-result v10

    not-int v14, v4

    or-int/2addr v14, v3

    xor-int/2addr v14, v2

    add-int/2addr v14, v1

    aget v1, v7, v24

    const v12, 0x50a28be6

    invoke-static {v14, v1, v12, v15, v5}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v1

    invoke-static {v3, v9}, Ls0/w;->i(II)I

    move-result v3

    not-int v14, v3

    or-int/2addr v14, v2

    xor-int/2addr v14, v1

    add-int/2addr v14, v5

    const/16 v19, 0xe

    aget v5, v7, v19

    const/16 v15, 0x9

    invoke-static {v14, v5, v12, v15, v4}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v5

    invoke-static {v2, v9}, Ls0/w;->i(II)I

    move-result v2

    not-int v14, v2

    or-int/2addr v14, v1

    xor-int/2addr v14, v5

    add-int/2addr v14, v4

    const/16 v27, 0x7

    aget v4, v7, v27

    invoke-static {v14, v4, v12, v15, v3}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v4

    invoke-static {v1, v9}, Ls0/w;->i(II)I

    move-result v1

    not-int v14, v1

    or-int/2addr v14, v5

    xor-int/2addr v14, v4

    add-int/2addr v14, v3

    aget v3, v7, v18

    move/from16 v15, v28

    invoke-static {v14, v3, v12, v15, v2}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v3

    invoke-static {v5, v9}, Ls0/w;->i(II)I

    move-result v5

    not-int v14, v5

    or-int/2addr v14, v4

    xor-int/2addr v14, v3

    add-int/2addr v14, v2

    const/16 v30, 0x9

    aget v2, v7, v30

    move/from16 v15, v29

    invoke-static {v14, v2, v12, v15, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v2

    invoke-static {v4, v9}, Ls0/w;->i(II)I

    move-result v4

    not-int v14, v4

    or-int/2addr v14, v3

    xor-int/2addr v14, v2

    add-int/2addr v14, v1

    aget v1, v7, v16

    const/16 v15, 0xf

    invoke-static {v14, v1, v12, v15, v5}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v1

    invoke-static {v3, v9}, Ls0/w;->i(II)I

    move-result v3

    not-int v14, v3

    or-int/2addr v14, v2

    xor-int/2addr v14, v1

    add-int/2addr v14, v5

    const/16 v28, 0xb

    aget v5, v7, v28

    invoke-static {v14, v5, v12, v15, v4}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v5

    invoke-static {v2, v9}, Ls0/w;->i(II)I

    move-result v2

    not-int v14, v2

    or-int/2addr v14, v1

    xor-int/2addr v14, v5

    add-int/2addr v14, v4

    aget v4, v7, v22

    move/from16 v15, v24

    invoke-static {v14, v4, v12, v15, v3}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v4

    invoke-static {v1, v9}, Ls0/w;->i(II)I

    move-result v1

    not-int v14, v1

    or-int/2addr v14, v5

    xor-int/2addr v14, v4

    add-int/2addr v14, v3

    const/16 v29, 0xd

    aget v3, v7, v29

    const/4 v15, 0x7

    invoke-static {v14, v3, v12, v15, v2}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v3

    invoke-static {v5, v9}, Ls0/w;->i(II)I

    move-result v5

    not-int v14, v5

    or-int/2addr v14, v4

    xor-int/2addr v14, v3

    add-int/2addr v14, v2

    const/16 v26, 0x6

    aget v2, v7, v26

    invoke-static {v14, v2, v12, v15, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v2

    invoke-static {v4, v9}, Ls0/w;->i(II)I

    move-result v4

    not-int v14, v4

    or-int/2addr v14, v3

    xor-int/2addr v14, v2

    add-int/2addr v14, v1

    const/16 v21, 0xf

    aget v1, v7, v21

    const/16 v15, 0x8

    invoke-static {v14, v1, v12, v15, v5}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v1

    invoke-static {v3, v9}, Ls0/w;->i(II)I

    move-result v3

    not-int v14, v3

    or-int/2addr v14, v2

    xor-int/2addr v14, v1

    add-int/2addr v14, v5

    aget v5, v7, v15

    const/16 v15, 0xb

    invoke-static {v14, v5, v12, v15, v4}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v5

    invoke-static {v2, v9}, Ls0/w;->i(II)I

    move-result v2

    not-int v14, v2

    or-int/2addr v14, v1

    xor-int/2addr v14, v5

    add-int/2addr v14, v4

    aget v4, v7, v17

    const/16 v15, 0xe

    invoke-static {v14, v4, v12, v15, v3}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v4

    invoke-static {v1, v9}, Ls0/w;->i(II)I

    move-result v1

    not-int v14, v1

    or-int/2addr v14, v5

    xor-int/2addr v14, v4

    add-int/2addr v14, v3

    aget v3, v7, v9

    invoke-static {v14, v3, v12, v15, v2}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v3

    invoke-static {v5, v9}, Ls0/w;->i(II)I

    move-result v5

    not-int v14, v5

    or-int/2addr v14, v4

    xor-int/2addr v14, v3

    add-int/2addr v14, v2

    aget v2, v7, v20

    move/from16 v15, v23

    invoke-static {v14, v2, v12, v15, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v2

    invoke-static {v4, v9}, Ls0/w;->i(II)I

    move-result v4

    not-int v14, v4

    or-int/2addr v14, v3

    xor-int/2addr v14, v2

    add-int/2addr v14, v1

    aget v1, v7, v15

    const/4 v15, 0x6

    invoke-static {v14, v1, v12, v15, v5}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v1

    invoke-static {v3, v9}, Ls0/w;->i(II)I

    move-result v3

    invoke-static {v6, v13, v10}, Ls0/w;->l(III)I

    move-result v12

    add-int/2addr v12, v11

    const/4 v11, 0x7

    aget v14, v7, v11

    const v15, 0x5a827999

    invoke-static {v12, v14, v15, v11, v8}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v12

    invoke-static {v13, v9}, Ls0/w;->i(II)I

    move-result v11

    invoke-static {v12, v6, v11}, Ls0/w;->l(III)I

    move-result v13

    add-int/2addr v13, v8

    aget v8, v7, v22

    const/4 v14, 0x6

    invoke-static {v13, v8, v15, v14, v10}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v8

    invoke-static {v6, v9}, Ls0/w;->i(II)I

    move-result v6

    invoke-static {v8, v12, v6}, Ls0/w;->l(III)I

    move-result v13

    add-int/2addr v13, v10

    const/16 v10, 0xd

    aget v14, v7, v10

    const/16 v10, 0x8

    invoke-static {v13, v14, v15, v10, v11}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v13

    invoke-static {v12, v9}, Ls0/w;->i(II)I

    move-result v10

    invoke-static {v13, v8, v10}, Ls0/w;->l(III)I

    move-result v12

    add-int/2addr v12, v11

    aget v11, v7, v17

    const/16 v14, 0xd

    invoke-static {v12, v11, v15, v14, v6}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v11

    invoke-static {v8, v9}, Ls0/w;->i(II)I

    move-result v8

    invoke-static {v11, v13, v8}, Ls0/w;->l(III)I

    move-result v12

    add-int/2addr v12, v6

    aget v6, v7, v9

    const/16 v14, 0xb

    invoke-static {v12, v6, v15, v14, v10}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v6

    invoke-static {v13, v9}, Ls0/w;->i(II)I

    move-result v12

    invoke-static {v6, v11, v12}, Ls0/w;->l(III)I

    move-result v13

    add-int/2addr v13, v10

    const/16 v26, 0x6

    aget v10, v7, v26

    const/16 v14, 0x9

    invoke-static {v13, v10, v15, v14, v8}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v10

    invoke-static {v11, v9}, Ls0/w;->i(II)I

    move-result v11

    invoke-static {v10, v6, v11}, Ls0/w;->l(III)I

    move-result v13

    add-int/2addr v13, v8

    const/16 v8, 0xf

    aget v14, v7, v8

    const/4 v8, 0x7

    invoke-static {v13, v14, v15, v8, v12}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v13

    invoke-static {v6, v9}, Ls0/w;->i(II)I

    move-result v6

    invoke-static {v13, v10, v6}, Ls0/w;->l(III)I

    move-result v14

    add-int/2addr v14, v12

    aget v12, v7, v20

    const/16 v8, 0xf

    invoke-static {v14, v12, v15, v8, v11}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v12

    invoke-static {v10, v9}, Ls0/w;->i(II)I

    move-result v8

    invoke-static {v12, v13, v8}, Ls0/w;->l(III)I

    move-result v10

    add-int/2addr v10, v11

    const/16 v11, 0xc

    aget v14, v7, v11

    const/4 v11, 0x7

    invoke-static {v10, v14, v15, v11, v6}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v10

    invoke-static {v13, v9}, Ls0/w;->i(II)I

    move-result v11

    invoke-static {v10, v12, v11}, Ls0/w;->l(III)I

    move-result v13

    add-int/2addr v13, v6

    aget v6, v7, v18

    const/16 v14, 0xc

    invoke-static {v13, v6, v15, v14, v8}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v6

    invoke-static {v12, v9}, Ls0/w;->i(II)I

    move-result v12

    invoke-static {v6, v10, v12}, Ls0/w;->l(III)I

    move-result v13

    add-int/2addr v13, v8

    const/16 v14, 0x9

    aget v8, v7, v14

    const/16 v14, 0xf

    invoke-static {v13, v8, v15, v14, v11}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v8

    invoke-static {v10, v9}, Ls0/w;->i(II)I

    move-result v10

    invoke-static {v8, v6, v10}, Ls0/w;->l(III)I

    move-result v13

    add-int/2addr v13, v11

    const/16 v24, 0x5

    aget v11, v7, v24

    const/16 v14, 0x9

    invoke-static {v13, v11, v15, v14, v12}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v11

    invoke-static {v6, v9}, Ls0/w;->i(II)I

    move-result v6

    invoke-static {v11, v8, v6}, Ls0/w;->l(III)I

    move-result v13

    add-int/2addr v13, v12

    aget v12, v7, v16

    const/16 v14, 0xb

    invoke-static {v13, v12, v15, v14, v10}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v12

    invoke-static {v8, v9}, Ls0/w;->i(II)I

    move-result v8

    invoke-static {v12, v11, v8}, Ls0/w;->l(III)I

    move-result v13

    add-int/2addr v13, v10

    const/16 v19, 0xe

    aget v10, v7, v19

    move/from16 v28, v14

    const/4 v14, 0x7

    invoke-static {v13, v10, v15, v14, v6}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v10

    invoke-static {v11, v9}, Ls0/w;->i(II)I

    move-result v11

    invoke-static {v10, v12, v11}, Ls0/w;->l(III)I

    move-result v13

    add-int/2addr v13, v6

    aget v6, v7, v28

    const/16 v14, 0xd

    invoke-static {v13, v6, v15, v14, v8}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v6

    invoke-static {v12, v9}, Ls0/w;->i(II)I

    move-result v12

    invoke-static {v6, v10, v12}, Ls0/w;->l(III)I

    move-result v13

    add-int/2addr v13, v8

    const/16 v25, 0x8

    aget v8, v7, v25

    const/16 v14, 0xc

    invoke-static {v13, v8, v15, v14, v11}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v8

    invoke-static {v10, v9}, Ls0/w;->i(II)I

    move-result v10

    invoke-static {v1, v2, v3}, Ls0/w;->n(III)I

    move-result v13

    add-int/2addr v13, v5

    const/16 v26, 0x6

    aget v5, v7, v26

    const v14, 0x5c4dd124

    const/16 v15, 0x9

    invoke-static {v13, v5, v14, v15, v4}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v5

    invoke-static {v2, v9}, Ls0/w;->i(II)I

    move-result v2

    invoke-static {v5, v1, v2}, Ls0/w;->n(III)I

    move-result v13

    add-int/2addr v13, v4

    const/16 v28, 0xb

    aget v4, v7, v28

    const/16 v15, 0xd

    invoke-static {v13, v4, v14, v15, v3}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v4

    invoke-static {v1, v9}, Ls0/w;->i(II)I

    move-result v1

    invoke-static {v4, v5, v1}, Ls0/w;->n(III)I

    move-result v13

    add-int/2addr v13, v3

    aget v3, v7, v20

    const/16 v15, 0xf

    invoke-static {v13, v3, v14, v15, v2}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v3

    invoke-static {v5, v9}, Ls0/w;->i(II)I

    move-result v5

    invoke-static {v3, v4, v5}, Ls0/w;->n(III)I

    move-result v13

    add-int/2addr v13, v2

    const/4 v15, 0x7

    aget v2, v7, v15

    invoke-static {v13, v2, v14, v15, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v2

    invoke-static {v4, v9}, Ls0/w;->i(II)I

    move-result v4

    invoke-static {v2, v3, v4}, Ls0/w;->n(III)I

    move-result v13

    add-int/2addr v13, v1

    aget v1, v7, v18

    const/16 v15, 0xc

    invoke-static {v13, v1, v14, v15, v5}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v1

    invoke-static {v3, v9}, Ls0/w;->i(II)I

    move-result v3

    invoke-static {v1, v2, v3}, Ls0/w;->n(III)I

    move-result v13

    add-int/2addr v13, v5

    const/16 v29, 0xd

    aget v5, v7, v29

    const/16 v15, 0x8

    invoke-static {v13, v5, v14, v15, v4}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v5

    invoke-static {v2, v9}, Ls0/w;->i(II)I

    move-result v2

    invoke-static {v5, v1, v2}, Ls0/w;->n(III)I

    move-result v13

    add-int/2addr v13, v4

    const/16 v24, 0x5

    aget v4, v7, v24

    const/16 v15, 0x9

    invoke-static {v13, v4, v14, v15, v3}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v4

    invoke-static {v1, v9}, Ls0/w;->i(II)I

    move-result v1

    invoke-static {v4, v5, v1}, Ls0/w;->n(III)I

    move-result v13

    add-int/2addr v13, v3

    aget v3, v7, v9

    const/16 v15, 0xb

    invoke-static {v13, v3, v14, v15, v2}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v3

    invoke-static {v5, v9}, Ls0/w;->i(II)I

    move-result v5

    invoke-static {v3, v4, v5}, Ls0/w;->n(III)I

    move-result v13

    add-int/2addr v13, v2

    const/16 v19, 0xe

    aget v2, v7, v19

    const/4 v15, 0x7

    invoke-static {v13, v2, v14, v15, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v2

    invoke-static {v4, v9}, Ls0/w;->i(II)I

    move-result v4

    invoke-static {v2, v3, v4}, Ls0/w;->n(III)I

    move-result v13

    add-int/2addr v13, v1

    const/16 v21, 0xf

    aget v1, v7, v21

    invoke-static {v13, v1, v14, v15, v5}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v1

    invoke-static {v3, v9}, Ls0/w;->i(II)I

    move-result v3

    invoke-static {v1, v2, v3}, Ls0/w;->n(III)I

    move-result v13

    add-int/2addr v13, v5

    const/16 v25, 0x8

    aget v5, v7, v25

    const/16 v15, 0xc

    invoke-static {v13, v5, v14, v15, v4}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v5

    invoke-static {v2, v9}, Ls0/w;->i(II)I

    move-result v2

    invoke-static {v5, v1, v2}, Ls0/w;->n(III)I

    move-result v13

    add-int/2addr v13, v4

    aget v4, v7, v15

    const/4 v15, 0x7

    invoke-static {v13, v4, v14, v15, v3}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v4

    invoke-static {v1, v9}, Ls0/w;->i(II)I

    move-result v1

    invoke-static {v4, v5, v1}, Ls0/w;->n(III)I

    move-result v13

    add-int/2addr v13, v3

    aget v3, v7, v22

    const/4 v15, 0x6

    invoke-static {v13, v3, v14, v15, v2}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v3

    invoke-static {v5, v9}, Ls0/w;->i(II)I

    move-result v5

    invoke-static {v3, v4, v5}, Ls0/w;->n(III)I

    move-result v13

    add-int/2addr v13, v2

    const/16 v30, 0x9

    aget v2, v7, v30

    const/16 v15, 0xf

    invoke-static {v13, v2, v14, v15, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v2

    invoke-static {v4, v9}, Ls0/w;->i(II)I

    move-result v4

    invoke-static {v2, v3, v4}, Ls0/w;->n(III)I

    move-result v13

    add-int/2addr v13, v1

    aget v1, v7, v17

    const/16 v15, 0xd

    invoke-static {v13, v1, v14, v15, v5}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v1

    invoke-static {v3, v9}, Ls0/w;->i(II)I

    move-result v3

    invoke-static {v1, v2, v3}, Ls0/w;->n(III)I

    move-result v13

    add-int/2addr v13, v5

    aget v5, v7, v16

    const/16 v15, 0xb

    invoke-static {v13, v5, v14, v15, v4}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v5

    invoke-static {v2, v9}, Ls0/w;->i(II)I

    move-result v2

    not-int v13, v6

    or-int/2addr v13, v8

    xor-int/2addr v13, v10

    add-int/2addr v13, v11

    aget v11, v7, v20

    const v14, 0x6ed9eba1

    invoke-static {v13, v11, v14, v15, v12}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v11

    invoke-static {v6, v9}, Ls0/w;->i(II)I

    move-result v6

    not-int v13, v8

    or-int/2addr v13, v11

    xor-int/2addr v13, v6

    add-int/2addr v13, v12

    aget v12, v7, v9

    const/16 v15, 0xd

    invoke-static {v13, v12, v14, v15, v10}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v12

    invoke-static {v8, v9}, Ls0/w;->i(II)I

    move-result v8

    not-int v13, v11

    or-int/2addr v13, v12

    xor-int/2addr v13, v8

    add-int/2addr v13, v10

    const/16 v19, 0xe

    aget v10, v7, v19

    const/4 v15, 0x6

    invoke-static {v13, v10, v14, v15, v6}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v10

    invoke-static {v11, v9}, Ls0/w;->i(II)I

    move-result v11

    not-int v13, v12

    or-int/2addr v13, v10

    xor-int/2addr v13, v11

    add-int/2addr v13, v6

    aget v6, v7, v22

    const/4 v15, 0x7

    invoke-static {v13, v6, v14, v15, v8}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v6

    invoke-static {v12, v9}, Ls0/w;->i(II)I

    move-result v12

    not-int v13, v10

    or-int/2addr v13, v6

    xor-int/2addr v13, v12

    add-int/2addr v13, v8

    const/16 v15, 0x9

    aget v8, v7, v15

    const/16 v15, 0xe

    invoke-static {v13, v8, v14, v15, v11}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v8

    invoke-static {v10, v9}, Ls0/w;->i(II)I

    move-result v10

    not-int v13, v6

    or-int/2addr v13, v8

    xor-int/2addr v13, v10

    add-int/2addr v13, v11

    const/16 v21, 0xf

    aget v11, v7, v21

    const/16 v15, 0x9

    invoke-static {v13, v11, v14, v15, v12}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v11

    invoke-static {v6, v9}, Ls0/w;->i(II)I

    move-result v6

    not-int v13, v8

    or-int/2addr v13, v11

    xor-int/2addr v13, v6

    add-int/2addr v13, v12

    const/16 v25, 0x8

    aget v12, v7, v25

    const/16 v15, 0xd

    invoke-static {v13, v12, v14, v15, v10}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v12

    invoke-static {v8, v9}, Ls0/w;->i(II)I

    move-result v8

    not-int v13, v11

    or-int/2addr v13, v12

    xor-int/2addr v13, v8

    add-int/2addr v13, v10

    aget v10, v7, v17

    const/16 v15, 0xf

    invoke-static {v13, v10, v14, v15, v6}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v10

    invoke-static {v11, v9}, Ls0/w;->i(II)I

    move-result v11

    not-int v13, v12

    or-int/2addr v13, v10

    xor-int/2addr v13, v11

    add-int/2addr v13, v6

    aget v6, v7, v16

    const/16 v15, 0xe

    invoke-static {v13, v6, v14, v15, v8}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v6

    invoke-static {v12, v9}, Ls0/w;->i(II)I

    move-result v12

    not-int v13, v10

    or-int/2addr v13, v6

    xor-int/2addr v13, v12

    add-int/2addr v13, v8

    const/16 v27, 0x7

    aget v8, v7, v27

    const/16 v15, 0x8

    invoke-static {v13, v8, v14, v15, v11}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v8

    invoke-static {v10, v9}, Ls0/w;->i(II)I

    move-result v10

    not-int v13, v6

    or-int/2addr v13, v8

    xor-int/2addr v13, v10

    add-int/2addr v13, v11

    aget v11, v7, v18

    const/16 v15, 0xd

    invoke-static {v13, v11, v14, v15, v12}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v11

    invoke-static {v6, v9}, Ls0/w;->i(II)I

    move-result v6

    not-int v13, v8

    or-int/2addr v13, v11

    xor-int/2addr v13, v6

    add-int/2addr v13, v12

    const/4 v15, 0x6

    aget v12, v7, v15

    invoke-static {v13, v12, v14, v15, v10}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v12

    invoke-static {v8, v9}, Ls0/w;->i(II)I

    move-result v8

    not-int v13, v11

    or-int/2addr v13, v12

    xor-int/2addr v13, v8

    add-int/2addr v13, v10

    const/16 v29, 0xd

    aget v10, v7, v29

    const/4 v15, 0x5

    invoke-static {v13, v10, v14, v15, v6}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v10

    invoke-static {v11, v9}, Ls0/w;->i(II)I

    move-result v11

    not-int v13, v12

    or-int/2addr v13, v10

    xor-int/2addr v13, v11

    add-int/2addr v13, v6

    const/16 v28, 0xb

    aget v6, v7, v28

    const/16 v15, 0xc

    invoke-static {v13, v6, v14, v15, v8}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v6

    invoke-static {v12, v9}, Ls0/w;->i(II)I

    move-result v12

    not-int v13, v10

    or-int/2addr v13, v6

    xor-int/2addr v13, v12

    add-int/2addr v13, v8

    const/4 v15, 0x5

    aget v8, v7, v15

    const/4 v15, 0x7

    invoke-static {v13, v8, v14, v15, v11}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v8

    invoke-static {v10, v9}, Ls0/w;->i(II)I

    move-result v10

    not-int v13, v6

    or-int/2addr v13, v8

    xor-int/2addr v13, v10

    add-int/2addr v13, v11

    const/16 v23, 0xc

    aget v11, v7, v23

    const/4 v15, 0x5

    invoke-static {v13, v11, v14, v15, v12}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v11

    invoke-static {v6, v9}, Ls0/w;->i(II)I

    move-result v6

    not-int v13, v1

    or-int/2addr v13, v5

    xor-int/2addr v13, v2

    add-int/2addr v13, v4

    const/16 v21, 0xf

    aget v4, v7, v21

    const v14, 0x6d703ef3

    const/16 v15, 0x9

    invoke-static {v13, v4, v14, v15, v3}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v4

    invoke-static {v1, v9}, Ls0/w;->i(II)I

    move-result v1

    not-int v13, v5

    or-int/2addr v13, v4

    xor-int/2addr v13, v1

    add-int/2addr v13, v3

    const/16 v24, 0x5

    aget v3, v7, v24

    const/4 v15, 0x7

    invoke-static {v13, v3, v14, v15, v2}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v3

    invoke-static {v5, v9}, Ls0/w;->i(II)I

    move-result v5

    not-int v13, v4

    or-int/2addr v13, v3

    xor-int/2addr v13, v5

    add-int/2addr v13, v2

    aget v2, v7, v17

    const/16 v15, 0xf

    invoke-static {v13, v2, v14, v15, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v2

    invoke-static {v4, v9}, Ls0/w;->i(II)I

    move-result v4

    not-int v13, v3

    or-int/2addr v13, v2

    xor-int/2addr v13, v4

    add-int/2addr v13, v1

    aget v1, v7, v20

    const/16 v15, 0xb

    invoke-static {v13, v1, v14, v15, v5}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v1

    invoke-static {v3, v9}, Ls0/w;->i(II)I

    move-result v3

    not-int v13, v2

    or-int/2addr v13, v1

    xor-int/2addr v13, v3

    add-int/2addr v13, v5

    const/16 v27, 0x7

    aget v5, v7, v27

    const/16 v15, 0x8

    invoke-static {v13, v5, v14, v15, v4}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v5

    invoke-static {v2, v9}, Ls0/w;->i(II)I

    move-result v2

    not-int v13, v1

    or-int/2addr v13, v5

    xor-int/2addr v13, v2

    add-int/2addr v13, v4

    const/16 v19, 0xe

    aget v4, v7, v19

    const/4 v15, 0x6

    invoke-static {v13, v4, v14, v15, v3}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v4

    invoke-static {v1, v9}, Ls0/w;->i(II)I

    move-result v1

    not-int v13, v5

    or-int/2addr v13, v4

    xor-int/2addr v13, v1

    add-int/2addr v13, v3

    aget v3, v7, v15

    invoke-static {v13, v3, v14, v15, v2}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v3

    invoke-static {v5, v9}, Ls0/w;->i(II)I

    move-result v5

    not-int v13, v4

    or-int/2addr v13, v3

    xor-int/2addr v13, v5

    add-int/2addr v13, v2

    const/16 v30, 0x9

    aget v2, v7, v30

    const/16 v15, 0xe

    invoke-static {v13, v2, v14, v15, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v2

    invoke-static {v4, v9}, Ls0/w;->i(II)I

    move-result v4

    not-int v13, v3

    or-int/2addr v13, v2

    xor-int/2addr v13, v4

    add-int/2addr v13, v1

    const/16 v28, 0xb

    aget v1, v7, v28

    const/16 v15, 0xc

    invoke-static {v13, v1, v14, v15, v5}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v1

    invoke-static {v3, v9}, Ls0/w;->i(II)I

    move-result v3

    not-int v13, v2

    or-int/2addr v13, v1

    xor-int/2addr v13, v3

    add-int/2addr v13, v5

    const/16 v25, 0x8

    aget v5, v7, v25

    const/16 v15, 0xd

    invoke-static {v13, v5, v14, v15, v4}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v5

    invoke-static {v2, v9}, Ls0/w;->i(II)I

    move-result v2

    not-int v13, v1

    or-int/2addr v13, v5

    xor-int/2addr v13, v2

    add-int/2addr v13, v4

    const/16 v23, 0xc

    aget v4, v7, v23

    const/4 v15, 0x5

    invoke-static {v13, v4, v14, v15, v3}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v4

    invoke-static {v1, v9}, Ls0/w;->i(II)I

    move-result v1

    not-int v13, v5

    or-int/2addr v13, v4

    xor-int/2addr v13, v1

    add-int/2addr v13, v3

    aget v3, v7, v16

    const/16 v15, 0xe

    invoke-static {v13, v3, v14, v15, v2}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v3

    invoke-static {v5, v9}, Ls0/w;->i(II)I

    move-result v5

    not-int v13, v4

    or-int/2addr v13, v3

    xor-int/2addr v13, v5

    add-int/2addr v13, v2

    aget v2, v7, v9

    const/16 v15, 0xd

    invoke-static {v13, v2, v14, v15, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v2

    invoke-static {v4, v9}, Ls0/w;->i(II)I

    move-result v4

    invoke-static {v2, v3, v4}, Ls0/w;->m(III)I

    move-result v13

    add-int/2addr v13, v1

    aget v1, v7, v18

    invoke-static {v13, v1, v14, v15, v5}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v1

    invoke-static {v3, v9}, Ls0/w;->i(II)I

    move-result v3

    invoke-static {v1, v2, v3}, Ls0/w;->m(III)I

    move-result v13

    add-int/2addr v13, v5

    aget v5, v7, v22

    move/from16 v29, v15

    const/4 v15, 0x7

    invoke-static {v13, v5, v14, v15, v4}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v5

    invoke-static {v2, v9}, Ls0/w;->i(II)I

    move-result v2

    invoke-static {v5, v1, v2}, Ls0/w;->m(III)I

    move-result v13

    add-int/2addr v13, v4

    aget v4, v7, v29

    const/4 v15, 0x5

    invoke-static {v13, v4, v14, v15, v3}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v4

    invoke-static {v1, v9}, Ls0/w;->i(II)I

    move-result v1

    invoke-static {v11, v8, v6}, Ls0/w;->n(III)I

    move-result v13

    add-int/2addr v13, v12

    aget v12, v7, v17

    const v14, -0x70e44324

    const/16 v15, 0xb

    invoke-static {v13, v12, v14, v15, v10}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v12

    invoke-static {v8, v9}, Ls0/w;->i(II)I

    move-result v8

    invoke-static {v12, v11, v8}, Ls0/w;->n(III)I

    move-result v13

    add-int/2addr v13, v10

    const/16 v30, 0x9

    aget v10, v7, v30

    move/from16 v28, v15

    const/16 v15, 0xc

    invoke-static {v13, v10, v14, v15, v6}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v10

    invoke-static {v11, v9}, Ls0/w;->i(II)I

    move-result v11

    invoke-static {v10, v12, v11}, Ls0/w;->n(III)I

    move-result v13

    add-int/2addr v13, v6

    aget v6, v7, v28

    const/16 v15, 0xe

    invoke-static {v13, v6, v14, v15, v8}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v6

    invoke-static {v12, v9}, Ls0/w;->i(II)I

    move-result v12

    invoke-static {v6, v10, v12}, Ls0/w;->n(III)I

    move-result v13

    add-int/2addr v13, v8

    aget v8, v7, v9

    const/16 v15, 0xf

    invoke-static {v13, v8, v14, v15, v11}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v8

    invoke-static {v10, v9}, Ls0/w;->i(II)I

    move-result v10

    invoke-static {v8, v6, v10}, Ls0/w;->n(III)I

    move-result v13

    add-int/2addr v13, v11

    aget v11, v7, v18

    const/16 v15, 0xe

    invoke-static {v13, v11, v14, v15, v12}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v11

    invoke-static {v6, v9}, Ls0/w;->i(II)I

    move-result v6

    invoke-static {v11, v8, v6}, Ls0/w;->n(III)I

    move-result v13

    add-int/2addr v13, v12

    const/16 v15, 0x8

    aget v12, v7, v15

    const/16 v15, 0xf

    invoke-static {v13, v12, v14, v15, v10}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v12

    invoke-static {v8, v9}, Ls0/w;->i(II)I

    move-result v8

    invoke-static {v12, v11, v8}, Ls0/w;->n(III)I

    move-result v13

    add-int/2addr v13, v10

    const/16 v23, 0xc

    aget v10, v7, v23

    const/16 v15, 0x9

    invoke-static {v13, v10, v14, v15, v6}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v10

    invoke-static {v11, v9}, Ls0/w;->i(II)I

    move-result v11

    invoke-static {v10, v12, v11}, Ls0/w;->n(III)I

    move-result v13

    add-int/2addr v13, v6

    aget v6, v7, v22

    const/16 v15, 0x8

    invoke-static {v13, v6, v14, v15, v8}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v6

    invoke-static {v12, v9}, Ls0/w;->i(II)I

    move-result v12

    invoke-static {v6, v10, v12}, Ls0/w;->n(III)I

    move-result v13

    add-int/2addr v13, v8

    const/16 v29, 0xd

    aget v8, v7, v29

    const/16 v15, 0x9

    invoke-static {v13, v8, v14, v15, v11}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v8

    invoke-static {v10, v9}, Ls0/w;->i(II)I

    move-result v10

    invoke-static {v8, v6, v10}, Ls0/w;->n(III)I

    move-result v13

    add-int/2addr v13, v11

    aget v11, v7, v20

    const/16 v15, 0xe

    invoke-static {v13, v11, v14, v15, v12}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v11

    invoke-static {v6, v9}, Ls0/w;->i(II)I

    move-result v6

    invoke-static {v11, v8, v6}, Ls0/w;->n(III)I

    move-result v13

    add-int/2addr v13, v12

    const/16 v27, 0x7

    aget v12, v7, v27

    const/4 v15, 0x5

    invoke-static {v13, v12, v14, v15, v10}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v12

    invoke-static {v8, v9}, Ls0/w;->i(II)I

    move-result v8

    invoke-static {v12, v11, v8}, Ls0/w;->n(III)I

    move-result v13

    add-int/2addr v13, v10

    const/16 v21, 0xf

    aget v10, v7, v21

    const/4 v15, 0x6

    invoke-static {v13, v10, v14, v15, v6}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v10

    invoke-static {v11, v9}, Ls0/w;->i(II)I

    move-result v11

    invoke-static {v10, v12, v11}, Ls0/w;->n(III)I

    move-result v13

    add-int/2addr v13, v6

    const/16 v19, 0xe

    aget v6, v7, v19

    const/16 v15, 0x8

    invoke-static {v13, v6, v14, v15, v8}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v6

    invoke-static {v12, v9}, Ls0/w;->i(II)I

    move-result v12

    invoke-static {v6, v10, v12}, Ls0/w;->n(III)I

    move-result v13

    add-int/2addr v13, v8

    const/4 v15, 0x5

    aget v8, v7, v15

    const/4 v15, 0x6

    invoke-static {v13, v8, v14, v15, v11}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v8

    invoke-static {v10, v9}, Ls0/w;->i(II)I

    move-result v10

    invoke-static {v8, v6, v10}, Ls0/w;->n(III)I

    move-result v13

    add-int/2addr v13, v11

    aget v11, v7, v15

    const/4 v15, 0x5

    invoke-static {v13, v11, v14, v15, v12}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v11

    invoke-static {v6, v9}, Ls0/w;->i(II)I

    move-result v6

    invoke-static {v11, v8, v6}, Ls0/w;->n(III)I

    move-result v13

    add-int/2addr v13, v12

    aget v12, v7, v16

    const/16 v15, 0xc

    invoke-static {v13, v12, v14, v15, v10}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v12

    invoke-static {v8, v9}, Ls0/w;->i(II)I

    move-result v8

    invoke-static {v4, v5, v1}, Ls0/w;->l(III)I

    move-result v13

    add-int/2addr v13, v3

    const/16 v25, 0x8

    aget v3, v7, v25

    const v14, 0x7a6d76e9

    const/16 v15, 0xf

    invoke-static {v13, v3, v14, v15, v2}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v3

    invoke-static {v5, v9}, Ls0/w;->i(II)I

    move-result v5

    invoke-static {v3, v4, v5}, Ls0/w;->l(III)I

    move-result v13

    add-int/2addr v13, v2

    const/16 v26, 0x6

    aget v2, v7, v26

    const/4 v15, 0x5

    invoke-static {v13, v2, v14, v15, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v2

    invoke-static {v4, v9}, Ls0/w;->i(II)I

    move-result v4

    invoke-static {v2, v3, v4}, Ls0/w;->l(III)I

    move-result v13

    add-int/2addr v13, v1

    aget v1, v7, v22

    const/16 v15, 0x8

    invoke-static {v13, v1, v14, v15, v5}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v1

    invoke-static {v3, v9}, Ls0/w;->i(II)I

    move-result v3

    invoke-static {v1, v2, v3}, Ls0/w;->l(III)I

    move-result v13

    add-int/2addr v13, v5

    aget v5, v7, v17

    const/16 v15, 0xb

    invoke-static {v13, v5, v14, v15, v4}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v5

    invoke-static {v2, v9}, Ls0/w;->i(II)I

    move-result v2

    invoke-static {v5, v1, v2}, Ls0/w;->l(III)I

    move-result v13

    add-int/2addr v13, v4

    aget v4, v7, v20

    move/from16 v28, v15

    const/16 v15, 0xe

    invoke-static {v13, v4, v14, v15, v3}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v4

    invoke-static {v1, v9}, Ls0/w;->i(II)I

    move-result v1

    invoke-static {v4, v5, v1}, Ls0/w;->l(III)I

    move-result v13

    add-int/2addr v13, v3

    aget v3, v7, v28

    invoke-static {v13, v3, v14, v15, v2}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v3

    invoke-static {v5, v9}, Ls0/w;->i(II)I

    move-result v5

    invoke-static {v3, v4, v5}, Ls0/w;->l(III)I

    move-result v13

    add-int/2addr v13, v2

    const/16 v21, 0xf

    aget v2, v7, v21

    const/4 v15, 0x6

    invoke-static {v13, v2, v14, v15, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v2

    invoke-static {v4, v9}, Ls0/w;->i(II)I

    move-result v4

    invoke-static {v2, v3, v4}, Ls0/w;->l(III)I

    move-result v13

    add-int/2addr v13, v1

    aget v1, v7, v18

    const/16 v15, 0xe

    invoke-static {v13, v1, v14, v15, v5}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v1

    invoke-static {v3, v9}, Ls0/w;->i(II)I

    move-result v3

    invoke-static {v1, v2, v3}, Ls0/w;->l(III)I

    move-result v13

    add-int/2addr v13, v5

    const/16 v24, 0x5

    aget v5, v7, v24

    const/4 v15, 0x6

    invoke-static {v13, v5, v14, v15, v4}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v5

    invoke-static {v2, v9}, Ls0/w;->i(II)I

    move-result v2

    invoke-static {v5, v1, v2}, Ls0/w;->l(III)I

    move-result v13

    add-int/2addr v13, v4

    const/16 v15, 0xc

    aget v4, v7, v15

    const/16 v15, 0x9

    invoke-static {v13, v4, v14, v15, v3}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v4

    invoke-static {v1, v9}, Ls0/w;->i(II)I

    move-result v1

    invoke-static {v4, v5, v1}, Ls0/w;->l(III)I

    move-result v13

    add-int/2addr v13, v3

    aget v3, v7, v16

    const/16 v15, 0xc

    invoke-static {v13, v3, v14, v15, v2}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v3

    invoke-static {v5, v9}, Ls0/w;->i(II)I

    move-result v5

    invoke-static {v3, v4, v5}, Ls0/w;->l(III)I

    move-result v13

    add-int/2addr v13, v2

    const/16 v29, 0xd

    aget v2, v7, v29

    const/16 v15, 0x9

    invoke-static {v13, v2, v14, v15, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v2

    invoke-static {v4, v9}, Ls0/w;->i(II)I

    move-result v4

    invoke-static {v2, v3, v4}, Ls0/w;->l(III)I

    move-result v13

    add-int/2addr v13, v1

    aget v1, v7, v15

    const/16 v15, 0xc

    invoke-static {v13, v1, v14, v15, v5}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v1

    invoke-static {v3, v9}, Ls0/w;->i(II)I

    move-result v3

    invoke-static {v1, v2, v3}, Ls0/w;->l(III)I

    move-result v13

    add-int/2addr v13, v5

    const/16 v27, 0x7

    aget v5, v7, v27

    const/4 v15, 0x5

    invoke-static {v13, v5, v14, v15, v4}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v5

    invoke-static {v2, v9}, Ls0/w;->i(II)I

    move-result v2

    invoke-static {v5, v1, v2}, Ls0/w;->l(III)I

    move-result v13

    add-int/2addr v13, v4

    aget v4, v7, v9

    const/16 v15, 0xf

    invoke-static {v13, v4, v14, v15, v3}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v4

    invoke-static {v1, v9}, Ls0/w;->i(II)I

    move-result v1

    invoke-static {v4, v5, v1}, Ls0/w;->l(III)I

    move-result v13

    add-int/2addr v13, v3

    const/16 v19, 0xe

    aget v3, v7, v19

    const/16 v15, 0x8

    invoke-static {v13, v3, v14, v15, v2}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v3

    invoke-static {v5, v9}, Ls0/w;->i(II)I

    move-result v5

    invoke-static {v12, v11, v8}, Ls0/w;->o(III)I

    move-result v13

    add-int/2addr v13, v10

    aget v10, v7, v22

    const v14, -0x56ac02b2

    const/16 v15, 0x9

    invoke-static {v13, v10, v14, v15, v6}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v10

    invoke-static {v11, v9}, Ls0/w;->i(II)I

    move-result v11

    invoke-static {v10, v12, v11}, Ls0/w;->o(III)I

    move-result v13

    add-int/2addr v13, v6

    aget v6, v7, v18

    const/16 v15, 0xf

    invoke-static {v13, v6, v14, v15, v8}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v6

    invoke-static {v12, v9}, Ls0/w;->i(II)I

    move-result v12

    invoke-static {v6, v10, v12}, Ls0/w;->o(III)I

    move-result v13

    add-int/2addr v13, v8

    const/4 v15, 0x5

    aget v8, v7, v15

    invoke-static {v13, v8, v14, v15, v11}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v8

    invoke-static {v10, v9}, Ls0/w;->i(II)I

    move-result v10

    invoke-static {v8, v6, v10}, Ls0/w;->o(III)I

    move-result v13

    add-int/2addr v13, v11

    const/16 v30, 0x9

    aget v11, v7, v30

    const/16 v15, 0xb

    invoke-static {v13, v11, v14, v15, v12}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v11

    invoke-static {v6, v9}, Ls0/w;->i(II)I

    move-result v6

    invoke-static {v11, v8, v6}, Ls0/w;->o(III)I

    move-result v13

    add-int/2addr v13, v12

    const/16 v27, 0x7

    aget v12, v7, v27

    const/4 v15, 0x6

    invoke-static {v13, v12, v14, v15, v10}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v12

    invoke-static {v8, v9}, Ls0/w;->i(II)I

    move-result v8

    invoke-static {v12, v11, v8}, Ls0/w;->o(III)I

    move-result v13

    add-int/2addr v13, v10

    const/16 v15, 0xc

    aget v10, v7, v15

    const/16 v15, 0x8

    invoke-static {v13, v10, v14, v15, v6}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v10

    invoke-static {v11, v9}, Ls0/w;->i(II)I

    move-result v11

    invoke-static {v10, v12, v11}, Ls0/w;->o(III)I

    move-result v13

    add-int/2addr v13, v6

    aget v6, v7, v16

    const/16 v15, 0xd

    invoke-static {v13, v6, v14, v15, v8}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v6

    invoke-static {v12, v9}, Ls0/w;->i(II)I

    move-result v12

    invoke-static {v6, v10, v12}, Ls0/w;->o(III)I

    move-result v13

    add-int/2addr v13, v8

    aget v8, v7, v9

    const/16 v15, 0xc

    invoke-static {v13, v8, v14, v15, v11}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v8

    invoke-static {v10, v9}, Ls0/w;->i(II)I

    move-result v10

    invoke-static {v8, v6, v10}, Ls0/w;->o(III)I

    move-result v13

    add-int/2addr v13, v11

    const/16 v19, 0xe

    aget v11, v7, v19

    const/4 v15, 0x5

    invoke-static {v13, v11, v14, v15, v12}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v11

    invoke-static {v6, v9}, Ls0/w;->i(II)I

    move-result v6

    invoke-static {v11, v8, v6}, Ls0/w;->o(III)I

    move-result v13

    add-int/2addr v13, v12

    aget v12, v7, v17

    const/16 v15, 0xc

    invoke-static {v13, v12, v14, v15, v10}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v12

    invoke-static {v8, v9}, Ls0/w;->i(II)I

    move-result v8

    invoke-static {v12, v11, v8}, Ls0/w;->o(III)I

    move-result v13

    add-int/2addr v13, v10

    aget v10, v7, v20

    const/16 v15, 0xd

    invoke-static {v13, v10, v14, v15, v6}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v10

    invoke-static {v11, v9}, Ls0/w;->i(II)I

    move-result v11

    invoke-static {v10, v12, v11}, Ls0/w;->o(III)I

    move-result v13

    add-int/2addr v13, v6

    const/16 v15, 0x8

    aget v6, v7, v15

    const/16 v15, 0xe

    invoke-static {v13, v6, v14, v15, v8}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v6

    invoke-static {v12, v9}, Ls0/w;->i(II)I

    move-result v12

    invoke-static {v6, v10, v12}, Ls0/w;->o(III)I

    move-result v13

    add-int/2addr v13, v8

    const/16 v15, 0xb

    aget v8, v7, v15

    invoke-static {v13, v8, v14, v15, v11}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v8

    invoke-static {v10, v9}, Ls0/w;->i(II)I

    move-result v10

    invoke-static {v8, v6, v10}, Ls0/w;->o(III)I

    move-result v13

    add-int/2addr v13, v11

    const/4 v15, 0x6

    aget v11, v7, v15

    const/16 v15, 0x8

    invoke-static {v13, v11, v14, v15, v12}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v11

    invoke-static {v6, v9}, Ls0/w;->i(II)I

    move-result v6

    invoke-static {v11, v8, v6}, Ls0/w;->o(III)I

    move-result v13

    add-int/2addr v13, v12

    const/16 v21, 0xf

    aget v12, v7, v21

    const/4 v15, 0x5

    invoke-static {v13, v12, v14, v15, v10}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v12

    invoke-static {v8, v9}, Ls0/w;->i(II)I

    move-result v8

    invoke-static {v12, v11, v8}, Ls0/w;->o(III)I

    move-result v13

    add-int/2addr v13, v10

    const/16 v29, 0xd

    aget v10, v7, v29

    const/4 v15, 0x6

    invoke-static {v13, v10, v14, v15, v6}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->n(IIIII)I

    move-result v10

    invoke-static {v11, v9}, Ls0/w;->i(II)I

    move-result v11

    invoke-static {v3, v4, v5}, Ls0/w;->k(III)I

    move-result v13

    add-int/2addr v13, v2

    const/16 v15, 0xc

    aget v2, v7, v15

    const/16 v14, 0x8

    invoke-static {v13, v2, v14, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->m(IIII)I

    move-result v2

    invoke-static {v4, v9}, Ls0/w;->i(II)I

    move-result v4

    invoke-static {v2, v3, v4}, Ls0/w;->k(III)I

    move-result v13

    add-int/2addr v13, v1

    const/16 v21, 0xf

    aget v1, v7, v21

    const/4 v14, 0x5

    invoke-static {v13, v1, v14, v5}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->m(IIII)I

    move-result v1

    invoke-static {v3, v9}, Ls0/w;->i(II)I

    move-result v3

    invoke-static {v1, v2, v3}, Ls0/w;->k(III)I

    move-result v13

    add-int/2addr v13, v5

    aget v5, v7, v9

    invoke-static {v13, v5, v15, v4}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->m(IIII)I

    move-result v5

    invoke-static {v2, v9}, Ls0/w;->i(II)I

    move-result v2

    invoke-static {v5, v1, v2}, Ls0/w;->k(III)I

    move-result v13

    add-int/2addr v13, v4

    aget v4, v7, v22

    const/16 v14, 0x9

    invoke-static {v13, v4, v14, v3}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->m(IIII)I

    move-result v4

    invoke-static {v1, v9}, Ls0/w;->i(II)I

    move-result v1

    invoke-static {v4, v5, v1}, Ls0/w;->k(III)I

    move-result v13

    add-int/2addr v13, v3

    aget v3, v7, v17

    invoke-static {v13, v3, v15, v2}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->m(IIII)I

    move-result v3

    invoke-static {v5, v9}, Ls0/w;->i(II)I

    move-result v5

    invoke-static {v3, v4, v5}, Ls0/w;->k(III)I

    move-result v13

    add-int/2addr v13, v2

    const/4 v15, 0x5

    aget v2, v7, v15

    invoke-static {v13, v2, v15, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->m(IIII)I

    move-result v2

    invoke-static {v4, v9}, Ls0/w;->i(II)I

    move-result v4

    invoke-static {v2, v3, v4}, Ls0/w;->k(III)I

    move-result v13

    add-int/2addr v13, v1

    const/16 v15, 0x8

    aget v1, v7, v15

    const/16 v14, 0xe

    invoke-static {v13, v1, v14, v5}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->m(IIII)I

    move-result v1

    invoke-static {v3, v9}, Ls0/w;->i(II)I

    move-result v3

    invoke-static {v1, v2, v3}, Ls0/w;->k(III)I

    move-result v13

    add-int/2addr v13, v5

    const/16 v27, 0x7

    aget v5, v7, v27

    const/4 v14, 0x6

    invoke-static {v13, v5, v14, v4}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->m(IIII)I

    move-result v5

    invoke-static {v2, v9}, Ls0/w;->i(II)I

    move-result v2

    invoke-static {v5, v1, v2}, Ls0/w;->k(III)I

    move-result v13

    add-int/2addr v13, v4

    aget v4, v7, v14

    invoke-static {v13, v4, v15, v3}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->m(IIII)I

    move-result v4

    invoke-static {v1, v9}, Ls0/w;->i(II)I

    move-result v1

    invoke-static {v4, v5, v1}, Ls0/w;->k(III)I

    move-result v13

    add-int/2addr v13, v3

    aget v3, v7, v16

    const/16 v15, 0xd

    invoke-static {v13, v3, v15, v2}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->m(IIII)I

    move-result v3

    invoke-static {v5, v9}, Ls0/w;->i(II)I

    move-result v5

    invoke-static {v3, v4, v5}, Ls0/w;->k(III)I

    move-result v13

    add-int/2addr v13, v2

    aget v2, v7, v15

    invoke-static {v13, v2, v14, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->m(IIII)I

    move-result v2

    invoke-static {v4, v9}, Ls0/w;->i(II)I

    move-result v4

    invoke-static {v2, v3, v4}, Ls0/w;->k(III)I

    move-result v13

    add-int/2addr v13, v1

    const/16 v19, 0xe

    aget v1, v7, v19

    const/4 v15, 0x5

    invoke-static {v13, v1, v15, v5}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->m(IIII)I

    move-result v1

    invoke-static {v3, v9}, Ls0/w;->i(II)I

    move-result v3

    invoke-static {v1, v2, v3}, Ls0/w;->k(III)I

    move-result v13

    add-int/2addr v13, v5

    aget v5, v7, v18

    const/16 v15, 0xf

    invoke-static {v13, v5, v15, v4}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->m(IIII)I

    move-result v5

    invoke-static {v2, v9}, Ls0/w;->i(II)I

    move-result v2

    invoke-static {v5, v1, v2}, Ls0/w;->k(III)I

    move-result v13

    add-int/2addr v13, v4

    aget v4, v7, v20

    const/16 v15, 0xd

    invoke-static {v13, v4, v15, v3}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->m(IIII)I

    move-result v4

    invoke-static {v1, v9}, Ls0/w;->i(II)I

    move-result v1

    invoke-static {v4, v5, v1}, Ls0/w;->k(III)I

    move-result v13

    add-int/2addr v13, v3

    const/16 v30, 0x9

    aget v3, v7, v30

    const/16 v15, 0xb

    invoke-static {v13, v3, v15, v2}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->m(IIII)I

    move-result v3

    invoke-static {v5, v9}, Ls0/w;->i(II)I

    move-result v5

    invoke-static {v3, v4, v5}, Ls0/w;->k(III)I

    move-result v13

    add-int/2addr v13, v2

    aget v2, v7, v15

    invoke-static {v13, v2, v15, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->m(IIII)I

    move-result v2

    invoke-static {v4, v9}, Ls0/w;->i(II)I

    move-result v4

    iget v9, v0, Ls0/w;->l:I

    add-int/2addr v12, v9

    add-int/2addr v12, v4

    iget v4, v0, Ls0/w;->m:I

    add-int/2addr v4, v11

    add-int/2addr v4, v5

    iput v4, v0, Ls0/w;->l:I

    iget v4, v0, Ls0/w;->n:I

    add-int/2addr v4, v8

    add-int/2addr v4, v1

    iput v4, v0, Ls0/w;->m:I

    iget v1, v0, Ls0/w;->o:I

    add-int/2addr v1, v6

    add-int/2addr v1, v2

    iput v1, v0, Ls0/w;->n:I

    iget v1, v0, Ls0/w;->k:I

    add-int/2addr v1, v10

    add-int/2addr v1, v3

    iput v1, v0, Ls0/w;->o:I

    iput v12, v0, Ls0/w;->k:I

    move/from16 v1, v18

    iput v1, v0, Ls0/w;->q:I

    move v0, v1

    :goto_b0f
    array-length v2, v7

    if-eq v0, v2, :cond_b17

    aput v1, v7, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_b0f

    :cond_b17
    return-void
.end method

.method public final g(J)V
    .registers 5

    iget v0, p0, Ls0/w;->q:I

    const/16 v1, 0xe

    if-le v0, v1, :cond_9

    invoke-virtual {p0}, Ls0/w;->f()V

    :cond_9
    long-to-int v0, p1

    iget-object p0, p0, Ls0/w;->p:[I

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

    const-string p0, "RIPEMD160"

    return-object p0
.end method

.method public final getDigestSize()I
    .registers 1

    const/16 p0, 0x14

    return p0
.end method

.method public final h(I[B)V
    .registers 5

    iget v0, p0, Ls0/w;->q:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ls0/w;->q:I

    invoke-static {p1, p2}, Lm4/d;->z(I[B)I

    move-result p1

    iget-object p2, p0, Ls0/w;->p:[I

    aput p1, p2, v0

    iget p1, p0, Ls0/w;->q:I

    const/16 p2, 0x10

    if-ne p1, p2, :cond_17

    invoke-virtual {p0}, Ls0/w;->f()V

    :cond_17
    return-void
.end method

.method public final j(Ls0/w;)V
    .registers 6

    invoke-virtual {p0, p1}, Ls0/j;->d(Ls0/j;)V

    iget v0, p1, Ls0/w;->k:I

    iput v0, p0, Ls0/w;->k:I

    iget v0, p1, Ls0/w;->l:I

    iput v0, p0, Ls0/w;->l:I

    iget v0, p1, Ls0/w;->m:I

    iput v0, p0, Ls0/w;->m:I

    iget v0, p1, Ls0/w;->n:I

    iput v0, p0, Ls0/w;->n:I

    iget v0, p1, Ls0/w;->o:I

    iput v0, p0, Ls0/w;->o:I

    iget-object v0, p1, Ls0/w;->p:[I

    iget-object v1, p0, Ls0/w;->p:[I

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p1, Ls0/w;->q:I

    iput p1, p0, Ls0/w;->q:I

    return-void
.end method

.method public final reset()V
    .registers 5

    invoke-super {p0}, Ls0/j;->reset()V

    const v0, 0x67452301

    iput v0, p0, Ls0/w;->k:I

    const v0, -0x10325477

    iput v0, p0, Ls0/w;->l:I

    const v0, -0x67452302

    iput v0, p0, Ls0/w;->m:I

    const v0, 0x10325476

    iput v0, p0, Ls0/w;->n:I

    const v0, -0x3c2d1e10

    iput v0, p0, Ls0/w;->o:I

    const/4 v0, 0x0

    iput v0, p0, Ls0/w;->q:I

    move v1, v0

    :goto_20
    iget-object v2, p0, Ls0/w;->p:[I

    array-length v3, v2

    if-eq v1, v3, :cond_2a

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    :cond_2a
    return-void
.end method
