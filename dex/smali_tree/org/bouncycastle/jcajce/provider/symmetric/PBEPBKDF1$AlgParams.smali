.class public Lorg/bouncycastle/jcajce/provider/symmetric/PBEPBKDF1$AlgParams;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameters;


# instance fields
.field params:Ld0/m;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameters;-><init>()V

    return-void
.end method


# virtual methods
.method public engineGetEncoded()[B
    .registers 4

    :try_start_0
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/PBEPBKDF1$AlgParams;->params:Ld0/m;

    invoke-virtual {p0}, Lm/n;->g()[B

    move-result-object p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Oooops! "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineGetEncoded(Ljava/lang/String;)[B
    .registers 2

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameters;->isASN1FormatString(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/PBEPBKDF1$AlgParams;->engineGetEncoded()[B

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public engineInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 6

    instance-of v0, p1, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v0, :cond_32

    check-cast p1, Ljavax/crypto/spec/PBEParameterSpec;

    new-instance v0, Ld0/m;

    invoke-virtual {p1}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v1

    invoke-virtual {p1}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result p1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    array-length v2, v1

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2a

    new-instance v2, Lm/x0;

    invoke-direct {v2, v1}, Lm/r;-><init>([B)V

    iput-object v2, v0, Ld0/m;->d:Lm/r;

    new-instance v1, Lm/l;

    int-to-long v2, p1

    invoke-direct {v1, v2, v3}, Lm/l;-><init>(J)V

    iput-object v1, v0, Ld0/m;->c:Lm/l;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/PBEPBKDF1$AlgParams;->params:Ld0/m;

    return-void

    :cond_2a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "salt length must be 8"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_32
    new-instance p0, Ljava/security/spec/InvalidParameterSpecException;

    const-string p1, "PBEParameterSpec required to initialise a PBKDF1 PBE parameters algorithm parameters object"

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineInit([B)V
    .registers 4

    instance-of v0, p1, Ld0/m;

    if-eqz v0, :cond_7

    check-cast p1, Ld0/m;

    goto :goto_27

    :cond_7
    if-eqz p1, :cond_26

    new-instance v0, Ld0/m;

    invoke-static {p1}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lm/x;->v(I)Lm/f;

    move-result-object v1

    check-cast v1, Lm/r;

    iput-object v1, v0, Ld0/m;->d:Lm/r;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lm/x;->v(I)Lm/f;

    move-result-object p1

    check-cast p1, Lm/l;

    iput-object p1, v0, Ld0/m;->c:Lm/l;

    move-object p1, v0

    goto :goto_27

    :cond_26
    const/4 p1, 0x0

    :goto_27
    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/PBEPBKDF1$AlgParams;->params:Ld0/m;

    return-void
.end method

.method public engineInit([BLjava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameters;->isASN1FormatString(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/provider/symmetric/PBEPBKDF1$AlgParams;->engineInit([B)V

    return-void

    :cond_a
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Unknown parameters format in PBKDF2 parameters object"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineToString()Ljava/lang/String;
    .registers 1

    const-string p0, "PBKDF1 Parameters"

    return-object p0
.end method

.method public localEngineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .registers 3

    const-class v0, Ljavax/crypto/spec/PBEParameterSpec;

    if-eq p1, v0, :cond_11

    const-class v0, Ljava/security/spec/AlgorithmParameterSpec;

    if-ne p1, v0, :cond_9

    goto :goto_11

    :cond_9
    new-instance p0, Ljava/security/spec/InvalidParameterSpecException;

    const-string p1, "unknown parameter spec passed to PBKDF1 PBE parameters object."

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    :goto_11
    new-instance p1, Ljavax/crypto/spec/PBEParameterSpec;

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/PBEPBKDF1$AlgParams;->params:Ld0/m;

    iget-object v0, p0, Ld0/m;->d:Lm/r;

    iget-object v0, v0, Lm/r;->c:[B

    iget-object p0, p0, Ld0/m;->c:Lm/l;

    invoke-virtual {p0}, Lm/l;->t()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    invoke-direct {p1, v0, p0}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    return-object p1
.end method
