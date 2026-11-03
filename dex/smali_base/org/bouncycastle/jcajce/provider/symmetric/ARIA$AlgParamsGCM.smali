.class public Lorg/bouncycastle/jcajce/provider/symmetric/ARIA$AlgParamsGCM;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameters;


# instance fields
.field private gcmParams:Ll1/c;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameters;-><init>()V

    return-void
.end method


# virtual methods
.method public engineGetEncoded()[B
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/ARIA$AlgParamsGCM;->gcmParams:Ll1/c;

    invoke-virtual {p0}, Lm/n;->getEncoded()[B

    move-result-object p0

    return-object p0
.end method

.method public engineGetEncoded(Ljava/lang/String;)[B
    .registers 2

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameters;->isASN1FormatString(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/ARIA$AlgParamsGCM;->gcmParams:Ll1/c;

    invoke-virtual {p0}, Lm/n;->getEncoded()[B

    move-result-object p0

    return-object p0

    :cond_d
    new-instance p0, Ljava/io/IOException;

    const-string p1, "unknown format specified"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 4

    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->isGcmSpec(Ljava/security/spec/AlgorithmParameterSpec;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->extractGcmParameters(Ljava/security/spec/AlgorithmParameterSpec;)Ll1/c;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/ARIA$AlgParamsGCM;->gcmParams:Ll1/c;

    return-void

    :cond_d
    instance-of v0, p1, Ld2/a;

    if-eqz v0, :cond_23

    new-instance v0, Ll1/c;

    check-cast p1, Ld2/a;

    invoke-virtual {p1}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v1

    iget p1, p1, Ld2/a;->d:I

    div-int/lit8 p1, p1, 0x8

    invoke-direct {v0, v1, p1}, Ll1/c;-><init>([BI)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/ARIA$AlgParamsGCM;->gcmParams:Ll1/c;

    return-void

    :cond_23
    new-instance p0, Ljava/security/spec/InvalidParameterSpecException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AlgorithmParameterSpec class not recognized: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineInit([B)V
    .registers 2

    invoke-static {p1}, Ll1/c;->h(Ljava/lang/Object;)Ll1/c;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/ARIA$AlgParamsGCM;->gcmParams:Ll1/c;

    return-void
.end method

.method public engineInit([BLjava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameters;->isASN1FormatString(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-static {p1}, Ll1/c;->h(Ljava/lang/Object;)Ll1/c;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/ARIA$AlgParamsGCM;->gcmParams:Ll1/c;

    return-void

    :cond_d
    new-instance p0, Ljava/io/IOException;

    const-string p1, "unknown format specified"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineToString()Ljava/lang/String;
    .registers 1

    const-string p0, "GCM"

    return-object p0
.end method

.method public localEngineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .registers 3

    const-class v0, Ljava/security/spec/AlgorithmParameterSpec;

    if-eq p1, v0, :cond_45

    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->isGcmSpec(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_45

    :cond_b
    const-class v0, Ld2/a;

    if-ne p1, v0, :cond_23

    new-instance p1, Ld2/a;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/ARIA$AlgParamsGCM;->gcmParams:Ll1/c;

    iget-object v0, v0, Ll1/c;->c:[B

    invoke-static {v0}, Lm4/d;->e([B)[B

    move-result-object v0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/ARIA$AlgParamsGCM;->gcmParams:Ll1/c;

    iget p0, p0, Ll1/c;->d:I

    mul-int/lit8 p0, p0, 0x8

    invoke-direct {p1, v0, p0}, Ld2/a;-><init>([BI)V

    return-object p1

    :cond_23
    const-class v0, Ljavax/crypto/spec/IvParameterSpec;

    if-ne p1, v0, :cond_35

    new-instance p1, Ljavax/crypto/spec/IvParameterSpec;

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/ARIA$AlgParamsGCM;->gcmParams:Ll1/c;

    iget-object p0, p0, Ll1/c;->c:[B

    invoke-static {p0}, Lm4/d;->e([B)[B

    move-result-object p0

    invoke-direct {p1, p0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    return-object p1

    :cond_35
    new-instance p0, Ljava/security/spec/InvalidParameterSpecException;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AlgorithmParameterSpec not recognized: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_45
    :goto_45
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->gcmSpecExtractable()Z

    move-result p1

    if-eqz p1, :cond_56

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/ARIA$AlgParamsGCM;->gcmParams:Ll1/c;

    invoke-virtual {p0}, Ll1/c;->d()Lm/u;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->extractGcmSpec(Lm/u;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p0

    return-object p0

    :cond_56
    new-instance p1, Ld2/a;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/ARIA$AlgParamsGCM;->gcmParams:Ll1/c;

    iget-object v0, v0, Ll1/c;->c:[B

    invoke-static {v0}, Lm4/d;->e([B)[B

    move-result-object v0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/ARIA$AlgParamsGCM;->gcmParams:Ll1/c;

    iget p0, p0, Ll1/c;->d:I

    mul-int/lit8 p0, p0, 0x8

    invoke-direct {p1, v0, p0}, Ld2/a;-><init>([BI)V

    return-object p1
.end method
