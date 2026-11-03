.class public Lorg/bouncycastle/jcajce/provider/asymmetric/gost/KeyFactorySpi;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseKeyFactorySpi;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseKeyFactorySpi;-><init>()V

    return-void
.end method


# virtual methods
.method public engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .registers 3

    instance-of v0, p1, Li2/m;

    if-eqz v0, :cond_c

    new-instance p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;

    check-cast p1, Li2/m;

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;-><init>(Li2/m;)V

    return-object p0

    :cond_c
    invoke-super {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseKeyFactorySpi;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p0

    return-object p0
.end method

.method public engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .registers 3

    instance-of v0, p1, Li2/o;

    if-eqz v0, :cond_c

    new-instance p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;

    check-cast p1, Li2/o;

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;-><init>(Li2/o;)V

    return-object p0

    :cond_c
    invoke-super {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseKeyFactorySpi;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0

    return-object p0
.end method

.method public engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .registers 5

    const-class v0, Li2/o;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2e

    instance-of v0, p1, Lh2/j;

    if-eqz v0, :cond_2e

    check-cast p1, Lh2/j;

    invoke-interface {p1}, Lh2/g;->getParameters()Lh2/h;

    move-result-object p0

    check-cast p0, Li2/l;

    iget-object p0, p0, Li2/l;->c:Li2/n;

    new-instance p2, Li2/o;

    invoke-interface {p1}, Lh2/j;->getY()Ljava/math/BigInteger;

    move-result-object p1

    iget-object v0, p0, Li2/n;->a:Ljava/math/BigInteger;

    iget-object v1, p0, Li2/n;->b:Ljava/math/BigInteger;

    iget-object p0, p0, Li2/n;->c:Ljava/math/BigInteger;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p1, p2, Li2/o;->c:Ljava/math/BigInteger;

    iput-object v0, p2, Li2/o;->d:Ljava/math/BigInteger;

    iput-object v1, p2, Li2/o;->q:Ljava/math/BigInteger;

    iput-object p0, p2, Li2/o;->x:Ljava/math/BigInteger;

    return-object p2

    :cond_2e
    const-class v0, Li2/m;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5c

    instance-of v0, p1, Lh2/i;

    if-eqz v0, :cond_5c

    check-cast p1, Lh2/i;

    invoke-interface {p1}, Lh2/g;->getParameters()Lh2/h;

    move-result-object p0

    check-cast p0, Li2/l;

    iget-object p0, p0, Li2/l;->c:Li2/n;

    new-instance p2, Li2/m;

    invoke-interface {p1}, Lh2/i;->getX()Ljava/math/BigInteger;

    move-result-object p1

    iget-object v0, p0, Li2/n;->a:Ljava/math/BigInteger;

    iget-object v1, p0, Li2/n;->b:Ljava/math/BigInteger;

    iget-object p0, p0, Li2/n;->c:Ljava/math/BigInteger;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p1, p2, Li2/m;->c:Ljava/math/BigInteger;

    iput-object v0, p2, Li2/m;->d:Ljava/math/BigInteger;

    iput-object v1, p2, Li2/m;->q:Ljava/math/BigInteger;

    iput-object p0, p2, Li2/m;->x:Ljava/math/BigInteger;

    return-object p2

    :cond_5c
    invoke-super {p0, p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseKeyFactorySpi;->engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object p0

    return-object p0
.end method

.method public engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;
    .registers 2

    instance-of p0, p1, Lh2/j;

    if-eqz p0, :cond_c

    new-instance p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;

    check-cast p1, Lh2/j;

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;-><init>(Lh2/j;)V

    return-object p0

    :cond_c
    instance-of p0, p1, Lh2/i;

    if-eqz p0, :cond_18

    new-instance p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;

    check-cast p1, Lh2/i;

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;-><init>(Lh2/i;)V

    return-object p0

    :cond_18
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "key type unknown"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public generatePrivate(Ld0/t;)Ljava/security/PrivateKey;
    .registers 4

    iget-object p0, p1, Ld0/t;->d:Ll0/b;

    iget-object p0, p0, Ll0/b;->c:Lm/q;

    sget-object v0, Lr/a;->k:Lm/q;

    invoke-virtual {p0, v0}, Lm/u;->n(Lm/u;)Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;-><init>(Ld0/t;)V

    return-object p0

    :cond_12
    new-instance p1, Ljava/io/IOException;

    const-string v0, "algorithm identifier "

    const-string v1, " in key not recognised"

    invoke-static {v0, p0, v1}, Lb/b;->k(Ljava/lang/String;Lm/q;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public generatePublic(Ll0/p0;)Ljava/security/PublicKey;
    .registers 4

    iget-object p0, p1, Ll0/p0;->c:Ll0/b;

    iget-object p0, p0, Ll0/b;->c:Lm/q;

    sget-object v0, Lr/a;->k:Lm/q;

    invoke-virtual {p0, v0}, Lm/u;->n(Lm/u;)Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;-><init>(Ll0/p0;)V

    return-object p0

    :cond_12
    new-instance p1, Ljava/io/IOException;

    const-string v0, "algorithm identifier "

    const-string v1, " in key not recognised"

    invoke-static {v0, p0, v1}, Lb/b;->k(Ljava/lang/String;Lm/q;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
