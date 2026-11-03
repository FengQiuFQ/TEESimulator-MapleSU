.class final Lorg/matrix/TEESimulator/interception/keystore/shim/JcaAlgorithmMapper;
.super Ljava/lang/Object;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"


# static fields
.field public static final INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/shim/JcaAlgorithmMapper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/matrix/TEESimulator/interception/keystore/shim/JcaAlgorithmMapper;

    invoke-direct {v0}, Lorg/matrix/TEESimulator/interception/keystore/shim/JcaAlgorithmMapper;-><init>()V

    sput-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/JcaAlgorithmMapper;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/shim/JcaAlgorithmMapper;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final mapCipherAlgorithm(Lt4/l;)Ljava/lang/String;
    .registers 9

    const-string p0, "params"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget p0, p1, Lt4/l;->b:I

    const/16 v0, 0x20

    const/4 v1, 0x1

    if-eq p0, v1, :cond_23

    if-ne p0, v0, :cond_11

    const-string p0, "AES"

    goto :goto_25

    :cond_11
    new-instance p1, Landroid/os/ServiceSpecificException;

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;

    invoke-virtual {v0}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->getIncompatibleAlgorithm()I

    move-result v0

    const-string v1, "Unsupported cipher algorithm: "

    invoke-static {p0, v1}, Lb/b;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_23
    const-string p0, "RSA"

    :goto_25
    iget-object v2, p1, Lt4/l;->f:Ljava/util/List;

    invoke-static {v2}, Lb/i;->X0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const/4 v3, 0x2

    const-string v4, "ECB"

    if-nez v2, :cond_33

    goto :goto_3a

    :cond_33
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v1, :cond_3a

    goto :goto_5e

    :cond_3a
    :goto_3a
    if-nez v2, :cond_3d

    goto :goto_46

    :cond_3d
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v3, :cond_46

    const-string v4, "CBC"

    goto :goto_5e

    :cond_46
    :goto_46
    if-nez v2, :cond_49

    goto :goto_53

    :cond_49
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_53

    const-string v4, "CTR"

    goto :goto_5e

    :cond_53
    :goto_53
    if-nez v2, :cond_56

    goto :goto_5e

    :cond_56
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v0, :cond_5e

    const-string v4, "GCM"

    :cond_5e
    :goto_5e
    iget-object p1, p1, Lt4/l;->g:Ljava/util/List;

    invoke-static {p1}, Lb/i;->X0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    const-string v0, "NoPadding"

    if-nez p1, :cond_6b

    goto :goto_72

    :cond_6b
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_72

    goto :goto_a4

    :cond_72
    :goto_72
    if-nez p1, :cond_75

    goto :goto_80

    :cond_75
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x40

    if-ne v1, v2, :cond_80

    const-string v0, "PKCS7Padding"

    goto :goto_a4

    :cond_80
    :goto_80
    const-string v1, "PKCS1Padding"

    if-nez p1, :cond_85

    goto :goto_8e

    :cond_85
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v5, 0x4

    if-ne v2, v5, :cond_8e

    :goto_8c
    move-object v0, v1

    goto :goto_a4

    :cond_8e
    :goto_8e
    if-nez p1, :cond_91

    goto :goto_99

    :cond_91
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v5, 0x5

    if-ne v2, v5, :cond_99

    goto :goto_8c

    :cond_99
    :goto_99
    if-nez p1, :cond_9c

    goto :goto_a4

    :cond_9c
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v3, :cond_a4

    const-string v0, "OAEPPadding"

    :cond_a4
    :goto_a4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final mapMacAlgorithm(Lt4/l;)Ljava/lang/String;
    .registers 4

    const-string p0, "params"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p1, Lt4/l;->i:Ljava/util/List;

    invoke-static {p0}, Lb/i;->X0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    const-string p1, "HmacSHA256"

    if-nez p0, :cond_12

    goto :goto_1a

    :cond_12
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1a

    return-object p1

    :cond_1a
    :goto_1a
    if-nez p0, :cond_1d

    goto :goto_27

    :cond_1d
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_27

    const-string p0, "HmacSHA384"

    return-object p0

    :cond_27
    :goto_27
    if-nez p0, :cond_2a

    goto :goto_34

    :cond_2a
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x6

    if-ne p0, v0, :cond_34

    const-string p0, "HmacSHA512"

    return-object p0

    :cond_34
    :goto_34
    return-object p1
.end method

.method public final mapOaepDigest(Ljava/lang/Integer;)Ljava/lang/String;
    .registers 4

    if-nez p1, :cond_3

    goto :goto_d

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_d

    const-string p0, "SHA-1"

    return-object p0

    :cond_d
    :goto_d
    if-nez p1, :cond_10

    goto :goto_1a

    :cond_10
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_1a

    const-string p0, "SHA-224"

    return-object p0

    :cond_1a
    :goto_1a
    const-string p0, "SHA-256"

    if-nez p1, :cond_1f

    goto :goto_27

    :cond_1f
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_27

    return-object p0

    :cond_27
    :goto_27
    if-nez p1, :cond_2a

    goto :goto_34

    :cond_2a
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_34

    const-string p0, "SHA-384"

    return-object p0

    :cond_34
    :goto_34
    if-nez p1, :cond_37

    goto :goto_40

    :cond_37
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_40

    const-string p0, "SHA-512"

    :cond_40
    :goto_40
    return-object p0
.end method

.method public final mapSignatureAlgorithm(Lt4/l;)Ljava/lang/String;
    .registers 5

    const-string p0, "params"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget p0, p1, Lt4/l;->b:I

    iget-object v0, p1, Lt4/l;->i:Ljava/util/List;

    invoke-static {v0}, Lb/i;->X0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_12

    goto :goto_1c

    :cond_12
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1c

    const-string v0, "SHA256"

    goto :goto_38

    :cond_1c
    :goto_1c
    if-nez v0, :cond_1f

    goto :goto_29

    :cond_1f
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_29

    const-string v0, "SHA384"

    goto :goto_38

    :cond_29
    :goto_29
    if-nez v0, :cond_2c

    goto :goto_36

    :cond_2c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_36

    const-string v0, "SHA512"

    goto :goto_38

    :cond_36
    :goto_36
    const-string v0, "NONE"

    :goto_38
    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq p0, v1, :cond_57

    if-ne p0, v2, :cond_45

    const-string p0, "withECDSA"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_45
    new-instance p1, Landroid/os/ServiceSpecificException;

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;

    invoke-virtual {v0}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->getIncompatibleAlgorithm()I

    move-result v0

    const-string v1, "Unsupported signature algorithm: "

    invoke-static {p0, v1}, Lb/b;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_57
    iget-object p0, p1, Lt4/l;->g:Ljava/util/List;

    invoke-static {p0}, Lb/i;->X0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_62

    goto :goto_6f

    :cond_62
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v2, :cond_6f

    const-string p0, "withRSA/PSS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6f
    :goto_6f
    const-string p0, "withRSA"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
