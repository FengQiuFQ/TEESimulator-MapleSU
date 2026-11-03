.class public Lorg/bouncycastle/jcajce/provider/asymmetric/ies/AlgorithmParametersSpi;
.super Ljava/security/AlgorithmParametersSpi;


# instance fields
.field currentSpec:Li2/p;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/security/AlgorithmParametersSpi;-><init>()V

    return-void
.end method


# virtual methods
.method public engineGetEncoded()[B
    .registers 8

    :try_start_0
    new-instance v0, Lm/g;

    invoke-direct {v0}, Lm/g;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ies/AlgorithmParametersSpi;->currentSpec:Li2/p;

    iget-object v1, v1, Li2/p;->c:[B

    invoke-static {v1}, Lm4/d;->e([B)[B

    move-result-object v1

    const/4 v2, 0x2

    const/16 v3, 0x80

    if-eqz v1, :cond_28

    new-instance v1, Lm/d1;

    new-instance v4, Lm/x0;

    iget-object v5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ies/AlgorithmParametersSpi;->currentSpec:Li2/p;

    iget-object v5, v5, Li2/p;->c:[B

    invoke-static {v5}, Lm4/d;->e([B)[B

    move-result-object v5

    invoke-direct {v4, v5}, Lm/r;-><init>([B)V

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v5, v4}, Lm/a0;-><init>(IIILm/f;)V

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    :cond_28
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ies/AlgorithmParametersSpi;->currentSpec:Li2/p;

    iget-object v1, v1, Li2/p;->d:[B

    invoke-static {v1}, Lm4/d;->e([B)[B

    move-result-object v1

    if-eqz v1, :cond_48

    new-instance v1, Lm/d1;

    new-instance v4, Lm/x0;

    iget-object v5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ies/AlgorithmParametersSpi;->currentSpec:Li2/p;

    iget-object v5, v5, Li2/p;->d:[B

    invoke-static {v5}, Lm4/d;->e([B)[B

    move-result-object v5

    invoke-direct {v4, v5}, Lm/r;-><init>([B)V

    const/4 v5, 0x1

    invoke-direct {v1, v2, v3, v5, v4}, Lm/a0;-><init>(IIILm/f;)V

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    :cond_48
    new-instance v1, Lm/l;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ies/AlgorithmParametersSpi;->currentSpec:Li2/p;

    iget v2, v2, Li2/p;->q:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lm/l;-><init>(J)V

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ies/AlgorithmParametersSpi;->currentSpec:Li2/p;

    iget-object v1, v1, Li2/p;->y:[B

    invoke-static {v1}, Lm4/d;->e([B)[B

    move-result-object v1

    const/4 v2, -0x1

    if-eqz v1, :cond_84

    new-instance v3, Lm/g;

    invoke-direct {v3}, Lm/g;-><init>()V

    new-instance v4, Lm/l;

    iget-object v5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ies/AlgorithmParametersSpi;->currentSpec:Li2/p;

    iget v5, v5, Li2/p;->x:I

    int-to-long v5, v5

    invoke-direct {v4, v5, v6}, Lm/l;-><init>(J)V

    invoke-virtual {v3, v4}, Lm/g;->a(Lm/f;)V

    new-instance v4, Lm/x0;

    invoke-direct {v4, v1}, Lm/r;-><init>([B)V

    invoke-virtual {v3, v4}, Lm/g;->a(Lm/f;)V

    new-instance v1, Lm/a1;

    invoke-direct {v1, v3}, Lm/x;-><init>(Lm/g;)V

    iput v2, v1, Lm/a1;->q:I

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    :cond_84
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ies/AlgorithmParametersSpi;->currentSpec:Li2/p;

    iget-boolean p0, p0, Li2/p;->z1:Z

    if-eqz p0, :cond_8d

    sget-object p0, Lm/d;->x:Lm/d;

    goto :goto_8f

    :cond_8d
    sget-object p0, Lm/d;->q:Lm/d;

    :goto_8f
    invoke-virtual {v0, p0}, Lm/g;->a(Lm/f;)V

    new-instance p0, Lm/a1;

    invoke-direct {p0, v0}, Lm/x;-><init>(Lm/g;)V

    iput v2, p0, Lm/a1;->q:I

    invoke-virtual {p0}, Lm/n;->g()[B

    move-result-object p0
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9d} :catch_9e

    return-object p0

    :catch_9e
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Error encoding IESParameters"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineGetEncoded(Ljava/lang/String;)[B
    .registers 3

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ies/AlgorithmParametersSpi;->isASN1FormatString(Ljava/lang/String;)Z

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
    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ies/AlgorithmParametersSpi;->engineGetEncoded()[B

    move-result-object p0

    return-object p0
.end method

.method public engineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .registers 2

    if-eqz p1, :cond_7

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ies/AlgorithmParametersSpi;->localEngineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

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

    instance-of v0, p1, Li2/p;

    if-eqz v0, :cond_9

    check-cast p1, Li2/p;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ies/AlgorithmParametersSpi;->currentSpec:Li2/p;

    return-void

    :cond_9
    new-instance p0, Ljava/security/spec/InvalidParameterSpecException;

    const-string p1, "IESParameterSpec required to initialise a IES algorithm parameters object"

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineInit([B)V
    .registers 14

    const-string v0, "Not a valid IES Parameter encoding."

    :try_start_2
    invoke-static {p1}, Lm/u;->o([B)Lm/u;

    move-result-object p1

    check-cast p1, Lm/x;

    invoke-virtual {p1}, Lm/x;->size()I

    move-result v1

    const/4 v2, 0x5

    if-gt v1, v2, :cond_af

    invoke-virtual {p1}, Lm/x;->w()Ljava/util/Enumeration;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v9, v1

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    move-object v8, v5

    :cond_1a
    :goto_1a
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_90

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Lm/a0;

    const/4 v10, 0x1

    if-eqz v7, :cond_53

    invoke-static {v6}, Lm/a0;->v(Ljava/lang/Object;)Lm/a0;

    move-result-object v6

    iget v7, v6, Lm/a0;->q:I
    :try_end_2f
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2f} :catch_bd
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2f} :catch_b7

    sget-object v11, Lm/r;->d:Lm/a;

    if-nez v7, :cond_42

    :try_start_33
    invoke-static {v6}, Lq4/k;->v(Lm/a0;)V

    invoke-virtual {v6, v1, v11}, Lm/a0;->t(ZLm/a;)Lm/u;

    move-result-object v4

    invoke-virtual {v11, v4}, Lm/a;->a(Lm/u;)V

    check-cast v4, Lm/r;

    iget-object v4, v4, Lm/r;->c:[B

    goto :goto_1a

    :cond_42
    if-ne v7, v10, :cond_1a

    invoke-static {v6}, Lq4/k;->v(Lm/a0;)V

    invoke-virtual {v6, v1, v11}, Lm/a0;->t(ZLm/a;)Lm/u;

    move-result-object v5

    invoke-virtual {v11, v5}, Lm/a;->a(Lm/u;)V

    check-cast v5, Lm/r;

    iget-object v5, v5, Lm/r;->c:[B

    goto :goto_1a

    :cond_53
    instance-of v7, v6, Lm/l;

    if-eqz v7, :cond_60

    invoke-static {v6}, Lm/l;->r(Ljava/lang/Object;)Lm/l;

    move-result-object v3

    invoke-virtual {v3}, Lm/l;->t()Ljava/math/BigInteger;

    move-result-object v3

    goto :goto_1a

    :cond_60
    instance-of v7, v6, Lm/x;

    if-eqz v7, :cond_81

    invoke-static {v6}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v2

    invoke-virtual {v2, v1}, Lm/x;->v(I)Lm/f;

    move-result-object v6

    invoke-static {v6}, Lm/l;->r(Ljava/lang/Object;)Lm/l;

    move-result-object v6

    invoke-virtual {v6}, Lm/l;->t()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v2, v10}, Lm/x;->v(I)Lm/f;

    move-result-object v2

    invoke-static {v2}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object v2

    iget-object v2, v2, Lm/r;->c:[B

    move-object v8, v2

    move-object v2, v6

    goto :goto_1a

    :cond_81
    instance-of v7, v6, Lm/d;

    if-eqz v7, :cond_1a

    check-cast v6, Lm/f;

    invoke-static {v6}, Lm/d;->s(Lm/f;)Lm/d;

    move-result-object v6

    invoke-virtual {v6}, Lm/d;->t()Z

    move-result v9

    goto :goto_1a

    :cond_90
    move-object p1, v3

    if-eqz v2, :cond_a3

    new-instance v3, Li2/p;

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v7

    invoke-direct/range {v3 .. v9}, Li2/p;-><init>([B[BII[BZ)V

    :goto_a0
    iput-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ies/AlgorithmParametersSpi;->currentSpec:Li2/p;

    return-void

    :cond_a3
    new-instance v3, Li2/p;

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    const/4 v7, -0x1

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v9}, Li2/p;-><init>([B[BII[BZ)V

    goto :goto_a0

    :cond_af
    new-instance p0, Ljava/io/IOException;

    const-string p1, "sequence too big"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_b7
    .catch Ljava/lang/ClassCastException; {:try_start_33 .. :try_end_b7} :catch_bd
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_33 .. :try_end_b7} :catch_b7

    :catch_b7
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_bd
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineInit([BLjava/lang/String;)V
    .registers 4

    invoke-virtual {p0, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ies/AlgorithmParametersSpi;->isASN1FormatString(Ljava/lang/String;)Z

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
    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ies/AlgorithmParametersSpi;->engineInit([B)V

    return-void
.end method

.method public engineToString()Ljava/lang/String;
    .registers 1

    const-string p0, "IES Parameters"

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

    const-class v0, Li2/p;

    if-eq p1, v0, :cond_11

    const-class v0, Ljava/security/spec/AlgorithmParameterSpec;

    if-ne p1, v0, :cond_9

    goto :goto_11

    :cond_9
    new-instance p0, Ljava/security/spec/InvalidParameterSpecException;

    const-string p1, "unknown parameter spec passed to ElGamal parameters object."

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    :goto_11
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ies/AlgorithmParametersSpi;->currentSpec:Li2/p;

    return-object p0
.end method
