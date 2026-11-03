.class public Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;
.super Ljava/security/SignatureSpi;

# interfaces
.implements Ld0/r;
.implements Ll0/e1;


# instance fields
.field private digest:Lorg/bouncycastle/crypto/v;

.field private encoding:Li1/a;

.field private random:Ljava/security/SecureRandom;

.field private signer:Lorg/bouncycastle/crypto/p;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/v;Lorg/bouncycastle/crypto/p;)V
    .registers 4

    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    sget-object v0, Li1/k;->c:Li1/k;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->encoding:Li1/a;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->digest:Lorg/bouncycastle/crypto/v;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->signer:Lorg/bouncycastle/crypto/p;

    return-void
.end method


# virtual methods
.method public engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "engineGetParameter unsupported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineGetParameters()Ljava/security/AlgorithmParameters;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public engineInitSign(Ljava/security/PrivateKey;)V
    .registers 4

    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/DSAUtil;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Le1/b;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->random:Ljava/security/SecureRandom;

    if-eqz v0, :cond_e

    new-instance v1, Le1/t0;

    invoke-direct {v1, p1, v0}, Le1/t0;-><init>(Lorg/bouncycastle/crypto/g;Ljava/security/SecureRandom;)V

    move-object p1, v1

    :cond_e
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->digest:Lorg/bouncycastle/crypto/v;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/v;->reset()V

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->signer:Lorg/bouncycastle/crypto/p;

    const/4 v0, 0x1

    invoke-interface {p0, v0, p1}, Lorg/bouncycastle/crypto/p;->init(ZLorg/bouncycastle/crypto/g;)V

    return-void
.end method

.method public engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    .registers 3

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->random:Ljava/security/SecureRandom;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->engineInitSign(Ljava/security/PrivateKey;)V

    return-void
.end method

.method public engineInitVerify(Ljava/security/PublicKey;)V
    .registers 3

    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/DSAUtil;->generatePublicKeyParameter(Ljava/security/PublicKey;)Le1/b;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->digest:Lorg/bouncycastle/crypto/v;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/v;->reset()V

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->signer:Lorg/bouncycastle/crypto/p;

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/bouncycastle/crypto/p;->init(ZLorg/bouncycastle/crypto/g;)V

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
    .registers 5

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->digest:Lorg/bouncycastle/crypto/v;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/v;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->digest:Lorg/bouncycastle/crypto/v;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/bouncycastle/crypto/v;->doFinal([BI)I

    :try_start_e
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->signer:Lorg/bouncycastle/crypto/p;

    invoke-interface {v1, v0}, Lorg/bouncycastle/crypto/p;->b([B)[Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->encoding:Li1/a;

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->signer:Lorg/bouncycastle/crypto/p;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/p;->getOrder()Ljava/math/BigInteger;

    move-result-object p0

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-interface {v1, p0, v2, v0}, Li1/a;->b(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)[B

    move-result-object p0
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_25} :catch_26

    return-object p0

    :catch_26
    move-exception p0

    new-instance v0, Ljava/security/SignatureException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineUpdate(B)V
    .registers 2

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->digest:Lorg/bouncycastle/crypto/v;

    invoke-interface {p0, p1}, Lorg/bouncycastle/crypto/v;->update(B)V

    return-void
.end method

.method public engineUpdate([BII)V
    .registers 4

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->digest:Lorg/bouncycastle/crypto/v;

    invoke-interface {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/v;->update([BII)V

    return-void
.end method

.method public engineVerify([B)Z
    .registers 6

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->digest:Lorg/bouncycastle/crypto/v;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/v;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->digest:Lorg/bouncycastle/crypto/v;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/bouncycastle/crypto/v;->doFinal([BI)I

    :try_start_e
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->encoding:Li1/a;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->signer:Lorg/bouncycastle/crypto/p;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/p;->getOrder()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {v1, v3, p1}, Li1/a;->a(Ljava/math/BigInteger;[B)[Ljava/math/BigInteger;

    move-result-object p1
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1a} :catch_26

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->signer:Lorg/bouncycastle/crypto/p;

    aget-object v1, p1, v2

    const/4 v2, 0x1

    aget-object p1, p1, v2

    invoke-interface {p0, v1, p1, v0}, Lorg/bouncycastle/crypto/p;->c(Ljava/math/BigInteger;Ljava/math/BigInteger;[B)Z

    move-result p0

    return p0

    :catch_26
    new-instance p0, Ljava/security/SignatureException;

    const-string p1, "error decoding signature bytes."

    invoke-direct {p0, p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
