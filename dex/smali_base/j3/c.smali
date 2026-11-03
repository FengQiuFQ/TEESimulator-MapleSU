.class public final Lj3/c;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lj3/a;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:Li1/g;

.field public final i:I


# direct methods
.method public constructor <init>(Lj3/a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj3/c;->a:Lj3/a;

    iget v0, p1, Lj3/a;->c:I

    iput v0, p0, Lj3/c;->b:I

    iget v0, p1, Lj3/a;->k:I

    iput v0, p0, Lj3/c;->c:I

    iget v0, p1, Lj3/a;->d:I

    iput v0, p0, Lj3/c;->d:I

    iget v0, p1, Lj3/a;->j:I

    iput v0, p0, Lj3/c;->e:I

    iget v0, p1, Lj3/a;->f:I

    iput v0, p0, Lj3/c;->f:I

    iget v0, p1, Lj3/a;->e:I

    iput v0, p0, Lj3/c;->g:I

    iget-object p1, p1, Lj3/a;->p:Li1/g;

    iput-object p1, p0, Lj3/c;->h:Li1/g;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x3

    iput p1, p0, Lj3/c;->i:I

    return-void
.end method

.method public static c(Lj3/j;II[BI)I
    .registers 12

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v0, p2, :cond_47

    add-int/lit8 v2, v1, 0x3

    if-gt v2, p4, :cond_47

    aget-byte v3, p3, v1

    and-int/lit16 v3, v3, 0xff

    int-to-short v3, v3

    add-int/lit8 v4, v1, 0x1

    aget-byte v4, p3, v4

    and-int/lit16 v4, v4, 0xff

    int-to-short v4, v4

    shl-int/lit8 v5, v4, 0x8

    or-int/2addr v3, v5

    and-int/lit16 v3, v3, 0xfff

    int-to-short v3, v3

    shr-int/lit8 v4, v4, 0x4

    add-int/lit8 v1, v1, 0x2

    aget-byte v1, p3, v1

    and-int/lit16 v1, v1, 0xff

    int-to-short v1, v1

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v1, v4

    and-int/lit16 v1, v1, 0xfff

    int-to-short v1, v1

    const/16 v4, 0xd01

    if-ge v3, v4, :cond_37

    add-int v5, p1, v0

    iget-object v6, p0, Lj3/j;->d:Ljava/lang/Object;

    check-cast v6, [S

    aput-short v3, v6, v5

    add-int/lit8 v0, v0, 0x1

    :cond_37
    if-ge v0, p2, :cond_45

    if-ge v1, v4, :cond_45

    add-int v3, p1, v0

    iget-object v4, p0, Lj3/j;->d:Ljava/lang/Object;

    check-cast v4, [S

    aput-short v1, v4, v3

    add-int/lit8 v0, v0, 0x1

    :cond_45
    move v1, v2

    goto :goto_2

    :cond_47
    return v0
.end method


# virtual methods
.method public final a([B[B[B)[B
    .registers 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    new-instance v4, Lj3/j;

    const/4 v5, 0x1

    iget-object v6, v0, Lj3/c;->a:Lj3/a;

    invoke-direct {v4, v6, v5}, Lj3/j;-><init>(Lj3/a;I)V

    new-instance v5, Lj3/j;

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Lj3/j;-><init>(Lj3/a;I)V

    new-instance v7, Lj3/j;

    const/4 v8, 0x1

    invoke-direct {v7, v6, v8}, Lj3/j;-><init>(Lj3/a;I)V

    new-instance v8, Lj3/j;

    const/4 v9, 0x1

    invoke-direct {v8, v6, v9}, Lj3/j;-><init>(Lj3/a;I)V

    iget v9, v6, Lj3/a;->c:I

    new-array v9, v9, [Lj3/j;

    new-instance v10, Lj3/j;

    const/4 v11, 0x0

    invoke-direct {v10, v6, v11}, Lj3/j;-><init>(Lj3/a;I)V

    new-instance v11, Lj3/j;

    const/4 v12, 0x0

    invoke-direct {v11, v6, v12}, Lj3/j;-><init>(Lj3/a;I)V

    const/16 v12, 0x100

    new-array v13, v12, [S

    const/16 v14, 0x20

    new-array v15, v14, [B

    invoke-virtual {v5, v1}, Lj3/j;->d([B)V

    iget v12, v0, Lj3/c;->d:I

    move-object/from16 v17, v13

    const/4 v13, 0x0

    invoke-static {v1, v12, v15, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v2

    if-ne v1, v14, :cond_3f6

    move v1, v13

    :goto_49
    const/16 v12, 0x8

    const/4 v13, 0x1

    if-ge v1, v14, :cond_73

    move/from16 v19, v14

    const/4 v14, 0x0

    :goto_51
    if-ge v14, v12, :cond_6d

    move/from16 p1, v12

    aget-byte v12, v2, v1

    and-int/lit16 v12, v12, 0xff

    shr-int/2addr v12, v14

    and-int/2addr v12, v13

    int-to-short v12, v12

    mul-int/lit8 v12, v12, -0x1

    int-to-short v12, v12

    mul-int/lit8 v20, v1, 0x8

    add-int v20, v20, v14

    and-int/lit16 v12, v12, 0x681

    int-to-short v12, v12

    aput-short v12, v17, v20

    add-int/lit8 v14, v14, 0x1

    move/from16 v12, p1

    goto :goto_51

    :cond_6d
    add-int/lit8 v1, v1, 0x1

    move/from16 v14, v19

    const/4 v13, 0x0

    goto :goto_49

    :cond_73
    move/from16 p1, v12

    move/from16 v19, v14

    const/4 v1, 0x0

    :goto_78
    iget v2, v0, Lj3/c;->b:I

    if-ge v1, v2, :cond_87

    new-instance v2, Lj3/j;

    const/4 v12, 0x1

    invoke-direct {v2, v6, v12}, Lj3/j;-><init>(Lj3/a;I)V

    aput-object v2, v9, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_78

    :cond_87
    invoke-virtual {v0, v9, v15, v13}, Lj3/c;->b([Lj3/j;[BZ)V

    const/4 v1, 0x0

    const/4 v12, 0x0

    :goto_8c
    if-ge v1, v2, :cond_9d

    iget-object v14, v4, Lj3/j;->d:Ljava/lang/Object;

    check-cast v14, [Lj3/j;

    aget-object v14, v14, v1

    invoke-virtual {v14, v3, v12}, Lj3/j;->e([BB)V

    add-int/lit8 v12, v12, 0x1

    int-to-byte v12, v12

    add-int/lit8 v1, v1, 0x1

    goto :goto_8c

    :cond_9d
    const/4 v1, 0x0

    :goto_9e
    const/16 v14, 0x80

    if-ge v1, v2, :cond_e2

    move/from16 v20, v13

    iget-object v13, v7, Lj3/j;->d:Ljava/lang/Object;

    check-cast v13, [Lj3/j;

    aget-object v13, v13, v1

    new-array v15, v14, [B

    iget-object v14, v13, Lj3/j;->e:Ljava/lang/Object;

    check-cast v14, Li1/g;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v21, v1

    array-length v1, v3

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v22, v9

    new-array v9, v1, [B

    move/from16 v23, v12

    array-length v12, v3

    const/4 v0, 0x0

    invoke-static {v3, v0, v9, v0, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v12, v3

    aput-byte v23, v9, v12

    iget-object v12, v14, Li1/g;->d:Ljava/lang/Object;

    check-cast v12, Ls0/g0;

    invoke-virtual {v12, v9, v0, v1}, Ls0/n;->f([BII)V

    const/16 v1, 0x80

    invoke-virtual {v12, v15, v0, v1}, Ls0/g0;->b([BII)I

    const/4 v0, 0x2

    invoke-static {v13, v15, v0}, Lj3/i;->b(Lj3/j;[BI)V

    add-int/lit8 v12, v23, 0x1

    int-to-byte v12, v12

    add-int/lit8 v1, v21, 0x1

    move-object/from16 v0, p0

    move/from16 v13, v20

    move-object/from16 v9, v22

    goto :goto_9e

    :cond_e2
    move-object/from16 v22, v9

    move/from16 v23, v12

    move/from16 v20, v13

    move v1, v14

    new-array v0, v1, [B

    iget-object v1, v10, Lj3/j;->e:Ljava/lang/Object;

    check-cast v1, Li1/g;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v9, v3

    add-int/lit8 v9, v9, 0x1

    new-array v12, v9, [B

    array-length v13, v3

    const/4 v14, 0x0

    invoke-static {v3, v14, v12, v14, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, v3

    aput-byte v23, v12, v3

    iget-object v1, v1, Li1/g;->d:Ljava/lang/Object;

    check-cast v1, Ls0/g0;

    invoke-virtual {v1, v12, v14, v9}, Ls0/n;->f([BII)V

    const/16 v3, 0x80

    invoke-virtual {v1, v0, v14, v3}, Ls0/g0;->b([BII)I

    const/4 v1, 0x2

    invoke-static {v10, v0, v1}, Lj3/i;->b(Lj3/j;[BI)V

    invoke-virtual {v4}, Lj3/j;->h()V

    const/4 v0, 0x0

    :goto_113
    if-ge v0, v2, :cond_123

    iget-object v1, v8, Lj3/j;->d:Ljava/lang/Object;

    check-cast v1, [Lj3/j;

    aget-object v1, v1, v0

    aget-object v3, v22, v0

    invoke-static {v1, v3, v4, v6}, Lj3/j;->f(Lj3/j;Lj3/j;Lj3/j;Lj3/a;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_113

    :cond_123
    invoke-static {v11, v5, v4, v6}, Lj3/j;->f(Lj3/j;Lj3/j;Lj3/j;Lj3/a;)V

    const/4 v0, 0x0

    :goto_127
    iget v1, v8, Lj3/j;->b:I

    if-ge v0, v1, :cond_137

    iget-object v1, v8, Lj3/j;->d:Ljava/lang/Object;

    check-cast v1, [Lj3/j;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lj3/j;->g()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_127

    :cond_137
    invoke-virtual {v11}, Lj3/j;->g()V

    const/4 v0, 0x0

    :goto_13b
    iget v1, v8, Lj3/j;->b:I

    if-ge v0, v1, :cond_151

    iget-object v1, v8, Lj3/j;->d:Ljava/lang/Object;

    check-cast v1, [Lj3/j;

    aget-object v1, v1, v0

    iget-object v2, v7, Lj3/j;->d:Ljava/lang/Object;

    check-cast v2, [Lj3/j;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lj3/j;->a(Lj3/j;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_13b

    :cond_151
    invoke-virtual {v11, v10}, Lj3/j;->a(Lj3/j;)V

    const/4 v0, 0x0

    const/16 v1, 0x100

    :goto_157
    if-ge v0, v1, :cond_168

    iget-object v2, v11, Lj3/j;->d:Ljava/lang/Object;

    check-cast v2, [S

    aget-short v3, v2, v0

    aget-short v4, v17, v0

    add-int/2addr v3, v4

    int-to-short v3, v3

    aput-short v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_157

    :cond_168
    const/4 v0, 0x0

    :goto_169
    iget v1, v8, Lj3/j;->b:I

    if-ge v0, v1, :cond_179

    iget-object v1, v8, Lj3/j;->d:Ljava/lang/Object;

    check-cast v1, [Lj3/j;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lj3/j;->i()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_169

    :cond_179
    invoke-virtual {v11}, Lj3/j;->i()V

    move-object/from16 v0, p0

    iget v1, v0, Lj3/c;->e:I

    new-array v1, v1, [B

    iget-object v2, v8, Lj3/j;->d:Ljava/lang/Object;

    check-cast v2, [Lj3/j;

    const/4 v3, 0x0

    :goto_187
    iget v4, v8, Lj3/j;->b:I

    if-ge v3, v4, :cond_193

    aget-object v4, v2, v3

    invoke-virtual {v4}, Lj3/j;->c()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_187

    :cond_193
    iget-object v3, v8, Lj3/j;->e:Ljava/lang/Object;

    check-cast v3, Lj3/a;

    iget v3, v3, Lj3/a;->f:I

    new-array v5, v3, [B

    mul-int/lit16 v6, v4, 0x140

    const/4 v10, 0x5

    const/4 v14, 0x4

    if-ne v3, v6, :cond_22c

    new-array v3, v14, [S

    const/4 v6, 0x0

    const/4 v15, 0x0

    :goto_1a5
    const/16 p3, 0x1f

    if-ge v6, v4, :cond_223

    const/4 v7, 0x0

    const/16 v16, 0xa

    :goto_1ac
    const/16 v8, 0x40

    if-ge v7, v8, :cond_21a

    const/4 v8, 0x0

    :goto_1b1
    const/16 v17, 0x7

    if-ge v8, v14, :cond_1de

    aget-object v9, v2, v6

    mul-int/lit8 v21, v7, 0x4

    add-int v21, v21, v8

    iget-object v9, v9, Lj3/j;->d:Ljava/lang/Object;

    check-cast v9, [S

    aget-short v9, v9, v21

    const/16 v21, 0x3

    const/16 v22, 0x6

    int-to-long v12, v9

    shl-long v12, v12, v16

    const-wide/16 v23, 0x681

    add-long v12, v12, v23

    const-wide/32 v23, 0x13afb7

    mul-long v12, v12, v23

    shr-long v12, v12, v19

    const-wide/16 v23, 0x3ff

    and-long v12, v12, v23

    long-to-int v9, v12

    int-to-short v9, v9

    aput-short v9, v3, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1b1

    :cond_1de
    const/16 v18, 0x0

    const/16 v21, 0x3

    const/16 v22, 0x6

    aget-short v8, v3, v18

    int-to-byte v9, v8

    aput-byte v9, v5, v15

    add-int/lit8 v9, v15, 0x1

    shr-int/lit8 v8, v8, 0x8

    aget-short v12, v3, v20

    shl-int/lit8 v13, v12, 0x2

    or-int/2addr v8, v13

    int-to-byte v8, v8

    aput-byte v8, v5, v9

    add-int/lit8 v8, v15, 0x2

    shr-int/lit8 v9, v12, 0x6

    const/4 v12, 0x2

    aget-short v13, v3, v12

    shl-int/lit8 v12, v13, 0x4

    or-int/2addr v9, v12

    int-to-byte v9, v9

    aput-byte v9, v5, v8

    add-int/lit8 v8, v15, 0x3

    shr-int/lit8 v9, v13, 0x4

    aget-short v12, v3, v21

    shl-int/lit8 v13, v12, 0x6

    or-int/2addr v9, v13

    int-to-byte v9, v9

    aput-byte v9, v5, v8

    add-int/lit8 v8, v15, 0x4

    const/4 v9, 0x2

    shr-int/2addr v12, v9

    int-to-byte v9, v12

    aput-byte v9, v5, v8

    add-int/lit8 v15, v15, 0x5

    add-int/lit8 v7, v7, 0x1

    goto :goto_1ac

    :cond_21a
    const/16 v17, 0x7

    const/16 v21, 0x3

    const/16 v22, 0x6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1a5

    :cond_223
    const/16 v17, 0x7

    const/16 v21, 0x3

    const/16 v22, 0x6

    :cond_229
    move v13, v14

    goto/16 :goto_2fa

    :cond_22c
    const/16 p3, 0x1f

    const/16 v16, 0xa

    const/16 v17, 0x7

    const/16 v21, 0x3

    const/16 v22, 0x6

    mul-int/lit16 v6, v4, 0x160

    if-ne v3, v6, :cond_3ee

    move/from16 v3, p1

    new-array v6, v3, [S

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_240
    if-ge v7, v4, :cond_229

    move/from16 v12, v19

    const/4 v9, 0x0

    :goto_245
    if-ge v9, v12, :cond_2f1

    const/4 v12, 0x0

    :goto_248
    if-ge v12, v3, :cond_273

    aget-object v3, v2, v7

    mul-int/lit8 v13, v9, 0x8

    add-int/2addr v13, v12

    iget-object v3, v3, Lj3/j;->d:Ljava/lang/Object;

    check-cast v3, [S

    aget-short v3, v3, v13

    move v13, v14

    int-to-long v14, v3

    const/16 v3, 0xb

    shl-long/2addr v14, v3

    const-wide/16 v23, 0x680

    add-long v14, v14, v23

    const-wide/32 v23, 0x9d7dc

    mul-long v14, v14, v23

    shr-long v14, v14, p3

    const-wide/16 v23, 0x7ff

    and-long v14, v14, v23

    long-to-int v3, v14

    int-to-short v3, v3

    aput-short v3, v6, v12

    add-int/lit8 v12, v12, 0x1

    move v14, v13

    const/16 v3, 0x8

    goto :goto_248

    :cond_273
    move v13, v14

    const/16 v18, 0x0

    aget-short v3, v6, v18

    int-to-byte v12, v3

    aput-byte v12, v5, v8

    add-int/lit8 v12, v8, 0x1

    const/16 v14, 0x8

    shr-int/2addr v3, v14

    aget-short v14, v6, v20

    shl-int/lit8 v15, v14, 0x3

    or-int/2addr v3, v15

    int-to-byte v3, v3

    aput-byte v3, v5, v12

    add-int/lit8 v3, v8, 0x2

    shr-int/lit8 v12, v14, 0x5

    const/4 v14, 0x2

    aget-short v15, v6, v14

    shl-int/lit8 v14, v15, 0x6

    or-int/2addr v12, v14

    int-to-byte v12, v12

    aput-byte v12, v5, v3

    add-int/lit8 v3, v8, 0x3

    shr-int/lit8 v12, v15, 0x2

    int-to-byte v12, v12

    aput-byte v12, v5, v3

    add-int/lit8 v3, v8, 0x4

    shr-int/lit8 v12, v15, 0xa

    aget-short v14, v6, v21

    shl-int/lit8 v15, v14, 0x1

    or-int/2addr v12, v15

    int-to-byte v12, v12

    aput-byte v12, v5, v3

    add-int/lit8 v3, v8, 0x5

    shr-int/lit8 v12, v14, 0x7

    aget-short v14, v6, v13

    shl-int/lit8 v15, v14, 0x4

    or-int/2addr v12, v15

    int-to-byte v12, v12

    aput-byte v12, v5, v3

    add-int/lit8 v3, v8, 0x6

    shr-int/lit8 v12, v14, 0x4

    aget-short v14, v6, v10

    shl-int/lit8 v15, v14, 0x7

    or-int/2addr v12, v15

    int-to-byte v12, v12

    aput-byte v12, v5, v3

    add-int/lit8 v3, v8, 0x7

    shr-int/lit8 v12, v14, 0x1

    int-to-byte v12, v12

    aput-byte v12, v5, v3

    add-int/lit8 v3, v8, 0x8

    shr-int/lit8 v12, v14, 0x9

    aget-short v14, v6, v22

    shl-int/lit8 v15, v14, 0x2

    or-int/2addr v12, v15

    int-to-byte v12, v12

    aput-byte v12, v5, v3

    add-int/lit8 v3, v8, 0x9

    shr-int/lit8 v12, v14, 0x6

    aget-short v14, v6, v17

    shl-int/lit8 v15, v14, 0x5

    or-int/2addr v12, v15

    int-to-byte v12, v12

    aput-byte v12, v5, v3

    add-int/lit8 v3, v8, 0xa

    shr-int/lit8 v12, v14, 0x3

    int-to-byte v12, v12

    aput-byte v12, v5, v3

    add-int/lit8 v8, v8, 0xb

    add-int/lit8 v9, v9, 0x1

    move v14, v13

    const/16 v3, 0x8

    const/16 v12, 0x20

    goto/16 :goto_245

    :cond_2f1
    move v13, v14

    add-int/lit8 v7, v7, 0x1

    const/16 v3, 0x8

    const/16 v19, 0x20

    goto/16 :goto_240

    :goto_2fa
    iget v2, v0, Lj3/c;->f:I

    const/4 v14, 0x0

    invoke-static {v5, v14, v1, v14, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v14, 0x8

    new-array v3, v14, [B

    iget v4, v11, Lj3/j;->b:I

    new-array v5, v4, [B

    invoke-virtual {v11}, Lj3/j;->c()V

    const/16 v6, 0x80

    if-ne v4, v6, :cond_367

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_311
    const/16 v12, 0x20

    if-ge v4, v12, :cond_3df

    const/4 v7, 0x0

    :goto_316
    if-ge v7, v14, :cond_334

    mul-int/lit8 v8, v4, 0x8

    add-int/2addr v8, v7

    iget-object v9, v11, Lj3/j;->d:Ljava/lang/Object;

    check-cast v9, [S

    aget-short v8, v9, v8

    shl-int/2addr v8, v13

    add-int/lit16 v8, v8, 0x681

    const v9, 0x13afb

    mul-int/2addr v8, v9

    shr-int/lit8 v8, v8, 0x1c

    and-int/lit8 v8, v8, 0xf

    int-to-byte v8, v8

    aput-byte v8, v3, v7

    add-int/lit8 v7, v7, 0x1

    const/16 v14, 0x8

    goto :goto_316

    :cond_334
    const/16 v18, 0x0

    aget-byte v7, v3, v18

    aget-byte v8, v3, v20

    shl-int/2addr v8, v13

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    add-int/lit8 v7, v6, 0x1

    const/4 v12, 0x2

    aget-byte v8, v3, v12

    aget-byte v9, v3, v21

    shl-int/2addr v9, v13

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v5, v7

    add-int/lit8 v7, v6, 0x2

    aget-byte v8, v3, v13

    aget-byte v9, v3, v10

    shl-int/2addr v9, v13

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v5, v7

    add-int/lit8 v7, v6, 0x3

    aget-byte v8, v3, v22

    aget-byte v9, v3, v17

    shl-int/2addr v9, v13

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v5, v7

    add-int/2addr v6, v13

    add-int/lit8 v4, v4, 0x1

    const/16 v14, 0x8

    goto :goto_311

    :cond_367
    const/16 v6, 0xa0

    if-ne v4, v6, :cond_3e6

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/16 v12, 0x20

    :goto_36f
    if-ge v4, v12, :cond_3df

    const/4 v7, 0x0

    const/16 v14, 0x8

    :goto_374
    if-ge v7, v14, :cond_390

    mul-int/lit8 v8, v4, 0x8

    add-int/2addr v8, v7

    iget-object v9, v11, Lj3/j;->d:Ljava/lang/Object;

    check-cast v9, [S

    aget-short v8, v9, v8

    shl-int/2addr v8, v10

    add-int/lit16 v8, v8, 0x680

    const v9, 0x9d7e

    mul-int/2addr v8, v9

    shr-int/lit8 v8, v8, 0x1b

    and-int/lit8 v8, v8, 0x1f

    int-to-byte v8, v8

    aput-byte v8, v3, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_374

    :cond_390
    const/16 v18, 0x0

    aget-byte v7, v3, v18

    aget-byte v8, v3, v20

    shl-int/2addr v8, v10

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    add-int/lit8 v7, v6, 0x1

    aget-byte v8, v3, v20

    shr-int/lit8 v8, v8, 0x3

    const/4 v9, 0x2

    aget-byte v15, v3, v9

    shl-int/2addr v15, v9

    or-int/2addr v8, v15

    aget-byte v9, v3, v21

    shl-int/lit8 v9, v9, 0x7

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v5, v7

    add-int/lit8 v7, v6, 0x2

    aget-byte v8, v3, v21

    shr-int/lit8 v8, v8, 0x1

    aget-byte v9, v3, v13

    shl-int/2addr v9, v13

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v5, v7

    add-int/lit8 v7, v6, 0x3

    aget-byte v8, v3, v13

    shr-int/2addr v8, v13

    aget-byte v9, v3, v10

    shl-int/lit8 v9, v9, 0x1

    or-int/2addr v8, v9

    aget-byte v9, v3, v22

    shl-int/lit8 v9, v9, 0x6

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v5, v7

    add-int/lit8 v7, v6, 0x4

    aget-byte v8, v3, v22

    const/4 v9, 0x2

    shr-int/2addr v8, v9

    aget-byte v15, v3, v17

    shl-int/lit8 v15, v15, 0x3

    or-int/2addr v8, v15

    int-to-byte v8, v8

    aput-byte v8, v5, v7

    add-int/2addr v6, v10

    add-int/lit8 v4, v4, 0x1

    goto :goto_36f

    :cond_3df
    iget v0, v0, Lj3/c;->g:I

    const/4 v14, 0x0

    invoke-static {v5, v14, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_3e6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "PolyCompressedBytes is neither 128 or 160!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3ee
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Kyber PolyVecCompressedBytes neither 320 * KyberK or 352 * KyberK!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3f6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "KYBER_INDCPA_MSGBYTES must be equal to KYBER_N/8 bytes!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b([Lj3/j;[BZ)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lj3/c;->h:Li1/g;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v2, Li1/g;->a:Ljava/lang/Object;

    check-cast v3, Ls0/g0;

    iget v4, v0, Lj3/c;->i:I

    mul-int/lit16 v4, v4, 0xa8

    add-int/lit8 v5, v4, 0x2

    new-array v5, v5, [B

    const/4 v6, 0x0

    move v7, v6

    :goto_17
    iget v8, v0, Lj3/c;->b:I

    if-ge v7, v8, :cond_69

    move v9, v6

    :goto_1c
    if-ge v9, v8, :cond_66

    if-eqz p3, :cond_26

    int-to-byte v10, v7

    int-to-byte v11, v9

    :goto_22
    invoke-virtual {v2, v1, v10, v11}, Li1/g;->i([BBB)V

    goto :goto_29

    :cond_26
    int-to-byte v10, v9

    int-to-byte v11, v7

    goto :goto_22

    :goto_29
    invoke-virtual {v3, v5, v6, v4}, Ls0/g0;->m([BII)I

    aget-object v10, p1, v7

    iget-object v10, v10, Lj3/j;->d:Ljava/lang/Object;

    check-cast v10, [Lj3/j;

    aget-object v10, v10, v9

    const/16 v11, 0x100

    invoke-static {v10, v6, v11, v5, v4}, Lj3/c;->c(Lj3/j;II[BI)I

    move-result v10

    move v12, v4

    :goto_3b
    if-ge v10, v11, :cond_63

    rem-int/lit8 v13, v12, 0x3

    move v14, v6

    :goto_40
    if-ge v14, v13, :cond_4c

    sub-int v15, v12, v13

    add-int/2addr v15, v14

    aget-byte v15, v5, v15

    aput-byte v15, v5, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_40

    :cond_4c
    const/16 v12, 0x150

    invoke-virtual {v3, v5, v13, v12}, Ls0/g0;->m([BII)I

    add-int/lit16 v12, v13, 0xa8

    aget-object v13, p1, v7

    iget-object v13, v13, Lj3/j;->d:Ljava/lang/Object;

    check-cast v13, [Lj3/j;

    aget-object v13, v13, v9

    rsub-int v14, v10, 0x100

    invoke-static {v13, v10, v14, v5, v12}, Lj3/c;->c(Lj3/j;II[BI)I

    move-result v13

    add-int/2addr v10, v13

    goto :goto_3b

    :cond_63
    add-int/lit8 v9, v9, 0x1

    goto :goto_1c

    :cond_66
    add-int/lit8 v7, v7, 0x1

    goto :goto_17

    :cond_69
    return-void
.end method
