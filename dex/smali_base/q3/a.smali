.class public final Lq3/a;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lq3/h;


# direct methods
.method public synthetic constructor <init>(Lq3/h;)V
    .registers 2

    iput-object p1, p0, Lq3/a;->a:Lq3/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([BII)[I
    .registers 11

    new-array v0, p2, [I

    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_7
    if-ge v2, p2, :cond_3f

    :goto_9
    if-ge v4, p1, :cond_23

    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    aget-byte v5, p0, v3

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x8

    goto :goto_9

    :cond_23
    sub-int/2addr v4, p1

    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v5

    const-wide/16 v6, 0x2

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    aput v5, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_3f
    return-object v0
.end method


# virtual methods
.method public b([BI[III)V
    .registers 12

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_3
    if-ge v0, p5, :cond_21

    if-nez v1, :cond_10

    add-int/lit8 v2, p2, 0x1

    aget-byte p2, p1, p2

    add-int/lit8 v1, v1, 0x8

    move v5, v2

    move v2, p2

    move p2, v5

    :cond_10
    iget-object v3, p0, Lq3/a;->a:Lq3/h;

    iget v3, v3, Lq3/h;->b:I

    sub-int/2addr v1, v3

    add-int/lit8 v3, p4, 0x1

    ushr-int v4, v2, v1

    and-int/lit8 v4, v4, 0xf

    aput v4, p3, p4

    add-int/lit8 v0, v0, 0x1

    move p4, v3

    goto :goto_3

    :cond_21
    return-void
.end method

.method public c([BII[BLb1/a;)[B
    .registers 10

    if-nez p3, :cond_7

    invoke-static {p1}, Lm4/d;->e([B)[B

    move-result-object p0

    return-object p0

    :cond_7
    add-int v0, p2, p3

    const/16 v1, 0xf

    if-le v0, v1, :cond_f

    const/4 p0, 0x0

    return-object p0

    :cond_f
    const/4 v0, 0x0

    :goto_10
    if-ge v0, p3, :cond_26

    add-int v1, p2, v0

    iget-object v2, p5, Lb1/a;->h:Ljava/lang/Object;

    check-cast v2, [B

    const/16 v3, 0x1c

    invoke-static {v2, v1, v3}, Lm4/d;->w([BII)V

    iget-object v1, p0, Lq3/a;->a:Lq3/h;

    invoke-virtual {v1, p5, p4, p1}, Lq3/h;->a(Lb1/a;[B[B)[B

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_26
    return-object p1
.end method

.method public d([Lq3/e;[B[BLb1/a;)[B
    .registers 24

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    iget-object v2, v1, Lb1/a;->h:Ljava/lang/Object;

    check-cast v2, [B

    const/4 v3, 0x2

    new-array v4, v3, [[B

    move-object/from16 v5, p0

    iget-object v5, v5, Lq3/a;->a:Lq3/h;

    iget v6, v5, Lq3/h;->h:I

    new-array v7, v6, [[B

    iget v8, v5, Lq3/h;->g:I

    move-object/from16 v9, p2

    invoke-static {v9, v8, v6}, Lq3/a;->a([BII)[I

    move-result-object v9

    const/4 v10, 0x0

    move v11, v10

    :goto_1d
    if-ge v11, v6, :cond_8e

    aget v12, v9, v11

    aget-object v13, p1, v11

    iget-object v13, v13, Lq3/e;->a:[B

    invoke-virtual {v1, v10}, Lb1/a;->y(I)V

    shl-int v14, v11, v8

    add-int/2addr v14, v12

    invoke-virtual {v1, v14}, Lb1/a;->z(I)V

    invoke-virtual {v5, v1, v0, v13}, Lq3/h;->a(Lb1/a;[B[B)[B

    move-result-object v13

    aput-object v13, v4, v10

    aget-object v13, p1, v11

    iget-object v13, v13, Lq3/e;->b:[[B

    shl-int v14, v11, v8

    add-int/2addr v14, v12

    invoke-virtual {v1, v14}, Lb1/a;->z(I)V

    move v14, v10

    :goto_3f
    if-ge v14, v8, :cond_83

    add-int/lit8 v15, v14, 0x1

    invoke-virtual {v1, v15}, Lb1/a;->y(I)V

    const/16 v16, 0x1

    shl-int v17, v16, v14

    and-int v17, v12, v17

    move/from16 v18, v3

    const/16 v3, 0x1c

    if-nez v17, :cond_66

    invoke-static {v3, v2}, Lm4/d;->b(I[B)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v3}, Lb1/a;->z(I)V

    aget-object v3, v4, v10

    aget-object v14, v13, v14

    invoke-virtual {v5, v1, v0, v3, v14}, Lq3/h;->b(Lb1/a;[B[B[B)[B

    move-result-object v3

    aput-object v3, v4, v16

    goto :goto_7b

    :cond_66
    invoke-static {v3, v2}, Lm4/d;->b(I[B)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v3}, Lb1/a;->z(I)V

    aget-object v3, v13, v14

    aget-object v14, v4, v10

    invoke-virtual {v5, v1, v0, v3, v14}, Lq3/h;->b(Lb1/a;[B[B[B)[B

    move-result-object v3

    aput-object v3, v4, v16

    :goto_7b
    aget-object v3, v4, v16

    aput-object v3, v4, v10

    move v14, v15

    move/from16 v3, v18

    goto :goto_3f

    :cond_83
    move/from16 v18, v3

    aget-object v3, v4, v10

    aput-object v3, v7, v11

    add-int/lit8 v11, v11, 0x1

    move/from16 v3, v18

    goto :goto_1d

    :cond_8e
    new-instance v2, Lb1/a;

    invoke-direct {v2, v1}, Lb1/a;-><init>(Lb1/a;)V

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lb1/a;->A(I)V

    invoke-virtual {v1}, Lb1/a;->q()I

    move-result v1

    invoke-virtual {v2, v1}, Lb1/a;->v(I)V

    invoke-static {v7}, Lm4/d;->m([[B)[B

    move-result-object v1

    invoke-virtual {v5, v2, v0, v1}, Lq3/h;->f(Lb1/a;[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public e(Lb1/a;[B[B[B)[Lq3/e;
    .registers 29

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    new-instance v2, Lb1/a;

    move-object/from16 v3, p1

    invoke-direct {v2, v3}, Lb1/a;-><init>(Lb1/a;)V

    move-object/from16 v4, p0

    iget-object v4, v4, Lq3/a;->a:Lq3/h;

    iget v5, v4, Lq3/h;->g:I

    iget v6, v4, Lq3/h;->h:I

    move-object/from16 v7, p2

    invoke-static {v7, v5, v6}, Lq3/a;->a([BII)[I

    move-result-object v7

    new-array v8, v6, [Lq3/e;

    const/4 v9, 0x0

    move v10, v9

    :goto_1d
    if-ge v10, v6, :cond_122

    aget v11, v7, v10

    const/4 v12, 0x6

    invoke-virtual {v2, v12}, Lb1/a;->A(I)V

    invoke-virtual {v3}, Lb1/a;->q()I

    move-result v13

    invoke-virtual {v2, v13}, Lb1/a;->v(I)V

    invoke-virtual {v2, v9}, Lb1/a;->y(I)V

    shl-int v13, v10, v5

    add-int/2addr v13, v11

    invoke-virtual {v2, v13}, Lb1/a;->z(I)V

    invoke-virtual {v4, v2, v1, v0}, Lq3/h;->d(Lb1/a;[B[B)[B

    move-result-object v13

    iget-object v14, v2, Lb1/a;->h:Ljava/lang/Object;

    check-cast v14, [B

    const/4 v15, 0x3

    const/16 v9, 0x10

    invoke-static {v14, v15, v9}, Lm4/d;->w([BII)V

    new-array v14, v5, [[B

    const/4 v9, 0x0

    :goto_46
    if-ge v9, v5, :cond_109

    ushr-int v16, v11, v9

    const/4 v15, 0x1

    xor-int/lit8 v16, v16, 0x1

    shl-int v18, v10, v5

    shl-int v16, v16, v9

    move/from16 v19, v15

    add-int v15, v18, v16

    ushr-int v16, v15, v9

    shl-int v12, v16, v9

    if-eq v12, v15, :cond_65

    const/4 v12, 0x0

    move-object/from16 v16, v2

    move/from16 v20, v5

    move/from16 v17, v6

    const/4 v0, 0x0

    goto/16 :goto_f7

    :cond_65
    new-instance v12, Ljava/util/LinkedList;

    invoke-direct {v12}, Ljava/util/LinkedList;-><init>()V

    new-instance v3, Lb1/a;

    invoke-direct {v3, v2}, Lb1/a;-><init>(Lb1/a;)V

    move-object/from16 v16, v2

    move/from16 v20, v5

    const/4 v2, 0x0

    :goto_74
    shl-int v5, v19, v9

    if-ge v2, v5, :cond_ec

    const/4 v5, 0x6

    invoke-virtual {v3, v5}, Lb1/a;->A(I)V

    invoke-virtual/range {v16 .. v16}, Lb1/a;->q()I

    move-result v5

    invoke-virtual {v3, v5}, Lb1/a;->v(I)V

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lb1/a;->y(I)V

    add-int v5, v15, v2

    invoke-virtual {v3, v5}, Lb1/a;->z(I)V

    move/from16 v21, v2

    invoke-virtual {v4, v3, v1, v0}, Lq3/h;->d(Lb1/a;[B[B)[B

    move-result-object v2

    iget-object v0, v3, Lb1/a;->h:Ljava/lang/Object;

    check-cast v0, [B

    move/from16 v22, v5

    move/from16 v17, v6

    const/16 v5, 0x10

    const/4 v6, 0x3

    invoke-static {v0, v6, v5}, Lm4/d;->w([BII)V

    invoke-virtual {v4, v3, v1, v2}, Lq3/h;->a(Lb1/a;[B[B)[B

    move-result-object v0

    move/from16 v2, v19

    invoke-virtual {v3, v2}, Lb1/a;->y(I)V

    :goto_a9
    invoke-virtual {v12}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_dc

    const/4 v5, 0x0

    invoke-virtual {v12, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v6, v23

    check-cast v6, Lq3/d;

    iget v6, v6, Lq3/d;->b:I

    if-ne v6, v2, :cond_dc

    add-int/lit8 v22, v22, -0x1

    div-int/lit8 v6, v22, 0x2

    invoke-virtual {v3, v6}, Lb1/a;->z(I)V

    invoke-virtual {v12, v5}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v5, v22

    check-cast v5, Lq3/d;

    iget-object v5, v5, Lq3/d;->a:[B

    invoke-virtual {v4, v3, v1, v5, v0}, Lq3/h;->b(Lb1/a;[B[B[B)[B

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, v2}, Lb1/a;->y(I)V

    move/from16 v22, v6

    const/16 v5, 0x10

    const/4 v6, 0x3

    goto :goto_a9

    :cond_dc
    new-instance v5, Lq3/d;

    invoke-direct {v5, v0, v2}, Lq3/d;-><init>([BI)V

    const/4 v0, 0x0

    invoke-virtual {v12, v0, v5}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    add-int/lit8 v2, v21, 0x1

    move-object/from16 v0, p3

    move/from16 v6, v17

    goto :goto_74

    :cond_ec
    move/from16 v17, v6

    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq3/d;

    iget-object v12, v2, Lq3/d;->a:[B

    :goto_f7
    aput-object v12, v14, v9

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v3, p1

    move-object/from16 v0, p3

    move-object/from16 v2, v16

    move/from16 v6, v17

    move/from16 v5, v20

    const/4 v12, 0x6

    const/4 v15, 0x3

    goto/16 :goto_46

    :cond_109
    move-object/from16 v16, v2

    move/from16 v20, v5

    move/from16 v17, v6

    const/4 v0, 0x0

    new-instance v2, Lq3/e;

    invoke-direct {v2, v13, v14}, Lq3/e;-><init>([B[[B)V

    aput-object v2, v8, v10

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v3, p1

    move v9, v0

    move-object/from16 v2, v16

    move-object/from16 v0, p3

    goto/16 :goto_1d

    :cond_122
    return-object v8
.end method
