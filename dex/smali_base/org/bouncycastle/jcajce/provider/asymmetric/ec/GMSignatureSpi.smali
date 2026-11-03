.class public Lorg/bouncycastle/jcajce/provider/asymmetric/ec/GMSignatureSpi;
.super Ljava/security/SignatureSpi;


# instance fields
.field private engineParams:Ljava/security/AlgorithmParameters;

.field private final helper:Le2/b;

.field private paramSpec:Ld2/z;

.field private final signer:Li1/m;


# direct methods
.method public constructor <init>(Li1/m;)V
    .registers 3

    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    new-instance v0, Le2/a;

    invoke-direct {v0}, Le2/a;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/GMSignatureSpi;->helper:Le2/b;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/GMSignatureSpi;->signer:Li1/m;

    return-void
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

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/GMSignatureSpi;->engineParams:Ljava/security/AlgorithmParameters;

    return-object p0
.end method

.method public engineInitSign(Ljava/security/PrivateKey;)V
    .registers 4

    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Le1/b;

    move-result-object p1

    iget-object v0, p0, Ljava/security/SignatureSpi;->appRandom:Ljava/security/SecureRandom;

    if-eqz v0, :cond_e

    new-instance v1, Le1/t0;

    invoke-direct {v1, p1, v0}, Le1/t0;-><init>(Lorg/bouncycastle/crypto/g;Ljava/security/SecureRandom;)V

    move-object p1, v1

    :cond_e
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/GMSignatureSpi;->signer:Li1/m;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Li1/m;->init(ZLorg/bouncycastle/crypto/g;)V

    return-void
.end method

.method public engineInitVerify(Ljava/security/PublicKey;)V
    .registers 3

    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/ECUtils;->generatePublicKeyParameter(Ljava/security/PublicKey;)Le1/b;

    move-result-object p1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/GMSignatureSpi;->signer:Li1/m;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Li1/m;->init(ZLorg/bouncycastle/crypto/g;)V

    return-void
.end method

.method public engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "engineSetParameter unsupported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 2

    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "only SM2ParameterSpec supported"

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineSign()[B
    .registers 4

    :try_start_0
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/GMSignatureSpi;->signer:Li1/m;

    invoke-virtual {p0}, Li1/m;->b()[B

    move-result-object p0
    :try_end_6
    .catch Lorg/bouncycastle/crypto/h; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    move-exception p0

    new-instance v0, Ljava/security/SignatureException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unable to create signature: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineUpdate(B)V
    .registers 2

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/GMSignatureSpi;->signer:Li1/m;

    invoke-virtual {p0, p1}, Li1/m;->update(B)V

    return-void
.end method

.method public engineUpdate([BII)V
    .registers 4

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/GMSignatureSpi;->signer:Li1/m;

    invoke-virtual {p0, p1, p2, p3}, Li1/m;->update([BII)V

    return-void
.end method

.method public engineVerify([B)Z
    .registers 2

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/GMSignatureSpi;->signer:Li1/m;

    invoke-virtual {p0, p1}, Li1/m;->a([B)Z

    move-result p0

    return p0
.end method
