.class public final Ls0/b0;
.super Ls0/j;

# interfaces
.implements Lorg/bouncycastle/crypto/l0;


# static fields
.field public static final u:[I


# instance fields
.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public final s:[I

.field public t:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x40

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Ls0/b0;->u:[I

    return-void

    :array_a
    .array-data 4
        0x428a2f98
        0x71374491
        -0x4a3f0431
        -0x164a245b
        0x3956c25b
        0x59f111f1
        -0x6dc07d5c    # -6.043E-28f
        -0x54e3a12b
        -0x27f85568
        0x12835b01
        0x243185be
        0x550c7dc3
        0x72be5d74
        -0x7f214e02
        -0x6423f959
        -0x3e640e8c
        -0x1b64963f
        -0x1041b87a
        0xfc19dc6
        0x240ca1cc
        0x2de92c6f
        0x4a7484aa    # 4006186.5f
        0x5cb0a9dc
        0x76f988da
        -0x67c1aeae
        -0x57ce3993
        -0x4ffcd838
        -0x40a68039
        -0x391ff40d
        -0x2a586eb9
        0x6ca6351
        0x14292967
        0x27b70a85
        0x2e1b2138
        0x4d2c6dfc    # 1.8080557E8f
        0x53380d13
        0x650a7354
        0x766a0abb
        -0x7e3d36d2
        -0x6d8dd37b
        -0x5d40175f
        -0x57e599b5
        -0x3db47490
        -0x3893ae5d
        -0x2e6d17e7
        -0x2966f9dc
        -0xbf1ca7b
        0x106aa070
        0x19a4c116
        0x1e376c08
        0x2748774c
        0x34b0bcb5
        0x391c0cb3
        0x4ed8aa4a    # 1.8175194E9f
        0x5b9cca4f
        0x682e6ff3
        0x748f82ee
        0x78a5636f
        -0x7b3787ec
        -0x7338fdf8
        -0x6f410006
        -0x5baf9315
        -0x41065c09
        -0x398e870e
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    sget-object v0, Lorg/bouncycastle/crypto/j;->d:Lorg/bouncycastle/crypto/j;

    invoke-direct {p0, v0}, Ls0/b0;-><init>(Lorg/bouncycastle/crypto/j;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/j;)V
    .registers 2

    invoke-direct {p0, p1}, Ls0/j;-><init>(Lorg/bouncycastle/crypto/j;)V

    const/16 p1, 0x40

    new-array p1, p1, [I

    iput-object p1, p0, Ls0/b0;->s:[I

    invoke-static {p0}, Ls0/o0;->a(Lorg/bouncycastle/crypto/v;)Lr0/a;

    invoke-static {}, Lorg/bouncycastle/crypto/o;->a()V

    invoke-virtual {p0}, Ls0/b0;->reset()V

    return-void
.end method

.method public constructor <init>(Ls0/b0;)V
    .registers 3

    invoke-direct {p0, p1}, Ls0/j;-><init>(Ls0/j;)V

    const/16 v0, 0x40

    new-array v0, v0, [I

    iput-object v0, p0, Ls0/b0;->s:[I

    invoke-virtual {p0, p1}, Ls0/b0;->m(Ls0/b0;)V

    return-void
.end method

.method public static i(III)I
    .registers 3

    and-int/2addr p1, p0

    not-int p0, p0

    and-int/2addr p0, p2

    xor-int/2addr p0, p1

    return p0
.end method

.method public static j(III)I
    .registers 4

    and-int v0, p0, p1

    xor-int/2addr p0, p1

    and-int/2addr p0, p2

    or-int/2addr p0, v0

    return p0
.end method

.method public static k(I)I
    .registers 4

    ushr-int/lit8 v0, p0, 0x2

    shl-int/lit8 v1, p0, 0x1e

    or-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0xd

    shl-int/lit8 v2, p0, 0x13

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0x16

    shl-int/lit8 p0, p0, 0xa

    or-int/2addr p0, v1

    xor-int/2addr p0, v0

    return p0
.end method

.method public static l(I)I
    .registers 4

    ushr-int/lit8 v0, p0, 0x6

    shl-int/lit8 v1, p0, 0x1a

    or-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0xb

    shl-int/lit8 v2, p0, 0x15

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0x19

    shl-int/lit8 p0, p0, 0x7

    or-int/2addr p0, v1

    xor-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public final a()Lm4/e;
    .registers 2

    new-instance v0, Ls0/b0;

    invoke-direct {v0, p0}, Ls0/b0;-><init>(Ls0/b0;)V

    return-object v0
.end method

.method public final c(Lm4/e;)V
    .registers 2

    check-cast p1, Ls0/b0;

    invoke-virtual {p0, p1}, Ls0/b0;->m(Ls0/b0;)V

    return-void
.end method

.method public final doFinal([BI)I
    .registers 5

    invoke-virtual {p0}, Ls0/j;->e()V

    iget v0, p0, Ls0/b0;->k:I

    invoke-static {p1, v0, p2}, Lm4/d;->w([BII)V

    iget v0, p0, Ls0/b0;->l:I

    add-int/lit8 v1, p2, 0x4

    invoke-static {p1, v0, v1}, Lm4/d;->w([BII)V

    iget v0, p0, Ls0/b0;->m:I

    add-int/lit8 v1, p2, 0x8

    invoke-static {p1, v0, v1}, Lm4/d;->w([BII)V

    iget v0, p0, Ls0/b0;->n:I

    add-int/lit8 v1, p2, 0xc

    invoke-static {p1, v0, v1}, Lm4/d;->w([BII)V

    iget v0, p0, Ls0/b0;->o:I

    add-int/lit8 v1, p2, 0x10

    invoke-static {p1, v0, v1}, Lm4/d;->w([BII)V

    iget v0, p0, Ls0/b0;->p:I

    add-int/lit8 v1, p2, 0x14

    invoke-static {p1, v0, v1}, Lm4/d;->w([BII)V

    iget v0, p0, Ls0/b0;->q:I

    add-int/lit8 v1, p2, 0x18

    invoke-static {p1, v0, v1}, Lm4/d;->w([BII)V

    iget v0, p0, Ls0/b0;->r:I

    add-int/lit8 p2, p2, 0x1c

    invoke-static {p1, v0, p2}, Lm4/d;->w([BII)V

    invoke-virtual {p0}, Ls0/b0;->reset()V

    const/16 p0, 0x20

    return p0
.end method

.method public final f()V
    .registers 20

    move-object/from16 v0, p0

    const/16 v1, 0x10

    move v2, v1

    :goto_5
    const/16 v3, 0x3f

    iget-object v4, v0, Ls0/b0;->s:[I

    if-gt v2, v3, :cond_3f

    add-int/lit8 v3, v2, -0x2

    aget v3, v4, v3

    ushr-int/lit8 v5, v3, 0x11

    shl-int/lit8 v6, v3, 0xf

    or-int/2addr v5, v6

    ushr-int/lit8 v6, v3, 0x13

    shl-int/lit8 v7, v3, 0xd

    or-int/2addr v6, v7

    xor-int/2addr v5, v6

    ushr-int/lit8 v3, v3, 0xa

    xor-int/2addr v3, v5

    add-int/lit8 v5, v2, -0x7

    aget v5, v4, v5

    add-int/2addr v3, v5

    add-int/lit8 v5, v2, -0xf

    aget v5, v4, v5

    ushr-int/lit8 v6, v5, 0x7

    shl-int/lit8 v7, v5, 0x19

    or-int/2addr v6, v7

    ushr-int/lit8 v7, v5, 0x12

    shl-int/lit8 v8, v5, 0xe

    or-int/2addr v7, v8

    xor-int/2addr v6, v7

    ushr-int/lit8 v5, v5, 0x3

    xor-int/2addr v5, v6

    add-int/2addr v3, v5

    add-int/lit8 v5, v2, -0x10

    aget v5, v4, v5

    add-int/2addr v3, v5

    aput v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_3f
    iget v2, v0, Ls0/b0;->k:I

    iget v3, v0, Ls0/b0;->l:I

    iget v5, v0, Ls0/b0;->m:I

    iget v6, v0, Ls0/b0;->n:I

    iget v7, v0, Ls0/b0;->o:I

    iget v8, v0, Ls0/b0;->p:I

    iget v9, v0, Ls0/b0;->q:I

    iget v10, v0, Ls0/b0;->r:I

    const/4 v11, 0x0

    move v12, v11

    move v13, v12

    :goto_52
    const/16 v14, 0x8

    if-ge v12, v14, :cond_17a

    invoke-static {v7}, Ls0/b0;->l(I)I

    move-result v15

    invoke-static {v7, v8, v9}, Ls0/b0;->i(III)I

    move-result v16

    add-int v16, v16, v15

    sget-object v15, Ls0/b0;->u:[I

    aget v17, v15, v13

    add-int v16, v16, v17

    aget v17, v4, v13

    add-int v16, v16, v17

    add-int v16, v16, v10

    add-int v6, v6, v16

    invoke-static {v2}, Ls0/b0;->k(I)I

    move-result v10

    invoke-static {v2, v3, v5}, Ls0/b0;->j(III)I

    move-result v17

    add-int v17, v17, v10

    add-int v10, v17, v16

    add-int/lit8 v16, v13, 0x1

    invoke-static {v6}, Ls0/b0;->l(I)I

    move-result v17

    invoke-static {v6, v7, v8}, Ls0/b0;->i(III)I

    move-result v18

    add-int v18, v18, v17

    aget v17, v15, v16

    add-int v18, v18, v17

    aget v16, v4, v16

    add-int v18, v18, v16

    add-int v18, v18, v9

    add-int v5, v5, v18

    invoke-static {v10}, Ls0/b0;->k(I)I

    move-result v9

    invoke-static {v10, v2, v3}, Ls0/b0;->j(III)I

    move-result v16

    add-int v16, v16, v9

    add-int v9, v16, v18

    add-int/lit8 v16, v13, 0x2

    invoke-static {v5}, Ls0/b0;->l(I)I

    move-result v17

    invoke-static {v5, v6, v7}, Ls0/b0;->i(III)I

    move-result v18

    add-int v18, v18, v17

    aget v17, v15, v16

    add-int v18, v18, v17

    aget v16, v4, v16

    add-int v18, v18, v16

    add-int v18, v18, v8

    add-int v3, v3, v18

    invoke-static {v9}, Ls0/b0;->k(I)I

    move-result v8

    invoke-static {v9, v10, v2}, Ls0/b0;->j(III)I

    move-result v16

    add-int v16, v16, v8

    add-int v8, v16, v18

    add-int/lit8 v16, v13, 0x3

    invoke-static {v3}, Ls0/b0;->l(I)I

    move-result v17

    invoke-static {v3, v5, v6}, Ls0/b0;->i(III)I

    move-result v18

    add-int v18, v18, v17

    aget v17, v15, v16

    add-int v18, v18, v17

    aget v16, v4, v16

    add-int v18, v18, v16

    add-int v18, v18, v7

    add-int v2, v2, v18

    invoke-static {v8}, Ls0/b0;->k(I)I

    move-result v7

    invoke-static {v8, v9, v10}, Ls0/b0;->j(III)I

    move-result v16

    add-int v16, v16, v7

    add-int v7, v16, v18

    add-int/lit8 v16, v13, 0x4

    invoke-static {v2}, Ls0/b0;->l(I)I

    move-result v17

    invoke-static {v2, v3, v5}, Ls0/b0;->i(III)I

    move-result v18

    add-int v18, v18, v17

    aget v17, v15, v16

    add-int v18, v18, v17

    aget v16, v4, v16

    add-int v18, v18, v16

    add-int v18, v18, v6

    add-int v10, v10, v18

    invoke-static {v7}, Ls0/b0;->k(I)I

    move-result v6

    invoke-static {v7, v8, v9}, Ls0/b0;->j(III)I

    move-result v16

    add-int v16, v16, v6

    add-int v6, v16, v18

    add-int/lit8 v16, v13, 0x5

    invoke-static {v10}, Ls0/b0;->l(I)I

    move-result v17

    invoke-static {v10, v2, v3}, Ls0/b0;->i(III)I

    move-result v18

    add-int v18, v18, v17

    aget v17, v15, v16

    add-int v18, v18, v17

    aget v16, v4, v16

    add-int v18, v18, v16

    add-int v18, v18, v5

    add-int v9, v9, v18

    invoke-static {v6}, Ls0/b0;->k(I)I

    move-result v5

    invoke-static {v6, v7, v8}, Ls0/b0;->j(III)I

    move-result v16

    add-int v16, v16, v5

    add-int v5, v16, v18

    add-int/lit8 v16, v13, 0x6

    invoke-static {v9}, Ls0/b0;->l(I)I

    move-result v17

    invoke-static {v9, v10, v2}, Ls0/b0;->i(III)I

    move-result v18

    add-int v18, v18, v17

    aget v17, v15, v16

    add-int v18, v18, v17

    aget v16, v4, v16

    add-int v18, v18, v16

    add-int v18, v18, v3

    add-int v8, v8, v18

    invoke-static {v5}, Ls0/b0;->k(I)I

    move-result v3

    invoke-static {v5, v6, v7}, Ls0/b0;->j(III)I

    move-result v16

    add-int v16, v16, v3

    add-int v3, v16, v18

    add-int/lit8 v16, v13, 0x7

    invoke-static {v8}, Ls0/b0;->l(I)I

    move-result v17

    invoke-static {v8, v9, v10}, Ls0/b0;->i(III)I

    move-result v18

    add-int v18, v18, v17

    aget v15, v15, v16

    add-int v18, v18, v15

    aget v15, v4, v16

    add-int v18, v18, v15

    add-int v18, v18, v2

    add-int v7, v7, v18

    invoke-static {v3}, Ls0/b0;->k(I)I

    move-result v2

    invoke-static {v3, v5, v6}, Ls0/b0;->j(III)I

    move-result v15

    add-int/2addr v15, v2

    add-int v2, v15, v18

    add-int/2addr v13, v14

    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_52

    :cond_17a
    iget v12, v0, Ls0/b0;->k:I

    add-int/2addr v12, v2

    iput v12, v0, Ls0/b0;->k:I

    iget v2, v0, Ls0/b0;->l:I

    add-int/2addr v2, v3

    iput v2, v0, Ls0/b0;->l:I

    iget v2, v0, Ls0/b0;->m:I

    add-int/2addr v2, v5

    iput v2, v0, Ls0/b0;->m:I

    iget v2, v0, Ls0/b0;->n:I

    add-int/2addr v2, v6

    iput v2, v0, Ls0/b0;->n:I

    iget v2, v0, Ls0/b0;->o:I

    add-int/2addr v2, v7

    iput v2, v0, Ls0/b0;->o:I

    iget v2, v0, Ls0/b0;->p:I

    add-int/2addr v2, v8

    iput v2, v0, Ls0/b0;->p:I

    iget v2, v0, Ls0/b0;->q:I

    add-int/2addr v2, v9

    iput v2, v0, Ls0/b0;->q:I

    iget v2, v0, Ls0/b0;->r:I

    add-int/2addr v2, v10

    iput v2, v0, Ls0/b0;->r:I

    iput v11, v0, Ls0/b0;->t:I

    move v0, v11

    :goto_1a5
    if-ge v0, v1, :cond_1ac

    aput v11, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a5

    :cond_1ac
    return-void
.end method

.method public final g(J)V
    .registers 7

    iget v0, p0, Ls0/b0;->t:I

    const/16 v1, 0xe

    if-le v0, v1, :cond_9

    invoke-virtual {p0}, Ls0/b0;->f()V

    :cond_9
    const/16 v0, 0x20

    ushr-long v2, p1, v0

    long-to-int v0, v2

    iget-object p0, p0, Ls0/b0;->s:[I

    aput v0, p0, v1

    const/16 v0, 0xf

    long-to-int p1, p1

    aput p1, p0, v0

    return-void
.end method

.method public final getAlgorithmName()Ljava/lang/String;
    .registers 1

    const-string p0, "SHA-256"

    return-object p0
.end method

.method public final getDigestSize()I
    .registers 1

    const/16 p0, 0x20

    return p0
.end method

.method public final h(I[B)V
    .registers 4

    iget v0, p0, Ls0/b0;->t:I

    invoke-static {p1, p2}, Lm4/d;->b(I[B)I

    move-result p1

    iget-object p2, p0, Ls0/b0;->s:[I

    aput p1, p2, v0

    iget p1, p0, Ls0/b0;->t:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ls0/b0;->t:I

    const/16 p2, 0x10

    if-ne p1, p2, :cond_17

    invoke-virtual {p0}, Ls0/b0;->f()V

    :cond_17
    return-void
.end method

.method public final m(Ls0/b0;)V
    .registers 6

    invoke-virtual {p0, p1}, Ls0/j;->d(Ls0/j;)V

    iget v0, p1, Ls0/b0;->k:I

    iput v0, p0, Ls0/b0;->k:I

    iget v0, p1, Ls0/b0;->l:I

    iput v0, p0, Ls0/b0;->l:I

    iget v0, p1, Ls0/b0;->m:I

    iput v0, p0, Ls0/b0;->m:I

    iget v0, p1, Ls0/b0;->n:I

    iput v0, p0, Ls0/b0;->n:I

    iget v0, p1, Ls0/b0;->o:I

    iput v0, p0, Ls0/b0;->o:I

    iget v0, p1, Ls0/b0;->p:I

    iput v0, p0, Ls0/b0;->p:I

    iget v0, p1, Ls0/b0;->q:I

    iput v0, p0, Ls0/b0;->q:I

    iget v0, p1, Ls0/b0;->r:I

    iput v0, p0, Ls0/b0;->r:I

    iget-object v0, p1, Ls0/b0;->s:[I

    iget-object v1, p0, Ls0/b0;->s:[I

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p1, Ls0/b0;->t:I

    iput p1, p0, Ls0/b0;->t:I

    return-void
.end method

.method public final reset()V
    .registers 5

    invoke-super {p0}, Ls0/j;->reset()V

    const v0, 0x6a09e667

    iput v0, p0, Ls0/b0;->k:I

    const v0, -0x4498517b

    iput v0, p0, Ls0/b0;->l:I

    const v0, 0x3c6ef372

    iput v0, p0, Ls0/b0;->m:I

    const v0, -0x5ab00ac6

    iput v0, p0, Ls0/b0;->n:I

    const v0, 0x510e527f

    iput v0, p0, Ls0/b0;->o:I

    const v0, -0x64fa9774

    iput v0, p0, Ls0/b0;->p:I

    const v0, 0x1f83d9ab

    iput v0, p0, Ls0/b0;->q:I

    const v0, 0x5be0cd19

    iput v0, p0, Ls0/b0;->r:I

    const/4 v0, 0x0

    iput v0, p0, Ls0/b0;->t:I

    move v1, v0

    :goto_2f
    iget-object v2, p0, Ls0/b0;->s:[I

    array-length v3, v2

    if-eq v1, v3, :cond_39

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    :cond_39
    return-void
.end method
