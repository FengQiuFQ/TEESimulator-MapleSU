.class public Lorg/bouncycastle/jcajce/provider/asymmetric/gost/AlgorithmParameterGeneratorSpi;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseAlgorithmParameterGeneratorSpi;


# instance fields
.field protected random:Ljava/security/SecureRandom;

.field protected strength:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseAlgorithmParameterGeneratorSpi;-><init>()V

    const/16 v0, 0x400

    iput v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/AlgorithmParameterGeneratorSpi;->strength:I

    return-void
.end method


# virtual methods
.method public engineGenerateParameters()Ljava/security/AlgorithmParameters;
    .registers 24

    move-object/from16 v0, p0

    new-instance v1, Lx0/m;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iget-object v2, v0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/AlgorithmParameterGeneratorSpi;->random:Ljava/security/SecureRandom;

    const/4 v3, 0x2

    if-eqz v2, :cond_15

    iget v4, v0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/AlgorithmParameterGeneratorSpi;->strength:I

    iput v4, v1, Lx0/m;->a:I

    iput v3, v1, Lx0/m;->b:I

    iput-object v2, v1, Lx0/m;->c:Ljava/security/SecureRandom;

    goto :goto_21

    :cond_15
    iget v2, v0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/AlgorithmParameterGeneratorSpi;->strength:I

    invoke-static {}, Lorg/bouncycastle/crypto/o;->b()Ljava/security/SecureRandom;

    move-result-object v4

    iput v2, v1, Lx0/m;->a:I

    iput v3, v1, Lx0/m;->b:I

    iput-object v4, v1, Lx0/m;->c:Ljava/security/SecureRandom;

    :goto_21
    sget-object v8, Lx0/m;->e:Ljava/math/BigInteger;

    sget-object v9, Lx0/m;->d:Ljava/math/BigInteger;

    new-array v10, v3, [Ljava/math/BigInteger;

    iget v2, v1, Lx0/m;->b:I

    const/16 v12, 0x3ff

    const-string v13, "0"

    const-string v4, "Ooops! key size 512 or 1024 bit."

    const/16 v14, 0x400

    const/16 v5, 0x200

    const/4 v15, 0x1

    if-ne v2, v15, :cond_1bd

    iget-object v2, v1, Lx0/m;->c:Ljava/security/SecureRandom;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    iget-object v6, v1, Lx0/m;->c:Ljava/security/SecureRandom;

    invoke-virtual {v6}, Ljava/util/Random;->nextInt()I

    move-result v6

    iget v7, v1, Lx0/m;->a:I

    if-eq v7, v5, :cond_1a5

    if-ne v7, v14, :cond_19f

    :goto_48
    const v4, 0x8000

    if-ltz v2, :cond_51

    const/high16 v7, 0x10000

    if-le v2, v7, :cond_55

    :cond_51
    const/16 v16, 0x0

    goto/16 :goto_191

    :cond_55
    :goto_55
    if-ltz v6, :cond_5d

    if-gt v6, v7, :cond_5d

    div-int/lit8 v16, v6, 0x2

    if-nez v16, :cond_61

    :cond_5d
    const/16 v16, 0x0

    goto/16 :goto_17f

    :cond_61
    new-array v3, v3, [Ljava/math/BigInteger;

    new-instance v4, Ljava/math/BigInteger;

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/math/BigInteger;

    const/16 v16, 0x0

    const-string v11, "19381"

    invoke-direct {v7, v11}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    const/16 v11, 0x100

    invoke-virtual {v1, v2, v6, v3, v11}, Lx0/m;->a(II[Ljava/math/BigInteger;I)I

    move-result v2

    aget-object v11, v3, v16

    invoke-virtual {v1, v2, v6, v3, v5}, Lx0/m;->a(II[Ljava/math/BigInteger;I)I

    move-result v2

    aget-object v6, v3, v16

    const/16 v3, 0x41

    new-array v3, v3, [Ljava/math/BigInteger;

    new-instance v5, Ljava/math/BigInteger;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    aput-object v5, v3, v16

    :goto_92
    move/from16 v2, v16

    :goto_94
    const/16 v5, 0x40

    if-ge v2, v5, :cond_b3

    add-int/lit8 v5, v2, 0x1

    aget-object v2, v3, v2

    invoke-virtual {v2, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    const/16 v15, 0x10

    invoke-virtual {v8, v15}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    aput-object v2, v3, v5

    move v2, v5

    const/4 v15, 0x1

    goto :goto_94

    :cond_b3
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v13}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    move/from16 v15, v16

    :goto_ba
    move/from16 v18, v5

    if-ge v15, v5, :cond_d5

    aget-object v5, v3, v15

    mul-int/lit8 v14, v15, 0x10

    invoke-virtual {v8, v14}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    add-int/lit8 v15, v15, 0x1

    move/from16 v5, v18

    const/16 v14, 0x400

    goto :goto_ba

    :cond_d5
    aget-object v5, v3, v18

    aput-object v5, v3, v16

    invoke-virtual {v8, v12}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v11, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v8, v12}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v11, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    const/16 v15, 0x400

    invoke-virtual {v8, v15}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v5

    if-nez v5, :cond_111

    invoke-virtual {v2, v9}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    :cond_111
    move-object v12, v2

    move/from16 v2, v16

    :goto_114
    invoke-virtual {v11, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    int-to-long v14, v2

    move/from16 v20, v2

    invoke-static {v14, v15}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    move-object/from16 v21, v3

    const/16 v5, 0x400

    invoke-virtual {v8, v5}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_143

    move v15, v5

    move-object/from16 v3, v21

    const/16 v12, 0x3ff

    const/16 v14, 0x400

    goto/16 :goto_92

    :cond_143
    invoke-virtual {v11, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v14, v15}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v8, v3, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-nez v3, :cond_17a

    invoke-static {v14, v15}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v8, v3, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-eqz v3, :cond_17a

    aput-object v2, v10, v16

    const/16 v17, 0x1

    aput-object v11, v10, v17

    goto :goto_1aa

    :cond_17a
    add-int/lit8 v2, v20, 0x2

    move-object/from16 v3, v21

    goto :goto_114

    :goto_17f
    iget-object v6, v1, Lx0/m;->c:Ljava/security/SecureRandom;

    invoke-virtual {v6}, Ljava/util/Random;->nextInt()I

    move-result v6

    div-int/2addr v6, v4

    const/16 v17, 0x1

    add-int/lit8 v6, v6, 0x1

    const/16 v12, 0x3ff

    const/16 v14, 0x400

    const/4 v15, 0x1

    goto/16 :goto_55

    :goto_191
    iget-object v2, v1, Lx0/m;->c:Ljava/security/SecureRandom;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    div-int/2addr v2, v4

    const/16 v12, 0x3ff

    const/16 v14, 0x400

    const/4 v15, 0x1

    goto/16 :goto_48

    :cond_19f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a5
    const/16 v16, 0x0

    invoke-virtual {v1, v2, v6, v10, v5}, Lx0/m;->a(II[Ljava/math/BigInteger;I)I

    :goto_1aa
    aget-object v2, v10, v16

    const/16 v17, 0x1

    aget-object v3, v10, v17

    invoke-virtual {v1, v2, v3}, Lx0/m;->c(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    new-instance v4, Le1/i0;

    move/from16 v5, v16

    invoke-direct {v4, v2, v3, v1, v5}, Le1/i0;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    goto/16 :goto_357

    :cond_1bd
    iget-object v2, v1, Lx0/m;->c:Ljava/security/SecureRandom;

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v6

    iget-object v2, v1, Lx0/m;->c:Ljava/security/SecureRandom;

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v11

    iget v2, v1, Lx0/m;->a:I

    if-eq v2, v5, :cond_33f

    const/16 v15, 0x400

    if-ne v2, v15, :cond_339

    :goto_1d1
    const-wide/16 v4, 0x0

    cmp-long v2, v6, v4

    if-ltz v2, :cond_1e0

    const-wide v14, 0x100000000L

    cmp-long v2, v6, v14

    if-lez v2, :cond_1e8

    :cond_1e0
    move-object/from16 v20, v13

    const/16 v18, 0x3ff

    const/16 v19, 0x400

    goto/16 :goto_32d

    :cond_1e8
    :goto_1e8
    cmp-long v2, v11, v4

    if-ltz v2, :cond_1f8

    cmp-long v2, v11, v14

    if-gtz v2, :cond_1f8

    const-wide/16 v20, 0x2

    div-long v20, v11, v20

    cmp-long v2, v20, v4

    if-nez v2, :cond_200

    :cond_1f8
    move-wide/from16 v21, v6

    move-object/from16 v20, v13

    const/16 v19, 0x400

    goto/16 :goto_31b

    :cond_200
    move-wide/from16 v20, v6

    new-array v6, v3, [Ljava/math/BigInteger;

    new-instance v14, Ljava/math/BigInteger;

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v14, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v15, Ljava/math/BigInteger;

    const-string v2, "97781173"

    invoke-direct {v15, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x100

    move-wide v4, v11

    move-wide/from16 v2, v20

    invoke-virtual/range {v1 .. v7}, Lx0/m;->b(JJ[Ljava/math/BigInteger;I)J

    move-result-wide v2

    const/16 v16, 0x0

    aget-object v11, v6, v16

    const/16 v7, 0x200

    invoke-virtual/range {v1 .. v7}, Lx0/m;->b(JJ[Ljava/math/BigInteger;I)J

    move-result-wide v2

    aget-object v6, v6, v16

    const/16 v4, 0x21

    new-array v7, v4, [Ljava/math/BigInteger;

    new-instance v4, Ljava/math/BigInteger;

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    aput-object v4, v7, v16

    :goto_238
    const/4 v2, 0x0

    :goto_239
    const/16 v3, 0x20

    if-ge v2, v3, :cond_255

    add-int/lit8 v4, v2, 0x1

    aget-object v2, v7, v2

    invoke-virtual {v2, v15}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v8, v3}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    aput-object v2, v7, v4

    move v2, v4

    goto :goto_239

    :cond_255
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v13}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    :goto_25b
    if-ge v4, v3, :cond_270

    aget-object v5, v7, v4

    mul-int/lit8 v12, v4, 0x20

    invoke-virtual {v8, v12}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_25b

    :cond_270
    aget-object v3, v7, v3

    const/16 v16, 0x0

    aput-object v3, v7, v16

    const/16 v12, 0x3ff

    invoke-virtual {v8, v12}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v11, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v8, v12}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v11, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    const/16 v5, 0x400

    invoke-virtual {v8, v5}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-nez v3, :cond_2b0

    invoke-virtual {v2, v9}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    :cond_2b0
    const/4 v5, 0x0

    :goto_2b1
    invoke-virtual {v11, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    move-object/from16 v20, v13

    int-to-long v12, v5

    invoke-static {v12, v13}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    move/from16 v19, v5

    const/16 v4, 0x400

    invoke-virtual {v8, v4}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v5

    const/4 v4, 0x1

    if-ne v5, v4, :cond_2db

    move-object/from16 v13, v20

    goto/16 :goto_238

    :cond_2db
    invoke-virtual {v11, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-static {v12, v13}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v8, v4, v3}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-nez v4, :cond_316

    invoke-static {v12, v13}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v8, v4, v3}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-eqz v4, :cond_316

    const/16 v16, 0x0

    aput-object v3, v10, v16

    const/16 v17, 0x1

    aput-object v11, v10, v17

    move-object v6, v10

    :goto_314
    const/4 v5, 0x0

    goto :goto_348

    :cond_316
    add-int/lit8 v5, v19, 0x2

    move-object/from16 v13, v20

    goto :goto_2b1

    :goto_31b
    iget-object v2, v1, Lx0/m;->c:Ljava/security/SecureRandom;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    mul-int/2addr v2, v3

    const/16 v17, 0x1

    add-int/lit8 v2, v2, 0x1

    int-to-long v11, v2

    move-object/from16 v13, v20

    move-wide/from16 v6, v21

    goto/16 :goto_1e8

    :goto_32d
    iget-object v2, v1, Lx0/m;->c:Ljava/security/SecureRandom;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    mul-int/2addr v2, v3

    int-to-long v6, v2

    move-object/from16 v13, v20

    goto/16 :goto_1d1

    :cond_339
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33f
    move-wide v2, v6

    const/16 v7, 0x200

    move-object v6, v10

    move-wide v4, v11

    invoke-virtual/range {v1 .. v7}, Lx0/m;->b(JJ[Ljava/math/BigInteger;I)J

    goto :goto_314

    :goto_348
    aget-object v2, v6, v5

    const/16 v17, 0x1

    aget-object v3, v6, v17

    invoke-virtual {v1, v2, v3}, Lx0/m;->c(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    new-instance v4, Le1/i0;

    invoke-direct {v4, v2, v3, v1, v5}, Le1/i0;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    :goto_357
    :try_start_357
    const-string v1, "GOST3410"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseAlgorithmParameterGeneratorSpi;->createParametersInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    new-instance v1, Li2/l;

    new-instance v2, Li2/n;

    iget-object v3, v4, Le1/i0;->c:Ljava/math/BigInteger;

    iget-object v5, v4, Le1/i0;->d:Ljava/math/BigInteger;

    iget-object v4, v4, Le1/i0;->q:Ljava/math/BigInteger;

    invoke-direct {v2, v3, v5, v4}, Li2/n;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v1, v2}, Li2/l;-><init>(Li2/n;)V

    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_370
    .catch Ljava/lang/Exception; {:try_start_357 .. :try_end_370} :catch_371

    return-object v0

    :catch_371
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public engineInit(ILjava/security/SecureRandom;)V
    .registers 3

    iput p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/AlgorithmParameterGeneratorSpi;->strength:I

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/AlgorithmParameterGeneratorSpi;->random:Ljava/security/SecureRandom;

    return-void
.end method

.method public engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 3

    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "No supported AlgorithmParameterSpec for GOST3410 parameter generation."

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
