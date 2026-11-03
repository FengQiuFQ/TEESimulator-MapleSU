.class public abstract Lk4/a;
.super Ljava/security/KeyFactorySpi;

# interfaces
.implements Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;


# instance fields
.field private final keyOid:Lm/q;

.field private final keyOids:Ljava/util/Set;


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .registers 3

    invoke-direct {p0}, Ljava/security/KeyFactorySpi;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lk4/a;->keyOid:Lm/q;

    iput-object p1, p0, Lk4/a;->keyOids:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lm/q;)V
    .registers 2

    invoke-direct {p0}, Ljava/security/KeyFactorySpi;-><init>()V

    iput-object p1, p0, Lk4/a;->keyOid:Lm/q;

    const/4 p1, 0x0

    iput-object p1, p0, Lk4/a;->keyOids:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a(Lm/q;)V
    .registers 4

    iget-object v0, p0, Lk4/a;->keyOid:Lm/q;

    const-string v1, "incorrect algorithm OID for key: "

    if-eqz v0, :cond_17

    invoke-virtual {v0, p1}, Lm/u;->n(Lm/u;)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_1f

    :cond_d
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    invoke-static {v1, p1}, Lb/b;->j(Ljava/lang/String;Lm/q;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_17
    iget-object p0, p0, Lk4/a;->keyOids:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_20

    :goto_1f
    return-void

    :cond_20
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    invoke-static {v1, p1}, Lb/b;->j(Ljava/lang/String;Lm/q;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .registers 4

    instance-of v0, p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    if-eqz v0, :cond_32

    check-cast p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {p1}, Ljava/security/spec/PKCS8EncodedKeySpec;->getEncoded()[B

    move-result-object p1

    :try_start_a
    invoke-static {p1}, Ld0/t;->h(Ljava/lang/Object;)Ld0/t;

    move-result-object p1

    iget-object v0, p1, Ld0/t;->d:Ll0/b;

    iget-object v0, v0, Ll0/b;->c:Lm/q;

    invoke-virtual {p0, v0}, Lk4/a;->a(Lm/q;)V

    invoke-interface {p0, p1}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;->generatePrivate(Ld0/t;)Ljava/security/PrivateKey;

    move-result-object p0
    :try_end_19
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_a .. :try_end_19} :catch_30
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_19} :catch_25
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_19} :catch_1a

    return-object p0

    :catch_1a
    move-exception p0

    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_25
    move-exception p0

    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_30
    move-exception p0

    throw p0

    :cond_32
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported key specification: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .registers 4

    instance-of v0, p1, Ljava/security/spec/X509EncodedKeySpec;

    if-eqz v0, :cond_27

    check-cast p1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {p1}, Ljava/security/spec/X509EncodedKeySpec;->getEncoded()[B

    move-result-object p1

    :try_start_a
    invoke-static {p1}, Ll0/p0;->h(Ljava/lang/Object;)Ll0/p0;

    move-result-object p1

    iget-object v0, p1, Ll0/p0;->c:Ll0/b;

    iget-object v0, v0, Ll0/b;->c:Lm/q;

    invoke-virtual {p0, v0}, Lk4/a;->a(Lm/q;)V

    invoke-interface {p0, p1}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;->generatePublic(Ll0/p0;)Ljava/security/PublicKey;

    move-result-object p0
    :try_end_19
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_a .. :try_end_19} :catch_25
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_19} :catch_1a

    return-object p0

    :catch_1a
    move-exception p0

    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_25
    move-exception p0

    throw p0

    :cond_27
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown key specification: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
