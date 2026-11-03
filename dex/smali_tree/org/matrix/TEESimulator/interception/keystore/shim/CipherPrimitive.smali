.class final Lorg/matrix/TEESimulator/interception/keystore/shim/CipherPrimitive;
.super Ljava/lang/Object;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"

# interfaces
.implements Lorg/matrix/TEESimulator/interception/keystore/shim/CryptoPrimitive;


# instance fields
.field private final cipher:Ljavax/crypto/Cipher;

.field private final isAead:Z

.field private final opMode:I


# direct methods
.method public constructor <init>(Ljava/security/Key;Lt4/l;IJ)V
    .registers 9

    const-string p4, "cryptoKey"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p4, "params"

    invoke-static {p4, p2}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/CipherPrimitive;->opMode:I

    iget-object p4, p2, Lt4/l;->f:Ljava/util/List;

    invoke-static {p4}, Lb/i;->X0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    if-nez p4, :cond_1a

    goto :goto_24

    :cond_1a
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    const/16 p5, 0x20

    if-ne p4, p5, :cond_24

    const/4 p4, 0x1

    goto :goto_25

    :cond_24
    :goto_24
    const/4 p4, 0x0

    :goto_25
    iput-boolean p4, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/CipherPrimitive;->isAead:Z

    sget-object p5, Lorg/matrix/TEESimulator/interception/keystore/shim/JcaAlgorithmMapper;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/shim/JcaAlgorithmMapper;

    invoke-virtual {p5, p2}, Lorg/matrix/TEESimulator/interception/keystore/shim/JcaAlgorithmMapper;->mapCipherAlgorithm(Lt4/l;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iget-object v1, p2, Lt4/l;->D:[B

    if-eqz v1, :cond_42

    if-eqz p4, :cond_42

    new-instance p2, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 p4, 0x80

    invoke-direct {p2, p4, v1}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    invoke-virtual {v0, p3, p1, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    goto :goto_9b

    :cond_42
    if-eqz v1, :cond_4d

    new-instance p2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p2, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, p3, p1, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    goto :goto_9b

    :cond_4d
    iget-object p4, p2, Lt4/l;->g:Ljava/util/List;

    invoke-static {p4}, Lb/i;->X0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    if-nez p4, :cond_58

    goto :goto_98

    :cond_58
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    const/4 v1, 0x2

    if-ne p4, v1, :cond_98

    iget-object p4, p2, Lt4/l;->i:Ljava/util/List;

    invoke-static {p4}, Lb/i;->X0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p5, p4}, Lorg/matrix/TEESimulator/interception/keystore/shim/JcaAlgorithmMapper;->mapOaepDigest(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p4

    iget-object p2, p2, Lt4/l;->Q:Ljava/util/List;

    invoke-static {p2}, Lb/i;->X0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-eqz p2, :cond_83

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p5, p2}, Lorg/matrix/TEESimulator/interception/keystore/shim/JcaAlgorithmMapper;->mapOaepDigest(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_84

    :cond_83
    move-object p2, p4

    :cond_84
    new-instance p5, Ljavax/crypto/spec/OAEPParameterSpec;

    new-instance v1, Ljava/security/spec/MGF1ParameterSpec;

    invoke-direct {v1, p2}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    sget-object p2, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    const-string v2, "MGF1"

    invoke-direct {p5, p4, v2, v1, p2}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    invoke-virtual {v0, p3, p1, p5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    sget-object p1, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    goto :goto_9b

    :cond_98
    :goto_98
    invoke-virtual {v0, p3, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    :goto_9b
    const-string p1, "apply(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/CipherPrimitive;->cipher:Ljavax/crypto/Cipher;

    return-void
.end method


# virtual methods
.method public abort()V
    .registers 1

    return-void
.end method

.method public finish([B[B)[B
    .registers 3

    iget-object p0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/CipherPrimitive;->cipher:Ljavax/crypto/Cipher;

    if-eqz p1, :cond_9

    invoke-virtual {p0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0

    :cond_9
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->doFinal()[B

    move-result-object p0

    return-object p0
.end method

.method public getBeginParameters()[Landroid/hardware/security/keymint/KeyParameter;
    .registers 3

    iget-object p0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/CipherPrimitive;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {p0}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object p0

    if-nez p0, :cond_a

    const/4 p0, 0x0

    return-object p0

    :cond_a
    new-instance v0, Landroid/hardware/security/keymint/KeyParameter;

    invoke-direct {v0}, Landroid/hardware/security/keymint/KeyParameter;-><init>()V

    const v1, -0x6ffffc17

    iput v1, v0, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    invoke-static {p0}, Landroid/hardware/security/keymint/KeyParameterValue;->blob([B)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object p0

    iput-object p0, v0, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    filled-new-array {v0}, [Landroid/hardware/security/keymint/KeyParameter;

    move-result-object p0

    return-object p0
.end method

.method public update([B)[B
    .registers 2

    if-eqz p1, :cond_9

    iget-object p0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/CipherPrimitive;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {p0, p1}, Ljavax/crypto/Cipher;->update([B)[B

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public updateAad([B)V
    .registers 3

    iget-boolean v0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/CipherPrimitive;->isAead:Z

    if-nez v0, :cond_19

    sget-object p0, Lorg/matrix/TEESimulator/interception/keystore/shim/VendorQuirks;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/shim/VendorQuirks;

    invoke-virtual {p0}, Lorg/matrix/TEESimulator/interception/keystore/shim/VendorQuirks;->nonAeadUpdateAadSucceeds()Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_20

    :cond_d
    new-instance p0, Landroid/os/ServiceSpecificException;

    sget-object p1, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;

    invoke-virtual {p1}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->getInvalidTag()I

    move-result p1

    invoke-direct {p0, p1}, Landroid/os/ServiceSpecificException;-><init>(I)V

    throw p0

    :cond_19
    if-eqz p1, :cond_20

    iget-object p0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/CipherPrimitive;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {p0, p1}, Ljavax/crypto/Cipher;->updateAAD([B)V

    :cond_20
    :goto_20
    return-void
.end method
