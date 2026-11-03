.class public Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyPairGeneratorSpi;
.super Ljava/security/KeyPairGeneratorSpi;


# instance fields
.field private final algorithm:Lm/q;

.field private final generators:[Ljava/security/KeyPairGenerator;

.field private parametersInitialized:Z

.field private secureRandom:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Lm/q;)V
    .registers 7

    invoke-direct {p0}, Ljava/security/KeyPairGeneratorSpi;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyPairGeneratorSpi;->parametersInitialized:Z

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyPairGeneratorSpi;->algorithm:Lm/q;

    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->getPairing(Lm/q;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->getKeyPairSpecs(Lm/q;)[Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p1

    array-length v2, v1

    new-array v2, v2, [Ljava/security/KeyPairGenerator;

    iput-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyPairGeneratorSpi;->generators:[Ljava/security/KeyPairGenerator;

    :goto_15
    array-length v2, v1

    if-eq v0, v2, :cond_48

    :try_start_18
    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyPairGeneratorSpi;->generators:[Ljava/security/KeyPairGenerator;

    aget-object v3, v1, v0

    invoke-static {v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->getBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "BC"

    invoke-static {v3, v4}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v3

    aput-object v3, v2, v0

    aget-object v2, p1, v0

    if-eqz v2, :cond_33

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyPairGeneratorSpi;->generators:[Ljava/security/KeyPairGenerator;

    aget-object v3, v3, v0

    invoke-virtual {v3, v2}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_33} :catch_36

    :cond_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :catch_36
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unable to create base generator: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lb/b;->B(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_48
    return-void
.end method

.method private getCompositeKeyPair()Ljava/security/KeyPair;
    .registers 6

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyPairGeneratorSpi;->generators:[Ljava/security/KeyPairGenerator;

    array-length v1, v0

    new-array v1, v1, [Ljava/security/PublicKey;

    array-length v0, v0

    new-array v0, v0, [Ljava/security/PrivateKey;

    const/4 v2, 0x0

    :goto_9
    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyPairGeneratorSpi;->generators:[Ljava/security/KeyPairGenerator;

    array-length v4, v3

    if-ge v2, v4, :cond_23

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v3

    invoke-virtual {v3}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {v3}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_23
    new-instance v2, La2/d;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyPairGeneratorSpi;->algorithm:Lm/q;

    invoke-direct {v2, v3, v1}, La2/d;-><init>(Lm/q;[Ljava/security/PublicKey;)V

    new-instance v1, La2/c;

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyPairGeneratorSpi;->algorithm:Lm/q;

    invoke-direct {v1, p0, v0}, La2/c;-><init>(Lm/q;[Ljava/security/PrivateKey;)V

    new-instance p0, Ljava/security/KeyPair;

    invoke-direct {p0, v2, v1}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object p0
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .registers 1

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyPairGeneratorSpi;->getCompositeKeyPair()Ljava/security/KeyPair;

    move-result-object p0

    return-object p0
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .registers 3

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "use AlgorithmParameterSpec"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 6

    if-nez p1, :cond_1b

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyPairGeneratorSpi;->algorithm:Lm/q;

    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->getKeyPairSpecs(Lm/q;)[Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p1

    const/4 v0, 0x0

    :goto_9
    array-length v1, p1

    if-eq v0, v1, :cond_1a

    aget-object v1, p1, v0

    if-eqz v1, :cond_17

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyPairGeneratorSpi;->generators:[Ljava/security/KeyPairGenerator;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1, p2}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_1a
    return-void

    :cond_1b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Use initialize only for custom SecureRandom. AlgorithmParameterSpec must be null because it is determined by algorithm name."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
