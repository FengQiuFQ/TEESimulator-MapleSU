.class public Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;
.super Ljava/security/KeyPairGenerator;


# static fields
.field private static parameters:Ljava/util/Map;


# instance fields
.field engine:Lq3/j;

.field initialised:Z

.field param:Lq3/i;

.field random:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    sget-object v1, Ld2/y;->d:Ld2/y;

    const-string v1, "SLH-DSA-SHA2-128F"

    sget-object v2, Lq3/l;->d:Lq3/l;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    sget-object v1, Ld2/y;->d:Ld2/y;

    const-string v1, "SLH-DSA-SHA2-128S"

    sget-object v2, Lq3/l;->e:Lq3/l;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    sget-object v1, Ld2/y;->d:Ld2/y;

    const-string v1, "SLH-DSA-SHA2-192F"

    sget-object v2, Lq3/l;->f:Lq3/l;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    sget-object v1, Ld2/y;->d:Ld2/y;

    const-string v1, "SLH-DSA-SHA2-192S"

    sget-object v2, Lq3/l;->g:Lq3/l;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    sget-object v1, Ld2/y;->d:Ld2/y;

    const-string v1, "SLH-DSA-SHA2-256F"

    sget-object v2, Lq3/l;->h:Lq3/l;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    sget-object v1, Ld2/y;->d:Ld2/y;

    const-string v1, "SLH-DSA-SHA2-256S"

    sget-object v2, Lq3/l;->i:Lq3/l;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    sget-object v1, Ld2/y;->d:Ld2/y;

    const-string v1, "SLH-DSA-SHAKE-128F"

    sget-object v2, Lq3/l;->j:Lq3/l;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    sget-object v1, Ld2/y;->d:Ld2/y;

    const-string v1, "SLH-DSA-SHAKE-128S"

    sget-object v2, Lq3/l;->k:Lq3/l;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    sget-object v1, Ld2/y;->d:Ld2/y;

    const-string v1, "SLH-DSA-SHAKE-192F"

    sget-object v2, Lq3/l;->l:Lq3/l;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    sget-object v1, Ld2/y;->d:Ld2/y;

    const-string v1, "SLH-DSA-SHAKE-192S"

    sget-object v2, Lq3/l;->m:Lq3/l;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    sget-object v1, Ld2/y;->d:Ld2/y;

    const-string v1, "SLH-DSA-SHAKE-256F"

    sget-object v2, Lq3/l;->n:Lq3/l;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    sget-object v1, Ld2/y;->d:Ld2/y;

    const-string v1, "SLH-DSA-SHAKE-256S"

    sget-object v2, Lq3/l;->o:Lq3/l;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    sget-object v1, Ld2/y;->d:Ld2/y;

    const-string v1, "SLH-DSA-SHA2-128F-WITH-SHA256"

    sget-object v2, Lq3/l;->p:Lq3/l;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    sget-object v1, Ld2/y;->d:Ld2/y;

    const-string v1, "SLH-DSA-SHA2-128S-WITH-SHA256"

    sget-object v2, Lq3/l;->q:Lq3/l;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    sget-object v1, Ld2/y;->d:Ld2/y;

    const-string v1, "SLH-DSA-SHA2-192F-WITH-SHA512"

    sget-object v2, Lq3/l;->r:Lq3/l;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    sget-object v1, Ld2/y;->d:Ld2/y;

    const-string v1, "SLH-DSA-SHA2-192S-WITH-SHA512"

    sget-object v2, Lq3/l;->s:Lq3/l;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    sget-object v1, Ld2/y;->d:Ld2/y;

    const-string v1, "SLH-DSA-SHA2-256F-WITH-SHA512"

    sget-object v2, Lq3/l;->t:Lq3/l;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    sget-object v1, Ld2/y;->d:Ld2/y;

    const-string v1, "SLH-DSA-SHA2-256S-WITH-SHA512"

    sget-object v2, Lq3/l;->u:Lq3/l;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    sget-object v1, Ld2/y;->d:Ld2/y;

    const-string v1, "SLH-DSA-SHAKE-128F-WITH-SHAKE128"

    sget-object v2, Lq3/l;->v:Lq3/l;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    sget-object v1, Ld2/y;->d:Ld2/y;

    const-string v1, "SLH-DSA-SHAKE-128S-WITH-SHAKE128"

    sget-object v2, Lq3/l;->w:Lq3/l;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    sget-object v1, Ld2/y;->d:Ld2/y;

    const-string v1, "SLH-DSA-SHAKE-192F-WITH-SHAKE256"

    sget-object v2, Lq3/l;->x:Lq3/l;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    sget-object v1, Ld2/y;->d:Ld2/y;

    const-string v1, "SLH-DSA-SHAKE-192S-WITH-SHAKE256"

    sget-object v2, Lq3/l;->y:Lq3/l;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    sget-object v1, Ld2/y;->d:Ld2/y;

    const-string v1, "SLH-DSA-SHAKE-256F-WITH-SHAKE256"

    sget-object v2, Lq3/l;->z:Lq3/l;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    sget-object v1, Ld2/y;->d:Ld2/y;

    const-string v1, "SLH-DSA-SHAKE-256S-WITH-SHAKE256"

    sget-object v2, Lq3/l;->A:Lq3/l;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ld2/y;)V
    .registers 5

    iget-object v0, p1, Ld2/y;->c:Ljava/lang/String;

    invoke-static {v0}, Lm4/m;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SLH-DSA-"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    new-instance v0, Lq3/j;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->engine:Lq3/j;

    invoke-static {}, Lorg/bouncycastle/crypto/o;->b()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->initialised:Z

    new-instance v1, Lq3/i;

    sget-object v2, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    iget-object p1, p1, Ld2/y;->c:Ljava/lang/String;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lq3/l;

    invoke-direct {v1, v0, p1}, Lq3/i;-><init>(Ljava/security/SecureRandom;Lq3/l;)V

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->param:Lq3/i;

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->engine:Lq3/j;

    invoke-virtual {p1, v1}, Lq3/j;->m(Lorg/bouncycastle/crypto/z;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->initialised:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    new-instance p1, Lq3/j;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->engine:Lq3/j;

    invoke-static {}, Lorg/bouncycastle/crypto/o;->b()Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->initialised:Z

    return-void
.end method

.method private static getNameFromParams(Ljava/security/spec/AlgorithmParameterSpec;)Ljava/lang/String;
    .registers 3

    instance-of v0, p0, Ld2/y;

    if-eqz v0, :cond_9

    check-cast p0, Ld2/y;

    iget-object p0, p0, Ld2/y;->c:Ljava/lang/String;

    return-object p0

    :cond_9
    new-instance v0, Le2/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Le2/d;-><init>(Ljava/security/spec/AlgorithmParameterSpec;I)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lm4/m;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .registers 4

    iget-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->initialised:Z

    if-nez v0, :cond_30

    invoke-virtual {p0}, Ljava/security/KeyPairGenerator;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HASH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    new-instance v0, Lq3/i;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    sget-object v2, Lq3/l;->p:Lq3/l;

    invoke-direct {v0, v1, v2}, Lq3/i;-><init>(Ljava/security/SecureRandom;Lq3/l;)V

    :goto_19
    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->param:Lq3/i;

    goto :goto_26

    :cond_1c
    new-instance v0, Lq3/i;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    sget-object v2, Lq3/l;->d:Lq3/l;

    invoke-direct {v0, v1, v2}, Lq3/i;-><init>(Ljava/security/SecureRandom;Lq3/l;)V

    goto :goto_19

    :goto_26
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->engine:Lq3/j;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->param:Lq3/i;

    invoke-virtual {v0, v1}, Lq3/j;->m(Lorg/bouncycastle/crypto/z;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->initialised:Z

    :cond_30
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->engine:Lq3/j;

    invoke-virtual {p0}, Lq3/j;->g()Lorg/bouncycastle/crypto/m;

    move-result-object p0

    iget-object v0, p0, Lorg/bouncycastle/crypto/m;->a:Ljava/lang/Object;

    check-cast v0, Le1/b;

    check-cast v0, Lq3/n;

    iget-object p0, p0, Lorg/bouncycastle/crypto/m;->b:Ljava/lang/Object;

    check-cast p0, Le1/b;

    check-cast p0, Lq3/m;

    new-instance v1, Ljava/security/KeyPair;

    new-instance v2, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/BCSLHDSAPublicKey;

    invoke-direct {v2, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/BCSLHDSAPublicKey;-><init>(Lq3/n;)V

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/BCSLHDSAPrivateKey;

    invoke-direct {v0, p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/BCSLHDSAPrivateKey;-><init>(Lq3/m;)V

    invoke-direct {v1, v2, v0}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v1
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .registers 3

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "use AlgorithmParameterSpec"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 4

    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->getNameFromParams(Ljava/security/spec/AlgorithmParameterSpec;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_36

    sget-object p1, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lq3/l;

    if-eqz p1, :cond_2a

    new-instance v0, Lq3/i;

    invoke-direct {v0, p2, p1}, Lq3/i;-><init>(Ljava/security/SecureRandom;Lq3/l;)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->param:Lq3/i;

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->engine:Lq3/j;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, v0, Lorg/bouncycastle/crypto/z;->h:Ljava/lang/Object;

    check-cast p2, Ljava/security/SecureRandom;

    iput-object p2, p1, Lq3/j;->g:Ljava/security/SecureRandom;

    iget-object p2, v0, Lq3/i;->i:Lq3/l;

    iput-object p2, p1, Lq3/j;->h:Lq3/l;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyPairGeneratorSpi;->initialised:Z

    return-void

    :cond_2a
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "unknown parameter set name: "

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_36
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "invalid ParameterSpec: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
