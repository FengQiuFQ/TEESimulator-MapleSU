.class public final Le1/a0;
.super Le1/b;


# instance fields
.field public final d:[B

.field public q:Le1/b0;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Le1/b;-><init>(Z)V

    const/16 v0, 0x39

    new-array v1, v0, [B

    iput-object v1, p0, Le1/a0;->d:[B

    array-length p0, v1

    if-ne p0, v0, :cond_11

    invoke-virtual {p1, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-void

    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "k"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>([B)V
    .registers 4

    array-length v0, p1

    const/16 v1, 0x39

    if-ne v0, v1, :cond_12

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Le1/b;-><init>(Z)V

    new-array v0, v1, [B

    iput-object v0, p0, Le1/a0;->d:[B

    const/4 p0, 0x0

    invoke-static {p1, p0, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'buf\' must have length 57"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a()Le1/b0;
    .registers 4

    iget-object v0, p0, Le1/a0;->d:[B

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Le1/a0;->q:Le1/b0;

    if-nez v1, :cond_17

    new-instance v1, Le1/b0;

    iget-object v2, p0, Le1/a0;->d:[B

    invoke-static {v2}, Lq2/f;->q([B)Lq2/e;

    move-result-object v2

    invoke-direct {v1, v2}, Le1/b0;-><init>(Lq2/e;)V

    iput-object v1, p0, Le1/a0;->q:Le1/b0;

    goto :goto_17

    :catchall_15
    move-exception p0

    goto :goto_1b

    :cond_17
    :goto_17
    iget-object p0, p0, Le1/a0;->q:Le1/b0;

    monitor-exit v0

    return-object p0

    :goto_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_15

    throw p0
.end method

.method public final b(I[B[B[B)V
    .registers 24

    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual/range {p0 .. p0}, Le1/a0;->a()Le1/b0;

    move-result-object v4

    const/16 v5, 0x39

    new-array v5, v5, [B

    const/4 v6, 0x0

    iget-object v4, v4, Le1/b0;->d:Lq2/e;

    invoke-static {v4, v5, v6}, Lq2/f;->o(Lq2/e;[BI)V

    if-eqz v1, :cond_149

    array-length v4, v1

    const/16 v6, 0xff

    if-gt v4, v6, :cond_141

    if-eqz v1, :cond_139

    array-length v4, v1

    const/16 v6, 0x100

    if-ge v4, v6, :cond_139

    new-instance v4, Ls0/g0;

    invoke-direct {v4, v6}, Ls0/g0;-><init>(I)V

    const/16 v6, 0x72

    new-array v7, v6, [B

    move-object/from16 v8, p0

    iget-object v8, v8, Le1/a0;->d:[B

    const/4 v9, 0x0

    const/16 v10, 0x39

    invoke-virtual {v4, v8, v9, v10}, Ls0/n;->f([BII)V

    invoke-virtual {v4, v7, v9, v6}, Ls0/g0;->b([BII)I

    new-array v8, v10, [B

    invoke-static {v7, v8}, Lq2/f;->P([B[B)V

    const/4 v11, 0x0

    invoke-static {v4, v11, v1}, Lq2/f;->j(Ls0/g0;B[B)V

    invoke-virtual {v4, v7, v10, v10}, Ls0/n;->f([BII)V

    invoke-virtual {v4, v2, v9, v0}, Ls0/n;->f([BII)V

    invoke-virtual {v4, v7, v9, v6}, Ls0/g0;->b([BII)I

    invoke-static {v7}, Lq2/f;->R([B)[B

    move-result-object v12

    new-array v13, v10, [B

    new-instance v14, Lq2/d;

    const/4 v15, 0x1

    invoke-direct {v14, v15}, Lq2/d;-><init>(I)V

    invoke-static {v12, v14}, Lq2/f;->T([BLq2/d;)V

    const/16 v15, 0x10

    new-array v6, v15, [I

    new-array v10, v15, [I

    iget-object v11, v14, Lq2/d;->c:[I

    invoke-static {v11, v10}, Lp2/a;->x([I[I)V

    iget-object v11, v14, Lq2/d;->a:[I

    invoke-static {v10, v11, v6}, Lp2/a;->D([I[I[I)V

    iget-object v11, v14, Lq2/d;->b:[I

    invoke-static {v10, v11, v10}, Lp2/a;->D([I[I[I)V

    const/4 v11, 0x1

    invoke-static {v11, v6}, Lp2/a;->I(I[I)V

    const/4 v14, -0x1

    invoke-static {v14, v6}, Lp2/a;->I(I[I)V

    invoke-static {v11, v10}, Lp2/a;->I(I[I)V

    invoke-static {v14, v10}, Lp2/a;->I(I[I)V

    move/from16 v16, v9

    new-array v9, v15, [I

    new-array v14, v15, [I

    move/from16 v17, v11

    new-array v11, v15, [I

    invoke-static {v6, v14}, Lp2/a;->M([I[I)V

    invoke-static {v10, v11}, Lp2/a;->M([I[I)V

    invoke-static {v14, v11, v9}, Lp2/a;->D([I[I[I)V

    invoke-static {v14, v11, v14}, Lp2/a;->b([I[I[I)V

    move-object/from16 v18, v6

    const v6, 0x98a9

    invoke-static {v6, v9, v9}, Lp2/a;->A(I[I[I)V

    new-array v6, v15, [I

    aput v17, v6, v16

    invoke-static {v9, v6, v9}, Lp2/a;->O([I[I[I)V

    invoke-static {v9, v14, v9}, Lp2/a;->b([I[I[I)V

    move/from16 v6, v17

    invoke-static {v6, v9}, Lp2/a;->I(I[I)V

    const/4 v14, -0x1

    invoke-static {v14, v9}, Lp2/a;->I(I[I)V

    invoke-static {v6, v11}, Lp2/a;->I(I[I)V

    invoke-static {v14, v11}, Lp2/a;->I(I[I)V

    invoke-static {v9}, Lp2/a;->z([I)I

    move-result v9

    invoke-static {v11}, Lp2/a;->z([I)I

    move-result v11

    not-int v11, v11

    and-int/2addr v9, v11

    move/from16 v11, v16

    invoke-static {v11, v13, v10}, Lp2/a;->q(I[B[I)V

    aget v10, v18, v11

    and-int/2addr v6, v10

    shl-int/lit8 v6, v6, 0x7

    int-to-byte v6, v6

    const/16 v10, 0x38

    aput-byte v6, v13, v10

    if-eqz v9, :cond_133

    const/4 v6, 0x0

    invoke-static {v4, v6, v1}, Lq2/f;->j(Ls0/g0;B[B)V

    const/16 v1, 0x39

    invoke-virtual {v4, v13, v11, v1}, Ls0/n;->f([BII)V

    invoke-virtual {v4, v5, v11, v1}, Ls0/n;->f([BII)V

    invoke-virtual {v4, v2, v11, v0}, Ls0/n;->f([BII)V

    const/16 v0, 0x72

    invoke-virtual {v4, v7, v11, v0}, Ls0/g0;->b([BII)I

    invoke-static {v7}, Lq2/f;->R([B)[B

    move-result-object v0

    const/16 v1, 0x1c

    new-array v2, v1, [I

    invoke-static {v12, v2}, Lq2/f;->d([B[I)V

    const/16 v4, 0xe

    new-array v5, v4, [I

    invoke-static {v0, v5}, Lq2/f;->d([B[I)V

    new-array v0, v4, [I

    invoke-static {v8, v0}, Lq2/f;->d([B[I)V

    const-wide/16 v6, 0x0

    const/4 v11, 0x0

    :goto_fe
    if-ge v11, v4, :cond_11e

    aget v8, v5, v11

    invoke-static {v4, v8, v11, v0, v2}, Ls2/b;->N(III[I[I)I

    move-result v8

    int-to-long v8, v8

    const-wide v14, 0xffffffffL

    and-long/2addr v8, v14

    add-long/2addr v6, v8

    add-int/lit8 v8, v11, 0xe

    aget v9, v2, v8

    int-to-long v9, v9

    and-long/2addr v9, v14

    add-long/2addr v6, v9

    long-to-int v9, v6

    aput v9, v2, v8

    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    add-int/lit8 v11, v11, 0x1

    goto :goto_fe

    :cond_11e
    const/16 v6, 0x72

    new-array v0, v6, [B

    invoke-static {v1, v0, v2}, Lq2/f;->k(I[B[I)V

    invoke-static {v0}, Lq2/f;->R([B)[B

    move-result-object v0

    const/16 v1, 0x39

    const/4 v11, 0x0

    invoke-static {v13, v11, v3, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0, v11, v3, v1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_133
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_139
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ctx"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_141
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ctx"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_149
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'ctx\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
