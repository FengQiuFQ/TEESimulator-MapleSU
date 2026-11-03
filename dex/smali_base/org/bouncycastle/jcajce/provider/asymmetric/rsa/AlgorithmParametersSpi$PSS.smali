.class public Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi$PSS;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi;


# instance fields
.field currentSpec:Ljava/security/spec/PSSParameterSpec;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi;-><init>()V

    return-void
.end method


# virtual methods
.method public engineGetEncoded()[B
    .registers 8

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi$PSS;->currentSpec:Ljava/security/spec/PSSParameterSpec;

    invoke-virtual {p0}, Ljava/security/spec/PSSParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->getOID(Ljava/lang/String;)Lm/q;

    move-result-object v0

    sget-object v1, Lz/b;->k:Lm/q;

    invoke-virtual {v1, v0}, Lm/u;->n(Lm/u;)Z

    move-result v2

    sget-object v3, Lm/v0;->d:Lm/v0;

    if-nez v2, :cond_23

    sget-object v2, Lz/b;->l:Lm/q;

    invoke-virtual {v2, v0}, Lm/u;->n(Lm/u;)Z

    move-result v2

    if-eqz v2, :cond_1d

    goto :goto_23

    :cond_1d
    new-instance v2, Ll0/b;

    invoke-direct {v2, v0, v3}, Ll0/b;-><init>(Lm/q;Lm/f;)V

    goto :goto_28

    :cond_23
    :goto_23
    new-instance v2, Ll0/b;

    invoke-direct {v2, v0}, Ll0/b;-><init>(Lm/q;)V

    :goto_28
    invoke-virtual {p0}, Ljava/security/spec/PSSParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    check-cast v0, Ljava/security/spec/MGF1ParameterSpec;

    if-eqz v0, :cond_62

    new-instance v1, Ll0/b;

    sget-object v4, Ld0/r;->i:Lm/q;

    new-instance v5, Ll0/b;

    invoke-virtual {v0}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->getOID(Ljava/lang/String;)Lm/q;

    move-result-object v0

    invoke-direct {v5, v0, v3}, Ll0/b;-><init>(Lm/q;Lm/f;)V

    invoke-direct {v1, v4, v5}, Ll0/b;-><init>(Lm/q;Lm/f;)V

    new-instance v0, Ld0/y;

    new-instance v3, Lm/l;

    invoke-virtual {p0}, Ljava/security/spec/PSSParameterSpec;->getSaltLength()I

    move-result v4

    int-to-long v4, v4

    invoke-direct {v3, v4, v5}, Lm/l;-><init>(J)V

    new-instance v4, Lm/l;

    invoke-virtual {p0}, Ljava/security/spec/PSSParameterSpec;->getTrailerField()I

    move-result p0

    int-to-long v5, p0

    invoke-direct {v4, v5, v6}, Lm/l;-><init>(J)V

    invoke-direct {v0, v2, v1, v3, v4}, Ld0/y;-><init>(Ll0/b;Ll0/b;Lm/l;Lm/l;)V

    invoke-virtual {v0}, Lm/n;->g()[B

    move-result-object p0

    return-object p0

    :cond_62
    new-instance v0, Ll0/b;

    invoke-virtual {p0}, Ljava/security/spec/PSSParameterSpec;->getMGFAlgorithm()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SHAKE128"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_71

    goto :goto_73

    :cond_71
    sget-object v1, Lz/b;->l:Lm/q;

    :goto_73
    invoke-direct {v0, v1}, Ll0/b;-><init>(Lm/q;)V

    new-instance v1, Ld0/y;

    new-instance v3, Lm/l;

    invoke-virtual {p0}, Ljava/security/spec/PSSParameterSpec;->getSaltLength()I

    move-result v4

    int-to-long v4, v4

    invoke-direct {v3, v4, v5}, Lm/l;-><init>(J)V

    new-instance v4, Lm/l;

    invoke-virtual {p0}, Ljava/security/spec/PSSParameterSpec;->getTrailerField()I

    move-result p0

    int-to-long v5, p0

    invoke-direct {v4, v5, v6}, Lm/l;-><init>(J)V

    invoke-direct {v1, v2, v0, v3, v4}, Ld0/y;-><init>(Ll0/b;Ll0/b;Lm/l;Lm/l;)V

    invoke-virtual {v1}, Lm/n;->g()[B

    move-result-object p0

    return-object p0
.end method

.method public engineGetEncoded(Ljava/lang/String;)[B
    .registers 3

    const-string v0, "X.509"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "ASN.1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return-object p0

    :cond_13
    :goto_13
    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi$PSS;->engineGetEncoded()[B

    move-result-object p0

    return-object p0
.end method

.method public engineInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 3

    instance-of v0, p1, Ljava/security/spec/PSSParameterSpec;

    if-eqz v0, :cond_9

    check-cast p1, Ljava/security/spec/PSSParameterSpec;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi$PSS;->currentSpec:Ljava/security/spec/PSSParameterSpec;

    return-void

    :cond_9
    new-instance p0, Ljava/security/spec/InvalidParameterSpecException;

    const-string p1, "PSSParameterSpec required to initialise an PSS algorithm parameters object"

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineInit([B)V
    .registers 15

    const-string v0, "Not a valid PSS Parameter encoding."

    const-string v1, "unknown mask generation function: "

    :try_start_4
    invoke-static {p1}, Ld0/y;->h(Ljava/lang/Object;)Ld0/y;

    move-result-object p1

    iget-object v2, p1, Ld0/y;->d:Ll0/b;

    iget-object v3, p1, Ld0/y;->x:Lm/l;

    iget-object v4, p1, Ld0/y;->q:Lm/l;

    iget-object v5, p1, Ld0/y;->d:Ll0/b;

    iget-object p1, p1, Ld0/y;->c:Ll0/b;

    iget-object v2, v2, Ll0/b;->c:Lm/q;

    sget-object v6, Ld0/r;->i:Lm/q;

    invoke-virtual {v2, v6}, Lm/u;->n(Lm/u;)Z

    move-result v6

    if-eqz v6, :cond_51

    new-instance v7, Ljava/security/spec/PSSParameterSpec;

    iget-object p1, p1, Ll0/b;->c:Lm/q;

    invoke-static {p1}, Le2/c;->a(Lm/q;)Ljava/lang/String;

    move-result-object v8

    sget-object p1, Ljava/security/spec/PSSParameterSpec;->DEFAULT:Ljava/security/spec/PSSParameterSpec;

    invoke-virtual {p1}, Ljava/security/spec/PSSParameterSpec;->getMGFAlgorithm()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/security/spec/MGF1ParameterSpec;

    iget-object p1, v5, Ll0/b;->d:Lm/f;

    invoke-static {p1}, Ll0/b;->h(Ljava/lang/Object;)Ll0/b;

    move-result-object p1

    iget-object p1, p1, Ll0/b;->c:Lm/q;

    invoke-static {p1}, Le2/c;->a(Lm/q;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v10, p1}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lm/l;->t()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v11

    invoke-virtual {v3}, Lm/l;->t()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v12

    invoke-direct/range {v7 .. v12}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    iput-object v7, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi$PSS;->currentSpec:Ljava/security/spec/PSSParameterSpec;

    return-void

    :cond_51
    sget-object v6, Lz/b;->k:Lm/q;

    invoke-virtual {v2, v6}, Lm/u;->n(Lm/u;)Z

    move-result v7

    if-nez v7, :cond_76

    sget-object v7, Lz/b;->l:Lm/q;

    invoke-virtual {v2, v7}, Lm/u;->n(Lm/u;)Z

    move-result v7

    if-eqz v7, :cond_62

    goto :goto_76

    :cond_62
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v5, Ll0/b;->c:Lm/q;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_76
    :goto_76
    new-instance v1, Ljava/security/spec/PSSParameterSpec;

    iget-object p1, p1, Ll0/b;->c:Lm/q;

    invoke-static {p1}, Le2/c;->a(Lm/q;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v6}, Lm/u;->n(Lm/u;)Z

    move-result v2

    if-eqz v2, :cond_87

    const-string v2, "SHAKE128"

    goto :goto_89

    :cond_87
    const-string v2, "SHAKE256"

    :goto_89
    invoke-virtual {v4}, Lm/l;->t()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    invoke-virtual {v3}, Lm/l;->t()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    const/4 v4, 0x0

    move-object v3, v2

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi$PSS;->currentSpec:Ljava/security/spec/PSSParameterSpec;
    :try_end_a1
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_a1} :catch_a8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_a1} :catch_a2

    return-void

    :catch_a2
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_a8
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineInit([BLjava/lang/String;)V
    .registers 4

    invoke-virtual {p0, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi;->isASN1FormatString(Ljava/lang/String;)Z

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
    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi$PSS;->engineInit([B)V

    return-void
.end method

.method public engineToString()Ljava/lang/String;
    .registers 1

    const-string p0, "PSS Parameters"

    return-object p0
.end method

.method public localEngineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .registers 3

    const-class v0, Ljava/security/spec/PSSParameterSpec;

    if-eq p1, v0, :cond_11

    const-class v0, Ljava/security/spec/AlgorithmParameterSpec;

    if-ne p1, v0, :cond_9

    goto :goto_11

    :cond_9
    new-instance p0, Ljava/security/spec/InvalidParameterSpecException;

    const-string p1, "unknown parameter spec passed to PSS parameters object."

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    :goto_11
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi$PSS;->currentSpec:Ljava/security/spec/PSSParameterSpec;

    return-object p0
.end method
