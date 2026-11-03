.class public Lorg/bouncycastle/jcajce/provider/asymmetric/elgamal/AlgorithmParametersSpi;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameters;


# instance fields
.field currentSpec:Li2/i;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameters;-><init>()V

    return-void
.end method


# virtual methods
.method public engineGetEncoded()[B
    .registers 5

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/elgamal/AlgorithmParametersSpi;->currentSpec:Li2/i;

    iget-object v0, p0, Li2/i;->c:Ljava/math/BigInteger;

    iget-object p0, p0, Li2/i;->d:Ljava/math/BigInteger;

    new-instance v1, Lm/l;

    invoke-direct {v1, v0}, Lm/l;-><init>(Ljava/math/BigInteger;)V

    new-instance v0, Lm/l;

    invoke-direct {v0, p0}, Lm/l;-><init>(Ljava/math/BigInteger;)V

    :try_start_10
    const-string p0, "DER"

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Lm/a1;

    invoke-direct {v3, v1, v0}, Lm/a1;-><init>(Lm/f;Lm/f;)V

    invoke-virtual {v3, v2, p0}, Lm/u;->k(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_23} :catch_24

    return-object p0

    :catch_24
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Error encoding ElGamalParameters"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineGetEncoded(Ljava/lang/String;)[B
    .registers 3

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameters;->isASN1FormatString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "X.509"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    return-object p0

    :cond_11
    :goto_11
    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/elgamal/AlgorithmParametersSpi;->engineGetEncoded()[B

    move-result-object p0

    return-object p0
.end method

.method public engineInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 4

    instance-of v0, p1, Li2/i;

    if-nez v0, :cond_11

    instance-of v1, p1, Ljavax/crypto/spec/DHParameterSpec;

    if-eqz v1, :cond_9

    goto :goto_11

    :cond_9
    new-instance p0, Ljava/security/spec/InvalidParameterSpecException;

    const-string p1, "DHParameterSpec required to initialise a ElGamal algorithm parameters object"

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    :goto_11
    if-eqz v0, :cond_18

    check-cast p1, Li2/i;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/elgamal/AlgorithmParametersSpi;->currentSpec:Li2/i;

    return-void

    :cond_18
    check-cast p1, Ljavax/crypto/spec/DHParameterSpec;

    new-instance v0, Li2/i;

    invoke-virtual {p1}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Li2/i;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/elgamal/AlgorithmParametersSpi;->currentSpec:Li2/i;

    return-void
.end method

.method public engineInit([B)V
    .registers 5

    const-string v0, "Not a valid ElGamal Parameter encoding."

    :try_start_2
    invoke-static {p1}, Lm/u;->o([B)Lm/u;

    move-result-object p1

    invoke-static {p1}, Ly1/a;->h(Ljava/lang/Object;)Ly1/a;

    move-result-object p1

    new-instance v1, Li2/i;

    iget-object v2, p1, Ly1/a;->c:Lm/l;

    invoke-virtual {v2}, Lm/l;->s()Ljava/math/BigInteger;

    move-result-object v2

    iget-object p1, p1, Ly1/a;->d:Lm/l;

    invoke-virtual {p1}, Lm/l;->s()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Li2/i;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/elgamal/AlgorithmParametersSpi;->currentSpec:Li2/i;
    :try_end_1d
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_1d} :catch_24
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_1d} :catch_1e

    return-void

    :catch_1e
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_24
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineInit([BLjava/lang/String;)V
    .registers 4

    invoke-virtual {p0, p2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameters;->isASN1FormatString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "X.509"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_1b

    :cond_f
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Unknown parameter format "

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1b
    :goto_1b
    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/elgamal/AlgorithmParametersSpi;->engineInit([B)V

    return-void
.end method

.method public engineToString()Ljava/lang/String;
    .registers 1

    const-string p0, "ElGamal Parameters"

    return-object p0
.end method

.method public localEngineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .registers 3

    const-class v0, Li2/i;

    if-eq p1, v0, :cond_21

    const-class v0, Ljava/security/spec/AlgorithmParameterSpec;

    if-ne p1, v0, :cond_9

    goto :goto_21

    :cond_9
    const-class v0, Ljavax/crypto/spec/DHParameterSpec;

    if-ne p1, v0, :cond_19

    new-instance p1, Ljavax/crypto/spec/DHParameterSpec;

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/elgamal/AlgorithmParametersSpi;->currentSpec:Li2/i;

    iget-object v0, p0, Li2/i;->c:Ljava/math/BigInteger;

    iget-object p0, p0, Li2/i;->d:Ljava/math/BigInteger;

    invoke-direct {p1, v0, p0}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object p1

    :cond_19
    new-instance p0, Ljava/security/spec/InvalidParameterSpecException;

    const-string p1, "unknown parameter spec passed to ElGamal parameters object."

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_21
    :goto_21
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/elgamal/AlgorithmParametersSpi;->currentSpec:Li2/i;

    return-object p0
.end method
