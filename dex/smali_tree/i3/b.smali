.class public final Li3/b;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/security/SecureRandom;

.field public final b:Ls0/g0;

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:I

.field public final m:I

.field public final n:I

.field public final o:I

.field public final p:I

.field public final q:I

.field public final r:Lb1/b;


# direct methods
.method public constructor <init>(ILjava/security/SecureRandom;)V
    .registers 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ls0/g0;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ls0/g0;-><init>(I)V

    iput-object v0, p0, Li3/b;->b:Ls0/g0;

    const/16 v0, 0x20

    const/high16 v1, 0x20000

    const/16 v2, 0x60

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/high16 v5, 0x80000

    const/4 v6, 0x2

    if-eq p1, v6, :cond_79

    const/4 v7, 0x3

    const v8, 0x3ff00

    const/16 v9, 0x80

    const/16 v10, 0x280

    if-eq p1, v7, :cond_57

    if-ne p1, v3, :cond_49

    const/16 p1, 0x8

    iput p1, p0, Li3/b;->f:I

    const/4 p1, 0x7

    iput p1, p0, Li3/b;->g:I

    iput v6, p0, Li3/b;->h:I

    const/16 p1, 0x3c

    iput p1, p0, Li3/b;->i:I

    const/16 p1, 0x78

    iput p1, p0, Li3/b;->j:I

    iput v5, p0, Li3/b;->k:I

    iput v8, p0, Li3/b;->l:I

    const/16 p1, 0x4b

    iput p1, p0, Li3/b;->m:I

    iput v10, p0, Li3/b;->c:I

    iput v9, p0, Li3/b;->d:I

    iput v2, p0, Li3/b;->e:I

    const/16 p1, 0x40

    iput p1, p0, Li3/b;->n:I

    goto :goto_9e

    :cond_49
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "The mode "

    const-string v0, "is not supported by Crystals Dilithium!"

    invoke-static {p2, v0, p1}, Lb/b;->g(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_57
    const/4 p1, 0x6

    iput p1, p0, Li3/b;->f:I

    iput v3, p0, Li3/b;->g:I

    iput v4, p0, Li3/b;->h:I

    const/16 p1, 0x31

    iput p1, p0, Li3/b;->i:I

    const/16 p1, 0xc4

    iput p1, p0, Li3/b;->j:I

    iput v5, p0, Li3/b;->k:I

    iput v8, p0, Li3/b;->l:I

    const/16 p1, 0x37

    iput p1, p0, Li3/b;->m:I

    iput v10, p0, Li3/b;->c:I

    iput v9, p0, Li3/b;->d:I

    iput v9, p0, Li3/b;->e:I

    const/16 p1, 0x30

    iput p1, p0, Li3/b;->n:I

    goto :goto_9e

    :cond_79
    iput v4, p0, Li3/b;->f:I

    iput v4, p0, Li3/b;->g:I

    iput v6, p0, Li3/b;->h:I

    const/16 p1, 0x27

    iput p1, p0, Li3/b;->i:I

    const/16 p1, 0x4e

    iput p1, p0, Li3/b;->j:I

    iput v1, p0, Li3/b;->k:I

    const p1, 0x17400

    iput p1, p0, Li3/b;->l:I

    const/16 p1, 0x50

    iput p1, p0, Li3/b;->m:I

    const/16 p1, 0x240

    iput p1, p0, Li3/b;->c:I

    const/16 p1, 0xc0

    iput p1, p0, Li3/b;->d:I

    iput v2, p0, Li3/b;->e:I

    iput v0, p0, Li3/b;->n:I

    :goto_9e
    new-instance p1, Lb1/b;

    invoke-direct {p1}, Lb1/b;-><init>()V

    iput-object p1, p0, Li3/b;->r:Lb1/b;

    iput-object p2, p0, Li3/b;->a:Ljava/security/SecureRandom;

    iget p1, p0, Li3/b;->m:I

    iget p2, p0, Li3/b;->f:I

    add-int/2addr p1, p2

    mul-int/lit16 p2, p2, 0x140

    add-int/2addr p2, v0

    iput p2, p0, Li3/b;->o:I

    iget p2, p0, Li3/b;->n:I

    iget v0, p0, Li3/b;->g:I

    iget v2, p0, Li3/b;->c:I

    mul-int/2addr v0, v2

    add-int/2addr v0, p2

    add-int/2addr v0, p1

    iput v0, p0, Li3/b;->p:I

    iget p1, p0, Li3/b;->k:I

    if-ne p1, v1, :cond_c3

    iput v3, p0, Li3/b;->q:I

    return-void

    :cond_c3
    if-ne p1, v5, :cond_c8

    iput v3, p0, Li3/b;->q:I

    return-void

    :cond_c8
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Wrong Dilithium Gamma1!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a([B[BILs0/g0;[B[B)Z
    .registers 35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    iget v4, v0, Li3/b;->p:I

    move/from16 v6, p3

    if-eq v6, v4, :cond_12

    const/16 v17, 0x0

    goto/16 :goto_1c7

    :cond_12
    new-instance v4, Li3/j;

    const/4 v6, 0x0

    invoke-direct {v4, v0, v6}, Li3/j;-><init>(Li3/b;I)V

    new-instance v6, Li3/j;

    const/4 v7, 0x1

    invoke-direct {v6, v0, v7}, Li3/j;-><init>(Li3/b;I)V

    const/4 v7, 0x0

    :cond_1f
    :goto_1f
    const/16 v8, 0x40

    iget v9, v0, Li3/b;->n:I

    iget-object v10, v6, Li3/j;->b:[Lg1/d;

    iget v11, v0, Li3/b;->c:I

    iget v12, v0, Li3/b;->g:I

    if-ge v7, v12, :cond_14a

    aget-object v10, v10, v7

    mul-int v12, v7, v11

    add-int/2addr v12, v9

    add-int/lit8 v7, v7, 0x1

    mul-int/2addr v11, v7

    add-int/2addr v11, v9

    invoke-static {v2, v12, v11}, Lm4/d;->q([BII)[B

    move-result-object v9

    iget-object v11, v10, Lg1/d;->h:Ljava/lang/Object;

    check-cast v11, Li3/b;

    iget v11, v11, Li3/b;->k:I

    const/high16 v12, 0x20000

    if-ne v11, v12, :cond_e5

    const/4 v12, 0x0

    :goto_43
    if-ge v12, v8, :cond_e1

    mul-int/lit8 v13, v12, 0x4

    mul-int/lit8 v14, v12, 0x9

    aget-byte v15, v9, v14

    and-int/lit16 v15, v15, 0xff

    add-int/lit8 v16, v14, 0x1

    const/16 v17, 0x0

    aget-byte v5, v9, v16

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v5, v15

    add-int/lit8 v15, v14, 0x2

    aget-byte v15, v9, v15

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v16, v15, 0x10

    or-int v5, v5, v16

    const v16, 0x3ffff

    and-int v5, v5, v16

    iget-object v8, v10, Lg1/d;->j:Ljava/lang/Object;

    check-cast v8, [I

    aput v5, v8, v13

    add-int/lit8 v5, v13, 0x1

    ushr-int/lit8 v15, v15, 0x2

    add-int/lit8 v18, v14, 0x3

    move/from16 v19, v5

    aget-byte v5, v9, v18

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x6

    or-int/2addr v5, v15

    add-int/lit8 v15, v14, 0x4

    aget-byte v15, v9, v15

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v18, v15, 0xe

    or-int v5, v5, v18

    and-int v5, v5, v16

    aput v5, v8, v19

    add-int/lit8 v5, v13, 0x2

    ushr-int/lit8 v15, v15, 0x4

    add-int/lit8 v18, v14, 0x5

    move/from16 v20, v5

    aget-byte v5, v9, v18

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x4

    or-int/2addr v5, v15

    add-int/lit8 v15, v14, 0x6

    aget-byte v15, v9, v15

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v18, v15, 0xc

    or-int v5, v5, v18

    and-int v5, v5, v16

    aput v5, v8, v20

    add-int/lit8 v5, v13, 0x3

    ushr-int/lit8 v15, v15, 0x6

    add-int/lit8 v18, v14, 0x7

    move/from16 v21, v5

    aget-byte v5, v9, v18

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x2

    or-int/2addr v5, v15

    add-int/lit8 v14, v14, 0x8

    aget-byte v14, v9, v14

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0xa

    or-int/2addr v5, v14

    and-int v5, v5, v16

    aput v5, v8, v21

    aget v5, v8, v13

    sub-int v5, v11, v5

    aput v5, v8, v13

    aget v5, v8, v19

    sub-int v5, v11, v5

    aput v5, v8, v19

    aget v5, v8, v20

    sub-int v5, v11, v5

    aput v5, v8, v20

    aget v5, v8, v21

    sub-int v5, v11, v5

    aput v5, v8, v21

    add-int/lit8 v12, v12, 0x1

    const/16 v8, 0x40

    goto/16 :goto_43

    :cond_e1
    const/16 v17, 0x0

    goto/16 :goto_1f

    :cond_e5
    const/16 v17, 0x0

    const/high16 v5, 0x80000

    if-ne v11, v5, :cond_142

    move/from16 v5, v17

    :goto_ed
    const/16 v8, 0x80

    if-ge v5, v8, :cond_1f

    mul-int/lit8 v8, v5, 0x2

    mul-int/lit8 v12, v5, 0x5

    aget-byte v13, v9, v12

    and-int/lit16 v13, v13, 0xff

    add-int/lit8 v14, v12, 0x1

    aget-byte v14, v9, v14

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x8

    or-int/2addr v13, v14

    add-int/lit8 v14, v12, 0x2

    aget-byte v14, v9, v14

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v15, v14, 0x10

    or-int/2addr v13, v15

    const v15, 0xfffff

    and-int/2addr v13, v15

    move/from16 p3, v15

    iget-object v15, v10, Lg1/d;->j:Ljava/lang/Object;

    check-cast v15, [I

    aput v13, v15, v8

    add-int/lit8 v13, v8, 0x1

    ushr-int/lit8 v14, v14, 0x4

    add-int/lit8 v16, v12, 0x3

    move/from16 v18, v5

    aget-byte v5, v9, v16

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x4

    or-int/2addr v5, v14

    add-int/lit8 v12, v12, 0x4

    aget-byte v12, v9, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0xc

    or-int/2addr v5, v12

    and-int v5, v5, p3

    aput v5, v15, v13

    aget v5, v15, v8

    sub-int v5, v11, v5

    aput v5, v15, v8

    aget v5, v15, v13

    sub-int v5, v11, v5

    aput v5, v15, v13

    add-int/lit8 v5, v18, 0x1

    goto :goto_ed

    :cond_142
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Wrong Dilithium Gamma1!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14a
    const/16 v17, 0x0

    mul-int/2addr v12, v11

    add-int/2addr v12, v9

    move/from16 v5, v17

    move v7, v5

    :goto_151
    const/16 v8, 0x100

    iget v11, v0, Li3/b;->f:I

    iget-object v14, v4, Li3/j;->b:[Lg1/d;

    iget v15, v0, Li3/b;->m:I

    if-ge v5, v11, :cond_1a5

    move/from16 v11, v17

    :goto_15d
    const/16 v16, 0x1

    if-ge v11, v8, :cond_16c

    aget-object v13, v14, v5

    iget-object v13, v13, Lg1/d;->j:Ljava/lang/Object;

    check-cast v13, [I

    aput v17, v13, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_15d

    :cond_16c
    add-int v8, v12, v15

    add-int/2addr v8, v5

    aget-byte v11, v2, v8

    and-int/lit16 v11, v11, 0xff

    if-lt v11, v7, :cond_1c7

    if-le v11, v15, :cond_178

    goto :goto_1c7

    :cond_178
    move v11, v7

    :goto_179
    aget-byte v13, v2, v8

    and-int/lit16 v15, v13, 0xff

    if-ge v11, v15, :cond_1a1

    if-le v11, v7, :cond_190

    add-int v13, v12, v11

    aget-byte v15, v2, v13

    and-int/lit16 v15, v15, 0xff

    add-int/lit8 v13, v13, -0x1

    aget-byte v13, v2, v13

    and-int/lit16 v13, v13, 0xff

    if-gt v15, v13, :cond_190

    goto :goto_1c7

    :cond_190
    aget-object v13, v14, v5

    add-int v15, v12, v11

    aget-byte v15, v2, v15

    and-int/lit16 v15, v15, 0xff

    iget-object v13, v13, Lg1/d;->j:Ljava/lang/Object;

    check-cast v13, [I

    aput v16, v13, v15

    add-int/lit8 v11, v11, 0x1

    goto :goto_179

    :cond_1a1
    add-int/lit8 v5, v5, 0x1

    move v7, v13

    goto :goto_151

    :cond_1a5
    const/16 v16, 0x1

    :goto_1a7
    if-ge v7, v15, :cond_1b5

    add-int v4, v12, v7

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    if-eqz v4, :cond_1b2

    goto :goto_1c7

    :cond_1b2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1a7

    :cond_1b5
    iget v4, v0, Li3/b;->k:I

    iget v5, v0, Li3/b;->j:I

    sub-int/2addr v4, v5

    move/from16 v5, v17

    :goto_1bc
    array-length v7, v10

    if-ge v5, v7, :cond_1cb

    aget-object v7, v10, v5

    invoke-virtual {v7, v4}, Lg1/d;->e(I)Z

    move-result v7

    if-eqz v7, :cond_1c8

    :cond_1c7
    :goto_1c7
    return v17

    :cond_1c8
    add-int/lit8 v5, v5, 0x1

    goto :goto_1bc

    :cond_1cb
    new-instance v4, Lg1/d;

    invoke-direct {v4, v0}, Lg1/d;-><init>(Li3/b;)V

    new-instance v5, Lb1/a;

    invoke-direct {v5, v0}, Lb1/a;-><init>(Li3/b;)V

    new-instance v7, Li3/j;

    const/4 v10, 0x0

    invoke-direct {v7, v0, v10}, Li3/j;-><init>(Li3/b;I)V

    new-instance v10, Li3/j;

    const/4 v12, 0x0

    invoke-direct {v10, v0, v12}, Li3/j;-><init>(Li3/b;I)V

    move/from16 v12, v17

    :goto_1e3
    iget-object v13, v7, Li3/j;->b:[Lg1/d;

    if-ge v12, v11, :cond_26d

    aget-object v13, v13, v12

    mul-int/lit16 v15, v12, 0x140

    add-int/lit8 v12, v12, 0x1

    mul-int/lit16 v8, v12, 0x140

    move/from16 v19, v11

    move-object/from16 v11, p6

    invoke-static {v11, v15, v8}, Lm4/d;->q([BII)[B

    move-result-object v8

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v20, v8

    move/from16 v15, v17

    :goto_1fe
    const/16 v8, 0x40

    if-ge v15, v8, :cond_267

    mul-int/lit8 v8, v15, 0x4

    mul-int/lit8 v21, v15, 0x5

    move/from16 v22, v8

    aget-byte v8, v20, v21

    and-int/lit16 v8, v8, 0xff

    add-int/lit8 v23, v21, 0x1

    move/from16 v24, v8

    aget-byte v8, v20, v23

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v23, v8, 0x8

    move/from16 v25, v8

    or-int v8, v24, v23

    and-int/lit16 v8, v8, 0x3ff

    move/from16 v23, v8

    iget-object v8, v13, Lg1/d;->j:Ljava/lang/Object;

    check-cast v8, [I

    aput v23, v8, v22

    add-int/lit8 v23, v22, 0x1

    shr-int/lit8 v24, v25, 0x2

    add-int/lit8 v25, v21, 0x2

    move-object/from16 v26, v8

    aget-byte v8, v20, v25

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v25, v8, 0x6

    move/from16 v27, v8

    or-int v8, v24, v25

    and-int/lit16 v8, v8, 0x3ff

    aput v8, v26, v23

    add-int/lit8 v8, v22, 0x2

    shr-int/lit8 v23, v27, 0x4

    add-int/lit8 v24, v21, 0x3

    move/from16 v25, v8

    aget-byte v8, v20, v24

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v24, v8, 0x4

    move/from16 v27, v8

    or-int v8, v23, v24

    and-int/lit16 v8, v8, 0x3ff

    aput v8, v26, v25

    add-int/lit8 v8, v22, 0x3

    shr-int/lit8 v22, v27, 0x6

    add-int/lit8 v21, v21, 0x4

    move/from16 v23, v8

    aget-byte v8, v20, v21

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x2

    or-int v8, v22, v8

    and-int/lit16 v8, v8, 0x3ff

    aput v8, v26, v23

    add-int/lit8 v15, v15, 0x1

    goto :goto_1fe

    :cond_267
    move/from16 v11, v19

    const/16 v8, 0x100

    goto/16 :goto_1e3

    :cond_26d
    move/from16 v19, v11

    invoke-virtual {v4, v9, v2}, Lg1/d;->d(I[B)V

    move-object/from16 v8, p5

    invoke-virtual {v5, v8}, Lb1/a;->n([B)V

    invoke-virtual {v6}, Li3/j;->g()V

    invoke-virtual {v5, v10, v6}, Lb1/a;->u(Li3/j;Li3/j;)V

    invoke-virtual {v4}, Lg1/d;->l()V

    move/from16 v5, v17

    :goto_282
    array-length v6, v13

    if-ge v5, v6, :cond_2a0

    aget-object v6, v13, v5

    move/from16 v8, v17

    :goto_289
    const/16 v11, 0x100

    if-ge v8, v11, :cond_29a

    iget-object v11, v6, Lg1/d;->j:Ljava/lang/Object;

    check-cast v11, [I

    aget v12, v11, v8

    shl-int/lit8 v12, v12, 0xd

    aput v12, v11, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_289

    :cond_29a
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v5, v5, 0x1

    goto :goto_282

    :cond_2a0
    invoke-virtual {v7}, Li3/j;->g()V

    invoke-virtual {v7, v4, v7}, Li3/j;->f(Lg1/d;Li3/j;)V

    invoke-virtual {v10, v7}, Li3/j;->j(Li3/j;)V

    invoke-virtual {v10}, Li3/j;->i()V

    invoke-virtual {v10}, Li3/j;->d()V

    invoke-virtual {v10}, Li3/j;->b()V

    move/from16 v4, v17

    :goto_2b4
    iget-object v5, v10, Li3/j;->b:[Lg1/d;

    array-length v6, v5

    if-ge v4, v6, :cond_31d

    aget-object v5, v5, v4

    aget-object v6, v14, v4

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v7, v17

    const/16 v11, 0x100

    :goto_2c4
    if-ge v7, v11, :cond_31a

    iget-object v8, v5, Lg1/d;->j:Ljava/lang/Object;

    check-cast v8, [I

    aget v8, v8, v7

    iget-object v12, v6, Lg1/d;->j:Ljava/lang/Object;

    check-cast v12, [I

    aget v12, v12, v7

    iget-object v13, v5, Lg1/d;->h:Ljava/lang/Object;

    check-cast v13, Li3/b;

    iget v13, v13, Li3/b;->l:I

    invoke-static {v8, v13}, Li3/i;->a(II)[I

    move-result-object v8

    aget v15, v8, v17

    aget v8, v8, v16

    if-nez v12, :cond_2e3

    goto :goto_309

    :cond_2e3
    const v12, 0x3ff00

    if-ne v13, v12, :cond_2f2

    if-lez v15, :cond_2ef

    add-int/lit8 v8, v8, 0x1

    :goto_2ec
    and-int/lit8 v8, v8, 0xf

    goto :goto_309

    :cond_2ef
    add-int/lit8 v8, v8, -0x1

    goto :goto_2ec

    :cond_2f2
    const v12, 0x17400

    if-ne v13, v12, :cond_312

    const/16 v12, 0x2b

    if-lez v15, :cond_303

    if-ne v8, v12, :cond_300

    move/from16 v8, v17

    goto :goto_309

    :cond_300
    add-int/lit8 v8, v8, 0x1

    goto :goto_309

    :cond_303
    if-nez v8, :cond_307

    move v8, v12

    goto :goto_309

    :cond_307
    add-int/lit8 v8, v8, -0x1

    :goto_309
    iget-object v12, v5, Lg1/d;->j:Ljava/lang/Object;

    check-cast v12, [I

    aput v8, v12, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2c4

    :cond_312
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Wrong Gamma2!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31a
    add-int/lit8 v4, v4, 0x1

    goto :goto_2b4

    :cond_31d
    const/16 v8, 0x40

    invoke-virtual {v10, v0, v1, v8}, Li3/j;->e(Li3/b;[BI)V

    iget v0, v0, Li3/b;->d:I

    mul-int v11, v19, v0

    add-int/2addr v11, v8

    move/from16 v0, v17

    invoke-virtual {v3, v1, v0, v11}, Ls0/n;->f([BII)V

    invoke-virtual {v3, v1, v0, v9}, Ls0/g0;->b([BII)I

    invoke-static {v9, v0, v2, v1}, Lm4/d;->n(II[B[B)Z

    move-result v0

    return v0
.end method

.method public final b([B)[[B
    .registers 35

    move-object/from16 v0, p0

    const/16 v1, 0x80

    new-array v2, v1, [B

    const/16 v3, 0x40

    new-array v4, v3, [B

    const/16 v5, 0x20

    new-array v6, v5, [B

    new-array v7, v3, [B

    new-array v8, v5, [B

    new-instance v9, Lb1/a;

    invoke-direct {v9, v0}, Lb1/a;-><init>(Li3/b;)V

    new-instance v10, Li3/j;

    const/4 v11, 0x1

    invoke-direct {v10, v0, v11}, Li3/j;-><init>(Li3/b;I)V

    new-instance v11, Li3/j;

    const/4 v12, 0x0

    invoke-direct {v11, v0, v12}, Li3/j;-><init>(Li3/b;I)V

    new-instance v12, Li3/j;

    const/4 v13, 0x0

    invoke-direct {v12, v0, v13}, Li3/j;-><init>(Li3/b;I)V

    new-instance v13, Li3/j;

    const/4 v14, 0x0

    invoke-direct {v13, v0, v14}, Li3/j;-><init>(Li3/b;I)V

    iget-object v14, v0, Li3/b;->b:Ls0/g0;

    const/4 v15, 0x0

    move-object/from16 v3, p1

    invoke-virtual {v14, v3, v15, v5}, Ls0/n;->f([BII)V

    iget v5, v0, Li3/b;->f:I

    int-to-byte v1, v5

    invoke-virtual {v14, v1}, Ls0/n;->update(B)V

    iget v1, v0, Li3/b;->g:I

    int-to-byte v3, v1

    invoke-virtual {v14, v3}, Ls0/n;->update(B)V

    const/16 v3, 0x80

    invoke-virtual {v14, v2, v15, v3}, Ls0/g0;->b([BII)I

    const/16 v3, 0x20

    invoke-static {v2, v15, v6, v15, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move/from16 v18, v5

    const/16 v5, 0x40

    invoke-static {v2, v3, v7, v15, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v5, 0x60

    invoke-static {v2, v5, v8, v15, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v9, v6}, Lb1/a;->n([B)V

    move v2, v15

    move v3, v2

    :goto_5e
    iget-object v5, v10, Li3/j;->b:[Lg1/d;

    array-length v15, v5

    if-ge v2, v15, :cond_70

    aget-object v5, v5, v2

    add-int/lit8 v15, v3, 0x1

    int-to-short v15, v15

    invoke-virtual {v5, v7, v3}, Lg1/d;->p([BS)V

    add-int/lit8 v2, v2, 0x1

    move v3, v15

    const/4 v15, 0x0

    goto :goto_5e

    :cond_70
    int-to-short v2, v1

    const/4 v3, 0x0

    :goto_72
    iget-object v15, v11, Li3/j;->b:[Lg1/d;

    move-object/from16 v20, v5

    array-length v5, v15

    if-ge v3, v5, :cond_87

    aget-object v5, v15, v3

    add-int/lit8 v15, v2, 0x1

    int-to-short v15, v15

    invoke-virtual {v5, v7, v2}, Lg1/d;->p([BS)V

    add-int/lit8 v3, v3, 0x1

    move v2, v15

    move-object/from16 v5, v20

    goto :goto_72

    :cond_87
    new-instance v2, Li3/j;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Li3/j;-><init>(Li3/b;I)V

    invoke-virtual {v10, v2}, Li3/j;->c(Li3/j;)V

    invoke-virtual {v2}, Li3/j;->g()V

    invoke-virtual {v9, v12, v2}, Lb1/a;->u(Li3/j;Li3/j;)V

    invoke-virtual {v12}, Li3/j;->i()V

    invoke-virtual {v12}, Li3/j;->d()V

    invoke-virtual {v12, v11}, Li3/j;->a(Li3/j;)V

    invoke-virtual {v12}, Li3/j;->b()V

    invoke-virtual {v12, v13}, Li3/j;->h(Li3/j;)V

    invoke-static {v12, v0}, Li3/i;->c(Li3/j;Li3/b;)[B

    move-result-object v2

    const/16 v3, 0x20

    const/4 v5, 0x0

    invoke-virtual {v14, v6, v5, v3}, Ls0/n;->f([BII)V

    array-length v3, v2

    invoke-virtual {v14, v2, v5, v3}, Ls0/n;->f([BII)V

    const/16 v3, 0x40

    invoke-virtual {v14, v4, v5, v3}, Ls0/g0;->b([BII)I

    const/4 v3, 0x6

    new-array v7, v3, [[B

    aput-object v6, v7, v5

    const/4 v5, 0x1

    aput-object v8, v7, v5

    const/4 v6, 0x2

    aput-object v4, v7, v6

    iget v0, v0, Li3/b;->e:I

    mul-int v4, v1, v0

    new-array v4, v4, [B

    const/4 v8, 0x3

    aput-object v4, v7, v8

    const/4 v4, 0x0

    :goto_cd
    if-ge v4, v1, :cond_db

    aget-object v9, v20, v4

    aget-object v10, v7, v8

    mul-int v11, v4, v0

    invoke-virtual {v9, v11, v10}, Lg1/d;->j(I[B)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_cd

    :cond_db
    mul-int v1, v18, v0

    new-array v1, v1, [B

    const/4 v4, 0x4

    aput-object v1, v7, v4

    move/from16 v9, v18

    const/4 v1, 0x0

    :goto_e5
    if-ge v1, v9, :cond_f3

    aget-object v10, v15, v1

    aget-object v11, v7, v4

    mul-int v12, v1, v0

    invoke-virtual {v10, v12, v11}, Lg1/d;->j(I[B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_e5

    :cond_f3
    mul-int/lit16 v0, v9, 0x1a0

    new-array v0, v0, [B

    const/4 v1, 0x5

    aput-object v0, v7, v1

    const/4 v0, 0x0

    :goto_fb
    if-ge v0, v9, :cond_226

    iget-object v10, v13, Li3/j;->b:[Lg1/d;

    aget-object v10, v10, v0

    aget-object v11, v7, v1

    mul-int/lit16 v12, v0, 0x1a0

    const/4 v14, 0x0

    :goto_106
    const/16 v15, 0x20

    if-ge v14, v15, :cond_211

    mul-int/lit8 v16, v14, 0x8

    move/from16 p0, v1

    iget-object v1, v10, Lg1/d;->j:Ljava/lang/Object;

    check-cast v1, [I

    move/from16 v17, v3

    aget v3, v1, v16

    rsub-int v3, v3, 0x1000

    add-int/lit8 v18, v16, 0x1

    move/from16 v28, v4

    aget v4, v1, v18

    rsub-int v4, v4, 0x1000

    add-int/lit8 v18, v16, 0x2

    move/from16 v29, v5

    aget v5, v1, v18

    rsub-int v5, v5, 0x1000

    add-int/lit8 v18, v16, 0x3

    move/from16 v30, v6

    aget v6, v1, v18

    rsub-int v6, v6, 0x1000

    add-int/lit8 v18, v16, 0x4

    move/from16 v31, v8

    aget v8, v1, v18

    rsub-int v8, v8, 0x1000

    add-int/lit8 v18, v16, 0x5

    aget v15, v1, v18

    rsub-int v15, v15, 0x1000

    add-int/lit8 v18, v16, 0x6

    move/from16 v32, v0

    aget v0, v1, v18

    rsub-int v0, v0, 0x1000

    const/16 v18, 0x7

    add-int/lit8 v16, v16, 0x7

    aget v1, v1, v16

    rsub-int v1, v1, 0x1000

    move/from16 v26, v0

    move/from16 v27, v1

    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v22, v5

    move/from16 v23, v6

    move/from16 v24, v8

    move/from16 v25, v15

    filled-new-array/range {v20 .. v27}, [I

    move-result-object v0

    mul-int/lit8 v1, v14, 0xd

    add-int/2addr v1, v12

    const/16 v19, 0x0

    aget v3, v0, v19

    int-to-byte v4, v3

    aput-byte v4, v11, v1

    add-int/lit8 v4, v1, 0x1

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, v11, v4

    aget v5, v0, v29

    shl-int/lit8 v6, v5, 0x5

    int-to-byte v6, v6

    or-int/2addr v3, v6

    int-to-byte v3, v3

    aput-byte v3, v11, v4

    add-int/lit8 v3, v1, 0x2

    shr-int/lit8 v4, v5, 0x3

    int-to-byte v4, v4

    aput-byte v4, v11, v3

    add-int/lit8 v3, v1, 0x3

    shr-int/lit8 v4, v5, 0xb

    int-to-byte v4, v4

    aput-byte v4, v11, v3

    aget v5, v0, v30

    shl-int/lit8 v6, v5, 0x2

    int-to-byte v6, v6

    or-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, v11, v3

    add-int/lit8 v3, v1, 0x4

    shr-int/lit8 v4, v5, 0x6

    int-to-byte v4, v4

    aput-byte v4, v11, v3

    aget v5, v0, v31

    shl-int/lit8 v6, v5, 0x7

    int-to-byte v6, v6

    or-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, v11, v3

    add-int/lit8 v3, v1, 0x5

    shr-int/lit8 v4, v5, 0x1

    int-to-byte v4, v4

    aput-byte v4, v11, v3

    add-int/lit8 v3, v1, 0x6

    shr-int/lit8 v4, v5, 0x9

    int-to-byte v4, v4

    aput-byte v4, v11, v3

    aget v5, v0, v28

    shl-int/lit8 v6, v5, 0x4

    int-to-byte v6, v6

    or-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, v11, v3

    add-int/lit8 v3, v1, 0x7

    shr-int/lit8 v4, v5, 0x4

    int-to-byte v4, v4

    aput-byte v4, v11, v3

    add-int/lit8 v3, v1, 0x8

    shr-int/lit8 v4, v5, 0xc

    int-to-byte v4, v4

    aput-byte v4, v11, v3

    aget v5, v0, p0

    shl-int/lit8 v6, v5, 0x1

    int-to-byte v6, v6

    or-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, v11, v3

    add-int/lit8 v3, v1, 0x9

    shr-int/lit8 v4, v5, 0x7

    int-to-byte v4, v4

    aput-byte v4, v11, v3

    aget v5, v0, v17

    shl-int/lit8 v6, v5, 0x6

    int-to-byte v6, v6

    or-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, v11, v3

    add-int/lit8 v3, v1, 0xa

    shr-int/lit8 v4, v5, 0x2

    int-to-byte v4, v4

    aput-byte v4, v11, v3

    add-int/lit8 v3, v1, 0xb

    shr-int/lit8 v4, v5, 0xa

    int-to-byte v4, v4

    aput-byte v4, v11, v3

    aget v0, v0, v18

    shl-int/lit8 v5, v0, 0x3

    int-to-byte v5, v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v11, v3

    add-int/lit8 v1, v1, 0xc

    shr-int/lit8 v0, v0, 0x5

    int-to-byte v0, v0

    aput-byte v0, v11, v1

    add-int/lit8 v14, v14, 0x1

    move/from16 v1, p0

    move/from16 v3, v17

    move/from16 v4, v28

    move/from16 v5, v29

    move/from16 v6, v30

    move/from16 v8, v31

    move/from16 v0, v32

    goto/16 :goto_106

    :cond_211
    move/from16 v32, v0

    move/from16 p0, v1

    move/from16 v17, v3

    move/from16 v28, v4

    move/from16 v29, v5

    move/from16 v30, v6

    move/from16 v31, v8

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v0, v32, 0x1

    goto/16 :goto_fb

    :cond_226
    move/from16 p0, v1

    move/from16 v28, v4

    move/from16 v29, v5

    move/from16 v30, v6

    move/from16 v31, v8

    const/16 v19, 0x0

    aget-object v16, v7, v19

    aget-object v17, v7, v29

    aget-object v18, v7, v30

    aget-object v19, v7, v31

    aget-object v20, v7, v28

    aget-object v21, v7, p0

    move-object/from16 v23, p1

    move-object/from16 v22, v2

    filled-new-array/range {v16 .. v23}, [[B

    move-result-object v0

    return-object v0
.end method

.method public final c([BLs0/g0;[B[B[B[B[B[B)[B
    .registers 42

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    iget v0, v6, Li3/b;->p:I

    new-array v9, v0, [B

    const/16 v10, 0x40

    new-array v11, v10, [B

    new-instance v1, Li3/j;

    const/4 v12, 0x1

    invoke-direct {v1, v6, v12}, Li3/j;-><init>(Li3/b;I)V

    new-instance v13, Li3/j;

    invoke-direct {v13, v6, v12}, Li3/j;-><init>(Li3/b;I)V

    new-instance v14, Li3/j;

    invoke-direct {v14, v6, v12}, Li3/j;-><init>(Li3/b;I)V

    new-instance v0, Li3/j;

    const/4 v15, 0x0

    invoke-direct {v0, v6, v15}, Li3/j;-><init>(Li3/b;I)V

    new-instance v2, Li3/j;

    invoke-direct {v2, v6, v15}, Li3/j;-><init>(Li3/b;I)V

    new-instance v3, Li3/j;

    invoke-direct {v3, v6, v15}, Li3/j;-><init>(Li3/b;I)V

    new-instance v4, Li3/j;

    invoke-direct {v4, v6, v15}, Li3/j;-><init>(Li3/b;I)V

    new-instance v5, Li3/j;

    invoke-direct {v5, v6, v15}, Li3/j;-><init>(Li3/b;I)V

    move/from16 v16, v12

    new-instance v12, Lg1/d;

    invoke-direct {v12, v6}, Lg1/d;-><init>(Li3/b;)V

    new-instance v10, Lb1/a;

    invoke-direct {v10, v6}, Lb1/a;-><init>(Li3/b;)V

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    invoke-static/range {v0 .. v6}, Li3/i;->d(Li3/j;Li3/j;Li3/j;[B[B[BLi3/b;)V

    const/16 v3, 0x80

    move-object/from16 v4, p4

    invoke-static {v3, v4}, Lm4/d;->p(I[B)[B

    move-result-object v4

    const/16 v5, 0x20

    move-object/from16 v3, p8

    invoke-static {v3, v15, v4, v5, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v3, 0x40

    invoke-static {v7, v15, v4, v3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v5, 0x80

    invoke-virtual {v8, v4, v15, v5}, Ls0/n;->f([BII)V

    invoke-virtual {v8, v11, v15, v3}, Ls0/g0;->b([BII)I

    move-object/from16 v3, p3

    invoke-virtual {v10, v3}, Lb1/a;->n([B)V

    invoke-virtual {v1}, Li3/j;->g()V

    invoke-virtual {v2}, Li3/j;->g()V

    invoke-virtual {v0}, Li3/j;->g()V

    move v3, v15

    move v4, v3

    :goto_7f
    const/16 v5, 0x3e8

    if-ge v3, v5, :cond_4e5

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v4, 0x1

    int-to-short v5, v5

    move/from16 p3, v3

    move/from16 v20, v15

    :goto_8c
    iget-object v3, v13, Li3/j;->b:[Lg1/d;

    move/from16 p4, v4

    array-length v4, v3

    move/from16 p6, v5

    if-ge v15, v4, :cond_1fb

    aget-object v4, v3, v15

    array-length v3, v3

    mul-int v3, v3, p4

    add-int/2addr v3, v15

    int-to-short v3, v3

    iget-object v5, v4, Lg1/d;->h:Ljava/lang/Object;

    check-cast v5, Li3/b;

    move/from16 v21, v15

    iget v15, v5, Li3/b;->q:I

    move-object/from16 v22, v0

    iget-object v0, v4, Lg1/d;->i:Ljava/lang/Object;

    check-cast v0, Lb1/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lb1/b;->i:Ljava/lang/Object;

    check-cast v0, Ls0/g0;

    move-object/from16 v23, v2

    mul-int/lit16 v2, v15, 0x88

    new-array v2, v2, [B

    invoke-virtual {v0}, Ls0/n;->reset()V

    move-object/from16 v24, v1

    int-to-byte v1, v3

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    move/from16 v25, v1

    const/4 v1, 0x2

    move/from16 v26, v3

    new-array v3, v1, [B

    aput-byte v25, v3, v20

    aput-byte v26, v3, v16

    move-object/from16 v25, v12

    move/from16 v7, v20

    const/16 v12, 0x40

    invoke-virtual {v0, v11, v7, v12}, Ls0/n;->f([BII)V

    invoke-virtual {v0, v3, v7, v1}, Ls0/n;->f([BII)V

    mul-int/lit16 v15, v15, 0x88

    invoke-virtual {v0, v2, v7, v15}, Ls0/g0;->m([BII)I

    iget v0, v5, Li3/b;->k:I

    const/high16 v3, 0x20000

    if-ne v0, v3, :cond_183

    const/4 v3, 0x0

    :goto_e3
    if-ge v3, v12, :cond_1df

    mul-int/lit8 v5, v3, 0x4

    mul-int/lit8 v7, v3, 0x9

    aget-byte v12, v2, v7

    and-int/lit16 v12, v12, 0xff

    add-int/lit8 v15, v7, 0x1

    aget-byte v15, v2, v15

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x8

    or-int/2addr v12, v15

    add-int/lit8 v15, v7, 0x2

    aget-byte v15, v2, v15

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v26, v15, 0x10

    or-int v12, v12, v26

    const v26, 0x3ffff

    and-int v12, v12, v26

    move/from16 p7, v1

    iget-object v1, v4, Lg1/d;->j:Ljava/lang/Object;

    check-cast v1, [I

    aput v12, v1, v5

    add-int/lit8 v12, v5, 0x1

    shr-int/lit8 v15, v15, 0x2

    add-int/lit8 v27, v7, 0x3

    move-object/from16 p8, v1

    aget-byte v1, v2, v27

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v15

    add-int/lit8 v15, v7, 0x4

    aget-byte v15, v2, v15

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v27, v15, 0xe

    or-int v1, v1, v27

    and-int v1, v1, v26

    aput v1, p8, v12

    add-int/lit8 v1, v5, 0x2

    shr-int/lit8 v15, v15, 0x4

    add-int/lit8 v27, v7, 0x5

    move/from16 v28, v1

    aget-byte v1, v2, v27

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v1, v15

    add-int/lit8 v15, v7, 0x6

    aget-byte v15, v2, v15

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v27, v15, 0xc

    or-int v1, v1, v27

    and-int v1, v1, v26

    aput v1, p8, v28

    add-int/lit8 v1, v5, 0x3

    shr-int/lit8 v15, v15, 0x6

    add-int/lit8 v27, v7, 0x7

    move/from16 v29, v1

    aget-byte v1, v2, v27

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x2

    or-int/2addr v1, v15

    add-int/lit8 v7, v7, 0x8

    aget-byte v7, v2, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0xa

    or-int/2addr v1, v7

    and-int v1, v1, v26

    aput v1, p8, v29

    aget v1, p8, v5

    sub-int v1, v0, v1

    aput v1, p8, v5

    aget v1, p8, v12

    sub-int v1, v0, v1

    aput v1, p8, v12

    aget v1, p8, v28

    sub-int v1, v0, v1

    aput v1, p8, v28

    aget v1, p8, v29

    sub-int v1, v0, v1

    aput v1, p8, v29

    add-int/lit8 v3, v3, 0x1

    move/from16 v1, p7

    const/16 v12, 0x40

    goto/16 :goto_e3

    :cond_183
    const/high16 v1, 0x80000

    if-ne v0, v1, :cond_1f3

    const/4 v1, 0x0

    :goto_188
    const/16 v5, 0x80

    if-ge v1, v5, :cond_1df

    mul-int/lit8 v3, v1, 0x2

    mul-int/lit8 v5, v1, 0x5

    aget-byte v7, v2, v5

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v12, v5, 0x1

    aget-byte v12, v2, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v7, v12

    add-int/lit8 v12, v5, 0x2

    aget-byte v12, v2, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v15, v12, 0x10

    or-int/2addr v7, v15

    const v15, 0xfffff

    and-int/2addr v7, v15

    move/from16 p7, v15

    iget-object v15, v4, Lg1/d;->j:Ljava/lang/Object;

    check-cast v15, [I

    aput v7, v15, v3

    add-int/lit8 v7, v3, 0x1

    shr-int/lit8 v12, v12, 0x4

    add-int/lit8 v26, v5, 0x3

    move/from16 v27, v0

    aget-byte v0, v2, v26

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x4

    or-int/2addr v0, v12

    add-int/lit8 v5, v5, 0x4

    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0xc

    or-int/2addr v0, v5

    and-int v0, v0, p7

    aput v0, v15, v7

    aget v0, v15, v3

    sub-int v0, v27, v0

    aput v0, v15, v3

    aget v0, v15, v7

    sub-int v0, v27, v0

    aput v0, v15, v7

    add-int/lit8 v1, v1, 0x1

    move/from16 v0, v27

    goto :goto_188

    :cond_1df
    add-int/lit8 v15, v21, 0x1

    move-object/from16 v7, p1

    move/from16 v4, p4

    move/from16 v5, p6

    move-object/from16 v0, v22

    move-object/from16 v2, v23

    move-object/from16 v1, v24

    move-object/from16 v12, v25

    const/16 v20, 0x0

    goto/16 :goto_8c

    :cond_1f3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Wrong Dilithiumn Gamma1!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1fb
    move-object/from16 v22, v0

    move-object/from16 v24, v1

    move-object/from16 v23, v2

    move-object/from16 v25, v12

    invoke-virtual {v13, v14}, Li3/j;->c(Li3/j;)V

    invoke-virtual {v14}, Li3/j;->g()V

    move-object/from16 v0, v17

    invoke-virtual {v10, v0, v14}, Lb1/a;->u(Li3/j;Li3/j;)V

    invoke-virtual {v0}, Li3/j;->i()V

    invoke-virtual {v0}, Li3/j;->d()V

    invoke-virtual {v0}, Li3/j;->b()V

    const/4 v1, 0x0

    :goto_218
    iget-object v2, v0, Li3/j;->b:[Lg1/d;

    array-length v4, v2

    const/16 v5, 0x100

    move-object/from16 v7, v18

    iget-object v12, v7, Li3/j;->b:[Lg1/d;

    if-ge v1, v4, :cond_25b

    aget-object v2, v2, v1

    aget-object v4, v12, v1

    iget-object v12, v2, Lg1/d;->h:Ljava/lang/Object;

    check-cast v12, Li3/b;

    iget v12, v12, Li3/b;->l:I

    const/4 v15, 0x0

    :goto_22e
    if-ge v15, v5, :cond_254

    iget-object v5, v2, Lg1/d;->j:Ljava/lang/Object;

    check-cast v5, [I

    aget v5, v5, v15

    invoke-static {v5, v12}, Li3/i;->a(II)[I

    move-result-object v5

    aget v17, v5, v16

    move/from16 v18, v1

    iget-object v1, v2, Lg1/d;->j:Ljava/lang/Object;

    check-cast v1, [I

    aput v17, v1, v15

    const/4 v1, 0x0

    aget v5, v5, v1

    iget-object v1, v4, Lg1/d;->j:Ljava/lang/Object;

    check-cast v1, [I

    aput v5, v1, v15

    add-int/lit8 v15, v15, 0x1

    move/from16 v1, v18

    const/16 v5, 0x100

    goto :goto_22e

    :cond_254
    move/from16 v18, v1

    add-int/lit8 v1, v18, 0x1

    move-object/from16 v18, v7

    goto :goto_218

    :cond_25b
    const/4 v1, 0x0

    invoke-virtual {v0, v6, v9, v1}, Li3/j;->e(Li3/b;[BI)V

    move-object/from16 v4, p1

    const/16 v5, 0x40

    invoke-virtual {v8, v4, v1, v5}, Ls0/n;->f([BII)V

    iget v5, v6, Li3/b;->d:I

    iget v15, v6, Li3/b;->f:I

    mul-int/2addr v5, v15

    invoke-virtual {v8, v9, v1, v5}, Ls0/n;->f([BII)V

    iget v5, v6, Li3/b;->n:I

    invoke-virtual {v8, v9, v1, v5}, Ls0/g0;->b([BII)I

    move-object/from16 v1, v25

    invoke-virtual {v1, v5, v9}, Lg1/d;->d(I[B)V

    invoke-virtual {v1}, Lg1/d;->l()V

    move-object/from16 v17, v0

    move-object/from16 v18, v2

    const/4 v0, 0x0

    :goto_280
    iget-object v2, v14, Li3/j;->b:[Lg1/d;

    move-object/from16 v21, v3

    array-length v3, v2

    if-ge v0, v3, :cond_29b

    aget-object v2, v2, v0

    move-object/from16 v3, v24

    move/from16 v24, v0

    iget-object v0, v3, Li3/j;->b:[Lg1/d;

    aget-object v0, v0, v24

    invoke-virtual {v2, v1, v0}, Lg1/d;->i(Lg1/d;Lg1/d;)V

    add-int/lit8 v0, v24, 0x1

    move-object/from16 v24, v3

    move-object/from16 v3, v21

    goto :goto_280

    :cond_29b
    const/4 v0, 0x0

    :goto_29c
    array-length v3, v2

    if-ge v0, v3, :cond_2a7

    aget-object v3, v2, v0

    invoke-virtual {v3}, Lg1/d;->h()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_29c

    :cond_2a7
    const/4 v0, 0x0

    :goto_2a8
    array-length v3, v2

    if-ge v0, v3, :cond_2db

    aget-object v3, v2, v0

    move/from16 v25, v0

    aget-object v0, v21, v25

    move/from16 v26, v5

    const/4 v4, 0x0

    :goto_2b4
    const/16 v5, 0x100

    if-ge v4, v5, :cond_2cf

    iget-object v5, v3, Lg1/d;->j:Ljava/lang/Object;

    check-cast v5, [I

    aget v27, v5, v4

    move-object/from16 v28, v3

    iget-object v3, v0, Lg1/d;->j:Ljava/lang/Object;

    check-cast v3, [I

    aget v3, v3, v4

    add-int v27, v27, v3

    aput v27, v5, v4

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v3, v28

    goto :goto_2b4

    :cond_2cf
    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v0, v25, 0x1

    move-object/from16 v4, p1

    move/from16 v5, v26

    goto :goto_2a8

    :cond_2db
    move/from16 v26, v5

    const/4 v0, 0x0

    :goto_2de
    array-length v3, v2

    if-ge v0, v3, :cond_2e9

    aget-object v3, v2, v0

    invoke-virtual {v3}, Lg1/d;->m()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2de

    :cond_2e9
    iget v0, v6, Li3/b;->k:I

    iget v3, v6, Li3/b;->j:I

    sub-int/2addr v0, v3

    const/4 v4, 0x0

    :goto_2ef
    array-length v5, v2

    if-ge v4, v5, :cond_303

    aget-object v5, v2, v4

    invoke-virtual {v5, v0}, Lg1/d;->e(I)Z

    move-result v5

    if-eqz v5, :cond_300

    move-object/from16 v25, v1

    move-object/from16 v29, v19

    goto/16 :goto_3be

    :cond_300
    add-int/lit8 v4, v4, 0x1

    goto :goto_2ef

    :cond_303
    move-object/from16 v5, v19

    move-object/from16 v4, v23

    invoke-virtual {v5, v1, v4}, Li3/j;->f(Lg1/d;Li3/j;)V

    invoke-virtual {v5}, Li3/j;->d()V

    invoke-virtual {v7, v5}, Li3/j;->j(Li3/j;)V

    invoke-virtual {v7}, Li3/j;->i()V

    iget v0, v6, Li3/b;->l:I

    sub-int v3, v0, v3

    move-object/from16 v19, v2

    const/4 v2, 0x0

    :goto_31a
    array-length v4, v12

    if-ge v2, v4, :cond_32e

    aget-object v4, v12, v2

    invoke-virtual {v4, v3}, Lg1/d;->e(I)Z

    move-result v4

    if-eqz v4, :cond_32b

    move-object/from16 v25, v1

    :goto_327
    move-object/from16 v29, v5

    goto/16 :goto_3be

    :cond_32b
    add-int/lit8 v2, v2, 0x1

    goto :goto_31a

    :cond_32e
    move-object/from16 v2, v22

    invoke-virtual {v5, v1, v2}, Li3/j;->f(Lg1/d;Li3/j;)V

    invoke-virtual {v5}, Li3/j;->d()V

    invoke-virtual {v5}, Li3/j;->i()V

    const/4 v3, 0x0

    :goto_33a
    iget-object v4, v5, Li3/j;->b:[Lg1/d;

    move-object/from16 v25, v1

    array-length v1, v4

    if-ge v3, v1, :cond_351

    aget-object v1, v4, v3

    invoke-virtual {v1, v0}, Lg1/d;->e(I)Z

    move-result v1

    if-eqz v1, :cond_34c

    move-object/from16 v22, v2

    goto :goto_327

    :cond_34c
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v1, v25

    goto :goto_33a

    :cond_351
    invoke-virtual {v7, v5}, Li3/j;->a(Li3/j;)V

    invoke-virtual {v7}, Li3/j;->b()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_359
    array-length v3, v4

    if-ge v0, v3, :cond_3b4

    aget-object v3, v4, v0

    move/from16 v21, v0

    aget-object v0, v12, v21

    move-object/from16 v22, v2

    aget-object v2, v18, v21

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v27, v4

    move-object/from16 v29, v5

    const/4 v4, 0x0

    const/16 v28, 0x0

    :goto_370
    const/16 v5, 0x100

    if-ge v4, v5, :cond_3a9

    iget-object v5, v0, Lg1/d;->j:Ljava/lang/Object;

    check-cast v5, [I

    aget v5, v5, v4

    move-object/from16 v30, v0

    iget-object v0, v2, Lg1/d;->j:Ljava/lang/Object;

    check-cast v0, [I

    aget v0, v0, v4

    move/from16 v31, v0

    iget-object v0, v3, Lg1/d;->h:Ljava/lang/Object;

    check-cast v0, Li3/b;

    iget v0, v0, Li3/b;->l:I

    if-le v5, v0, :cond_39b

    const v32, 0x7fe001

    sub-int v0, v32, v0

    if-gt v5, v0, :cond_39b

    if-ne v5, v0, :cond_398

    if-nez v31, :cond_398

    goto :goto_39b

    :cond_398
    move/from16 v0, v16

    goto :goto_39c

    :cond_39b
    :goto_39b
    const/4 v0, 0x0

    :goto_39c
    iget-object v5, v3, Lg1/d;->j:Ljava/lang/Object;

    check-cast v5, [I

    aput v0, v5, v4

    add-int v28, v28, v0

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v30

    goto :goto_370

    :cond_3a9
    add-int v1, v1, v28

    add-int/lit8 v0, v21, 0x1

    move-object/from16 v2, v22

    move-object/from16 v4, v27

    move-object/from16 v5, v29

    goto :goto_359

    :cond_3b4
    move-object/from16 v22, v2

    move-object/from16 v27, v4

    move-object/from16 v29, v5

    iget v0, v6, Li3/b;->m:I

    if-le v1, v0, :cond_3d3

    :goto_3be
    move/from16 v3, p3

    move/from16 v4, p6

    move-object/from16 v18, v7

    move-object/from16 v0, v22

    move-object/from16 v2, v23

    move-object/from16 v1, v24

    move-object/from16 v12, v25

    move-object/from16 v19, v29

    const/4 v15, 0x0

    move-object/from16 v7, p1

    goto/16 :goto_7f

    :cond_3d3
    move/from16 v5, v26

    const/4 v7, 0x0

    :goto_3d6
    iget v1, v6, Li3/b;->g:I

    if-ge v7, v1, :cond_4ac

    aget-object v1, v19, v7

    iget-object v2, v1, Lg1/d;->h:Ljava/lang/Object;

    check-cast v2, Li3/b;

    iget v2, v2, Li3/b;->k:I

    const/high16 v3, 0x20000

    if-ne v2, v3, :cond_45b

    const/4 v4, 0x0

    :goto_3e7
    const/16 v12, 0x40

    if-ge v4, v12, :cond_456

    mul-int/lit8 v8, v4, 0x4

    iget-object v10, v1, Lg1/d;->j:Ljava/lang/Object;

    check-cast v10, [I

    aget v11, v10, v8

    sub-int v11, v2, v11

    add-int/lit8 v13, v8, 0x1

    aget v13, v10, v13

    sub-int v13, v2, v13

    add-int/lit8 v14, v8, 0x2

    aget v14, v10, v14

    sub-int v14, v2, v14

    add-int/lit8 v8, v8, 0x3

    aget v8, v10, v8

    sub-int v8, v2, v8

    mul-int/lit8 v10, v4, 0x9

    add-int/2addr v10, v5

    int-to-byte v3, v11

    aput-byte v3, v9, v10

    add-int/lit8 v3, v10, 0x1

    shr-int/lit8 v12, v11, 0x8

    int-to-byte v12, v12

    aput-byte v12, v9, v3

    add-int/lit8 v3, v10, 0x2

    shr-int/lit8 v11, v11, 0x10

    int-to-byte v11, v11

    shl-int/lit8 v12, v13, 0x2

    or-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v9, v3

    add-int/lit8 v3, v10, 0x3

    shr-int/lit8 v11, v13, 0x6

    int-to-byte v11, v11

    aput-byte v11, v9, v3

    add-int/lit8 v3, v10, 0x4

    shr-int/lit8 v11, v13, 0xe

    int-to-byte v11, v11

    shl-int/lit8 v12, v14, 0x4

    or-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v9, v3

    add-int/lit8 v3, v10, 0x5

    shr-int/lit8 v11, v14, 0x4

    int-to-byte v11, v11

    aput-byte v11, v9, v3

    add-int/lit8 v3, v10, 0x6

    shr-int/lit8 v11, v14, 0xc

    int-to-byte v11, v11

    shl-int/lit8 v12, v8, 0x6

    or-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v9, v3

    add-int/lit8 v3, v10, 0x7

    shr-int/lit8 v11, v8, 0x2

    int-to-byte v11, v11

    aput-byte v11, v9, v3

    add-int/lit8 v10, v10, 0x8

    shr-int/lit8 v3, v8, 0xa

    int-to-byte v3, v3

    aput-byte v3, v9, v10

    add-int/lit8 v4, v4, 0x1

    const/high16 v3, 0x20000

    goto :goto_3e7

    :cond_456
    const/high16 v3, 0x80000

    const/16 v8, 0x80

    goto :goto_49d

    :cond_45b
    const/high16 v3, 0x80000

    if-ne v2, v3, :cond_4a4

    const/4 v4, 0x0

    const/16 v8, 0x80

    :goto_462
    if-ge v4, v8, :cond_49d

    mul-int/lit8 v10, v4, 0x2

    iget-object v11, v1, Lg1/d;->j:Ljava/lang/Object;

    check-cast v11, [I

    aget v12, v11, v10

    sub-int v12, v2, v12

    add-int/lit8 v10, v10, 0x1

    aget v10, v11, v10

    sub-int v10, v2, v10

    mul-int/lit8 v11, v4, 0x5

    add-int/2addr v11, v5

    int-to-byte v13, v12

    aput-byte v13, v9, v11

    add-int/lit8 v13, v11, 0x1

    shr-int/lit8 v14, v12, 0x8

    int-to-byte v14, v14

    aput-byte v14, v9, v13

    add-int/lit8 v13, v11, 0x2

    shr-int/lit8 v12, v12, 0x10

    int-to-byte v12, v12

    shl-int/lit8 v14, v10, 0x4

    or-int/2addr v12, v14

    int-to-byte v12, v12

    aput-byte v12, v9, v13

    add-int/lit8 v12, v11, 0x3

    shr-int/lit8 v13, v10, 0x4

    int-to-byte v13, v13

    aput-byte v13, v9, v12

    add-int/lit8 v11, v11, 0x4

    shr-int/lit8 v10, v10, 0xc

    int-to-byte v10, v10

    aput-byte v10, v9, v11

    add-int/lit8 v4, v4, 0x1

    goto :goto_462

    :cond_49d
    :goto_49d
    iget v1, v6, Li3/b;->c:I

    add-int/2addr v5, v1

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3d6

    :cond_4a4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Wrong Dilithium Gamma1!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4ac
    const/4 v7, 0x0

    :goto_4ad
    add-int v1, v0, v15

    if-ge v7, v1, :cond_4ba

    add-int v1, v5, v7

    const/16 v20, 0x0

    aput-byte v20, v9, v1

    add-int/lit8 v7, v7, 0x1

    goto :goto_4ad

    :cond_4ba
    const/16 v20, 0x0

    move/from16 v1, v20

    move v7, v1

    :goto_4bf
    if-ge v7, v15, :cond_4e4

    move/from16 v2, v20

    const/16 v3, 0x100

    :goto_4c5
    if-ge v2, v3, :cond_4db

    aget-object v4, v27, v7

    iget-object v4, v4, Lg1/d;->j:Ljava/lang/Object;

    check-cast v4, [I

    aget v4, v4, v2

    if-eqz v4, :cond_4d8

    add-int/lit8 v4, v1, 0x1

    add-int/2addr v1, v5

    int-to-byte v6, v2

    aput-byte v6, v9, v1

    move v1, v4

    :cond_4d8
    add-int/lit8 v2, v2, 0x1

    goto :goto_4c5

    :cond_4db
    add-int v2, v5, v0

    add-int/2addr v2, v7

    int-to-byte v4, v1

    aput-byte v4, v9, v2

    add-int/lit8 v7, v7, 0x1

    goto :goto_4bf

    :cond_4e4
    return-object v9

    :cond_4e5
    const/4 v0, 0x0

    return-object v0
.end method
