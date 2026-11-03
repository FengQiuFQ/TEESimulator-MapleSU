.class public Lorg/bouncycastle/jcajce/provider/asymmetric/gost/KeyPairGeneratorSpi;
.super Ljava/security/KeyPairGenerator;


# instance fields
.field engine:Lx0/l;

.field gost3410Params:Li2/l;

.field initialised:Z

.field param:Le1/h0;

.field random:Ljava/security/SecureRandom;

.field strength:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "GOST3410"

    invoke-direct {p0, v0}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    new-instance v0, Lx0/l;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/KeyPairGeneratorSpi;->engine:Lx0/l;

    const/16 v0, 0x400

    iput v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/KeyPairGeneratorSpi;->strength:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/KeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/KeyPairGeneratorSpi;->initialised:Z

    return-void
.end method

.method private init(Li2/l;Ljava/security/SecureRandom;)V
    .registers 8

    iget-object v0, p1, Li2/l;->c:Li2/n;

    new-instance v1, Le1/h0;

    new-instance v2, Le1/i0;

    iget-object v3, v0, Li2/n;->a:Ljava/math/BigInteger;

    iget-object v4, v0, Li2/n;->b:Ljava/math/BigInteger;

    iget-object v0, v0, Li2/n;->c:Ljava/math/BigInteger;

    invoke-direct {v2, v3, v4, v0}, Le1/i0;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    invoke-direct {v1, v0, p2}, Lorg/bouncycastle/crypto/z;-><init>(ILjava/security/SecureRandom;)V

    iput-object v2, v1, Le1/h0;->i:Le1/i0;

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/KeyPairGeneratorSpi;->param:Le1/h0;

    iget-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/KeyPairGeneratorSpi;->engine:Lx0/l;

    invoke-virtual {p2, v1}, Lx0/l;->m(Lorg/bouncycastle/crypto/z;)V

    iput-boolean v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/KeyPairGeneratorSpi;->initialised:Z

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/KeyPairGeneratorSpi;->gost3410Params:Li2/l;

    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .registers 6

    iget-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/KeyPairGeneratorSpi;->initialised:Z

    if-nez v0, :cond_1d

    new-instance v0, Li2/l;

    sget-object v1, Lr/a;->p:Lm/q;

    invoke-virtual {v1}, Lm/q;->u()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lr/a;->o:Lm/q;

    invoke-virtual {v2}, Lm/q;->u()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Li2/l;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lorg/bouncycastle/crypto/o;->b()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/KeyPairGeneratorSpi;->init(Li2/l;Ljava/security/SecureRandom;)V

    :cond_1d
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/KeyPairGeneratorSpi;->engine:Lx0/l;

    invoke-virtual {v0}, Lx0/l;->g()Lorg/bouncycastle/crypto/m;

    move-result-object v0

    iget-object v1, v0, Lorg/bouncycastle/crypto/m;->a:Ljava/lang/Object;

    check-cast v1, Le1/b;

    check-cast v1, Le1/k0;

    iget-object v0, v0, Lorg/bouncycastle/crypto/m;->b:Ljava/lang/Object;

    check-cast v0, Le1/b;

    check-cast v0, Le1/j0;

    new-instance v2, Ljava/security/KeyPair;

    new-instance v3, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;

    iget-object v4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/KeyPairGeneratorSpi;->gost3410Params:Li2/l;

    invoke-direct {v3, v1, v4}, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;-><init>(Le1/k0;Li2/l;)V

    new-instance v1, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/KeyPairGeneratorSpi;->gost3410Params:Li2/l;

    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;-><init>(Le1/j0;Li2/l;)V

    invoke-direct {v2, v3, v1}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v2
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .registers 3

    iput p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/KeyPairGeneratorSpi;->strength:I

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/KeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    return-void
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 4

    instance-of v0, p1, Li2/l;

    if-eqz v0, :cond_a

    check-cast p1, Li2/l;

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/KeyPairGeneratorSpi;->init(Li2/l;Ljava/security/SecureRandom;)V

    return-void

    :cond_a
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "parameter object not a GOST3410ParameterSpec"

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
