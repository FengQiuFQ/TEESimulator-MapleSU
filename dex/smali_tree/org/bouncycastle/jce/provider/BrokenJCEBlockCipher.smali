.class public Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/jce/provider/BrokenPBE;


# instance fields
.field private availableSpecs:[Ljava/lang/Class;

.field private cipher:Lorg/bouncycastle/crypto/e;

.field private engineParams:Ljava/security/AlgorithmParameters;

.field private ivLength:I

.field private ivParam:Le1/s0;

.field private pbeHash:I

.field private pbeIvSize:I

.field private pbeKeySize:I

.field private pbeType:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/d;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Ljavax/crypto/spec/RC2ParameterSpec;

    const-class v1, Ljavax/crypto/spec/RC5ParameterSpec;

    const-class v2, Ljavax/crypto/spec/IvParameterSpec;

    const-class v3, Ljavax/crypto/spec/PBEParameterSpec;

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->availableSpecs:[Ljava/lang/Class;

    const/4 v0, 0x2

    iput v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->pbeType:I

    const/4 v0, 0x1

    iput v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->pbeHash:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->ivLength:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->engineParams:Ljava/security/AlgorithmParameters;

    new-instance v0, Ld1/c;

    invoke-direct {v0, p1}, Ld1/c;-><init>(Lorg/bouncycastle/crypto/d;)V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/e;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/d;IIII)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Ljavax/crypto/spec/RC2ParameterSpec;

    const-class v1, Ljavax/crypto/spec/RC5ParameterSpec;

    const-class v2, Ljavax/crypto/spec/IvParameterSpec;

    const-class v3, Ljavax/crypto/spec/PBEParameterSpec;

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->availableSpecs:[Ljava/lang/Class;

    const/4 v0, 0x2

    iput v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->pbeType:I

    const/4 v0, 0x1

    iput v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->pbeHash:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->ivLength:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->engineParams:Ljava/security/AlgorithmParameters;

    new-instance v0, Ld1/c;

    invoke-direct {v0, p1}, Ld1/c;-><init>(Lorg/bouncycastle/crypto/d;)V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/e;

    iput p2, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->pbeType:I

    iput p3, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->pbeHash:I

    iput p4, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->pbeKeySize:I

    iput p5, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->pbeIvSize:I

    return-void
.end method


# virtual methods
.method public engineDoFinal([BII[BI)I
    .registers 12

    if-eqz p3, :cond_e

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/e;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/e;->i([BII[BI)I

    move-result p1

    goto :goto_11

    :cond_e
    move-object v4, p4

    move v5, p5

    const/4 p1, 0x0

    :goto_11
    :try_start_11
    iget-object p0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/e;

    add-int p5, v5, p1

    invoke-virtual {p0, v4, p5}, Lorg/bouncycastle/crypto/e;->a([BI)I

    move-result p0
    :try_end_19
    .catch Lorg/bouncycastle/crypto/q; {:try_start_11 .. :try_end_19} :catch_27
    .catch Lorg/bouncycastle/crypto/x; {:try_start_11 .. :try_end_19} :catch_1b

    add-int/2addr p1, p0

    return p1

    :catch_1b
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljavax/crypto/BadPaddingException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_27
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljavax/crypto/IllegalBlockSizeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineDoFinal([BII)[B
    .registers 11

    invoke-virtual {p0, p3}, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->engineGetOutputSize(I)I

    move-result v0

    new-array v5, v0, [B

    const/4 v0, 0x0

    if-eqz p3, :cond_14

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/e;

    const/4 v6, 0x0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/e;->i([BII[BI)I

    move-result p1

    goto :goto_15

    :cond_14
    move p1, v0

    :goto_15
    :try_start_15
    iget-object p0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/e;

    invoke-virtual {p0, v5, p1}, Lorg/bouncycastle/crypto/e;->a([BI)I

    move-result p0
    :try_end_1b
    .catch Lorg/bouncycastle/crypto/q; {:try_start_15 .. :try_end_1b} :catch_2e
    .catch Lorg/bouncycastle/crypto/x; {:try_start_15 .. :try_end_1b} :catch_22

    add-int/2addr p1, p0

    new-array p0, p1, [B

    invoke-static {v5, v0, p0, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    :catch_22
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljavax/crypto/BadPaddingException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_2e
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljavax/crypto/IllegalBlockSizeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineGetBlockSize()I
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/e;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/e;->b()I

    move-result p0

    return p0
.end method

.method public engineGetIV()[B
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->ivParam:Le1/s0;

    if-eqz p0, :cond_7

    iget-object p0, p0, Le1/s0;->c:[B

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public engineGetKeySize(Ljava/security/Key;)I
    .registers 2

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p0

    array-length p0, p0

    return p0
.end method

.method public engineGetOutputSize(I)I
    .registers 2

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/e;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/e;->c(I)I

    move-result p0

    return p0
.end method

.method public engineGetParameters()Ljava/security/AlgorithmParameters;
    .registers 4

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->engineParams:Ljava/security/AlgorithmParameters;

    if-nez v0, :cond_3e

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->ivParam:Le1/s0;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/e;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/e;->d()Lorg/bouncycastle/crypto/d;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/crypto/d;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_23

    const/4 v2, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_23
    :try_start_23
    const-string v1, "BC"

    invoke-static {v0, v1}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->engineParams:Ljava/security/AlgorithmParameters;

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->ivParam:Le1/s0;

    iget-object v1, v1, Le1/s0;->c:[B

    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->init([B)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_32} :catch_33

    goto :goto_3e

    :catch_33
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3e
    :goto_3e
    iget-object p0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->engineParams:Ljava/security/AlgorithmParameters;

    return-object p0
.end method

.method public engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .registers 9

    const/4 v0, 0x0

    if-eqz p3, :cond_2e

    const/4 v1, 0x0

    :goto_4
    iget-object v2, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->availableSpecs:[Ljava/lang/Class;

    array-length v3, v2

    if-eq v1, v3, :cond_13

    :try_start_9
    aget-object v2, v2, v1

    invoke-virtual {p3, v2}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_f} :catch_10

    goto :goto_13

    :catch_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_13
    :goto_13
    if-eqz v0, :cond_16

    goto :goto_2e

    :cond_16
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "can\'t handle parameter "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/security/AlgorithmParameters;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2e
    :goto_2e
    iput-object p3, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->engineParams:Ljava/security/AlgorithmParameters;

    invoke-virtual {p0, p1, p2, v0, p4}, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    return-void
.end method

.method public engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_4} :catch_5

    return-void

    :catch_5
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 13

    instance-of v0, p2, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    if-eqz v0, :cond_29

    move-object v1, p2

    check-cast v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    iget v3, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->pbeType:I

    iget v4, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->pbeHash:I

    iget-object p2, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/e;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/e;->d()Lorg/bouncycastle/crypto/d;

    move-result-object p2

    invoke-interface {p2}, Lorg/bouncycastle/crypto/d;->getAlgorithmName()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->pbeKeySize:I

    iget v7, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->pbeIvSize:I

    move-object v2, p3

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/jce/provider/BrokenPBE$Util;->makePBEParameters(Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;Ljava/security/spec/AlgorithmParameterSpec;IILjava/lang/String;II)Lorg/bouncycastle/crypto/g;

    move-result-object p2

    iget p3, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->pbeIvSize:I

    if-eqz p3, :cond_be

    move-object p3, p2

    check-cast p3, Le1/s0;

    iput-object p3, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->ivParam:Le1/s0;

    goto/16 :goto_be

    :cond_29
    move-object v2, p3

    if-nez v2, :cond_38

    new-instance p3, Le1/o0;

    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object p2

    invoke-direct {p3, p2}, Le1/o0;-><init>([B)V

    :goto_35
    move-object p2, p3

    goto/16 :goto_be

    :cond_38
    instance-of p3, v2, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz p3, :cond_62

    iget p3, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->ivLength:I

    if-eqz p3, :cond_58

    new-instance p3, Le1/s0;

    new-instance v0, Le1/o0;

    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object p2

    invoke-direct {v0, p2}, Le1/o0;-><init>([B)V

    move-object p2, v2

    check-cast p2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p2}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object p2

    invoke-direct {p3, v0, p2}, Le1/s0;-><init>(Lorg/bouncycastle/crypto/g;[B)V

    iput-object p3, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->ivParam:Le1/s0;

    goto :goto_35

    :cond_58
    new-instance p3, Le1/o0;

    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object p2

    invoke-direct {p3, p2}, Le1/o0;-><init>([B)V

    goto :goto_35

    :cond_62
    instance-of p3, v2, Ljavax/crypto/spec/RC2ParameterSpec;

    if-eqz p3, :cond_8e

    move-object p3, v2

    check-cast p3, Ljavax/crypto/spec/RC2ParameterSpec;

    new-instance v0, Le1/w0;

    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object p2

    invoke-virtual {p3}, Ljavax/crypto/spec/RC2ParameterSpec;->getEffectiveKeyBits()I

    move-result v1

    invoke-direct {v0, p2, v1}, Le1/w0;-><init>([BI)V

    invoke-virtual {p3}, Ljavax/crypto/spec/RC2ParameterSpec;->getIV()[B

    move-result-object p2

    if-eqz p2, :cond_8c

    iget p2, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->ivLength:I

    if-eqz p2, :cond_8c

    new-instance p2, Le1/s0;

    invoke-virtual {p3}, Ljavax/crypto/spec/RC2ParameterSpec;->getIV()[B

    move-result-object p3

    invoke-direct {p2, v0, p3}, Le1/s0;-><init>(Lorg/bouncycastle/crypto/g;[B)V

    :goto_89
    iput-object p2, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->ivParam:Le1/s0;

    goto :goto_be

    :cond_8c
    move-object p2, v0

    goto :goto_be

    :cond_8e
    instance-of p3, v2, Ljavax/crypto/spec/RC5ParameterSpec;

    if-eqz p3, :cond_116

    move-object p3, v2

    check-cast p3, Ljavax/crypto/spec/RC5ParameterSpec;

    new-instance v0, Le1/x0;

    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object p2

    invoke-virtual {p3}, Ljavax/crypto/spec/RC5ParameterSpec;->getRounds()I

    move-result v1

    invoke-direct {v0, p2, v1}, Le1/x0;-><init>([BI)V

    invoke-virtual {p3}, Ljavax/crypto/spec/RC5ParameterSpec;->getWordSize()I

    move-result p2

    const/16 v1, 0x20

    if-ne p2, v1, :cond_10e

    invoke-virtual {p3}, Ljavax/crypto/spec/RC5ParameterSpec;->getIV()[B

    move-result-object p2

    if-eqz p2, :cond_8c

    iget p2, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->ivLength:I

    if-eqz p2, :cond_8c

    new-instance p2, Le1/s0;

    invoke-virtual {p3}, Ljavax/crypto/spec/RC5ParameterSpec;->getIV()[B

    move-result-object p3

    invoke-direct {p2, v0, p3}, Le1/s0;-><init>(Lorg/bouncycastle/crypto/g;[B)V

    goto :goto_89

    :cond_be
    :goto_be
    iget p3, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->ivLength:I

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eqz p3, :cond_eb

    instance-of p3, p2, Le1/s0;

    if-nez p3, :cond_eb

    if-nez p4, :cond_cf

    invoke-static {}, Lorg/bouncycastle/crypto/o;->b()Ljava/security/SecureRandom;

    move-result-object p4

    :cond_cf
    if-eq p1, v2, :cond_dc

    if-ne p1, v1, :cond_d4

    goto :goto_dc

    :cond_d4
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "no IV set when one expected"

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_dc
    :goto_dc
    iget p3, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->ivLength:I

    new-array v3, p3, [B

    invoke-virtual {p4, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance p4, Le1/s0;

    invoke-direct {p4, p2, v3, v0, p3}, Le1/s0;-><init>(Lorg/bouncycastle/crypto/g;[BII)V

    iput-object p4, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->ivParam:Le1/s0;

    move-object p2, p4

    :cond_eb
    if-eq p1, v2, :cond_108

    const/4 p3, 0x2

    if-eq p1, p3, :cond_102

    if-eq p1, v1, :cond_108

    const/4 p3, 0x4

    if-ne p1, p3, :cond_f6

    goto :goto_102

    :cond_f6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "unknown opmode: "

    invoke-static {p1, p2}, Lb/b;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_102
    :goto_102
    iget-object p0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/e;

    invoke-virtual {p0, v0, p2}, Lorg/bouncycastle/crypto/e;->f(ZLorg/bouncycastle/crypto/g;)V

    return-void

    :cond_108
    iget-object p0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/e;

    invoke-virtual {p0, v2, p2}, Lorg/bouncycastle/crypto/e;->f(ZLorg/bouncycastle/crypto/g;)V

    return-void

    :cond_10e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "can only accept RC5 word size 32 (at the moment...)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_116
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "unknown parameter type."

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineSetMode(Ljava/lang/String;)V
    .registers 5

    invoke-static {p1}, Lm4/m;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ECB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 p1, 0x0

    iput p1, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->ivLength:I

    new-instance p1, Ld1/c;

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/e;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/e;->d()Lorg/bouncycastle/crypto/d;

    move-result-object v0

    invoke-direct {p1, v0}, Ld1/c;-><init>(Lorg/bouncycastle/crypto/d;)V

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/e;

    return-void

    :cond_1d
    const-string v1, "CBC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    iget-object p1, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/e;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/e;->d()Lorg/bouncycastle/crypto/d;

    move-result-object p1

    invoke-interface {p1}, Lorg/bouncycastle/crypto/d;->c()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->ivLength:I

    new-instance p1, Ld1/c;

    new-instance v0, La1/c;

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/e;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/e;->d()Lorg/bouncycastle/crypto/d;

    move-result-object v1

    invoke-direct {v0, v1}, La1/c;-><init>(Lorg/bouncycastle/crypto/d;)V

    invoke-direct {p1, v0}, Ld1/c;-><init>(Lorg/bouncycastle/crypto/d;)V

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/e;

    return-void

    :cond_44
    const-string v1, "OFB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x3

    if-eqz v1, :cond_95

    iget-object p1, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/e;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/e;->d()Lorg/bouncycastle/crypto/d;

    move-result-object p1

    invoke-interface {p1}, Lorg/bouncycastle/crypto/d;->c()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->ivLength:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    if-eq p1, v2, :cond_7a

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    new-instance v0, Ld1/c;

    new-instance v1, La1/w;

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/e;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/e;->d()Lorg/bouncycastle/crypto/d;

    move-result-object v2

    invoke-direct {v1, v2, p1}, La1/w;-><init>(Lorg/bouncycastle/crypto/d;I)V

    invoke-direct {v0, v1}, Ld1/c;-><init>(Lorg/bouncycastle/crypto/d;)V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/e;

    return-void

    :cond_7a
    new-instance p1, Ld1/c;

    new-instance v0, La1/w;

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/e;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/e;->d()Lorg/bouncycastle/crypto/d;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/e;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/e;->b()I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    invoke-direct {v0, v1, v2}, La1/w;-><init>(Lorg/bouncycastle/crypto/d;I)V

    invoke-direct {p1, v0}, Ld1/c;-><init>(Lorg/bouncycastle/crypto/d;)V

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/e;

    return-void

    :cond_95
    const-string v1, "CFB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e5

    iget-object p1, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/e;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/e;->d()Lorg/bouncycastle/crypto/d;

    move-result-object p1

    invoke-interface {p1}, Lorg/bouncycastle/crypto/d;->c()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->ivLength:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    if-eq p1, v2, :cond_ca

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    new-instance v0, Ld1/c;

    new-instance v1, La1/g;

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/e;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/e;->d()Lorg/bouncycastle/crypto/d;

    move-result-object v2

    invoke-direct {v1, v2, p1}, La1/g;-><init>(Lorg/bouncycastle/crypto/d;I)V

    invoke-direct {v0, v1}, Ld1/c;-><init>(Lorg/bouncycastle/crypto/d;)V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/e;

    return-void

    :cond_ca
    new-instance p1, Ld1/c;

    new-instance v0, La1/g;

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/e;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/e;->d()Lorg/bouncycastle/crypto/d;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/e;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/e;->b()I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    invoke-direct {v0, v1, v2}, La1/g;-><init>(Lorg/bouncycastle/crypto/d;I)V

    invoke-direct {p1, v0}, Ld1/c;-><init>(Lorg/bouncycastle/crypto/d;)V

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/e;

    return-void

    :cond_e5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "can\'t support mode "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineSetPadding(Ljava/lang/String;)V
    .registers 4

    invoke-static {p1}, Lm4/m;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NOPADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    new-instance p1, Lorg/bouncycastle/crypto/e;

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/e;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/e;->d()Lorg/bouncycastle/crypto/d;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/e;-><init>(Lorg/bouncycastle/crypto/d;)V

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/e;

    return-void

    :cond_1a
    const-string v1, "PKCS5PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_57

    const-string v1, "PKCS7PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_57

    const-string v1, "ISO10126PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    goto :goto_57

    :cond_33
    const-string v1, "WITHCTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    new-instance p1, La1/h;

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/e;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/e;->d()Lorg/bouncycastle/crypto/d;

    move-result-object v0

    invoke-direct {p1, v0}, La1/h;-><init>(Lorg/bouncycastle/crypto/d;)V

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/e;

    return-void

    :cond_49
    new-instance p0, Ljavax/crypto/NoSuchPaddingException;

    const-string v0, "Padding "

    const-string v1, " unknown."

    invoke-static {v0, p1, v1}, Lb/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_57
    :goto_57
    new-instance p1, Ld1/c;

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/e;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/e;->d()Lorg/bouncycastle/crypto/d;

    move-result-object v0

    invoke-direct {p1, v0}, Ld1/c;-><init>(Lorg/bouncycastle/crypto/d;)V

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/e;

    return-void
.end method

.method public engineUnwrap([BLjava/lang/String;I)Ljava/security/Key;
    .registers 7

    const-string v0, "Unknown key type "

    :try_start_2
    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v1}, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->engineDoFinal([BII)[B

    move-result-object p0
    :try_end_8
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_8} :catch_8e
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_8} :catch_83

    const/4 p1, 0x3

    if-ne p3, p1, :cond_11

    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {p1, p0, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object p1

    :cond_11
    :try_start_11
    const-string p1, "BC"

    invoke-static {p2, p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    const/4 p2, 0x1

    if-ne p3, p2, :cond_2a

    new-instance p2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {p2, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {p1, p2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0

    return-object p0

    :catch_24
    move-exception p0

    goto :goto_41

    :catch_26
    move-exception p0

    goto :goto_57

    :catch_28
    move-exception p0

    goto :goto_6d

    :cond_2a
    const/4 p2, 0x2

    if-ne p3, p2, :cond_37

    new-instance p2, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {p2, p0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {p1, p2}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p0
    :try_end_36
    .catch Ljava/security/NoSuchProviderException; {:try_start_11 .. :try_end_36} :catch_28
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_11 .. :try_end_36} :catch_26
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_11 .. :try_end_36} :catch_24

    return-object p0

    :cond_37
    new-instance p0, Ljava/security/InvalidKeyException;

    invoke-static {p3, v0}, Lb/b;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_41
    new-instance p1, Ljava/security/InvalidKeyException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_57
    new-instance p1, Ljava/security/InvalidKeyException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_6d
    new-instance p1, Ljava/security/InvalidKeyException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_83
    move-exception p0

    new-instance p1, Ljava/security/InvalidKeyException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_8e
    move-exception p0

    new-instance p1, Ljava/security/InvalidKeyException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineUpdate([BII[BI)I
    .registers 6

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/e;

    invoke-virtual/range {p0 .. p5}, Lorg/bouncycastle/crypto/e;->i([BII[BI)I

    move-result p0

    return p0
.end method

.method public engineUpdate([BII)[B
    .registers 16

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/e;

    invoke-virtual {v0, p3}, Lorg/bouncycastle/crypto/e;->e(I)I

    move-result v0

    if-lez v0, :cond_14

    new-array v5, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/e;

    const/4 v6, 0x0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/e;->i([BII[BI)I

    return-object v5

    :cond_14
    move-object v2, p1

    move v3, p2

    move v4, p3

    iget-object v6, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/e;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual/range {v6 .. v11}, Lorg/bouncycastle/crypto/e;->i([BII[BI)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public engineWrap(Ljava/security/Key;)[B
    .registers 4

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    if-eqz p1, :cond_18

    :try_start_6
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->engineDoFinal([BII)[B

    move-result-object p0
    :try_end_c
    .catch Ljavax/crypto/BadPaddingException; {:try_start_6 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    move-exception p0

    new-instance p1, Ljavax/crypto/IllegalBlockSizeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_18
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "Cannot wrap key, null encoding."

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
