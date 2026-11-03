.class public Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyFactorySpi;
.super Lk4/a;


# static fields
.field private static final hashKeyOids:Ljava/util/Set;

.field private static final pureKeyOids:Ljava/util/Set;


# instance fields
.field private final isHashOnly:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyFactorySpi;->pureKeyOids:Ljava/util/Set;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyFactorySpi;->hashKeyOids:Ljava/util/Set;

    sget-object v2, Lz/b;->l0:Lm/q;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v3, Lz/b;->m0:Lm/q;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v4, Lz/b;->n0:Lm/q;

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lz/b;->o0:Lm/q;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lz/b;->p0:Lm/q;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lz/b;->q0:Lm/q;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .registers 2

    invoke-direct {p0, p1}, Lk4/a;-><init>(Ljava/util/Set;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyFactorySpi;->isHashOnly:Z

    return-void
.end method

.method public constructor <init>(Lm/q;)V
    .registers 3

    invoke-direct {p0, p1}, Lk4/a;-><init>(Lm/q;)V

    sget-object v0, Lz/b;->o0:Lm/q;

    invoke-virtual {p1, v0}, Lm/u;->n(Lm/u;)Z

    move-result v0

    if-nez v0, :cond_1e

    sget-object v0, Lz/b;->p0:Lm/q;

    invoke-virtual {p1, v0}, Lm/u;->n(Lm/u;)Z

    move-result v0

    if-nez v0, :cond_1e

    sget-object v0, Lz/b;->q0:Lm/q;

    invoke-virtual {p1, v0}, Lm/u;->n(Lm/u;)Z

    move-result p1

    if-eqz p1, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 p1, 0x0

    goto :goto_1f

    :cond_1e
    :goto_1e
    const/4 p1, 0x1

    :goto_1f
    iput-boolean p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyFactorySpi;->isHashOnly:Z

    return-void
.end method

.method public static synthetic access$000()Ljava/util/Set;
    .registers 1

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyFactorySpi;->pureKeyOids:Ljava/util/Set;

    return-object v0
.end method

.method public static synthetic access$100()Ljava/util/Set;
    .registers 1

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyFactorySpi;->hashKeyOids:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .registers 7

    instance-of v0, p1, Ld2/o;

    if-eqz v0, :cond_6a

    check-cast p1, Ld2/o;

    iget-object p0, p1, Ld2/o;->c:[B

    iget-boolean v0, p1, Ld2/o;->x:Z

    iget-object v1, p1, Ld2/o;->q:Ld2/n;

    iget-object v1, v1, Ld2/n;->c:Ljava/lang/String;

    invoke-static {v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/Utils;->getParameters(Ljava/lang/String;)Li3/e;

    move-result-object v1

    const-string v2, "KeySpec represents long form"

    const/4 v3, 0x0

    if-eqz v0, :cond_29

    new-instance p1, Li3/f;

    if-eqz v0, :cond_23

    invoke-static {p0}, Lm4/d;->e([B)[B

    move-result-object p0

    invoke-direct {p1, v1, p0, v3}, Li3/f;-><init>(Li3/e;[BLi3/g;)V

    goto :goto_56

    :cond_23
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_29
    new-instance v4, Li3/f;

    if-nez v0, :cond_62

    invoke-static {p0}, Lm4/d;->e([B)[B

    move-result-object p0

    invoke-direct {v4, v1, p0, v3}, Li3/f;-><init>(Li3/e;[BLi3/g;)V

    if-nez v0, :cond_5c

    iget-object p0, p1, Ld2/o;->d:[B

    invoke-static {p0}, Lm4/d;->e([B)[B

    move-result-object p0

    if-eqz p0, :cond_55

    iget-object p1, v4, Li3/f;->q:[B

    iget-object v0, v4, Li3/f;->C1:[B

    invoke-static {p1, v0}, Lm4/d;->j([B[B)[B

    move-result-object p1

    invoke-static {p0, p1}, Lm4/d;->o([B[B)Z

    move-result p0

    if-eqz p0, :cond_4d

    goto :goto_55

    :cond_4d
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    const-string p1, "public key data does not match private key data"

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_55
    :goto_55
    move-object p1, v4

    :goto_56
    new-instance p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;-><init>(Li3/f;)V

    return-object p0

    :cond_5c
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_62
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "KeySpec represents seed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6a
    invoke-super {p0, p1}, Lk4/a;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p0

    return-object p0
.end method

.method public engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .registers 4

    instance-of v0, p1, Ld2/p;

    if-eqz v0, :cond_1f

    check-cast p1, Ld2/p;

    new-instance p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPublicKey;

    new-instance v0, Li3/g;

    iget-object v1, p1, Ld2/p;->c:Ld2/n;

    iget-object v1, v1, Ld2/n;->c:Ljava/lang/String;

    invoke-static {v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/Utils;->getParameters(Ljava/lang/String;)Li3/e;

    move-result-object v1

    iget-object p1, p1, Ld2/p;->d:[B

    invoke-static {p1}, Lm4/d;->e([B)[B

    move-result-object p1

    invoke-direct {v0, v1, p1}, Li3/g;-><init>(Li3/e;[B)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPublicKey;-><init>(Li3/g;)V

    return-object p0

    :cond_1f
    invoke-super {p0, p1}, Lk4/a;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0

    return-object p0
.end method

.method public final engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .registers 5

    instance-of p0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;

    const-string v0, "."

    const-class v1, Ld2/p;

    if-eqz p0, :cond_64

    const-class p0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {p0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_1a

    new-instance p0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    return-object p0

    :cond_1a
    const-class p0, Ld2/o;

    invoke-virtual {p0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_4a

    check-cast p1, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;->getSeed()[B

    move-result-object p0

    if-eqz p0, :cond_34

    new-instance p2, Ld2/o;

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;->getParameterSpec()Ld2/n;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Ld2/o;-><init>(Ld2/n;[B)V

    return-object p2

    :cond_34
    new-instance p0, Ld2/o;

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;->getParameterSpec()Ld2/n;

    move-result-object p2

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;->getPrivateData()[B

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;->getPublicKey()Lb2/e;

    move-result-object p1

    invoke-interface {p1}, Lb2/e;->getPublicData()[B

    move-result-object p1

    invoke-direct {p0, p2, v0, p1}, Ld2/o;-><init>(Ld2/n;[B[B)V

    return-object p0

    :cond_4a
    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_90

    check-cast p1, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;

    new-instance p0, Ld2/p;

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;->getParameterSpec()Ld2/n;

    move-result-object p2

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;->getPublicKey()Lb2/e;

    move-result-object p1

    invoke-interface {p1}, Lb2/e;->getPublicData()[B

    move-result-object p1

    invoke-direct {p0, p2, p1}, Ld2/p;-><init>(Ld2/n;[B)V

    return-object p0

    :cond_64
    instance-of p0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPublicKey;

    if-eqz p0, :cond_a7

    const-class p0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {p0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_7a

    new-instance p0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    return-object p0

    :cond_7a
    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_90

    check-cast p1, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPublicKey;

    new-instance p0, Ld2/p;

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPublicKey;->getParameterSpec()Ld2/n;

    move-result-object p2

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPublicKey;->getPublicData()[B

    move-result-object p1

    invoke-direct {p0, p2, p1}, Ld2/p;-><init>(Ld2/n;[B)V

    return-object p0

    :cond_90
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "unknown key specification: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a7
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "unsupported key type: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;
    .registers 2

    instance-of p0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;

    if-nez p0, :cond_11

    instance-of p0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPublicKey;

    if-eqz p0, :cond_9

    return-object p1

    :cond_9
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "unsupported key type"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    return-object p1
.end method

.method public generatePrivate(Ld0/t;)Ljava/security/PrivateKey;
    .registers 12

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;

    invoke-direct {v0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;-><init>(Ld0/t;)V

    iget-boolean p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyFactorySpi;->isHashOnly:Z

    if-eqz p0, :cond_87

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WITH"

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_16

    goto :goto_87

    :cond_16
    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;->getKeyParams()Li3/f;

    move-result-object p0

    iget-object p1, p0, La3/a;->d:Ljava/lang/Object;

    check-cast p1, Li3/e;

    iget-object v0, p0, La3/a;->d:Ljava/lang/Object;

    check-cast v0, Li3/e;

    sget-object v1, Li3/e;->d:Li3/e;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2e

    sget-object p1, Li3/e;->g:Li3/e;

    :goto_2c
    move-object v1, p1

    goto :goto_44

    :cond_2e
    sget-object p1, Li3/e;->e:Li3/e;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_39

    sget-object p1, Li3/e;->h:Li3/e;

    goto :goto_2c

    :cond_39
    sget-object p1, Li3/e;->f:Li3/e;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7f

    sget-object p1, Li3/e;->i:Li3/e;

    goto :goto_2c

    :goto_44
    new-instance v0, Li3/f;

    iget-object p1, p0, Li3/f;->q:[B

    invoke-static {p1}, Lm4/d;->e([B)[B

    move-result-object v2

    iget-object p1, p0, Li3/f;->x:[B

    invoke-static {p1}, Lm4/d;->e([B)[B

    move-result-object v3

    iget-object p1, p0, Li3/f;->y:[B

    invoke-static {p1}, Lm4/d;->e([B)[B

    move-result-object v4

    iget-object p1, p0, Li3/f;->z1:[B

    invoke-static {p1}, Lm4/d;->e([B)[B

    move-result-object v5

    iget-object p1, p0, Li3/f;->A1:[B

    invoke-static {p1}, Lm4/d;->e([B)[B

    move-result-object v6

    iget-object p1, p0, Li3/f;->B1:[B

    invoke-static {p1}, Lm4/d;->e([B)[B

    move-result-object v7

    iget-object p1, p0, Li3/f;->C1:[B

    invoke-static {p1}, Lm4/d;->e([B)[B

    move-result-object v8

    iget-object p0, p0, Li3/f;->D1:[B

    invoke-static {p0}, Lm4/d;->e([B)[B

    move-result-object v9

    invoke-direct/range {v0 .. v9}, Li3/f;-><init>(Li3/e;[B[B[B[B[B[B[B[B)V

    new-instance p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;-><init>(Li3/f;)V

    return-object p0

    :cond_7f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "unknown ML-DSA parameters"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_87
    :goto_87
    return-object v0
.end method

.method public generatePublic(Ll0/p0;)Ljava/security/PublicKey;
    .registers 2

    new-instance p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPublicKey;

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPublicKey;-><init>(Ll0/p0;)V

    return-object p0
.end method
