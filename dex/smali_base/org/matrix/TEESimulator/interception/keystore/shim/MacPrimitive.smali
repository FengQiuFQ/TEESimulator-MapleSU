.class final Lorg/matrix/TEESimulator/interception/keystore/shim/MacPrimitive;
.super Ljava/lang/Object;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"

# interfaces
.implements Lorg/matrix/TEESimulator/interception/keystore/shim/CryptoPrimitive;


# instance fields
.field private final mac:Ljavax/crypto/Mac;

.field private final params:Lt4/l;

.field private final txId:J


# direct methods
.method public constructor <init>(Ljavax/crypto/SecretKey;Lt4/l;J)V
    .registers 6

    const-string v0, "secretKey"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "params"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/MacPrimitive;->params:Lt4/l;

    iput-wide p3, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/MacPrimitive;->txId:J

    sget-object p3, Lorg/matrix/TEESimulator/interception/keystore/shim/JcaAlgorithmMapper;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/shim/JcaAlgorithmMapper;

    invoke-virtual {p3, p2}, Lorg/matrix/TEESimulator/interception/keystore/shim/JcaAlgorithmMapper;->mapMacAlgorithm(Lt4/l;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    iput-object p2, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/MacPrimitive;->mac:Ljavax/crypto/Mac;

    return-void
.end method


# virtual methods
.method public abort()V
    .registers 1

    return-void
.end method

.method public finish([B[B)[B
    .registers 4

    if-eqz p1, :cond_7

    iget-object v0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/MacPrimitive;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->update([B)V

    :cond_7
    iget-object p1, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/MacPrimitive;->mac:Ljavax/crypto/Mac;

    invoke-virtual {p1}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object p1

    iget-object v0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/MacPrimitive;->params:Lt4/l;

    iget-object v0, v0, Lt4/l;->P:Ljava/lang/Integer;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1b

    :cond_18
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x8

    :goto_1b
    div-int/lit8 v0, v0, 0x8

    invoke-static {p1}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    const-string v0, "copyOf(...)"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/MacPrimitive;->params:Lt4/l;

    iget-object p0, p0, Lt4/l;->h:Ljava/util/List;

    invoke-static {p0}, Lb/i;->X0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_36

    goto :goto_63

    :cond_36
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_63

    if-eqz p2, :cond_55

    invoke-static {p1, p2}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result p0

    if-eqz p0, :cond_47

    const/4 p0, 0x0

    return-object p0

    :cond_47
    new-instance p0, Landroid/os/ServiceSpecificException;

    sget-object p1, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;

    invoke-virtual {p1}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->getVerificationFailed()I

    move-result p1

    const-string p2, "MAC verification failed"

    invoke-direct {p0, p1, p2}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_55
    new-instance p0, Landroid/os/ServiceSpecificException;

    sget-object p1, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;

    invoke-virtual {p1}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->getVerificationFailed()I

    move-result p1

    const-string p2, "MAC to verify is null"

    invoke-direct {p0, p1, p2}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_63
    :goto_63
    sget-object p0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    return-object p1
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

    iget-object p0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/MacPrimitive;->mac:Ljavax/crypto/Mac;

    invoke-virtual {p0, p1}, Ljavax/crypto/Mac;->update([B)V

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge updateAad([B)V
    .registers 2

    invoke-super {p0, p1}, Lorg/matrix/TEESimulator/interception/keystore/shim/CryptoPrimitive;->updateAad([B)V

    return-void
.end method
