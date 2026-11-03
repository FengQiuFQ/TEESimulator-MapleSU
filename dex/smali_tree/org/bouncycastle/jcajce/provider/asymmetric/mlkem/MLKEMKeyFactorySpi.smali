.class public Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyFactorySpi;
.super Lk4/a;


# static fields
.field private static final keyOids:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyFactorySpi;->keyOids:Ljava/util/Set;

    sget-object v1, Lz/b;->P0:Lm/q;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lz/b;->Q0:Lm/q;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lz/b;->R0:Lm/q;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyFactorySpi;->keyOids:Ljava/util/Set;

    invoke-direct {p0, v0}, Lk4/a;-><init>(Ljava/util/Set;)V

    return-void
.end method

.method public constructor <init>(Lm/q;)V
    .registers 2

    invoke-direct {p0, p1}, Lk4/a;-><init>(Lm/q;)V

    return-void
.end method


# virtual methods
.method public engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .registers 7

    instance-of v0, p1, Ld2/r;

    if-eqz v0, :cond_6a

    check-cast p1, Ld2/r;

    iget-object p0, p1, Ld2/r;->c:[B

    iget-boolean v0, p1, Ld2/r;->x:Z

    iget-object v1, p1, Ld2/r;->q:Ld2/q;

    iget-object v1, v1, Ld2/q;->c:Ljava/lang/String;

    invoke-static {v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/Utils;->getParameters(Ljava/lang/String;)Lj3/f;

    move-result-object v1

    const-string v2, "KeySpec represents long form"

    const/4 v3, 0x0

    if-eqz v0, :cond_29

    new-instance p1, Lj3/g;

    if-eqz v0, :cond_23

    invoke-static {p0}, Lm4/d;->e([B)[B

    move-result-object p0

    invoke-direct {p1, v1, p0, v3}, Lj3/g;-><init>(Lj3/f;[BLj3/h;)V

    goto :goto_56

    :cond_23
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_29
    new-instance v4, Lj3/g;

    if-nez v0, :cond_62

    invoke-static {p0}, Lm4/d;->e([B)[B

    move-result-object p0

    invoke-direct {v4, v1, p0, v3}, Lj3/g;-><init>(Lj3/f;[BLj3/h;)V

    if-nez v0, :cond_5c

    iget-object p0, p1, Ld2/r;->d:[B

    invoke-static {p0}, Lm4/d;->e([B)[B

    move-result-object p0

    if-eqz p0, :cond_55

    iget-object p1, v4, Lj3/g;->z1:[B

    iget-object v0, v4, Lj3/g;->A1:[B

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
    new-instance p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/BCMLKEMPrivateKey;

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/BCMLKEMPrivateKey;-><init>(Lj3/g;)V

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

    instance-of v0, p1, Ld2/s;

    if-eqz v0, :cond_1f

    check-cast p1, Ld2/s;

    new-instance p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/BCMLKEMPublicKey;

    new-instance v0, Lj3/h;

    iget-object v1, p1, Ld2/s;->c:Ld2/q;

    iget-object v1, v1, Ld2/q;->c:Ljava/lang/String;

    invoke-static {v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/Utils;->getParameters(Ljava/lang/String;)Lj3/f;

    move-result-object v1

    iget-object p1, p1, Ld2/s;->d:[B

    invoke-static {p1}, Lm4/d;->e([B)[B

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lj3/h;-><init>(Lj3/f;[B)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/BCMLKEMPublicKey;-><init>(Lj3/h;)V

    return-object p0

    :cond_1f
    invoke-super {p0, p1}, Lk4/a;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0

    return-object p0
.end method

.method public final engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .registers 5

    instance-of p0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/BCMLKEMPrivateKey;

    const-string v0, "."

    const-class v1, Ld2/s;

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
    const-class p0, Ld2/r;

    invoke-virtual {p0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_4a

    check-cast p1, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/BCMLKEMPrivateKey;

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/BCMLKEMPrivateKey;->getSeed()[B

    move-result-object p0

    if-eqz p0, :cond_34

    new-instance p2, Ld2/r;

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/BCMLKEMPrivateKey;->getParameterSpec()Ld2/q;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Ld2/r;-><init>(Ld2/q;[B)V

    return-object p2

    :cond_34
    new-instance p0, Ld2/r;

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/BCMLKEMPrivateKey;->getParameterSpec()Ld2/q;

    move-result-object p2

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/BCMLKEMPrivateKey;->getPrivateData()[B

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/BCMLKEMPrivateKey;->getPublicKey()Lb2/g;

    move-result-object p1

    invoke-interface {p1}, Lb2/g;->getPublicData()[B

    move-result-object p1

    invoke-direct {p0, p2, v0, p1}, Ld2/r;-><init>(Ld2/q;[B[B)V

    return-object p0

    :cond_4a
    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_90

    check-cast p1, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/BCMLKEMPrivateKey;

    new-instance p0, Ld2/s;

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/BCMLKEMPrivateKey;->getParameterSpec()Ld2/q;

    move-result-object p2

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/BCMLKEMPrivateKey;->getPublicKey()Lb2/g;

    move-result-object p1

    invoke-interface {p1}, Lb2/g;->getPublicData()[B

    move-result-object p1

    invoke-direct {p0, p2, p1}, Ld2/s;-><init>(Ld2/q;[B)V

    return-object p0

    :cond_64
    instance-of p0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/BCMLKEMPublicKey;

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

    check-cast p1, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/BCMLKEMPublicKey;

    new-instance p0, Ld2/s;

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/BCMLKEMPublicKey;->getParameterSpec()Ld2/q;

    move-result-object p2

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/BCMLKEMPublicKey;->getPublicData()[B

    move-result-object p1

    invoke-direct {p0, p2, p1}, Ld2/s;-><init>(Ld2/q;[B)V

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

    const-string v1, "Unsupported key type: "

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

    instance-of p0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/BCMLKEMPrivateKey;

    if-nez p0, :cond_11

    instance-of p0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/BCMLKEMPublicKey;

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
    .registers 2

    new-instance p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/BCMLKEMPrivateKey;

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/BCMLKEMPrivateKey;-><init>(Ld0/t;)V

    return-object p0
.end method

.method public generatePublic(Ll0/p0;)Ljava/security/PublicKey;
    .registers 2

    new-instance p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/BCMLKEMPublicKey;

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/BCMLKEMPublicKey;-><init>(Ll0/p0;)V

    return-object p0
.end method
