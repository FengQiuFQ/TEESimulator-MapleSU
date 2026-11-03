.class public final Lq2/a;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v1, v0, [I

    iput-object v1, p0, Lq2/a;->a:Ljava/lang/Object;

    new-array v1, v0, [I

    iput-object v1, p0, Lq2/a;->b:Ljava/lang/Object;

    new-array v1, v0, [I

    iput-object v1, p0, Lq2/a;->c:Ljava/lang/Object;

    new-array v1, v0, [I

    iput-object v1, p0, Lq2/a;->d:Ljava/lang/Object;

    new-array v0, v0, [I

    iput-object v0, p0, Lq2/a;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lq3/h;[B[B)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lq2/a;->a:Ljava/lang/Object;

    iput-object p3, p0, Lq2/a;->b:Ljava/lang/Object;

    iput-object p1, p0, Lq2/a;->c:Ljava/lang/Object;

    new-instance v0, Lq3/a;

    invoke-direct {v0, p1}, Lq3/a;-><init>(Lq3/h;)V

    iput-object v0, p0, Lq2/a;->d:Ljava/lang/Object;

    new-instance v6, Lb1/a;

    invoke-direct {v6}, Lb1/a;-><init>()V

    iget v0, p1, Lq3/h;->f:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v6, v0}, Lb1/a;->w(I)V

    const-wide/16 v0, 0x0

    invoke-virtual {v6, v0, v1}, Lb1/a;->x(J)V

    if-eqz p2, :cond_30

    const/4 v3, 0x0

    iget v4, p1, Lq3/h;->j:I

    move-object v1, p0

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Lq2/a;->b([BII[BLb1/a;)[B

    move-result-object p0

    iput-object p0, v1, Lq2/a;->e:Ljava/lang/Object;

    return-void

    :cond_30
    move-object v1, p0

    const/4 p0, 0x0

    iput-object p0, v1, Lq2/a;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(IJ[B)[B
    .registers 15

    new-instance v5, Lb1/a;

    invoke-direct {v5}, Lb1/a;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lb1/a;->w(I)V

    invoke-virtual {v5, p2, p3}, Lb1/a;->x(J)V

    iget-object v0, p0, Lq2/a;->a:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, [B

    iget-object v0, p0, Lq2/a;->b:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, [B

    move-object v0, p0

    move v3, p1

    move-object v1, p4

    invoke-virtual/range {v0 .. v5}, Lq2/a;->e([B[BI[BLb1/a;)Lq3/e;

    move-result-object v2

    move v9, v3

    move-object v3, v1

    move v1, v9

    iget-object p0, v0, Lq2/a;->c:Ljava/lang/Object;

    check-cast p0, Lq3/h;

    iget p1, p0, Lq3/h;->f:I

    new-array p4, p1, [Lq3/e;

    aput-object v2, p4, v6

    invoke-virtual {v5, v6}, Lb1/a;->w(I)V

    invoke-virtual {v5, p2, p3}, Lb1/a;->x(J)V

    iget-object v4, v0, Lq2/a;->b:Ljava/lang/Object;

    check-cast v4, [B

    invoke-virtual/range {v0 .. v5}, Lq2/a;->d(ILq3/e;[B[BLb1/a;)[B

    move-result-object v1

    const/4 v7, 0x1

    move v8, v7

    :goto_3a
    if-ge v8, p1, :cond_6b

    iget v2, p0, Lq3/h;->j:I

    shl-int v3, v7, v2

    sub-int/2addr v3, v7

    int-to-long v3, v3

    and-long/2addr v3, p2

    long-to-int v3, v3

    ushr-long/2addr p2, v2

    invoke-virtual {v5, v8}, Lb1/a;->w(I)V

    invoke-virtual {v5, p2, p3}, Lb1/a;->x(J)V

    iget-object v2, v0, Lq2/a;->a:Ljava/lang/Object;

    check-cast v2, [B

    iget-object v4, v0, Lq2/a;->b:Ljava/lang/Object;

    check-cast v4, [B

    invoke-virtual/range {v0 .. v5}, Lq2/a;->e([B[BI[BLb1/a;)Lq3/e;

    move-result-object v2

    aput-object v2, p4, v8

    add-int/lit8 v4, p1, -0x1

    if-ge v8, v4, :cond_68

    iget-object v4, v0, Lq2/a;->b:Ljava/lang/Object;

    check-cast v4, [B

    move v9, v3

    move-object v3, v1

    move v1, v9

    invoke-virtual/range {v0 .. v5}, Lq2/a;->d(ILq3/e;[B[BLb1/a;)[B

    move-result-object v1

    :cond_68
    add-int/lit8 v8, v8, 0x1

    goto :goto_3a

    :cond_6b
    new-array p0, p1, [[B

    :goto_6d
    if-eq v6, p1, :cond_82

    aget-object p2, p4, v6

    iget-object p3, p2, Lq3/e;->a:[B

    iget-object p2, p2, Lq3/e;->b:[[B

    invoke-static {p2}, Lm4/d;->m([[B)[B

    move-result-object p2

    invoke-static {p3, p2}, Lm4/d;->j([B[B)[B

    move-result-object p2

    aput-object p2, p0, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_6d

    :cond_82
    invoke-static {p0}, Lm4/d;->m([[B)[B

    move-result-object p0

    return-object p0
.end method

.method public b([BII[BLb1/a;)[B
    .registers 24

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v6, p4

    ushr-int v2, v1, p3

    shl-int v2, v2, p3

    if-eq v2, v1, :cond_e

    const/4 v0, 0x0

    return-object v0

    :cond_e
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    new-instance v9, Lb1/a;

    move-object/from16 v2, p5

    invoke-direct {v9, v2}, Lb1/a;-><init>(Lb1/a;)V

    const/4 v10, 0x0

    move v11, v10

    :goto_1c
    const/4 v12, 0x1

    shl-int v2, v12, p3

    if-ge v11, v2, :cond_e8

    invoke-virtual {v9, v10}, Lb1/a;->A(I)V

    add-int v13, v1, v11

    invoke-virtual {v9, v13}, Lb1/a;->v(I)V

    iget-object v2, v0, Lq2/a;->d:Ljava/lang/Object;

    check-cast v2, Lq3/a;

    new-instance v14, Lb1/a;

    invoke-direct {v14, v9}, Lb1/a;-><init>(Lb1/a;)V

    iget-object v15, v2, Lq3/a;->a:Lq3/h;

    iget v3, v15, Lq3/h;->c:I

    new-array v4, v3, [[B

    move v5, v10

    :goto_39
    if-ge v5, v3, :cond_8c

    new-instance v7, Lb1/a;

    invoke-direct {v7, v9}, Lb1/a;-><init>(Lb1/a;)V

    iget-object v12, v7, Lb1/a;->h:Ljava/lang/Object;

    check-cast v12, [B

    const/4 v10, 0x5

    invoke-virtual {v7, v10}, Lb1/a;->A(I)V

    invoke-virtual {v9}, Lb1/a;->q()I

    move-result v10

    invoke-virtual {v7, v10}, Lb1/a;->v(I)V

    const/16 v10, 0x18

    invoke-static {v12, v5, v10}, Lm4/d;->w([BII)V

    const/16 v10, 0x1c

    const/4 v1, 0x0

    invoke-static {v12, v1, v10}, Lm4/d;->w([BII)V

    move/from16 v17, v3

    move-object/from16 v16, v4

    move-object/from16 v4, p1

    invoke-virtual {v15, v7, v6, v4}, Lq3/h;->d(Lb1/a;[B[B)[B

    move-result-object v3

    invoke-virtual {v7, v1}, Lb1/a;->A(I)V

    invoke-virtual {v9}, Lb1/a;->q()I

    move-result v1

    invoke-virtual {v7, v1}, Lb1/a;->v(I)V

    const/16 v1, 0x18

    invoke-static {v12, v5, v1}, Lm4/d;->w([BII)V

    const/4 v1, 0x0

    invoke-static {v12, v1, v10}, Lm4/d;->w([BII)V

    const/4 v4, 0x0

    move v10, v5

    const/16 v5, 0xf

    invoke-virtual/range {v2 .. v7}, Lq3/a;->c([BII[BLb1/a;)[B

    move-result-object v1

    aput-object v1, v16, v10

    add-int/lit8 v5, v10, 0x1

    move/from16 v1, p2

    move-object/from16 v4, v16

    move/from16 v3, v17

    const/4 v10, 0x0

    const/4 v12, 0x1

    goto :goto_39

    :cond_8c
    move-object/from16 v16, v4

    move v1, v12

    invoke-virtual {v14, v1}, Lb1/a;->A(I)V

    invoke-virtual {v9}, Lb1/a;->q()I

    move-result v2

    invoke-virtual {v14, v2}, Lb1/a;->v(I)V

    invoke-static/range {v16 .. v16}, Lm4/d;->m([[B)[B

    move-result-object v2

    invoke-virtual {v15, v14, v6, v2}, Lq3/h;->f(Lb1/a;[B[B)[B

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v9, v3}, Lb1/a;->A(I)V

    invoke-virtual {v9, v1}, Lb1/a;->y(I)V

    invoke-virtual {v9, v13}, Lb1/a;->z(I)V

    move v4, v1

    :goto_ac
    invoke-virtual {v8}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_d8

    const/4 v5, 0x0

    invoke-virtual {v8, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lq3/d;

    iget v7, v7, Lq3/d;->b:I

    if-ne v7, v4, :cond_d8

    sub-int/2addr v13, v1

    div-int/2addr v13, v3

    invoke-virtual {v9, v13}, Lb1/a;->z(I)V

    invoke-virtual {v8, v5}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lq3/d;

    iget-object v5, v0, Lq2/a;->c:Ljava/lang/Object;

    check-cast v5, Lq3/h;

    iget-object v7, v7, Lq3/d;->a:[B

    invoke-virtual {v5, v9, v6, v7, v2}, Lq3/h;->b(Lb1/a;[B[B[B)[B

    move-result-object v2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v9, v4}, Lb1/a;->y(I)V

    goto :goto_ac

    :cond_d8
    new-instance v1, Lq3/d;

    invoke-direct {v1, v2, v4}, Lq3/d;-><init>([BI)V

    const/4 v5, 0x0

    invoke-virtual {v8, v5, v1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    add-int/lit8 v11, v11, 0x1

    move/from16 v1, p2

    move v10, v5

    goto/16 :goto_1c

    :cond_e8
    move v5, v10

    invoke-virtual {v8, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq3/d;

    iget-object v0, v0, Lq3/d;->a:[B

    return-object v0
.end method

.method public c([B[Lq3/e;[BJI[B)Z
    .registers 14

    new-instance v5, Lb1/a;

    invoke-direct {v5}, Lb1/a;-><init>()V

    const/4 v0, 0x0

    aget-object v2, p2, v0

    invoke-virtual {v5, v0}, Lb1/a;->w(I)V

    invoke-virtual {v5, p4, p5}, Lb1/a;->x(J)V

    move-object v0, p0

    move-object v3, p1

    move-object v4, p3

    move v1, p6

    invoke-virtual/range {v0 .. v5}, Lq2/a;->d(ILq3/e;[B[BLb1/a;)[B

    move-result-object p0

    const/4 p1, 0x1

    move-object v3, p0

    move p0, p1

    :goto_19
    iget-object p3, v0, Lq2/a;->c:Ljava/lang/Object;

    check-cast p3, Lq3/h;

    iget p6, p3, Lq3/h;->f:I

    if-ge p0, p6, :cond_39

    iget p3, p3, Lq3/h;->j:I

    shl-int p6, p1, p3

    sub-int/2addr p6, p1

    int-to-long v1, p6

    and-long/2addr v1, p4

    long-to-int v1, v1

    ushr-long/2addr p4, p3

    aget-object v2, p2, p0

    invoke-virtual {v5, p0}, Lb1/a;->w(I)V

    invoke-virtual {v5, p4, p5}, Lb1/a;->x(J)V

    invoke-virtual/range {v0 .. v5}, Lq2/a;->d(ILq3/e;[B[BLb1/a;)[B

    move-result-object v3

    add-int/lit8 p0, p0, 0x1

    goto :goto_19

    :cond_39
    invoke-static {p7, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method public d(ILq3/e;[B[BLb1/a;)[B
    .registers 25

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lq2/a;->c:Ljava/lang/Object;

    move-object v8, v3

    check-cast v8, Lq3/h;

    new-instance v7, Lb1/a;

    move-object/from16 v3, p5

    invoke-direct {v7, v3}, Lb1/a;-><init>(Lb1/a;)V

    iget-object v3, v7, Lb1/a;->h:Ljava/lang/Object;

    move-object v9, v3

    check-cast v9, [B

    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Lb1/a;->A(I)V

    invoke-virtual {v7, v1}, Lb1/a;->v(I)V

    iget-object v11, v2, Lq3/e;->a:[B

    iget-object v12, v2, Lq3/e;->b:[[B

    iget-object v0, v0, Lq2/a;->d:Ljava/lang/Object;

    move-object v13, v0

    check-cast v13, Lq3/a;

    new-instance v0, Lb1/a;

    invoke-direct {v0, v7}, Lb1/a;-><init>(Lb1/a;)V

    iget-object v2, v13, Lq3/a;->a:Lq3/h;

    iget v3, v2, Lq3/h;->c:I

    iget v4, v2, Lq3/h;->a:I

    new-array v5, v3, [I

    const/16 v17, 0x0

    iget v6, v2, Lq3/h;->d:I

    const/4 v15, 0x0

    move-object/from16 v14, p3

    move-object/from16 v16, v5

    move/from16 v18, v6

    invoke-virtual/range {v13 .. v18}, Lq3/a;->b([BI[III)V

    move v5, v10

    move v6, v5

    :goto_44
    iget v14, v2, Lq3/h;->d:I

    if-ge v5, v14, :cond_50

    aget v14, v16, v5

    rsub-int/lit8 v14, v14, 0xf

    add-int/2addr v6, v14

    add-int/lit8 v5, v5, 0x1

    goto :goto_44

    :cond_50
    iget v5, v2, Lq3/h;->e:I

    iget v14, v2, Lq3/h;->b:I

    mul-int/2addr v5, v14

    rem-int/lit8 v14, v5, 0x8

    rsub-int/lit8 v14, v14, 0x8

    shl-int/2addr v6, v14

    add-int/lit8 v5, v5, 0x7

    div-int/lit8 v5, v5, 0x8

    const/4 v14, 0x4

    move v15, v14

    new-array v14, v15, [B

    invoke-static {v14, v6, v10}, Lm4/d;->w([BII)V

    sub-int/2addr v15, v5

    iget v5, v2, Lq3/h;->d:I

    iget v6, v2, Lq3/h;->e:I

    move/from16 v17, v5

    move/from16 v18, v6

    invoke-virtual/range {v13 .. v18}, Lq3/a;->b([BI[III)V

    new-array v5, v4, [B

    new-array v14, v3, [[B

    move v15, v10

    :goto_76
    if-ge v15, v3, :cond_a4

    const/16 v6, 0x18

    invoke-static {v9, v15, v6}, Lm4/d;->w([BII)V

    mul-int v6, v15, v4

    invoke-static {v11, v6, v5, v10, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v6, v4

    aget v4, v16, v15

    move/from16 v17, v3

    move-object v3, v5

    rsub-int/lit8 v5, v4, 0xf

    move-object/from16 v18, v13

    move-object v13, v2

    move-object/from16 v2, v18

    move/from16 v18, v6

    move-object/from16 v6, p4

    invoke-virtual/range {v2 .. v7}, Lq3/a;->c([BII[BLb1/a;)[B

    move-result-object v4

    aput-object v4, v14, v15

    add-int/lit8 v15, v15, 0x1

    move-object v4, v13

    move-object v13, v2

    move-object v2, v4

    move-object v5, v3

    move/from16 v3, v17

    move/from16 v4, v18

    goto :goto_76

    :cond_a4
    move-object/from16 v6, p4

    move-object v13, v2

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lb1/a;->A(I)V

    invoke-virtual {v7}, Lb1/a;->q()I

    move-result v3

    invoke-virtual {v0, v3}, Lb1/a;->v(I)V

    invoke-static {v14}, Lm4/d;->m([[B)[B

    move-result-object v3

    invoke-virtual {v13, v0, v6, v3}, Lq3/h;->f(Lb1/a;[B[B)[B

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v7, v3}, Lb1/a;->A(I)V

    invoke-virtual {v7, v1}, Lb1/a;->z(I)V

    :goto_c1
    iget v4, v8, Lq3/h;->j:I

    if-ge v10, v4, :cond_f1

    add-int/lit8 v4, v10, 0x1

    invoke-virtual {v7, v4}, Lb1/a;->y(I)V

    shl-int v5, v2, v10

    and-int/2addr v5, v1

    const/16 v11, 0x1c

    if-nez v5, :cond_e0

    invoke-static {v11, v9}, Lm4/d;->b(I[B)I

    move-result v5

    div-int/2addr v5, v3

    invoke-virtual {v7, v5}, Lb1/a;->z(I)V

    aget-object v5, v12, v10

    invoke-virtual {v8, v7, v6, v0, v5}, Lq3/h;->b(Lb1/a;[B[B[B)[B

    move-result-object v0

    goto :goto_ef

    :cond_e0
    invoke-static {v11, v9}, Lm4/d;->b(I[B)I

    move-result v5

    sub-int/2addr v5, v2

    div-int/2addr v5, v3

    invoke-virtual {v7, v5}, Lb1/a;->z(I)V

    aget-object v5, v12, v10

    invoke-virtual {v8, v7, v6, v5, v0}, Lq3/h;->b(Lb1/a;[B[B[B)[B

    move-result-object v0

    :goto_ef
    move v10, v4

    goto :goto_c1

    :cond_f1
    return-object v0
.end method

.method public e([B[BI[BLb1/a;)Lq3/e;
    .registers 24

    move-object/from16 v0, p0

    move/from16 v6, p3

    move-object/from16 v7, p5

    iget-object v1, v0, Lq2/a;->c:Ljava/lang/Object;

    check-cast v1, Lq3/h;

    iget v8, v1, Lq3/h;->j:I

    new-array v9, v8, [[B

    new-instance v5, Lb1/a;

    invoke-direct {v5, v7}, Lb1/a;-><init>(Lb1/a;)V

    const/4 v1, 0x2

    invoke-virtual {v5, v1}, Lb1/a;->A(I)V

    iget-object v1, v7, Lb1/a;->h:Ljava/lang/Object;

    check-cast v1, [B

    const/4 v10, 0x0

    invoke-static {v10, v1}, Lm4/d;->b(I[B)I

    move-result v2

    invoke-virtual {v5, v2}, Lb1/a;->w(I)V

    const/16 v11, 0x8

    invoke-static {v11, v1}, Lm4/d;->c(I[B)J

    move-result-wide v1

    invoke-virtual {v5, v1, v2}, Lb1/a;->x(J)V

    move v3, v10

    :goto_2d
    if-ge v3, v8, :cond_42

    ushr-int v1, v6, v3

    xor-int/lit8 v1, v1, 0x1

    shl-int v2, v1, v3

    move-object/from16 v1, p2

    move-object/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Lq2/a;->b([BII[BLb1/a;)[B

    move-result-object v2

    aput-object v2, v9, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    :cond_42
    new-instance v1, Lb1/a;

    invoke-direct {v1, v7}, Lb1/a;-><init>(Lb1/a;)V

    invoke-virtual {v1, v10}, Lb1/a;->A(I)V

    invoke-virtual {v1, v6}, Lb1/a;->v(I)V

    iget-object v0, v0, Lq2/a;->d:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lq3/a;

    new-instance v0, Lb1/a;

    invoke-direct {v0, v1}, Lb1/a;-><init>(Lb1/a;)V

    iget-object v3, v0, Lb1/a;->h:Ljava/lang/Object;

    move-object v8, v3

    check-cast v8, [B

    iget-object v12, v2, Lq3/a;->a:Lq3/h;

    iget v13, v12, Lq3/h;->c:I

    iget v14, v12, Lq3/h;->e:I

    new-array v5, v13, [I

    const/4 v6, 0x0

    iget v7, v12, Lq3/h;->d:I

    const/4 v4, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lq3/a;->b([BI[III)V

    move v3, v10

    move v4, v3

    :goto_6f
    iget v6, v12, Lq3/h;->d:I

    if-ge v3, v6, :cond_7b

    aget v6, v5, v3

    rsub-int/lit8 v6, v6, 0xf

    add-int/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_6f

    :cond_7b
    iget v3, v12, Lq3/h;->b:I

    rem-int/lit8 v6, v3, 0x8

    if-eqz v6, :cond_87

    mul-int v6, v14, v3

    rem-int/2addr v6, v11

    rsub-int/lit8 v6, v6, 0x8

    shl-int/2addr v4, v6

    :cond_87
    mul-int/2addr v14, v3

    add-int/lit8 v14, v14, 0x7

    div-int/2addr v14, v11

    const/4 v3, 0x4

    move v6, v3

    new-array v3, v6, [B

    invoke-static {v3, v4, v10}, Lm4/d;->w([BII)V

    rsub-int/lit8 v4, v14, 0x4

    iget v6, v12, Lq3/h;->d:I

    iget v7, v12, Lq3/h;->e:I

    invoke-virtual/range {v2 .. v7}, Lq3/a;->b([BI[III)V

    new-array v3, v13, [[B

    move v4, v10

    :goto_9e
    if-ge v4, v13, :cond_e8

    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Lb1/a;->A(I)V

    invoke-virtual {v1}, Lb1/a;->q()I

    move-result v6

    invoke-virtual {v0, v6}, Lb1/a;->v(I)V

    const/16 v6, 0x18

    invoke-static {v8, v4, v6}, Lm4/d;->w([BII)V

    const/16 v7, 0x1c

    invoke-static {v8, v10, v7}, Lm4/d;->w([BII)V

    move-object/from16 v11, p2

    move-object/from16 v14, p4

    move v15, v13

    invoke-virtual {v12, v0, v14, v11}, Lq3/h;->d(Lb1/a;[B[B)[B

    move-result-object v13

    invoke-virtual {v0, v10}, Lb1/a;->A(I)V

    invoke-virtual {v1}, Lb1/a;->q()I

    move-result v7

    invoke-virtual {v0, v7}, Lb1/a;->v(I)V

    invoke-static {v8, v4, v6}, Lm4/d;->w([BII)V

    const/16 v6, 0x1c

    invoke-static {v8, v10, v6}, Lm4/d;->w([BII)V

    const/4 v14, 0x0

    move v6, v15

    aget v15, v5, v4

    move-object/from16 v16, p4

    move-object/from16 v17, v0

    move-object v0, v12

    move-object v12, v2

    invoke-virtual/range {v12 .. v17}, Lq3/a;->c([BII[BLb1/a;)[B

    move-result-object v2

    aput-object v2, v3, v4

    add-int/lit8 v4, v4, 0x1

    move v13, v6

    move-object v2, v12

    move-object v12, v0

    move-object/from16 v0, v17

    goto :goto_9e

    :cond_e8
    invoke-static {v3}, Lm4/d;->m([[B)[B

    move-result-object v0

    new-instance v1, Lq3/e;

    invoke-direct {v1, v0, v9}, Lq3/e;-><init>([B[[B)V

    return-object v1
.end method
