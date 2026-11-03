.class public Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyPairGeneratorSpi;
.super Ljava/security/KeyPairGeneratorSpi;


# static fields
.field private static final Ed25519:I = 0x1

.field private static final Ed448:I = 0x2

.field private static final EdDSA:I = -0x1

.field private static final X25519:I = 0x3

.field private static final X448:I = 0x4

.field private static final XDH:I = -0x2


# instance fields
.field private final algorithmDeclared:I

.field private algorithmInitialized:I

.field private generator:Lorg/bouncycastle/crypto/b;

.field private secureRandom:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/security/KeyPairGeneratorSpi;-><init>()V

    iput p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyPairGeneratorSpi;->algorithmDeclared:I

    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyPairGeneratorSpi;->getAlgorithmFamily(I)I

    move-result v0

    if-eq v0, p1, :cond_d

    iput p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyPairGeneratorSpi;->algorithmInitialized:I

    :cond_d
    return-void
.end method

.method private static getAlgorithmFamily(I)I
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_f

    const/4 v0, 0x2

    if-eq p0, v0, :cond_f

    const/4 v0, 0x3

    if-eq p0, v0, :cond_d

    const/4 v0, 0x4

    if-eq p0, v0, :cond_d

    return p0

    :cond_d
    const/4 p0, -0x2

    return p0

    :cond_f
    const/4 p0, -0x1

    return p0
.end method

.method private static getAlgorithmForName(Ljava/lang/String;)I
    .registers 3

    const-string v0, "X25519"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_66

    sget-object v0, Lo1/a;->a:Lm/q;

    invoke-virtual {v0}, Lm/q;->u()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_66

    :cond_15
    const-string v0, "Ed25519"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_64

    sget-object v0, Lo1/a;->c:Lm/q;

    invoke-virtual {v0}, Lm/q;->u()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    goto :goto_64

    :cond_2a
    const-string v0, "X448"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_62

    sget-object v0, Lo1/a;->b:Lm/q;

    invoke-virtual {v0}, Lm/q;->u()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    goto :goto_62

    :cond_3f
    const-string v0, "Ed448"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_60

    sget-object v0, Lo1/a;->d:Lm/q;

    invoke-virtual {v0}, Lm/q;->u()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    goto :goto_60

    :cond_54
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "invalid parameterSpec name: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_60
    :goto_60
    const/4 p0, 0x2

    return p0

    :cond_62
    :goto_62
    const/4 p0, 0x4

    return p0

    :cond_64
    :goto_64
    const/4 p0, 0x1

    return p0

    :cond_66
    :goto_66
    const/4 p0, 0x3

    return p0
.end method

