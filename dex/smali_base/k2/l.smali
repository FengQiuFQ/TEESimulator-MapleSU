.class public final Lk2/l;
.super Lk2/j;


# instance fields
.field public final l:Ljava/math/BigInteger;

.field public final m:Ljava/math/BigInteger;

.field public final n:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 5

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lk2/b0;-><init>(I)V

    iput-object p1, p0, Lk2/l;->l:Ljava/math/BigInteger;

    iput-object p2, p0, Lk2/l;->m:Ljava/math/BigInteger;

    iput-object p3, p0, Lk2/l;->n:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public final B()Lk2/b0;
    .registers 4

    iget-object v0, p0, Lk2/l;->n:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-nez v1, :cond_9

    return-object p0

    :cond_9
    new-instance v1, Lk2/l;

    iget-object v2, p0, Lk2/l;->m:Ljava/math/BigInteger;

    iget-object p0, p0, Lk2/l;->l:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v1, p0, v2, v0}, Lk2/l;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v1
.end method

.method public final E()Lk2/b0;
    .registers 24

    move-object/from16 v0, p0

    invoke-virtual {v0}, Lk2/b0;->t()Z

    move-result v1

    if-nez v1, :cond_22e

    invoke-virtual {v0}, Lk2/b0;->s()Z

    move-result v1

    if-eqz v1, :cond_10

    goto/16 :goto_22e

    :cond_10
    iget-object v1, v0, Lk2/l;->l:Ljava/math/BigInteger;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v3

    if-eqz v3, :cond_226

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x2

    iget-object v7, v0, Lk2/l;->m:Ljava/math/BigInteger;

    iget-object v8, v0, Lk2/l;->n:Ljava/math/BigInteger;

    sget-object v9, Lk2/a;->b:Ljava/math/BigInteger;

    if-eqz v4, :cond_45

    invoke-virtual {v1, v6}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    new-instance v3, Lk2/l;

    invoke-virtual {v8, v2, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v3, v1, v7, v2}, Lk2/l;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v3}, Lk2/l;->F()Lk2/b0;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    return-object v3

    :cond_44
    return-object v5

    :cond_45
    invoke-virtual {v1, v6}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v4

    sget-object v10, Lk2/a;->c:Ljava/math/BigInteger;

    if-eqz v4, :cond_96

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v8, v2, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2, v8}, Lk2/l;->M(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lk2/l;->M(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    new-instance v2, Lk2/l;

    invoke-direct {v2, v1, v7, v3}, Lk2/l;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v2}, Lk2/l;->F()Lk2/b0;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_74

    return-object v2

    :cond_74
    return-object v5

    :cond_75
    invoke-virtual {v1, v6}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v10, v2, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Lk2/l;->N(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    new-instance v3, Lk2/l;

    invoke-direct {v3, v1, v7, v2}, Lk2/l;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v3}, Lk2/l;->F()Lk2/b0;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_95

    return-object v3

    :cond_95
    return-object v5

    :cond_96
    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v8, v4, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a8

    move-object/from16 v16, v5

    goto/16 :goto_205

    :cond_a8
    invoke-virtual {v8, v3}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v11

    if-ltz v11, :cond_b6

    invoke-virtual {v6, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    :cond_b6
    invoke-virtual {v6, v3}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v11

    if-ltz v11, :cond_c4

    invoke-virtual {v6, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    :cond_c4
    invoke-virtual {v4, v9}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v1, v9}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    new-instance v13, Ljava/util/Random;

    invoke-direct {v13}, Ljava/util/Random;-><init>()V

    :goto_d1
    new-instance v14, Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v15

    invoke-direct {v14, v15, v13}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    invoke-virtual {v14, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v15

    if-gez v15, :cond_221

    invoke-virtual {v14, v14}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v0, v15}, Lk2/l;->N(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v15, v4, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_221

    invoke-virtual {v11}, Ljava/math/BigInteger;->bitLength()I

    move-result v15

    move-object/from16 v16, v5

    invoke-virtual {v11}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v5

    sub-int/2addr v15, v3

    move/from16 v17, v2

    move-object/from16 v18, v4

    move-object v2, v9

    move-object v3, v2

    move-object v4, v3

    move-object/from16 v19, v10

    move-object/from16 v20, v13

    move-object v13, v14

    :goto_10d
    move-object/from16 v21, v12

    add-int/lit8 v12, v5, 0x1

    invoke-virtual {v0, v2, v3}, Lk2/l;->M(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    if-lt v15, v12, :cond_181

    invoke-virtual {v11, v15}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v3

    if-eqz v3, :cond_14c

    invoke-virtual {v0, v2, v8}, Lk2/l;->M(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v4, v13}, Lk2/l;->M(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v13, v10}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v14, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v0, v10}, Lk2/l;->N(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v13, v13}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    move-object/from16 v22, v4

    const/4 v13, 0x1

    invoke-virtual {v3, v13}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0, v4}, Lk2/l;->N(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    move-object v13, v4

    move-object/from16 v4, v22

    goto :goto_17c

    :cond_14c
    invoke-virtual {v4, v10}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v3}, Lk2/l;->N(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v13, v10}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v14, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0, v4}, Lk2/l;->N(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v10, v10}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v0, v10}, Lk2/l;->N(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    move-object v13, v4

    move-object v4, v3

    move-object v3, v2

    :goto_17c
    add-int/lit8 v15, v15, -0x1

    move-object/from16 v12, v21

    goto :goto_10d

    :cond_181
    invoke-virtual {v0, v2, v8}, Lk2/l;->M(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v4, v10}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0, v4}, Lk2/l;->N(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v13, v10}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v14, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v0, v10}, Lk2/l;->N(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Lk2/l;->N(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    const/4 v13, 0x1

    :goto_1aa
    if-gt v13, v5, :cond_1cc

    invoke-virtual {v0, v4, v10}, Lk2/l;->M(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v10, v10}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v3}, Lk2/l;->N(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v2, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Lk2/l;->N(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    add-int/lit8 v13, v13, 0x1

    goto :goto_1aa

    :cond_1cc
    const/4 v12, 0x1

    filled-new-array {v4, v10}, [Ljava/math/BigInteger;

    move-result-object v2

    aget-object v3, v2, v17

    aget-object v2, v2, v12

    invoke-virtual {v0, v2, v2}, Lk2/l;->M(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f5

    new-instance v0, Lk2/l;

    move/from16 v4, v17

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v3

    if-eqz v3, :cond_1ed

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    :cond_1ed
    invoke-virtual {v2, v12}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v7, v2}, Lk2/l;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0

    :cond_1f5
    move/from16 v4, v17

    invoke-virtual {v3, v9}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_213

    move-object/from16 v2, v21

    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_206

    :goto_205
    return-object v16

    :cond_206
    move v3, v12

    move-object/from16 v5, v16

    move-object/from16 v10, v19

    move-object/from16 v13, v20

    move-object v12, v2

    :goto_20e
    move v2, v4

    move-object/from16 v4, v18

    goto/16 :goto_d1

    :cond_213
    move v2, v4

    move v3, v12

    move-object/from16 v5, v16

    move-object/from16 v4, v18

    move-object/from16 v10, v19

    move-object/from16 v13, v20

    move-object/from16 v12, v21

    goto/16 :goto_d1

    :cond_221
    move-object/from16 v18, v4

    move v4, v2

    move-object v2, v12

    goto :goto_20e

    :cond_226
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not done yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22e
    :goto_22e
    return-object v0
.end method

.method public final F()Lk2/b0;
    .registers 4

    new-instance v0, Lk2/l;

    iget-object v1, p0, Lk2/l;->n:Ljava/math/BigInteger;

    invoke-virtual {p0, v1, v1}, Lk2/l;->M(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lk2/l;->l:Ljava/math/BigInteger;

    iget-object p0, p0, Lk2/l;->m:Ljava/math/BigInteger;

    invoke-direct {v0, v2, p0, v1}, Lk2/l;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public final G(Lk2/b0;Lk2/b0;)Lk2/b0;
    .registers 4

    invoke-virtual {p1}, Lk2/b0;->L()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p2}, Lk2/b0;->L()Ljava/math/BigInteger;

    move-result-object p2

    iget-object v0, p0, Lk2/l;->n:Ljava/math/BigInteger;

    invoke-virtual {v0, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    new-instance p2, Lk2/l;

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lk2/l;->N(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iget-object v0, p0, Lk2/l;->l:Ljava/math/BigInteger;

    iget-object p0, p0, Lk2/l;->m:Ljava/math/BigInteger;

    invoke-direct {p2, v0, p0, p1}, Lk2/l;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object p2
.end method

.method public final I(Lk2/b0;)Lk2/b0;
    .registers 5

    new-instance v0, Lk2/l;

    iget-object v1, p0, Lk2/l;->n:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lk2/b0;->L()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v1

    iget-object v2, p0, Lk2/l;->l:Ljava/math/BigInteger;

    if-gez v1, :cond_18

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    :cond_18
    iget-object p0, p0, Lk2/l;->m:Ljava/math/BigInteger;

    invoke-direct {v0, v2, p0, p1}, Lk2/l;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public final L()Ljava/math/BigInteger;
    .registers 1

    iget-object p0, p0, Lk2/l;->n:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final M(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 3

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lk2/l;->N(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public final N(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 8

    iget-object v0, p0, Lk2/l;->l:Ljava/math/BigInteger;

    iget-object p0, p0, Lk2/l;->m:Ljava/math/BigInteger;

    if-eqz p0, :cond_57

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-gez v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    if-eqz v1, :cond_15

    invoke-virtual {p1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p1

    :cond_15
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    sget-object v3, Lk2/a;->b:Ljava/math/BigInteger;

    invoke-virtual {p0, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_1f
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    add-int/lit8 v5, v2, 0x1

    if-le v4, v5, :cond_3e

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    if-nez v3, :cond_39

    invoke-virtual {v4, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    :cond_39
    invoke-virtual {v4, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    goto :goto_1f

    :cond_3e
    :goto_3e
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-ltz p0, :cond_49

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    goto :goto_3e

    :cond_49
    if-eqz v1, :cond_56

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result p0

    if-eqz p0, :cond_56

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_56
    return-object p1

    :cond_57
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lk2/b0;)Lk2/b0;
    .registers 5

    new-instance v0, Lk2/l;

    iget-object v1, p0, Lk2/l;->n:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lk2/b0;->L()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iget-object v1, p0, Lk2/l;->l:Ljava/math/BigInteger;

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-ltz v2, :cond_18

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    :cond_18
    iget-object p0, p0, Lk2/l;->m:Ljava/math/BigInteger;

    invoke-direct {v0, v1, p0, p1}, Lk2/l;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public final b()Lk2/b0;
    .registers 4

    iget-object v0, p0, Lk2/l;->n:Ljava/math/BigInteger;

    sget-object v1, Lk2/a;->b:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lk2/l;->l:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-nez v2, :cond_12

    sget-object v0, Lk2/a;->a:Ljava/math/BigInteger;

    :cond_12
    new-instance v2, Lk2/l;

    iget-object p0, p0, Lk2/l;->m:Ljava/math/BigInteger;

    invoke-direct {v2, v1, p0, v0}, Lk2/l;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lk2/l;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lk2/l;

    iget-object v1, p0, Lk2/l;->l:Ljava/math/BigInteger;

    iget-object v3, p1, Lk2/l;->l:Ljava/math/BigInteger;

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object p0, p0, Lk2/l;->n:Ljava/math/BigInteger;

    iget-object p1, p1, Lk2/l;->n:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_21

    return v0

    :cond_21
    return v2
.end method

.method public final f(Lk2/b0;)Lk2/b0;
    .registers 5

    new-instance v0, Lk2/l;

    invoke-virtual {p1}, Lk2/b0;->L()Ljava/math/BigInteger;

    move-result-object p1

    iget-object v1, p0, Lk2/l;->l:Ljava/math/BigInteger;

    invoke-static {v1, p1}, Lm4/a;->i(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iget-object v2, p0, Lk2/l;->n:Ljava/math/BigInteger;

    invoke-virtual {p0, v2, p1}, Lk2/l;->M(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iget-object p0, p0, Lk2/l;->m:Ljava/math/BigInteger;

    invoke-direct {v0, v1, p0, p1}, Lk2/l;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Lk2/l;->l:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object p0, p0, Lk2/l;->n:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public final k()I
    .registers 1

    iget-object p0, p0, Lk2/l;->l:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    return p0
.end method

.method public final q()Lk2/b0;
    .registers 4

    new-instance v0, Lk2/l;

    iget-object v1, p0, Lk2/l;->n:Ljava/math/BigInteger;

    iget-object v2, p0, Lk2/l;->l:Ljava/math/BigInteger;

    invoke-static {v2, v1}, Lm4/a;->i(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iget-object p0, p0, Lk2/l;->m:Ljava/math/BigInteger;

    invoke-direct {v0, v2, p0, v1}, Lk2/l;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public final x(Lk2/b0;)Lk2/b0;
    .registers 4

    new-instance v0, Lk2/l;

    iget-object v1, p0, Lk2/l;->n:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lk2/b0;->L()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lk2/l;->M(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iget-object v1, p0, Lk2/l;->l:Ljava/math/BigInteger;

    iget-object p0, p0, Lk2/l;->m:Ljava/math/BigInteger;

    invoke-direct {v0, v1, p0, p1}, Lk2/l;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public final y(Lk2/b0;Lk2/b0;Lk2/b0;)Lk2/b0;
    .registers 5

    invoke-virtual {p1}, Lk2/b0;->L()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p2}, Lk2/b0;->L()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p3}, Lk2/b0;->L()Ljava/math/BigInteger;

    move-result-object p3

    iget-object v0, p0, Lk2/l;->n:Ljava/math/BigInteger;

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p2, p3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    new-instance p3, Lk2/l;

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lk2/l;->N(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iget-object p2, p0, Lk2/l;->l:Ljava/math/BigInteger;

    iget-object p0, p0, Lk2/l;->m:Ljava/math/BigInteger;

    invoke-direct {p3, p2, p0, p1}, Lk2/l;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object p3
.end method

.method public final z(Lk2/b0;Lk2/b0;Lk2/b0;)Lk2/b0;
    .registers 5

    invoke-virtual {p1}, Lk2/b0;->L()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p2}, Lk2/b0;->L()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p3}, Lk2/b0;->L()Ljava/math/BigInteger;

    move-result-object p3

    iget-object v0, p0, Lk2/l;->n:Ljava/math/BigInteger;

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p2, p3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    new-instance p3, Lk2/l;

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lk2/l;->N(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iget-object p2, p0, Lk2/l;->l:Ljava/math/BigInteger;

    iget-object p0, p0, Lk2/l;->m:Ljava/math/BigInteger;

    invoke-direct {p3, p2, p0, p1}, Lk2/l;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object p3
.end method
