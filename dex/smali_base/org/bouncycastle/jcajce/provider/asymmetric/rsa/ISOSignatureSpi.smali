.class public Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/ISOSignatureSpi;
.super Ljava/security/SignatureSpi;


# instance fields
.field private signer:Li1/h;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/v;Lorg/bouncycastle/crypto/a;)V
    .registers 4

    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    new-instance v0, Li1/h;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p2, v0, Li1/h;->h:Lorg/bouncycastle/crypto/a;

    iput-object p1, v0, Li1/h;->g:Lorg/bouncycastle/crypto/v;

    const/16 p1, 0xbc

    iput p1, v0, Li1/h;->i:I

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/ISOSignatureSpi;->signer:Li1/h;

    return-void
.end method


# virtual methods
.method public engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "engineSetParameter unsupported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineInitSign(Ljava/security/PrivateKey;)V
    .registers 3

    check-cast p1, Ljava/security/interfaces/RSAPrivateKey;

    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/RSAUtil;->generatePrivateKeyParameter(Ljava/security/interfaces/RSAPrivateKey;)Le1/z0;

    move-result-object p1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/ISOSignatureSpi;->signer:Li1/h;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Li1/h;->init(ZLorg/bouncycastle/crypto/g;)V

    return-void
.end method

.method public engineInitVerify(Ljava/security/PublicKey;)V
    .registers 3

    check-cast p1, Ljava/security/interfaces/RSAPublicKey;

    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/RSAUtil;->generatePublicKeyParameter(Ljava/security/interfaces/RSAPublicKey;)Le1/z0;

    move-result-object p1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/ISOSignatureSpi;->signer:Li1/h;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Li1/h;->init(ZLorg/bouncycastle/crypto/g;)V

    return-void
.end method

.method public engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "engineSetParameter unsupported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 2

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "engineSetParameter unsupported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineSign()[B
    .registers 2

    :try_start_0
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/ISOSignatureSpi;->signer:Li1/h;

    invoke-virtual {p0}, Li1/h;->b()[B

    move-result-object p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    move-exception p0

    new-instance v0, Ljava/security/SignatureException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineUpdate(B)V
    .registers 2

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/ISOSignatureSpi;->signer:Li1/h;

    invoke-virtual {p0, p1}, Li1/h;->update(B)V

    return-void
.end method

.method public engineUpdate([BII)V
    .registers 4

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/ISOSignatureSpi;->signer:Li1/h;

    invoke-virtual {p0, p1, p2, p3}, Li1/h;->update([BII)V

    return-void
.end method

.method public engineVerify([B)Z
    .registers 2

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/ISOSignatureSpi;->signer:Li1/h;

    invoke-virtual {p0, p1}, Li1/h;->a([B)Z

    move-result p0

    return p0
.end method
