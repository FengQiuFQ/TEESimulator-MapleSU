.class public final Lv0/r;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lorg/bouncycastle/crypto/c;

.field public final b:Lx0/o;

.field public final c:Lz0/d;

.field public final d:Ld1/c;

.field public e:Z

.field public f:Lorg/bouncycastle/crypto/g;

.field public g:Lorg/bouncycastle/crypto/g;

.field public h:Le1/m0;

.field public i:[B

.field public j:Lb1/b;

.field public k:Lorg/bouncycastle/crypto/a0;

.field public l:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/c;Lx0/o;Lz0/d;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv0/r;->a:Lorg/bouncycastle/crypto/c;

    iput-object p2, p0, Lv0/r;->b:Lx0/o;

    iput-object p3, p0, Lv0/r;->c:Lz0/d;

    iget p1, p3, Lz0/d;->h:I

    new-array p1, p1, [B

    const/4 p1, 0x0

    iput-object p1, p0, Lv0/r;->d:Ld1/c;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/c;Lx0/o;Lz0/d;Ld1/c;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv0/r;->a:Lorg/bouncycastle/crypto/c;

    iput-object p2, p0, Lv0/r;->b:Lx0/o;

    iput-object p3, p0, Lv0/r;->c:Lz0/d;

    iget p1, p3, Lz0/d;->h:I

    new-array p1, p1, [B

    iput-object p4, p0, Lv0/r;->d:Ld1/c;

    return-void
.end method


# virtual methods
.method public final a(I[B)[B
    .registers 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lv0/r;->i:[B

    array-length v3, v2

    iget-object v8, v0, Lv0/r;->c:Lz0/d;

    iget v9, v8, Lz0/d;->h:I

    add-int/2addr v3, v9

    if-lt v1, v3, :cond_104

    iget-object v3, v0, Lv0/r;->b:Lx0/o;

    const/16 v10, 0x8

    iget-object v11, v0, Lv0/r;->d:Ld1/c;

    const/4 v12, 0x0

    if-nez v11, :cond_57

    array-length v2, v2

    sub-int v2, v1, v2

    sub-int/2addr v2, v9

    new-array v4, v2, [B

    iget-object v5, v0, Lv0/r;->h:Le1/m0;

    iget v5, v5, Le1/m0;->q:I

    div-int/2addr v5, v10

    new-array v6, v5, [B

    add-int v7, v2, v5

    new-array v13, v7, [B

    invoke-virtual {v3, v13, v12, v7}, Lx0/o;->generateBytes([BII)I

    iget-object v3, v0, Lv0/r;->i:[B

    array-length v3, v3

    if-eqz v3, :cond_37

    invoke-static {v13, v12, v6, v12, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v13, v5, v4, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3d

    :cond_37
    invoke-static {v13, v12, v4, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v13, v2, v6, v12, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_3d
    new-array v3, v2, [B

    move v5, v12

    :goto_40
    if-eq v5, v2, :cond_51

    iget-object v7, v0, Lv0/r;->i:[B

    array-length v7, v7

    add-int/2addr v7, v5

    aget-byte v7, p2, v7

    aget-byte v13, v4, v5

    xor-int/2addr v7, v13

    int-to-byte v7, v7

    aput-byte v7, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_40

    :cond_51
    move-object v13, v6

    move v2, v12

    move-object v6, v3

    move-object/from16 v3, p2

    goto :goto_a0

    :cond_57
    iget-object v2, v0, Lv0/r;->h:Le1/m0;

    iget v4, v2, Le1/m0;->x:I

    div-int/2addr v4, v10

    new-array v5, v4, [B

    iget v2, v2, Le1/m0;->q:I

    div-int/2addr v2, v10

    new-array v13, v2, [B

    add-int v6, v4, v2

    new-array v7, v6, [B

    invoke-virtual {v3, v7, v12, v6}, Lx0/o;->generateBytes([BII)I

    invoke-static {v7, v12, v5, v12, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v7, v4, v13, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v2, Le1/o0;

    invoke-direct {v2, v5, v12, v4}, Le1/o0;-><init>([BII)V

    iget-object v3, v0, Lv0/r;->l:[B

    if-eqz v3, :cond_80

    new-instance v4, Le1/s0;

    array-length v5, v3

    invoke-direct {v4, v2, v3, v12, v5}, Le1/s0;-><init>(Lorg/bouncycastle/crypto/g;[BII)V

    move-object v2, v4

    :cond_80
    invoke-virtual {v11, v12, v2}, Ld1/c;->f(ZLorg/bouncycastle/crypto/g;)V

    iget-object v2, v0, Lv0/r;->i:[B

    array-length v2, v2

    sub-int v2, v1, v2

    sub-int/2addr v2, v9

    invoke-virtual {v11, v2}, Ld1/c;->c(I)I

    move-result v2

    new-array v6, v2, [B

    iget-object v2, v0, Lv0/r;->i:[B

    array-length v4, v2

    array-length v2, v2

    sub-int v2, v1, v2

    sub-int v5, v2, v9

    const/4 v7, 0x0

    iget-object v2, v0, Lv0/r;->d:Ld1/c;

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v7}, Ld1/c;->i([BII[BI)I

    move-result v2

    :goto_a0
    iget-object v4, v0, Lv0/r;->h:Le1/m0;

    iget-object v4, v4, Le1/m0;->d:[B

    invoke-static {v4}, Lm4/d;->e([B)[B

    move-result-object v4

    iget-object v5, v0, Lv0/r;->i:[B

    array-length v5, v5

    if-eqz v5, :cond_bb

    new-array v5, v10, [B

    if-eqz v4, :cond_bc

    array-length v7, v4

    int-to-long v14, v7

    const-wide/16 v16, 0x8

    mul-long v14, v14, v16

    invoke-static {v12, v14, v15, v5}, Lm4/d;->E(IJ[B)V

    goto :goto_bc

    :cond_bb
    const/4 v5, 0x0

    :cond_bc
    :goto_bc
    sub-int v7, v1, v9

    invoke-static {v3, v7, v1}, Lm4/d;->q([BII)[B

    move-result-object v7

    array-length v9, v7

    new-array v10, v9, [B

    new-instance v14, Le1/o0;

    array-length v15, v13

    invoke-direct {v14, v13, v12, v15}, Le1/o0;-><init>([BII)V

    invoke-virtual {v8, v14}, Lz0/d;->init(Lorg/bouncycastle/crypto/g;)V

    iget-object v13, v0, Lv0/r;->i:[B

    array-length v14, v13

    array-length v13, v13

    sub-int/2addr v1, v13

    sub-int/2addr v1, v9

    invoke-virtual {v8, v3, v14, v1}, Lz0/d;->update([BII)V

    if-eqz v4, :cond_dd

    array-length v1, v4

    invoke-virtual {v8, v4, v12, v1}, Lz0/d;->update([BII)V

    :cond_dd
    iget-object v0, v0, Lv0/r;->i:[B

    array-length v0, v0

    if-eqz v0, :cond_e6

    array-length v0, v5

    invoke-virtual {v8, v5, v12, v0}, Lz0/d;->update([BII)V

    :cond_e6
    invoke-virtual {v8, v10, v12}, Lz0/d;->doFinal([BI)I

    invoke-static {v7, v10}, Lm4/d;->o([B[B)Z

    move-result v0

    if-eqz v0, :cond_fc

    if-nez v11, :cond_f2

    return-object v6

    :cond_f2
    invoke-virtual {v11, v6, v2}, Ld1/c;->a([BI)I

    move-result v0

    add-int/2addr v0, v2

    invoke-static {v6, v12, v0}, Lm4/d;->q([BII)[B

    move-result-object v0

    return-object v0

    :cond_fc
    new-instance v0, Lorg/bouncycastle/crypto/x;

    const-string v1, "invalid MAC"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_104
    new-instance v0, Lorg/bouncycastle/crypto/x;

    const-string v1, "Length of input must be greater than the MAC and V combined"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(I[B)[B
    .registers 16

    iget-object v1, p0, Lv0/r;->b:Lx0/o;

    const/16 v7, 0x8

    const/4 v8, 0x0

    iget-object v9, p0, Lv0/r;->d:Ld1/c;

    if-nez v9, :cond_3f

    new-array v2, p1, [B

    iget-object v3, p0, Lv0/r;->h:Le1/m0;

    iget v3, v3, Le1/m0;->q:I

    div-int/2addr v3, v7

    new-array v5, v3, [B

    add-int v6, p1, v3

    new-array v9, v6, [B

    invoke-virtual {v1, v9, v8, v6}, Lx0/o;->generateBytes([BII)I

    iget-object v1, p0, Lv0/r;->i:[B

    array-length v1, v1

    if-eqz v1, :cond_25

    invoke-static {v9, v8, v5, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v9, v3, v2, v8, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2b

    :cond_25
    invoke-static {v9, v8, v2, v8, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v9, p1, v5, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2b
    new-array v1, p1, [B

    move v3, v8

    :goto_2e
    if-eq v3, p1, :cond_3b

    aget-byte v6, p2, v3

    aget-byte v9, v2, v3

    xor-int/2addr v6, v9

    int-to-byte v6, v6

    aput-byte v6, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    :cond_3b
    move-object v10, v5

    move-object v5, v1

    move v1, p1

    goto :goto_88

    :cond_3f
    iget-object v2, p0, Lv0/r;->h:Le1/m0;

    iget v3, v2, Le1/m0;->x:I

    div-int/2addr v3, v7

    new-array v5, v3, [B

    iget v2, v2, Le1/m0;->q:I

    div-int/2addr v2, v7

    new-array v10, v2, [B

    add-int v6, v3, v2

    new-array v11, v6, [B

    invoke-virtual {v1, v11, v8, v6}, Lx0/o;->generateBytes([BII)I

    invoke-static {v11, v8, v5, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v11, v3, v10, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lv0/r;->l:[B

    const/4 v2, 0x1

    if-eqz v1, :cond_6d

    new-instance v1, Le1/s0;

    new-instance v6, Le1/o0;

    invoke-direct {v6, v5, v8, v3}, Le1/o0;-><init>([BII)V

    iget-object v3, p0, Lv0/r;->l:[B

    invoke-direct {v1, v6, v3}, Le1/s0;-><init>(Lorg/bouncycastle/crypto/g;[B)V

    :goto_69
    invoke-virtual {v9, v2, v1}, Ld1/c;->f(ZLorg/bouncycastle/crypto/g;)V

    goto :goto_73

    :cond_6d
    new-instance v1, Le1/o0;

    invoke-direct {v1, v5, v8, v3}, Le1/o0;-><init>([BII)V

    goto :goto_69

    :goto_73
    invoke-virtual {v9, p1}, Ld1/c;->c(I)I

    move-result v1

    new-array v5, v1, [B

    iget-object v1, p0, Lv0/r;->d:Ld1/c;

    const/4 v6, 0x0

    const/4 v3, 0x0

    move v4, p1

    move-object v2, p2

    invoke-virtual/range {v1 .. v6}, Ld1/c;->i([BII[BI)I

    move-result v1

    invoke-virtual {v9, v5, v1}, Ld1/c;->a([BI)I

    move-result v2

    add-int/2addr v1, v2

    :goto_88
    iget-object v2, p0, Lv0/r;->h:Le1/m0;

    iget-object v2, v2, Le1/m0;->d:[B

    invoke-static {v2}, Lm4/d;->e([B)[B

    move-result-object v2

    iget-object v3, p0, Lv0/r;->i:[B

    array-length v3, v3

    if-eqz v3, :cond_a2

    new-array v3, v7, [B

    if-eqz v2, :cond_a3

    array-length v4, v2

    int-to-long v6, v4

    const-wide/16 v11, 0x8

    mul-long/2addr v6, v11

    invoke-static {v8, v6, v7, v3}, Lm4/d;->E(IJ[B)V

    goto :goto_a3

    :cond_a2
    const/4 v3, 0x0

    :cond_a3
    :goto_a3
    iget-object v4, p0, Lv0/r;->c:Lz0/d;

    iget v6, v4, Lz0/d;->h:I

    new-array v7, v6, [B

    new-instance v9, Le1/o0;

    array-length v11, v10

    invoke-direct {v9, v10, v8, v11}, Le1/o0;-><init>([BII)V

    invoke-virtual {v4, v9}, Lz0/d;->init(Lorg/bouncycastle/crypto/g;)V

    array-length v9, v5

    invoke-virtual {v4, v5, v8, v9}, Lz0/d;->update([BII)V

    if-eqz v2, :cond_bc

    array-length v9, v2

    invoke-virtual {v4, v2, v8, v9}, Lz0/d;->update([BII)V

    :cond_bc
    iget-object v2, p0, Lv0/r;->i:[B

    array-length v2, v2

    if-eqz v2, :cond_c5

    array-length v2, v3

    invoke-virtual {v4, v3, v8, v2}, Lz0/d;->update([BII)V

    :cond_c5
    invoke-virtual {v4, v7, v8}, Lz0/d;->doFinal([BI)I

    iget-object v2, p0, Lv0/r;->i:[B

    array-length v3, v2

    add-int/2addr v3, v1

    add-int/2addr v3, v6

    new-array v3, v3, [B

    array-length v4, v2

    invoke-static {v2, v8, v3, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lv0/r;->i:[B

    array-length v2, v2

    invoke-static {v5, v8, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lv0/r;->i:[B

    array-length v0, v0

    add-int/2addr v0, v1

    invoke-static {v7, v8, v3, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v3
.end method

.method public final c(Lorg/bouncycastle/crypto/g;)V
    .registers 3

    instance-of v0, p1, Le1/s0;

    if-eqz v0, :cond_11

    check-cast p1, Le1/s0;

    iget-object v0, p1, Le1/s0;->c:[B

    iput-object v0, p0, Lv0/r;->l:[B

    iget-object p1, p1, Le1/s0;->d:Lorg/bouncycastle/crypto/g;

    :goto_c
    check-cast p1, Le1/m0;

    iput-object p1, p0, Lv0/r;->h:Le1/m0;

    return-void

    :cond_11
    const/4 v0, 0x0

    iput-object v0, p0, Lv0/r;->l:[B

    goto :goto_c
.end method

.method public final d(ZLorg/bouncycastle/crypto/g;Lorg/bouncycastle/crypto/g;Lorg/bouncycastle/crypto/g;)V
    .registers 5

    iput-boolean p1, p0, Lv0/r;->e:Z

    iput-object p2, p0, Lv0/r;->f:Lorg/bouncycastle/crypto/g;

    iput-object p3, p0, Lv0/r;->g:Lorg/bouncycastle/crypto/g;

    const/4 p1, 0x0

    new-array p1, p1, [B

    iput-object p1, p0, Lv0/r;->i:[B

    invoke-virtual {p0, p4}, Lv0/r;->c(Lorg/bouncycastle/crypto/g;)V

    return-void
.end method

.method public final e(I[B)[B
    .registers 7

    const-string v0, "unable to recover ephemeral public key: "

    iget-boolean v1, p0, Lv0/r;->e:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_28

    iget-object v0, p0, Lv0/r;->j:Lb1/b;

    if-eqz v0, :cond_6f

    iget-object v1, v0, Lb1/b;->h:Ljava/lang/Object;

    check-cast v1, Lorg/bouncycastle/crypto/b;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/b;->g()Lorg/bouncycastle/crypto/m;

    move-result-object v1

    iget-object v0, v0, Lb1/b;->i:Ljava/lang/Object;

    check-cast v0, Lorg/bouncycastle/crypto/y;

    iget-object v3, v1, Lorg/bouncycastle/crypto/m;->b:Ljava/lang/Object;

    check-cast v3, Le1/b;

    iput-object v3, p0, Lv0/r;->f:Lorg/bouncycastle/crypto/g;

    iget-object v1, v1, Lorg/bouncycastle/crypto/m;->a:Ljava/lang/Object;

    check-cast v1, Le1/b;

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/y;->getEncoded(Le1/b;)[B

    move-result-object v0

    iput-object v0, p0, Lv0/r;->i:[B

    goto :goto_6f

    :cond_28
    iget-object v1, p0, Lv0/r;->k:Lorg/bouncycastle/crypto/a0;

    if-eqz v1, :cond_6f

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p2, v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    :try_start_31
    iget-object v3, p0, Lv0/r;->k:Lorg/bouncycastle/crypto/a0;

    invoke-interface {v3, v1}, Lorg/bouncycastle/crypto/a0;->e(Ljava/io/ByteArrayInputStream;)Le1/b;

    move-result-object v3

    iput-object v3, p0, Lv0/r;->g:Lorg/bouncycastle/crypto/g;
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_39} :catch_48
    .catch Ljava/lang/IllegalArgumentException; {:try_start_31 .. :try_end_39} :catch_46

    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    sub-int v0, p1, v0

    invoke-static {p2, v2, v0}, Lm4/d;->q([BII)[B

    move-result-object v0

    iput-object v0, p0, Lv0/r;->i:[B

    goto :goto_6f

    :catch_46
    move-exception p0

    goto :goto_4a

    :catch_48
    move-exception p0

    goto :goto_60

    :goto_4a
    new-instance p1, Lorg/bouncycastle/crypto/x;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/crypto/h;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :goto_60
    new-instance p1, Lorg/bouncycastle/crypto/x;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2}, Lb/b;->c(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/crypto/h;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :cond_6f
    :goto_6f
    iget-object v0, p0, Lv0/r;->f:Lorg/bouncycastle/crypto/g;

    iget-object v1, p0, Lv0/r;->a:Lorg/bouncycastle/crypto/c;

    invoke-interface {v1, v0}, Lorg/bouncycastle/crypto/c;->init(Lorg/bouncycastle/crypto/g;)V

    iget-object v0, p0, Lv0/r;->g:Lorg/bouncycastle/crypto/g;

    invoke-interface {v1, v0}, Lorg/bouncycastle/crypto/c;->a(Lorg/bouncycastle/crypto/g;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {v1}, Lorg/bouncycastle/crypto/c;->getFieldSize()I

    move-result v1

    invoke-static {v1, v0}, Lm4/a;->a(ILjava/math/BigInteger;)[B

    move-result-object v0

    iget-object v1, p0, Lv0/r;->i:[B

    array-length v3, v1

    if-eqz v3, :cond_91

    invoke-static {v1, v0}, Lm4/d;->j([B[B)[B

    move-result-object v1

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    move-object v0, v1

    :cond_91
    :try_start_91
    new-instance v1, Le1/n0;

    iget-object v3, p0, Lv0/r;->h:Le1/m0;

    iget-object v3, v3, Le1/m0;->c:[B

    invoke-static {v3}, Lm4/d;->e([B)[B

    move-result-object v3

    invoke-direct {v1, v0, v3}, Le1/n0;-><init>([B[B)V

    iget-object v3, p0, Lv0/r;->b:Lx0/o;

    invoke-virtual {v3, v1}, Lx0/o;->init(Lorg/bouncycastle/crypto/u;)V

    iget-boolean v1, p0, Lv0/r;->e:Z

    if-eqz v1, :cond_ae

    invoke-virtual {p0, p1, p2}, Lv0/r;->b(I[B)[B

    move-result-object p0

    goto :goto_b2

    :catchall_ac
    move-exception p0

    goto :goto_b6

    :cond_ae
    invoke-virtual {p0, p1, p2}, Lv0/r;->a(I[B)[B

    move-result-object p0
    :try_end_b2
    .catchall {:try_start_91 .. :try_end_b2} :catchall_ac

    :goto_b2
    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    return-object p0

    :goto_b6
    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    throw p0
.end method
