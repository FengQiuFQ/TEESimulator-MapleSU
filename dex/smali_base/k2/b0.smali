.class public abstract Lk2/b0;
.super Ljava/lang/Object;

# interfaces
.implements Lk2/a;


# static fields
.field public static final h:[I

.field public static final i:[B

.field public static final j:[I

.field public static final k:[Lk2/p;


# instance fields
.field public final synthetic g:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_16

    sput-object v0, Lk2/b0;->h:[I

    const/4 v0, 0x0

    new-array v1, v0, [B

    sput-object v1, Lk2/b0;->i:[B

    new-array v1, v0, [I

    sput-object v1, Lk2/b0;->j:[I

    new-array v0, v0, [Lk2/p;

    sput-object v0, Lk2/b0;->k:[Lk2/p;

    return-void

    :array_16
    .array-data 4
        0xd
        0x29
        0x79
        0x151
        0x381
        0x901
    .end array-data
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lk2/b0;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static C(Lk2/p;I)Lk2/z;
    .registers 4

    iget-object v0, p0, Lk2/p;->a:Lk2/h;

    new-instance v1, La2/r;

    invoke-direct {v1, p1, p0, v0}, La2/r;-><init>(ILk2/p;Lk2/h;)V

    const-string p1, "bc_wnaf"

    invoke-virtual {v0, p0, p1, v1}, Lk2/h;->q(Lk2/p;Ljava/lang/String;Lk2/u;)Lk2/v;

    move-result-object p0

    check-cast p0, Lk2/z;

    return-object p0
.end method

.method public static D(Lk2/p;Ljava/math/BigInteger;)Lk2/p;
    .registers 7

    invoke-virtual {p1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lk2/p;->a:Lk2/h;

    invoke-virtual {v1}, Lk2/h;->m()Lk2/p;

    move-result-object v1

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    if-lez v2, :cond_2c

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v3

    if-eqz v3, :cond_18

    move-object v1, p0

    :cond_18
    const/4 v3, 0x1

    :goto_19
    if-ge v3, v2, :cond_2c

    invoke-virtual {p0}, Lk2/p;->y()Lk2/p;

    move-result-object p0

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-virtual {v1, p0}, Lk2/p;->a(Lk2/p;)Lk2/p;

    move-result-object v1

    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_2c
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result p0

    if-gez p0, :cond_37

    invoke-virtual {v1}, Lk2/p;->o()Lk2/p;

    move-result-object p0

    return-object p0

    :cond_37
    return-object v1
.end method

.method public static J(Lk2/p;Ljava/math/BigInteger;Lk2/p;Ljava/math/BigInteger;)Lk2/p;
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    sget-object v4, Lk2/b0;->h:[I

    iget-object v5, v0, Lk2/p;->a:Lk2/h;

    iget-object v6, v2, Lk2/p;->a:Lk2/h;

    invoke-virtual {v5, v6}, Lk2/h;->i(Lk2/h;)Z

    move-result v6

    if-eqz v6, :cond_2ce

    invoke-virtual {v5, v2}, Lk2/h;->n(Lk2/p;)Lk2/p;

    move-result-object v2

    instance-of v6, v5, Lk2/c;

    if-eqz v6, :cond_35

    move-object v6, v5

    check-cast v6, Lk2/c;

    invoke-virtual {v6}, Lk2/c;->u()Z

    move-result v6

    if-eqz v6, :cond_35

    invoke-virtual/range {p0 .. p1}, Lk2/p;->n(Ljava/math/BigInteger;)Lk2/p;

    move-result-object v0

    invoke-virtual {v2, v3}, Lk2/p;->n(Ljava/math/BigInteger;)Lk2/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lk2/p;->a(Lk2/p;)Lk2/p;

    move-result-object v0

    invoke-static {v0}, Lk2/b0;->o(Lk2/p;)V

    return-object v0

    :cond_35
    iget-object v5, v5, Lk2/h;->g:Lo2/b;

    instance-of v6, v5, Lo2/b;

    const/16 v7, 0x8

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v6, :cond_18b

    filled-new-array {v0, v2}, [Lk2/p;

    move-result-object v0

    filled-new-array {v1, v3}, [Ljava/math/BigInteger;

    move-result-object v1

    aget-object v2, v0, v9

    iget-object v2, v2, Lk2/p;->a:Lk2/h;

    iget-object v2, v2, Lk2/h;->d:Ljava/math/BigInteger;

    const/4 v3, 0x4

    new-array v6, v3, [Ljava/math/BigInteger;

    move v10, v9

    move v11, v10

    :goto_52
    const/4 v12, 0x2

    if-ge v10, v12, :cond_6d

    aget-object v13, v1, v10

    invoke-virtual {v13, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v5, v13}, Lo2/b;->a(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v13

    add-int/lit8 v14, v11, 0x1

    aget-object v15, v13, v9

    aput-object v15, v6, v11

    add-int/2addr v11, v12

    aget-object v12, v13, v8

    aput-object v12, v6, v14

    add-int/lit8 v10, v10, 0x1

    goto :goto_52

    :cond_6d
    new-array v1, v3, [Z

    new-array v2, v3, [Lk2/z;

    new-array v10, v3, [[B

    iget-object v11, v5, Lo2/b;->b:Lb1/a;

    move v13, v9

    :goto_76
    if-ge v13, v12, :cond_111

    shl-int/lit8 v14, v13, 0x1

    add-int/lit8 v15, v14, 0x1

    aget-object v16, v6, v14

    invoke-virtual/range {v16 .. v16}, Ljava/math/BigInteger;->signum()I

    move-result v17

    if-gez v17, :cond_87

    move/from16 v17, v8

    goto :goto_89

    :cond_87
    move/from16 v17, v9

    :goto_89
    aput-boolean v17, v1, v14

    move/from16 p2, v8

    invoke-virtual/range {v16 .. v16}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v8

    aget-object v16, v6, v15

    invoke-virtual/range {v16 .. v16}, Ljava/math/BigInteger;->signum()I

    move-result v17

    if-gez v17, :cond_9c

    move/from16 v17, p2

    goto :goto_9e

    :cond_9c
    move/from16 v17, v9

    :goto_9e
    aput-boolean v17, v1, v15

    move/from16 v17, v9

    invoke-virtual/range {v16 .. v16}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v8}, Ljava/math/BigInteger;->bitLength()I

    move-result v12

    invoke-virtual {v9}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    invoke-static {v12, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3, v7, v4}, Lk2/b0;->n(II[I)I

    move-result v3

    aget-object v12, v0, v13

    invoke-static {v12, v3}, Lk2/b0;->C(Lk2/p;I)Lk2/z;

    move-result-object v3

    iget-object v7, v12, Lk2/p;->a:Lk2/h;

    move-object/from16 v18, v0

    new-instance v0, Lb1/b;

    move-object/from16 p3, v1

    const/16 v1, 0xb

    invoke-direct {v0, v5, v12, v1}, Lb1/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const-string v1, "bc_endo"

    invoke-virtual {v7, v12, v1, v0}, Lk2/h;->q(Lk2/p;Ljava/lang/String;Lk2/u;)Lk2/v;

    move-result-object v0

    check-cast v0, Lo2/a;

    iget-object v0, v0, Lo2/a;->b:Lk2/p;

    iget-object v1, v0, Lk2/p;->a:Lk2/h;

    new-instance v7, Lb1/b;

    const/4 v12, 0x7

    invoke-direct {v7, v3, v11, v12}, Lb1/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const-string v12, "bc_wnaf"

    invoke-virtual {v1, v0, v12, v7}, Lk2/h;->q(Lk2/p;Ljava/lang/String;Lk2/u;)Lk2/v;

    move-result-object v0

    check-cast v0, Lk2/z;

    iget v1, v3, Lk2/z;->f:I

    const/16 v7, 0x8

    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v12, v0, Lk2/z;->f:I

    invoke-static {v7, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    aput-object v3, v2, v14

    aput-object v0, v2, v15

    invoke-static {v1, v8}, Lk2/b0;->g(ILjava/math/BigInteger;)[B

    move-result-object v0

    aput-object v0, v10, v14

    invoke-static {v12, v9}, Lk2/b0;->g(ILjava/math/BigInteger;)[B

    move-result-object v0

    aput-object v0, v10, v15

    add-int/lit8 v13, v13, 0x1

    move/from16 v8, p2

    move-object/from16 v1, p3

    move/from16 v9, v17

    move-object/from16 v0, v18

    const/4 v3, 0x4

    const/16 v7, 0x8

    const/4 v12, 0x2

    goto/16 :goto_76

    :cond_111
    move-object/from16 p3, v1

    move/from16 p2, v8

    move/from16 v17, v9

    move/from16 v0, v17

    move v1, v0

    :goto_11a
    if-ge v0, v3, :cond_127

    aget-object v3, v10, v0

    array-length v3, v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x4

    goto :goto_11a

    :cond_127
    aget-object v0, v2, v17

    iget-object v0, v0, Lk2/z;->c:[Lk2/p;

    aget-object v0, v0, v17

    iget-object v0, v0, Lk2/p;->a:Lk2/h;

    invoke-virtual {v0}, Lk2/h;->m()Lk2/p;

    move-result-object v0

    add-int/lit8 v1, v1, -0x1

    move-object v4, v0

    move/from16 v3, v17

    :goto_138
    if-ltz v1, :cond_181

    move-object v6, v0

    move/from16 v5, v17

    const/4 v7, 0x4

    :goto_13e
    if-ge v5, v7, :cond_16d

    aget-object v8, v10, v5

    array-length v9, v8

    if-ge v1, v9, :cond_148

    aget-byte v8, v8, v1

    goto :goto_14a

    :cond_148
    move/from16 v8, v17

    :goto_14a
    if-eqz v8, :cond_16a

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v9

    aget-object v11, v2, v5

    if-gez v8, :cond_157

    move/from16 v8, p2

    goto :goto_159

    :cond_157
    move/from16 v8, v17

    :goto_159
    aget-boolean v12, p3, v5

    if-ne v8, v12, :cond_160

    iget-object v8, v11, Lk2/z;->c:[Lk2/p;

    goto :goto_162

    :cond_160
    iget-object v8, v11, Lk2/z;->d:[Lk2/p;

    :goto_162
    ushr-int/lit8 v9, v9, 0x1

    aget-object v8, v8, v9

    invoke-virtual {v6, v8}, Lk2/p;->a(Lk2/p;)Lk2/p;

    move-result-object v6

    :cond_16a
    add-int/lit8 v5, v5, 0x1

    goto :goto_13e

    :cond_16d
    if-ne v6, v0, :cond_172

    add-int/lit8 v3, v3, 0x1

    goto :goto_17e

    :cond_172
    if-lez v3, :cond_17a

    invoke-virtual {v4, v3}, Lk2/p;->x(I)Lk2/p;

    move-result-object v4

    move/from16 v3, v17

    :cond_17a
    invoke-virtual {v4, v6}, Lk2/p;->z(Lk2/p;)Lk2/p;

    move-result-object v4

    :goto_17e
    add-int/lit8 v1, v1, -0x1

    goto :goto_138

    :cond_181
    if-lez v3, :cond_187

    invoke-virtual {v4, v3}, Lk2/p;->x(I)Lk2/p;

    move-result-object v4

    :cond_187
    invoke-static {v4}, Lk2/b0;->o(Lk2/p;)V

    return-object v4

    :cond_18b
    move/from16 p2, v8

    move/from16 v17, v9

    invoke-virtual {v1}, Ljava/math/BigInteger;->signum()I

    move-result v5

    if-gez v5, :cond_198

    move/from16 v5, p2

    goto :goto_19a

    :cond_198
    move/from16 v5, v17

    :goto_19a
    invoke-virtual {v3}, Ljava/math/BigInteger;->signum()I

    move-result v6

    if-gez v6, :cond_1a3

    move/from16 v6, p2

    goto :goto_1a5

    :cond_1a3
    move/from16 v6, v17

    :goto_1a5
    invoke-virtual {v1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v3}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v7}, Ljava/math/BigInteger;->bitLength()I

    move-result v9

    const/16 v10, 0x8

    invoke-static {v9, v10, v4}, Lk2/b0;->n(II[I)I

    move-result v9

    invoke-virtual {v8}, Ljava/math/BigInteger;->bitLength()I

    move-result v11

    invoke-static {v11, v10, v4}, Lk2/b0;->n(II[I)I

    move-result v4

    invoke-static {v0, v9}, Lk2/b0;->C(Lk2/p;I)Lk2/z;

    move-result-object v9

    iget-object v10, v0, Lk2/p;->a:Lk2/h;

    invoke-static {v2, v4}, Lk2/b0;->C(Lk2/p;I)Lk2/z;

    move-result-object v4

    invoke-static {v10}, Lk2/b0;->h(Lk2/h;)I

    move-result v11

    if-nez v5, :cond_28c

    if-nez v6, :cond_28c

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v12

    if-gt v12, v11, :cond_28c

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v12

    if-gt v12, v11, :cond_28c

    iget v11, v9, Lk2/z;->a:I

    if-gtz v11, :cond_28c

    iget v11, v4, Lk2/z;->a:I

    if-gtz v11, :cond_28c

    invoke-static {v10}, Lk2/b0;->h(Lk2/h;)I

    move-result v4

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v5

    if-gt v5, v4, :cond_284

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v5

    if-gt v5, v4, :cond_284

    iget-object v5, v0, Lk2/p;->a:Lk2/h;

    new-instance v6, Lb1/b;

    const/4 v7, 0x6

    invoke-direct {v6, v5, v0, v7}, Lb1/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const-string v7, "bc_fixed_point"

    invoke-virtual {v5, v0, v7, v6}, Lk2/h;->q(Lk2/p;Ljava/lang/String;Lk2/u;)Lk2/v;

    move-result-object v5

    check-cast v5, Lk2/r;

    iget-object v6, v2, Lk2/p;->a:Lk2/h;

    new-instance v8, Lb1/b;

    const/4 v9, 0x6

    invoke-direct {v8, v6, v2, v9}, Lb1/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v6, v2, v7, v8}, Lk2/h;->q(Lk2/p;Ljava/lang/String;Lk2/u;)Lk2/v;

    move-result-object v6

    check-cast v6, Lk2/r;

    iget-object v7, v5, Lk2/r;->b:Lk2/b0;

    iget-object v8, v6, Lk2/r;->b:Lk2/b0;

    iget v9, v5, Lk2/r;->c:I

    iget v11, v6, Lk2/r;->c:I

    if-eq v9, v11, :cond_231

    new-instance v4, Lk2/q;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lk2/q;-><init>(I)V

    invoke-virtual {v4, v0, v1}, Lk2/b0;->w(Lk2/p;Ljava/math/BigInteger;)Lk2/p;

    move-result-object v0

    invoke-virtual {v4, v2, v3}, Lk2/b0;->w(Lk2/p;Ljava/math/BigInteger;)Lk2/p;

    move-result-object v1

    :goto_22b
    invoke-virtual {v0, v1}, Lk2/p;->a(Lk2/p;)Lk2/p;

    move-result-object v0

    goto/16 :goto_2ca

    :cond_231
    add-int/2addr v4, v9

    add-int/lit8 v4, v4, -0x1

    div-int/2addr v4, v9

    invoke-virtual {v10}, Lk2/h;->m()Lk2/p;

    move-result-object v0

    mul-int/2addr v9, v4

    invoke-static {v9, v1}, Ls2/b;->u(ILjava/math/BigInteger;)[I

    move-result-object v1

    invoke-static {v9, v3}, Ls2/b;->u(ILjava/math/BigInteger;)[I

    move-result-object v2

    add-int/lit8 v9, v9, -0x1

    move/from16 v3, v17

    :goto_246
    if-ge v3, v4, :cond_27b

    sub-int v10, v9, v3

    move/from16 v11, v17

    move v12, v11

    :goto_24d
    if-ltz v10, :cond_268

    ushr-int/lit8 v13, v10, 0x5

    aget v14, v1, v13

    and-int/lit8 v15, v10, 0x1f

    ushr-int/2addr v14, v15

    ushr-int/lit8 v16, v14, 0x1

    xor-int v11, v11, v16

    shl-int/lit8 v11, v11, 0x1

    xor-int/2addr v11, v14

    aget v13, v2, v13

    ushr-int/2addr v13, v15

    ushr-int/lit8 v14, v13, 0x1

    xor-int/2addr v12, v14

    shl-int/lit8 v12, v12, 0x1

    xor-int/2addr v12, v13

    sub-int/2addr v10, v4

    goto :goto_24d

    :cond_268
    invoke-virtual {v7, v11}, Lk2/b0;->v(I)Lk2/p;

    move-result-object v10

    invoke-virtual {v8, v12}, Lk2/b0;->v(I)Lk2/p;

    move-result-object v11

    invoke-virtual {v10, v11}, Lk2/p;->a(Lk2/p;)Lk2/p;

    move-result-object v10

    invoke-virtual {v0, v10}, Lk2/p;->z(Lk2/p;)Lk2/p;

    move-result-object v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_246

    :cond_27b
    iget-object v1, v5, Lk2/r;->a:Lk2/p;

    invoke-virtual {v0, v1}, Lk2/p;->a(Lk2/p;)Lk2/p;

    move-result-object v0

    iget-object v1, v6, Lk2/r;->a:Lk2/p;

    goto :goto_22b

    :cond_284
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "fixed-point comb doesn\'t support scalars larger than the curve order"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28c
    iget v0, v9, Lk2/z;->f:I

    const/16 v10, 0x8

    invoke-static {v10, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, v4, Lk2/z;->f:I

    invoke-static {v10, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-eqz v5, :cond_2a0

    iget-object v2, v9, Lk2/z;->d:[Lk2/p;

    :goto_29e
    move-object v10, v2

    goto :goto_2a3

    :cond_2a0
    iget-object v2, v9, Lk2/z;->c:[Lk2/p;

    goto :goto_29e

    :goto_2a3
    if-eqz v6, :cond_2a9

    iget-object v2, v4, Lk2/z;->d:[Lk2/p;

    :goto_2a7
    move-object v13, v2

    goto :goto_2ac

    :cond_2a9
    iget-object v2, v4, Lk2/z;->c:[Lk2/p;

    goto :goto_2a7

    :goto_2ac
    if-eqz v5, :cond_2b2

    iget-object v2, v9, Lk2/z;->c:[Lk2/p;

    :goto_2b0
    move-object v11, v2

    goto :goto_2b5

    :cond_2b2
    iget-object v2, v9, Lk2/z;->d:[Lk2/p;

    goto :goto_2b0

    :goto_2b5
    if-eqz v6, :cond_2bb

    iget-object v2, v4, Lk2/z;->c:[Lk2/p;

    :goto_2b9
    move-object v14, v2

    goto :goto_2be

    :cond_2bb
    iget-object v2, v4, Lk2/z;->d:[Lk2/p;

    goto :goto_2b9

    :goto_2be
    invoke-static {v0, v7}, Lk2/b0;->g(ILjava/math/BigInteger;)[B

    move-result-object v12

    invoke-static {v1, v8}, Lk2/b0;->g(ILjava/math/BigInteger;)[B

    move-result-object v15

    invoke-static/range {v10 .. v15}, Lk2/b0;->p([Lk2/p;[Lk2/p;[B[Lk2/p;[Lk2/p;[B)Lk2/p;

    move-result-object v0

    :goto_2ca
    invoke-static {v0}, Lk2/b0;->o(Lk2/p;)V

    return-object v0

    :cond_2ce
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Point must be on the same curve"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static d(Lk2/h;Lk2/p;)Lk2/p;
    .registers 3

    iget-object v0, p1, Lk2/p;->a:Lk2/h;

    invoke-virtual {p0, v0}, Lk2/h;->i(Lk2/h;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lk2/p;->h(Z)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lk2/h;->g([B)Lk2/p;

    move-result-object p0

    return-object p0

    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Point must be on the same curve"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static e(Lk2/p;)V
    .registers 5

    iget-object v0, p0, Lk2/p;->a:Lk2/h;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v1, v0, Lk2/h;->d:Ljava/math/BigInteger;

    if-nez v1, :cond_10

    invoke-virtual {v0}, Lk2/h;->l()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_10
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    :goto_14
    sget-object v2, Lk2/b0;->h:[I

    const/16 v3, 0x10

    invoke-static {v1, v3, v2}, Lk2/b0;->n(II[I)I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    new-instance v2, Lk2/a0;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lk2/a0;-><init>(II)V

    const-string v1, "bc_wnaf"

    invoke-virtual {v0, p0, v1, v2}, Lk2/h;->q(Lk2/p;Ljava/lang/String;Lk2/u;)Lk2/v;

    return-void
.end method

.method public static g(ILjava/math/BigInteger;)[B
    .registers 13

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_3e

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result p0

    if-nez p0, :cond_b

    goto :goto_4a

    :cond_b
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    new-array v4, v3, [B

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->xor(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    move v5, v0

    :goto_20
    if-ge v5, v3, :cond_3a

    invoke-virtual {p0, v5}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v6

    if-eqz v6, :cond_38

    add-int/lit8 v6, v5, -0x1

    invoke-virtual {p1, v5}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v7

    if-eqz v7, :cond_32

    const/4 v7, -0x1

    goto :goto_33

    :cond_32
    move v7, v0

    :goto_33
    int-to-byte v7, v7

    aput-byte v7, v4, v6

    add-int/lit8 v5, v5, 0x1

    :cond_38
    add-int/2addr v5, v0

    goto :goto_20

    :cond_3a
    sub-int/2addr v2, v1

    aput-byte v0, v4, v2

    return-object v4

    :cond_3e
    if-lt p0, v1, :cond_9a

    const/16 v1, 0x8

    if-gt p0, v1, :cond_9a

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-nez v1, :cond_4d

    :goto_4a
    sget-object p0, Lk2/b0;->i:[B

    return-object p0

    :cond_4d
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    add-int/2addr v1, v0

    new-array v2, v1, [B

    shl-int v3, v0, p0

    add-int/lit8 v4, v3, -0x1

    ushr-int/lit8 v5, v3, 0x1

    const/4 v6, 0x0

    move v7, v6

    move v8, v7

    move v9, v8

    :goto_5e
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v10

    if-gt v7, v10, :cond_91

    invoke-virtual {p1, v7}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v10

    if-ne v10, v9, :cond_6d

    add-int/lit8 v7, v7, 0x1

    goto :goto_5e

    :cond_6d
    invoke-virtual {p1, v7}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v10

    and-int/2addr v10, v4

    if-eqz v9, :cond_7a

    add-int/lit8 v10, v10, 0x1

    :cond_7a
    and-int v9, v10, v5

    if-eqz v9, :cond_80

    move v9, v0

    goto :goto_81

    :cond_80
    move v9, v6

    :goto_81
    if-eqz v9, :cond_84

    sub-int/2addr v10, v3

    :cond_84
    if-lez v8, :cond_88

    add-int/lit8 v7, v7, -0x1

    :cond_88
    add-int/2addr v8, v7

    add-int/lit8 v7, v8, 0x1

    int-to-byte v10, v10

    aput-byte v10, v2, v8

    move v8, v7

    move v7, p0

    goto :goto_5e

    :cond_91
    if-le v1, v8, :cond_99

    new-array p0, v8, [B

    invoke-static {v2, v6, p0, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    :cond_99
    return-object v2

    :cond_9a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'width\' must be in the range [2, 8]"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static h(Lk2/h;)I
    .registers 2

    iget-object v0, p0, Lk2/h;->d:Ljava/math/BigInteger;

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lk2/h;->l()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0

    :cond_b
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    return p0
.end method

.method public static l(Ljava/math/BigInteger;)I
    .registers 2

    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->xor(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitCount()I

    move-result p0

    return p0
.end method

.method public static n(II[I)I
    .registers 5

    const/4 v0, 0x0

    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_c

    aget v1, p2, v0

    if-ge p0, v1, :cond_9

    goto :goto_c

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_c
    :goto_c
    const/4 p0, 0x2

    add-int/2addr v0, p0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static o(Lk2/p;)V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lk2/p;->k(ZZ)Z

    move-result p0

    if-eqz p0, :cond_8

    return-void

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid result"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static p([Lk2/p;[Lk2/p;[B[Lk2/p;[Lk2/p;[B)Lk2/p;
    .registers 14

    array-length v0, p2

    array-length v1, p5

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x0

    aget-object v2, p0, v1

    iget-object v2, v2, Lk2/p;->a:Lk2/h;

    invoke-virtual {v2}, Lk2/h;->m()Lk2/p;

    move-result-object v2

    add-int/lit8 v0, v0, -0x1

    move v3, v1

    move-object v4, v2

    :goto_13
    if-ltz v0, :cond_60

    array-length v5, p2

    if-ge v0, v5, :cond_1b

    aget-byte v5, p2, v0

    goto :goto_1c

    :cond_1b
    move v5, v1

    :goto_1c
    array-length v6, p5

    if-ge v0, v6, :cond_22

    aget-byte v6, p5, v0

    goto :goto_23

    :cond_22
    move v6, v1

    :goto_23
    or-int v7, v5, v6

    if-nez v7, :cond_2a

    add-int/lit8 v3, v3, 0x1

    goto :goto_5d

    :cond_2a
    if-eqz v5, :cond_3e

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-gez v5, :cond_34

    move-object v5, p1

    goto :goto_35

    :cond_34
    move-object v5, p0

    :goto_35
    ushr-int/lit8 v7, v7, 0x1

    aget-object v5, v5, v7

    invoke-virtual {v2, v5}, Lk2/p;->a(Lk2/p;)Lk2/p;

    move-result-object v5

    goto :goto_3f

    :cond_3e
    move-object v5, v2

    :goto_3f
    if-eqz v6, :cond_52

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-gez v6, :cond_49

    move-object v6, p4

    goto :goto_4a

    :cond_49
    move-object v6, p3

    :goto_4a
    ushr-int/lit8 v7, v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Lk2/p;->a(Lk2/p;)Lk2/p;

    move-result-object v5

    :cond_52
    if-lez v3, :cond_59

    invoke-virtual {v4, v3}, Lk2/p;->x(I)Lk2/p;

    move-result-object v4

    move v3, v1

    :cond_59
    invoke-virtual {v4, v5}, Lk2/p;->z(Lk2/p;)Lk2/p;

    move-result-object v4

    :goto_5d
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    :cond_60
    if-lez v3, :cond_67

    invoke-virtual {v4, v3}, Lk2/p;->x(I)Lk2/p;

    move-result-object p0

    return-object p0

    :cond_67
    return-object v4
.end method

.method public static r(Lr2/a;)Z
    .registers 2

    invoke-interface {p0}, Lr2/a;->a()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_8

    return v0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public abstract A(Lk2/p;Ljava/math/BigInteger;)Lk2/p;
.end method

.method public abstract B()Lk2/b0;
.end method

.method public abstract E()Lk2/b0;
.end method

.method public abstract F()Lk2/b0;
.end method

.method public G(Lk2/b0;Lk2/b0;)Lk2/b0;
    .registers 3

    invoke-virtual {p0}, Lk2/b0;->F()Lk2/b0;

    move-result-object p0

    invoke-virtual {p1, p2}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lk2/b0;->a(Lk2/b0;)Lk2/b0;

    move-result-object p0

    return-object p0
.end method

.method public H(I)Lk2/b0;
    .registers 3

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_a

    invoke-virtual {p0}, Lk2/b0;->F()Lk2/b0;

    move-result-object p0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_a
    return-object p0
.end method

.method public abstract I(Lk2/b0;)Lk2/b0;
.end method

.method public K()Z
    .registers 2

    invoke-virtual {p0}, Lk2/b0;->L()Ljava/math/BigInteger;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->testBit(I)Z

    move-result p0

    return p0
.end method

.method public abstract L()Ljava/math/BigInteger;
.end method

.method public abstract a(Lk2/b0;)Lk2/b0;
.end method

.method public abstract b()Lk2/b0;
.end method

.method public c()I
    .registers 1

    invoke-virtual {p0}, Lk2/b0;->L()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    return p0
.end method

.method public abstract f(Lk2/b0;)Lk2/b0;
.end method

.method public i()[B
    .registers 2

    invoke-virtual {p0}, Lk2/b0;->j()I

    move-result v0

    invoke-virtual {p0}, Lk2/b0;->L()Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {v0, p0}, Lm4/a;->a(ILjava/math/BigInteger;)[B

    move-result-object p0

    return-object p0
.end method

.method public j()I
    .registers 1

    invoke-virtual {p0}, Lk2/b0;->k()I

    move-result p0

    add-int/lit8 p0, p0, 0x7

    div-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public abstract k()I
.end method

.method public abstract m()I
.end method

.method public abstract q()Lk2/b0;
.end method

.method public s()Z
    .registers 2

    invoke-virtual {p0}, Lk2/b0;->c()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_8

    return v0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public t()Z
    .registers 1

    invoke-virtual {p0}, Lk2/b0;->L()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget v0, p0, Lk2/b0;->g:I

    packed-switch v0, :pswitch_data_16

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_a
    invoke-virtual {p0}, Lk2/b0;->L()Ljava/math/BigInteger;

    move-result-object p0

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_16
    .packed-switch 0x4
        :pswitch_a
    .end packed-switch
.end method

.method public abstract u(I)Lk2/p;
.end method

.method public abstract v(I)Lk2/p;
.end method

.method public w(Lk2/p;Ljava/math/BigInteger;)Lk2/p;
    .registers 5

    invoke-virtual {p2}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p1}, Lk2/p;->l()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_20

    :cond_d
    invoke-virtual {p2}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lk2/b0;->A(Lk2/p;Ljava/math/BigInteger;)Lk2/p;

    move-result-object p0

    if-lez v0, :cond_18

    goto :goto_1c

    :cond_18
    invoke-virtual {p0}, Lk2/p;->o()Lk2/p;

    move-result-object p0

    :goto_1c
    invoke-static {p0}, Lk2/b0;->o(Lk2/p;)V

    return-object p0

    :cond_20
    :goto_20
    iget-object p0, p1, Lk2/p;->a:Lk2/h;

    invoke-virtual {p0}, Lk2/h;->m()Lk2/p;

    move-result-object p0

    return-object p0
.end method

.method public abstract x(Lk2/b0;)Lk2/b0;
.end method

.method public y(Lk2/b0;Lk2/b0;Lk2/b0;)Lk2/b0;
    .registers 4

    invoke-virtual {p0, p1}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object p0

    invoke-virtual {p2, p3}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lk2/b0;->I(Lk2/b0;)Lk2/b0;

    move-result-object p0

    return-object p0
.end method

.method public z(Lk2/b0;Lk2/b0;Lk2/b0;)Lk2/b0;
    .registers 4

    invoke-virtual {p0, p1}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object p0

    invoke-virtual {p2, p3}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lk2/b0;->a(Lk2/b0;)Lk2/b0;

    move-result-object p0

    return-object p0
.end method
