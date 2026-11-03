.class public Lorg/bouncycastle/jcajce/provider/asymmetric/gost/AlgorithmParametersSpi;
.super Ljava/security/AlgorithmParametersSpi;


# instance fields
.field currentSpec:Li2/l;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/security/AlgorithmParametersSpi;-><init>()V

    return-void
.end method


# virtual methods
.method public engineGetEncoded()[B
    .registers 7

    new-instance v0, Lm/q;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/AlgorithmParametersSpi;->currentSpec:Li2/l;

    iget-object v1, v1, Li2/l;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Lm/q;-><init>(Ljava/lang/String;)V

    new-instance v1, Lm/q;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/AlgorithmParametersSpi;->currentSpec:Li2/l;

    iget-object v2, v2, Li2/l;->q:Ljava/lang/String;

    invoke-direct {v1, v2}, Lm/q;-><init>(Ljava/lang/String;)V

    new-instance v2, Lm/q;

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/AlgorithmParametersSpi;->currentSpec:Li2/l;

    iget-object p0, p0, Li2/l;->x:Ljava/lang/String;

    invoke-direct {v2, p0}, Lm/q;-><init>(Ljava/lang/String;)V

    :try_start_1b
    const-string p0, "DER"

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v4, Lm/g;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Lm/g;-><init>(I)V

    invoke-virtual {v4, v0}, Lm/g;->a(Lm/f;)V

    invoke-virtual {v4, v1}, Lm/g;->a(Lm/f;)V

    invoke-virtual {v4, v2}, Lm/g;->a(Lm/f;)V

    new-instance v0, Lm/a1;

    invoke-direct {v0, v4}, Lm/x;-><init>(Lm/g;)V

    const/4 v1, -0x1

    iput v1, v0, Lm/a1;->q:I

    invoke-virtual {v0, v3, p0}, Lm/u;->k(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_40} :catch_41

    return-object p0

    :catch_41
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Error encoding GOST3410Parameters"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineGetEncoded(Ljava/lang/String;)[B
    .registers 3

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/AlgorithmParametersSpi;->isASN1FormatString(Ljava/lang/String;)Z

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
    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/AlgorithmParametersSpi;->engineGetEncoded()[B

    move-result-object p0

    return-object p0
.end method

.method public engineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .registers 2

    if-eqz p1, :cond_7

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/AlgorithmParametersSpi;->localEngineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p0

    return-object p0

    :cond_7
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "argument to getParameterSpec must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 3

    instance-of v0, p1, Li2/l;

    if-eqz v0, :cond_9

    check-cast p1, Li2/l;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/AlgorithmParametersSpi;->currentSpec:Li2/l;

    return-void

    :cond_9
    new-instance p0, Ljava/security/spec/InvalidParameterSpecException;

    const-string p1, "GOST3410ParameterSpec required to initialise a GOST3410 algorithm parameters object"

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineInit([B)V
    .registers 3

    const-string v0, "Not a valid GOST3410 Parameter encoding."

    :try_start_2
    invoke-static {p1}, Lm/u;->o([B)Lm/u;

    move-result-object p1

    check-cast p1, Lm/x;

    invoke-static {p1}, Lr/f;->h(Ljava/lang/Object;)Lr/f;

    move-result-object p1

    invoke-static {p1}, Li2/l;->a(Lr/f;)Li2/l;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/AlgorithmParametersSpi;->currentSpec:Li2/l;
    :try_end_12
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_12} :catch_19
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_12} :catch_13

    return-void

    :catch_13
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_19
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineInit([BLjava/lang/String;)V
    .registers 4

    invoke-virtual {p0, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/AlgorithmParametersSpi;->isASN1FormatString(Ljava/lang/String;)Z

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
    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/AlgorithmParametersSpi;->engineInit([B)V

    return-void
.end method

.method public engineToString()Ljava/lang/String;
    .registers 1

    const-string p0, "GOST3410 Parameters"

    return-object p0
.end method

.method public isASN1FormatString(Ljava/lang/String;)Z
    .registers 2

    if-eqz p1, :cond_d

    const-string p0, "ASN.1"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    return p0

    :cond_d
    :goto_d
    const/4 p0, 0x1

    return p0
.end method

.method public localEngineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .registers 3

    const-class v0, Li2/n;

    if-eq p1, v0, :cond_11

    const-class v0, Ljava/security/spec/AlgorithmParameterSpec;

    if-ne p1, v0, :cond_9

    goto :goto_11

    :cond_9
    new-instance p0, Ljava/security/spec/InvalidParameterSpecException;

    const-string p1, "unknown parameter spec passed to GOST3410 parameters object."

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    :goto_11
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/AlgorithmParametersSpi;->currentSpec:Li2/l;

    return-object p0
.end method
