.class public final Lg3/c;
.super Lg3/h;


# instance fields
.field public final A1:J

.field public final d:I

.field public final q:Z

.field public final x:Ljava/util/List;

.field public final y:Ljava/util/List;

.field public final z1:J


# direct methods
.method public constructor <init>(ILjava/util/ArrayList;Ljava/util/ArrayList;JJZ)V
    .registers 11

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Le1/b;-><init>(Z)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lg3/c;->A1:J

    iput p1, p0, Lg3/c;->d:I

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lg3/c;->x:Ljava/util/List;

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lg3/c;->y:Ljava/util/List;

    iput-wide p4, p0, Lg3/c;->A1:J

    iput-wide p6, p0, Lg3/c;->z1:J

    iput-boolean p8, p0, Lg3/c;->q:Z

    return-void
.end method

.method public constructor <init>(Lg3/j;JJ)V
    .registers 32

    move-object/from16 v1, p0

    const/4 v0, 0x1

    invoke-direct {v1, v0}, Le1/b;-><init>(Z)V

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lg3/c;->A1:J

    iput v0, v1, Lg3/c;->d:I

    invoke-static/range {p1 .. p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lg3/c;->x:Ljava/util/List;

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v2, v1, Lg3/c;->y:Ljava/util/List;

    move-wide/from16 v2, p2

    iput-wide v2, v1, Lg3/c;->A1:J

    move-wide/from16 v4, p4

    iput-wide v4, v1, Lg3/c;->z1:J

    const/4 v4, 0x0

    iput-boolean v4, v1, Lg3/c;->q:Z

    monitor-enter p0

    :try_start_22
    iget-object v5, v1, Lg3/c;->x:Ljava/util/List;
    :try_end_24
    .catchall {:try_start_22 .. :try_end_24} :catchall_33c

    monitor-exit p0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    new-array v7, v6, [J

    monitor-enter p0

    monitor-exit p0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v0

    :goto_32
    if-ltz v8, :cond_49

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lg3/j;

    iget-object v9, v9, Lg3/j;->q:Lg3/m;

    iget v9, v9, Lg3/m;->c:I

    shl-int v10, v0, v9

    sub-int/2addr v10, v0

    int-to-long v10, v10

    and-long/2addr v10, v2

    aput-wide v10, v7, v8

    ushr-long/2addr v2, v9

    add-int/lit8 v8, v8, -0x1

    goto :goto_32

    :cond_49
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lg3/j;

    invoke-interface {v5, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lg3/j;

    iget-object v3, v1, Lg3/c;->y:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Lg3/l;

    invoke-interface {v3, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lg3/l;

    iget-object v8, v1, Lg3/c;->x:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg3/j;

    aget-object v9, v2, v4

    invoke-virtual {v9}, Lg3/j;->d()I

    move-result v9

    sub-int/2addr v9, v0

    int-to-long v9, v9

    aget-wide v11, v7, v4

    cmp-long v9, v9, v11

    if-eqz v9, :cond_92

    iget-object v9, v8, Lg3/j;->q:Lg3/m;

    iget-object v10, v8, Lg3/j;->x:Lg3/f;

    long-to-int v11, v11

    iget-object v12, v8, Lg3/j;->d:[B

    invoke-static {v12}, Lm4/d;->e([B)[B

    move-result-object v12

    iget-object v8, v8, Lg3/j;->z1:[B

    invoke-static {v8}, Lm4/d;->e([B)[B

    move-result-object v8

    invoke-static {v9, v10, v11, v12, v8}, Lt4/d;->S(Lg3/m;Lg3/f;I[B[B)Lg3/j;

    move-result-object v8

    aput-object v8, v2, v4

    move v8, v0

    goto :goto_93

    :cond_92
    move v8, v4

    :goto_93
    move v9, v0

    :goto_94
    if-ge v9, v6, :cond_31b

    add-int/lit8 v10, v9, -0x1

    aget-object v11, v2, v10

    iget-object v12, v11, Lg3/j;->x:Lg3/f;

    iget v12, v12, Lg3/f;->b:I

    const/16 v13, 0x10

    new-array v14, v13, [B

    new-array v15, v12, [B

    new-instance v13, Lg3/n;

    iget-object v0, v11, Lg3/j;->d:[B

    invoke-static {v0}, Lm4/d;->e([B)[B

    move-result-object v0

    iget-object v4, v11, Lg3/j;->z1:[B

    invoke-static {v4}, Lm4/d;->e([B)[B

    move-result-object v4

    iget-object v11, v11, Lg3/j;->x:Lg3/f;

    invoke-static {v11}, Lq4/k;->a0(Lg3/f;)Lorg/bouncycastle/crypto/v;

    move-result-object v11

    invoke-direct {v13, v0, v4, v11}, Lg3/n;-><init>([B[BLorg/bouncycastle/crypto/v;)V

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    aget-wide v2, v7, v10

    long-to-int v0, v2

    iput v0, v13, Lg3/n;->i:I

    const/4 v0, -0x2

    iput v0, v13, Lg3/n;->j:I

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-virtual {v13, v2, v0, v15}, Lg3/n;->a(IZ[B)V

    new-array v3, v12, [B

    invoke-virtual {v13, v2, v2, v3}, Lg3/n;->a(IZ[B)V

    const/16 v4, 0x10

    invoke-static {v3, v2, v14, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v6, -0x1

    if-ge v9, v2, :cond_ec

    aget-wide v2, v7, v9

    aget-object v4, p2, v9

    invoke-virtual {v4}, Lg3/j;->d()I

    move-result v4

    sub-int/2addr v4, v0

    int-to-long v11, v4

    cmp-long v0, v2, v11

    if-nez v0, :cond_ea

    :goto_e8
    const/4 v0, 0x1

    goto :goto_fa

    :cond_ea
    const/4 v0, 0x0

    goto :goto_fa

    :cond_ec
    aget-wide v2, v7, v9

    aget-object v0, p2, v9

    invoke-virtual {v0}, Lg3/j;->d()I

    move-result v0

    int-to-long v11, v0

    cmp-long v0, v2, v11

    if-nez v0, :cond_ea

    goto :goto_e8

    :goto_fa
    aget-object v2, p2, v9

    iget-object v2, v2, Lg3/j;->d:[B

    invoke-static {v2}, Lm4/d;->e([B)[B

    move-result-object v2

    invoke-static {v14, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_147

    aget-object v2, p2, v9

    iget-object v2, v2, Lg3/j;->z1:[B

    invoke-static {v2}, Lm4/d;->e([B)[B

    move-result-object v2

    invoke-static {v15, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_147

    if-nez v0, :cond_13e

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg3/j;

    iget-object v0, v0, Lg3/j;->q:Lg3/m;

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg3/j;

    iget-object v2, v2, Lg3/j;->x:Lg3/f;

    aget-wide v3, v7, v9

    long-to-int v3, v3

    invoke-static {v0, v2, v3, v14, v15}, Lt4/d;->S(Lg3/m;Lg3/f;I[B[B)Lg3/j;

    move-result-object v0

    aput-object v0, p2, v9

    move-object/from16 v17, v5

    move/from16 p1, v6

    move-object/from16 v19, v7

    move/from16 v20, v9

    const/4 v8, 0x1

    :goto_13a
    const/16 v16, 0x1

    goto/16 :goto_2f0

    :cond_13e
    move-object/from16 v17, v5

    move/from16 p1, v6

    move-object/from16 v19, v7

    move/from16 v20, v9

    goto :goto_13a

    :cond_147
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg3/j;

    iget-object v0, v0, Lg3/j;->q:Lg3/m;

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg3/j;

    iget-object v2, v2, Lg3/j;->x:Lg3/f;

    aget-wide v3, v7, v9

    long-to-int v3, v3

    invoke-static {v0, v2, v3, v14, v15}, Lt4/d;->S(Lg3/m;Lg3/f;I[B[B)Lg3/j;

    move-result-object v0

    aput-object v0, p2, v9

    aget-object v2, p2, v10

    invoke-virtual {v0}, Lg3/j;->f()Lg3/k;

    move-result-object v0

    invoke-virtual {v0}, Lg3/k;->b()[B

    move-result-object v0

    iget-object v3, v2, Lg3/j;->q:Lg3/m;

    iget v3, v3, Lg3/m;->c:I

    invoke-virtual {v2}, Lg3/j;->d()I

    move-result v4

    monitor-enter v2

    :try_start_173
    iget v8, v2, Lg3/j;->D1:I

    iget v11, v2, Lg3/j;->y:I

    if-ge v8, v11, :cond_311

    iget-object v11, v2, Lg3/j;->x:Lg3/f;

    iget-object v12, v2, Lg3/j;->d:[B

    iget-object v13, v2, Lg3/j;->z1:[B

    monitor-enter v2
    :try_end_180
    .catchall {:try_start_173 .. :try_end_180} :catchall_30c

    :try_start_180
    iget v14, v2, Lg3/j;->D1:I

    const/16 v16, 0x1

    add-int/lit8 v14, v14, 0x1

    iput v14, v2, Lg3/j;->D1:I
    :try_end_188
    .catchall {:try_start_180 .. :try_end_188} :catchall_30e

    :try_start_188
    monitor-exit v2

    monitor-exit v2
    :try_end_18a
    .catchall {:try_start_188 .. :try_end_18a} :catchall_30c

    shl-int v14, v16, v3

    add-int/2addr v14, v4

    new-array v4, v3, [[B

    const/4 v15, 0x0

    :goto_190
    if-ge v15, v3, :cond_1a7

    shl-int v17, v16, v15

    div-int v17, v14, v17

    move/from16 p1, v3

    xor-int/lit8 v3, v17, 0x1

    invoke-virtual {v2, v3}, Lg3/j;->b(I)[B

    move-result-object v3

    aput-object v3, v4, v15

    add-int/lit8 v15, v15, 0x1

    move/from16 v3, p1

    const/16 v16, 0x1

    goto :goto_190

    :cond_1a7
    iget-object v2, v2, Lg3/j;->q:Lg3/m;

    iget v3, v11, Lg3/f;->b:I

    new-array v14, v3, [B

    new-instance v15, Lg3/n;

    move-object/from16 v17, v5

    iget-object v5, v11, Lg3/f;->f:Lm/q;

    invoke-static {v3, v5}, Lq4/k;->G(ILm/q;)Lorg/bouncycastle/crypto/v;

    move-result-object v5

    invoke-direct {v15, v12, v13, v5}, Lg3/n;-><init>([B[BLorg/bouncycastle/crypto/v;)V

    iput v8, v15, Lg3/n;->i:I

    const/4 v5, -0x3

    iput v5, v15, Lg3/n;->j:I

    const/4 v5, 0x0

    invoke-virtual {v15, v5, v5, v14}, Lg3/n;->a(IZ[B)V

    iget-object v15, v11, Lg3/f;->f:Lm/q;

    iget v5, v11, Lg3/f;->b:I

    invoke-static {v5, v15}, Lq4/k;->G(ILm/q;)Lorg/bouncycastle/crypto/v;

    move-result-object v5

    array-length v15, v12

    move/from16 p1, v6

    const/4 v6, 0x0

    invoke-interface {v5, v12, v6, v15}, Lorg/bouncycastle/crypto/v;->update([BII)V

    invoke-static {v8, v5}, Lq4/k;->a1(ILorg/bouncycastle/crypto/v;)V

    const v15, 0xffff81

    int-to-byte v15, v15

    invoke-interface {v5, v15}, Lorg/bouncycastle/crypto/v;->update(B)V

    const/16 v15, -0x7e7f

    int-to-byte v15, v15

    invoke-interface {v5, v15}, Lorg/bouncycastle/crypto/v;->update(B)V

    invoke-interface {v5, v14, v6, v3}, Lorg/bouncycastle/crypto/v;->update([BII)V

    array-length v3, v0

    invoke-interface {v5, v0, v6, v3}, Lorg/bouncycastle/crypto/v;->update([BII)V

    const/16 v0, 0x22

    new-array v0, v0, [B

    invoke-interface {v5, v0, v6}, Lorg/bouncycastle/crypto/v;->doFinal([BI)I

    iget v3, v11, Lg3/f;->b:I

    iget v5, v11, Lg3/f;->d:I

    iget v6, v11, Lg3/f;->c:I

    mul-int v15, v5, v3

    new-array v15, v15, [B

    move-object/from16 p5, v0

    iget-object v0, v11, Lg3/f;->f:Lm/q;

    invoke-static {v3, v0}, Lq4/k;->G(ILm/q;)Lorg/bouncycastle/crypto/v;

    move-result-object v0

    move/from16 v18, v6

    new-instance v6, Lg3/n;

    move-object/from16 v19, v7

    iget-object v7, v11, Lg3/f;->f:Lm/q;

    move/from16 v20, v9

    iget v9, v11, Lg3/f;->b:I

    invoke-static {v9, v7}, Lq4/k;->G(ILm/q;)Lorg/bouncycastle/crypto/v;

    move-result-object v7

    invoke-direct {v6, v12, v13, v7}, Lg3/n;-><init>([B[BLorg/bouncycastle/crypto/v;)V

    iput v8, v6, Lg3/n;->i:I

    const/16 v16, 0x1

    shl-int v7, v16, v18

    add-int/lit8 v7, v7, -0x1

    const/4 v9, 0x0

    const/4 v13, 0x0

    :goto_21f
    mul-int/lit8 v21, v3, 0x8

    move/from16 v22, v7

    div-int v7, v21, v18

    const/16 v21, 0x8

    if-ge v9, v7, :cond_248

    add-int v13, v13, v22

    mul-int v7, v9, v18

    div-int/lit8 v7, v7, 0x8

    div-int v21, v21, v18

    move/from16 v23, v7

    not-int v7, v9

    const/16 v16, 0x1

    add-int/lit8 v21, v21, -0x1

    and-int v7, v7, v21

    mul-int v7, v7, v18

    aget-byte v21, p5, v23

    ushr-int v7, v21, v7

    and-int v7, v7, v22

    sub-int/2addr v13, v7

    add-int/lit8 v9, v9, 0x1

    move/from16 v7, v22

    goto :goto_21f

    :cond_248
    iget v7, v11, Lg3/f;->e:I

    shl-int v7, v13, v7

    ushr-int/lit8 v9, v7, 0x8

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, p5, v3

    add-int/lit8 v9, v3, 0x1

    int-to-byte v7, v7

    aput-byte v7, p5, v9

    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_25d
    invoke-virtual {v7, v12}, Ljava/io/OutputStream;->write([B)V
    :try_end_260
    .catch Ljava/lang/Exception; {:try_start_25d .. :try_end_260} :catch_301

    ushr-int/lit8 v9, v8, 0x18

    int-to-byte v9, v9

    invoke-virtual {v7, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-int/lit8 v9, v8, 0x10

    int-to-byte v9, v9

    invoke-virtual {v7, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-int/lit8 v9, v8, 0x8

    int-to-byte v9, v9

    invoke-virtual {v7, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    int-to-byte v9, v8

    invoke-virtual {v7, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v9, v3, 0x17

    :goto_278
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v12

    if-ge v12, v9, :cond_283

    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_278

    :cond_283
    const/4 v12, 0x0

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    iput v12, v6, Lg3/n;->j:I

    const/4 v12, 0x0

    :goto_28b
    if-ge v12, v5, :cond_2e0

    int-to-short v13, v12

    move/from16 v23, v5

    ushr-int/lit8 v5, v13, 0x8

    int-to-byte v5, v5

    const/16 v24, 0x14

    aput-byte v5, v7, v24

    const/16 v5, 0x15

    int-to-byte v13, v13

    aput-byte v13, v7, v5

    add-int/lit8 v5, v23, -0x1

    if-ge v12, v5, :cond_2a2

    const/4 v5, 0x1

    goto :goto_2a3

    :cond_2a2
    const/4 v5, 0x0

    :goto_2a3
    const/16 v13, 0x17

    invoke-virtual {v6, v13, v5, v7}, Lg3/n;->a(IZ[B)V

    mul-int v5, v12, v18

    div-int/lit8 v5, v5, 0x8

    div-int v24, v21, v18

    not-int v13, v12

    const/16 v16, 0x1

    add-int/lit8 v24, v24, -0x1

    and-int v13, v13, v24

    mul-int v13, v13, v18

    aget-byte v5, p5, v5

    ushr-int/2addr v5, v13

    and-int v5, v5, v22

    const/4 v13, 0x0

    :goto_2bd
    if-ge v13, v5, :cond_2d4

    const/16 v24, 0x16

    move/from16 v25, v5

    int-to-byte v5, v13

    aput-byte v5, v7, v24

    const/4 v5, 0x0

    invoke-interface {v0, v7, v5, v9}, Lorg/bouncycastle/crypto/v;->update([BII)V

    const/16 v5, 0x17

    invoke-interface {v0, v7, v5}, Lorg/bouncycastle/crypto/v;->doFinal([BI)I

    add-int/lit8 v13, v13, 0x1

    move/from16 v5, v25

    goto :goto_2bd

    :cond_2d4
    const/16 v5, 0x17

    mul-int v13, v3, v12

    invoke-static {v7, v5, v15, v13, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v12, v12, 0x1

    move/from16 v5, v23

    goto :goto_28b

    :cond_2e0
    const/16 v16, 0x1

    new-instance v0, Lg3/g;

    invoke-direct {v0, v11, v14, v15}, Lg3/g;-><init>(Lg3/f;[B[B)V

    new-instance v3, Lg3/l;

    invoke-direct {v3, v8, v0, v2, v4}, Lg3/l;-><init>(ILg3/g;Lg3/m;[[B)V

    aput-object v3, p3, v10

    move/from16 v8, v16

    :goto_2f0
    add-int/lit8 v9, v20, 0x1

    move/from16 v6, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v0, v16

    move-object/from16 v5, v17

    move-object/from16 v7, v19

    const/4 v4, 0x0

    goto/16 :goto_94

    :catch_301
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catchall_30c
    move-exception v0

    goto :goto_319

    :catchall_30e
    move-exception v0

    :try_start_30f
    monitor-exit v2
    :try_end_310
    .catchall {:try_start_30f .. :try_end_310} :catchall_30e

    :try_start_310
    throw v0

    :cond_311
    new-instance v0, Lz2/b;

    const-string v1, "ots private key exhausted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_319
    monitor-exit v2
    :try_end_31a
    .catchall {:try_start_310 .. :try_end_31a} :catchall_30c

    throw v0

    :cond_31b
    move-object/from16 p2, v2

    move-object/from16 p3, v3

    if-eqz v8, :cond_33b

    monitor-enter p0

    :try_start_322
    invoke-static/range {p2 .. p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lg3/c;->x:Ljava/util/List;

    invoke-static/range {p3 .. p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lg3/c;->y:Ljava/util/List;

    monitor-exit p0

    return-void

    :catchall_338
    move-exception v0

    monitor-exit p0
    :try_end_33a
    .catchall {:try_start_322 .. :try_end_33a} :catchall_338

    throw v0

    :cond_33b
    return-void

    :catchall_33c
    move-exception v0

    :try_start_33d
    monitor-exit p0
    :try_end_33e
    .catchall {:try_start_33d .. :try_end_33e} :catchall_33c

    throw v0
.end method

.method public static a(Ljava/lang/Object;)Lg3/c;
    .registers 12

    instance-of v0, p0, Lg3/c;

    if-eqz v0, :cond_7

    check-cast p0, Lg3/c;

    return-object p0

    :cond_7
    instance-of v0, p0, Ljava/io/DataInputStream;

    if-eqz v0, :cond_58

    move-object v0, p0

    check-cast v0, Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    if-nez v1, :cond_50

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v6

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v8

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v10

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_30
    if-ge v1, v3, :cond_3c

    invoke-static {p0}, Lg3/j;->e(Ljava/lang/Object;)Lg3/j;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    :cond_3c
    :goto_3c
    add-int/lit8 v1, v3, -0x1

    if-ge v0, v1, :cond_4a

    invoke-static {p0}, Lg3/l;->a(Ljava/lang/Object;)Lg3/l;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    :cond_4a
    new-instance v2, Lg3/c;

    invoke-direct/range {v2 .. v10}, Lg3/c;-><init>(ILjava/util/ArrayList;Ljava/util/ArrayList;JJZ)V

    return-object v2

    :cond_50
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "unknown version for hss private key"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_58
    instance-of v0, p0, [B

    if-eqz v0, :cond_93

    const/4 v1, 0x0

    :try_start_5d
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v0, Ljava/io/ByteArrayInputStream;

    move-object v3, p0

    check-cast v3, [B

    invoke-direct {v0, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_6a
    .catchall {:try_start_5d .. :try_end_6a} :catchall_8b

    :try_start_6a
    invoke-static {v2}, Lg3/c;->a(Ljava/lang/Object;)Lg3/c;

    move-result-object p0
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6e} :catch_76
    .catchall {:try_start_6a .. :try_end_6e} :catchall_72

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    return-object p0

    :catchall_72
    move-exception v0

    move-object p0, v0

    move-object v1, v2

    goto :goto_8d

    :catch_76
    :try_start_76
    invoke-static {p0}, Lg3/j;->e(Ljava/lang/Object;)Lg3/j;

    move-result-object v4

    new-instance v3, Lg3/c;

    invoke-virtual {v4}, Lg3/j;->d()I

    move-result p0

    int-to-long v5, p0

    iget p0, v4, Lg3/j;->y:I

    int-to-long v7, p0

    invoke-direct/range {v3 .. v8}, Lg3/c;-><init>(Lg3/j;JJ)V
    :try_end_87
    .catchall {:try_start_76 .. :try_end_87} :catchall_72

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    return-object v3

    :catchall_8b
    move-exception v0

    move-object p0, v0

    :goto_8d
    if-eqz v1, :cond_92

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_92
    throw p0

    :cond_93
    instance-of v0, p0, Ljava/io/InputStream;

    if-eqz v0, :cond_a2

    check-cast p0, Ljava/io/InputStream;

    invoke-static {p0}, Lq4/k;->G0(Ljava/io/InputStream;)[B

    move-result-object p0

    invoke-static {p0}, Lg3/c;->a(Ljava/lang/Object;)Lg3/c;

    move-result-object p0

    return-object p0

    :cond_a2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cannot parse "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Lg3/c;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lg3/c;->a(Ljava/lang/Object;)Lg3/c;

    move-result-object p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 7

    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 v0, 0x0

    if-eqz p1, :cond_46

    const-class v1, Lg3/c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_10

    goto :goto_46

    :cond_10
    check-cast p1, Lg3/c;

    iget v1, p0, Lg3/c;->d:I

    iget v2, p1, Lg3/c;->d:I

    if-eq v1, v2, :cond_19

    return v0

    :cond_19
    iget-boolean v1, p0, Lg3/c;->q:Z

    iget-boolean v2, p1, Lg3/c;->q:Z

    if-eq v1, v2, :cond_20

    return v0

    :cond_20
    iget-wide v1, p0, Lg3/c;->z1:J

    iget-wide v3, p1, Lg3/c;->z1:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_29

    return v0

    :cond_29
    iget-wide v1, p0, Lg3/c;->A1:J

    iget-wide v3, p1, Lg3/c;->A1:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_32

    return v0

    :cond_32
    iget-object v1, p0, Lg3/c;->x:Ljava/util/List;

    iget-object v2, p1, Lg3/c;->x:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3d

    return v0

    :cond_3d
    iget-object p0, p0, Lg3/c;->y:Ljava/util/List;

    iget-object p1, p1, Lg3/c;->y:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_46
    :goto_46
    return v0
.end method

.method public final declared-synchronized getEncoded()[B
    .registers 7

    monitor-enter p0

    :try_start_1
    new-instance v0, Lg3/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg3/a;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lg3/a;->d(I)V

    iget v1, p0, Lg3/c;->d:I

    invoke-virtual {v0, v1}, Lg3/a;->d(I)V

    iget-wide v1, p0, Lg3/c;->A1:J

    const/16 v3, 0x20

    ushr-long v4, v1, v3

    long-to-int v4, v4

    invoke-virtual {v0, v4}, Lg3/a;->d(I)V

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lg3/a;->d(I)V

    iget-wide v1, p0, Lg3/c;->z1:J

    ushr-long v3, v1, v3

    long-to-int v3, v3

    invoke-virtual {v0, v3}, Lg3/a;->d(I)V

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lg3/a;->d(I)V

    iget-boolean v1, p0, Lg3/c;->q:Z

    iget-object v2, v0, Lg3/a;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v1, p0, Lg3/c;->x:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_37
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg3/j;

    invoke-virtual {v0, v2}, Lg3/a;->a(Lm4/c;)V

    goto :goto_37

    :catchall_47
    move-exception v0

    goto :goto_67

    :cond_49
    iget-object v1, p0, Lg3/c;->y:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg3/l;

    invoke-virtual {v0, v2}, Lg3/a;->a(Lm4/c;)V

    goto :goto_4f

    :cond_5f
    iget-object v0, v0, Lg3/a;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_65
    .catchall {:try_start_1 .. :try_end_65} :catchall_47

    monitor-exit p0

    return-object v0

    :goto_67
    :try_start_67
    monitor-exit p0
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_47

    throw v0
.end method

.method public final hashCode()I
    .registers 7

    iget v0, p0, Lg3/c;->d:I

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lg3/c;->q:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lg3/c;->x:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lg3/c;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lg3/c;->z1:J

    const/16 v3, 0x20

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lg3/c;->A1:J

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int p0, v1

    add-int/2addr v0, p0

    return v0
.end method
