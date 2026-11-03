.class public Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;
.super Ljava/security/KeyPairGenerator;


# instance fields
.field algorithm:Ljava/lang/String;

.field ecParams:Ljava/lang/Object;

.field engine:Lx0/j;

.field initialised:Z

.field param:Le1/t;

.field random:Ljava/security/SecureRandom;

.field strength:I


# direct methods
.method public constructor <init>()V
    .registers 4

    const-string v0, "ECGOST3410"

    invoke-direct {p0, v0}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->ecParams:Ljava/lang/Object;

    new-instance v2, Lx0/j;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->engine:Lx0/j;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->algorithm:Ljava/lang/String;

    const/16 v0, 0xef

    iput v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->strength:I

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->initialised:Z

    return-void
.end method

.method private init(Ld2/g;Ljava/security/SecureRandom;)V
    .registers 12

    iget-object v0, p1, Ld2/g;->c:Lm/q;

    invoke-static {v0}, Lr/b;->d(Lm/q;)Lm0/h;

    move-result-object v1

    if-eqz v1, :cond_44

    new-instance v2, Li2/d;

    invoke-static {v0}, Lr/b;->e(Lm/q;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lm0/h;->d:Lm0/g;

    iget-object v4, v4, Lm0/g;->c:Lk2/h;

    iget-object v5, v1, Lm0/h;->q:Lm0/j;

    invoke-virtual {v5}, Lm0/j;->h()Lk2/p;

    move-result-object v5

    iget-object v6, v1, Lm0/h;->x:Ljava/math/BigInteger;

    iget-object v7, v1, Lm0/h;->y:Ljava/math/BigInteger;

    invoke-virtual {v1}, Lm0/h;->i()[B

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Li2/d;-><init>(Ljava/lang/String;Lk2/h;Lk2/p;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    iput-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->ecParams:Ljava/lang/Object;

    new-instance v2, Le1/t;

    new-instance v3, Le1/s;

    new-instance v4, Le1/v;

    invoke-direct {v4, v1}, Le1/r;-><init>(Lm0/h;)V

    iput-object v0, v4, Le1/v;->m:Lm/q;

    iget-object p1, p1, Ld2/g;->d:Lm/q;

    const/4 v1, 0x0

    invoke-direct {v3, v4, v0, p1, v1}, Le1/s;-><init>(Le1/v;Lm/q;Lm/q;Lm/q;)V

    invoke-direct {v2, v3, p2}, Le1/t;-><init>(Le1/r;Ljava/security/SecureRandom;)V

    iput-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->param:Le1/t;

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->engine:Lx0/j;

    invoke-virtual {p1, v2}, Lx0/j;->m(Lorg/bouncycastle/crypto/z;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->initialised:Z

    return-void

    :cond_44
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "unknown curve: "

    invoke-static {p1, v0}, Lb/b;->j(Ljava/lang/String;Lm/q;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .registers 6

    iget-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->initialised:Z

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->engine:Lx0/j;

    invoke-virtual {v0}, Lx0/j;->g()Lorg/bouncycastle/crypto/m;

    move-result-object v0

    iget-object v1, v0, Lorg/bouncycastle/crypto/m;->a:Ljava/lang/Object;

    check-cast v1, Le1/b;

    check-cast v1, Le1/x;

    iget-object v0, v0, Lorg/bouncycastle/crypto/m;->b:Ljava/lang/Object;

    check-cast v0, Le1/b;

    check-cast v0, Le1/w;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->ecParams:Ljava/lang/Object;

    instance-of v3, v2, Li2/e;

    if-eqz v3, :cond_32

    check-cast v2, Li2/e;

    new-instance v3, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;

    iget-object v4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->algorithm:Ljava/lang/String;

    invoke-direct {v3, v4, v1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;-><init>(Ljava/lang/String;Le1/x;Li2/e;)V

    new-instance v1, Ljava/security/KeyPair;

    new-instance v4, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->algorithm:Ljava/lang/String;

    invoke-direct {v4, p0, v0, v3, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;-><init>(Ljava/lang/String;Le1/w;Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;Li2/e;)V

    invoke-direct {v1, v3, v4}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v1

    :cond_32
    if-nez v2, :cond_48

    new-instance v2, Ljava/security/KeyPair;

    new-instance v3, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;

    iget-object v4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->algorithm:Ljava/lang/String;

    invoke-direct {v3, v4, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;-><init>(Ljava/lang/String;Le1/x;)V

    new-instance v1, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->algorithm:Ljava/lang/String;

    invoke-direct {v1, p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;-><init>(Ljava/lang/String;Le1/w;)V

    invoke-direct {v2, v3, v1}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v2

    :cond_48
    check-cast v2, Ljava/security/spec/ECParameterSpec;

    new-instance v3, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;

    iget-object v4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->algorithm:Ljava/lang/String;

    invoke-direct {v3, v4, v1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;-><init>(Ljava/lang/String;Le1/x;Ljava/security/spec/ECParameterSpec;)V

    new-instance v1, Ljava/security/KeyPair;

    new-instance v4, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->algorithm:Ljava/lang/String;

    invoke-direct {v4, p0, v0, v3, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;-><init>(Ljava/lang/String;Le1/w;Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;Ljava/security/spec/ECParameterSpec;)V

    invoke-direct {v1, v3, v4}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v1

    :cond_5e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "EC Key Pair Generator not initialised"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .registers 3

    iput p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->strength:I

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->ecParams:Ljava/lang/Object;

    if-eqz p1, :cond_16

    :try_start_8
    check-cast p1, Ljava/security/spec/ECGenParameterSpec;

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_d
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_8 .. :try_end_d} :catch_e

    return-void

    :catch_e
    new-instance p0, Ljava/security/InvalidParameterException;

    const-string p1, "key size not configurable."

    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_16
    new-instance p0, Ljava/security/InvalidParameterException;

    const-string p1, "unknown key size."

    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 11

    instance-of v0, p1, Ld2/g;

    if-eqz v0, :cond_a

    check-cast p1, Ld2/g;

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->init(Ld2/g;Ljava/security/SecureRandom;)V

    return-void

    :cond_a
    instance-of v0, p1, Li2/e;

    const/4 v1, 0x1

    if-eqz v0, :cond_31

    move-object v0, p1

    check-cast v0, Li2/e;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->ecParams:Ljava/lang/Object;

    new-instance p1, Le1/t;

    new-instance v2, Le1/r;

    iget-object v3, v0, Li2/e;->c:Lk2/h;

    iget-object v4, v0, Li2/e;->q:Lk2/p;

    iget-object v5, v0, Li2/e;->x:Ljava/math/BigInteger;

    iget-object v6, v0, Li2/e;->y:Ljava/math/BigInteger;

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Le1/r;-><init>(Lk2/h;Lk2/p;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    invoke-direct {p1, v2, p2}, Le1/t;-><init>(Le1/r;Ljava/security/SecureRandom;)V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->param:Le1/t;

    iget-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->engine:Lx0/j;

    invoke-virtual {p2, p1}, Lx0/j;->m(Lorg/bouncycastle/crypto/z;)V

    iput-boolean v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->initialised:Z

    return-void

    :cond_31
    instance-of v0, p1, Ljava/security/spec/ECParameterSpec;

    if-eqz v0, :cond_6c

    move-object v0, p1

    check-cast v0, Ljava/security/spec/ECParameterSpec;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->ecParams:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Ljava/security/spec/EllipticCurve;)Lk2/h;

    move-result-object v3

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object p1

    invoke-static {v3, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lk2/h;Ljava/security/spec/ECPoint;)Lk2/p;

    move-result-object v4

    new-instance p1, Le1/t;

    new-instance v2, Le1/r;

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v0

    int-to-long v6, v0

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Le1/r;-><init>(Lk2/h;Lk2/p;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    invoke-direct {p1, v2, p2}, Le1/t;-><init>(Le1/r;Ljava/security/SecureRandom;)V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->param:Le1/t;

    iget-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->engine:Lx0/j;

    invoke-virtual {p2, p1}, Lx0/j;->m(Lorg/bouncycastle/crypto/z;)V

    iput-boolean v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->initialised:Z

    return-void

    :cond_6c
    instance-of v0, p1, Ljava/security/spec/ECGenParameterSpec;

    if-nez v0, :cond_c8

    instance-of v2, p1, Li2/b;

    if-eqz v2, :cond_75

    goto :goto_c8

    :cond_75
    if-nez p1, :cond_a2

    sget-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-interface {v0}, Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Li2/e;

    move-result-object v2

    if-eqz v2, :cond_a2

    invoke-interface {v0}, Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Li2/e;

    move-result-object v0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->ecParams:Ljava/lang/Object;

    new-instance p1, Le1/t;

    new-instance v2, Le1/r;

    iget-object v3, v0, Li2/e;->c:Lk2/h;

    iget-object v4, v0, Li2/e;->q:Lk2/p;

    iget-object v5, v0, Li2/e;->x:Ljava/math/BigInteger;

    iget-object v6, v0, Li2/e;->y:Ljava/math/BigInteger;

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Le1/r;-><init>(Lk2/h;Lk2/p;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    invoke-direct {p1, v2, p2}, Le1/t;-><init>(Le1/r;Ljava/security/SecureRandom;)V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->param:Le1/t;

    iget-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->engine:Lx0/j;

    invoke-virtual {p2, p1}, Lx0/j;->m(Lorg/bouncycastle/crypto/z;)V

    iput-boolean v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->initialised:Z

    return-void

    :cond_a2
    if-nez p1, :cond_b4

    sget-object p0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-interface {p0}, Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Li2/e;

    move-result-object p0

    if-nez p0, :cond_b4

    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "null parameter passed but no implicitCA set"

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b4
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "parameter object not a ECParameterSpec: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c8
    :goto_c8
    if-eqz v0, :cond_d1

    check-cast p1, Ljava/security/spec/ECGenParameterSpec;

    invoke-virtual {p1}, Ljava/security/spec/ECGenParameterSpec;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_d5

    :cond_d1
    check-cast p1, Li2/b;

    iget-object p1, p1, Li2/b;->c:Ljava/lang/String;

    :goto_d5
    new-instance v0, Ld2/g;

    invoke-direct {v0, p1}, Ld2/g;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->init(Ld2/g;Ljava/security/SecureRandom;)V

    return-void
.end method
