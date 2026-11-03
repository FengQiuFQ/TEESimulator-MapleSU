.class public final La1/o;
.super Ljava/lang/Object;

# interfaces
.implements La1/a;


# instance fields
.field public a:Lorg/bouncycastle/crypto/d;

.field public b:Lb1/b;

.field public c:Lb1/a;

.field public d:Z

.field public e:Z

.field public f:I

.field public g:[B

.field public h:[B

.field public i:[B

.field public j:[B

.field public k:[B

.field public l:[B

.field public m:[B

.field public n:[B

.field public o:[B

.field public p:[B

.field public q:[B

.field public r:I

.field public s:I

.field public t:J

.field public u:[B

.field public v:I

.field public w:J

.field public x:J


# direct methods
.method public static i(Lorg/bouncycastle/crypto/d;)La1/o;
    .registers 4

    new-instance v0, La1/o;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_18

    new-instance v1, Lb1/b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lb1/b;-><init>(I)V

    iput-object p0, v0, La1/o;->a:Lorg/bouncycastle/crypto/d;

    iput-object v1, v0, La1/o;->b:Lb1/b;

    return-object v0

    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "cipher required with a block size of 16."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a([BII)V
    .registers 11

    iget-object v0, p0, La1/o;->b:Lb1/b;

    invoke-virtual {p0}, La1/o;->c()V

    iget v1, p0, La1/o;->v:I

    const-wide/16 v2, 0x10

    if-lez v1, :cond_30

    rsub-int/lit8 v4, v1, 0x10

    if-ge p3, v4, :cond_1a

    iget-object v0, p0, La1/o;->u:[B

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, La1/o;->v:I

    add-int/2addr p1, p3

    iput p1, p0, La1/o;->v:I

    return-void

    :cond_1a
    iget-object v5, p0, La1/o;->u:[B

    invoke-static {p1, p2, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, La1/o;->o:[B

    iget-object v5, p0, La1/o;->u:[B

    invoke-static {v1, v5}, Lt4/d;->T0([B[B)V

    invoke-virtual {v0, v1}, Lb1/b;->i([B)V

    iget-wide v5, p0, La1/o;->w:J

    add-long/2addr v5, v2

    iput-wide v5, p0, La1/o;->w:J

    add-int/2addr p2, v4

    sub-int/2addr p3, v4

    :cond_30
    add-int/2addr p3, p2

    add-int/lit8 v1, p3, -0x10

    :goto_33
    if-gt p2, v1, :cond_45

    iget-object v4, p0, La1/o;->o:[B

    invoke-static {v4, p2, p1}, Lt4/d;->S0([BI[B)V

    invoke-virtual {v0, v4}, Lb1/b;->i([B)V

    iget-wide v4, p0, La1/o;->w:J

    add-long/2addr v4, v2

    iput-wide v4, p0, La1/o;->w:J

    add-int/lit8 p2, p2, 0x10

    goto :goto_33

    :cond_45
    sub-int/2addr p3, p2

    iput p3, p0, La1/o;->v:I

    iget-object p0, p0, La1/o;->u:[B

    const/4 v0, 0x0

    invoke-static {p1, p2, p0, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final b()[B
    .registers 2

    iget-object v0, p0, La1/o;->m:[B

    if-nez v0, :cond_9

    iget p0, p0, La1/o;->f:I

    new-array p0, p0, [B

    return-object p0

    :cond_9
    invoke-static {v0}, Lm4/d;->e([B)[B

    move-result-object p0

    return-object p0
.end method

.method public final c()V
    .registers 2

    iget-boolean v0, p0, La1/o;->e:Z

    if-nez v0, :cond_18

    iget-boolean p0, p0, La1/o;->d:Z

    if-eqz p0, :cond_10

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "GCM cipher cannot be reused for encryption"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "GCM cipher needs to be initialised"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_18
    return-void
.end method

.method public final d(II[B[B)V
    .registers 11

    array-length v0, p4

    sub-int/2addr v0, p2

    const/16 v1, 0x10

    if-lt v0, v1, :cond_60

    iget-wide v2, p0, La1/o;->t:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_11

    invoke-virtual {p0}, La1/o;->h()V

    :cond_11
    new-array v0, v1, [B

    invoke-virtual {p0, v0}, La1/o;->g([B)V

    iget-object v2, p0, La1/o;->n:[B

    invoke-static {v2, p1, p3}, Lt4/d;->S0([BI[B)V

    iget-object v3, p0, La1/o;->b:Lb1/b;

    invoke-virtual {v3, v2}, Lb1/b;->i([B)V

    const/4 v2, 0x0

    :cond_21
    add-int v3, p2, v2

    aget-byte v4, v0, v2

    add-int v5, p1, v2

    aget-byte v5, p3, v5

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p4, v3

    add-int/lit8 v3, v2, 0x1

    add-int v4, p2, v3

    aget-byte v5, v0, v3

    add-int/2addr v3, p1

    aget-byte v3, p3, v3

    xor-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, p4, v4

    add-int/lit8 v3, v2, 0x2

    add-int v4, p2, v3

    aget-byte v5, v0, v3

    add-int/2addr v3, p1

    aget-byte v3, p3, v3

    xor-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, p4, v4

    add-int/lit8 v3, v2, 0x3

    add-int v4, p2, v3

    aget-byte v5, v0, v3

    add-int/2addr v3, p1

    aget-byte v3, p3, v3

    xor-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, p4, v4

    add-int/lit8 v2, v2, 0x4

    if-lt v2, v1, :cond_21

    iget-wide p1, p0, La1/o;->t:J

    const-wide/16 p3, 0x10

    add-long/2addr p1, p3

    iput-wide p1, p0, La1/o;->t:J

    return-void

    :cond_60
    new-instance p0, Lorg/bouncycastle/crypto/d0;

    const-string p1, "Output buffer too short"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final doFinal([BI)I
    .registers 36

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0}, La1/o;->c()V

    iget-wide v3, v0, La1/o;->t:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_14

    invoke-virtual {v0}, La1/o;->h()V

    :cond_14
    iget v3, v0, La1/o;->s:I

    iget-boolean v4, v0, La1/o;->d:Z

    const-string v7, "Output buffer too short"

    if-eqz v4, :cond_2a

    array-length v4, v1

    sub-int/2addr v4, v2

    iget v8, v0, La1/o;->f:I

    add-int/2addr v8, v3

    if-lt v4, v8, :cond_24

    goto :goto_33

    :cond_24
    new-instance v0, Lorg/bouncycastle/crypto/d0;

    invoke-direct {v0, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    iget v4, v0, La1/o;->f:I

    if-lt v3, v4, :cond_209

    sub-int/2addr v3, v4

    array-length v4, v1

    sub-int/2addr v4, v2

    if-lt v4, v3, :cond_203

    :goto_33
    const/16 v4, 0x10

    const/4 v7, 0x0

    if-lez v3, :cond_73

    iget-object v8, v0, La1/o;->l:[B

    new-array v9, v4, [B

    invoke-virtual {v0, v9}, La1/o;->g([B)V

    iget-boolean v10, v0, La1/o;->d:Z

    if-eqz v10, :cond_57

    move v10, v3

    :goto_44
    add-int/lit8 v10, v10, -0x1

    if-ltz v10, :cond_51

    aget-byte v11, v8, v10

    aget-byte v12, v9, v10

    xor-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v8, v10

    goto :goto_44

    :cond_51
    iget-object v9, v0, La1/o;->n:[B

    invoke-virtual {v0, v7, v3, v9, v8}, La1/o;->f(II[B[B)V

    goto :goto_6a

    :cond_57
    iget-object v10, v0, La1/o;->n:[B

    invoke-virtual {v0, v7, v3, v10, v8}, La1/o;->f(II[B[B)V

    move v10, v3

    :goto_5d
    add-int/lit8 v10, v10, -0x1

    if-ltz v10, :cond_6a

    aget-byte v11, v8, v10

    aget-byte v12, v9, v10

    xor-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v8, v10

    goto :goto_5d

    :cond_6a
    :goto_6a
    invoke-static {v8, v7, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-wide v8, v0, La1/o;->t:J

    int-to-long v10, v3

    add-long/2addr v8, v10

    iput-wide v8, v0, La1/o;->t:J

    :cond_73
    iget-wide v8, v0, La1/o;->w:J

    iget v10, v0, La1/o;->v:I

    int-to-long v11, v10

    add-long/2addr v8, v11

    iput-wide v8, v0, La1/o;->w:J

    iget-wide v11, v0, La1/o;->x:J

    cmp-long v8, v8, v11

    const/16 v9, 0x8

    const-wide/16 v11, 0x8

    if-lez v8, :cond_1a1

    if-lez v10, :cond_8e

    iget-object v8, v0, La1/o;->o:[B

    iget-object v13, v0, La1/o;->u:[B

    invoke-virtual {v0, v7, v10, v8, v13}, La1/o;->f(II[B[B)V

    :cond_8e
    iget-wide v13, v0, La1/o;->x:J

    cmp-long v8, v13, v5

    if-lez v8, :cond_9b

    iget-object v8, v0, La1/o;->o:[B

    iget-object v10, v0, La1/o;->p:[B

    invoke-static {v8, v10}, Lt4/d;->T0([B[B)V

    :cond_9b
    iget-wide v13, v0, La1/o;->t:J

    mul-long/2addr v13, v11

    const-wide/16 v15, 0x7f

    add-long/2addr v13, v15

    const/4 v8, 0x7

    ushr-long/2addr v13, v8

    new-array v10, v4, [B

    iget-object v15, v0, La1/o;->c:Lb1/a;

    move-wide/from16 v16, v5

    const/4 v5, 0x2

    if-nez v15, :cond_cd

    new-instance v6, Lb1/a;

    const/4 v15, 0x0

    invoke-direct {v6, v15}, Lb1/a;-><init>(I)V

    iput-object v6, v0, La1/o;->c:Lb1/a;

    iget-object v15, v0, La1/o;->j:[B

    move/from16 v18, v8

    new-array v8, v5, [J

    move-wide/from16 v19, v11

    move v11, v7

    move v12, v11

    :goto_be
    if-ge v11, v5, :cond_ca

    invoke-static {v12, v15}, Lm4/d;->c(I[B)J

    move-result-wide v21

    aput-wide v21, v8, v11

    add-int/2addr v12, v9

    add-int/lit8 v11, v11, 0x1

    goto :goto_be

    :cond_ca
    iput-object v8, v6, Lb1/a;->h:Ljava/lang/Object;

    goto :goto_d1

    :cond_cd
    move/from16 v18, v8

    move-wide/from16 v19, v11

    :goto_d1
    iget-object v6, v0, La1/o;->c:Lb1/a;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-array v8, v5, [J

    const-wide/high16 v11, -0x8000000000000000L

    aput-wide v11, v8, v7

    cmp-long v11, v13, v16

    if-lez v11, :cond_15a

    new-array v11, v5, [J

    iget-object v6, v6, Lb1/a;->h:Ljava/lang/Object;

    check-cast v6, [J

    aget-wide v21, v6, v7

    aput-wide v21, v11, v7

    const/4 v12, 0x1

    aget-wide v21, v6, v12

    aput-wide v21, v11, v12

    :goto_ef
    const-wide/16 v21, 0x1

    and-long v21, v13, v21

    cmp-long v6, v21, v16

    if-eqz v6, :cond_fa

    invoke-static {v8, v11}, Lt4/d;->y0([J[J)V

    :cond_fa
    const/4 v6, 0x4

    new-array v6, v6, [J

    move v15, v12

    move-wide/from16 v21, v13

    aget-wide v12, v11, v7

    invoke-static {v7, v12, v13, v6}, Lq4/k;->S(IJ[J)V

    aget-wide v12, v11, v15

    invoke-static {v5, v12, v13, v6}, Lq4/k;->S(IJ[J)V

    aget-wide v12, v6, v7

    aget-wide v23, v6, v15

    aget-wide v25, v6, v5

    const/4 v14, 0x3

    aget-wide v27, v6, v14

    ushr-long v29, v27, v15

    xor-long v29, v27, v29

    ushr-long v31, v27, v5

    xor-long v29, v29, v31

    ushr-long v31, v27, v18

    xor-long v29, v29, v31

    xor-long v23, v23, v29

    const/16 v6, 0x3f

    shl-long v29, v27, v6

    const/16 v14, 0x3e

    shl-long v31, v27, v14

    xor-long v29, v29, v31

    const/16 v31, 0x39

    shl-long v27, v27, v31

    xor-long v27, v29, v27

    xor-long v25, v25, v27

    ushr-long v27, v25, v15

    xor-long v27, v25, v27

    ushr-long v29, v25, v5

    xor-long v27, v27, v29

    ushr-long v29, v25, v18

    xor-long v27, v27, v29

    xor-long v12, v12, v27

    shl-long v27, v25, v6

    shl-long v29, v25, v14

    xor-long v27, v27, v29

    shl-long v25, v25, v31

    xor-long v25, v27, v25

    xor-long v23, v23, v25

    aput-wide v12, v11, v7

    aput-wide v23, v11, v15

    ushr-long v13, v21, v15

    cmp-long v6, v13, v16

    if-gtz v6, :cond_158

    goto :goto_15a

    :cond_158
    move v12, v15

    goto :goto_ef

    :cond_15a
    :goto_15a
    move v6, v7

    move v11, v6

    :goto_15c
    if-ge v6, v5, :cond_167

    aget-wide v12, v8, v6

    invoke-static {v11, v12, v13, v10}, Lm4/d;->E(IJ[B)V

    add-int/2addr v11, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_15c

    :cond_167
    iget-object v6, v0, La1/o;->o:[B

    new-array v8, v5, [J

    move v11, v7

    move v12, v11

    :goto_16d
    if-ge v11, v5, :cond_179

    invoke-static {v12, v6}, Lm4/d;->c(I[B)J

    move-result-wide v13

    aput-wide v13, v8, v11

    add-int/2addr v12, v9

    add-int/lit8 v11, v11, 0x1

    goto :goto_16d

    :cond_179
    new-array v11, v5, [J

    move v12, v7

    move v13, v12

    :goto_17d
    if-ge v12, v5, :cond_189

    invoke-static {v13, v10}, Lm4/d;->c(I[B)J

    move-result-wide v14

    aput-wide v14, v11, v12

    add-int/2addr v13, v9

    add-int/lit8 v12, v12, 0x1

    goto :goto_17d

    :cond_189
    invoke-static {v8, v11}, Lt4/d;->y0([J[J)V

    move v10, v7

    move v11, v10

    :goto_18e
    if-ge v10, v5, :cond_199

    aget-wide v12, v8, v10

    invoke-static {v11, v12, v13, v6}, Lm4/d;->E(IJ[B)V

    add-int/2addr v11, v9

    add-int/lit8 v10, v10, 0x1

    goto :goto_18e

    :cond_199
    iget-object v5, v0, La1/o;->n:[B

    iget-object v6, v0, La1/o;->o:[B

    invoke-static {v5, v6}, Lt4/d;->T0([B[B)V

    goto :goto_1a3

    :cond_1a1
    move-wide/from16 v19, v11

    :goto_1a3
    new-array v5, v4, [B

    iget-wide v10, v0, La1/o;->w:J

    mul-long v10, v10, v19

    invoke-static {v7, v10, v11, v5}, Lm4/d;->E(IJ[B)V

    iget-wide v10, v0, La1/o;->t:J

    mul-long v10, v10, v19

    invoke-static {v9, v10, v11, v5}, Lm4/d;->E(IJ[B)V

    iget-object v6, v0, La1/o;->n:[B

    invoke-static {v6, v5}, Lt4/d;->T0([B[B)V

    iget-object v5, v0, La1/o;->b:Lb1/b;

    invoke-virtual {v5, v6}, Lb1/b;->i([B)V

    new-array v4, v4, [B

    iget-object v5, v0, La1/o;->a:Lorg/bouncycastle/crypto/d;

    iget-object v6, v0, La1/o;->k:[B

    invoke-interface {v5, v7, v7, v6, v4}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    iget-object v5, v0, La1/o;->n:[B

    invoke-static {v4, v5}, Lt4/d;->T0([B[B)V

    iget v5, v0, La1/o;->f:I

    new-array v6, v5, [B

    iput-object v6, v0, La1/o;->m:[B

    invoke-static {v4, v7, v6, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-boolean v4, v0, La1/o;->d:Z

    if-eqz v4, :cond_1e6

    iget-object v4, v0, La1/o;->m:[B

    iget v5, v0, La1/o;->s:I

    add-int/2addr v2, v5

    iget v5, v0, La1/o;->f:I

    invoke-static {v4, v7, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, v0, La1/o;->f:I

    add-int/2addr v3, v1

    goto :goto_1f7

    :cond_1e6
    iget v1, v0, La1/o;->f:I

    new-array v2, v1, [B

    iget-object v4, v0, La1/o;->l:[B

    invoke-static {v4, v3, v2, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, v0, La1/o;->m:[B

    invoke-static {v1, v2}, Lm4/d;->o([B[B)Z

    move-result v1

    if-eqz v1, :cond_1fb

    :goto_1f7
    invoke-virtual {v0, v7}, La1/o;->j(Z)V

    return v3

    :cond_1fb
    new-instance v0, Lorg/bouncycastle/crypto/x;

    const-string v1, "mac check in GCM failed"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_203
    new-instance v0, Lorg/bouncycastle/crypto/d0;

    invoke-direct {v0, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_209
    new-instance v0, Lorg/bouncycastle/crypto/x;

    const-string v1, "data too short"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e(II[B[B)V
    .registers 11

    array-length v0, p4

    sub-int/2addr v0, p2

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2f

    iget-wide v2, p0, La1/o;->t:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_11

    invoke-virtual {p0}, La1/o;->h()V

    :cond_11
    new-array v0, v1, [B

    invoke-virtual {p0, v0}, La1/o;->g([B)V

    invoke-static {v0, p1, p3}, Lt4/d;->S0([BI[B)V

    iget-object p1, p0, La1/o;->n:[B

    invoke-static {p1, v0}, Lt4/d;->T0([B[B)V

    iget-object p3, p0, La1/o;->b:Lb1/b;

    invoke-virtual {p3, p1}, Lb1/b;->i([B)V

    const/4 p1, 0x0

    invoke-static {v0, p1, p4, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-wide p1, p0, La1/o;->t:J

    const-wide/16 p3, 0x10

    add-long/2addr p1, p3

    iput-wide p1, p0, La1/o;->t:J

    return-void

    :cond_2f
    new-instance p0, Lorg/bouncycastle/crypto/d0;

    const-string p1, "Output buffer too short"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final f(II[B[B)V
    .registers 7

    :goto_0
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_f

    aget-byte v0, p3, p2

    add-int v1, p1, p2

    aget-byte v1, p4, v1

    xor-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, p3, p2

    goto :goto_0

    :cond_f
    iget-object p0, p0, La1/o;->b:Lb1/b;

    invoke-virtual {p0, p3}, Lb1/b;->i([B)V

    return-void
.end method

.method public final g([B)V
    .registers 6

    iget v0, p0, La1/o;->r:I

    if-eqz v0, :cond_40

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, La1/o;->r:I

    iget-object v0, p0, La1/o;->q:[B

    const/16 v1, 0xf

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v2, v2, 0x1

    int-to-byte v3, v2

    aput-byte v3, v0, v1

    ushr-int/lit8 v1, v2, 0x8

    const/16 v2, 0xe

    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v1, v3

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    ushr-int/lit8 v1, v1, 0x8

    const/16 v2, 0xd

    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v1, v3

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    ushr-int/lit8 v1, v1, 0x8

    const/16 v2, 0xc

    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    iget-object p0, p0, La1/o;->a:Lorg/bouncycastle/crypto/d;

    const/4 v1, 0x0

    invoke-interface {p0, v1, v1, v0, p1}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    return-void

    :cond_40
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Attempt to process too many blocks"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getAlgorithmName()Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, La1/o;->a:Lorg/bouncycastle/crypto/d;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/d;->getAlgorithmName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/GCM"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getOutputSize(I)I
    .registers 3

    iget v0, p0, La1/o;->s:I

    add-int/2addr p1, v0

    iget-boolean v0, p0, La1/o;->d:Z

    iget p0, p0, La1/o;->f:I

    if-eqz v0, :cond_b

    add-int/2addr p1, p0

    return p1

    :cond_b
    if-ge p1, p0, :cond_f

    const/4 p0, 0x0

    return p0

    :cond_f
    sub-int/2addr p1, p0

    return p1
.end method

.method public final getUnderlyingCipher()Lorg/bouncycastle/crypto/d;
    .registers 1

    iget-object p0, p0, La1/o;->a:Lorg/bouncycastle/crypto/d;

    return-object p0
.end method

.method public final getUpdateOutputSize(I)I
    .registers 3

    iget v0, p0, La1/o;->s:I

    add-int/2addr p1, v0

    iget-boolean v0, p0, La1/o;->d:Z

    if-nez v0, :cond_e

    iget p0, p0, La1/o;->f:I

    if-ge p1, p0, :cond_d

    const/4 p0, 0x0

    return p0

    :cond_d
    sub-int/2addr p1, p0

    :cond_e
    rem-int/lit8 p0, p1, 0x10

    sub-int/2addr p1, p0

    return p1
.end method

.method public final h()V
    .registers 10

    iget-wide v0, p0, La1/o;->w:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/16 v1, 0x10

    const/4 v4, 0x0

    if-lez v0, :cond_16

    iget-object v0, p0, La1/o;->o:[B

    iget-object v5, p0, La1/o;->p:[B

    invoke-static {v0, v4, v5, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-wide v5, p0, La1/o;->w:J

    iput-wide v5, p0, La1/o;->x:J

    :cond_16
    iget v0, p0, La1/o;->v:I

    if-lez v0, :cond_29

    iget-object v5, p0, La1/o;->p:[B

    iget-object v6, p0, La1/o;->u:[B

    invoke-virtual {p0, v4, v0, v5, v6}, La1/o;->f(II[B[B)V

    iget-wide v5, p0, La1/o;->x:J

    iget v0, p0, La1/o;->v:I

    int-to-long v7, v0

    add-long/2addr v5, v7

    iput-wide v5, p0, La1/o;->x:J

    :cond_29
    iget-wide v5, p0, La1/o;->x:J

    cmp-long v0, v5, v2

    if-lez v0, :cond_36

    iget-object v0, p0, La1/o;->p:[B

    iget-object p0, p0, La1/o;->n:[B

    invoke-static {v0, v4, p0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_36
    return-void
.end method

.method public final init(ZLorg/bouncycastle/crypto/g;)V
    .registers 12

    iget-object v0, p0, La1/o;->b:Lb1/b;

    iget-object v1, p0, La1/o;->a:Lorg/bouncycastle/crypto/d;

    iput-boolean p1, p0, La1/o;->d:Z

    const/4 v2, 0x0

    iput-object v2, p0, La1/o;->m:[B

    const/4 v3, 0x1

    iput-boolean v3, p0, La1/o;->e:Z

    instance-of v4, p2, Le1/a;

    const/16 v5, 0x8

    const/16 v6, 0x10

    if-eqz v4, :cond_44

    check-cast p2, Le1/a;

    iget-object v4, p2, Le1/a;->d:[B

    invoke-static {v4}, Lm4/d;->e([B)[B

    move-result-object v4

    iget-object v7, p2, Le1/a;->c:[B

    invoke-static {v7}, Lm4/d;->e([B)[B

    move-result-object v7

    iput-object v7, p0, La1/o;->i:[B

    iget v7, p2, Le1/a;->x:I

    const/16 v8, 0x20

    if-lt v7, v8, :cond_38

    const/16 v8, 0x80

    if-gt v7, v8, :cond_38

    rem-int/lit8 v8, v7, 0x8

    if-nez v8, :cond_38

    div-int/2addr v7, v5

    iput v7, p0, La1/o;->f:I

    iget-object p2, p2, Le1/a;->q:Le1/o0;

    goto :goto_54

    :cond_38
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid value for MAC size: "

    invoke-static {v7, p1}, Lb/b;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_44
    instance-of v4, p2, Le1/s0;

    if-eqz v4, :cond_128

    check-cast p2, Le1/s0;

    iget-object v4, p2, Le1/s0;->c:[B

    iput-object v2, p0, La1/o;->i:[B

    iput v6, p0, La1/o;->f:I

    iget-object p2, p2, Le1/s0;->d:Lorg/bouncycastle/crypto/g;

    check-cast p2, Le1/o0;

    :goto_54
    if-eqz p1, :cond_58

    move v7, v6

    goto :goto_5b

    :cond_58
    iget v7, p0, La1/o;->f:I

    add-int/2addr v7, v6

    :goto_5b
    new-array v7, v7, [B

    iput-object v7, p0, La1/o;->l:[B

    if-eqz v4, :cond_120

    array-length v7, v4

    if-lt v7, v3, :cond_120

    if-eqz p1, :cond_8d

    iget-object p1, p0, La1/o;->h:[B

    if-eqz p1, :cond_8d

    invoke-static {p1, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_8d

    const-string p1, "cannot reuse nonce for GCM encryption"

    if-eqz p2, :cond_87

    iget-object v7, p0, La1/o;->g:[B

    if-eqz v7, :cond_8d

    iget-object v8, p2, Le1/o0;->c:[B

    invoke-static {v7, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-nez v7, :cond_81

    goto :goto_8d

    :cond_81
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_87
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8d
    :goto_8d
    iput-object v4, p0, La1/o;->h:[B

    if-eqz p2, :cond_95

    iget-object p1, p2, Le1/o0;->c:[B

    iput-object p1, p0, La1/o;->g:[B

    :cond_95
    const/4 p1, 0x0

    if-eqz p2, :cond_aa

    invoke-interface {v1, v3, p2}, Lorg/bouncycastle/crypto/d;->init(ZLorg/bouncycastle/crypto/g;)V

    new-array p2, v6, [B

    iput-object p2, p0, La1/o;->j:[B

    invoke-interface {v1, p1, p1, p2, p2}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    iget-object p2, p0, La1/o;->j:[B

    invoke-virtual {v0, p2}, Lb1/b;->h([B)V

    iput-object v2, p0, La1/o;->c:Lb1/a;

    goto :goto_ae

    :cond_aa
    iget-object p2, p0, La1/o;->j:[B

    if-eqz p2, :cond_118

    :goto_ae
    new-array p2, v6, [B

    iput-object p2, p0, La1/o;->k:[B

    iget-object v1, p0, La1/o;->h:[B

    array-length v2, v1

    const/16 v4, 0xc

    if-ne v2, v4, :cond_c4

    array-length v0, v1

    invoke-static {v1, p1, p2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p2, p0, La1/o;->k:[B

    const/16 v0, 0xf

    aput-byte v3, p2, v0

    goto :goto_e8

    :cond_c4
    array-length v2, v1

    move v3, p1

    :goto_c6
    if-ge v3, v2, :cond_d4

    sub-int v4, v2, v3

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {p0, v3, v4, p2, v1}, La1/o;->f(II[B[B)V

    add-int/lit8 v3, v3, 0x10

    goto :goto_c6

    :cond_d4
    new-array p2, v6, [B

    iget-object v1, p0, La1/o;->h:[B

    array-length v1, v1

    int-to-long v1, v1

    const-wide/16 v3, 0x8

    mul-long/2addr v1, v3

    invoke-static {v5, v1, v2, p2}, Lm4/d;->E(IJ[B)V

    iget-object v1, p0, La1/o;->k:[B

    invoke-static {v1, p2}, Lt4/d;->T0([B[B)V

    invoke-virtual {v0, v1}, Lb1/b;->i([B)V

    :goto_e8
    new-array p2, v6, [B

    iput-object p2, p0, La1/o;->n:[B

    new-array p2, v6, [B

    iput-object p2, p0, La1/o;->o:[B

    new-array p2, v6, [B

    iput-object p2, p0, La1/o;->p:[B

    new-array p2, v6, [B

    iput-object p2, p0, La1/o;->u:[B

    iput p1, p0, La1/o;->v:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, La1/o;->w:J

    iput-wide v0, p0, La1/o;->x:J

    iget-object p2, p0, La1/o;->k:[B

    invoke-static {p2}, Lm4/d;->e([B)[B

    move-result-object p2

    iput-object p2, p0, La1/o;->q:[B

    const/4 p2, -0x2

    iput p2, p0, La1/o;->r:I

    iput p1, p0, La1/o;->s:I

    iput-wide v0, p0, La1/o;->t:J

    iget-object p2, p0, La1/o;->i:[B

    if-eqz p2, :cond_117

    array-length v0, p2

    invoke-virtual {p0, p2, p1, v0}, La1/o;->a([BII)V

    :cond_117
    return-void

    :cond_118
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Key must be specified in initial init"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_120
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "IV must be at least 1 byte"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_128
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid parameters passed to GCM"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final j(Z)V
    .registers 6

    iget-object v0, p0, La1/o;->a:Lorg/bouncycastle/crypto/d;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/d;->reset()V

    const/16 v0, 0x10

    new-array v1, v0, [B

    iput-object v1, p0, La1/o;->n:[B

    new-array v1, v0, [B

    iput-object v1, p0, La1/o;->o:[B

    new-array v1, v0, [B

    iput-object v1, p0, La1/o;->p:[B

    new-array v0, v0, [B

    iput-object v0, p0, La1/o;->u:[B

    const/4 v0, 0x0

    iput v0, p0, La1/o;->v:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, La1/o;->w:J

    iput-wide v1, p0, La1/o;->x:J

    iget-object v3, p0, La1/o;->k:[B

    invoke-static {v3}, Lm4/d;->e([B)[B

    move-result-object v3

    iput-object v3, p0, La1/o;->q:[B

    const/4 v3, -0x2

    iput v3, p0, La1/o;->r:I

    iput v0, p0, La1/o;->s:I

    iput-wide v1, p0, La1/o;->t:J

    iget-object v1, p0, La1/o;->l:[B

    if-eqz v1, :cond_36

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([BB)V

    :cond_36
    if-eqz p1, :cond_3b

    const/4 p1, 0x0

    iput-object p1, p0, La1/o;->m:[B

    :cond_3b
    iget-boolean p1, p0, La1/o;->d:Z

    if-eqz p1, :cond_42

    iput-boolean v0, p0, La1/o;->e:Z

    return-void

    :cond_42
    iget-object p1, p0, La1/o;->i:[B

    if-eqz p1, :cond_4a

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, La1/o;->a([BII)V

    :cond_4a
    return-void
.end method

.method public final processByte(B[BI)I
    .registers 7

    invoke-virtual {p0}, La1/o;->c()V

    iget-object v0, p0, La1/o;->l:[B

    iget v1, p0, La1/o;->s:I

    aput-byte p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, La1/o;->s:I

    array-length p1, v0

    const/4 v2, 0x0

    if-ne v1, p1, :cond_2c

    iget-boolean p1, p0, La1/o;->d:Z

    const/16 v1, 0x10

    if-eqz p1, :cond_1d

    invoke-virtual {p0, v2, p3, v0, p2}, La1/o;->e(II[B[B)V

    iput v2, p0, La1/o;->s:I

    goto :goto_2b

    :cond_1d
    invoke-virtual {p0, v2, p3, v0, p2}, La1/o;->d(II[B[B)V

    iget-object p1, p0, La1/o;->l:[B

    iget p2, p0, La1/o;->f:I

    invoke-static {p1, v1, p1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, La1/o;->f:I

    iput p1, p0, La1/o;->s:I

    :goto_2b
    return v1

    :cond_2c
    return v2
.end method

.method public final processBytes([BII[BI)I
    .registers 12

    invoke-virtual {p0}, La1/o;->c()V

    array-length v0, p1

    sub-int/2addr v0, p2

    if-lt v0, p3, :cond_b3

    const/4 v0, 0x0

    if-ne p1, p4, :cond_1a

    invoke-virtual {p0, p3}, La1/o;->getUpdateOutputSize(I)I

    move-result v1

    invoke-static {p2, p3, p5, v1}, Lm4/d;->J(IIII)Z

    move-result v1

    if-eqz v1, :cond_1a

    new-array p1, p3, [B

    invoke-static {p4, p2, p1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move p2, v0

    :cond_1a
    iget-boolean v1, p0, La1/o;->d:Z

    const/16 v2, 0x10

    if-eqz v1, :cond_59

    iget v1, p0, La1/o;->s:I

    if-lez v1, :cond_40

    rsub-int/lit8 v3, v1, 0x10

    if-ge p3, v3, :cond_33

    iget-object p4, p0, La1/o;->l:[B

    invoke-static {p1, p2, p4, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2d
    iget p1, p0, La1/o;->s:I

    add-int/2addr p1, p3

    iput p1, p0, La1/o;->s:I

    return v0

    :cond_33
    iget-object v4, p0, La1/o;->l:[B

    invoke-static {p1, p2, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, La1/o;->l:[B

    invoke-virtual {p0, v0, p5, v1, p4}, La1/o;->e(II[B[B)V

    add-int/2addr p2, v3

    sub-int/2addr p3, v3

    goto :goto_41

    :cond_40
    move v2, v0

    :goto_41
    add-int/2addr p3, p2

    add-int/lit8 v1, p3, -0x10

    :goto_44
    if-gt p2, v1, :cond_50

    add-int v3, p5, v2

    invoke-virtual {p0, p2, v3, p1, p4}, La1/o;->e(II[B[B)V

    add-int/lit8 p2, p2, 0x10

    add-int/lit8 v2, v2, 0x10

    goto :goto_44

    :cond_50
    sub-int/2addr p3, p2

    iput p3, p0, La1/o;->s:I

    iget-object p0, p0, La1/o;->l:[B

    invoke-static {p1, p2, p0, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v2

    :cond_59
    iget-object v1, p0, La1/o;->l:[B

    array-length v3, v1

    iget v4, p0, La1/o;->s:I

    sub-int/2addr v3, v4

    if-ge p3, v3, :cond_65

    invoke-static {p1, p2, v1, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2d

    :cond_65
    if-lt v4, v2, :cond_86

    invoke-virtual {p0, v0, p5, v1, p4}, La1/o;->d(II[B[B)V

    iget-object v1, p0, La1/o;->l:[B

    iget v4, p0, La1/o;->s:I

    sub-int/2addr v4, v2

    iput v4, p0, La1/o;->s:I

    invoke-static {v1, v2, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v2

    if-ge p3, v3, :cond_84

    iget-object p4, p0, La1/o;->l:[B

    iget p5, p0, La1/o;->s:I

    invoke-static {p1, p2, p4, p5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, La1/o;->s:I

    add-int/2addr p1, p3

    iput p1, p0, La1/o;->s:I

    return v2

    :cond_84
    move v1, v2

    goto :goto_87

    :cond_86
    move v1, v0

    :goto_87
    add-int/2addr p3, p2

    iget-object v3, p0, La1/o;->l:[B

    array-length v4, v3

    sub-int/2addr p3, v4

    iget v4, p0, La1/o;->s:I

    rsub-int/lit8 v5, v4, 0x10

    invoke-static {p1, p2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, La1/o;->l:[B

    add-int v4, p5, v1

    invoke-virtual {p0, v0, v4, v3, p4}, La1/o;->d(II[B[B)V

    add-int/2addr p2, v5

    add-int/2addr v1, v2

    :goto_9c
    if-gt p2, p3, :cond_a8

    add-int v2, p5, v1

    invoke-virtual {p0, p2, v2, p1, p4}, La1/o;->d(II[B[B)V

    add-int/lit8 p2, p2, 0x10

    add-int/lit8 v1, v1, 0x10

    goto :goto_9c

    :cond_a8
    iget-object p4, p0, La1/o;->l:[B

    array-length p5, p4

    add-int/2addr p5, p3

    sub-int/2addr p5, p2

    iput p5, p0, La1/o;->s:I

    invoke-static {p1, p2, p4, v0, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v1

    :cond_b3
    new-instance p0, Lorg/bouncycastle/crypto/q;

    const-string p1, "Input buffer too short"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
