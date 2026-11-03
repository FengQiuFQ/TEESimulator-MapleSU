.class public Lorg/bouncycastle/jcajce/provider/asymmetric/COMPOSITE$KeyFactory;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseKeyFactorySpi;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseKeyFactorySpi;-><init>()V

    return-void
.end method


# virtual methods
.method public engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;
    .registers 4

    :try_start_0
    instance-of v0, p1, Ljava/security/PrivateKey;

    if-eqz v0, :cond_11

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Ld0/t;->h(Ljava/lang/Object;)Ld0/t;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/COMPOSITE$KeyFactory;->generatePrivate(Ld0/t;)Ljava/security/PrivateKey;

    move-result-object p0

    return-object p0

    :cond_11
    instance-of v0, p1, Ljava/security/PublicKey;

    if-eqz v0, :cond_22

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Ll0/p0;->h(Ljava/lang/Object;)Ll0/p0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/COMPOSITE$KeyFactory;->generatePublic(Ll0/p0;)Ljava/security/PublicKey;

    move-result-object p0
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_21} :catch_2a

    return-object p0

    :cond_22
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "key not recognized"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_2a
    move-exception p0

    new-instance p1, Ljava/security/InvalidKeyException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "key could not be parsed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lb/b;->c(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public generatePrivate(Ld0/t;)Ljava/security/PrivateKey;
    .registers 2

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/COMPOSITE;->baseConverter:Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/COMPOSITE;->access$000()Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;->generatePrivate(Ld0/t;)Ljava/security/PrivateKey;

    move-result-object p0

    return-object p0
.end method

.method public generatePublic(Ll0/p0;)Ljava/security/PublicKey;
    .registers 2

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/COMPOSITE;->baseConverter:Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/COMPOSITE;->access$000()Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;->generatePublic(Ll0/p0;)Ljava/security/PublicKey;

    move-result-object p0

    return-object p0
.end method
