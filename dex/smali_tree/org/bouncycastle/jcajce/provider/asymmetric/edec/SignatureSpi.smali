.class public Lorg/bouncycastle/jcajce/provider/asymmetric/edec/SignatureSpi;
.super Ljava/security/SignatureSpi;


# static fields
.field private static final EMPTY_CONTEXT:[B


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private signer:Lorg/bouncycastle/crypto/m0;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/SignatureSpi;->EMPTY_CONTEXT:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/SignatureSpi;->algorithm:Ljava/lang/String;

    return-void
.end method

.method private static getLwEdDSAKeyPrivate(Ljava/security/PrivateKey;)Le1/b;
    .registers 1

    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/EdECUtil;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Le1/b;

    move-result-object p0

    return-object p0
.end method

.method private static getLwEdDSAKeyPublic(Ljava/security/PublicKey;)Le1/b;
    .registers 1

    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/EdECUtil;->generatePublicKeyParameter(Ljava/security/PublicKey;)Le1/b;

    move-result-object p0

    return-object p0
.end method

.method private getSigner(Ljava/lang/String;)Lorg/bouncycastle/crypto/m0;
    .registers 4

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/SignatureSpi;->algorithm:Ljava/lang/String;

    if-eqz v0, :cond_21

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_21

    :cond_b
    new-instance p1, Ljava/security/InvalidKeyException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "inappropriate key for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/SignatureSpi;->algorithm:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_21
    :goto_21
    const-string p0, "Ed448"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_31

    new-instance p0, Li1/f;

    sget-object p1, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/SignatureSpi;->EMPTY_CONTEXT:[B

    invoke-direct {p0, p1}, Li1/f;-><init>([B)V

    return-object p0

    :cond_31
    new-instance p0, Li1/e;

    invoke-direct {p0}, Li1/e;-><init>()V

    return-object p0
.end method


# virtual methods
.method public engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "engineGetParameter unsupported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineGetParameters()Ljava/security/AlgorithmParameters;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public engineInitSign(Ljava/security/PrivateKey;)V
    .registers 3

    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/SignatureSpi;->getLwEdDSAKeyPrivate(Ljava/security/PrivateKey;)Le1/b;

    move-result-object p1

    instance-of v0, p1, Le1/y;

    if-eqz v0, :cond_11

    const-string v0, "Ed25519"

    :goto_a
    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/SignatureSpi;->getSigner(Ljava/lang/String;)Lorg/bouncycastle/crypto/m0;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/SignatureSpi;->signer:Lorg/bouncycastle/crypto/m0;

    goto :goto_18

    :cond_11
    instance-of v0, p1, Le1/a0;

    if-eqz v0, :cond_1f

    const-string v0, "Ed448"

    goto :goto_a

    :goto_18
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/SignatureSpi;->signer:Lorg/bouncycastle/crypto/m0;

    const/4 v0, 0x1

    invoke-interface {p0, v0, p1}, Lorg/bouncycastle/crypto/m0;->init(ZLorg/bouncycastle/crypto/g;)V

    return-void

    :cond_1f
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "unsupported private key type"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineInitVerify(Ljava/security/PublicKey;)V
    .registers 3

    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/SignatureSpi;->getLwEdDSAKeyPublic(Ljava/security/PublicKey;)Le1/b;

    move-result-object p1

    instance-of v0, p1, Le1/z;

    if-eqz v0, :cond_11

    const-string v0, "Ed25519"

    :goto_a
    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/SignatureSpi;->getSigner(Ljava/lang/String;)Lorg/bouncycastle/crypto/m0;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/SignatureSpi;->signer:Lorg/bouncycastle/crypto/m0;

    goto :goto_18

    :cond_11
    instance-of v0, p1, Le1/b0;

    if-eqz v0, :cond_1f

    const-string v0, "Ed448"

    goto :goto_a

    :goto_18
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/SignatureSpi;->signer:Lorg/bouncycastle/crypto/m0;

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/bouncycastle/crypto/m0;->init(ZLorg/bouncycastle/crypto/g;)V

    return-void

    :cond_1f
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "unsupported public key type"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "engineSetParameter unsupported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineSign()[B
    .registers 2

    :try_start_0
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/SignatureSpi;->signer:Lorg/bouncycastle/crypto/m0;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/m0;->b()[B

    move-result-object p0
    :try_end_6
    .catch Lorg/bouncycastle/crypto/h; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    move-exception p0

    new-instance v0, Ljava/security/SignatureException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineUpdate(B)V
    .registers 2

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/SignatureSpi;->signer:Lorg/bouncycastle/crypto/m0;

    invoke-interface {p0, p1}, Lorg/bouncycastle/crypto/m0;->update(B)V

    return-void
.end method

.method public engineUpdate([BII)V
    .registers 4

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/SignatureSpi;->signer:Lorg/bouncycastle/crypto/m0;

    invoke-interface {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/m0;->update([BII)V

    return-void
.end method

.method public engineVerify([B)Z
    .registers 2

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/SignatureSpi;->signer:Lorg/bouncycastle/crypto/m0;

    invoke-interface {p0, p1}, Lorg/bouncycastle/crypto/m0;->a([B)Z

    move-result p0

    return p0
.end method
