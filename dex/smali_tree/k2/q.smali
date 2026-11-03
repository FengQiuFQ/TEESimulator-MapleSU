.class public final Lk2/q;
.super Lk2/b0;


# instance fields
.field public final synthetic l:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lk2/q;->l:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lk2/b0;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final A(Lk2/p;Ljava/math/BigInteger;)Lk2/p;
    .registers 23

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    iget v1, v1, Lk2/q;->l:I

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v1, :pswitch_data_540

    instance-of v1, v0, Lk2/n;

    if-eqz v1, :cond_368

    check-cast v0, Lk2/n;

    iget-object v1, v0, Lk2/p;->a:Lk2/h;

    check-cast v1, Lk2/c;

    iget-object v6, v1, Lk2/h;->b:Lk2/b0;

    invoke-virtual {v6}, Lk2/b0;->L()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Number;->byteValue()B

    move-result v6

    sget-object v7, Lk2/x;->a:Ljava/math/BigInteger;

    if-nez v6, :cond_28

    move v7, v3

    goto :goto_29

    :cond_28
    move v7, v5

    :goto_29
    int-to-byte v7, v7

    invoke-virtual {v1}, Lk2/h;->l()I

    move-result v8

    monitor-enter v1

    :try_start_2f
    iget-object v9, v1, Lk2/c;->i:[Ljava/math/BigInteger;

    if-nez v9, :cond_3d

    invoke-static {v1}, Lk2/x;->c(Lk2/c;)[Ljava/math/BigInteger;

    move-result-object v9

    iput-object v9, v1, Lk2/c;->i:[Ljava/math/BigInteger;

    goto :goto_3d

    :catchall_3a
    move-exception v0

    goto/16 :goto_366

    :cond_3d
    :goto_3d
    iget-object v9, v1, Lk2/c;->i:[Ljava/math/BigInteger;
    :try_end_3f
    .catchall {:try_start_2f .. :try_end_3f} :catchall_3a

    monitor-exit v1

    if-ne v7, v5, :cond_4b

    aget-object v10, v9, v4

    aget-object v11, v9, v5

    invoke-virtual {v10, v11}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    goto :goto_53

    :cond_4b
    aget-object v10, v9, v4

    aget-object v11, v9, v5

    invoke-virtual {v10, v11}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    :goto_53
    invoke-virtual {v1}, Lk2/c;->u()Z

    move-result v11

    if-eqz v11, :cond_70

    sget-object v11, Lk2/a;->b:Ljava/math/BigInteger;

    invoke-virtual {v11, v8}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    iget-object v12, v1, Lk2/h;->d:Ljava/math/BigInteger;

    iget-object v1, v1, Lk2/h;->e:Ljava/math/BigInteger;

    invoke-virtual {v12, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_76

    :cond_70
    invoke-static {v7, v8, v5}, Lk2/x;->b(BIZ)[Ljava/math/BigInteger;

    move-result-object v1

    aget-object v1, v1, v5

    :goto_76
    aget-object v11, v9, v4

    invoke-static {v2, v11, v1, v6, v8}, Lk2/x;->a(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;BI)Lk2/w;

    move-result-object v11

    aget-object v12, v9, v5

    invoke-static {v2, v12, v1, v6, v8}, Lk2/x;->a(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;BI)Lk2/w;

    move-result-object v1

    sget-object v8, Lk2/x;->a:Ljava/math/BigInteger;

    if-eq v7, v5, :cond_91

    if-ne v7, v3, :cond_89

    goto :goto_91

    :cond_89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mu must be 1 or -1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_91
    :goto_91
    invoke-virtual {v11}, Lk2/w;->c()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v1}, Lk2/w;->c()Ljava/math/BigInteger;

    move-result-object v13

    new-instance v14, Lk2/w;

    iget-object v11, v11, Lk2/w;->a:Ljava/math/BigInteger;

    const/16 v15, 0xa

    move/from16 p0, v4

    invoke-virtual {v12, v15}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v14, v15, v4}, Lk2/w;-><init>(ILjava/math/BigInteger;)V

    new-instance v4, Lk2/w;

    iget-object v1, v1, Lk2/w;->a:Ljava/math/BigInteger;

    invoke-virtual {v13, v15}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v4, v15, v1}, Lk2/w;-><init>(ILjava/math/BigInteger;)V

    invoke-virtual {v14, v14}, Lk2/w;->a(Lk2/w;)Lk2/w;

    move-result-object v11

    if-ne v7, v5, :cond_c6

    invoke-virtual {v11, v4}, Lk2/w;->a(Lk2/w;)Lk2/w;

    move-result-object v1

    goto :goto_da

    :cond_c6
    invoke-virtual {v1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v1

    iget v3, v11, Lk2/w;->b:I

    if-ne v3, v15, :cond_35e

    new-instance v15, Lk2/w;

    iget-object v11, v11, Lk2/w;->a:Ljava/math/BigInteger;

    invoke-virtual {v11, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v15, v3, v1}, Lk2/w;-><init>(ILjava/math/BigInteger;)V

    move-object v1, v15

    :goto_da
    invoke-virtual {v4, v4}, Lk2/w;->a(Lk2/w;)Lk2/w;

    move-result-object v3

    invoke-virtual {v3, v4}, Lk2/w;->a(Lk2/w;)Lk2/w;

    move-result-object v3

    invoke-virtual {v3, v4}, Lk2/w;->a(Lk2/w;)Lk2/w;

    move-result-object v4

    if-ne v7, v5, :cond_118

    iget-object v11, v3, Lk2/w;->a:Ljava/math/BigInteger;

    invoke-virtual {v11}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v11

    iget v3, v3, Lk2/w;->b:I

    if-ltz v3, :cond_110

    iget v15, v14, Lk2/w;->b:I

    if-ne v15, v3, :cond_108

    new-instance v3, Lk2/w;

    move/from16 v17, v5

    iget-object v5, v14, Lk2/w;->a:Ljava/math/BigInteger;

    invoke-virtual {v5, v11}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v3, v15, v5}, Lk2/w;-><init>(ILjava/math/BigInteger;)V

    invoke-virtual {v14, v4}, Lk2/w;->a(Lk2/w;)Lk2/w;

    move-result-object v4

    goto :goto_137

    :cond_108
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only SimpleBigDecimal of same scale allowed in arithmetic operations"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_110
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "scale may not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_118
    move/from16 v17, v5

    invoke-virtual {v14, v3}, Lk2/w;->a(Lk2/w;)Lk2/w;

    move-result-object v3

    iget-object v5, v4, Lk2/w;->a:Ljava/math/BigInteger;

    invoke-virtual {v5}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v5

    iget v4, v4, Lk2/w;->b:I

    if-ltz v4, :cond_356

    iget v11, v14, Lk2/w;->b:I

    if-ne v11, v4, :cond_34e

    new-instance v4, Lk2/w;

    iget-object v14, v14, Lk2/w;->a:Ljava/math/BigInteger;

    invoke-virtual {v14, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v4, v11, v5}, Lk2/w;-><init>(ILjava/math/BigInteger;)V

    :goto_137
    sget-object v5, Lk2/a;->b:Ljava/math/BigInteger;

    invoke-virtual {v1, v5}, Lk2/w;->b(Ljava/math/BigInteger;)I

    move-result v11

    if-ltz v11, :cond_14b

    invoke-virtual {v3, v8}, Lk2/w;->b(Ljava/math/BigInteger;)I

    move-result v11

    if-gez v11, :cond_146

    goto :goto_153

    :cond_146
    move/from16 v14, p0

    move/from16 v11, v17

    goto :goto_15a

    :cond_14b
    sget-object v11, Lk2/a;->c:Ljava/math/BigInteger;

    invoke-virtual {v4, v11}, Lk2/w;->b(Ljava/math/BigInteger;)I

    move-result v11

    if-ltz v11, :cond_157

    :goto_153
    move/from16 v11, p0

    move v14, v7

    goto :goto_15a

    :cond_157
    move/from16 v11, p0

    move v14, v11

    :goto_15a
    invoke-virtual {v1, v8}, Lk2/w;->b(Ljava/math/BigInteger;)I

    move-result v1

    if-gez v1, :cond_16b

    invoke-virtual {v3, v5}, Lk2/w;->b(Ljava/math/BigInteger;)I

    move-result v1

    if-ltz v1, :cond_169

    :goto_166
    neg-int v1, v7

    int-to-byte v14, v1

    goto :goto_174

    :cond_169
    const/4 v11, -0x1

    goto :goto_174

    :cond_16b
    sget-object v1, Lk2/x;->b:Ljava/math/BigInteger;

    invoke-virtual {v4, v1}, Lk2/w;->b(Ljava/math/BigInteger;)I

    move-result v1

    if-gez v1, :cond_174

    goto :goto_166

    :cond_174
    :goto_174
    int-to-long v3, v11

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    int-to-long v3, v14

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v10, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    aget-object v4, v9, v17

    invoke-virtual {v4, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    move/from16 v5, v17

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    aget-object v4, v9, v5

    invoke-virtual {v4, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    aget-object v4, v9, p0

    invoke-virtual {v4, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    if-nez v6, :cond_1b3

    sget-object v3, Lk2/x;->c:[Lb1/b;

    goto :goto_1b5

    :cond_1b3
    sget-object v3, Lk2/x;->e:[Lb1/b;

    :goto_1b5
    if-ne v7, v5, :cond_1be

    const-wide/16 v8, 0x6

    :goto_1b9
    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    goto :goto_1c1

    :cond_1be
    const-wide/16 v8, 0xa

    goto :goto_1b9

    :goto_1c1
    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    const-string v6, "mu must be 1 or -1"

    if-eq v7, v5, :cond_1d3

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1cd

    goto :goto_1d3

    :cond_1cd
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d3
    :goto_1d3
    invoke-virtual {v2, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    if-ne v7, v5, :cond_1ea

    invoke-virtual {v1, v5}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    goto :goto_1fd

    :cond_1ea
    const/4 v9, -0x1

    if-ne v7, v9, :cond_348

    invoke-virtual {v1, v5}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    :goto_1fd
    invoke-virtual {v6}, Ljava/math/BigInteger;->bitLength()I

    move-result v5

    const/16 v6, 0x1e

    if-le v5, v6, :cond_208

    add-int/lit8 v5, v5, 0x8

    goto :goto_20a

    :cond_208
    const/16 v5, 0x26

    :goto_20a
    new-array v8, v5, [B

    move-object v6, v2

    move-object v2, v1

    move/from16 v1, p0

    :goto_210
    invoke-virtual {v6}, Ljava/math/BigInteger;->bitLength()I

    move-result v9

    const/16 v10, 0x3e

    if-gt v9, v10, :cond_21e

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v9

    if-le v9, v10, :cond_222

    :cond_21e
    move/from16 v9, p0

    goto/16 :goto_2fc

    :cond_222
    sget-object v9, Lm4/a;->a:Ljava/math/BigInteger;

    invoke-virtual {v6}, Ljava/math/BigInteger;->bitLength()I

    move-result v9

    const/16 v10, 0x3f

    if-gt v9, v10, :cond_2f4

    invoke-virtual {v6}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v11

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v6

    if-gt v6, v10, :cond_2ec

    invoke-virtual {v2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v9

    :goto_23a
    or-long v13, v11, v9

    const-wide/16 v15, 0x0

    cmp-long v2, v13, v15

    if-eqz v2, :cond_27e

    const-wide/16 v13, 0x1

    and-long/2addr v13, v11

    cmp-long v2, v13, v15

    if-eqz v2, :cond_26e

    long-to-int v2, v11

    long-to-int v6, v9

    mul-int/2addr v6, v4

    add-int/2addr v6, v2

    and-int/lit8 v2, v6, 0xf

    shl-int/lit8 v6, v6, 0x1c

    shr-int/lit8 v6, v6, 0x1c

    int-to-byte v6, v6

    aput-byte v6, v8, v1

    aget-object v6, v3, v2

    iget-object v6, v6, Lb1/b;->h:Ljava/lang/Object;

    check-cast v6, Ljava/math/BigInteger;

    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    int-to-long v13, v6

    sub-long/2addr v11, v13

    aget-object v2, v3, v2

    iget-object v2, v2, Lb1/b;->i:Ljava/lang/Object;

    check-cast v2, Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    int-to-long v13, v2

    sub-long/2addr v9, v13

    :cond_26e
    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    shr-long/2addr v11, v2

    if-ne v7, v2, :cond_276

    add-long/2addr v9, v11

    goto :goto_277

    :cond_276
    sub-long/2addr v9, v11

    :goto_277
    neg-long v11, v11

    move-wide/from16 v18, v11

    move-wide v11, v9

    move-wide/from16 v9, v18

    goto :goto_23a

    :cond_27e
    iget-object v1, v0, Lk2/p;->a:Lk2/h;

    check-cast v1, Lk2/c;

    iget-object v2, v1, Lk2/h;->b:Lk2/b0;

    invoke-virtual {v2}, Lk2/b0;->L()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->byteValue()B

    move-result v2

    const-string v3, "bc_wtnaf"

    new-instance v4, Lk2/c0;

    invoke-direct {v4, v0, v2}, Lk2/c0;-><init>(Lk2/n;B)V

    invoke-virtual {v1, v0, v3, v4}, Lk2/h;->q(Lk2/p;Ljava/lang/String;Lk2/u;)Lk2/v;

    move-result-object v1

    check-cast v1, Lk2/d0;

    iget-object v1, v1, Lk2/d0;->a:[Lk2/n;

    array-length v2, v1

    new-array v2, v2, [Lk2/n;

    move/from16 v3, p0

    :goto_2a0
    array-length v4, v1

    if-ge v3, v4, :cond_2b0

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lk2/p;->o()Lk2/p;

    move-result-object v4

    check-cast v4, Lk2/n;

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2a0

    :cond_2b0
    iget-object v0, v0, Lk2/p;->a:Lk2/h;

    invoke-virtual {v0}, Lk2/h;->m()Lk2/p;

    move-result-object v0

    check-cast v0, Lk2/n;

    const/16 v17, 0x1

    add-int/lit8 v5, v5, -0x1

    move-object v3, v0

    move/from16 v0, p0

    :goto_2bf
    if-ltz v5, :cond_2e5

    add-int/lit8 v0, v0, 0x1

    aget-byte v4, v8, v5

    if-eqz v4, :cond_2e2

    invoke-virtual {v3, v0}, Lk2/n;->F(I)Lk2/n;

    move-result-object v0

    if-lez v4, :cond_2d2

    ushr-int/lit8 v3, v4, 0x1

    aget-object v3, v1, v3

    goto :goto_2d9

    :cond_2d2
    neg-int v3, v4

    const/16 v17, 0x1

    ushr-int/lit8 v3, v3, 0x1

    aget-object v3, v2, v3

    :goto_2d9
    invoke-virtual {v0, v3}, Lk2/p;->a(Lk2/p;)Lk2/p;

    move-result-object v0

    check-cast v0, Lk2/n;

    move-object v3, v0

    move/from16 v0, p0

    :cond_2e2
    add-int/lit8 v5, v5, -0x1

    goto :goto_2bf

    :cond_2e5
    if-lez v0, :cond_2eb

    invoke-virtual {v3, v0}, Lk2/n;->F(I)Lk2/n;

    move-result-object v3

    :cond_2eb
    return-object v3

    :cond_2ec
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "BigInteger out of long range"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f4
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "BigInteger out of long range"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_2fc
    invoke-virtual {v6, v9}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v10

    if-eqz v10, :cond_329

    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    move-result v9

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v10

    mul-int/2addr v10, v4

    add-int/2addr v10, v9

    and-int/lit8 v9, v10, 0xf

    shl-int/lit8 v10, v10, 0x1c

    shr-int/lit8 v10, v10, 0x1c

    int-to-byte v10, v10

    aput-byte v10, v8, v1

    aget-object v10, v3, v9

    iget-object v10, v10, Lb1/b;->h:Ljava/lang/Object;

    check-cast v10, Ljava/math/BigInteger;

    invoke-virtual {v6, v10}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    aget-object v9, v3, v9

    iget-object v9, v9, Lb1/b;->i:Ljava/lang/Object;

    check-cast v9, Ljava/math/BigInteger;

    invoke-virtual {v2, v9}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    :cond_329
    add-int/lit8 v1, v1, 0x1

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v6

    if-ne v7, v9, :cond_337

    invoke-virtual {v2, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    goto :goto_33b

    :cond_337
    invoke-virtual {v2, v6}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    :goto_33b
    invoke-virtual {v6}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v6

    move-object/from16 p0, v6

    move-object v6, v2

    move-object/from16 v2, p0

    const/16 p0, 0x0

    goto/16 :goto_210

    :cond_348
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_34e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only SimpleBigDecimal of same scale allowed in arithmetic operations"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_356
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "scale may not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_35e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only SimpleBigDecimal of same scale allowed in arithmetic operations"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_366
    :try_start_366
    monitor-exit v1
    :try_end_367
    .catchall {:try_start_366 .. :try_end_367} :catchall_3a

    throw v0

    :cond_368
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only ECPoint.AbstractF2m can be used in WTauNafMultiplier"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_370
    move v9, v3

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    sget-object v3, Lk2/b0;->h:[I

    const/16 v4, 0x10

    invoke-static {v1, v4, v3}, Lk2/b0;->n(II[I)I

    move-result v1

    invoke-static {v0, v1}, Lk2/b0;->C(Lk2/p;I)Lk2/z;

    move-result-object v1

    iget-object v3, v1, Lk2/z;->c:[Lk2/p;

    iget-object v5, v1, Lk2/z;->d:[Lk2/p;

    iget v1, v1, Lk2/z;->f:I

    const-string v6, "\'k\' must have bitlength < 2^16"

    sget-object v7, Lk2/b0;->j:[I

    const/4 v8, 0x2

    if-ne v1, v8, :cond_3f4

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v8

    ushr-int/2addr v8, v4

    if-nez v8, :cond_3ee

    invoke-virtual {v2}, Ljava/math/BigInteger;->signum()I

    move-result v6

    if-nez v6, :cond_39d

    goto/16 :goto_456

    :cond_39d
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->bitLength()I

    move-result v8

    shr-int/lit8 v10, v8, 0x1

    new-array v11, v10, [I

    invoke-virtual {v7, v2}, Ljava/math/BigInteger;->xor(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    sub-int/2addr v8, v6

    const/4 v6, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    :goto_3b6
    if-ge v13, v8, :cond_3da

    invoke-virtual {v7, v13}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v14

    if-nez v14, :cond_3c3

    add-int/lit8 v12, v12, 0x1

    :goto_3c0
    const/16 v17, 0x1

    goto :goto_3d7

    :cond_3c3
    invoke-virtual {v2, v13}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v14

    if-eqz v14, :cond_3cb

    move v14, v9

    goto :goto_3cc

    :cond_3cb
    const/4 v14, 0x1

    :goto_3cc
    add-int/lit8 v15, v6, 0x1

    shl-int/2addr v14, v4

    or-int/2addr v12, v14

    aput v12, v11, v6

    add-int/lit8 v13, v13, 0x1

    move v6, v15

    const/4 v12, 0x1

    goto :goto_3c0

    :goto_3d7
    add-int/lit8 v13, v13, 0x1

    goto :goto_3b6

    :cond_3da
    add-int/lit8 v2, v6, 0x1

    const/high16 v4, 0x10000

    or-int/2addr v4, v12

    aput v4, v11, v6

    if-le v10, v2, :cond_3eb

    new-array v7, v2, [I

    const/4 v9, 0x0

    invoke-static {v11, v9, v7, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_456

    :cond_3eb
    move-object v7, v11

    goto/16 :goto_456

    :cond_3ee
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3f4
    if-lt v1, v8, :cond_4d0

    if-gt v1, v4, :cond_4d0

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v8

    ushr-int/2addr v8, v4

    if-nez v8, :cond_4ca

    invoke-virtual {v2}, Ljava/math/BigInteger;->signum()I

    move-result v6

    if-nez v6, :cond_406

    goto :goto_456

    :cond_406
    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v6

    div-int/2addr v6, v1

    const/16 v17, 0x1

    add-int/lit8 v6, v6, 0x1

    new-array v7, v6, [I

    shl-int v8, v17, v1

    add-int/lit8 v9, v8, -0x1

    ushr-int/lit8 v10, v8, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_41a
    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v14

    if-gt v11, v14, :cond_44d

    invoke-virtual {v2, v11}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v14

    if-ne v14, v13, :cond_429

    add-int/lit8 v11, v11, 0x1

    goto :goto_41a

    :cond_429
    invoke-virtual {v2, v11}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v14

    and-int/2addr v14, v9

    if-eqz v13, :cond_436

    add-int/lit8 v14, v14, 0x1

    :cond_436
    and-int v13, v14, v10

    if-eqz v13, :cond_43c

    const/4 v13, 0x1

    goto :goto_43d

    :cond_43c
    const/4 v13, 0x0

    :goto_43d
    if-eqz v13, :cond_440

    sub-int/2addr v14, v8

    :cond_440
    if-lez v12, :cond_444

    add-int/lit8 v11, v11, -0x1

    :cond_444
    add-int/lit8 v15, v12, 0x1

    shl-int/2addr v14, v4

    or-int/2addr v11, v14

    aput v11, v7, v12

    move v11, v1

    move v12, v15

    goto :goto_41a

    :cond_44d
    if-le v6, v12, :cond_456

    new-array v2, v12, [I

    const/4 v9, 0x0

    invoke-static {v7, v9, v2, v9, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v7, v2

    :cond_456
    :goto_456
    iget-object v0, v0, Lk2/p;->a:Lk2/h;

    invoke-virtual {v0}, Lk2/h;->m()Lk2/p;

    move-result-object v0

    array-length v2, v7

    const v4, 0xffff

    const/4 v6, 0x1

    if-le v2, v6, :cond_4a7

    add-int/lit8 v2, v2, -0x1

    aget v0, v7, v2

    shr-int/lit8 v6, v0, 0x10

    and-int/2addr v0, v4

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-gez v6, :cond_472

    move-object v6, v5

    goto :goto_473

    :cond_472
    move-object v6, v3

    :goto_473
    shl-int/lit8 v9, v8, 0x2

    const/16 v17, 0x1

    shl-int v10, v17, v1

    if-ge v9, v10, :cond_49f

    invoke-static {v8}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v9

    rsub-int/lit8 v10, v9, 0x20

    sub-int v10, v1, v10

    rsub-int/lit8 v9, v9, 0x1f

    shl-int v9, v17, v9

    xor-int/2addr v8, v9

    add-int/lit8 v1, v1, -0x1

    shl-int v1, v17, v1

    add-int/lit8 v1, v1, -0x1

    shl-int/2addr v8, v10

    add-int/lit8 v8, v8, 0x1

    ushr-int/lit8 v1, v1, 0x1

    aget-object v1, v6, v1

    ushr-int/lit8 v8, v8, 0x1

    aget-object v6, v6, v8

    invoke-virtual {v1, v6}, Lk2/p;->a(Lk2/p;)Lk2/p;

    move-result-object v1

    sub-int/2addr v0, v10

    goto :goto_4a3

    :cond_49f
    ushr-int/lit8 v1, v8, 0x1

    aget-object v1, v6, v1

    :goto_4a3
    invoke-virtual {v1, v0}, Lk2/p;->x(I)Lk2/p;

    move-result-object v0

    :cond_4a7
    :goto_4a7
    if-lez v2, :cond_4c9

    add-int/lit8 v2, v2, -0x1

    aget v1, v7, v2

    shr-int/lit8 v6, v1, 0x10

    and-int/2addr v1, v4

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-gez v6, :cond_4ba

    move-object v6, v5

    :goto_4b7
    const/16 v17, 0x1

    goto :goto_4bc

    :cond_4ba
    move-object v6, v3

    goto :goto_4b7

    :goto_4bc
    ushr-int/lit8 v8, v8, 0x1

    aget-object v6, v6, v8

    invoke-virtual {v0, v6}, Lk2/p;->z(Lk2/p;)Lk2/p;

    move-result-object v0

    invoke-virtual {v0, v1}, Lk2/p;->x(I)Lk2/p;

    move-result-object v0

    goto :goto_4a7

    :cond_4c9
    return-object v0

    :cond_4ca
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4d0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'width\' must be in the range [2, 16]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_4d8
    move v9, v4

    iget-object v1, v0, Lk2/p;->a:Lk2/h;

    invoke-static {v1}, Lk2/b0;->h(Lk2/h;)I

    move-result v3

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    if-gt v4, v3, :cond_537

    iget-object v4, v0, Lk2/p;->a:Lk2/h;

    const-string v5, "bc_fixed_point"

    new-instance v6, Lb1/b;

    const/4 v7, 0x6

    invoke-direct {v6, v4, v0, v7}, Lb1/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v4, v0, v5, v6}, Lk2/h;->q(Lk2/p;Ljava/lang/String;Lk2/u;)Lk2/v;

    move-result-object v0

    check-cast v0, Lk2/r;

    iget-object v4, v0, Lk2/r;->b:Lk2/b0;

    iget v5, v0, Lk2/r;->c:I

    add-int/2addr v3, v5

    const/16 v17, 0x1

    add-int/lit8 v3, v3, -0x1

    div-int/2addr v3, v5

    invoke-virtual {v1}, Lk2/h;->m()Lk2/p;

    move-result-object v1

    mul-int/2addr v5, v3

    invoke-static {v5, v2}, Ls2/b;->u(ILjava/math/BigInteger;)[I

    move-result-object v2

    add-int/lit8 v5, v5, -0x1

    move v6, v9

    :goto_50b
    if-ge v6, v3, :cond_530

    sub-int v7, v5, v6

    move v8, v9

    :goto_510
    if-ltz v7, :cond_523

    ushr-int/lit8 v10, v7, 0x5

    aget v10, v2, v10

    and-int/lit8 v11, v7, 0x1f

    ushr-int/2addr v10, v11

    ushr-int/lit8 v11, v10, 0x1

    xor-int/2addr v8, v11

    const/16 v17, 0x1

    shl-int/lit8 v8, v8, 0x1

    xor-int/2addr v8, v10

    sub-int/2addr v7, v3

    goto :goto_510

    :cond_523
    const/16 v17, 0x1

    invoke-virtual {v4, v8}, Lk2/b0;->u(I)Lk2/p;

    move-result-object v7

    invoke-virtual {v1, v7}, Lk2/p;->z(Lk2/p;)Lk2/p;

    move-result-object v1

    add-int/lit8 v6, v6, 0x1

    goto :goto_50b

    :cond_530
    iget-object v0, v0, Lk2/r;->a:Lk2/p;

    invoke-virtual {v1, v0}, Lk2/p;->a(Lk2/p;)Lk2/p;

    move-result-object v0

    return-object v0

    :cond_537
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "fixed-point comb doesn\'t support scalars larger than the curve order"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_540
    .packed-switch 0x0
        :pswitch_4d8
        :pswitch_370
    .end packed-switch
.end method
