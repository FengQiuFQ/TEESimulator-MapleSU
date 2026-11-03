.class public Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/HashSignatureSpi;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseDeterministicOrRandomSignature;


# instance fields
.field private final signer:Lq3/b;


# direct methods
.method public constructor <init>(Lq3/b;)V
    .registers 3

    const-string v0, "HASH-SLH-DSA"

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseDeterministicOrRandomSignature;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/HashSignatureSpi;->signer:Lq3/b;

    return-void
.end method


# virtual methods
.method public engineSign()[B
    .registers 4

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseDeterministicOrRandomSignature;->keyParams:Le1/b;

    instance-of v0, v0, Lq3/m;

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    :try_start_7
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/HashSignatureSpi;->signer:Lq3/b;

    invoke-virtual {v1}, Lq3/b;->b()[B

    move-result-object v1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_d} :catch_12
    .catchall {:try_start_7 .. :try_end_d} :catchall_10

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseDeterministicOrRandomSignature;->isInitState:Z

    return-object v1

    :catchall_10
    move-exception v1

    goto :goto_1d

    :catch_12
    move-exception v1

    :try_start_13
    new-instance v2, Ljava/security/SignatureException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_10

    :goto_1d
    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseDeterministicOrRandomSignature;->isInitState:Z

    throw v1

    :cond_20
    new-instance p0, Ljava/security/SignatureException;

    const-string v0, "engine initialized for verification"

    invoke-direct {p0, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineVerify([B)Z
    .registers 4

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseDeterministicOrRandomSignature;->keyParams:Le1/b;

    instance-of v0, v0, Lq3/n;

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :try_start_7
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/HashSignatureSpi;->signer:Lq3/b;

    invoke-virtual {v1, p1}, Lq3/b;->a([B)Z

    move-result p1
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_10

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseDeterministicOrRandomSignature;->isInitState:Z

    return p1

    :catchall_10
    move-exception p1

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseDeterministicOrRandomSignature;->isInitState:Z

    throw p1

    :cond_14
    new-instance p0, Ljava/security/SignatureException;

    const-string p1, "engine initialized for signing"

    invoke-direct {p0, p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public reInitialize(ZLorg/bouncycastle/crypto/g;)V
    .registers 3

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/HashSignatureSpi;->signer:Lq3/b;

    invoke-virtual {p0, p1, p2}, Lq3/b;->init(ZLorg/bouncycastle/crypto/g;)V

    return-void
.end method

.method public signInit(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    .registers 3

    iput-object p2, p0, Ljava/security/SignatureSpi;->appRandom:Ljava/security/SecureRandom;

    instance-of p2, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/BCSLHDSAPrivateKey;

    if-eqz p2, :cond_f

    check-cast p1, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/BCSLHDSAPrivateKey;

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/BCSLHDSAPrivateKey;->getKeyParams()Lq3/m;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseDeterministicOrRandomSignature;->keyParams:Le1/b;

    return-void

    :cond_f
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "unknown private key passed to SLH-DSA"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public updateEngine(B)V
    .registers 2

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/HashSignatureSpi;->signer:Lq3/b;

    invoke-virtual {p0, p1}, Lq3/b;->update(B)V

    return-void
.end method

.method public updateEngine([BII)V
    .registers 4

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/HashSignatureSpi;->signer:Lq3/b;

    invoke-virtual {p0, p1, p2, p3}, Lq3/b;->update([BII)V

    return-void
.end method

.method public verifyInit(Ljava/security/PublicKey;)V
    .registers 3

    instance-of v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/BCSLHDSAPublicKey;

    if-eqz v0, :cond_d

    check-cast p1, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/BCSLHDSAPublicKey;

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/BCSLHDSAPublicKey;->getKeyParams()Lq3/n;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseDeterministicOrRandomSignature;->keyParams:Le1/b;

    return-void

    :cond_d
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "unknown public key passed to SLH-DSA"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
