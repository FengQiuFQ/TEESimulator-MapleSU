.class public Lorg/bouncycastle/jcajce/provider/asymmetric/NoSig$SigSpi;
.super Ljava/security/SignatureSpi;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    return-void
.end method


# virtual methods
.method public engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public engineInitSign(Ljava/security/PrivateKey;)V
    .registers 2

    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "attempt to pass private key to NoSig"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineInitVerify(Ljava/security/PublicKey;)V
    .registers 2

    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "attempt to pass public key to NoSig"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    return-void
.end method

.method public engineSign()[B
    .registers 1

    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0
.end method

.method public engineUpdate(B)V
    .registers 2

    return-void
.end method

.method public engineUpdate([BII)V
    .registers 4

    return-void
.end method

.method public engineVerify([B)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method
