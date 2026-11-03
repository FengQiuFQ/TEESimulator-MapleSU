.class public final Ls0/h0;
.super Ls0/j;


# static fields
.field public static final o:[I


# instance fields
.field public final k:[I

.field public final l:[I

.field public m:I

.field public final n:[I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/16 v0, 0x40

    new-array v1, v0, [I

    sput-object v1, Ls0/h0;->o:[I

    const/4 v1, 0x0

    :goto_7
    const/16 v2, 0x10

    if-ge v1, v2, :cond_1b

    sget-object v2, Ls0/h0;->o:[I

    const v3, 0x79cc4519

    shl-int v4, v3, v1

    rsub-int/lit8 v5, v1, 0x20

    ushr-int/2addr v3, v5

    or-int/2addr v3, v4

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1b
    :goto_1b
    if-ge v2, v0, :cond_30

    rem-int/lit8 v1, v2, 0x20

    sget-object v3, Ls0/h0;->o:[I

    const v4, 0x7a879d8a

    shl-int v5, v4, v1

    rsub-int/lit8 v1, v1, 0x20

    ushr-int v1, v4, v1

    or-int/2addr v1, v5

    aput v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_30
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    sget-object v0, Lorg/bouncycastle/crypto/j;->d:Lorg/bouncycastle/crypto/j;

    invoke-direct {p0, v0}, Ls0/h0;-><init>(Lorg/bouncycastle/crypto/j;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/j;)V
    .registers 2

    invoke-direct {p0, p1}, Ls0/j;-><init>(Lorg/bouncycastle/crypto/j;)V

    const/16 p1, 0x8

    new-array p1, p1, [I

    iput-object p1, p0, Ls0/h0;->k:[I

    const/16 p1, 0x10

    new-array p1, p1, [I

    iput-object p1, p0, Ls0/h0;->l:[I

    const/16 p1, 0x44

    new-array p1, p1, [I

    iput-object p1, p0, Ls0/h0;->n:[I

    invoke-static {p0}, Ls0/o0;->a(Lorg/bouncycastle/crypto/v;)Lr0/a;

    invoke-static {}, Lorg/bouncycastle/crypto/o;->a()V

    invoke-virtual {p0}, Ls0/h0;->reset()V

    return-void
.end method

.method public constructor <init>(Ls0/h0;)V
    .registers 7

    invoke-direct {p0, p1}, Ls0/j;-><init>(Ls0/j;)V

    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Ls0/h0;->k:[I

    const/16 v1, 0x10

    new-array v1, v1, [I

    iput-object v1, p0, Ls0/h0;->l:[I

    const/16 v2, 0x44

    new-array v2, v2, [I

    iput-object v2, p0, Ls0/h0;->n:[I

    invoke-static {p0}, Ls0/o0;->a(Lorg/bouncycastle/crypto/v;)Lr0/a;

    invoke-static {}, Lorg/bouncycastle/crypto/o;->a()V

    iget-object v2, p1, Ls0/h0;->k:[I

    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Ls0/h0;->l:[I

    array-length v2, v1

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p1, Ls0/h0;->m:I

    iput p1, p0, Ls0/h0;->m:I

    return-void
.end method


# virtual methods
.method public final a()Lm4/e;
    .registers 2

    new-instance v0, Ls0/h0;

    invoke-direct {v0, p0}, Ls0/h0;-><init>(Ls0/h0;)V

    return-object v0
.end method

.method public final c(Lm4/e;)V
    .registers 6

    check-cast p1, Ls0/h0;

    invoke-virtual {p0, p1}, Ls0/j;->d(Ls0/j;)V

    iget-object v0, p1, Ls0/h0;->k:[I

    iget-object v1, p0, Ls0/h0;->k:[I

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Ls0/h0;->l:[I

    iget-object v1, p0, Ls0/h0;->l:[I

    array-length v2, v1

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p1, Ls0/h0;->m:I

    iput p1, p0, Ls0/h0;->m:I

    return-void
.end method

.method public final doFinal([BI)I
    .registers 6

    invoke-virtual {p0}, Ls0/j;->e()V

    const/4 v0, 0x0

    :goto_4
    iget-object v1, p0, Ls0/h0;->k:[I

    array-length v2, v1

    if-ge v0, v2, :cond_13

    aget v1, v1, v0

    invoke-static {p1, v1, p2}, Lm4/d;->w([BII)V

    add-int/lit8 p2, p2, 0x4

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_13
    invoke-virtual {p0}, Ls0/h0;->reset()V

    const/16 p0, 0x20

    return p0
.end method

.method public final f()V
    .registers 28

    move-object/from16 v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_4
    iget-object v3, v0, Ls0/h0;->n:[I

    const/16 v4, 0x10

    if-ge v2, v4, :cond_13

    iget-object v4, v0, Ls0/h0;->l:[I

    aget v4, v4, v2

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_13
    move v2, v4

    :goto_14
    const/16 v5, 0x44

    if-ge v2, v5, :cond_4b

    add-int/lit8 v5, v2, -0x3

    aget v5, v3, v5

    shl-int/lit8 v6, v5, 0xf

    ushr-int/lit8 v5, v5, 0x11

    or-int/2addr v5, v6

    add-int/lit8 v6, v2, -0xd

    aget v6, v3, v6

    shl-int/lit8 v7, v6, 0x7

    ushr-int/lit8 v6, v6, 0x19

    or-int/2addr v6, v7

    add-int/lit8 v7, v2, -0x10

    aget v7, v3, v7

    add-int/lit8 v8, v2, -0x9

    aget v8, v3, v8

    xor-int/2addr v7, v8

    xor-int/2addr v5, v7

    shl-int/lit8 v7, v5, 0xf

    ushr-int/lit8 v8, v5, 0x11

    or-int/2addr v7, v8

    shl-int/lit8 v8, v5, 0x17

    ushr-int/lit8 v9, v5, 0x9

    or-int/2addr v8, v9

    xor-int/2addr v5, v7

    xor-int/2addr v5, v8

    xor-int/2addr v5, v6

    add-int/lit8 v6, v2, -0x6

    aget v6, v3, v6

    xor-int/2addr v5, v6

    aput v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_4b
    iget-object v2, v0, Ls0/h0;->k:[I

    aget v5, v2, v1

    const/4 v6, 0x1

    aget v7, v2, v6

    const/4 v8, 0x2

    aget v9, v2, v8

    const/4 v10, 0x3

    aget v11, v2, v10

    const/4 v12, 0x4

    aget v13, v2, v12

    const/4 v14, 0x5

    aget v15, v2, v14

    const/16 v16, 0x6

    aget v17, v2, v16

    const/16 v18, 0x7

    aget v19, v2, v18

    move/from16 v20, v19

    move/from16 v19, v6

    move/from16 v6, v20

    move/from16 v20, v8

    move v8, v1

    :goto_6f
    sget-object v21, Ls0/h0;->o:[I

    if-ge v8, v4, :cond_d4

    shl-int/lit8 v22, v5, 0xc

    ushr-int/lit8 v23, v5, 0x14

    or-int v22, v22, v23

    add-int v23, v22, v13

    aget v21, v21, v8

    add-int v23, v23, v21

    shl-int/lit8 v21, v23, 0x7

    ushr-int/lit8 v23, v23, 0x19

    or-int v4, v21, v23

    move/from16 v23, v10

    xor-int v10, v4, v22

    move/from16 v22, v12

    aget v12, v3, v8

    add-int/lit8 v21, v8, 0x4

    aget v21, v3, v21

    move/from16 v25, v14

    xor-int v14, v12, v21

    xor-int v21, v5, v7

    move/from16 v26, v1

    xor-int v1, v21, v9

    invoke-static {v1, v11, v10, v14}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->t(IIII)I

    move-result v1

    xor-int v10, v13, v15

    xor-int v10, v10, v17

    invoke-static {v10, v6, v4, v12}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->t(IIII)I

    move-result v4

    shl-int/lit8 v6, v7, 0x9

    ushr-int/lit8 v7, v7, 0x17

    or-int/2addr v6, v7

    shl-int/lit8 v7, v15, 0x13

    ushr-int/lit8 v10, v15, 0xd

    or-int/2addr v7, v10

    shl-int/lit8 v10, v4, 0x9

    ushr-int/lit8 v11, v4, 0x17

    or-int/2addr v10, v11

    shl-int/lit8 v11, v4, 0x11

    ushr-int/lit8 v12, v4, 0xf

    or-int/2addr v11, v12

    xor-int/2addr v4, v10

    xor-int/2addr v4, v11

    add-int/lit8 v8, v8, 0x1

    move v11, v9

    move v15, v13

    move/from16 v12, v22

    move/from16 v10, v23

    move/from16 v14, v25

    move v13, v4

    move v9, v6

    move/from16 v6, v17

    const/16 v4, 0x10

    move/from16 v17, v7

    move v7, v5

    move v5, v1

    move/from16 v1, v26

    goto :goto_6f

    :cond_d4
    move/from16 v26, v1

    move/from16 v23, v10

    move/from16 v22, v12

    move/from16 v25, v14

    const/16 v4, 0x10

    :goto_de
    const/16 v1, 0x40

    if-ge v4, v1, :cond_131

    shl-int/lit8 v1, v5, 0xc

    ushr-int/lit8 v8, v5, 0x14

    or-int/2addr v1, v8

    add-int v8, v1, v13

    aget v10, v21, v4

    add-int/2addr v8, v10

    shl-int/lit8 v10, v8, 0x7

    ushr-int/lit8 v8, v8, 0x19

    or-int/2addr v8, v10

    xor-int/2addr v1, v8

    aget v10, v3, v4

    add-int/lit8 v12, v4, 0x4

    aget v12, v3, v12

    xor-int/2addr v12, v10

    or-int v14, v7, v9

    and-int/2addr v14, v5

    and-int v24, v7, v9

    or-int v14, v14, v24

    invoke-static {v14, v11, v1, v12}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->t(IIII)I

    move-result v1

    and-int v11, v13, v15

    not-int v12, v13

    and-int v12, v12, v17

    or-int/2addr v11, v12

    invoke-static {v11, v6, v8, v10}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->t(IIII)I

    move-result v6

    shl-int/lit8 v8, v7, 0x9

    ushr-int/lit8 v7, v7, 0x17

    or-int/2addr v7, v8

    shl-int/lit8 v8, v15, 0x13

    ushr-int/lit8 v10, v15, 0xd

    or-int/2addr v8, v10

    shl-int/lit8 v10, v6, 0x9

    ushr-int/lit8 v11, v6, 0x17

    or-int/2addr v10, v11

    shl-int/lit8 v11, v6, 0x11

    ushr-int/lit8 v12, v6, 0xf

    or-int/2addr v11, v12

    xor-int/2addr v6, v10

    xor-int/2addr v6, v11

    add-int/lit8 v4, v4, 0x1

    move v11, v9

    move v15, v13

    move v13, v6

    move v9, v7

    move/from16 v6, v17

    move v7, v5

    move/from16 v17, v8

    move v5, v1

    goto :goto_de

    :cond_131
    aget v1, v2, v26

    xor-int/2addr v1, v5

    aput v1, v2, v26

    aget v1, v2, v19

    xor-int/2addr v1, v7

    aput v1, v2, v19

    aget v1, v2, v20

    xor-int/2addr v1, v9

    aput v1, v2, v20

    aget v1, v2, v23

    xor-int/2addr v1, v11

    aput v1, v2, v23

    aget v1, v2, v22

    xor-int/2addr v1, v13

    aput v1, v2, v22

    aget v1, v2, v25

    xor-int/2addr v1, v15

    aput v1, v2, v25

    aget v1, v2, v16

    xor-int v1, v1, v17

    aput v1, v2, v16

    aget v1, v2, v18

    xor-int/2addr v1, v6

    aput v1, v2, v18

    move/from16 v1, v26

    iput v1, v0, Ls0/h0;->m:I

    return-void
.end method

.method public final g(J)V
    .registers 8

    iget v0, p0, Ls0/h0;->m:I

    const/4 v1, 0x0

    iget-object v2, p0, Ls0/h0;->l:[I

    const/16 v3, 0xe

    if-le v0, v3, :cond_12

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ls0/h0;->m:I

    invoke-virtual {p0}, Ls0/h0;->f()V

    :cond_12
    :goto_12
    iget v0, p0, Ls0/h0;->m:I

    if-ge v0, v3, :cond_1d

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ls0/h0;->m:I

    goto :goto_12

    :cond_1d
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ls0/h0;->m:I

    const/16 v3, 0x20

    ushr-long v3, p1, v3

    long-to-int v3, v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Ls0/h0;->m:I

    long-to-int p0, p1

    aput p0, v2, v1

    return-void
.end method

.method public final getAlgorithmName()Ljava/lang/String;
    .registers 1

    const-string p0, "SM3"

    return-object p0
.end method

.method public final getDigestSize()I
    .registers 1

    const/16 p0, 0x20

    return p0
.end method

.method public final h(I[B)V
    .registers 5

    iget v0, p0, Ls0/h0;->m:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ls0/h0;->m:I

    invoke-static {p1, p2}, Lm4/d;->b(I[B)I

    move-result p1

    iget-object p2, p0, Ls0/h0;->l:[I

    aput p1, p2, v0

    iget p1, p0, Ls0/h0;->m:I

    const/16 p2, 0x10

    if-lt p1, p2, :cond_17

    invoke-virtual {p0}, Ls0/h0;->f()V

    :cond_17
    return-void
.end method

.method public final reset()V
    .registers 5

    invoke-super {p0}, Ls0/j;->reset()V

    const v0, 0x7380166f

    iget-object v1, p0, Ls0/h0;->k:[I

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    const v3, 0x4914b2b9

    aput v3, v1, v0

    const/4 v0, 0x2

    const v3, 0x172442d7

    aput v3, v1, v0

    const/4 v0, 0x3

    const v3, -0x2575fa00

    aput v3, v1, v0

    const/4 v0, 0x4

    const v3, -0x5690cf44

    aput v3, v1, v0

    const/4 v0, 0x5

    const v3, 0x163138aa

    aput v3, v1, v0

    const/4 v0, 0x6

    const v3, -0x1c7211b3

    aput v3, v1, v0

    const/4 v0, 0x7

    const v3, -0x4f04f1b2

    aput v3, v1, v0

    iput v2, p0, Ls0/h0;->m:I

    return-void
.end method
