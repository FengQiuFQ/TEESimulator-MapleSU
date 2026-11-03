.class public abstract Ls2/a;
.super Ljava/lang/Object;


# direct methods
.method public static a([I[I[I[II)V
    .registers 13

    array-length v0, p0

    const/16 v1, 0x10

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-static {p0, v0, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, p0

    ushr-int/lit8 v0, v0, 0x1

    mul-int/lit8 p4, p4, 0x2

    move v3, v2

    move v4, v3

    :goto_f
    if-lez p4, :cond_33

    array-length v5, p2

    add-int/lit8 v5, v5, -0x1

    :goto_14
    if-ltz v5, :cond_22

    aget v6, p1, v5

    add-int v7, v3, v5

    aget v7, p0, v7

    xor-int/2addr v6, v7

    aput v6, p2, v5

    add-int/lit8 v5, v5, -0x1

    goto :goto_14

    :cond_22
    const/16 v5, 0x8

    invoke-static {v5, p2, p1}, Lv0/d0;->f(I[I[I)V

    invoke-static {p1, v2, p3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v5, v0, v3

    sub-int v4, v5, v4

    add-int/lit8 v3, v3, 0x10

    add-int/lit8 p4, p4, -0x1

    goto :goto_f

    :cond_33
    return-void
.end method

.method public static b([[I)V
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    array-length v2, p0

    if-ge v1, v2, :cond_f

    aget-object v2, p0, v1

    if-eqz v2, :cond_c

    invoke-static {v2, v0}, Ljava/util/Arrays;->fill([II)V

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_f
    return-void
.end method

.method public static c([IIIII)V
    .registers 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p4

    invoke-static {v2}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v4

    ushr-int v5, v2, p3

    const/4 v6, 0x1

    shl-int v6, v6, p3

    add-int/lit8 v7, v5, -0x1

    sub-int v4, v4, p3

    mul-int/lit8 v8, v3, 0x20

    const/16 v9, 0x10

    new-array v10, v9, [I

    new-array v9, v9, [I

    new-array v11, v8, [I

    new-array v12, v8, [I

    new-array v13, v6, [[I

    const/4 v14, 0x0

    :try_start_24
    invoke-static {v0, v1, v12, v14, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v15, v14

    :goto_28
    if-ge v15, v6, :cond_56

    mul-int v14, v5, v8

    new-array v14, v14, [I

    aput-object v14, v13, v15

    move/from16 v16, v4

    move/from16 v17, v6

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_36
    if-ge v4, v5, :cond_4e

    move/from16 v18, v4

    const/4 v4, 0x0

    invoke-static {v12, v4, v14, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v6, v8

    invoke-static {v12, v10, v9, v11, v3}, Ls2/a;->a([I[I[I[II)V

    invoke-static {v11, v4, v14, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v6, v8

    invoke-static {v11, v10, v9, v12, v3}, Ls2/a;->a([I[I[I[II)V

    add-int/lit8 v4, v18, 0x2

    goto :goto_36

    :catchall_4c
    move-exception v0

    goto :goto_8f

    :cond_4e
    add-int/lit8 v15, v15, 0x1

    move/from16 v4, v16

    move/from16 v6, v17

    const/4 v14, 0x0

    goto :goto_28

    :cond_56
    move/from16 v16, v4

    add-int/lit8 v4, v2, -0x1

    const/4 v5, 0x0

    :goto_5b
    if-ge v5, v2, :cond_80

    add-int/lit8 v6, v8, -0x10

    aget v6, v12, v6

    and-int/2addr v6, v4

    ushr-int v14, v6, v16

    aget-object v14, v13, v14

    and-int/2addr v6, v7

    mul-int/2addr v6, v8

    const/4 v15, 0x0

    invoke-static {v14, v6, v11, v15, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v6, v8, -0x1

    :goto_6e
    if-ltz v6, :cond_7a

    aget v14, v11, v6

    aget v15, v12, v6

    xor-int/2addr v14, v15

    aput v14, v11, v6

    add-int/lit8 v6, v6, -0x1

    goto :goto_6e

    :cond_7a
    invoke-static {v11, v10, v9, v12, v3}, Ls2/a;->a([I[I[I[II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_5b

    :cond_80
    const/4 v15, 0x0

    invoke-static {v12, v15, v0, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_84
    .catchall {:try_start_24 .. :try_end_84} :catchall_4c

    invoke-static {v13}, Ls2/a;->b([[I)V

    filled-new-array {v12, v10, v9, v11}, [[I

    move-result-object v0

    invoke-static {v0}, Ls2/a;->b([[I)V

    return-void

    :goto_8f
    invoke-static {v13}, Ls2/a;->b([[I)V

    filled-new-array {v12, v10, v9, v11}, [[I

    move-result-object v1

    invoke-static {v1}, Ls2/a;->b([[I)V

    throw v0
.end method

.method public static final d([Landroid/hardware/security/keymint/KeyParameter;I)Ljava/util/ArrayList;
    .registers 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v3, v1, :cond_16

    aget-object v4, p0, v3

    iget v5, v4, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    if-ne v5, p1, :cond_13

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_16
    new-instance p0, Ljava/util/ArrayList;

    invoke-static {v0}, Lb/k;->V0(Ljava/lang/Iterable;)I

    move-result p1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_23
    if-ge v2, p1, :cond_3b

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    check-cast v1, Landroid/hardware/security/keymint/KeyParameter;

    iget-object v1, v1, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v1}, Landroid/hardware/security/keymint/KeyParameterValue;->getDigest()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_3b
    return-object p0
.end method

.method public static final e([Landroid/hardware/security/keymint/KeyParameter;I)[B
    .registers 7

    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    const/4 v2, 0x0

    if-ge v1, v0, :cond_f

    aget-object v3, p0, v1

    iget v4, v3, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    if-ne v4, p1, :cond_c

    goto :goto_10

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_f
    move-object v3, v2

    :goto_10
    if-eqz v3, :cond_1b

    iget-object p0, v3, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    if-eqz p0, :cond_1b

    invoke-virtual {p0}, Landroid/hardware/security/keymint/KeyParameterValue;->getBlob()[B

    move-result-object p0

    return-object p0

    :cond_1b
    return-object v2
.end method

.method public static final f([Landroid/hardware/security/keymint/KeyParameter;I)Ljava/lang/Boolean;
    .registers 5

    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_10

    aget-object v2, p0, v1

    iget v2, v2, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    if-ne v2, p1, :cond_d

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_10
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final g([Landroid/hardware/security/keymint/KeyParameter;I)Ljava/util/Date;
    .registers 7

    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    const/4 v2, 0x0

    if-ge v1, v0, :cond_f

    aget-object v3, p0, v1

    iget v4, v3, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    if-ne v4, p1, :cond_c

    goto :goto_10

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_f
    move-object v3, v2

    :goto_10
    if-eqz v3, :cond_20

    iget-object p0, v3, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    if-eqz p0, :cond_20

    invoke-virtual {p0}, Landroid/hardware/security/keymint/KeyParameterValue;->getDateTime()J

    move-result-wide p0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object v0

    :cond_20
    return-object v2
.end method

.method public static h(I[J[J)V
    .registers 6

    const/4 v0, 0x0

    aget-wide v0, p1, v0

    aput-wide v0, p2, p0

    add-int/lit8 v0, p0, 0x1

    const/4 v1, 0x1

    aget-wide v1, p1, v1

    aput-wide v1, p2, v0

    add-int/lit8 v0, p0, 0x2

    const/4 v1, 0x2

    aget-wide v1, p1, v1

    aput-wide v1, p2, v0

    add-int/lit8 v0, p0, 0x3

    const/4 v1, 0x3

    aget-wide v1, p1, v1

    aput-wide v1, p2, v0

    add-int/lit8 v0, p0, 0x4

    const/4 v1, 0x4

    aget-wide v1, p1, v1

    aput-wide v1, p2, v0

    add-int/lit8 v0, p0, 0x5

    const/4 v1, 0x5

    aget-wide v1, p1, v1

    aput-wide v1, p2, v0

    add-int/lit8 v0, p0, 0x6

    const/4 v1, 0x6

    aget-wide v1, p1, v1

    aput-wide v1, p2, v0

    add-int/lit8 v0, p0, 0x7

    const/4 v1, 0x7

    aget-wide v1, p1, v1

    aput-wide v1, p2, v0

    const/16 v0, 0x8

    add-int/2addr p0, v0

    aget-wide v0, p1, v0

    aput-wide v0, p2, p0

    return-void
.end method

.method public static i(Le1/b;Lm/y;)Ld0/t;
    .registers 48

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v0, Ls3/b;

    const/4 v3, 0x0

    if-eqz v2, :cond_2e

    check-cast v0, Ls3/b;

    new-instance v1, Ll0/b;

    sget-object v2, Ly2/e;->a:Lm/q;

    new-instance v4, Ly2/f;

    iget-object v5, v0, Ls3/a;->d:Ljava/lang/String;

    invoke-static {v5}, Lu3/d;->d(Ljava/lang/String;)Ll0/b;

    move-result-object v5

    invoke-direct {v4, v5}, Ly2/f;-><init>(Ll0/b;)V

    invoke-direct {v1, v2, v4}, Ll0/b;-><init>(Lm/q;Lm/f;)V

    new-instance v2, Ld0/t;

    new-instance v4, Lm/x0;

    iget-object v0, v0, Ls3/b;->q:[B

    invoke-static {v0}, Lm4/d;->e([B)[B

    move-result-object v0

    invoke-direct {v4, v0}, Lm/r;-><init>([B)V

    invoke-direct {v2, v1, v4, v3, v3}, Ld0/t;-><init>(Ll0/b;Lm/n;Lm/y;[B)V

    return-object v2

    :cond_2e
    instance-of v2, v0, Lk3/a;

    const/16 v4, 0x8

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_67

    check-cast v0, Lk3/a;

    new-instance v1, Ll0/b;

    sget-object v2, Ly2/e;->b:Lm/q;

    invoke-direct {v1, v2}, Ll0/b;-><init>(Lm/q;)V

    iget-object v0, v0, Lk3/a;->d:[S

    invoke-static {v0}, Lm4/d;->i([S)[S

    move-result-object v0

    array-length v2, v0

    mul-int/2addr v2, v5

    new-array v2, v2, [B

    :goto_4a
    array-length v5, v0

    if-eq v7, v5, :cond_5c

    aget-short v5, v0, v7

    mul-int/lit8 v8, v7, 0x2

    int-to-byte v9, v5

    aput-byte v9, v2, v8

    add-int/2addr v8, v6

    ushr-int/2addr v5, v4

    int-to-byte v5, v5

    aput-byte v5, v2, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_4a

    :cond_5c
    new-instance v0, Ld0/t;

    new-instance v4, Lm/x0;

    invoke-direct {v4, v2}, Lm/r;-><init>([B)V

    invoke-direct {v0, v1, v4, v3, v3}, Ld0/t;-><init>(Ll0/b;Lm/n;Lm/y;[B)V

    return-object v0

    :cond_67
    instance-of v2, v0, Lg3/j;

    if-eqz v2, :cond_d5

    check-cast v0, Lg3/j;

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    int-to-byte v3, v7

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    int-to-byte v4, v7

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    int-to-byte v5, v7

    invoke-virtual {v2, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    int-to-byte v6, v6

    invoke-virtual {v2, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :try_start_82
    invoke-virtual {v0}, Lg3/j;->getEncoded()[B

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/OutputStream;->write([B)V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_89} :catch_ca

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {v7, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v7, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v7, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v7, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v0}, Lg3/j;->f()Lg3/k;

    move-result-object v0

    :try_start_a2
    invoke-virtual {v0}, Lg3/k;->b()[B

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_a9} :catch_bf

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    new-instance v3, Ll0/b;

    sget-object v4, Ld0/r;->f0:Lm/q;

    invoke-direct {v3, v4}, Ll0/b;-><init>(Lm/q;)V

    new-instance v4, Ld0/t;

    new-instance v5, Lm/x0;

    invoke-direct {v5, v2}, Lm/r;-><init>([B)V

    invoke-direct {v4, v3, v5, v1, v0}, Ld0/t;-><init>(Ll0/b;Lm/n;Lm/y;[B)V

    return-object v4

    :catch_bf
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_ca
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_d5
    instance-of v2, v0, Lg3/c;

    if-eqz v2, :cond_16f

    move-object v2, v0

    check-cast v2, Lg3/c;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget v3, v2, Lg3/c;->d:I

    ushr-int/lit8 v4, v3, 0x18

    int-to-byte v4, v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-int/lit8 v4, v3, 0x10

    int-to-byte v4, v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-int/lit8 v4, v3, 0x8

    int-to-byte v4, v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    int-to-byte v3, v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :try_start_f9
    invoke-virtual {v2}, Lg3/c;->getEncoded()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_100
    .catch Ljava/lang/Exception; {:try_start_f9 .. :try_end_100} :catch_164

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget v4, v2, Lg3/c;->d:I

    ushr-int/lit8 v5, v4, 0x18

    int-to-byte v5, v5

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-int/lit8 v5, v4, 0x10

    int-to-byte v5, v5

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-int/lit8 v5, v4, 0x8

    int-to-byte v5, v5

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    int-to-byte v4, v4

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    monitor-enter v2

    :try_start_122
    iget-object v4, v2, Lg3/c;->x:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg3/j;

    invoke-virtual {v4}, Lg3/j;->f()Lg3/k;

    move-result-object v4
    :try_end_12e
    .catchall {:try_start_122 .. :try_end_12e} :catchall_161

    if-eqz v4, :cond_159

    monitor-exit v2

    :try_start_131
    invoke-virtual {v4}, Lg3/k;->b()[B

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_138
    .catch Ljava/lang/Exception; {:try_start_131 .. :try_end_138} :catch_14e

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    new-instance v3, Ll0/b;

    sget-object v4, Ld0/r;->f0:Lm/q;

    invoke-direct {v3, v4}, Ll0/b;-><init>(Lm/q;)V

    new-instance v4, Ld0/t;

    new-instance v5, Lm/x0;

    invoke-direct {v5, v0}, Lm/r;-><init>([B)V

    invoke-direct {v4, v3, v5, v1, v2}, Ld0/t;-><init>(Ll0/b;Lm/n;Lm/y;[B)V

    return-object v4

    :catch_14e
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_159
    :try_start_159
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "lmsPublicKey"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_161
    move-exception v0

    monitor-exit v2
    :try_end_163
    .catchall {:try_start_159 .. :try_end_163} :catchall_161

    throw v0

    :catch_164
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_16f
    instance-of v2, v0, Lt3/b;

    if-eqz v2, :cond_19f

    check-cast v0, Lt3/b;

    new-instance v2, Ll0/b;

    iget-object v3, v0, La3/a;->d:Ljava/lang/Object;

    check-cast v3, Lt3/a;

    sget-object v4, Lu3/d;->o:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm/q;

    invoke-direct {v2, v3}, Ll0/b;-><init>(Lm/q;)V

    new-instance v3, Ld0/t;

    new-instance v4, Lm/x0;

    invoke-virtual {v0}, Lt3/b;->getEncoded()[B

    move-result-object v5

    invoke-direct {v4, v5}, Lm/r;-><init>([B)V

    iget-object v0, v0, Lt3/b;->x:Ln4/b;

    iget-object v5, v0, Ln4/b;->b:[B

    iget-object v0, v0, Ln4/b;->c:[B

    invoke-static {v5, v0}, Lm4/d;->j([B[B)[B

    move-result-object v0

    invoke-direct {v3, v2, v4, v1, v0}, Ld0/t;-><init>(Ll0/b;Lm/n;Lm/y;[B)V

    return-object v3

    :cond_19f
    instance-of v2, v0, Lq3/m;

    if-eqz v2, :cond_1c0

    check-cast v0, Lq3/m;

    new-instance v2, Ll0/b;

    iget-object v4, v0, La3/a;->d:Ljava/lang/Object;

    check-cast v4, Lq3/l;

    sget-object v5, Lu3/d;->K:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lm/q;

    invoke-direct {v2, v4}, Ll0/b;-><init>(Lm/q;)V

    new-instance v4, Ld0/t;

    invoke-virtual {v0}, Lq3/m;->getEncoded()[B

    move-result-object v0

    invoke-direct {v4, v2, v0, v1, v3}, Ld0/t;-><init>(Ll0/b;[BLm/y;[B)V

    return-object v4

    :cond_1c0
    instance-of v2, v0, Ln3/b;

    if-eqz v2, :cond_1e8

    check-cast v0, Ln3/b;

    iget-object v2, v0, Ln3/b;->q:[B

    invoke-static {v2}, Lm4/d;->e([B)[B

    move-result-object v2

    new-instance v4, Ll0/b;

    iget-object v0, v0, La3/a;->d:Ljava/lang/Object;

    check-cast v0, Ln3/a;

    sget-object v5, Lu3/d;->g:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/q;

    invoke-direct {v4, v0}, Ll0/b;-><init>(Lm/q;)V

    new-instance v0, Ld0/t;

    new-instance v5, Lm/x0;

    invoke-direct {v5, v2}, Lm/r;-><init>([B)V

    invoke-direct {v0, v4, v5, v1, v3}, Ld0/t;-><init>(Ll0/b;Lm/n;Lm/y;[B)V

    return-object v0

    :cond_1e8
    instance-of v2, v0, Lb3/c;

    if-eqz v2, :cond_85d

    check-cast v0, Lb3/c;

    new-instance v2, Ll0/b;

    iget-object v11, v0, La3/a;->d:Ljava/lang/Object;

    check-cast v11, Lb3/b;

    sget-object v12, Lu3/d;->m:Ljava/util/HashMap;

    invoke-virtual {v12, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lm/q;

    invoke-direct {v2, v11}, Ll0/b;-><init>(Lm/q;)V

    new-instance v11, Ly2/b;

    iget-object v12, v0, La3/a;->d:Ljava/lang/Object;

    check-cast v12, Lb3/b;

    iget-object v12, v12, Lb3/b;->q:Lb3/a;

    iget-object v13, v0, Lb3/c;->q:[B

    iget v14, v12, Lb3/a;->c:I

    iget v15, v12, Lb3/a;->a:I

    const-wide/16 v16, 0x1

    iget v8, v12, Lb3/a;->e:I

    iget-boolean v9, v12, Lb3/a;->i:Z

    if-eqz v9, :cond_224

    div-int/lit8 v18, v15, 0x8

    add-int/lit8 v19, v8, -0x1

    div-int/lit8 v19, v19, 0x8

    sub-int v18, v18, v19

    mul-int v18, v18, v8

    move/from16 v10, v18

    const/16 v18, 0x4

    goto :goto_22a

    :cond_224
    const/16 v18, 0x4

    iget v10, v12, Lb3/a;->f:I

    mul-int/2addr v10, v8

    div-int/2addr v10, v4

    :goto_22a
    new-array v10, v10, [B

    shl-int v3, v6, v14

    move/from16 v20, v6

    new-array v6, v3, [S

    move/from16 v21, v4

    new-array v4, v3, [I

    div-int/lit8 v5, v15, 0x8

    mul-int/lit8 v23, v3, 0x4

    add-int v7, v23, v5

    move-object/from16 p0, v4

    new-array v4, v7, [B

    add-int/lit8 v25, v7, -0x20

    move-object/from16 v26, v6

    iget v6, v12, Lb3/a;->d:I

    sub-int v25, v25, v6

    sub-int v25, v25, v23

    new-instance v6, Ls0/g0;

    move/from16 v23, v9

    const/16 v9, 0x100

    invoke-direct {v6, v9}, Ls0/g0;-><init>(I)V

    const/16 v9, 0x40

    invoke-virtual {v6, v9}, Ls0/n;->update(B)V

    const/16 v9, 0x20

    const/4 v1, 0x0

    invoke-virtual {v6, v13, v1, v9}, Ls0/n;->f([BII)V

    invoke-virtual {v6, v4, v1, v7}, Ls0/g0;->b([BII)I

    const/4 v1, 0x0

    :goto_262
    if-ge v1, v3, :cond_271

    mul-int/lit8 v6, v1, 0x4

    add-int v6, v6, v25

    invoke-static {v6, v4}, Lm4/d;->z(I[B)I

    move-result v6

    aput v6, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_262

    :cond_271
    iget v1, v12, Lb3/a;->g:I

    iget-object v4, v12, Lb3/a;->h:Lq4/k;

    iget v6, v12, Lb3/a;->b:I

    add-int/lit8 v7, v6, 0x1

    new-array v7, v7, [S

    aput-short v20, v7, v6

    const/4 v9, 0x0

    :goto_27e
    if-ge v9, v6, :cond_2a0

    mul-int/lit8 v28, v9, 0x2

    add-int/lit8 v29, v28, 0x28

    move-object/from16 v30, v7

    aget-byte v7, v13, v29

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v28, v28, 0x29

    move/from16 v29, v7

    aget-byte v7, v13, v28

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int v7, v29, v7

    int-to-short v7, v7

    and-int/2addr v7, v1

    int-to-short v7, v7

    aput-short v7, v30, v9

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v7, v30

    goto :goto_27e

    :cond_2a0
    move-object/from16 v30, v7

    new-array v7, v3, [J

    const/4 v9, 0x0

    :goto_2a5
    if-ge v9, v3, :cond_2cd

    const/16 v28, 0x1f

    aget v13, p0, v9

    move-object/from16 v31, v10

    move-object/from16 v29, v11

    int-to-long v10, v13

    aput-wide v10, v7, v9

    shl-long v10, v10, v28

    aput-wide v10, v7, v9

    move-wide/from16 v32, v10

    int-to-long v10, v9

    or-long v10, v32, v10

    aput-wide v10, v7, v9

    const-wide v32, 0x7fffffffffffffffL

    and-long v10, v10, v32

    aput-wide v10, v7, v9

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v11, v29

    move-object/from16 v10, v31

    goto :goto_2a5

    :cond_2cd
    move-object/from16 v31, v10

    move-object/from16 v29, v11

    const/16 v28, 0x1f

    const/4 v10, 0x2

    if-ge v3, v10, :cond_2dc

    :cond_2d6
    move-object/from16 v34, v7

    const/16 p0, 0x3f

    goto/16 :goto_370

    :cond_2dc
    move/from16 v10, v20

    :goto_2de
    sub-int v11, v3, v10

    if-ge v10, v11, :cond_2e4

    add-int/2addr v10, v10

    goto :goto_2de

    :cond_2e4
    move v11, v10

    :goto_2e5
    if-lez v11, :cond_2d6

    const/16 p0, 0x3f

    const/4 v13, 0x0

    :goto_2ea
    sub-int v9, v3, v11

    if-ge v13, v9, :cond_317

    and-int v9, v13, v11

    if-nez v9, :cond_310

    add-int v9, v13, v11

    aget-wide v32, v7, v9

    aget-wide v34, v7, v13

    sub-long v36, v32, v34

    move/from16 v39, v9

    move/from16 v38, v10

    ushr-long v9, v36, p0

    neg-long v9, v9

    xor-long v32, v34, v32

    and-long v9, v9, v32

    xor-long v32, v34, v9

    aput-wide v32, v7, v13

    aget-wide v32, v7, v39

    xor-long v9, v32, v9

    aput-wide v9, v7, v39

    goto :goto_312

    :cond_310
    move/from16 v38, v10

    :goto_312
    add-int/lit8 v13, v13, 0x1

    move/from16 v10, v38

    goto :goto_2ea

    :cond_317
    move/from16 v38, v10

    const/4 v9, 0x0

    :goto_31a
    if-le v10, v11, :cond_368

    :goto_31c
    sub-int v13, v3, v10

    if-ge v9, v13, :cond_35f

    and-int v13, v9, v11

    if-nez v13, :cond_352

    add-int v13, v9, v11

    aget-wide v32, v7, v13

    move-object/from16 v34, v7

    move v7, v10

    :goto_32b
    if-le v7, v11, :cond_34b

    add-int v35, v9, v7

    aget-wide v36, v34, v35

    sub-long v39, v36, v32

    move/from16 v42, v9

    move/from16 v41, v10

    ushr-long v9, v39, p0

    neg-long v9, v9

    xor-long v39, v32, v36

    and-long v9, v9, v39

    xor-long v32, v32, v9

    xor-long v9, v36, v9

    aput-wide v9, v34, v35

    ushr-int/lit8 v7, v7, 0x1

    move/from16 v10, v41

    move/from16 v9, v42

    goto :goto_32b

    :cond_34b
    move/from16 v42, v9

    move/from16 v41, v10

    aput-wide v32, v34, v13

    goto :goto_358

    :cond_352
    move-object/from16 v34, v7

    move/from16 v42, v9

    move/from16 v41, v10

    :goto_358
    add-int/lit8 v9, v42, 0x1

    move-object/from16 v7, v34

    move/from16 v10, v41

    goto :goto_31c

    :cond_35f
    move-object/from16 v34, v7

    move/from16 v42, v9

    move/from16 v41, v10

    ushr-int/lit8 v10, v41, 0x1

    goto :goto_31a

    :cond_368
    move-object/from16 v34, v7

    ushr-int/lit8 v11, v11, 0x1

    move/from16 v10, v38

    goto/16 :goto_2e5

    :goto_370
    move/from16 v7, v20

    :goto_372
    if-ge v7, v3, :cond_389

    add-int/lit8 v9, v7, -0x1

    aget-wide v9, v34, v9

    shr-long v9, v9, v28

    aget-wide v32, v34, v7

    shr-long v32, v32, v28

    cmp-long v9, v9, v32

    if-nez v9, :cond_386

    :goto_382
    move-object/from16 v3, v31

    goto/16 :goto_794

    :cond_386
    add-int/lit8 v7, v7, 0x1

    goto :goto_372

    :cond_389
    new-array v7, v15, [S

    const/4 v9, 0x0

    :goto_38c
    if-ge v9, v3, :cond_39d

    aget-wide v10, v34, v9

    move v13, v9

    move-wide/from16 v32, v10

    int-to-long v9, v1

    and-long v9, v32, v9

    long-to-int v9, v9

    int-to-short v9, v9

    aput-short v9, v26, v13

    add-int/lit8 v9, v13, 0x1

    goto :goto_38c

    :cond_39d
    const/4 v1, 0x0

    :goto_39e
    if-ge v1, v15, :cond_3e4

    aget-short v3, v26, v1

    and-int/lit16 v9, v3, 0xff

    shl-int/lit8 v9, v9, 0x8

    const v10, 0xff00

    and-int/2addr v3, v10

    shr-int/lit8 v3, v3, 0x8

    or-int/2addr v3, v9

    int-to-short v3, v3

    and-int/lit16 v9, v3, 0xf0f

    shl-int/lit8 v9, v9, 0x4

    const v10, 0xf0f0

    and-int/2addr v3, v10

    shr-int/lit8 v3, v3, 0x4

    or-int/2addr v3, v9

    int-to-short v3, v3

    and-int/lit16 v9, v3, 0x3333

    const/16 v22, 0x2

    shl-int/lit8 v9, v9, 0x2

    const v10, 0xcccc

    and-int/2addr v3, v10

    shr-int/lit8 v3, v3, 0x2

    or-int/2addr v3, v9

    int-to-short v3, v3

    and-int/lit16 v9, v3, 0x5555

    shl-int/lit8 v9, v9, 0x1

    const v10, 0xaaaa

    and-int/2addr v3, v10

    shr-int/lit8 v3, v3, 0x1

    or-int/2addr v3, v9

    int-to-short v3, v3

    const/16 v9, 0xc

    if-ne v14, v9, :cond_3dc

    shr-int/lit8 v3, v3, 0x4

    :goto_3da
    int-to-short v3, v3

    goto :goto_3df

    :cond_3dc
    shr-int/lit8 v3, v3, 0x3

    goto :goto_3da

    :goto_3df
    aput-short v3, v7, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_39e

    :cond_3e4
    new-array v1, v15, [S

    const/4 v3, 0x0

    :goto_3e7
    if-ge v3, v15, :cond_401

    aget-short v9, v7, v3

    aget-short v10, v30, v6

    add-int/lit8 v11, v6, -0x1

    :goto_3ef
    if-ltz v11, :cond_3fc

    invoke-virtual {v4, v10, v9}, Lq4/k;->j0(SS)S

    move-result v10

    aget-short v13, v30, v11

    xor-int/2addr v10, v13

    int-to-short v10, v10

    add-int/lit8 v11, v11, -0x1

    goto :goto_3ef

    :cond_3fc
    aput-short v10, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3e7

    :cond_401
    const/4 v3, 0x0

    :goto_402
    if-ge v3, v15, :cond_40f

    aget-short v9, v1, v3

    invoke-virtual {v4, v9}, Lq4/k;->i0(S)S

    move-result v9

    aput-short v9, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_402

    :cond_40f
    const/4 v10, 0x2

    new-array v3, v10, [I

    aput v5, v3, v20

    const/16 v24, 0x0

    aput v8, v3, v24

    sget-object v9, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[B

    move/from16 v9, v24

    :goto_422
    if-ge v9, v8, :cond_436

    move/from16 v10, v24

    :goto_426
    if-ge v10, v5, :cond_431

    aget-object v11, v3, v9

    aput-byte v24, v11, v10

    add-int/lit8 v10, v10, 0x1

    const/16 v24, 0x0

    goto :goto_426

    :cond_431
    add-int/lit8 v9, v9, 0x1

    const/16 v24, 0x0

    goto :goto_422

    :cond_436
    const/4 v9, 0x0

    :goto_437
    if-ge v9, v6, :cond_4cb

    const/4 v10, 0x0

    :goto_43a
    if-ge v10, v15, :cond_4b7

    const/4 v11, 0x0

    :goto_43d
    if-ge v11, v14, :cond_4b4

    add-int/lit8 v13, v10, 0x7

    aget-short v13, v1, v13

    ushr-int/2addr v13, v11

    and-int/lit8 v13, v13, 0x1

    int-to-byte v13, v13

    shl-int/lit8 v13, v13, 0x1

    int-to-byte v13, v13

    add-int/lit8 v18, v10, 0x6

    aget-short v18, v1, v18

    ushr-int v18, v18, v11

    and-int/lit8 v18, v18, 0x1

    or-int v13, v13, v18

    int-to-byte v13, v13

    shl-int/lit8 v13, v13, 0x1

    int-to-byte v13, v13

    add-int/lit8 v18, v10, 0x5

    aget-short v18, v1, v18

    ushr-int v18, v18, v11

    and-int/lit8 v18, v18, 0x1

    or-int v13, v13, v18

    int-to-byte v13, v13

    shl-int/lit8 v13, v13, 0x1

    int-to-byte v13, v13

    add-int/lit8 v18, v10, 0x4

    aget-short v18, v1, v18

    ushr-int v18, v18, v11

    and-int/lit8 v18, v18, 0x1

    or-int v13, v13, v18

    int-to-byte v13, v13

    shl-int/lit8 v13, v13, 0x1

    int-to-byte v13, v13

    add-int/lit8 v18, v10, 0x3

    aget-short v18, v1, v18

    ushr-int v18, v18, v11

    and-int/lit8 v18, v18, 0x1

    or-int v13, v13, v18

    int-to-byte v13, v13

    shl-int/lit8 v13, v13, 0x1

    int-to-byte v13, v13

    add-int/lit8 v18, v10, 0x2

    aget-short v18, v1, v18

    ushr-int v18, v18, v11

    and-int/lit8 v18, v18, 0x1

    or-int v13, v13, v18

    int-to-byte v13, v13

    shl-int/lit8 v13, v13, 0x1

    int-to-byte v13, v13

    add-int/lit8 v18, v10, 0x1

    aget-short v18, v1, v18

    ushr-int v18, v18, v11

    and-int/lit8 v18, v18, 0x1

    or-int v13, v13, v18

    int-to-byte v13, v13

    shl-int/lit8 v13, v13, 0x1

    int-to-byte v13, v13

    aget-short v18, v1, v10

    ushr-int v18, v18, v11

    and-int/lit8 v18, v18, 0x1

    or-int v13, v13, v18

    int-to-byte v13, v13

    mul-int v18, v9, v14

    add-int v18, v18, v11

    aget-object v18, v3, v18

    div-int/lit8 v28, v10, 0x8

    aput-byte v13, v18, v28

    add-int/lit8 v11, v11, 0x1

    goto :goto_43d

    :cond_4b4
    add-int/lit8 v10, v10, 0x8

    goto :goto_43a

    :cond_4b7
    const/4 v10, 0x0

    :goto_4b8
    if-ge v10, v15, :cond_4c7

    aget-short v11, v1, v10

    aget-short v13, v7, v10

    invoke-virtual {v4, v11, v13}, Lq4/k;->j0(SS)S

    move-result v11

    aput-short v11, v1, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_4b8

    :cond_4c7
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_437

    :cond_4cb
    const/4 v1, 0x0

    :goto_4cc
    if-ge v1, v8, :cond_779

    ushr-int/lit8 v9, v1, 0x3

    and-int/lit8 v6, v1, 0x7

    iget-boolean v7, v12, Lb3/a;->j:Z

    if-eqz v7, :cond_700

    add-int/lit8 v7, v8, -0x20

    if-ne v1, v7, :cond_700

    const/16 v10, 0x40

    new-array v11, v10, [J

    const/16 v10, 0x20

    new-array v13, v10, [J

    const/16 v14, 0x9

    const/16 v18, 0x7

    new-array v4, v14, [B

    div-int/lit8 v14, v7, 0x8

    rem-int/lit8 v30, v7, 0x8

    if-eqz v23, :cond_532

    move-object/from16 v32, v3

    const/4 v3, 0x0

    :goto_4f1
    if-ge v3, v10, :cond_546

    move/from16 v33, v3

    const/4 v10, 0x0

    :goto_4f6
    const/16 v3, 0x9

    if-ge v10, v3, :cond_507

    add-int v3, v7, v33

    aget-object v3, v32, v3

    add-int v34, v14, v10

    aget-byte v3, v3, v34

    aput-byte v3, v4, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_4f6

    :cond_507
    move/from16 v10, v21

    const/4 v3, 0x0

    :goto_50a
    if-ge v3, v10, :cond_524

    aget-byte v10, v4, v3

    and-int/lit16 v10, v10, 0xff

    shr-int v10, v10, v30

    add-int/lit8 v34, v3, 0x1

    aget-byte v35, v4, v34

    rsub-int/lit8 v36, v30, 0x8

    shl-int v35, v35, v36

    or-int v10, v10, v35

    int-to-byte v10, v10

    aput-byte v10, v4, v3

    move/from16 v3, v34

    const/16 v10, 0x8

    goto :goto_50a

    :cond_524
    const/4 v3, 0x0

    invoke-static {v3, v4}, Lm4/d;->C(I[B)J

    move-result-wide v34

    aput-wide v34, v11, v33

    add-int/lit8 v3, v33, 0x1

    const/16 v10, 0x20

    const/16 v21, 0x8

    goto :goto_4f1

    :cond_532
    move-object/from16 v32, v3

    const/4 v3, 0x0

    :goto_535
    if-ge v3, v10, :cond_546

    add-int v25, v7, v3

    aget-object v10, v32, v25

    invoke-static {v14, v10}, Lm4/d;->C(I[B)J

    move-result-wide v34

    aput-wide v34, v11, v3

    add-int/lit8 v3, v3, 0x1

    const/16 v10, 0x20

    goto :goto_535

    :cond_546
    const/4 v3, 0x0

    const/16 v10, 0x20

    :goto_549
    if-ge v3, v10, :cond_5f1

    aget-wide v33, v11, v3

    add-int/lit8 v35, v3, 0x1

    move/from16 v36, v6

    move/from16 v37, v7

    move-wide/from16 v6, v33

    move/from16 v33, v3

    move/from16 v3, v35

    :goto_559
    if-ge v3, v10, :cond_564

    aget-wide v38, v11, v3

    or-long v6, v6, v38

    add-int/lit8 v3, v3, 0x1

    const/16 v10, 0x20

    goto :goto_559

    :cond_564
    const-wide/16 v38, 0x0

    cmp-long v3, v6, v38

    if-nez v3, :cond_56c

    goto/16 :goto_382

    :cond_56c
    not-long v6, v6

    const-wide v40, 0x101010101010101L

    const/4 v3, 0x0

    :goto_573
    const/16 v10, 0x8

    if-ge v3, v10, :cond_580

    ushr-long v42, v6, v3

    and-long v40, v40, v42

    add-long v38, v38, v40

    add-int/lit8 v3, v3, 0x1

    goto :goto_573

    :cond_580
    const-wide v6, 0x808080808080808L

    and-long v6, v38, v6

    ushr-long v40, v6, v20

    or-long v6, v6, v40

    const/16 v22, 0x2

    ushr-long v40, v6, v22

    or-long v6, v6, v40

    const/16 v10, 0x8

    ushr-long v40, v38, v10

    and-long v42, v40, v6

    add-long v38, v38, v42

    move-wide/from16 v44, v38

    move-wide/from16 v38, v6

    move-wide/from16 v6, v44

    const/4 v3, 0x2

    :goto_5a0
    if-ge v3, v10, :cond_5b1

    ushr-long v42, v38, v10

    and-long v38, v38, v42

    ushr-long v40, v40, v10

    and-long v42, v40, v38

    add-long v6, v6, v42

    add-int/lit8 v3, v3, 0x1

    const/16 v10, 0x8

    goto :goto_5a0

    :cond_5b1
    long-to-int v3, v6

    and-int/lit16 v3, v3, 0xff

    int-to-long v6, v3

    aput-wide v6, v13, v33

    move/from16 v6, v35

    :goto_5b9
    const/16 v10, 0x20

    if-ge v6, v10, :cond_5d0

    aget-wide v38, v11, v33

    shr-long v40, v38, v3

    and-long v40, v40, v16

    sub-long v40, v40, v16

    aget-wide v42, v11, v6

    and-long v40, v42, v40

    xor-long v38, v38, v40

    aput-wide v38, v11, v33

    add-int/lit8 v6, v6, 0x1

    goto :goto_5b9

    :cond_5d0
    move/from16 v6, v35

    :goto_5d2
    if-ge v6, v10, :cond_5e9

    aget-wide v38, v11, v6

    shr-long v40, v38, v3

    move v10, v6

    and-long v6, v40, v16

    neg-long v6, v6

    aget-wide v40, v11, v33

    and-long v6, v40, v6

    xor-long v6, v38, v6

    aput-wide v6, v11, v10

    add-int/lit8 v6, v10, 0x1

    const/16 v10, 0x20

    goto :goto_5d2

    :cond_5e9
    move/from16 v3, v35

    move/from16 v6, v36

    move/from16 v7, v37

    goto/16 :goto_549

    :cond_5f1
    move/from16 v36, v6

    move/from16 v37, v7

    const/4 v3, 0x0

    :goto_5f6
    if-ge v3, v10, :cond_63f

    add-int/lit8 v6, v3, 0x1

    move v7, v6

    :goto_5fb
    const/16 v10, 0x40

    if-ge v7, v10, :cond_638

    add-int v11, v37, v3

    aget-short v10, v26, v11

    add-int v33, v37, v7

    aget-short v34, v26, v33

    move/from16 v35, v3

    xor-int v3, v10, v34

    move/from16 v38, v11

    move-object/from16 v34, v12

    int-to-long v11, v3

    int-to-short v3, v7

    move/from16 v39, v6

    move/from16 v40, v7

    aget-wide v6, v13, v35

    long-to-int v6, v6

    int-to-short v6, v6

    xor-int/2addr v3, v6

    int-to-long v6, v3

    sub-long v6, v6, v16

    ushr-long v6, v6, p0

    neg-long v6, v6

    and-long/2addr v6, v11

    int-to-long v10, v10

    xor-long/2addr v10, v6

    long-to-int v3, v10

    int-to-short v3, v3

    aput-short v3, v26, v38

    aget-short v3, v26, v33

    int-to-long v10, v3

    xor-long/2addr v6, v10

    long-to-int v3, v6

    int-to-short v3, v3

    aput-short v3, v26, v33

    add-int/lit8 v7, v40, 0x1

    move-object/from16 v12, v34

    move/from16 v3, v35

    move/from16 v6, v39

    goto :goto_5fb

    :cond_638
    move/from16 v39, v6

    move/from16 v3, v39

    const/16 v10, 0x20

    goto :goto_5f6

    :cond_63f
    move-object/from16 v34, v12

    const/4 v3, 0x0

    :goto_642
    if-ge v3, v8, :cond_6fe

    if-eqz v23, :cond_675

    const/4 v6, 0x0

    const/16 v7, 0x9

    :goto_649
    if-ge v6, v7, :cond_656

    aget-object v10, v32, v3

    add-int v11, v14, v6

    aget-byte v10, v10, v11

    aput-byte v10, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_649

    :cond_656
    const/4 v6, 0x0

    :goto_657
    const/16 v10, 0x8

    if-ge v6, v10, :cond_66f

    aget-byte v10, v4, v6

    and-int/lit16 v10, v10, 0xff

    shr-int v10, v10, v30

    add-int/lit8 v11, v6, 0x1

    aget-byte v12, v4, v11

    rsub-int/lit8 v28, v30, 0x8

    shl-int v12, v12, v28

    or-int/2addr v10, v12

    int-to-byte v10, v10

    aput-byte v10, v4, v6

    move v6, v11

    goto :goto_657

    :cond_66f
    const/4 v6, 0x0

    invoke-static {v6, v4}, Lm4/d;->C(I[B)J

    move-result-wide v10

    goto :goto_67d

    :cond_675
    const/16 v7, 0x9

    aget-object v6, v32, v3

    invoke-static {v14, v6}, Lm4/d;->C(I[B)J

    move-result-wide v10

    :goto_67d
    const/4 v6, 0x0

    :goto_67e
    const/16 v12, 0x20

    if-ge v6, v12, :cond_69a

    shr-long v37, v10, v6

    move v12, v8

    aget-wide v7, v13, v6

    long-to-int v7, v7

    shr-long v39, v10, v7

    xor-long v37, v37, v39

    and-long v37, v37, v16

    shl-long v7, v37, v7

    xor-long/2addr v7, v10

    shl-long v10, v37, v6

    xor-long/2addr v10, v7

    add-int/lit8 v6, v6, 0x1

    move v8, v12

    const/16 v7, 0x9

    goto :goto_67e

    :cond_69a
    move v12, v8

    if-eqz v23, :cond_6f0

    const/4 v6, 0x0

    invoke-static {v6, v10, v11, v4}, Lt4/d;->G0(IJ[B)V

    aget-object v6, v32, v3

    add-int/lit8 v7, v14, 0x8

    aget-byte v8, v6, v7

    and-int/lit16 v8, v8, 0xff

    ushr-int v8, v8, v30

    shl-int v8, v8, v30

    aget-byte v10, v4, v18

    and-int/lit16 v10, v10, 0xff

    rsub-int/lit8 v11, v30, 0x8

    ushr-int/2addr v10, v11

    or-int/2addr v8, v10

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    const/16 v24, 0x0

    aget-byte v7, v4, v24

    and-int/lit16 v7, v7, 0xff

    shl-int v7, v7, v30

    aget-byte v8, v6, v14

    and-int/lit16 v8, v8, 0xff

    shl-int/2addr v8, v11

    ushr-int/2addr v8, v11

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v6, v14

    move/from16 v6, v18

    move/from16 v7, v20

    :goto_6ce
    if-lt v6, v7, :cond_6ed

    aget-object v7, v32, v3

    add-int v8, v14, v6

    aget-byte v10, v4, v6

    and-int/lit16 v10, v10, 0xff

    shl-int v10, v10, v30

    add-int/lit8 v33, v6, -0x1

    move/from16 v35, v3

    aget-byte v3, v4, v33

    and-int/lit16 v3, v3, 0xff

    ushr-int/2addr v3, v11

    or-int/2addr v3, v10

    int-to-byte v3, v3

    aput-byte v3, v7, v8

    add-int/lit8 v6, v6, -0x1

    move/from16 v3, v35

    const/4 v7, 0x1

    goto :goto_6ce

    :cond_6ed
    move/from16 v35, v3

    goto :goto_6f7

    :cond_6f0
    move/from16 v35, v3

    aget-object v3, v32, v35

    invoke-static {v14, v10, v11, v3}, Lt4/d;->G0(IJ[B)V

    :goto_6f7
    add-int/lit8 v3, v35, 0x1

    move v8, v12

    const/16 v20, 0x1

    goto/16 :goto_642

    :cond_6fe
    :goto_6fe
    move v12, v8

    goto :goto_707

    :cond_700
    move-object/from16 v32, v3

    move/from16 v36, v6

    move-object/from16 v34, v12

    goto :goto_6fe

    :goto_707
    add-int/lit8 v3, v1, 0x1

    move v4, v3

    :goto_70a
    if-ge v4, v12, :cond_736

    aget-object v6, v32, v1

    aget-byte v6, v6, v9

    aget-object v7, v32, v4

    aget-byte v7, v7, v9

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    shr-int v6, v6, v36

    int-to-byte v6, v6

    const/16 v20, 0x1

    and-int/lit8 v6, v6, 0x1

    int-to-byte v6, v6

    neg-int v6, v6

    int-to-byte v6, v6

    const/4 v7, 0x0

    :goto_721
    if-ge v7, v5, :cond_733

    aget-object v8, v32, v1

    aget-byte v10, v8, v7

    aget-object v11, v32, v4

    aget-byte v11, v11, v7

    and-int/2addr v11, v6

    xor-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_721

    :cond_733
    add-int/lit8 v4, v4, 0x1

    goto :goto_70a

    :cond_736
    aget-object v4, v32, v1

    aget-byte v4, v4, v9

    shr-int v4, v4, v36

    const/16 v20, 0x1

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_744

    goto/16 :goto_382

    :cond_744
    const/4 v4, 0x0

    :goto_745
    if-ge v4, v12, :cond_76d

    if-eq v4, v1, :cond_768

    aget-object v6, v32, v4

    aget-byte v6, v6, v9

    shr-int v6, v6, v36

    int-to-byte v6, v6

    and-int/lit8 v6, v6, 0x1

    int-to-byte v6, v6

    neg-int v6, v6

    int-to-byte v6, v6

    const/4 v7, 0x0

    :goto_756
    if-ge v7, v5, :cond_768

    aget-object v8, v32, v4

    aget-byte v10, v8, v7

    aget-object v11, v32, v1

    aget-byte v11, v11, v7

    and-int/2addr v11, v6

    xor-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_756

    :cond_768
    add-int/lit8 v4, v4, 0x1

    const/16 v20, 0x1

    goto :goto_745

    :cond_76d
    move v1, v3

    move v8, v12

    move-object/from16 v3, v32

    move-object/from16 v12, v34

    const/16 v20, 0x1

    const/16 v21, 0x8

    goto/16 :goto_4cc

    :cond_779
    move-object/from16 v32, v3

    move v12, v8

    const/16 v18, 0x7

    if-eqz v23, :cond_7d1

    rem-int/lit8 v8, v12, 0x8

    if-nez v8, :cond_797

    aget-object v1, v32, v9

    const/16 v20, 0x1

    add-int/lit8 v8, v12, -0x1

    const/16 v21, 0x8

    div-int/lit8 v8, v8, 0x8

    move-object/from16 v3, v31

    const/4 v6, 0x0

    invoke-static {v1, v8, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_794
    :goto_794
    move-object/from16 v1, v29

    goto :goto_7e9

    :cond_797
    move-object/from16 v3, v31

    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_79b
    const/16 v20, 0x1

    const/16 v21, 0x8

    if-ge v1, v12, :cond_794

    add-int/lit8 v6, v12, -0x1

    div-int/lit8 v6, v6, 0x8

    :goto_7a5
    add-int/lit8 v7, v5, -0x1

    if-ge v6, v7, :cond_7c1

    add-int/lit8 v7, v4, 0x1

    aget-object v9, v32, v1

    aget-byte v10, v9, v6

    and-int/lit16 v10, v10, 0xff

    ushr-int/2addr v10, v8

    add-int/lit8 v6, v6, 0x1

    aget-byte v9, v9, v6

    rsub-int/lit8 v11, v8, 0x8

    shl-int/2addr v9, v11

    or-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v3, v4

    move v4, v7

    const/16 v20, 0x1

    goto :goto_7a5

    :cond_7c1
    add-int/lit8 v7, v4, 0x1

    aget-object v9, v32, v1

    aget-byte v6, v9, v6

    and-int/lit16 v6, v6, 0xff

    ushr-int/2addr v6, v8

    int-to-byte v6, v6

    aput-byte v6, v3, v4

    add-int/lit8 v1, v1, 0x1

    move v4, v7

    goto :goto_79b

    :cond_7d1
    move-object/from16 v3, v31

    sub-int/2addr v15, v12

    add-int/lit8 v15, v15, 0x7

    const/16 v21, 0x8

    div-int/lit8 v15, v15, 0x8

    const/4 v1, 0x0

    :goto_7db
    if-ge v1, v12, :cond_794

    aget-object v4, v32, v1

    div-int/lit8 v8, v12, 0x8

    mul-int v5, v15, v1

    invoke-static {v4, v8, v3, v5, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7db

    :goto_7e9
    invoke-direct {v1, v3}, Ly2/b;-><init>([B)V

    new-instance v3, Ly2/a;

    iget-object v4, v0, Lb3/c;->q:[B

    const/4 v6, 0x0

    const/16 v10, 0x20

    invoke-static {v4, v6, v10}, Lm4/d;->q([BII)[B

    move-result-object v4

    iget-object v5, v0, Lb3/c;->q:[B

    const/16 v6, 0x28

    invoke-static {v5, v10, v6}, Lm4/d;->q([BII)[B

    move-result-object v5

    iget-object v7, v0, Lb3/c;->q:[B

    iget-object v8, v0, La3/a;->d:Ljava/lang/Object;

    check-cast v8, Lb3/b;

    iget v8, v8, Lb3/b;->d:I

    const/16 v22, 0x2

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v6

    invoke-static {v7, v6, v8}, Lm4/d;->q([BII)[B

    move-result-object v7

    iget-object v8, v0, Lb3/c;->q:[B

    iget-object v9, v0, La3/a;->d:Ljava/lang/Object;

    check-cast v9, Lb3/b;

    iget v9, v9, Lb3/b;->d:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v6

    array-length v6, v8

    const/16 v25, 0x20

    add-int/lit8 v6, v6, -0x20

    invoke-static {v8, v9, v6}, Lm4/d;->q([BII)[B

    move-result-object v6

    iget-object v0, v0, Lb3/c;->q:[B

    array-length v8, v0

    add-int/lit8 v8, v8, -0x20

    array-length v9, v0

    invoke-static {v0, v8, v9}, Lm4/d;->q([BII)[B

    move-result-object v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    const/4 v8, 0x0

    iput v8, v3, Ly2/a;->c:I

    invoke-static {v4}, Lm4/d;->e([B)[B

    move-result-object v4

    iput-object v4, v3, Ly2/a;->d:[B

    invoke-static {v5}, Lm4/d;->e([B)[B

    move-result-object v4

    iput-object v4, v3, Ly2/a;->q:[B

    invoke-static {v7}, Lm4/d;->e([B)[B

    move-result-object v4

    iput-object v4, v3, Ly2/a;->x:[B

    invoke-static {v6}, Lm4/d;->e([B)[B

    move-result-object v4

    iput-object v4, v3, Ly2/a;->y:[B

    invoke-static {v0}, Lm4/d;->e([B)[B

    move-result-object v0

    iput-object v0, v3, Ly2/a;->z1:[B

    iput-object v1, v3, Ly2/a;->A1:Ly2/b;

    new-instance v0, Ld0/t;

    move-object/from16 v1, p1

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v1, v4}, Ld0/t;-><init>(Ll0/b;Lm/n;Lm/y;[B)V

    return-object v0

    :cond_85d
    const-wide/16 v16, 0x1

    const/16 v18, 0x4

    instance-of v2, v0, Lv3/v;

    if-eqz v2, :cond_8f5

    check-cast v0, Lv3/v;

    new-instance v2, Ll0/b;

    sget-object v3, Ly2/e;->c:Lm/q;

    new-instance v4, Ly2/i;

    iget-object v5, v0, Lv3/v;->q:Lv3/t;

    iget v5, v5, Lv3/t;->b:I

    iget-object v6, v0, Ls3/a;->d:Ljava/lang/String;

    invoke-static {v6}, Lu3/d;->f(Ljava/lang/String;)Ll0/b;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ly2/i;-><init>(ILl0/b;)V

    invoke-direct {v2, v3, v4}, Ll0/b;-><init>(Lm/q;Lm/f;)V

    new-instance v3, Ld0/t;

    invoke-virtual {v0}, Lv3/v;->getEncoded()[B

    move-result-object v4

    iget-object v0, v0, Lv3/v;->q:Lv3/t;

    iget v5, v0, Lv3/t;->f:I

    iget v0, v0, Lv3/t;->b:I

    move/from16 v6, v18

    invoke-static {v6, v4}, Ls2/b;->k(I[B)J

    move-result-wide v7

    long-to-int v10, v7

    int-to-long v7, v10

    invoke-static {v0, v7, v8}, Ls2/b;->J(IJ)Z

    move-result v7

    if-eqz v7, :cond_8ed

    invoke-static {v4, v6, v5}, Ls2/b;->t([BII)[B

    move-result-object v11

    add-int/2addr v6, v5

    invoke-static {v4, v6, v5}, Ls2/b;->t([BII)[B

    move-result-object v12

    add-int/2addr v6, v5

    invoke-static {v4, v6, v5}, Ls2/b;->t([BII)[B

    move-result-object v13

    add-int/2addr v6, v5

    invoke-static {v4, v6, v5}, Ls2/b;->t([BII)[B

    move-result-object v14

    add-int/2addr v6, v5

    array-length v5, v4

    sub-int/2addr v5, v6

    invoke-static {v4, v6, v5}, Ls2/b;->t([BII)[B

    move-result-object v15

    :try_start_8b1
    const-class v4, Lv3/a;

    invoke-static {v15, v4}, Ls2/b;->r([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lv3/a;
    :try_end_8b9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8b1 .. :try_end_8b9} :catch_8d4

    iget v4, v4, Lv3/a;->E1:I

    const/16 v20, 0x1

    shl-int v0, v20, v0

    add-int/lit8 v0, v0, -0x1

    new-instance v9, Ly2/m;

    if-eq v4, v0, :cond_8cc

    move/from16 v16, v4

    invoke-direct/range {v9 .. v16}, Ly2/m;-><init>(I[B[B[B[B[BI)V

    :goto_8ca
    const/4 v4, 0x0

    goto :goto_8d0

    :cond_8cc
    invoke-direct/range {v9 .. v15}, Ly2/m;-><init>(I[B[B[B[B[B)V

    goto :goto_8ca

    :goto_8d0
    invoke-direct {v3, v2, v9, v1, v4}, Ld0/t;-><init>(Ll0/b;Lm/n;Lm/y;[B)V

    return-object v3

    :catch_8d4
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cannot parse BDS: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8ed
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "index out of bounds"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8f5
    instance-of v2, v0, Lv3/q;

    if-eqz v2, :cond_9a3

    check-cast v0, Lv3/q;

    new-instance v2, Ll0/b;

    sget-object v3, Ly2/e;->d:Lm/q;

    new-instance v4, Ly2/j;

    iget-object v5, v0, Lv3/q;->q:Lv3/o;

    iget v6, v5, Lv3/o;->c:I

    iget v5, v5, Lv3/o;->d:I

    iget-object v7, v0, Ls3/a;->d:Ljava/lang/String;

    invoke-static {v7}, Lu3/d;->f(Ljava/lang/String;)Ll0/b;

    move-result-object v7

    invoke-direct {v4, v6, v5, v7}, Ly2/j;-><init>(IILl0/b;)V

    invoke-direct {v2, v3, v4}, Ll0/b;-><init>(Lm/q;Lm/f;)V

    new-instance v3, Ld0/t;

    invoke-virtual {v0}, Lv3/q;->getEncoded()[B

    move-result-object v4

    iget-object v0, v0, Lv3/q;->q:Lv3/o;

    iget-object v5, v0, Lv3/o;->b:Lv3/t;

    iget v5, v5, Lv3/t;->f:I

    iget v0, v0, Lv3/o;->c:I

    add-int/lit8 v6, v0, 0x7

    const/16 v21, 0x8

    div-int/lit8 v6, v6, 0x8

    invoke-static {v6, v4}, Ls2/b;->k(I[B)J

    move-result-wide v7

    long-to-int v7, v7

    int-to-long v9, v7

    invoke-static {v0, v9, v10}, Ls2/b;->J(IJ)Z

    move-result v7

    if-eqz v7, :cond_99b

    invoke-static {v4, v6, v5}, Ls2/b;->t([BII)[B

    move-result-object v23

    add-int/2addr v6, v5

    invoke-static {v4, v6, v5}, Ls2/b;->t([BII)[B

    move-result-object v24

    add-int/2addr v6, v5

    invoke-static {v4, v6, v5}, Ls2/b;->t([BII)[B

    move-result-object v25

    add-int/2addr v6, v5

    invoke-static {v4, v6, v5}, Ls2/b;->t([BII)[B

    move-result-object v14

    add-int/2addr v6, v5

    array-length v5, v4

    sub-int/2addr v5, v6

    invoke-static {v4, v6, v5}, Ls2/b;->t([BII)[B

    move-result-object v15

    :try_start_94d
    const-class v4, Lv3/b;

    invoke-static {v15, v4}, Ls2/b;->r([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lv3/b;
    :try_end_955
    .catch Ljava/lang/ClassNotFoundException; {:try_start_94d .. :try_end_955} :catch_982

    iget-wide v4, v4, Lv3/b;->d:J

    shl-long v6, v16, v0

    sub-long v6, v6, v16

    cmp-long v0, v4, v6

    if-eqz v0, :cond_970

    new-instance v20, Ly2/k;

    move-wide/from16 v28, v4

    move-wide/from16 v21, v9

    move-object/from16 v26, v14

    move-object/from16 v27, v15

    invoke-direct/range {v20 .. v29}, Ly2/k;-><init>(J[B[B[B[B[BJ)V

    move-object/from16 v8, v20

    :goto_96e
    const/4 v4, 0x0

    goto :goto_97e

    :cond_970
    move-wide/from16 v21, v9

    new-instance v8, Ly2/k;

    move-object/from16 v11, v23

    move-object/from16 v12, v24

    move-object/from16 v13, v25

    invoke-direct/range {v8 .. v15}, Ly2/k;-><init>(J[B[B[B[B[B)V

    goto :goto_96e

    :goto_97e
    invoke-direct {v3, v2, v8, v1, v4}, Ld0/t;-><init>(Ll0/b;Lm/n;Lm/y;[B)V

    return-object v3

    :catch_982
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cannot parse BDSStateMap: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_99b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "index out of bounds"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9a3
    instance-of v2, v0, Le3/b;

    if-eqz v2, :cond_9cc

    check-cast v0, Le3/b;

    iget-object v2, v0, Le3/b;->q:[B

    invoke-static {v2}, Lm4/d;->e([B)[B

    move-result-object v2

    new-instance v3, Ll0/b;

    iget-object v0, v0, La3/a;->d:Ljava/lang/Object;

    check-cast v0, Le3/a;

    sget-object v4, Lu3/d;->i:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/q;

    invoke-direct {v3, v0}, Ll0/b;-><init>(Lm/q;)V

    new-instance v0, Ld0/t;

    new-instance v4, Lm/x0;

    invoke-direct {v4, v2}, Lm/r;-><init>([B)V

    const/4 v2, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Ld0/t;-><init>(Ll0/b;Lm/n;Lm/y;[B)V

    return-object v0

    :cond_9cc
    instance-of v2, v0, Lp3/b;

    if-eqz v2, :cond_9f5

    check-cast v0, Lp3/b;

    iget-object v2, v0, Lp3/b;->q:[B

    invoke-static {v2}, Lm4/d;->e([B)[B

    move-result-object v2

    new-instance v3, Ll0/b;

    iget-object v0, v0, La3/a;->d:Ljava/lang/Object;

    check-cast v0, Lp3/a;

    sget-object v4, Lu3/d;->k:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/q;

    invoke-direct {v3, v0}, Ll0/b;-><init>(Lm/q;)V

    new-instance v0, Ld0/t;

    new-instance v4, Lm/x0;

    invoke-direct {v4, v2}, Lm/r;-><init>([B)V

    const/4 v2, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Ld0/t;-><init>(Ll0/b;Lm/n;Lm/y;[B)V

    return-object v0

    :cond_9f5
    instance-of v2, v0, Ll3/b;

    if-eqz v2, :cond_a1e

    check-cast v0, Ll3/b;

    iget-object v2, v0, Ll3/b;->q:[B

    invoke-static {v2}, Lm4/d;->e([B)[B

    move-result-object v2

    new-instance v3, Ll0/b;

    iget-object v0, v0, La3/a;->d:Ljava/lang/Object;

    check-cast v0, Ll3/a;

    sget-object v4, Lu3/d;->q:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/q;

    invoke-direct {v3, v0}, Ll0/b;-><init>(Lm/q;)V

    new-instance v0, Ld0/t;

    new-instance v4, Lm/x0;

    invoke-direct {v4, v2}, Lm/r;-><init>([B)V

    const/4 v2, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Ld0/t;-><init>(Ll0/b;Lm/n;Lm/y;[B)V

    return-object v0

    :cond_a1e
    instance-of v2, v0, Ld3/b;

    if-eqz v2, :cond_a69

    check-cast v0, Ld3/b;

    new-instance v2, Ll0/b;

    iget-object v3, v0, La3/a;->d:Ljava/lang/Object;

    check-cast v3, Ld3/a;

    sget-object v4, Lu3/d;->s:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm/q;

    invoke-direct {v2, v3}, Ll0/b;-><init>(Lm/q;)V

    new-instance v3, Ly2/d;

    iget-object v4, v0, Ld3/b;->q:[B

    invoke-static {v4}, Lm4/d;->e([B)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ly2/d;-><init>([B)V

    new-instance v4, Ly2/c;

    iget-object v5, v0, Ld3/b;->x:[B

    invoke-static {v5}, Lm4/d;->e([B)[B

    move-result-object v5

    iget-object v6, v0, Ld3/b;->y:[B

    invoke-static {v6}, Lm4/d;->e([B)[B

    move-result-object v6

    iget-object v0, v0, Ld3/b;->z1:[B

    invoke-static {v0}, Lm4/d;->e([B)[B

    move-result-object v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    const/4 v8, 0x0

    iput v8, v4, Ly2/c;->c:I

    iput-object v5, v4, Ly2/c;->d:[B

    iput-object v6, v4, Ly2/c;->q:[B

    iput-object v0, v4, Ly2/c;->x:[B

    iput-object v3, v4, Ly2/c;->y:Ly2/d;

    new-instance v0, Ld0/t;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v4, v1, v3}, Ld0/t;-><init>(Ll0/b;Lm/n;Lm/y;[B)V

    return-object v0

    :cond_a69
    instance-of v2, v0, Lj3/g;

    const/4 v3, -0x1

    if-eqz v2, :cond_ad6

    check-cast v0, Lj3/g;

    new-instance v2, Ll0/b;

    iget-object v4, v0, La3/a;->d:Ljava/lang/Object;

    check-cast v4, Lj3/f;

    sget-object v5, Lu3/d;->G:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lm/q;

    invoke-direct {v2, v4}, Ll0/b;-><init>(Lm/q;)V

    iget v4, v0, Lj3/g;->C1:I

    const/4 v7, 0x1

    if-ne v4, v7, :cond_aa1

    new-instance v3, Ld0/t;

    new-instance v4, Lm/d1;

    new-instance v5, Lm/x0;

    iget-object v0, v0, Lj3/g;->B1:[B

    invoke-static {v0}, Lm4/d;->e([B)[B

    move-result-object v0

    invoke-direct {v5, v0}, Lm/r;-><init>([B)V

    const/16 v0, 0x80

    const/4 v6, 0x0

    const/4 v10, 0x2

    invoke-direct {v4, v10, v0, v6, v5}, Lm/a0;-><init>(IIILm/f;)V

    const/4 v5, 0x0

    invoke-direct {v3, v2, v4, v1, v5}, Ld0/t;-><init>(Ll0/b;Lm/n;Lm/y;[B)V

    return-object v3

    :cond_aa1
    const/4 v5, 0x0

    const/4 v10, 0x2

    if-ne v4, v10, :cond_ab4

    new-instance v3, Ld0/t;

    new-instance v4, Lm/x0;

    invoke-virtual {v0}, Lj3/g;->getEncoded()[B

    move-result-object v0

    invoke-direct {v4, v0}, Lm/r;-><init>([B)V

    invoke-direct {v3, v2, v4, v1, v5}, Ld0/t;-><init>(Ll0/b;Lm/n;Lm/y;[B)V

    return-object v3

    :cond_ab4
    new-instance v4, Ld0/t;

    iget-object v5, v0, Lj3/g;->B1:[B

    invoke-static {v5}, Lm4/d;->e([B)[B

    move-result-object v5

    invoke-virtual {v0}, Lj3/g;->getEncoded()[B

    move-result-object v0

    new-instance v6, Lm/a1;

    new-instance v7, Lm/x0;

    invoke-direct {v7, v5}, Lm/r;-><init>([B)V

    new-instance v5, Lm/x0;

    invoke-direct {v5, v0}, Lm/r;-><init>([B)V

    invoke-direct {v6, v7, v5}, Lm/x;-><init>(Lm/f;Lm/f;)V

    iput v3, v6, Lm/a1;->q:I

    const/4 v3, 0x0

    invoke-direct {v4, v2, v6, v1, v3}, Ld0/t;-><init>(Ll0/b;Lm/n;Lm/y;[B)V

    return-object v4

    :cond_ad6
    instance-of v2, v0, Lm3/b;

    if-eqz v2, :cond_b38

    check-cast v0, Lm3/b;

    new-instance v2, Lm/g;

    invoke-direct {v2}, Lm/g;-><init>()V

    new-instance v4, Lm/x0;

    iget-object v5, v0, Lm3/b;->q:[B

    invoke-static {v5}, Lm4/d;->e([B)[B

    move-result-object v5

    invoke-direct {v4, v5}, Lm/r;-><init>([B)V

    invoke-virtual {v2, v4}, Lm/g;->a(Lm/f;)V

    new-instance v4, Lm/x0;

    iget-object v5, v0, Lm3/b;->x:[B

    invoke-static {v5}, Lm4/d;->e([B)[B

    move-result-object v5

    invoke-direct {v4, v5}, Lm/r;-><init>([B)V

    invoke-virtual {v2, v4}, Lm/g;->a(Lm/f;)V

    new-instance v4, Lm/x0;

    iget-object v5, v0, Lm3/b;->y:[B

    invoke-static {v5}, Lm4/d;->e([B)[B

    move-result-object v5

    invoke-direct {v4, v5}, Lm/r;-><init>([B)V

    invoke-virtual {v2, v4}, Lm/g;->a(Lm/f;)V

    new-instance v4, Lm/x0;

    iget-object v5, v0, Lm3/b;->z1:[B

    invoke-static {v5}, Lm4/d;->e([B)[B

    move-result-object v5

    invoke-direct {v4, v5}, Lm/r;-><init>([B)V

    invoke-virtual {v2, v4}, Lm/g;->a(Lm/f;)V

    new-instance v4, Ll0/b;

    iget-object v0, v0, La3/a;->d:Ljava/lang/Object;

    check-cast v0, Lm3/a;

    sget-object v5, Lu3/d;->u:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/q;

    invoke-direct {v4, v0}, Ll0/b;-><init>(Lm/q;)V

    new-instance v0, Ld0/t;

    new-instance v5, Lm/a1;

    invoke-direct {v5, v2}, Lm/x;-><init>(Lm/g;)V

    iput v3, v5, Lm/a1;->q:I

    const/4 v2, 0x0

    invoke-direct {v0, v4, v5, v1, v2}, Ld0/t;-><init>(Ll0/b;Lm/n;Lm/y;[B)V

    return-object v0

    :cond_b38
    instance-of v2, v0, Lm3/e;

    if-eqz v2, :cond_ba8

    check-cast v0, Lm3/e;

    new-instance v2, Lm/g;

    invoke-direct {v2}, Lm/g;-><init>()V

    new-instance v4, Lm/x0;

    iget-object v5, v0, Lm3/e;->q:[B

    invoke-static {v5}, Lm4/d;->e([B)[B

    move-result-object v5

    invoke-direct {v4, v5}, Lm/r;-><init>([B)V

    invoke-virtual {v2, v4}, Lm/g;->a(Lm/f;)V

    new-instance v4, Lm/x0;

    iget-object v5, v0, Lm3/e;->x:[B

    invoke-static {v5}, Lm4/d;->e([B)[B

    move-result-object v5

    invoke-direct {v4, v5}, Lm/r;-><init>([B)V

    invoke-virtual {v2, v4}, Lm/g;->a(Lm/f;)V

    new-instance v4, Lm/x0;

    iget-object v5, v0, Lm3/e;->y:[B

    invoke-static {v5}, Lm4/d;->e([B)[B

    move-result-object v5

    invoke-direct {v4, v5}, Lm/r;-><init>([B)V

    invoke-virtual {v2, v4}, Lm/g;->a(Lm/f;)V

    new-instance v4, Lm/x0;

    iget-object v5, v0, Lm3/e;->z1:[B

    invoke-static {v5}, Lm4/d;->e([B)[B

    move-result-object v5

    invoke-direct {v4, v5}, Lm/r;-><init>([B)V

    invoke-virtual {v2, v4}, Lm/g;->a(Lm/f;)V

    new-instance v4, Lm/x0;

    iget-object v5, v0, Lm3/e;->A1:[B

    invoke-static {v5}, Lm4/d;->e([B)[B

    move-result-object v5

    invoke-direct {v4, v5}, Lm/r;-><init>([B)V

    invoke-virtual {v2, v4}, Lm/g;->a(Lm/f;)V

    new-instance v4, Ll0/b;

    iget-object v0, v0, La3/a;->d:Ljava/lang/Object;

    check-cast v0, Lm3/d;

    sget-object v5, Lu3/d;->w:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/q;

    invoke-direct {v4, v0}, Ll0/b;-><init>(Lm/q;)V

    new-instance v0, Ld0/t;

    new-instance v5, Lm/a1;

    invoke-direct {v5, v2}, Lm/x;-><init>(Lm/g;)V

    iput v3, v5, Lm/a1;->q:I

    const/4 v2, 0x0

    invoke-direct {v0, v4, v5, v1, v2}, Ld0/t;-><init>(Ll0/b;Lm/n;Lm/y;[B)V

    return-object v0

    :cond_ba8
    instance-of v2, v0, Li3/f;

    if-eqz v2, :cond_c10

    check-cast v0, Li3/f;

    new-instance v2, Ll0/b;

    iget-object v4, v0, La3/a;->d:Ljava/lang/Object;

    check-cast v4, Li3/e;

    sget-object v5, Lu3/d;->I:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lm/q;

    invoke-direct {v2, v4}, Ll0/b;-><init>(Lm/q;)V

    iget v4, v0, Li3/f;->E1:I

    const/4 v7, 0x1

    if-ne v4, v7, :cond_bdc

    new-instance v3, Ld0/t;

    new-instance v4, Lm/d1;

    new-instance v5, Lm/x0;

    iget-object v0, v0, Li3/f;->D1:[B

    invoke-static {v0}, Lm4/d;->e([B)[B

    move-result-object v0

    invoke-direct {v5, v0}, Lm/r;-><init>([B)V

    const/4 v6, 0x0

    invoke-direct {v4, v6, v6, v5}, Lm/a0;-><init>(ZILm/f;)V

    const/4 v5, 0x0

    invoke-direct {v3, v2, v4, v1, v5}, Ld0/t;-><init>(Ll0/b;Lm/n;Lm/y;[B)V

    return-object v3

    :cond_bdc
    const/4 v5, 0x0

    const/4 v10, 0x2

    if-ne v4, v10, :cond_bef

    new-instance v3, Ld0/t;

    new-instance v4, Lm/x0;

    invoke-virtual {v0}, Li3/f;->getEncoded()[B

    move-result-object v0

    invoke-direct {v4, v0}, Lm/r;-><init>([B)V

    invoke-direct {v3, v2, v4, v1, v5}, Ld0/t;-><init>(Ll0/b;Lm/n;Lm/y;[B)V

    return-object v3

    :cond_bef
    new-instance v4, Ld0/t;

    iget-object v5, v0, Li3/f;->D1:[B

    invoke-static {v5}, Lm4/d;->e([B)[B

    move-result-object v5

    invoke-virtual {v0}, Li3/f;->getEncoded()[B

    move-result-object v0

    new-instance v6, Lm/a1;

    new-instance v7, Lm/x0;

    invoke-direct {v7, v5}, Lm/r;-><init>([B)V

    new-instance v5, Lm/x0;

    invoke-direct {v5, v0}, Lm/r;-><init>([B)V

    invoke-direct {v6, v7, v5}, Lm/x;-><init>(Lm/f;Lm/f;)V

    iput v3, v6, Lm/a1;->q:I

    invoke-direct {v4, v2, v6, v1}, Ld0/t;-><init>(Ll0/b;Lm/u;Lm/y;)V

    return-object v4

    :cond_c10
    instance-of v2, v0, Lc3/b;

    if-eqz v2, :cond_c5b

    check-cast v0, Lc3/b;

    new-instance v2, Ll0/b;

    iget-object v3, v0, La3/a;->d:Ljava/lang/Object;

    check-cast v3, Lc3/a;

    sget-object v4, Lu3/d;->y:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm/q;

    invoke-direct {v2, v3}, Ll0/b;-><init>(Lm/q;)V

    new-instance v3, Lc3/c;

    iget-object v4, v0, La3/a;->d:Ljava/lang/Object;

    check-cast v4, Lc3/a;

    iget-object v5, v0, Lc3/b;->q:[B

    iget-object v6, v0, Lc3/b;->C1:[B

    invoke-direct {v3, v4, v5, v6}, Lc3/c;-><init>(Lc3/a;[B[B)V

    new-instance v4, Ld0/t;

    new-instance v5, Lm/x0;

    iget-object v6, v0, Lc3/b;->q:[B

    iget-object v7, v0, Lc3/b;->x:[B

    iget-object v8, v0, Lc3/b;->y:[B

    iget-object v9, v0, Lc3/b;->z1:[B

    iget-object v10, v0, Lc3/b;->A1:[B

    iget-object v11, v0, Lc3/b;->B1:[B

    filled-new-array/range {v6 .. v11}, [[B

    move-result-object v0

    invoke-static {v0}, Lm4/d;->m([[B)[B

    move-result-object v0

    invoke-direct {v5, v0}, Lm/x0;-><init>([B)V

    iget-object v0, v3, Lc3/c;->q:[B

    iget-object v3, v3, Lc3/c;->x:[B

    invoke-static {v0, v3}, Lm4/d;->j([B[B)[B

    move-result-object v0

    invoke-direct {v4, v2, v5, v1, v0}, Ld0/t;-><init>(Ll0/b;Lm/n;Lm/y;[B)V

    return-object v4

    :cond_c5b
    instance-of v2, v0, La3/c;

    if-eqz v2, :cond_c87

    check-cast v0, La3/c;

    new-instance v2, Ll0/b;

    iget-object v3, v0, La3/a;->d:Ljava/lang/Object;

    check-cast v3, La3/b;

    sget-object v4, Lu3/d;->A:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm/q;

    invoke-direct {v2, v3}, Ll0/b;-><init>(Lm/q;)V

    iget-object v3, v0, La3/c;->q:[B

    iget-object v4, v0, La3/c;->x:[B

    iget-object v0, v0, La3/c;->y:[B

    invoke-static {v3, v4, v0}, Lm4/d;->k([B[B[B)[B

    move-result-object v0

    new-instance v3, Ld0/t;

    new-instance v4, Lm/x0;

    invoke-direct {v4, v0}, Lm/x0;-><init>([B)V

    invoke-direct {v3, v2, v4, v1}, Ld0/t;-><init>(Ll0/b;Lm/u;Lm/y;)V

    return-object v3

    :cond_c87
    instance-of v2, v0, Lf3/b;

    if-eqz v2, :cond_cad

    check-cast v0, Lf3/b;

    new-instance v2, Ll0/b;

    invoke-virtual {v0}, La3/a;->a()Lf3/a;

    move-result-object v3

    sget-object v4, Lu3/d;->C:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm/q;

    invoke-direct {v2, v3}, Ll0/b;-><init>(Lm/q;)V

    invoke-virtual {v0}, Lf3/b;->getEncoded()[B

    move-result-object v0

    new-instance v3, Ld0/t;

    new-instance v4, Lm/x0;

    invoke-direct {v4, v0}, Lm/x0;-><init>([B)V

    invoke-direct {v3, v2, v4, v1}, Ld0/t;-><init>(Ll0/b;Lm/u;Lm/y;)V

    return-object v3

    :cond_cad
    instance-of v2, v0, Lo3/d;

    if-eqz v2, :cond_cd3

    check-cast v0, Lo3/d;

    new-instance v2, Ll0/b;

    invoke-virtual {v0}, La3/a;->c()Lo3/c;

    move-result-object v3

    sget-object v4, Lu3/d;->E:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm/q;

    invoke-direct {v2, v3}, Ll0/b;-><init>(Lm/q;)V

    invoke-virtual {v0}, Lo3/d;->getEncoded()[B

    move-result-object v0

    new-instance v3, Ld0/t;

    new-instance v4, Lm/x0;

    invoke-direct {v4, v0}, Lm/x0;-><init>([B)V

    invoke-direct {v3, v2, v4, v1}, Ld0/t;-><init>(Ll0/b;Lm/u;Lm/y;)V

    return-object v3

    :cond_cd3
    instance-of v2, v0, Lh3/b;

    if-eqz v2, :cond_cf9

    check-cast v0, Lh3/b;

    new-instance v2, Ll0/b;

    invoke-virtual {v0}, La3/a;->b()Lh3/a;

    move-result-object v3

    sget-object v4, Lu3/d;->M:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm/q;

    invoke-direct {v2, v3}, Ll0/b;-><init>(Lm/q;)V

    invoke-virtual {v0}, Lh3/b;->getEncoded()[B

    move-result-object v0

    new-instance v3, Ld0/t;

    new-instance v4, Lm/x0;

    invoke-direct {v4, v0}, Lm/x0;-><init>([B)V

    invoke-direct {v3, v2, v4, v1}, Ld0/t;-><init>(Ll0/b;Lm/u;Lm/y;)V

    return-object v3

    :cond_cf9
    instance-of v2, v0, Lr3/b;

    if-eqz v2, :cond_d1d

    check-cast v0, Lr3/b;

    new-instance v2, Ll0/b;

    iget-object v3, v0, Lr3/b;->q:Lr3/a;

    sget-object v4, Lu3/d;->O:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm/q;

    invoke-direct {v2, v3}, Ll0/b;-><init>(Lm/q;)V

    invoke-virtual {v0}, Lr3/b;->getEncoded()[B

    move-result-object v0

    new-instance v3, Ld0/t;

    new-instance v4, Lm/x0;

    invoke-direct {v4, v0}, Lm/x0;-><init>([B)V

    invoke-direct {v3, v2, v4, v1}, Ld0/t;-><init>(Ll0/b;Lm/u;Lm/y;)V

    return-object v3

    :cond_d1d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "key parameters not recognized"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final j([Landroid/hardware/security/keymint/KeyParameter;I)Ljava/lang/Integer;
    .registers 7

    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    const/4 v2, 0x0

    if-ge v1, v0, :cond_f

    aget-object v3, p0, v1

    iget v4, v3, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    if-ne v4, p1, :cond_c

    goto :goto_10

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_f
    move-object v3, v2

    :goto_10
    if-eqz v3, :cond_1f

    iget-object p0, v3, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    if-eqz p0, :cond_1f

    invoke-virtual {p0}, Landroid/hardware/security/keymint/KeyParameterValue;->getInteger()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1f
    return-object v2
.end method

.method public static k(IIII[B[B)[B
    .registers 14

    if-eqz p4, :cond_d5

    if-eqz p5, :cond_cd

    const/4 v0, 0x1

    if-le p0, v0, :cond_c5

    add-int/lit8 v1, p0, -0x1

    and-int/2addr v1, p0

    if-nez v1, :cond_c5

    if-ne p1, v0, :cond_1b

    const/high16 v1, 0x10000

    if-ge p0, v1, :cond_13

    goto :goto_1b

    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cost parameter N must be > 1 and < 65536."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1b
    :goto_1b
    if-lt p1, v0, :cond_bd

    mul-int/lit16 v1, p1, 0x80

    mul-int/lit16 v2, p1, 0x400

    const v3, 0x7fffffff

    div-int/2addr v3, v2

    if-lt p2, v0, :cond_9c

    if-gt p2, v3, :cond_9c

    if-lt p3, v0, :cond_94

    mul-int/2addr p2, v1

    new-instance v2, Lx0/r;

    new-instance v3, Ls0/b0;

    invoke-direct {v3}, Ls0/b0;-><init>()V

    invoke-direct {v2, v3}, Lx0/r;-><init>(Lorg/bouncycastle/crypto/v;)V

    invoke-virtual {v2, p4, p5, v0}, Lorg/bouncycastle/crypto/e0;->init([B[BI)V

    mul-int/lit8 p2, p2, 0x8

    invoke-virtual {v2, p2}, Lx0/r;->generateDerivedParameters(I)Lorg/bouncycastle/crypto/g;

    move-result-object p2

    check-cast p2, Le1/o0;

    iget-object p2, p2, Le1/o0;->c:[B

    const/4 p5, 0x0

    const/4 v2, 0x0

    :try_start_45
    array-length v3, p2

    const/4 v4, 0x2

    ushr-int/2addr v3, v4

    new-array v2, v3, [I

    invoke-static {p5, p2, v2}, Lm4/d;->A(I[B[I)V

    mul-int v5, p0, p1

    move v6, p5

    :goto_50
    sub-int v7, p0, v6

    if-le v7, v4, :cond_5d

    const/16 v7, 0x400

    if-le v5, v7, :cond_5d

    add-int/lit8 v6, v6, 0x1

    ushr-int/lit8 v5, v5, 0x1

    goto :goto_50

    :cond_5d
    ushr-int/2addr v1, v4

    move v4, p5

    :goto_5f
    if-ge v4, v3, :cond_68

    invoke-static {v2, v4, p0, v6, p1}, Ls2/a;->c([IIIII)V

    add-int/2addr v4, v1

    goto :goto_5f

    :catchall_66
    move-exception p0

    goto :goto_89

    :cond_68
    invoke-static {p2, v2}, Lm4/d;->y([B[I)V

    new-instance p0, Lx0/r;

    new-instance p1, Ls0/b0;

    invoke-direct {p1}, Ls0/b0;-><init>()V

    invoke-direct {p0, p1}, Lx0/r;-><init>(Lorg/bouncycastle/crypto/v;)V

    invoke-virtual {p0, p4, p2, v0}, Lorg/bouncycastle/crypto/e0;->init([B[BI)V

    mul-int/lit8 p3, p3, 0x8

    invoke-virtual {p0, p3}, Lx0/r;->generateDerivedParameters(I)Lorg/bouncycastle/crypto/g;

    move-result-object p0

    check-cast p0, Le1/o0;

    iget-object p0, p0, Le1/o0;->c:[B
    :try_end_82
    .catchall {:try_start_45 .. :try_end_82} :catchall_66

    invoke-static {p2, p5}, Ljava/util/Arrays;->fill([BB)V

    invoke-static {v2, p5}, Ljava/util/Arrays;->fill([II)V

    return-object p0

    :goto_89
    if-eqz p2, :cond_8e

    invoke-static {p2, p5}, Ljava/util/Arrays;->fill([BB)V

    :cond_8e
    if-eqz v2, :cond_93

    invoke-static {v2, p5}, Ljava/util/Arrays;->fill([II)V

    :cond_93
    throw p0

    :cond_94
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Generated key length dkLen must be >= 1."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Parallelisation parameter p must be >= 1 and <= "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " (based on block size r of "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_bd
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Block size r must be >= 1."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cost parameter N must be > 1 and a power of 2"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_cd
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Salt S must be provided."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Passphrase P must be provided."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static l([J)Z
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/16 v2, 0x9

    if-ge v1, v2, :cond_12

    aget-wide v2, p0, v1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_f

    return v0

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_12
    const/4 p0, 0x1

    return p0
.end method

.method public static m(Li1/g;Lb1/a;Lv3/j;)Lv3/s;
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Li1/g;->a:Ljava/lang/Object;

    check-cast v2, Lv3/m;

    iget v2, v2, Lv3/m;->c:I

    move-object/from16 v3, p1

    iget-object v3, v3, Lb1/a;->h:Ljava/lang/Object;

    check-cast v3, [[B

    invoke-static {v3}, Ls2/b;->m([[B)[[B

    move-result-object v3

    array-length v4, v3

    new-array v4, v4, [Lv3/s;

    const/4 v5, 0x0

    move v6, v5

    :goto_19
    array-length v7, v3

    if-ge v6, v7, :cond_28

    new-instance v7, Lv3/s;

    aget-object v8, v3, v6

    invoke-direct {v7, v5, v8}, Lv3/s;-><init>(I[B)V

    aput-object v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_19

    :cond_28
    new-instance v3, Lv3/i;

    const/4 v6, 0x0

    invoke-direct {v3, v6}, Lv3/i;-><init>(I)V

    iget v6, v1, Lv3/n;->a:I

    iput v6, v3, Lv3/n;->c:I

    iget-wide v6, v1, Lv3/n;->b:J

    iput-wide v6, v3, Lv3/n;->b:J

    iget v6, v1, Lv3/j;->e:I

    iput v6, v3, Lv3/i;->e:I

    iput v5, v3, Lv3/i;->f:I

    iget v6, v1, Lv3/j;->g:I

    iput v6, v3, Lv3/i;->g:I

    iget v1, v1, Lv3/n;->d:I

    iput v1, v3, Lv3/n;->d:I

    new-instance v1, Lv3/j;

    invoke-direct {v1, v3}, Lv3/j;-><init>(Lv3/i;)V

    :goto_49
    const/4 v3, 0x1

    if-le v2, v3, :cond_bd

    move v6, v5

    :goto_4d
    iget v7, v1, Lv3/n;->d:I

    iget-wide v8, v1, Lv3/n;->b:J

    div-int/lit8 v10, v2, 0x2

    int-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-int v12, v12

    iget v13, v1, Lv3/j;->f:I

    iget v14, v1, Lv3/j;->e:I

    iget v15, v1, Lv3/n;->a:I

    if-ge v6, v12, :cond_89

    new-instance v1, Lv3/i;

    const/4 v10, 0x0

    invoke-direct {v1, v10}, Lv3/i;-><init>(I)V

    iput v15, v1, Lv3/n;->c:I

    iput-wide v8, v1, Lv3/n;->b:J

    iput v14, v1, Lv3/i;->e:I

    iput v13, v1, Lv3/i;->f:I

    iput v6, v1, Lv3/i;->g:I

    iput v7, v1, Lv3/n;->d:I

    new-instance v7, Lv3/j;

    invoke-direct {v7, v1}, Lv3/j;-><init>(Lv3/i;)V

    mul-int/lit8 v1, v6, 0x2

    aget-object v8, v4, v1

    add-int/2addr v1, v3

    aget-object v1, v4, v1

    invoke-static {v0, v8, v1, v7}, Ls2/a;->n(Li1/g;Lv3/s;Lv3/s;Lv3/n;)Lv3/s;

    move-result-object v1

    aput-object v1, v4, v6

    add-int/lit8 v6, v6, 0x1

    move-object v1, v7

    goto :goto_4d

    :cond_89
    rem-int/lit8 v6, v2, 0x2

    if-ne v6, v3, :cond_98

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v3, v10

    add-int/lit8 v6, v2, -0x1

    aget-object v6, v4, v6

    aput-object v6, v4, v3

    :cond_98
    int-to-double v2, v2

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    new-instance v3, Lv3/i;

    const/4 v6, 0x0

    invoke-direct {v3, v6}, Lv3/i;-><init>(I)V

    iput v15, v3, Lv3/n;->c:I

    iput-wide v8, v3, Lv3/n;->b:J

    iput v14, v3, Lv3/i;->e:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v3, Lv3/i;->f:I

    iget v1, v1, Lv3/j;->g:I

    iput v1, v3, Lv3/i;->g:I

    iput v7, v3, Lv3/n;->d:I

    new-instance v1, Lv3/j;

    invoke-direct {v1, v3}, Lv3/j;-><init>(Lv3/i;)V

    goto :goto_49

    :cond_bd
    aget-object v0, v4, v5

    return-object v0
.end method

.method public static n(Li1/g;Lv3/s;Lv3/s;Lv3/n;)Lv3/s;
    .registers 16

    if-eqz p1, :cond_174

    iget v0, p1, Lv3/s;->c:I

    if-eqz p2, :cond_16c

    iget v1, p2, Lv3/s;->c:I

    if-ne v0, v1, :cond_164

    iget-object v1, p0, Li1/g;->c:Ljava/lang/Object;

    check-cast v1, [B

    iget-object v2, p0, Li1/g;->d:Ljava/lang/Object;

    check-cast v2, Lorg/bouncycastle/crypto/z;

    invoke-static {v1}, Lm4/d;->e([B)[B

    move-result-object v1

    instance-of v3, p3, Lv3/j;

    const/4 v4, 0x0

    if-eqz v3, :cond_3f

    check-cast p3, Lv3/j;

    new-instance v3, Lv3/i;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Lv3/i;-><init>(I)V

    iget v5, p3, Lv3/n;->a:I

    iput v5, v3, Lv3/n;->c:I

    iget-wide v5, p3, Lv3/n;->b:J

    iput-wide v5, v3, Lv3/n;->b:J

    iget v5, p3, Lv3/j;->e:I

    iput v5, v3, Lv3/i;->e:I

    iget v5, p3, Lv3/j;->f:I

    iput v5, v3, Lv3/i;->f:I

    iget p3, p3, Lv3/j;->g:I

    iput p3, v3, Lv3/i;->g:I

    iput v4, v3, Lv3/n;->d:I

    new-instance p3, Lv3/j;

    invoke-direct {p3, v3}, Lv3/j;-><init>(Lv3/i;)V

    goto :goto_61

    :cond_3f
    instance-of v3, p3, Lv3/h;

    if-eqz v3, :cond_61

    check-cast p3, Lv3/h;

    new-instance v3, Lv3/g;

    invoke-direct {v3}, Lv3/g;-><init>()V

    iget v5, p3, Lv3/n;->a:I

    iput v5, v3, Lv3/n;->c:I

    iget-wide v5, p3, Lv3/n;->b:J

    iput-wide v5, v3, Lv3/n;->b:J

    iget v5, p3, Lv3/h;->e:I

    iput v5, v3, Lv3/g;->e:I

    iget p3, p3, Lv3/h;->f:I

    iput p3, v3, Lv3/g;->f:I

    iput v4, v3, Lv3/n;->d:I

    new-instance p3, Lv3/h;

    invoke-direct {p3, v3}, Lv3/h;-><init>(Lv3/g;)V

    :cond_61
    :goto_61
    invoke-virtual {p3}, Lv3/n;->a()[B

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/bouncycastle/crypto/z;->a([B[B)[B

    move-result-object v3

    instance-of v5, p3, Lv3/j;

    const/4 v6, 0x1

    if-eqz v5, :cond_92

    check-cast p3, Lv3/j;

    new-instance v5, Lv3/i;

    const/4 v7, 0x0

    invoke-direct {v5, v7}, Lv3/i;-><init>(I)V

    iget v7, p3, Lv3/n;->a:I

    iput v7, v5, Lv3/n;->c:I

    iget-wide v7, p3, Lv3/n;->b:J

    iput-wide v7, v5, Lv3/n;->b:J

    iget v7, p3, Lv3/j;->e:I

    iput v7, v5, Lv3/i;->e:I

    iget v7, p3, Lv3/j;->f:I

    iput v7, v5, Lv3/i;->f:I

    iget p3, p3, Lv3/j;->g:I

    iput p3, v5, Lv3/i;->g:I

    iput v6, v5, Lv3/n;->d:I

    new-instance p3, Lv3/j;

    invoke-direct {p3, v5}, Lv3/j;-><init>(Lv3/i;)V

    goto :goto_b4

    :cond_92
    instance-of v5, p3, Lv3/h;

    if-eqz v5, :cond_b4

    check-cast p3, Lv3/h;

    new-instance v5, Lv3/g;

    invoke-direct {v5}, Lv3/g;-><init>()V

    iget v7, p3, Lv3/n;->a:I

    iput v7, v5, Lv3/n;->c:I

    iget-wide v7, p3, Lv3/n;->b:J

    iput-wide v7, v5, Lv3/n;->b:J

    iget v7, p3, Lv3/h;->e:I

    iput v7, v5, Lv3/g;->e:I

    iget p3, p3, Lv3/h;->f:I

    iput p3, v5, Lv3/g;->f:I

    iput v6, v5, Lv3/n;->d:I

    new-instance p3, Lv3/h;

    invoke-direct {p3, v5}, Lv3/h;-><init>(Lv3/g;)V

    :cond_b4
    :goto_b4
    invoke-virtual {p3}, Lv3/n;->a()[B

    move-result-object v5

    invoke-virtual {v2, v1, v5}, Lorg/bouncycastle/crypto/z;->a([B[B)[B

    move-result-object v5

    instance-of v7, p3, Lv3/j;

    const/4 v8, 0x2

    if-eqz v7, :cond_e5

    check-cast p3, Lv3/j;

    new-instance v7, Lv3/i;

    const/4 v9, 0x0

    invoke-direct {v7, v9}, Lv3/i;-><init>(I)V

    iget v9, p3, Lv3/n;->a:I

    iput v9, v7, Lv3/n;->c:I

    iget-wide v9, p3, Lv3/n;->b:J

    iput-wide v9, v7, Lv3/n;->b:J

    iget v9, p3, Lv3/j;->e:I

    iput v9, v7, Lv3/i;->e:I

    iget v9, p3, Lv3/j;->f:I

    iput v9, v7, Lv3/i;->f:I

    iget p3, p3, Lv3/j;->g:I

    iput p3, v7, Lv3/i;->g:I

    iput v8, v7, Lv3/n;->d:I

    new-instance p3, Lv3/j;

    invoke-direct {p3, v7}, Lv3/j;-><init>(Lv3/i;)V

    goto :goto_107

    :cond_e5
    instance-of v7, p3, Lv3/h;

    if-eqz v7, :cond_107

    check-cast p3, Lv3/h;

    new-instance v7, Lv3/g;

    invoke-direct {v7}, Lv3/g;-><init>()V

    iget v9, p3, Lv3/n;->a:I

    iput v9, v7, Lv3/n;->c:I

    iget-wide v9, p3, Lv3/n;->b:J

    iput-wide v9, v7, Lv3/n;->b:J

    iget v9, p3, Lv3/h;->e:I

    iput v9, v7, Lv3/g;->e:I

    iget p3, p3, Lv3/h;->f:I

    iput p3, v7, Lv3/g;->f:I

    iput v8, v7, Lv3/n;->d:I

    new-instance p3, Lv3/h;

    invoke-direct {p3, v7}, Lv3/h;-><init>(Lv3/g;)V

    :cond_107
    :goto_107
    invoke-virtual {p3}, Lv3/n;->a()[B

    move-result-object p3

    invoke-virtual {v2, v1, p3}, Lorg/bouncycastle/crypto/z;->a([B[B)[B

    move-result-object p3

    iget-object p0, p0, Li1/g;->a:Ljava/lang/Object;

    check-cast p0, Lv3/m;

    iget p0, p0, Lv3/m;->a:I

    mul-int/lit8 v1, p0, 0x2

    new-array v7, v1, [B

    move v9, v4

    :goto_11a
    if-ge v9, p0, :cond_12d

    iget-object v10, p1, Lv3/s;->d:[B

    invoke-static {v10}, Ls2/b;->l([B)[B

    move-result-object v10

    aget-byte v10, v10, v9

    aget-byte v11, v5, v9

    xor-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, v7, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_11a

    :cond_12d
    :goto_12d
    if-ge v4, p0, :cond_142

    add-int p1, v4, p0

    iget-object v5, p2, Lv3/s;->d:[B

    invoke-static {v5}, Ls2/b;->l([B)[B

    move-result-object v5

    aget-byte v5, v5, v4

    aget-byte v9, p3, v4

    xor-int/2addr v5, v9

    int-to-byte v5, v5

    aput-byte v5, v7, p1

    add-int/lit8 v4, v4, 0x1

    goto :goto_12d

    :cond_142
    array-length p0, v3

    iget p1, v2, Lorg/bouncycastle/crypto/z;->g:I

    if-ne p0, p1, :cond_15c

    mul-int/2addr p1, v8

    if-ne v1, p1, :cond_154

    invoke-virtual {v2, v3, v6, v7}, Lorg/bouncycastle/crypto/z;->b([BI[B)[B

    move-result-object p0

    new-instance p1, Lv3/s;

    invoke-direct {p1, v0, p0}, Lv3/s;-><init>(I[B)V

    return-object p1

    :cond_154
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "wrong in length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "wrong key length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_164
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "height of both nodes must be equal"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_16c
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "right == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_174
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "left == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final o([B)Ljava/lang/String;
    .registers 9

    const-string v0, "<this>"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lz4/c;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lz4/c;-><init>(I)V

    const-string v1, "<this>"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    array-length v3, p0

    const/4 v4, 0x0

    move v5, v4

    :goto_1d
    if-ge v4, v3, :cond_38

    aget-byte v6, p0, v4

    const/4 v7, 0x1

    add-int/2addr v5, v7

    if-le v5, v7, :cond_28

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_28
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-interface {v0, v6}, Lh/l;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final p(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const-string v0, "<this>"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, Ll/q;->r1(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Ll/h;

    invoke-direct {v0, p0}, Ll/h;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ll/h;->hasNext()Z

    move-result p0

    if-nez p0, :cond_1e

    sget-object p0, Lb/q;->c:Lb/q;

    goto :goto_44

    :cond_1e
    invoke-virtual {v0}, Ll/h;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0}, Ll/h;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2d

    invoke-static {p0}, Lt4/d;->n0(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_44

    :cond_2d
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_35
    invoke-virtual {v0}, Ll/h;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_43

    invoke-virtual {v0}, Ll/h;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_35

    :cond_43
    move-object p0, v1

    :goto_44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4d
    :goto_4d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_73

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ll/q;->r1(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "<this>"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "<!--"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4d

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4d

    :cond_73
    new-instance v4, Lz4/c;

    const/4 p0, 0x2

    invoke-direct {v4, p0}, Lz4/c;-><init>(I)V

    const/16 v5, 0x1e

    const-string v1, "\n"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lb/i;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lh/l;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
