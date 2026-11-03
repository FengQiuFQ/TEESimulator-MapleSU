.class public Lorg/bouncycastle/jcajce/provider/symmetric/GOST28147$AlgParams;
.super Lorg/bouncycastle/jcajce/provider/symmetric/GOST28147$BaseAlgParams;


# instance fields
.field private iv:[B

.field private sBox:Lm/q;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/GOST28147$BaseAlgParams;-><init>()V

    sget-object v0, Lr/a;->g:Lm/q;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/GOST28147$AlgParams;->sBox:Lm/q;

    return-void
.end method


# virtual methods
.method public engineInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 3

    instance-of v0, p1, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v0, :cond_d

    check-cast p1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p1}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/GOST28147$AlgParams;->iv:[B

    return-void

    :cond_d
    instance-of v0, p1, Ld2/e;

    if-eqz v0, :cond_36

    move-object v0, p1

    check-cast v0, Ld2/e;

    iget-object v0, v0, Ld2/e;->c:[B

    invoke-static {v0}, Lm4/d;->e([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/GOST28147$AlgParams;->iv:[B

    :try_start_1c
    check-cast p1, Ld2/e;

    iget-object p1, p1, Ld2/e;->d:[B

    invoke-static {p1}, Lm4/d;->e([B)[B

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/symmetric/GOST28147$BaseAlgParams;->getSBoxOID([B)Lm/q;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/GOST28147$AlgParams;->sBox:Lm/q;
    :try_end_2a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c .. :try_end_2a} :catch_2b

    return-void

    :catch_2b
    move-exception p0

    new-instance p1, Ljava/security/spec/InvalidParameterSpecException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_36
    new-instance p0, Ljava/security/spec/InvalidParameterSpecException;

    const-string p1, "IvParameterSpec required to initialise a IV parameters algorithm parameters object"

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineToString()Ljava/lang/String;
    .registers 1

    const-string p0, "GOST 28147 IV Parameters"

    return-object p0
.end method

.method public localEngineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .registers 3

    const-class v0, Ljavax/crypto/spec/IvParameterSpec;

    if-ne p1, v0, :cond_c

    new-instance p1, Ljavax/crypto/spec/IvParameterSpec;

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/GOST28147$AlgParams;->iv:[B

    invoke-direct {p1, p0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    return-object p1

    :cond_c
    const-class v0, Ld2/e;

    if-eq p1, v0, :cond_25

    const-class v0, Ljava/security/spec/AlgorithmParameterSpec;

    if-ne p1, v0, :cond_15

    goto :goto_25

    :cond_15
    new-instance p0, Ljava/security/spec/InvalidParameterSpecException;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AlgorithmParameterSpec not recognized: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_25
    :goto_25
    new-instance p1, Ld2/e;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/GOST28147$AlgParams;->sBox:Lm/q;

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/GOST28147$AlgParams;->iv:[B

    invoke-direct {p1, v0, p0}, Ld2/e;-><init>(Lm/q;[B)V

    return-object p1
.end method

.method public localGetEncoded()[B
    .registers 4

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/GOST28147$AlgParams;->iv:[B

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/GOST28147$AlgParams;->sBox:Lm/q;

    new-instance v1, Lm/x0;

    invoke-static {v0}, Lm4/d;->e([B)[B

    move-result-object v0

    invoke-direct {v1, v0}, Lm/r;-><init>([B)V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Lm/a1;

    invoke-direct {v2, v1, p0}, Lm/a1;-><init>(Lm/f;Lm/f;)V

    new-instance p0, Lb1/a;

    const/4 v1, 0x6

    invoke-direct {p0, v1, v0}, Lb1/a;-><init>(ILjava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {v2, p0, v1}, Lm/u;->i(Lb1/a;Z)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public localInit([B)V
    .registers 3

    invoke-static {p1}, Lm/u;->o([B)Lm/u;

    move-result-object p1

    instance-of v0, p1, Lm/r;

    if-eqz v0, :cond_11

    invoke-static {p1}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object p1

    iget-object p1, p1, Lm/r;->c:[B

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/GOST28147$AlgParams;->iv:[B

    return-void

    :cond_11
    instance-of v0, p1, Lm/x;

    if-eqz v0, :cond_28

    invoke-static {p1}, Lr/c;->h(Ljava/lang/Object;)Lr/c;

    move-result-object p1

    iget-object v0, p1, Lr/c;->d:Lm/q;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/GOST28147$AlgParams;->sBox:Lm/q;

    iget-object p1, p1, Lr/c;->c:Lm/r;

    iget-object p1, p1, Lm/r;->c:[B

    invoke-static {p1}, Lm4/d;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/GOST28147$AlgParams;->iv:[B

    return-void

    :cond_28
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Unable to recognize parameters"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
