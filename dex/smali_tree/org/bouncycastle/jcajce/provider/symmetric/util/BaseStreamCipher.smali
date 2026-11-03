.class public Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;

# interfaces
.implements Lorg/bouncycastle/jcajce/provider/symmetric/util/PBE;


# instance fields
.field private availableSpecs:[Ljava/lang/Class;

.field private cipher:Lorg/bouncycastle/crypto/o0;

.field private digest:I

.field private ivLength:I

.field private ivParam:Le1/s0;

.field private keySizeInBits:I

.field private pbeAlgorithm:Ljava/lang/String;

.field private pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/o0;I)V
    .registers 4

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;-><init>(Lorg/bouncycastle/crypto/o0;III)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/o0;II)V
    .registers 5

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;-><init>(Lorg/bouncycastle/crypto/o0;III)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/o0;III)V
    .registers 9

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>()V

    const-class v0, Ljavax/crypto/spec/IvParameterSpec;

    const-class v1, Ljavax/crypto/spec/PBEParameterSpec;

    const-class v2, Ljavax/crypto/spec/RC2ParameterSpec;

    const-class v3, Ljavax/crypto/spec/RC5ParameterSpec;

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->availableSpecs:[Ljava/lang/Class;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->pbeAlgorithm:Ljava/lang/String;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->cipher:Lorg/bouncycastle/crypto/o0;

    iput p2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->ivLength:I

    iput p3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->keySizeInBits:I

    iput p4, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->digest:I

    return-void
.end method


# virtual methods
.method public engineDoFinal([BII[BI)I
    .registers 14

    add-int v0, p5, p3

    array-length v1, p4

    if-gt v0, v1, :cond_19

    if-eqz p3, :cond_12

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->cipher:Lorg/bouncycastle/crypto/o0;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-interface/range {v2 .. v7}, Lorg/bouncycastle/crypto/o0;->processBytes([BII[BI)I

    goto :goto_13

    :cond_12
    move v5, p3

    :goto_13
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->cipher:Lorg/bouncycastle/crypto/o0;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/o0;->reset()V

    return v5

    :cond_19
    new-instance p0, Ljavax/crypto/ShortBufferException;

    const-string p1, "output buffer too short for input."

    invoke-direct {p0, p1}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineDoFinal([BII)[B
    .registers 4

    if-eqz p3, :cond_c

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->engineUpdate([BII)[B

    move-result-object p1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->cipher:Lorg/bouncycastle/crypto/o0;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/o0;->reset()V

    return-object p1

    :cond_c
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->cipher:Lorg/bouncycastle/crypto/o0;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/o0;->reset()V

    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0
.end method

.method public engineGetBlockSize()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public engineGetIV()[B
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->ivParam:Le1/s0;

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

    mul-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public engineGetOutputSize(I)I
    .registers 2

    return p1
.end method

.method public engineGetParameters()Ljava/security/AlgorithmParameters;
    .registers 5

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->engineParams:Ljava/security/AlgorithmParameters;

    if-nez v0, :cond_8b

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v0, :cond_16

    :try_start_8
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->pbeAlgorithm:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->createParametersInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v0, p0}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_13} :catch_14

    return-object v0

    :catch_14
    const/4 p0, 0x0

    return-object p0

    :cond_16
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->ivParam:Le1/s0;

    if-eqz v0, :cond_8b

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->cipher:Lorg/bouncycastle/crypto/o0;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/o0;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, 0x0

    if-ltz v2, :cond_31

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_31
    const-string v1, "ChaCha7539"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3b

    move-object v0, v1

    goto :goto_6d

    :cond_3b
    const-string v1, "Grain"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_46

    const-string v0, "Grainv1"

    goto :goto_6d

    :cond_46
    const-string v1, "HC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6d

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_6d
    :goto_6d
    :try_start_6d
    invoke-virtual {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->createParametersInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->engineParams:Ljava/security/AlgorithmParameters;

    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->ivParam:Le1/s0;

    iget-object v2, v2, Le1/s0;->c:[B

    invoke-direct {v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_7f} :catch_80

    goto :goto_8b

    :catch_80
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8b
    :goto_8b
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->engineParams:Ljava/security/AlgorithmParameters;

    return-object p0
.end method

.method public engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .registers 6

    if-eqz p3, :cond_23

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->availableSpecs:[Ljava/lang/Class;

    invoke-static {p3, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/SpecUtil;->extractSpec(Ljava/security/AlgorithmParameters;[Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    if-eqz v0, :cond_b

    goto :goto_24

    :cond_b
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

    :cond_23
    const/4 v0, 0x0

    :goto_24
    invoke-virtual {p0, p1, p2, v0, p4}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->engineParams:Ljava/security/AlgorithmParameters;

    return-void
.end method

.method public engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_4} :catch_5

    return-void

    :catch_5
    move-exception p0

    new-instance p1, Ljava/security/InvalidKeyException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 13

    const-string v0, "unknown opmode "

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->pbeAlgorithm:Ljava/lang/String;

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->engineParams:Ljava/security/AlgorithmParameters;

    instance-of v1, p2, Ljavax/crypto/SecretKey;

    if-eqz v1, :cond_132

    instance-of v1, p2, La2/h;

    if-eqz v1, :cond_32

    check-cast p2, La2/h;

    check-cast p3, Ljavax/crypto/spec/PBEParameterSpec;

    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {p2}, La2/h;->getEncoded()[B

    move-result-object v1

    iget v3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->digest:I

    iget v4, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->keySizeInBits:I

    iget p2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->ivLength:I

    mul-int/lit8 v5, p2, 0x8

    iget-object v6, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    iget-object p2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->cipher:Lorg/bouncycastle/crypto/o0;

    invoke-interface {p2}, Lorg/bouncycastle/crypto/o0;->getAlgorithmName()Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x2

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEParameters([BIIIILjava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Lorg/bouncycastle/crypto/g;

    move-result-object p2

    goto/16 :goto_c3

    :cond_32
    instance-of v1, p2, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    if-eqz v1, :cond_90

    check-cast p2, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getOID()Lm/q;

    move-result-object v1

    if-eqz v1, :cond_49

    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getOID()Lm/q;

    move-result-object v1

    invoke-virtual {v1}, Lm/q;->u()Ljava/lang/String;

    move-result-object v1

    :goto_46
    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->pbeAlgorithm:Ljava/lang/String;

    goto :goto_4e

    :cond_49
    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    goto :goto_46

    :goto_4e
    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getParam()Lorg/bouncycastle/crypto/g;

    move-result-object v1

    if-eqz v1, :cond_68

    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getParam()Lorg/bouncycastle/crypto/g;

    move-result-object p3

    new-instance v1, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getSalt()[B

    move-result-object v2

    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getIterationCount()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    goto :goto_7b

    :cond_68
    instance-of v1, p3, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v1, :cond_88

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->cipher:Lorg/bouncycastle/crypto/o0;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/o0;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p3, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEParameters(Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;Ljava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Lorg/bouncycastle/crypto/g;

    move-result-object v1

    check-cast p3, Ljavax/crypto/spec/PBEParameterSpec;

    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    move-object p3, v1

    :goto_7b
    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getIvSize()I

    move-result p2

    if-eqz p2, :cond_86

    move-object p2, p3

    check-cast p2, Le1/s0;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->ivParam:Le1/s0;

    :cond_86
    :goto_86
    move-object p2, p3

    goto :goto_c3

    :cond_88
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "PBE requires PBE parameters to be set."

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_90
    if-nez p3, :cond_a8

    iget p3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->digest:I

    if-gtz p3, :cond_a0

    new-instance p3, Le1/o0;

    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object p2

    invoke-direct {p3, p2}, Le1/o0;-><init>([B)V

    goto :goto_86

    :cond_a0
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "Algorithm requires a PBE key"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a8
    instance-of v1, p3, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v1, :cond_12a

    new-instance v1, Le1/s0;

    new-instance v2, Le1/o0;

    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object p2

    invoke-direct {v2, p2}, Le1/o0;-><init>([B)V

    check-cast p3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p3}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object p2

    invoke-direct {v1, v2, p2}, Le1/s0;-><init>(Lorg/bouncycastle/crypto/g;[B)V

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->ivParam:Le1/s0;

    move-object p2, v1

    :goto_c3
    iget p3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->ivLength:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eqz p3, :cond_f0

    instance-of p3, p2, Le1/s0;

    if-nez p3, :cond_f0

    if-nez p4, :cond_d4

    invoke-static {}, Lorg/bouncycastle/crypto/o;->b()Ljava/security/SecureRandom;

    move-result-object p4

    :cond_d4
    if-eq p1, v3, :cond_e1

    if-ne p1, v2, :cond_d9

    goto :goto_e1

    :cond_d9
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "no IV set when one expected"

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e1
    :goto_e1
    iget p3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->ivLength:I

    new-array v4, p3, [B

    invoke-virtual {p4, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance p4, Le1/s0;

    invoke-direct {p4, p2, v4, v1, p3}, Le1/s0;-><init>(Lorg/bouncycastle/crypto/g;[BII)V

    iput-object p4, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->ivParam:Le1/s0;

    move-object p2, p4

    :cond_f0
    if-eq p1, v3, :cond_118

    const/4 p3, 0x2

    if-eq p1, p3, :cond_112

    if-eq p1, v2, :cond_118

    const/4 p3, 0x4

    if-ne p1, p3, :cond_fb

    goto :goto_112

    :cond_fb
    :try_start_fb
    new-instance p0, Ljava/security/InvalidParameterException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " passed"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_112
    :goto_112
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->cipher:Lorg/bouncycastle/crypto/o0;

    invoke-interface {p0, v1, p2}, Lorg/bouncycastle/crypto/o0;->init(ZLorg/bouncycastle/crypto/g;)V

    return-void

    :cond_118
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->cipher:Lorg/bouncycastle/crypto/o0;

    invoke-interface {p0, v3, p2}, Lorg/bouncycastle/crypto/o0;->init(ZLorg/bouncycastle/crypto/g;)V
    :try_end_11d
    .catch Ljava/lang/Exception; {:try_start_fb .. :try_end_11d} :catch_11e

    return-void

    :catch_11e
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljava/security/InvalidKeyException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_12a
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "unknown parameter type."

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_132
    new-instance p0, Ljava/security/InvalidKeyException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Key for algorithm "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not suitable for symmetric enryption."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineSetMode(Ljava/lang/String;)V
    .registers 3

    const-string p0, "ECB"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1d

    const-string p0, "NONE"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_1d

    :cond_11
    new-instance p0, Ljava/security/NoSuchAlgorithmException;

    const-string v0, "can\'t support mode "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1d
    :goto_1d
    return-void
.end method

.method public engineSetPadding(Ljava/lang/String;)V
    .registers 4

    const-string p0, "NoPadding"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    return-void

    :cond_9
    new-instance p0, Ljavax/crypto/NoSuchPaddingException;

    const-string v0, "Padding "

    const-string v1, " unknown."

    invoke-static {v0, p1, v1}, Lb/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineUpdate([BII[BI)I
    .registers 8

    add-int v0, p5, p3

    array-length v1, p4

    if-gt v0, v1, :cond_17

    :try_start_5
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->cipher:Lorg/bouncycastle/crypto/o0;

    invoke-interface/range {p0 .. p5}, Lorg/bouncycastle/crypto/o0;->processBytes([BII[BI)I
    :try_end_a
    .catch Lorg/bouncycastle/crypto/q; {:try_start_5 .. :try_end_a} :catch_b

    return p3

    :catch_b
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    new-instance p0, Ljavax/crypto/ShortBufferException;

    const-string p1, "output buffer too short for input."

    invoke-direct {p0, p1}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineUpdate([BII)[B
    .registers 10

    new-array v4, p3, [B

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->cipher:Lorg/bouncycastle/crypto/o0;

    const/4 v5, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lorg/bouncycastle/crypto/o0;->processBytes([BII[BI)I

    return-object v4
.end method
