.class public Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/HashSignatureSpi;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseDeterministicOrRandomSignature;


# instance fields
.field private parameters:Li3/e;

.field private signer:Li3/a;


# direct methods
.method public constructor <init>(Li3/a;)V
    .registers 3

    const-string v0, "HashMLDSA"

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseDeterministicOrRandomSignature;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/HashSignatureSpi;->signer:Li3/a;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/HashSignatureSpi;->parameters:Li3/e;

    return-void
.end method

.method public constructor <init>(Li3/a;Li3/e;)V
    .registers 4

    iget-object v0, p2, Li3/e;->b:Ljava/lang/String;

    invoke-static {v0}, Ld2/n;->a(Ljava/lang/String;)Ld2/n;

    move-result-object v0

    iget-object v0, v0, Ld2/n;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseDeterministicOrRandomSignature;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/HashSignatureSpi;->signer:Li3/a;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/HashSignatureSpi;->parameters:Li3/e;

    return-void
.end method


# virtual methods
.method public engineSign()[B
    .registers 2

    :try_start_0
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/HashSignatureSpi;->signer:Li3/a;

    invoke-virtual {p0}, Li3/a;->b()[B

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

.method public engineVerify([B)Z
    .registers 2

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/HashSignatureSpi;->signer:Li3/a;

    invoke-virtual {p0, p1}, Li3/a;->a([B)Z

    move-result p0

    return p0
.end method

.method public reInitialize(ZLorg/bouncycastle/crypto/g;)V
    .registers 3

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/HashSignatureSpi;->signer:Li3/a;

    invoke-virtual {p0, p1, p2}, Li3/a;->init(ZLorg/bouncycastle/crypto/g;)V

    return-void
.end method

.method public signInit(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    .registers 3

    iput-object p2, p0, Ljava/security/SignatureSpi;->appRandom:Ljava/security/SecureRandom;

    instance-of p2, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;

    if-eqz p2, :cond_32

    check-cast p1, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;->getKeyParams()Li3/f;

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseDeterministicOrRandomSignature;->keyParams:Le1/b;

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/HashSignatureSpi;->parameters:Li3/e;

    if-eqz p0, :cond_31

    iget-object p0, p0, Li3/e;->b:Ljava/lang/String;

    invoke-static {p0}, Ld2/n;->a(Ljava/lang/String;)Ld2/n;

    move-result-object p0

    iget-object p0, p0, Ld2/n;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    goto :goto_31

    :cond_25
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string p2, "signature configured for "

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_31
    :goto_31
    return-void

    :cond_32
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "unknown private key passed to ML-DSA"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public updateEngine(B)V
    .registers 2

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/HashSignatureSpi;->signer:Li3/a;

    invoke-virtual {p0, p1}, Li3/a;->update(B)V

    return-void
.end method

.method public updateEngine([BII)V
    .registers 4

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/HashSignatureSpi;->signer:Li3/a;

    invoke-virtual {p0, p1, p2, p3}, Li3/a;->update([BII)V

    return-void
.end method

.method public verifyInit(Ljava/security/PublicKey;)V
    .registers 3

    instance-of v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPublicKey;

    if-eqz v0, :cond_30

    check-cast p1, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPublicKey;

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPublicKey;->getKeyParams()Li3/g;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseDeterministicOrRandomSignature;->keyParams:Le1/b;

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/HashSignatureSpi;->parameters:Li3/e;

    if-eqz p0, :cond_2f

    iget-object p0, p0, Li3/e;->b:Ljava/lang/String;

    invoke-static {p0}, Ld2/n;->a(Ljava/lang/String;)Ld2/n;

    move-result-object p0

    iget-object p0, p0, Ld2/n;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_23

    goto :goto_2f

    :cond_23
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string v0, "signature configured for "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2f
    :goto_2f
    return-void

    :cond_30
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "unknown public key passed to ML-DSA"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
