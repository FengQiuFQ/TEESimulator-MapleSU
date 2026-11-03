.class public final La1/u;
.super Ljava/lang/Object;

# interfaces
.implements La1/a;


# instance fields
.field public final a:Lorg/bouncycastle/crypto/d;

.field public final b:Lorg/bouncycastle/crypto/e;

.field public c:I

.field public d:Z

.field public e:[B

.field public f:[B

.field public final g:[B

.field public final h:Lc1/a;

.field public final i:[J

.field public final j:I

.field public final k:La1/d;

.field public final l:La1/d;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/d;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, La1/d;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, La1/d;-><init>(BI)V

    iput-object v0, p0, La1/u;->k:La1/d;

    new-instance v0, La1/d;

    invoke-direct {v0, v2, v1}, La1/d;-><init>(BI)V

    iput-object v0, p0, La1/u;->l:La1/d;

    iput-object p1, p0, La1/u;->a:Lorg/bouncycastle/crypto/d;

    new-instance v0, Lorg/bouncycastle/crypto/e;

    new-instance v1, La1/t;

    invoke-direct {v1, p1}, La1/t;-><init>(Lorg/bouncycastle/crypto/d;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/e;-><init>(Lorg/bouncycastle/crypto/d;)V

    iput-object v0, p0, La1/u;->b:Lorg/bouncycastle/crypto/e;

    const/4 v0, -0x1

    iput v0, p0, La1/u;->c:I

    invoke-interface {p1}, Lorg/bouncycastle/crypto/d;->c()I

    move-result p1

    iput p1, p0, La1/u;->j:I

    new-array v0, p1, [B

    iput-object v0, p0, La1/u;->e:[B

    new-array v0, p1, [B

    iput-object v0, p0, La1/u;->g:[B

    const/16 v0, 0x10

    if-eq p1, v0, :cond_54

    const/16 v0, 0x20

    if-eq p1, v0, :cond_4d

    const/16 v0, 0x40

    if-ne p1, v0, :cond_45

    new-instance v0, Lc1/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc1/a;-><init>(I)V

    goto :goto_5a

    :cond_45
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Only 128, 256, and 512 -bit block sizes supported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4d
    new-instance v0, Lc1/a;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lc1/a;-><init>(I)V

    goto :goto_5a

    :cond_54
    new-instance v0, Lc1/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lc1/a;-><init>(I)V

    :goto_5a
    iput-object v0, p0, La1/u;->h:Lc1/a;

    ushr-int/lit8 p1, p1, 0x3

    new-array p1, p1, [J

    iput-object p1, p0, La1/u;->i:[J

    const/4 p1, 0x0

    iput-object p1, p0, La1/u;->f:[B

    return-void
.end method


# virtual methods
.method public final a([BII)V
    .registers 4

    iget-object p0, p0, La1/u;->k:La1/d;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method public final b()[B
    .registers 4

    iget v0, p0, La1/u;->c:I

    new-array v1, v0, [B

    iget-object p0, p0, La1/u;->f:[B

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public final c([BIII)V
    .registers 14

    add-int v0, p2, p3

    :goto_2
    iget v1, p0, La1/u;->j:I

    iget-object v2, p0, La1/u;->i:[J

    const/4 v3, 0x0

    if-ge p2, v0, :cond_22

    move v4, p2

    :goto_a
    array-length v5, v2

    if-ge v3, v5, :cond_1b

    aget-wide v5, v2, v3

    invoke-static {v4, p1}, Lm4/d;->C(I[B)J

    move-result-wide v7

    xor-long/2addr v5, v7

    aput-wide v5, v2, v3

    add-int/lit8 v4, v4, 0x8

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_1b
    iget-object v3, p0, La1/u;->h:Lc1/a;

    invoke-virtual {v3, v2}, Lc1/a;->a([J)V

    add-int/2addr p2, v1

    goto :goto_2

    :cond_22
    int-to-long p1, p4

    const-wide v4, 0xffffffffL

    and-long/2addr p1, v4

    const/4 p4, 0x3

    shl-long/2addr p1, p4

    int-to-long v6, p3

    and-long/2addr v4, v6

    shl-long p3, v4, p4

    aget-wide v4, v2, v3

    xor-long/2addr p1, v4

    aput-wide p1, v2, v3

    ushr-int/lit8 p1, v1, 0x4

    aget-wide v0, v2, p1

    xor-long p2, v0, p3

    aput-wide p2, v2, p1

    array-length p1, v2

    mul-int/lit8 p1, p1, 0x8

    new-array p1, p1, [B

    invoke-static {v3, p1, v2}, Lm4/d;->G(I[B[J)V

    iput-object p1, p0, La1/u;->f:[B

    iget-object p0, p0, La1/u;->a:Lorg/bouncycastle/crypto/d;

    invoke-interface {p0, v3, v3, p1, p1}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    return-void
.end method

.method public final d()V
    .registers 4

    iget-object v0, p0, La1/u;->i:[J

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    iget-object v0, p0, La1/u;->a:Lorg/bouncycastle/crypto/d;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/d;->reset()V

    iget-object v0, p0, La1/u;->l:La1/d;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-object v0, p0, La1/u;->k:La1/d;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-object v0, p0, La1/u;->e:[B

    if-eqz v0, :cond_1f

    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, La1/u;->a([BII)V

    :cond_1f
    return-void
.end method

.method public final doFinal([BI)I
    .registers 47

    move-object/from16 v0, p0

    move-object/from16 v5, p1

    iget-object v7, v0, La1/u;->l:La1/d;

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    iget-boolean v1, v0, La1/u;->d:Z

    if-nez v1, :cond_1b

    iget v1, v0, La1/u;->c:I

    if-lt v4, v1, :cond_13

    goto :goto_1b

    :cond_13
    new-instance v0, Lorg/bouncycastle/crypto/x;

    const-string v1, "data too short"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    :goto_1b
    iget v1, v0, La1/u;->j:I

    new-array v2, v1, [B

    iget-object v3, v0, La1/u;->a:Lorg/bouncycastle/crypto/d;

    const/4 v8, 0x0

    invoke-interface {v3, v8, v8, v2, v2}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    ushr-int/lit8 v3, v1, 0x3

    new-array v3, v3, [J

    invoke-static {v8, v2, v3}, Lm4/d;->D(I[B[J)V

    iget-object v6, v0, La1/u;->h:Lc1/a;

    iget v9, v6, Lc1/a;->a:I

    packed-switch v9, :pswitch_data_2fa

    iget-object v9, v6, Lc1/a;->b:[[J

    const/4 v10, 0x3

    const/16 v11, 0x100

    const/4 v12, 0x0

    const/4 v13, 0x2

    const/4 v14, 0x1

    if-nez v9, :cond_4f

    new-array v9, v13, [I

    const/4 v15, 0x4

    aput v15, v9, v14

    aput v11, v9, v12

    sget-object v15, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[J

    iput-object v9, v6, Lc1/a;->b:[[J

    goto :goto_77

    :cond_4f
    aget-object v9, v9, v14

    aget-wide v15, v3, v12

    aget-wide v17, v9, v12

    xor-long v15, v15, v17

    aget-wide v17, v3, v14

    aget-wide v19, v9, v14

    xor-long v17, v17, v19

    or-long v15, v15, v17

    aget-wide v17, v3, v13

    aget-wide v19, v9, v13

    xor-long v17, v17, v19

    or-long v15, v15, v17

    aget-wide v17, v3, v10

    aget-wide v19, v9, v10

    xor-long v17, v17, v19

    or-long v15, v15, v17

    const-wide/16 v17, 0x0

    cmp-long v9, v15, v17

    if-nez v9, :cond_77

    goto/16 :goto_22a

    :cond_77
    :goto_77
    iget-object v9, v6, Lc1/a;->b:[[J

    aget-object v9, v9, v14

    invoke-static {v3, v9}, Lt4/d;->x([J[J)V

    move v9, v13

    :goto_7f
    if-ge v9, v11, :cond_22a

    iget-object v15, v6, Lc1/a;->b:[[J

    shr-int/lit8 v16, v9, 0x1

    aget-object v16, v15, v16

    move/from16 v17, v10

    aget-object v10, v15, v9

    aget-wide v18, v16, v12

    aget-wide v20, v16, v14

    aget-wide v22, v16, v13

    aget-wide v24, v16, v17

    const/16 v16, 0x3f

    shr-long v26, v24, v16

    shl-long v28, v18, v14

    const-wide/16 v30, 0x425

    and-long v26, v26, v30

    xor-long v26, v28, v26

    aput-wide v26, v10, v12

    shl-long v26, v20, v14

    ushr-long v18, v18, v16

    or-long v18, v26, v18

    aput-wide v18, v10, v14

    shl-long v18, v22, v14

    ushr-long v20, v20, v16

    or-long v18, v18, v20

    aput-wide v18, v10, v13

    shl-long v18, v24, v14

    ushr-long v20, v22, v16

    or-long v18, v18, v20

    aput-wide v18, v10, v17

    aget-object v11, v15, v14

    add-int/lit8 v18, v9, 0x1

    aget-object v15, v15, v18

    invoke-static {v10, v11, v15}, Lt4/d;->h([J[J[J)V

    add-int/lit8 v9, v9, 0x2

    move/from16 v10, v17

    const/16 v11, 0x100

    goto :goto_7f

    :pswitch_c9
    iget-object v9, v6, Lc1/a;->b:[[J

    const/16 v10, 0x100

    const/4 v11, 0x0

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-nez v9, :cond_e3

    new-array v9, v12, [I

    aput v12, v9, v13

    aput v10, v9, v11

    sget-object v14, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v14, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[J

    iput-object v9, v6, Lc1/a;->b:[[J

    goto :goto_fb

    :cond_e3
    aget-object v9, v9, v13

    aget-wide v14, v3, v11

    aget-wide v16, v9, v11

    xor-long v14, v14, v16

    aget-wide v16, v3, v13

    aget-wide v18, v9, v13

    xor-long v16, v16, v18

    or-long v14, v14, v16

    const-wide/16 v16, 0x0

    cmp-long v9, v14, v16

    if-nez v9, :cond_fb

    goto/16 :goto_22a

    :cond_fb
    :goto_fb
    iget-object v9, v6, Lc1/a;->b:[[J

    aget-object v9, v9, v13

    aget-wide v14, v3, v11

    aput-wide v14, v9, v11

    aget-wide v14, v3, v13

    aput-wide v14, v9, v13

    :goto_107
    if-ge v12, v10, :cond_22a

    iget-object v9, v6, Lc1/a;->b:[[J

    shr-int/lit8 v14, v12, 0x1

    aget-object v14, v9, v14

    aget-object v15, v9, v12

    aget-wide v16, v14, v11

    aget-wide v18, v14, v13

    const/16 v14, 0x3f

    shr-long v20, v18, v14

    shl-long v22, v16, v13

    const-wide/16 v24, 0x87

    and-long v20, v20, v24

    xor-long v20, v22, v20

    aput-wide v20, v15, v11

    shl-long v18, v18, v13

    ushr-long v16, v16, v14

    or-long v16, v18, v16

    aput-wide v16, v15, v13

    aget-object v14, v9, v13

    add-int/lit8 v15, v12, 0x1

    aget-object v9, v9, v15

    aget-wide v18, v14, v11

    xor-long v18, v20, v18

    aput-wide v18, v9, v11

    aget-wide v14, v14, v13

    xor-long v14, v16, v14

    aput-wide v14, v9, v13

    add-int/lit8 v12, v12, 0x2

    goto :goto_107

    :pswitch_140
    iget-object v9, v6, Lc1/a;->b:[[J

    const/4 v11, 0x6

    const/4 v12, 0x5

    const/4 v13, 0x4

    const/4 v14, 0x3

    const/16 v15, 0x100

    const/16 v16, 0x0

    const/16 v17, 0x7

    const/4 v10, 0x2

    const/16 v18, 0x1

    if-nez v9, :cond_166

    new-array v9, v10, [I

    const/16 v19, 0x8

    aput v19, v9, v18

    aput v15, v9, v16

    move/from16 v19, v10

    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[J

    iput-object v9, v6, Lc1/a;->b:[[J

    goto :goto_1b0

    :cond_166
    move/from16 v19, v10

    aget-object v9, v9, v18

    aget-wide v20, v3, v16

    aget-wide v22, v9, v16

    xor-long v20, v20, v22

    aget-wide v22, v3, v18

    aget-wide v24, v9, v18

    xor-long v22, v22, v24

    or-long v20, v20, v22

    aget-wide v22, v3, v19

    aget-wide v24, v9, v19

    xor-long v22, v22, v24

    or-long v20, v20, v22

    aget-wide v22, v3, v14

    aget-wide v24, v9, v14

    xor-long v22, v22, v24

    or-long v20, v20, v22

    aget-wide v22, v3, v13

    aget-wide v24, v9, v13

    xor-long v22, v22, v24

    or-long v20, v20, v22

    aget-wide v22, v3, v12

    aget-wide v24, v9, v12

    xor-long v22, v22, v24

    or-long v20, v20, v22

    aget-wide v22, v3, v11

    aget-wide v24, v9, v11

    xor-long v22, v22, v24

    or-long v20, v20, v22

    aget-wide v22, v3, v17

    aget-wide v9, v9, v17

    xor-long v9, v22, v9

    or-long v9, v20, v9

    const-wide/16 v20, 0x0

    cmp-long v9, v9, v20

    if-nez v9, :cond_1b0

    goto/16 :goto_22a

    :cond_1b0
    :goto_1b0
    iget-object v9, v6, Lc1/a;->b:[[J

    aget-object v9, v9, v18

    invoke-static {v3, v9}, Lq4/k;->z([J[J)V

    move/from16 v9, v19

    :goto_1b9
    if-ge v9, v15, :cond_22a

    iget-object v10, v6, Lc1/a;->b:[[J

    shr-int/lit8 v20, v9, 0x1

    aget-object v20, v10, v20

    move/from16 v21, v11

    aget-object v11, v10, v9

    aget-wide v22, v20, v16

    aget-wide v24, v20, v18

    aget-wide v26, v20, v19

    aget-wide v28, v20, v14

    aget-wide v30, v20, v13

    aget-wide v32, v20, v12

    aget-wide v34, v20, v21

    aget-wide v36, v20, v17

    const/16 v20, 0x3f

    shr-long v38, v36, v20

    shl-long v40, v22, v18

    const-wide/16 v42, 0x125

    and-long v38, v38, v42

    xor-long v38, v40, v38

    aput-wide v38, v11, v16

    shl-long v38, v24, v18

    ushr-long v22, v22, v20

    or-long v22, v38, v22

    aput-wide v22, v11, v18

    shl-long v22, v26, v18

    ushr-long v24, v24, v20

    or-long v22, v22, v24

    aput-wide v22, v11, v19

    shl-long v22, v28, v18

    ushr-long v24, v26, v20

    or-long v22, v22, v24

    aput-wide v22, v11, v14

    shl-long v22, v30, v18

    ushr-long v24, v28, v20

    or-long v22, v22, v24

    aput-wide v22, v11, v13

    shl-long v22, v32, v18

    ushr-long v24, v30, v20

    or-long v22, v22, v24

    aput-wide v22, v11, v12

    shl-long v22, v34, v18

    ushr-long v24, v32, v20

    or-long v22, v22, v24

    aput-wide v22, v11, v21

    shl-long v22, v36, v18

    ushr-long v24, v34, v20

    or-long v22, v22, v24

    aput-wide v22, v11, v17

    aget-object v12, v10, v18

    add-int/lit8 v22, v9, 0x1

    aget-object v10, v10, v22

    invoke-static {v11, v12, v10}, Lq4/k;->c([J[J[J)V

    add-int/lit8 v9, v9, 0x2

    move/from16 v11, v21

    const/4 v12, 0x5

    goto :goto_1b9

    :cond_22a
    :goto_22a
    invoke-static {v2, v8}, Ljava/util/Arrays;->fill([BB)V

    const-wide/16 v9, 0x0

    invoke-static {v3, v9, v10}, Ljava/util/Arrays;->fill([JJ)V

    iget-object v2, v0, La1/u;->k:La1/d;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v9

    if-lez v9, :cond_25b

    invoke-virtual {v2}, La1/d;->d()[B

    move-result-object v2

    move v3, v8

    :goto_23f
    if-ge v3, v9, :cond_25b

    move v11, v3

    move v10, v8

    :goto_243
    iget-object v12, v0, La1/u;->i:[J

    array-length v13, v12

    if-ge v10, v13, :cond_256

    aget-wide v13, v12, v10

    invoke-static {v11, v2}, Lm4/d;->C(I[B)J

    move-result-wide v15

    xor-long/2addr v13, v15

    aput-wide v13, v12, v10

    add-int/lit8 v11, v11, 0x8

    add-int/lit8 v10, v10, 0x1

    goto :goto_243

    :cond_256
    invoke-virtual {v6, v12}, Lc1/a;->a([J)V

    add-int/2addr v3, v1

    goto :goto_23f

    :cond_25b
    iget-boolean v1, v0, La1/u;->d:Z

    const-string v2, "Output buffer too short"

    move v3, v1

    iget-object v1, v0, La1/u;->b:Lorg/bouncycastle/crypto/e;

    if-eqz v3, :cond_289

    array-length v3, v5

    sub-int v3, v3, p2

    iget v6, v0, La1/u;->c:I

    sub-int/2addr v3, v6

    if-lt v3, v4, :cond_283

    invoke-virtual {v7}, La1/d;->d()[B

    move-result-object v2

    const/4 v3, 0x0

    move/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/e;->i([BII[BI)I

    move-result v2

    move v10, v4

    add-int v3, v6, v2

    invoke-virtual {v1, v5, v3}, Lorg/bouncycastle/crypto/e;->a([BI)I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v0, v5, v6, v10, v9}, La1/u;->c([BIII)V

    goto :goto_2ab

    :cond_283
    new-instance v0, Lorg/bouncycastle/crypto/d0;

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_289
    move/from16 v6, p2

    move v10, v4

    iget v3, v0, La1/u;->c:I

    sub-int v4, v10, v3

    array-length v3, v5

    sub-int/2addr v3, v6

    if-lt v3, v4, :cond_2f3

    invoke-virtual {v7}, La1/d;->d()[B

    move-result-object v2

    invoke-virtual {v0, v2, v8, v4, v9}, La1/u;->c([BIII)V

    invoke-virtual {v7}, La1/d;->d()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/e;->i([BII[BI)I

    move-result v2

    add-int v3, p2, v2

    invoke-virtual {v1, v5, v3}, Lorg/bouncycastle/crypto/e;->a([BI)I

    move-result v1

    add-int/2addr v1, v2

    :goto_2ab
    iget-object v2, v0, La1/u;->f:[B

    if-eqz v2, :cond_2eb

    iget-boolean v3, v0, La1/u;->d:Z

    if-eqz v3, :cond_2c1

    add-int v3, p2, v1

    iget v4, v0, La1/u;->c:I

    invoke-static {v2, v8, v5, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v0}, La1/u;->d()V

    iget v0, v0, La1/u;->c:I

    add-int/2addr v1, v0

    return v1

    :cond_2c1
    iget v2, v0, La1/u;->c:I

    new-array v2, v2, [B

    invoke-virtual {v7}, La1/d;->d()[B

    move-result-object v3

    iget v4, v0, La1/u;->c:I

    sub-int v5, v10, v4

    invoke-static {v3, v5, v2, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, v0, La1/u;->c:I

    new-array v4, v3, [B

    iget-object v5, v0, La1/u;->f:[B

    invoke-static {v5, v8, v4, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v2, v4}, Lm4/d;->o([B[B)Z

    move-result v2

    if-eqz v2, :cond_2e3

    invoke-virtual {v0}, La1/u;->d()V

    return v1

    :cond_2e3
    new-instance v0, Lorg/bouncycastle/crypto/x;

    const-string v1, "mac verification failed"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2eb
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "mac is not calculated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f3
    new-instance v0, Lorg/bouncycastle/crypto/d0;

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_2fa
    .packed-switch 0x0
        :pswitch_140
        :pswitch_c9
    .end packed-switch
.end method

.method public final getAlgorithmName()Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, La1/u;->a:Lorg/bouncycastle/crypto/d;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/d;->getAlgorithmName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/KGCM"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getOutputSize(I)I
    .registers 3

    iget-object v0, p0, La1/u;->l:La1/d;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    add-int/2addr v0, p1

    iget-boolean p1, p0, La1/u;->d:Z

    iget p0, p0, La1/u;->c:I

    if-eqz p1, :cond_f

    add-int/2addr v0, p0

    return v0

    :cond_f
    if-ge v0, p0, :cond_13

    const/4 p0, 0x0

    return p0

    :cond_13
    sub-int/2addr v0, p0

    return v0
.end method

.method public final getUnderlyingCipher()Lorg/bouncycastle/crypto/d;
    .registers 1

    iget-object p0, p0, La1/u;->a:Lorg/bouncycastle/crypto/d;

    return-object p0
.end method

.method public final getUpdateOutputSize(I)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public final init(ZLorg/bouncycastle/crypto/g;)V
    .registers 8

    iput-boolean p1, p0, La1/u;->d:Z

    instance-of p1, p2, Le1/a;

    iget v0, p0, La1/u;->j:I

    const/4 v1, 0x0

    iget-object v2, p0, La1/u;->g:[B

    if-eqz p1, :cond_4c

    check-cast p2, Le1/a;

    iget-object p1, p2, Le1/a;->d:[B

    invoke-static {p1}, Lm4/d;->e([B)[B

    move-result-object p1

    array-length v3, v2

    array-length v4, p1

    sub-int/2addr v3, v4

    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([BB)V

    array-length v4, p1

    invoke-static {p1, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p2, Le1/a;->c:[B

    invoke-static {p1}, Lm4/d;->e([B)[B

    move-result-object p1

    iput-object p1, p0, La1/u;->e:[B

    iget v3, p2, Le1/a;->x:I

    const/16 v4, 0x40

    if-lt v3, v4, :cond_40

    shl-int/lit8 v4, v0, 0x3

    if-gt v3, v4, :cond_40

    and-int/lit8 v4, v3, 0x7

    if-nez v4, :cond_40

    ushr-int/lit8 v3, v3, 0x3

    iput v3, p0, La1/u;->c:I

    iget-object p2, p2, Le1/a;->q:Le1/o0;

    if-eqz p1, :cond_68

    array-length v3, p1

    invoke-virtual {p0, p1, v1, v3}, La1/u;->a([BII)V

    goto :goto_68

    :cond_40
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid value for MAC size: "

    invoke-static {v3, p1}, Lb/b;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4c
    instance-of p1, p2, Le1/s0;

    if-eqz p1, :cond_7d

    check-cast p2, Le1/s0;

    iget-object p1, p2, Le1/s0;->c:[B

    array-length v3, v2

    array-length v4, p1

    sub-int/2addr v3, v4

    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([BB)V

    array-length v4, p1

    invoke-static {p1, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x0

    iput-object p1, p0, La1/u;->e:[B

    iput v0, p0, La1/u;->c:I

    iget-object p1, p2, Le1/s0;->d:Lorg/bouncycastle/crypto/g;

    move-object p2, p1

    check-cast p2, Le1/o0;

    :cond_68
    :goto_68
    new-array p1, v0, [B

    iput-object p1, p0, La1/u;->f:[B

    new-instance p1, Le1/s0;

    invoke-direct {p1, p2, v2}, Le1/s0;-><init>(Lorg/bouncycastle/crypto/g;[B)V

    iget-object v0, p0, La1/u;->b:Lorg/bouncycastle/crypto/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lorg/bouncycastle/crypto/e;->f(ZLorg/bouncycastle/crypto/g;)V

    iget-object p0, p0, La1/u;->a:Lorg/bouncycastle/crypto/d;

    invoke-interface {p0, v1, p2}, Lorg/bouncycastle/crypto/d;->init(ZLorg/bouncycastle/crypto/g;)V

    return-void

    :cond_7d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid parameter passed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final processByte(B[BI)I
    .registers 4

    iget-object p0, p0, La1/u;->l:La1/d;

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    const/4 p0, 0x0

    return p0
.end method

.method public final processBytes([BII[BI)I
    .registers 6

    array-length p4, p1

    add-int p5, p2, p3

    if-lt p4, p5, :cond_c

    iget-object p0, p0, La1/u;->l:La1/d;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    const/4 p0, 0x0

    return p0

    :cond_c
    new-instance p0, Lorg/bouncycastle/crypto/q;

    const-string p1, "input buffer too short"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
