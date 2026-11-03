.class public Lorg/bouncycastle/jcajce/provider/asymmetric/elgamal/ElGamalUtil;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generatePrivateKeyParameter(Ljava/security/PrivateKey;)Le1/b;
    .registers 6

    instance-of v0, p0, Lh2/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    check-cast p0, Lh2/e;

    new-instance v0, Le1/f0;

    invoke-interface {p0}, Lh2/e;->getX()Ljava/math/BigInteger;

    move-result-object v2

    new-instance v3, Le1/e0;

    invoke-interface {p0}, Lh2/d;->getParameters()Li2/i;

    move-result-object v4

    iget-object v4, v4, Li2/i;->c:Ljava/math/BigInteger;

    invoke-interface {p0}, Lh2/d;->getParameters()Li2/i;

    move-result-object p0

    iget-object p0, p0, Li2/i;->d:Ljava/math/BigInteger;

    invoke-direct {v3, v1, v4, p0}, Le1/e0;-><init>(ILjava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, v2, v3}, Le1/f0;-><init>(Ljava/math/BigInteger;Le1/e0;)V

    return-object v0

    :cond_22
    instance-of v0, p0, Ljavax/crypto/interfaces/DHPrivateKey;

    if-eqz v0, :cond_47

    check-cast p0, Ljavax/crypto/interfaces/DHPrivateKey;

    new-instance v0, Le1/f0;

    invoke-interface {p0}, Ljavax/crypto/interfaces/DHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v2

    new-instance v3, Le1/e0;

    invoke-interface {p0}, Ljavax/crypto/interfaces/DHKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v4

    invoke-interface {p0}, Ljavax/crypto/interfaces/DHKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v3, v1, v4, p0}, Le1/e0;-><init>(ILjava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, v2, v3}, Le1/f0;-><init>(Ljava/math/BigInteger;Le1/e0;)V

    return-object v0

    :cond_47
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string v0, "can\'t identify private key for El Gamal."

    invoke-direct {p0, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static generatePublicKeyParameter(Ljava/security/PublicKey;)Le1/b;
    .registers 6

    instance-of v0, p0, Lh2/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    check-cast p0, Lh2/f;

    new-instance v0, Le1/g0;

    invoke-interface {p0}, Lh2/f;->getY()Ljava/math/BigInteger;

    move-result-object v2

    new-instance v3, Le1/e0;

    invoke-interface {p0}, Lh2/d;->getParameters()Li2/i;

    move-result-object v4

    iget-object v4, v4, Li2/i;->c:Ljava/math/BigInteger;

    invoke-interface {p0}, Lh2/d;->getParameters()Li2/i;

    move-result-object p0

    iget-object p0, p0, Li2/i;->d:Ljava/math/BigInteger;

    invoke-direct {v3, v1, v4, p0}, Le1/e0;-><init>(ILjava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, v2, v3}, Le1/g0;-><init>(Ljava/math/BigInteger;Le1/e0;)V

    return-object v0

    :cond_22
    instance-of v0, p0, Ljavax/crypto/interfaces/DHPublicKey;

    if-eqz v0, :cond_47

    check-cast p0, Ljavax/crypto/interfaces/DHPublicKey;

    new-instance v0, Le1/g0;

    invoke-interface {p0}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v2

    new-instance v3, Le1/e0;

    invoke-interface {p0}, Ljavax/crypto/interfaces/DHKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v4

    invoke-interface {p0}, Ljavax/crypto/interfaces/DHKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v3, v1, v4, p0}, Le1/e0;-><init>(ILjava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, v2, v3}, Le1/g0;-><init>(Ljava/math/BigInteger;Le1/e0;)V

    return-object v0

    :cond_47
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string v0, "can\'t identify public key for El Gamal."

    invoke-direct {p0, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
