.class final Lorg/matrix/TEESimulator/interception/keystore/shim/Verifier;
.super Ljava/lang/Object;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"

# interfaces
.implements Lorg/matrix/TEESimulator/interception/keystore/shim/CryptoPrimitive;


# instance fields
.field private final signature:Ljava/security/Signature;


# direct methods
.method public constructor <init>(Ljava/security/KeyPair;Lt4/l;)V
    .registers 4

    const-string v0, "keyPair"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "params"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/JcaAlgorithmMapper;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/shim/JcaAlgorithmMapper;

    invoke-virtual {v0, p2}, Lorg/matrix/TEESimulator/interception/keystore/shim/JcaAlgorithmMapper;->mapSignatureAlgorithm(Lt4/l;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p2

    invoke-virtual {p1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    iput-object p2, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/Verifier;->signature:Ljava/security/Signature;

    return-void
.end method


# virtual methods
.method public abort()V
    .registers 1

    return-void
.end method

.method public finish([B[B)[B
    .registers 3

    if-eqz p1, :cond_5

    invoke-virtual {p0, p1}, Lorg/matrix/TEESimulator/interception/keystore/shim/Verifier;->update([B)[B

    :cond_5
    if-eqz p2, :cond_1f

    iget-object p0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/Verifier;->signature:Ljava/security/Signature;

    invoke-virtual {p0, p2}, Ljava/security/Signature;->verify([B)Z

    move-result p0

    if-eqz p0, :cond_11

    const/4 p0, 0x0

    return-object p0

    :cond_11
    new-instance p0, Landroid/os/ServiceSpecificException;

    sget-object p1, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;

    invoke-virtual {p1}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->getVerificationFailed()I

    move-result p1

    const-string p2, "Signature verification failed"

    invoke-direct {p0, p1, p2}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_1f
    new-instance p0, Landroid/os/ServiceSpecificException;

    sget-object p1, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;

    invoke-virtual {p1}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->getVerificationFailed()I

    move-result p1

    const-string p2, "Signature to verify is null"

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

    if-eqz p1, :cond_7

    iget-object p0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/Verifier;->signature:Ljava/security/Signature;

    invoke-virtual {p0, p1}, Ljava/security/Signature;->update([B)V

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge updateAad([B)V
    .registers 2

    invoke-super {p0, p1}, Lorg/matrix/TEESimulator/interception/keystore/shim/CryptoPrimitive;->updateAad([B)V

    return-void
.end method
