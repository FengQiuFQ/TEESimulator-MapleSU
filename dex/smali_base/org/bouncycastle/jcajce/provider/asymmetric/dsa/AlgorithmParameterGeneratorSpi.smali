.class public Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseAlgorithmParameterGeneratorSpi;


# instance fields
.field protected params:Le1/l;

.field protected random:Ljava/security/SecureRandom;

.field protected strength:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseAlgorithmParameterGeneratorSpi;-><init>()V

    const/16 v0, 0x800

    iput v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->strength:I

    return-void
.end method


# virtual methods
.method public engineGenerateParameters()Ljava/security/AlgorithmParameters;
    .registers 7

    iget v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->strength:I

    const/16 v1, 0x400

    if-gt v0, v1, :cond_c

    new-instance v0, Lx0/h;

    invoke-direct {v0}, Lx0/h;-><init>()V

    goto :goto_16

    :cond_c
    new-instance v0, Lx0/h;

    new-instance v2, Ls0/b0;

    invoke-direct {v2}, Ls0/b0;-><init>()V

    invoke-direct {v0, v2}, Lx0/h;-><init>(Ls0/j;)V

    :goto_16
    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->random:Ljava/security/SecureRandom;

    if-nez v2, :cond_20

    invoke-static {}, Lorg/bouncycastle/crypto/o;->b()Ljava/security/SecureRandom;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->random:Ljava/security/SecureRandom;

    :cond_20
    iget v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->strength:I

    invoke-static {v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/PrimeCertaintyCalculator;->getDefaultCertainty(I)I

    move-result v2

    iget v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->strength:I

    if-ne v3, v1, :cond_39

    new-instance v3, Le1/l;

    const/16 v4, 0xa0

    iget-object v5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->random:Ljava/security/SecureRandom;

    invoke-direct {v3, v1, v4, v2, v5}, Le1/l;-><init>(IIILjava/security/SecureRandom;)V

    iput-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->params:Le1/l;

    invoke-virtual {v0, v3}, Lx0/h;->d(Le1/l;)V

    goto :goto_4f

    :cond_39
    if-le v3, v1, :cond_4a

    new-instance v1, Le1/l;

    const/16 v4, 0x100

    iget-object v5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->random:Ljava/security/SecureRandom;

    invoke-direct {v1, v3, v4, v2, v5}, Le1/l;-><init>(IIILjava/security/SecureRandom;)V

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->params:Le1/l;

    invoke-virtual {v0, v1}, Lx0/h;->d(Le1/l;)V

    goto :goto_4f

    :cond_4a
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, v3, v2, v1}, Lx0/h;->c(IILjava/security/SecureRandom;)V

    :goto_4f
    invoke-virtual {v0}, Lx0/h;->a()Le1/m;

    move-result-object v0

    :try_start_53
    const-string v1, "DSA"

    invoke-virtual {p0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseAlgorithmParameterGeneratorSpi;->createParametersInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object p0

    new-instance v1, Ljava/security/spec/DSAParameterSpec;

    iget-object v2, v0, Le1/m;->q:Ljava/math/BigInteger;

    iget-object v3, v0, Le1/m;->d:Ljava/math/BigInteger;

    iget-object v0, v0, Le1/m;->c:Ljava/math/BigInteger;

    invoke-direct {v1, v2, v3, v0}, Ljava/security/spec/DSAParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {p0, v1}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_67} :catch_68

    return-object p0

    :catch_68
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineInit(ILjava/security/SecureRandom;)V
    .registers 5

    const/16 v0, 0x200

    if-lt p1, v0, :cond_2d

    const/16 v0, 0xc00

    if-gt p1, v0, :cond_2d

    const/16 v0, 0x400

    if-gt p1, v0, :cond_19

    rem-int/lit8 v1, p1, 0x40

    if-nez v1, :cond_11

    goto :goto_19

    :cond_11
    new-instance p0, Ljava/security/InvalidParameterException;

    const-string p1, "strength must be a multiple of 64 below 1024 bits."

    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_19
    :goto_19
    if-le p1, v0, :cond_28

    rem-int/lit16 v0, p1, 0x400

    if-nez v0, :cond_20

    goto :goto_28

    :cond_20
    new-instance p0, Ljava/security/InvalidParameterException;

    const-string p1, "strength must be a multiple of 1024 above 1024 bits."

    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_28
    :goto_28
    iput p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->strength:I

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->random:Ljava/security/SecureRandom;

    return-void

    :cond_2d
    new-instance p0, Ljava/security/InvalidParameterException;

    const-string p1, "strength must be from 512 - 3072"

    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 3

    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "No supported AlgorithmParameterSpec for DSA parameter generation."

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
