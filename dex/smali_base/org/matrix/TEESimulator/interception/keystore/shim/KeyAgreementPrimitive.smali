.class final Lorg/matrix/TEESimulator/interception/keystore/shim/KeyAgreementPrimitive;
.super Ljava/lang/Object;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"

# interfaces
.implements Lorg/matrix/TEESimulator/interception/keystore/shim/CryptoPrimitive;


# instance fields
.field private final agreement:Ljavax/crypto/KeyAgreement;


# direct methods
.method public constructor <init>(Ljava/security/KeyPair;)V
    .registers 3

    const-string v0, "keyPair"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ECDH"

    invoke-static {v0}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    move-result-object v0

    invoke-virtual {p1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V

    iput-object v0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyAgreementPrimitive;->agreement:Ljavax/crypto/KeyAgreement;

    return-void
.end method


# virtual methods
.method public abort()V
    .registers 1

    return-void
.end method

.method public finish([B[B)[B
    .registers 4

    if-eqz p1, :cond_1e

    const-string p2, "EC"

    invoke-static {p2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p2

    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v0, p1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {p2, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    iget-object p2, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyAgreementPrimitive;->agreement:Ljavax/crypto/KeyAgreement;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    iget-object p0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyAgreementPrimitive;->agreement:Ljavax/crypto/KeyAgreement;

    invoke-virtual {p0}, Ljavax/crypto/KeyAgreement;->generateSecret()[B

    move-result-object p0

    return-object p0

    :cond_1e
    new-instance p0, Landroid/os/ServiceSpecificException;

    sget-object p1, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;

    invoke-virtual {p1}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->getInvalidArgument()I

    move-result p1

    const-string p2, "Peer public key required for key agreement"

    invoke-direct {p0, p1, p2}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public bridge getBeginParameters()[Landroid/hardware/security/keymint/KeyParameter;
    .registers 1

    invoke-super {p0}, Lorg/matrix/TEESimulator/interception/keystore/shim/CryptoPrimitive;->getBeginParameters()[Landroid/hardware/security/keymint/KeyParameter;

    move-result-object p0

    return-object p0
.end method

.method public update([B)[B
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge updateAad([B)V
    .registers 2

    invoke-super {p0, p1}, Lorg/matrix/TEESimulator/interception/keystore/shim/CryptoPrimitive;->updateAad([B)V

    return-void
.end method
