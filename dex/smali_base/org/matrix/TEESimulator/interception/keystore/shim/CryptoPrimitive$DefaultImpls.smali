.class public final Lorg/matrix/TEESimulator/interception/keystore/shim/CryptoPrimitive$DefaultImpls;
.super Ljava/lang/Object;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"


# direct methods
.method public static getBeginParameters(Lorg/matrix/TEESimulator/interception/keystore/shim/CryptoPrimitive;)[Landroid/hardware/security/keymint/KeyParameter;
    .registers 1

    # invokes: Lorg/matrix/TEESimulator/interception/keystore/shim/CryptoPrimitive;->getBeginParameters()[Landroid/hardware/security/keymint/KeyParameter;
    invoke-static {p0}, Lorg/matrix/TEESimulator/interception/keystore/shim/CryptoPrimitive;->access$getBeginParameters$jd(Lorg/matrix/TEESimulator/interception/keystore/shim/CryptoPrimitive;)[Landroid/hardware/security/keymint/KeyParameter;

    move-result-object p0

    return-object p0
.end method

.method public static updateAad(Lorg/matrix/TEESimulator/interception/keystore/shim/CryptoPrimitive;[B)V
    .registers 2

    # invokes: Lorg/matrix/TEESimulator/interception/keystore/shim/CryptoPrimitive;->updateAad([B)V
    invoke-static {p0, p1}, Lorg/matrix/TEESimulator/interception/keystore/shim/CryptoPrimitive;->access$updateAad$jd(Lorg/matrix/TEESimulator/interception/keystore/shim/CryptoPrimitive;[B)V

    return-void
.end method
