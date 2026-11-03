.class public final Lq3/b;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/m0;


# instance fields
.field public g:[B

.field public h:Lq3/n;

.field public i:Lq3/m;

.field public j:Ljava/security/SecureRandom;

.field public k:Ljava/lang/Object;


# virtual methods
.method public final a([B)Z
    .registers 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lq3/b;->k:Ljava/lang/Object;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/v;->getDigestSize()I

    move-result v1

    new-array v7, v1, [B

    iget-object v1, v0, Lq3/b;->k:Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-interface {v1, v7, v8}, Lorg/bouncycastle/crypto/v;->doFinal([BI)I

    iget-object v1, v0, Lq3/b;->h:Lq3/n;

    iget-object v6, v0, Lq3/b;->g:[B

    iget-object v0, v1, La3/a;->d:Ljava/lang/Object;

    check-cast v0, Lq3/l;

    iget-object v9, v1, Lq3/n;->q:Ln4/b;

    iget-object v0, v0, Lq3/l;->b:Lq3/k;

    invoke-virtual {v0}, Lq3/k;->a()Lq3/h;

    move-result-object v2

    invoke-virtual {v1}, Lq3/n;->d()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lq3/h;->g([B)V

    new-instance v0, Lb1/a;

    invoke-direct {v0}, Lb1/a;-><init>()V

    iget v12, v2, Lq3/h;->h:I

    iget v13, v2, Lq3/h;->g:I

    add-int/lit8 v3, v13, 0x1

    mul-int/2addr v3, v12

    add-int/lit8 v3, v3, 0x1

    iget v4, v2, Lq3/h;->i:I

    add-int/2addr v3, v4

    iget v14, v2, Lq3/h;->f:I

    iget v4, v2, Lq3/h;->c:I

    mul-int v5, v14, v4

    add-int/2addr v5, v3

    iget v11, v2, Lq3/h;->a:I

    mul-int/2addr v5, v11

    move-object/from16 v3, p1

    array-length v10, v3

    if-eq v5, v10, :cond_48

    return v8

    :cond_48
    new-instance v10, Lg1/d;

    iget v15, v2, Lq3/h;->j:I

    move-object/from16 v17, v3

    move/from16 v16, v4

    invoke-direct/range {v10 .. v17}, Lg1/d;-><init>(IIIIII[B)V

    iget-object v3, v10, Lg1/d;->h:Ljava/lang/Object;

    check-cast v3, [B

    iget-object v4, v10, Lg1/d;->j:Ljava/lang/Object;

    move-object v11, v4

    check-cast v11, [Lq3/e;

    iget-object v4, v10, Lg1/d;->i:Ljava/lang/Object;

    move-object v14, v4

    check-cast v14, [Lq3/e;

    invoke-virtual {v1}, Lq3/n;->d()[B

    move-result-object v4

    iget-object v5, v9, Ln4/b;->c:[B

    invoke-static {v5}, Lm4/d;->e([B)[B

    move-result-object v5

    invoke-virtual/range {v2 .. v7}, Lq3/h;->c([B[B[B[B[B)Lq3/c;

    move-result-object v3

    iget-object v4, v3, Lq3/c;->c:[B

    iget-wide v5, v3, Lq3/c;->a:J

    iget v3, v3, Lq3/c;->b:I

    const/4 v7, 0x3

    invoke-virtual {v0, v7}, Lb1/a;->A(I)V

    invoke-virtual {v0, v8}, Lb1/a;->w(I)V

    invoke-virtual {v0, v5, v6}, Lb1/a;->x(J)V

    invoke-virtual {v0, v3}, Lb1/a;->v(I)V

    new-instance v7, Lq3/a;

    invoke-direct {v7, v2}, Lq3/a;-><init>(Lq3/h;)V

    invoke-virtual {v1}, Lq3/n;->d()[B

    move-result-object v10

    invoke-virtual {v7, v11, v4, v10, v0}, Lq3/a;->d([Lq3/e;[B[BLb1/a;)[B

    move-result-object v13

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lb1/a;->A(I)V

    invoke-virtual {v0, v8}, Lb1/a;->w(I)V

    invoke-virtual {v0, v5, v6}, Lb1/a;->x(J)V

    invoke-virtual {v0, v3}, Lb1/a;->v(I)V

    new-instance v12, Lq2/a;

    const/4 v0, 0x0

    invoke-virtual {v1}, Lq3/n;->d()[B

    move-result-object v4

    invoke-direct {v12, v2, v0, v4}, Lq2/a;-><init>(Lq3/h;[B[B)V

    invoke-virtual {v1}, Lq3/n;->d()[B

    move-result-object v15

    iget-object v0, v9, Ln4/b;->c:[B

    invoke-static {v0}, Lm4/d;->e([B)[B

    move-result-object v19

    move/from16 v18, v3

    move-wide/from16 v16, v5

    invoke-virtual/range {v12 .. v19}, Lq2/a;->c([B[Lq3/e;[BJI[B)Z

    move-result v0

    return v0
.end method

.method public final b()[B
    .registers 14

    iget-object v0, p0, Lq3/b;->i:Lq3/m;

    iget-object v0, v0, La3/a;->d:Ljava/lang/Object;

    check-cast v0, Lq3/l;

    iget-object v0, v0, Lq3/l;->b:Lq3/k;

    invoke-virtual {v0}, Lq3/k;->a()Lq3/h;

    move-result-object v0

    iget-object v1, p0, Lq3/b;->i:Lq3/m;

    iget-object v1, v1, Lq3/m;->x:Ln4/b;

    iget-object v1, v1, Ln4/b;->b:[B

    invoke-virtual {v0, v1}, Lq3/h;->g([B)V

    iget-object v1, p0, Lq3/b;->k:Ljava/lang/Object;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/v;->getDigestSize()I

    move-result v1

    new-array v7, v1, [B

    iget-object v1, p0, Lq3/b;->k:Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-interface {v1, v7, v8}, Lorg/bouncycastle/crypto/v;->doFinal([BI)I

    iget v0, v0, Lq3/h;->a:I

    new-array v1, v0, [B

    iget-object v2, p0, Lq3/b;->j:Ljava/security/SecureRandom;

    if-eqz v2, :cond_2f

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    goto :goto_38

    :cond_2f
    iget-object v2, p0, Lq3/b;->i:Lq3/m;

    iget-object v2, v2, Lq3/m;->x:Ln4/b;

    iget-object v2, v2, Ln4/b;->b:[B

    invoke-static {v2, v8, v1, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_38
    iget-object v0, p0, Lq3/b;->i:Lq3/m;

    iget-object v6, p0, Lq3/b;->g:[B

    iget-object p0, v0, La3/a;->d:Ljava/lang/Object;

    check-cast p0, Lq3/l;

    iget-object v9, v0, Lq3/m;->q:Ln4/b;

    iget-object v0, v0, Lq3/m;->x:Ln4/b;

    iget-object p0, p0, Lq3/l;->b:Lq3/k;

    invoke-virtual {p0}, Lq3/k;->a()Lq3/h;

    move-result-object v2

    iget-object p0, v0, Ln4/b;->b:[B

    invoke-virtual {v2, p0}, Lq3/h;->g([B)V

    new-instance v10, Lq3/a;

    invoke-direct {v10, v2}, Lq3/a;-><init>(Lq3/h;)V

    iget-object v3, v9, Ln4/b;->c:[B

    invoke-virtual {v2, v3, v1, v6, v7}, Lq3/h;->e([B[B[B[B)[B

    move-result-object v3

    iget-object v4, v0, Ln4/b;->b:[B

    iget-object v5, v0, Ln4/b;->c:[B

    invoke-virtual/range {v2 .. v7}, Lq3/h;->c([B[B[B[B[B)Lq3/c;

    move-result-object v1

    iget-object v4, v1, Lq3/c;->c:[B

    iget-wide v5, v1, Lq3/c;->a:J

    iget v1, v1, Lq3/c;->b:I

    new-instance v7, Lb1/a;

    invoke-direct {v7}, Lb1/a;-><init>()V

    const/4 v11, 0x3

    invoke-virtual {v7, v11}, Lb1/a;->A(I)V

    invoke-virtual {v7, v5, v6}, Lb1/a;->x(J)V

    invoke-virtual {v7, v1}, Lb1/a;->v(I)V

    iget-object v12, v9, Ln4/b;->b:[B

    invoke-virtual {v10, v7, v4, v12, p0}, Lq3/a;->e(Lb1/a;[B[B[B)[Lq3/e;

    move-result-object v7

    new-instance v12, Lb1/a;

    invoke-direct {v12}, Lb1/a;-><init>()V

    invoke-virtual {v12, v11}, Lb1/a;->A(I)V

    invoke-virtual {v12, v5, v6}, Lb1/a;->x(J)V

    invoke-virtual {v12, v1}, Lb1/a;->v(I)V

    invoke-virtual {v10, v7, v4, p0, v12}, Lq3/a;->d([Lq3/e;[B[BLb1/a;)[B

    move-result-object p0

    const/16 v4, 0x20

    new-array v10, v4, [B

    const/4 v11, 0x2

    const/16 v12, 0x10

    invoke-static {v10, v11, v12}, Lm4/d;->w([BII)V

    const/16 v11, 0x14

    invoke-static {v10, v11, v4, v8}, Ljava/util/Arrays;->fill([BIIB)V

    new-instance v4, Lq2/a;

    iget-object v9, v9, Ln4/b;->b:[B

    invoke-static {v9}, Lm4/d;->e([B)[B

    move-result-object v9

    iget-object v0, v0, Ln4/b;->b:[B

    invoke-static {v0}, Lm4/d;->e([B)[B

    move-result-object v0

    invoke-direct {v4, v2, v9, v0}, Lq2/a;-><init>(Lq3/h;[B[B)V

    invoke-virtual {v4, v1, v5, v6, p0}, Lq2/a;->a(IJ[B)[B

    move-result-object p0

    array-length v0, v7

    add-int/lit8 v1, v0, 0x2

    new-array v1, v1, [[B

    aput-object v3, v1, v8

    :goto_ba
    array-length v2, v7

    if-eq v8, v2, :cond_d1

    add-int/lit8 v2, v8, 0x1

    aget-object v3, v7, v8

    iget-object v4, v3, Lq3/e;->a:[B

    iget-object v3, v3, Lq3/e;->b:[[B

    invoke-static {v3}, Lm4/d;->m([[B)[B

    move-result-object v3

    invoke-static {v4, v3}, Lm4/d;->j([B[B)[B

    move-result-object v3

    aput-object v3, v1, v2

    move v8, v2

    goto :goto_ba

    :cond_d1
    add-int/lit8 v0, v0, 0x1

    aput-object p0, v1, v0

    invoke-static {v1}, Lm4/d;->m([[B)[B

    move-result-object p0

    return-object p0
.end method

.method public final init(ZLorg/bouncycastle/crypto/g;)V
    .registers 11

    instance-of v0, p2, Le1/r0;

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    check-cast p2, Le1/r0;

    iget-object v0, p2, Le1/r0;->c:Lorg/bouncycastle/crypto/g;

    iget-object v2, p2, Le1/r0;->d:[B

    array-length v2, v2

    const/16 v3, 0xff

    if-gt v2, v3, :cond_14

    move-object v7, v0

    move-object v0, p2

    move-object p2, v7

    goto :goto_1d

    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "context too long"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1c
    move-object v0, v1

    :goto_1d
    if-eqz p1, :cond_3f

    iput-object v1, p0, Lq3/b;->h:Lq3/n;

    instance-of p1, p2, Le1/t0;

    if-eqz p1, :cond_32

    check-cast p2, Le1/t0;

    iget-object p1, p2, Le1/t0;->d:Lorg/bouncycastle/crypto/g;

    check-cast p1, Lq3/m;

    iput-object p1, p0, Lq3/b;->i:Lq3/m;

    iget-object p1, p2, Le1/t0;->c:Ljava/security/SecureRandom;

    iput-object p1, p0, Lq3/b;->j:Ljava/security/SecureRandom;

    goto :goto_38

    :cond_32
    check-cast p2, Lq3/m;

    iput-object p2, p0, Lq3/b;->i:Lq3/m;

    iput-object v1, p0, Lq3/b;->j:Ljava/security/SecureRandom;

    :goto_38
    iget-object p1, p0, Lq3/b;->i:Lq3/m;

    iget-object p1, p1, La3/a;->d:Ljava/lang/Object;

    :goto_3c
    check-cast p1, Lq3/l;

    goto :goto_4a

    :cond_3f
    check-cast p2, Lq3/n;

    iput-object p2, p0, Lq3/b;->h:Lq3/n;

    iput-object v1, p0, Lq3/b;->i:Lq3/m;

    iput-object v1, p0, Lq3/b;->j:Ljava/security/SecureRandom;

    iget-object p1, p2, La3/a;->d:Ljava/lang/Object;

    goto :goto_3c

    :goto_4a
    iget p2, p1, Lq3/l;->c:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/16 v3, 0x80

    const/16 v4, 0x100

    if-eqz p2, :cond_7e

    if-eq p2, v2, :cond_78

    if-eq p2, v1, :cond_72

    const/4 p1, 0x3

    if-eq p2, p1, :cond_6c

    const/4 p1, 0x4

    if-ne p2, p1, :cond_64

    new-instance p1, Ls0/g0;

    invoke-direct {p1, v4}, Ls0/g0;-><init>(I)V

    goto :goto_b1

    :cond_64
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unknown parameters type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6c
    new-instance p1, Ls0/g0;

    invoke-direct {p1, v3}, Ls0/g0;-><init>(I)V

    goto :goto_b1

    :cond_72
    new-instance p1, Ls0/e0;

    invoke-direct {p1}, Ls0/e0;-><init>()V

    goto :goto_b1

    :cond_78
    new-instance p1, Ls0/b0;

    invoke-direct {p1}, Ls0/b0;-><init>()V

    goto :goto_b1

    :cond_7e
    iget-object p2, p1, Lq3/l;->a:Ljava/lang/String;

    const-string v5, "sha2"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_9d

    sget-object p2, Lq3/l;->d:Lq3/l;

    if-eq p2, p1, :cond_97

    sget-object p2, Lq3/l;->e:Lq3/l;

    if-ne p2, p1, :cond_91

    goto :goto_97

    :cond_91
    new-instance p1, Ls0/e0;

    invoke-direct {p1}, Ls0/e0;-><init>()V

    goto :goto_b1

    :cond_97
    :goto_97
    new-instance p1, Ls0/b0;

    invoke-direct {p1}, Ls0/b0;-><init>()V

    goto :goto_b1

    :cond_9d
    sget-object p2, Lq3/l;->j:Lq3/l;

    if-eq p2, p1, :cond_ac

    sget-object p2, Lq3/l;->k:Lq3/l;

    if-ne p2, p1, :cond_a6

    goto :goto_ac

    :cond_a6
    new-instance p1, Ls0/g0;

    invoke-direct {p1, v4}, Ls0/g0;-><init>(I)V

    goto :goto_b1

    :cond_ac
    :goto_ac
    new-instance p1, Ls0/g0;

    invoke-direct {p1, v3}, Ls0/g0;-><init>(I)V

    :goto_b1
    iput-object p1, p0, Lq3/b;->k:Ljava/lang/Object;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/v;->getAlgorithmName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lz2/a;->a(Ljava/lang/String;)Lm/q;

    move-result-object p1

    :try_start_bb
    invoke-virtual {p1}, Lm/n;->g()[B

    move-result-object p1
    :try_end_bf
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_bf} :catch_ee

    const/4 p2, 0x0

    if-nez v0, :cond_c4

    move v3, p2

    goto :goto_c7

    :cond_c4
    iget-object v3, v0, Le1/r0;->d:[B

    array-length v3, v3

    :goto_c7
    add-int/lit8 v4, v3, 0x2

    array-length v5, p1

    add-int/2addr v5, v4

    new-array v5, v5, [B

    iput-object v5, p0, Lq3/b;->g:[B

    aput-byte v2, v5, p2

    int-to-byte v6, v3

    aput-byte v6, v5, v2

    if-eqz v0, :cond_e7

    iget-object v0, v0, Le1/r0;->d:[B

    array-length v2, v0

    if-ne v2, v3, :cond_df

    invoke-static {v0, p2, v5, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_e7

    :cond_df
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "len"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e7
    :goto_e7
    iget-object p0, p0, Lq3/b;->g:[B

    array-length v0, p1

    invoke-static {p1, p2, p0, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :catch_ee
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "oid encoding failed: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2}, Lb/b;->c(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final update(B)V
    .registers 2

    iget-object p0, p0, Lq3/b;->k:Ljava/lang/Object;

    invoke-interface {p0, p1}, Lorg/bouncycastle/crypto/v;->update(B)V

    return-void
.end method

.method public final update([BII)V
    .registers 4

    iget-object p0, p0, Lq3/b;->k:Ljava/lang/Object;

    invoke-interface {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/v;->update([BII)V

    return-void
.end method
