.class public Lorg/bouncycastle/jcajce/provider/asymmetric/util/GOST3410Util;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generatePrivateKeyParameter(Ljava/security/PrivateKey;)Le1/b;
    .registers 6

    instance-of v0, p0, Lh2/i;

    if-eqz v0, :cond_23

    check-cast p0, Lh2/i;

    invoke-interface {p0}, Lh2/g;->getParameters()Lh2/h;

    move-result-object v0

    check-cast v0, Li2/l;

    iget-object v0, v0, Li2/l;->c:Li2/n;

    new-instance v1, Le1/j0;

    invoke-interface {p0}, Lh2/i;->getX()Ljava/math/BigInteger;

    move-result-object p0

    new-instance v2, Le1/i0;

    iget-object v3, v0, Li2/n;->a:Ljava/math/BigInteger;

    iget-object v4, v0, Li2/n;->b:Ljava/math/BigInteger;

    iget-object v0, v0, Li2/n;->c:Ljava/math/BigInteger;

    invoke-direct {v2, v3, v4, v0}, Le1/i0;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v1, p0, v2}, Le1/j0;-><init>(Ljava/math/BigInteger;Le1/i0;)V

    return-object v1

    :cond_23
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string v0, "can\'t identify GOST3410 private key."

    invoke-direct {p0, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static generatePublicKeyParameter(Ljava/security/PublicKey;)Le1/b;
    .registers 6

    instance-of v0, p0, Lh2/j;

    if-eqz v0, :cond_23

    check-cast p0, Lh2/j;

    invoke-interface {p0}, Lh2/g;->getParameters()Lh2/h;

    move-result-object v0

    check-cast v0, Li2/l;

    iget-object v0, v0, Li2/l;->c:Li2/n;

    new-instance v1, Le1/k0;

    invoke-interface {p0}, Lh2/j;->getY()Ljava/math/BigInteger;

    move-result-object p0

    new-instance v2, Le1/i0;

    iget-object v3, v0, Li2/n;->a:Ljava/math/BigInteger;

    iget-object v4, v0, Li2/n;->b:Ljava/math/BigInteger;

    iget-object v0, v0, Li2/n;->c:Ljava/math/BigInteger;

    invoke-direct {v2, v3, v4, v0}, Le1/i0;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v1, p0, v2}, Le1/k0;-><init>(Ljava/math/BigInteger;Le1/i0;)V

    return-object v1

    :cond_23
    new-instance v0, Ljava/security/InvalidKeyException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "can\'t identify GOST3410 public key: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
