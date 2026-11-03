.class interface abstract Lorg/matrix/TEESimulator/interception/keystore/shim/CryptoPrimitive;
.super Ljava/lang/Object;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"


# direct methods
.method public static synthetic access$getBeginParameters$jd(Lorg/matrix/TEESimulator/interception/keystore/shim/CryptoPrimitive;)[Landroid/hardware/security/keymint/KeyParameter;
    .registers 1

    invoke-super {p0}, Lorg/matrix/TEESimulator/interception/keystore/shim/CryptoPrimitive;->getBeginParameters()[Landroid/hardware/security/keymint/KeyParameter;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$updateAad$jd(Lorg/matrix/TEESimulator/interception/keystore/shim/CryptoPrimitive;[B)V
    .registers 2

    invoke-super {p0, p1}, Lorg/matrix/TEESimulator/interception/keystore/shim/CryptoPrimitive;->updateAad([B)V

    return-void
.end method


# virtual methods
.method public abstract abort()V
.end method

.method public abstract finish([B[B)[B
.end method

.method public getBeginParameters()[Landroid/hardware/security/keymint/KeyParameter;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract update([B)[B
.end method

.method public updateAad([B)V
    .registers 2

    sget-object p0, Lorg/matrix/TEESimulator/interception/keystore/shim/VendorQuirks;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/shim/VendorQuirks;

    invoke-virtual {p0}, Lorg/matrix/TEESimulator/interception/keystore/shim/VendorQuirks;->nonAeadUpdateAadSucceeds()Z

    move-result p0

    if-eqz p0, :cond_9

    return-void

    :cond_9
    new-instance p0, Landroid/os/ServiceSpecificException;

    sget-object p1, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;

    invoke-virtual {p1}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->getInvalidTag()I

    move-result p1

    invoke-direct {p0, p1}, Landroid/os/ServiceSpecificException;-><init>(I)V

    throw p0
.end method
