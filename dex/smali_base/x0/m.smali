.class public final Lx0/m;
.super Ljava/lang/Object;


# static fields
.field public static final d:Ljava/math/BigInteger;

.field public static final e:Ljava/math/BigInteger;


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lx0/m;->d:Ljava/math/BigInteger;

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lx0/m;->e:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public final a(II[Ljava/math/BigInteger;I)I
    .registers 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    :goto_4
    const v2, 0x8000

    if-ltz v1, :cond_1a1

    const/high16 v3, 0x10000

    if-le v1, v3, :cond_f

    goto/16 :goto_1a1

    :cond_f
    move/from16 v4, p2

    :goto_11
    const/4 v5, 0x1

    if-ltz v4, :cond_196

    if-gt v4, v3, :cond_196

    div-int/lit8 v6, v4, 0x2

    if-nez v6, :cond_1c

    goto/16 :goto_196

    :cond_1c
    new-instance v0, Ljava/math/BigInteger;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/math/BigInteger;

    const-string v3, "19381"

    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-array v3, v5, [Ljava/math/BigInteger;

    new-instance v4, Ljava/math/BigInteger;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    aput-object v4, v3, v1

    new-array v4, v5, [I

    aput p4, v4, v1

    move v6, v1

    move v7, v6

    :goto_40
    aget v8, v4, v6

    const/16 v9, 0x11

    if-lt v8, v9, :cond_5d

    array-length v7, v4

    add-int/2addr v7, v5

    new-array v8, v7, [I

    array-length v9, v4

    invoke-static {v4, v1, v8, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v4, v7, [I

    invoke-static {v8, v1, v4, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v7, v6, 0x1

    aget v6, v4, v6

    div-int/lit8 v6, v6, 0x2

    aput v6, v4, v7

    move v6, v7

    goto :goto_40

    :cond_5d
    add-int/lit8 v6, v7, 0x1

    new-array v6, v6, [Ljava/math/BigInteger;

    new-instance v8, Ljava/math/BigInteger;

    const-string v9, "8003"

    const/16 v10, 0x10

    invoke-direct {v8, v9, v10}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    add-int/lit8 v8, v7, -0x1

    move v9, v1

    :goto_6f
    if-ge v9, v7, :cond_191

    aget v11, v4, v8

    div-int/2addr v11, v10

    :goto_74
    array-length v12, v3

    new-array v13, v12, [Ljava/math/BigInteger;

    array-length v14, v3

    invoke-static {v3, v1, v13, v1, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v11, 0x1

    new-array v14, v3, [Ljava/math/BigInteger;

    invoke-static {v13, v1, v14, v1, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v3, v1

    :goto_83
    sget-object v12, Lx0/m;->e:Ljava/math/BigInteger;

    if-ge v3, v11, :cond_9f

    add-int/lit8 v13, v3, 0x1

    aget-object v3, v14, v3

    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v12, v10}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    aput-object v3, v14, v13

    move v3, v13

    goto :goto_83

    :cond_9f
    new-instance v3, Ljava/math/BigInteger;

    const-string v13, "0"

    invoke-direct {v3, v13}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    move v13, v1

    :goto_a7
    if-ge v13, v11, :cond_c0

    aget-object v15, v14, v13

    move/from16 p0, v1

    mul-int/lit8 v1, v13, 0x10

    invoke-virtual {v12, v1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    add-int/lit8 v13, v13, 0x1

    move/from16 v1, p0

    goto :goto_a7

    :cond_c0
    move/from16 p0, v1

    aget-object v1, v14, v11

    aput-object v1, v14, p0

    aget v1, v4, v8

    sub-int/2addr v1, v5

    invoke-virtual {v12, v1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v1

    add-int/lit8 v13, v8, 0x1

    aget-object v15, v6, v13

    invoke-virtual {v1, v15}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    aget v15, v4, v8

    sub-int/2addr v15, v5

    invoke-virtual {v12, v15}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    aget-object v15, v6, v13

    mul-int/lit8 v10, v11, 0x10

    invoke-virtual {v12, v10}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v15, v10}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    sget-object v10, Lx0/m;->d:Ljava/math/BigInteger;

    invoke-virtual {v3, v10}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-nez v3, :cond_104

    invoke-virtual {v1, v10}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    :cond_104
    move/from16 v3, p0

    :goto_106
    aget-object v15, v6, v13

    move-object/from16 p4, v6

    int-to-long v5, v3

    move-object/from16 v16, v0

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    aput-object v0, p4, v8

    aget v15, v4, v8

    invoke-virtual {v12, v15}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    const/4 v15, 0x1

    if-ne v0, v15, :cond_138

    move/from16 v1, p0

    move-object/from16 v6, p4

    move-object v3, v14

    move v5, v15

    move-object/from16 v0, v16

    const/16 v10, 0x10

    goto/16 :goto_74

    :cond_138
    aget-object v0, p4, v13

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v1, v15}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    aget-object v15, p4, v8

    invoke-virtual {v12, v0, v15}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-nez v0, :cond_188

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    aget-object v5, p4, v8

    invoke-virtual {v12, v0, v5}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-eqz v0, :cond_188

    add-int/lit8 v8, v8, -0x1

    if-ltz v8, :cond_178

    add-int/lit8 v9, v9, 0x1

    const/4 v5, 0x1

    const/16 v10, 0x10

    move/from16 v1, p0

    move-object/from16 v6, p4

    move-object v3, v14

    move-object/from16 v0, v16

    goto/16 :goto_6f

    :cond_178
    aget-object v0, p4, p0

    aput-object v0, p3, p0

    const/4 v15, 0x1

    aget-object v0, p4, v15

    aput-object v0, p3, v15

    aget-object v0, v14, p0

    :goto_183
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0

    :cond_188
    add-int/lit8 v3, v3, 0x2

    move-object/from16 v6, p4

    move-object/from16 v0, v16

    const/4 v5, 0x1

    goto/16 :goto_106

    :cond_191
    move/from16 p0, v1

    aget-object v0, v3, p0

    goto :goto_183

    :cond_196
    :goto_196
    iget-object v4, v0, Lx0/m;->c:Ljava/security/SecureRandom;

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    div-int/2addr v4, v2

    const/4 v15, 0x1

    add-int/2addr v4, v15

    goto/16 :goto_11

    :cond_1a1
    :goto_1a1
    iget-object v1, v0, Lx0/m;->c:Ljava/security/SecureRandom;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    div-int/2addr v1, v2

    goto/16 :goto_4
.end method

.method public final b(JJ[Ljava/math/BigInteger;I)J
    .registers 23

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    :goto_4
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_1b6

    const-wide v5, 0x100000000L

    cmp-long v7, v1, v5

    if-lez v7, :cond_15

    goto/16 :goto_1b6

    :cond_15
    move-wide/from16 v7, p3

    :goto_17
    cmp-long v9, v7, v3

    const/4 v10, 0x1

    if-ltz v9, :cond_1a9

    cmp-long v9, v7, v5

    if-gtz v9, :cond_1a9

    const-wide/16 v11, 0x2

    div-long v11, v7, v11

    cmp-long v9, v11, v3

    if-nez v9, :cond_2a

    goto/16 :goto_1a9

    :cond_2a
    new-instance v0, Ljava/math/BigInteger;

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/math/BigInteger;

    const-string v4, "97781173"

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-array v4, v10, [Ljava/math/BigInteger;

    new-instance v5, Ljava/math/BigInteger;

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    aput-object v5, v4, v1

    new-array v2, v10, [I

    aput p6, v2, v1

    move v5, v1

    move v6, v5

    :goto_4e
    aget v7, v2, v5

    const/16 v8, 0x21

    if-lt v7, v8, :cond_6b

    array-length v6, v2

    add-int/2addr v6, v10

    new-array v7, v6, [I

    array-length v8, v2

    invoke-static {v2, v1, v7, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v2, v6, [I

    invoke-static {v7, v1, v2, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v6, v5, 0x1

    aget v5, v2, v5

    div-int/lit8 v5, v5, 0x2

    aput v5, v2, v6

    move v5, v6

    goto :goto_4e

    :cond_6b
    add-int/lit8 v5, v6, 0x1

    new-array v5, v5, [Ljava/math/BigInteger;

    new-instance v7, Ljava/math/BigInteger;

    const-string v8, "8000000B"

    const/16 v9, 0x10

    invoke-direct {v7, v8, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v7, v5, v6

    add-int/lit8 v7, v6, -0x1

    move v8, v1

    :goto_7d
    if-ge v8, v6, :cond_1a4

    aget v9, v2, v7

    const/16 v11, 0x20

    div-int/2addr v9, v11

    :goto_84
    array-length v12, v4

    new-array v13, v12, [Ljava/math/BigInteger;

    array-length v14, v4

    invoke-static {v4, v1, v13, v1, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v9, 0x1

    new-array v14, v4, [Ljava/math/BigInteger;

    invoke-static {v13, v1, v14, v1, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v4, v1

    :goto_93
    sget-object v12, Lx0/m;->e:Ljava/math/BigInteger;

    if-ge v4, v9, :cond_af

    add-int/lit8 v13, v4, 0x1

    aget-object v4, v14, v4

    invoke-virtual {v4, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v12, v11}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    aput-object v4, v14, v13

    move v4, v13

    goto :goto_93

    :cond_af
    new-instance v4, Ljava/math/BigInteger;

    const-string v13, "0"

    invoke-direct {v4, v13}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    move v13, v1

    :goto_b7
    if-ge v13, v9, :cond_d0

    aget-object v15, v14, v13

    move/from16 p0, v1

    mul-int/lit8 v1, v13, 0x20

    invoke-virtual {v12, v1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    add-int/lit8 v13, v13, 0x1

    move/from16 v1, p0

    goto :goto_b7

    :cond_d0
    move/from16 p0, v1

    aget-object v1, v14, v9

    aput-object v1, v14, p0

    aget v1, v2, v7

    sub-int/2addr v1, v10

    invoke-virtual {v12, v1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v1

    add-int/lit8 v13, v7, 0x1

    aget-object v15, v5, v13

    invoke-virtual {v1, v15}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    aget v15, v2, v7

    sub-int/2addr v15, v10

    invoke-virtual {v12, v15}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    aget-object v15, v5, v13

    mul-int/lit8 v11, v9, 0x20

    invoke-virtual {v12, v11}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v15, v11}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    sget-object v11, Lx0/m;->d:Ljava/math/BigInteger;

    invoke-virtual {v4, v11}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-nez v4, :cond_114

    invoke-virtual {v1, v11}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    :cond_114
    move/from16 v4, p0

    :goto_116
    aget-object v15, v5, v13

    move-object/from16 p3, v11

    int-to-long v10, v4

    move-object/from16 p4, v0

    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    move-object/from16 v15, p3

    invoke-virtual {v0, v15}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    aput-object v0, v5, v7

    move-object/from16 p3, v2

    aget v2, p3, v7

    invoke-virtual {v12, v2}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_14c

    move/from16 v1, p0

    move-object/from16 v0, p4

    move v10, v2

    move-object v4, v14

    const/16 v11, 0x20

    move-object/from16 v2, p3

    goto/16 :goto_84

    :cond_14c
    aget-object v0, v5, v13

    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    aget-object v2, v5, v7

    invoke-virtual {v12, v0, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-nez v0, :cond_19a

    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    aget-object v2, v5, v7

    invoke-virtual {v12, v0, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-eqz v0, :cond_19a

    add-int/lit8 v7, v7, -0x1

    if-ltz v7, :cond_18a

    add-int/lit8 v8, v8, 0x1

    const/4 v10, 0x1

    move/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v0, p4

    move-object v4, v14

    goto/16 :goto_7d

    :cond_18a
    aget-object v0, v5, p0

    aput-object v0, p5, p0

    const/4 v2, 0x1

    aget-object v0, v5, v2

    aput-object v0, p5, v2

    aget-object v0, v14, p0

    :goto_195
    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_19a
    add-int/lit8 v4, v4, 0x2

    move-object/from16 v2, p3

    move-object/from16 v0, p4

    move-object v11, v15

    const/4 v10, 0x1

    goto/16 :goto_116

    :cond_1a4
    move/from16 p0, v1

    aget-object v0, v4, p0

    goto :goto_195

    :cond_1a9
    :goto_1a9
    iget-object v7, v0, Lx0/m;->c:Ljava/security/SecureRandom;

    invoke-virtual {v7}, Ljava/util/Random;->nextInt()I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    const/4 v8, 0x1

    add-int/2addr v7, v8

    int-to-long v7, v7

    goto/16 :goto_17

    :cond_1b6
    :goto_1b6
    iget-object v1, v0, Lx0/m;->c:Ljava/security/SecureRandom;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    int-to-long v1, v1

    goto/16 :goto_4
.end method

.method public final c(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 8

    sget-object v0, Lx0/m;->d:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    :cond_e
    iget-object v3, p0, Lx0/m;->c:Ljava/security/SecureRandom;

    invoke-static {v2, v3}, Lm4/a;->c(ILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-lez v4, :cond_e

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-gez v4, :cond_e

    invoke-virtual {v3, p2, p1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-eqz v4, :cond_e

    return-object v3
.end method