.method private getAlgorithmForStrength(I)I
    .registers 6

    const/16 v0, 0xff

    const-string v1, "key size not configurable"

    const/4 v2, -0x1

    const/4 v3, -0x2

    if-eq p1, v0, :cond_2d

    const/16 v0, 0x100

    if-eq p1, v0, :cond_2d

    const/16 v0, 0x1c0

    if-ne p1, v0, :cond_25

    iget p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyPairGeneratorSpi;->algorithmDeclared:I

    const/4 p1, 0x4

    if-eq p0, v3, :cond_24

    const/4 v0, 0x2

    if-eq p0, v2, :cond_23

    if-eq p0, v0, :cond_23

    if-ne p0, p1, :cond_1d

    goto :goto_24

    :cond_1d
    new-instance p0, Ljava/security/InvalidParameterException;

    invoke-direct {p0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_23
    return v0

    :cond_24
    :goto_24
    return p1

    :cond_25
    new-instance p0, Ljava/security/InvalidParameterException;

    const-string p1, "unknown key size"

    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2d
    iget p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyPairGeneratorSpi;->algorithmDeclared:I

    const/4 p1, 0x3

    if-eq p0, v3, :cond_41

    const/4 v0, 0x1

    if-eq p0, v2, :cond_40

    if-eq p0, v0, :cond_40

    if-ne p0, p1, :cond_3a

    goto :goto_41

    :cond_3a
    new-instance p0, Ljava/security/InvalidParameterException;

    invoke-direct {p0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_40
    return v0

    :cond_41
    :goto_41
    return p1
.end method

.method private static getNameFromParams(Ljava/security/spec/AlgorithmParameterSpec;)Ljava/lang/String;
    .registers 2

    instance-of v0, p0, Ljava/security/spec/ECGenParameterSpec;

    if-eqz v0, :cond_b

    check-cast p0, Ljava/security/spec/ECGenParameterSpec;

    invoke-virtual {p0}, Ljava/security/spec/ECGenParameterSpec;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    instance-of v0, p0, Li2/b;

    if-eqz v0, :cond_14

    check-cast p0, Li2/b;

    iget-object p0, p0, Li2/b;->c:Ljava/lang/String;

    return-object p0

    :cond_14
    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->getNameFrom(Ljava/security/spec/AlgorithmParameterSpec;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private setupGenerator()Lorg/bouncycastle/crypto/b;
    .registers 4

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyPairGeneratorSpi;->secureRandom:Ljava/security/SecureRandom;

    if-nez v0, :cond_a

    invoke-static {}, Lorg/bouncycastle/crypto/o;->b()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyPairGeneratorSpi;->secureRandom:Ljava/security/SecureRandom;

    :cond_a
    iget v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyPairGeneratorSpi;->algorithmInitialized:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_7b

    const/4 v1, 0x3

    if-eq v0, v2, :cond_5d

    const/4 v2, 0x4

    if-eq v0, v1, :cond_3f

    if-ne v0, v2, :cond_37

    new-instance v0, Ld1/b;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ld1/b;-><init>(I)V

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyPairGeneratorSpi;->secureRandom:Ljava/security/SecureRandom;

    if-nez p0, :cond_27

    invoke-static {}, Lorg/bouncycastle/crypto/o;->b()Ljava/security/SecureRandom;

    move-result-object p0

    goto :goto_29

    :cond_27
    sget-object v1, Lorg/bouncycastle/crypto/o;->a:Ljava/lang/ThreadLocal;

    :goto_29
    iput-object p0, v0, Ld1/b;->h:Ljava/security/SecureRandom;

    sget-object p0, Lorg/bouncycastle/crypto/o;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/crypto/l;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :cond_37
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "generator not correctly initialized"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3f
    new-instance v0, Ld1/b;

    invoke-direct {v0, v2}, Ld1/b;-><init>(I)V

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyPairGeneratorSpi;->secureRandom:Ljava/security/SecureRandom;

    if-nez p0, :cond_4d

    invoke-static {}, Lorg/bouncycastle/crypto/o;->b()Ljava/security/SecureRandom;

    move-result-object p0

    goto :goto_4f

    :cond_4d
    sget-object v1, Lorg/bouncycastle/crypto/o;->a:Ljava/lang/ThreadLocal;

    :goto_4f
    iput-object p0, v0, Ld1/b;->h:Ljava/security/SecureRandom;

    sget-object p0, Lorg/bouncycastle/crypto/o;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/crypto/l;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :cond_5d
    new-instance v0, Ld1/b;

    invoke-direct {v0, v1}, Ld1/b;-><init>(I)V

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyPairGeneratorSpi;->secureRandom:Ljava/security/SecureRandom;

    if-nez p0, :cond_6b

    invoke-static {}, Lorg/bouncycastle/crypto/o;->b()Ljava/security/SecureRandom;

    move-result-object p0

    goto :goto_6d

    :cond_6b
    sget-object v1, Lorg/bouncycastle/crypto/o;->a:Ljava/lang/ThreadLocal;

    :goto_6d
    iput-object p0, v0, Ld1/b;->h:Ljava/security/SecureRandom;

    sget-object p0, Lorg/bouncycastle/crypto/o;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/crypto/l;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :cond_7b
    new-instance v0, Ld1/b;

    invoke-direct {v0, v2}, Ld1/b;-><init>(I)V

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyPairGeneratorSpi;->secureRandom:Ljava/security/SecureRandom;

    if-nez p0, :cond_89

    invoke-static {}, Lorg/bouncycastle/crypto/o;->b()Ljava/security/SecureRandom;

    move-result-object p0

    goto :goto_8b

    :cond_89
    sget-object v1, Lorg/bouncycastle/crypto/o;->a:Ljava/lang/ThreadLocal;

    :goto_8b
    iput-object p0, v0, Ld1/b;->h:Ljava/security/SecureRandom;

    sget-object p0, Lorg/bouncycastle/crypto/o;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/crypto/l;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .registers 4

    iget v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyPairGeneratorSpi;->algorithmInitialized:I

    const-string v1, "generator not correctly initialized"

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyPairGeneratorSpi;->generator:Lorg/bouncycastle/crypto/b;

    if-nez v0, :cond_10

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyPairGeneratorSpi;->setupGenerator()Lorg/bouncycastle/crypto/b;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyPairGeneratorSpi;->generator:Lorg/bouncycastle/crypto/b;

    :cond_10
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyPairGeneratorSpi;->generator:Lorg/bouncycastle/crypto/b;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/b;->g()Lorg/bouncycastle/crypto/m;

    move-result-object v0

    iget p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyPairGeneratorSpi;->algorithmInitialized:I

    const/4 v2, 0x1

    if-eq p0, v2, :cond_43

    const/4 v2, 0x2

    if-eq p0, v2, :cond_43

    const/4 v2, 0x3

    if-eq p0, v2, :cond_2b

    const/4 v2, 0x4

    if-ne p0, v2, :cond_25

    goto :goto_2b

    :cond_25
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2b
    :goto_2b
    new-instance p0, Ljava/security/KeyPair;

    new-instance v1, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPublicKey;

    iget-object v2, v0, Lorg/bouncycastle/crypto/m;->a:Ljava/lang/Object;

    check-cast v2, Le1/b;

    invoke-direct {v1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPublicKey;-><init>(Le1/b;)V

    new-instance v2, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPrivateKey;

    iget-object v0, v0, Lorg/bouncycastle/crypto/m;->b:Ljava/lang/Object;

    check-cast v0, Le1/b;

    invoke-direct {v2, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPrivateKey;-><init>(Le1/b;)V

    invoke-direct {p0, v1, v2}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object p0

    :cond_43
    new-instance p0, Ljava/security/KeyPair;

    new-instance v1, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPublicKey;

    iget-object v2, v0, Lorg/bouncycastle/crypto/m;->a:Ljava/lang/Object;

    check-cast v2, Le1/b;

    invoke-direct {v1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPublicKey;-><init>(Le1/b;)V

    new-instance v2, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPrivateKey;

    iget-object v0, v0, Lorg/bouncycastle/crypto/m;->b:Ljava/lang/Object;

    check-cast v0, Le1/b;

    invoke-direct {v2, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPrivateKey;-><init>(Le1/b;)V

    invoke-direct {p0, v1, v2}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object p0

    :cond_5b
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyPairGeneratorSpi;->getAlgorithmForStrength(I)I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyPairGeneratorSpi;->algorithmInitialized:I

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyPairGeneratorSpi;->secureRandom:Ljava/security/SecureRandom;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyPairGeneratorSpi;->generator:Lorg/bouncycastle/crypto/b;

    return-void
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 5

    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyPairGeneratorSpi;->getNameFromParams(Ljava/security/spec/AlgorithmParameterSpec;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_25

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyPairGeneratorSpi;->getAlgorithmForName(Ljava/lang/String;)I

    move-result p1

    iget v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyPairGeneratorSpi;->algorithmDeclared:I

    if-eq v0, p1, :cond_1d

    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyPairGeneratorSpi;->getAlgorithmFamily(I)I

    move-result v1

    if-ne v0, v1, :cond_15

    goto :goto_1d

    :cond_15
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "parameterSpec for wrong curve type"

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1d
    :goto_1d
    iput p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyPairGeneratorSpi;->algorithmInitialized:I

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyPairGeneratorSpi;->secureRandom:Ljava/security/SecureRandom;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyPairGeneratorSpi;->generator:Lorg/bouncycastle/crypto/b;

    return-void

    :cond_25
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "invalid parameterSpec: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
