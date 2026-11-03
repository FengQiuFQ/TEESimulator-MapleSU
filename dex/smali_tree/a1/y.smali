.class public final La1/y;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/d;


# instance fields
.field public g:[B

.field public h:[B

.field public i:[B

.field public j:[B

.field public k:Lorg/bouncycastle/crypto/d;

.field public l:I

.field public m:I

.field public n:Z

.field public o:Z


# virtual methods
.method public final a(BI)B
    .registers 3

    iget-object p0, p0, La1/y;->i:[B

    aget-byte p0, p0, p2

    xor-int/2addr p0, p1

    int-to-byte p0, p0

    return p0
.end method

.method public final b(II[B[B)I
    .registers 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    iget v5, v0, La1/y;->m:I

    iget-object v6, v0, La1/y;->h:[B

    iget-object v7, v0, La1/y;->k:Lorg/bouncycastle/crypto/d;

    iget-object v8, v0, La1/y;->i:[B

    iget-boolean v9, v0, La1/y;->o:Z

    const-string v10, "input buffer too short"

    const/4 v11, 0x0

    const-string v12, "output buffer too short"

    if-eqz v9, :cond_166

    iget-boolean v9, v0, La1/y;->n:Z

    const/4 v14, 0x1

    if-eqz v9, :cond_c4

    iget-object v9, v0, La1/y;->g:[B

    add-int v15, v1, v5

    const/16 v16, 0x2

    array-length v13, v3

    if-gt v15, v13, :cond_be

    iget v10, v0, La1/y;->l:I

    if-nez v10, :cond_95

    mul-int/lit8 v10, v5, 0x2

    add-int v13, v10, v2

    add-int/lit8 v13, v13, 0x2

    array-length v15, v4

    if-gt v13, v15, :cond_8f

    invoke-interface {v7, v11, v11, v6, v8}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    move v12, v11

    :goto_3a
    if-ge v12, v5, :cond_49

    add-int v13, v2, v12

    aget-byte v15, v9, v12

    invoke-virtual {v0, v15, v12}, La1/y;->a(BI)B

    move-result v15

    aput-byte v15, v4, v13

    add-int/lit8 v12, v12, 0x1

    goto :goto_3a

    :cond_49
    invoke-static {v4, v2, v6, v11, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {v7, v11, v11, v6, v8}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    add-int v12, v2, v5

    add-int/lit8 v13, v5, -0x2

    aget-byte v13, v9, v13

    invoke-virtual {v0, v13, v11}, La1/y;->a(BI)B

    move-result v13

    aput-byte v13, v4, v12

    add-int/lit8 v13, v12, 0x1

    add-int/lit8 v15, v5, -0x1

    aget-byte v9, v9, v15

    invoke-virtual {v0, v9, v14}, La1/y;->a(BI)B

    move-result v9

    aput-byte v9, v4, v13

    add-int/lit8 v2, v2, 0x2

    invoke-static {v4, v2, v6, v11, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {v7, v11, v11, v6, v8}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    move v2, v11

    :goto_70
    if-ge v2, v5, :cond_82

    add-int/lit8 v7, v12, 0x2

    add-int/2addr v7, v2

    add-int v8, v1, v2

    aget-byte v8, v3, v8

    invoke-virtual {v0, v8, v2}, La1/y;->a(BI)B

    move-result v8

    aput-byte v8, v4, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_70

    :cond_82
    add-int/lit8 v12, v12, 0x2

    invoke-static {v4, v12, v6, v11, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, v0, La1/y;->l:I

    add-int/lit8 v10, v10, 0x2

    add-int/2addr v1, v10

    iput v1, v0, La1/y;->l:I

    return v10

    :cond_8f
    new-instance v0, Lorg/bouncycastle/crypto/d0;

    invoke-direct {v0, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_95
    add-int/lit8 v9, v5, 0x2

    if-lt v10, v9, :cond_bd

    add-int v9, v2, v5

    array-length v10, v4

    if-gt v9, v10, :cond_b7

    invoke-interface {v7, v11, v11, v6, v8}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    move v7, v11

    :goto_a2
    if-ge v7, v5, :cond_b3

    add-int v8, v2, v7

    add-int v9, v1, v7

    aget-byte v9, v3, v9

    invoke-virtual {v0, v9, v7}, La1/y;->a(BI)B

    move-result v9

    aput-byte v9, v4, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_a2

    :cond_b3
    invoke-static {v4, v2, v6, v11, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v5

    :cond_b7
    new-instance v0, Lorg/bouncycastle/crypto/d0;

    invoke-direct {v0, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_bd
    return v5

    :cond_be
    new-instance v0, Lorg/bouncycastle/crypto/q;

    invoke-direct {v0, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c4
    const/16 v16, 0x2

    iget-object v9, v0, La1/y;->j:[B

    add-int v13, v1, v5

    array-length v15, v3

    if-gt v13, v15, :cond_160

    add-int v10, v2, v5

    array-length v13, v4

    if-gt v10, v13, :cond_15a

    iget v10, v0, La1/y;->l:I

    if-nez v10, :cond_eb

    move v2, v11

    :goto_d7
    if-ge v2, v5, :cond_e2

    add-int v4, v1, v2

    aget-byte v4, v3, v4

    aput-byte v4, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_d7

    :cond_e2
    invoke-interface {v7, v11, v11, v6, v8}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    iget v1, v0, La1/y;->l:I

    add-int/2addr v1, v5

    iput v1, v0, La1/y;->l:I

    return v11

    :cond_eb
    if-ne v10, v5, :cond_11f

    invoke-static {v3, v1, v9, v11, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v5, -0x2

    move/from16 v3, v16

    invoke-static {v6, v3, v6, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-byte v3, v9, v11

    aput-byte v3, v6, v1

    sub-int/2addr v5, v14

    aget-byte v3, v9, v14

    aput-byte v3, v6, v5

    invoke-interface {v7, v11, v11, v6, v8}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    move v3, v11

    :goto_104
    if-ge v3, v1, :cond_115

    add-int v5, v2, v3

    add-int/lit8 v7, v3, 0x2

    aget-byte v7, v9, v7

    invoke-virtual {v0, v7, v3}, La1/y;->a(BI)B

    move-result v7

    aput-byte v7, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_104

    :cond_115
    const/4 v3, 0x2

    invoke-static {v9, v3, v6, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, v0, La1/y;->l:I

    add-int/2addr v2, v3

    iput v2, v0, La1/y;->l:I

    return v1

    :cond_11f
    add-int/lit8 v12, v5, 0x2

    if-lt v10, v12, :cond_159

    invoke-static {v3, v1, v9, v11, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-byte v1, v9, v11

    add-int/lit8 v3, v5, -0x2

    invoke-virtual {v0, v1, v3}, La1/y;->a(BI)B

    move-result v1

    aput-byte v1, v4, v2

    add-int/lit8 v1, v2, 0x1

    aget-byte v10, v9, v14

    add-int/lit8 v12, v5, -0x1

    invoke-virtual {v0, v10, v12}, La1/y;->a(BI)B

    move-result v10

    aput-byte v10, v4, v1

    const/4 v1, 0x2

    invoke-static {v9, v11, v6, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {v7, v11, v11, v6, v8}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    move v7, v11

    :goto_144
    if-ge v7, v3, :cond_156

    add-int v8, v2, v7

    add-int/2addr v8, v1

    add-int/lit8 v10, v7, 0x2

    aget-byte v10, v9, v10

    invoke-virtual {v0, v10, v7}, La1/y;->a(BI)B

    move-result v10

    aput-byte v10, v4, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_144

    :cond_156
    invoke-static {v9, v1, v6, v11, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_159
    return v5

    :cond_15a
    new-instance v0, Lorg/bouncycastle/crypto/d0;

    invoke-direct {v0, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_160
    new-instance v0, Lorg/bouncycastle/crypto/q;

    invoke-direct {v0, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_166
    iget-boolean v9, v0, La1/y;->n:Z

    if-eqz v9, :cond_1a1

    add-int v9, v1, v5

    array-length v13, v3

    if-gt v9, v13, :cond_19b

    add-int v9, v2, v5

    array-length v10, v4

    if-gt v9, v10, :cond_195

    invoke-interface {v7, v11, v11, v6, v8}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    move v7, v11

    :goto_178
    if-ge v7, v5, :cond_189

    add-int v8, v2, v7

    add-int v9, v1, v7

    aget-byte v9, v3, v9

    invoke-virtual {v0, v9, v7}, La1/y;->a(BI)B

    move-result v9

    aput-byte v9, v4, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_178

    :cond_189
    :goto_189
    if-ge v11, v5, :cond_194

    add-int v0, v2, v11

    aget-byte v0, v4, v0

    aput-byte v0, v6, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_189

    :cond_194
    return v5

    :cond_195
    new-instance v0, Lorg/bouncycastle/crypto/d0;

    invoke-direct {v0, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19b
    new-instance v0, Lorg/bouncycastle/crypto/q;

    invoke-direct {v0, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a1
    add-int v9, v1, v5

    array-length v13, v3

    if-gt v9, v13, :cond_1d2

    add-int v9, v2, v5

    array-length v10, v4

    if-gt v9, v10, :cond_1cc

    invoke-interface {v7, v11, v11, v6, v8}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    move v7, v11

    :goto_1af
    if-ge v7, v5, :cond_1c0

    add-int v8, v2, v7

    add-int v9, v1, v7

    aget-byte v9, v3, v9

    invoke-virtual {v0, v9, v7}, La1/y;->a(BI)B

    move-result v9

    aput-byte v9, v4, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_1af

    :cond_1c0
    :goto_1c0
    if-ge v11, v5, :cond_1cb

    add-int v0, v1, v11

    aget-byte v0, v3, v0

    aput-byte v0, v6, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_1c0

    :cond_1cb
    return v5

    :cond_1cc
    new-instance v0, Lorg/bouncycastle/crypto/d0;

    invoke-direct {v0, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d2
    new-instance v0, Lorg/bouncycastle/crypto/q;

    invoke-direct {v0, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c()I
    .registers 1

    iget-object p0, p0, La1/y;->k:Lorg/bouncycastle/crypto/d;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/d;->c()I

    move-result p0

    return p0
.end method

.method public final getAlgorithmName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, La1/y;->k:Lorg/bouncycastle/crypto/d;

    iget-boolean p0, p0, La1/y;->o:Z

    if-eqz p0, :cond_1c

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lorg/bouncycastle/crypto/d;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/PGPCFBwithIV"

    :goto_14
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lorg/bouncycastle/crypto/d;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/PGPCFB"

    goto :goto_14
.end method

.method public final init(ZLorg/bouncycastle/crypto/g;)V
    .registers 10

    iget-object v0, p0, La1/y;->k:Lorg/bouncycastle/crypto/d;

    iget-object v1, p0, La1/y;->g:[B

    iput-boolean p1, p0, La1/y;->n:Z

    instance-of p1, p2, Le1/s0;

    const/4 v2, 0x1

    if-eqz p1, :cond_33

    check-cast p2, Le1/s0;

    iget-object p1, p2, Le1/s0;->c:[B

    array-length v3, p1

    array-length v4, v1

    const/4 v5, 0x0

    if-ge v3, v4, :cond_26

    array-length v3, v1

    array-length v4, p1

    sub-int/2addr v3, v4

    array-length v4, p1

    invoke-static {p1, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v3, v5

    :goto_1c
    array-length v4, v1

    array-length v6, p1

    sub-int/2addr v4, v6

    if-ge v3, v4, :cond_2a

    aput-byte v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_26
    array-length v3, v1

    invoke-static {p1, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2a
    invoke-virtual {p0}, La1/y;->reset()V

    iget-object p0, p2, Le1/s0;->d:Lorg/bouncycastle/crypto/g;

    invoke-interface {v0, v2, p0}, Lorg/bouncycastle/crypto/d;->init(ZLorg/bouncycastle/crypto/g;)V

    return-void

    :cond_33
    invoke-virtual {p0}, La1/y;->reset()V

    invoke-interface {v0, v2, p2}, Lorg/bouncycastle/crypto/d;->init(ZLorg/bouncycastle/crypto/g;)V

    return-void
.end method

.method public final reset()V
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, La1/y;->l:I

    move v1, v0

    :goto_4
    iget-object v2, p0, La1/y;->h:[B

    array-length v3, v2

    if-eq v1, v3, :cond_19

    iget-boolean v3, p0, La1/y;->o:Z

    if-eqz v3, :cond_10

    aput-byte v0, v2, v1

    goto :goto_16

    :cond_10
    iget-object v3, p0, La1/y;->g:[B

    aget-byte v3, v3, v1

    aput-byte v3, v2, v1

    :goto_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_19
    iget-object p0, p0, La1/y;->k:Lorg/bouncycastle/crypto/d;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/d;->reset()V

    return-void
.end method
