.class public Lorg/bouncycastle/jcajce/provider/symmetric/CAST5$AlgParams;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameters;


# instance fields
.field private iv:[B

.field private keyLength:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameters;-><init>()V

    const/16 v0, 0x80

    iput v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/CAST5$AlgParams;->keyLength:I

    return-void
.end method


# virtual methods
.method public engineGetEncoded()[B
    .registers 4

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/CAST5$AlgParams;->iv:[B

    array-length v0, p0

    new-array v0, v0, [B

    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public engineGetEncoded(Ljava/lang/String;)[B
    .registers 5

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameters;->isASN1FormatString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/CAST5$AlgParams;->engineGetEncoded()[B

    move-result-object p1

    iget p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/CAST5$AlgParams;->keyLength:I

    new-instance v0, Lm/x0;

    invoke-static {p1}, Lm4/d;->e([B)[B

    move-result-object p1

    invoke-direct {v0, p1}, Lm/r;-><init>([B)V

    new-instance p1, Lm/l;

    int-to-long v1, p0

    invoke-direct {p1, v1, v2}, Lm/l;-><init>(J)V

    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Lm/a1;

    invoke-direct {v1, v0, p1}, Lm/a1;-><init>(Lm/f;Lm/f;)V

    new-instance p1, Lb1/a;

    const/4 v0, 0x6

    invoke-direct {p1, v0, p0}, Lb1/a;-><init>(ILjava/lang/Object;)V

    const/4 v0, 0x1

    invoke-virtual {v1, p1, v0}, Lm/u;->i(Lb1/a;Z)V

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :cond_34
    const-string v0, "RAW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_41

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/CAST5$AlgParams;->engineGetEncoded()[B

    move-result-object p0

    return-object p0

    :cond_41
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

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/CAST5$AlgParams;->iv:[B

    return-void

    :cond_d
    new-instance p0, Ljava/security/spec/InvalidParameterSpecException;

    const-string p1, "IvParameterSpec required to initialise a CAST5 parameters algorithm parameters object"

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineInit([B)V
    .registers 4

    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/CAST5$AlgParams;->iv:[B

    const/4 p0, 0x0

    array-length v1, v0

    invoke-static {p1, p0, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public engineInit([BLjava/lang/String;)V
    .registers 4

    invoke-virtual {p0, p2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameters;->isASN1FormatString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    new-instance p2, Lm/k;

    invoke-direct {p2, p1}, Lm/k;-><init>([B)V

    invoke-virtual {p2}, Lm/k;->f()Lm/u;

    move-result-object p1

    if-eqz p1, :cond_2d

    new-instance p2, Lv1/a;

    invoke-static {p1}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p1

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lm/x;->v(I)Lm/f;

    move-result-object v0

    check-cast v0, Lm/r;

    iput-object v0, p2, Lv1/a;->d:Lm/r;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lm/x;->v(I)Lm/f;

    move-result-object p1

    check-cast p1, Lm/l;

    iput-object p1, p2, Lv1/a;->c:Lm/l;

    goto :goto_2e

    :cond_2d
    const/4 p2, 0x0

    :goto_2e
    iget-object p1, p2, Lv1/a;->c:Lm/l;

    invoke-virtual {p1}, Lm/l;->y()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/CAST5$AlgParams;->keyLength:I

    iget-object p1, p2, Lv1/a;->d:Lm/r;

    iget-object p1, p1, Lm/r;->c:[B

    invoke-static {p1}, Lm4/d;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/CAST5$AlgParams;->iv:[B

    return-void

    :cond_41
    const-string v0, "RAW"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4d

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/provider/symmetric/CAST5$AlgParams;->engineInit([B)V

    return-void

    :cond_4d
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Unknown parameters format in IV parameters object"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineToString()Ljava/lang/String;
    .registers 1

    const-string p0, "CAST5 Parameters"

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

    const-string p1, "unknown parameter spec passed to CAST5 parameters object."

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    :goto_11
    new-instance p1, Ljavax/crypto/spec/IvParameterSpec;

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/CAST5$AlgParams;->iv:[B

    invoke-direct {p1, p0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    return-object p1
.end method
