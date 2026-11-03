.class public Lorg/bouncycastle/jcajce/provider/symmetric/IDEA$AlgParams;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameters;


# instance fields
.field private iv:[B


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameters;-><init>()V

    return-void
.end method


# virtual methods
.method public engineGetEncoded()[B
    .registers 2

    const-string v0, "ASN.1"

    invoke-virtual {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/IDEA$AlgParams;->engineGetEncoded(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public engineGetEncoded(Ljava/lang/String;)[B
    .registers 5

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameters;->isASN1FormatString(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "RAW"

    if-eqz v0, :cond_39

    invoke-virtual {p0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/IDEA$AlgParams;->engineGetEncoded(Ljava/lang/String;)[B

    move-result-object p0

    new-instance p1, Lm/x0;

    invoke-static {p0}, Lm4/d;->e([B)[B

    move-result-object p0

    invoke-direct {p1, p0}, Lm/r;-><init>([B)V

    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v0, Lm/g;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lm/g;-><init>(I)V

    invoke-virtual {v0, p1}, Lm/g;->a(Lm/f;)V

    new-instance p1, Lm/a1;

    invoke-direct {p1, v0}, Lm/x;-><init>(Lm/g;)V

    const/4 v0, -0x1

    iput v0, p1, Lm/a1;->q:I

    new-instance v0, Lb1/a;

    const/4 v2, 0x6

    invoke-direct {v0, v2, p0}, Lb1/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0, v1}, Lm/u;->i(Lb1/a;Z)V

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :cond_39
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4a

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/IDEA$AlgParams;->iv:[B

    array-length p1, p0

    new-array p1, p1, [B

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    :cond_4a
    const/4 p0, 0x0

    return-object p0
.end method

.method public engineInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 3

    instance-of v0, p1, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v0, :cond_d

    check-cast p1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p1}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/IDEA$AlgParams;->iv:[B

    return-void

    :cond_d
    new-instance p0, Ljava/security/spec/InvalidParameterSpecException;

    const-string p1, "IvParameterSpec required to initialise a IV parameters algorithm parameters object"

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineInit([B)V
    .registers 4

    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/IDEA$AlgParams;->iv:[B

    const/4 p0, 0x0

    array-length v1, v0

    invoke-static {p1, p0, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public engineInit([BLjava/lang/String;)V
    .registers 6

    const-string v0, "RAW"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/provider/symmetric/IDEA$AlgParams;->engineInit([B)V

    return-void

    :cond_c
    const-string v0, "ASN.1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4b

    instance-of p2, p1, Lv1/b;

    const/4 v0, 0x0

    if-eqz p2, :cond_1c

    check-cast p1, Lv1/b;

    goto :goto_3d

    :cond_1c
    if-eqz p1, :cond_3c

    new-instance p2, Lv1/b;

    invoke-static {p1}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p1

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lm/x;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_39

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lm/x;->v(I)Lm/f;

    move-result-object p1

    check-cast p1, Lm/r;

    iput-object p1, p2, Lv1/b;->c:Lm/r;

    :goto_37
    move-object p1, p2

    goto :goto_3d

    :cond_39
    iput-object v0, p2, Lv1/b;->c:Lm/r;

    goto :goto_37

    :cond_3c
    move-object p1, v0

    :goto_3d
    iget-object p1, p1, Lv1/b;->c:Lm/r;

    if-eqz p1, :cond_47

    iget-object p1, p1, Lm/r;->c:[B

    invoke-static {p1}, Lm4/d;->e([B)[B

    move-result-object v0

    :cond_47
    invoke-virtual {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/IDEA$AlgParams;->engineInit([B)V

    return-void

    :cond_4b
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Unknown parameters format in IV parameters object"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineToString()Ljava/lang/String;
    .registers 1

    const-string p0, "IDEA Parameters"

    return-object p0
.end method

.method public localEngineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .registers 3

    const-class v0, Ljavax/crypto/spec/IvParameterSpec;

    if-eq p1, v0, :cond_11

    const-class v0, Ljava/security/spec/AlgorithmParameterSpec;

    if-ne p1, v0, :cond_9

    goto :goto_11

    :cond_9
    new-instance p0, Ljava/security/spec/InvalidParameterSpecException;

    const-string p1, "unknown parameter spec passed to IV parameters object."

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    :goto_11
    new-instance p1, Ljavax/crypto/spec/IvParameterSpec;

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/IDEA$AlgParams;->iv:[B

    invoke-direct {p1, p0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    return-object p1
.end method
