.class public final Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperation;
.super Ljava/lang/Object;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"


# static fields
.field public static final Companion:Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperation$Companion;

.field private static final MAX_RECEIVE_DATA:I = 0x8000


# instance fields
.field private volatile finalized:Z

.field private final latencyFloorMs:J

.field private onFinishCallback:Lh/a;

.field private final primitive:Lorg/matrix/TEESimulator/interception/keystore/shim/CryptoPrimitive;

.field private final txId:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperation$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperation$Companion;-><init>(Lkotlin/jvm/internal/f;)V

    sput-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperation;->Companion:Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperation$Companion;

    return-void
.end method

.method public constructor <init>(JLjava/security/KeyPair;Ljavax/crypto/SecretKey;Lt4/l;J)V
    .registers 16

    const-string v1, "params"

    invoke-static {v1, p5}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperation;->txId:J

    iput-wide p6, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperation;->latencyFloorMs:J

    iget-object v1, p5, Lt4/l;->h:Ljava/util/List;

    invoke-static {v1}, Lb/i;->X0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    sget-object v4, Lx4/a;->e:La/f;

    invoke-virtual {v4}, La/f;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_26

    const-string v4, "UNKNOWN"

    :cond_26
    sget-object v5, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[SoftwareOp TX_ID: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "] Initializing for purpose: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lx4/b;->a(Ljava/lang/String;)V

    const/4 v4, 0x0

    if-nez v3, :cond_86

    const-string p0, "null"

    const-string v2, "present"

    if-eqz p3, :cond_51

    move-object p3, v2

    goto :goto_52

    :cond_51
    move-object p3, p0

    :goto_52
    if-eqz p4, :cond_55

    move-object p0, v2

    :cond_55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "] Purpose missing on restored key (authorizations="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", keyPair="

    const-string p2, ", secretKey="

    invoke-static {v0, p1, p3, p2, p0}, Lb/b;->v(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "). Returning unsupportedPurpose."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v4}, Lx4/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p0, Landroid/os/ServiceSpecificException;

    sget-object p1, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;

    invoke-virtual {p1}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->getUnsupportedPurpose()I

    move-result p1

    const-string p2, "Restored key has no PURPOSE authorization"

    invoke-direct {p0, p1, p2}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_86
    iget v1, p5, Lt4/l;->b:I

    const/16 v5, 0x80

    if-ne v1, v5, :cond_b2

    new-instance p3, Lorg/matrix/TEESimulator/interception/keystore/shim/MacPrimitive;

    if-eqz p4, :cond_95

    invoke-direct {p3, p4, p5, p1, p2}, Lorg/matrix/TEESimulator/interception/keystore/shim/MacPrimitive;-><init>(Ljavax/crypto/SecretKey;Lt4/l;J)V

    goto/16 :goto_19d

    :cond_95
    new-instance p0, Landroid/os/ServiceSpecificException;

    sget-object p3, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;

    invoke-virtual {p3}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->getInvalidArgument()I

    move-result p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "] HMAC op but secretKey null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_b2
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_185

    const/4 v5, 0x1

    if-eq v1, v5, :cond_14f

    const/4 v0, 0x2

    if-eq v1, v0, :cond_12a

    const/4 v0, 0x3

    if-eq v1, v0, :cond_105

    const/4 v0, 0x6

    if-ne v1, v0, :cond_eb

    if-eqz p3, :cond_ce

    new-instance p1, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyAgreementPrimitive;

    invoke-direct {p1, p3}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyAgreementPrimitive;-><init>(Ljava/security/KeyPair;)V

    :goto_cb
    move-object p3, p1

    goto/16 :goto_19d

    :cond_ce
    new-instance p0, Landroid/os/ServiceSpecificException;

    sget-object p3, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;

    invoke-virtual {p3}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->getInvalidArgument()I

    move-result p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "] AGREE_KEY requested but keyPair is null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_eb
    new-instance p0, Landroid/os/ServiceSpecificException;

    sget-object p1, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;

    invoke-virtual {p1}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->getUnsupportedPurpose()I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unsupported operation purpose: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_105
    if-eqz p3, :cond_10d

    new-instance p1, Lorg/matrix/TEESimulator/interception/keystore/shim/Verifier;

    invoke-direct {p1, p3, p5}, Lorg/matrix/TEESimulator/interception/keystore/shim/Verifier;-><init>(Ljava/security/KeyPair;Lt4/l;)V

    goto :goto_cb

    :cond_10d
    new-instance p0, Landroid/os/ServiceSpecificException;

    sget-object p3, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;

    invoke-virtual {p3}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->getInvalidArgument()I

    move-result p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "] VERIFY requested but keyPair is null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_12a
    if-eqz p3, :cond_132

    new-instance p1, Lorg/matrix/TEESimulator/interception/keystore/shim/Signer;

    invoke-direct {p1, p3, p5}, Lorg/matrix/TEESimulator/interception/keystore/shim/Signer;-><init>(Ljava/security/KeyPair;Lt4/l;)V

    goto :goto_cb

    :cond_132
    new-instance p0, Landroid/os/ServiceSpecificException;

    sget-object p3, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;

    invoke-virtual {p3}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->getInvalidArgument()I

    move-result p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "] SIGN requested but keyPair is null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_14f
    if-eqz p4, :cond_153

    move-object v1, p4

    goto :goto_15e

    :cond_153
    if-eqz p3, :cond_15a

    invoke-virtual {p3}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object p3

    goto :goto_15b

    :cond_15a
    move-object p3, v4

    :goto_15b
    if-eqz p3, :cond_168

    move-object v1, p3

    :goto_15e
    new-instance v0, Lorg/matrix/TEESimulator/interception/keystore/shim/CipherPrimitive;

    const/4 v3, 0x2

    move-wide v4, p1

    move-object v2, p5

    invoke-direct/range {v0 .. v5}, Lorg/matrix/TEESimulator/interception/keystore/shim/CipherPrimitive;-><init>(Ljava/security/Key;Lt4/l;IJ)V

    :goto_166
    move-object p3, v0

    goto :goto_19d

    :cond_168
    new-instance p0, Landroid/os/ServiceSpecificException;

    sget-object p3, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;

    invoke-virtual {p3}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->getUnsupportedPurpose()I

    move-result p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "] DECRYPT requires either secretKey or keyPair.private"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_185
    if-eqz p4, :cond_189

    move-object p3, p4

    goto :goto_193

    :cond_189
    if-eqz p3, :cond_190

    invoke-virtual {p3}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object p3

    goto :goto_191

    :cond_190
    move-object p3, v4

    :goto_191
    if-eqz p3, :cond_1a0

    :goto_193
    new-instance v0, Lorg/matrix/TEESimulator/interception/keystore/shim/CipherPrimitive;

    const/4 v3, 0x1

    move-wide v4, p1

    move-object v1, p3

    move-object v2, p5

    invoke-direct/range {v0 .. v5}, Lorg/matrix/TEESimulator/interception/keystore/shim/CipherPrimitive;-><init>(Ljava/security/Key;Lt4/l;IJ)V

    goto :goto_166

    :goto_19d
    iput-object p3, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperation;->primitive:Lorg/matrix/TEESimulator/interception/keystore/shim/CryptoPrimitive;

    return-void

    :cond_1a0
    new-instance p0, Landroid/os/ServiceSpecificException;

    sget-object p3, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;

    invoke-virtual {p3}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->getUnsupportedPurpose()I

    move-result p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "] ENCRYPT requires either secretKey or keyPair.public"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public synthetic constructor <init>(JLjava/security/KeyPair;Ljavax/crypto/SecretKey;Lt4/l;JILkotlin/jvm/internal/f;)V
    .registers 20

    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_d

    const-wide/16 v0, 0x0

    move-wide v8, v0

    :goto_7
    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    goto :goto_10

    :cond_d
    move-wide/from16 v8, p6

    goto :goto_7

    :goto_10
    invoke-direct/range {v2 .. v9}, Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperation;-><init>(JLjava/security/KeyPair;Ljavax/crypto/SecretKey;Lt4/l;J)V

    return-void
.end method

.method private final checkActive()V
    .registers 4

    iget-boolean v0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperation;->finalized:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    sget-object v0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    iget-wide v0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperation;->txId:J

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "[SoftwareOp TX_ID: "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "] Rejected: operation already finalized (pruned or completed)"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lx4/b;->a(Ljava/lang/String;)V

    new-instance p0, Landroid/os/ServiceSpecificException;

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;

    invoke-virtual {v0}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->getInvalidOperationHandle()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/os/ServiceSpecificException;-><init>(I)V

    throw p0
.end method

.method private final checkInputLength([B)V
    .registers 7

    if-eqz p1, :cond_44

    array-length v0, p1

    const v1, 0x8000

    if-gt v0, v1, :cond_9

    goto :goto_44

    :cond_9
    sget-object v0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    iget-wide v0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperation;->txId:J

    array-length p0, p1

    sget-object p1, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;

    invoke-virtual {p1}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->getTooMuchData()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[SoftwareOp TX_ID: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "] Input too large: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " > 32768, throwing TOO_MUCH_DATA("

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lx4/b;->c(Ljava/lang/String;)V

    new-instance p0, Landroid/os/ServiceSpecificException;

    invoke-virtual {p1}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->getTooMuchData()I

    move-result p1

    invoke-direct {p0, p1}, Landroid/os/ServiceSpecificException;-><init>(I)V

    throw p0

    :cond_44
    :goto_44
    return-void
.end method

.method private final mapToServiceSpecificException(Ljava/lang/Exception;)Landroid/os/ServiceSpecificException;
    .registers 3

    instance-of p0, p1, Ljava/security/SignatureException;

    if-eqz p0, :cond_14

    new-instance p0, Landroid/os/ServiceSpecificException;

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;

    invoke-virtual {v0}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->getVerificationFailed()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    return-object p0

    :cond_14
    instance-of p0, p1, Ljavax/crypto/BadPaddingException;

    if-eqz p0, :cond_28

    new-instance p0, Landroid/os/ServiceSpecificException;

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;

    invoke-virtual {v0}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->getInvalidArgument()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    return-object p0

    :cond_28
    instance-of p0, p1, Ljavax/crypto/IllegalBlockSizeException;

    if-eqz p0, :cond_3c

    new-instance p0, Landroid/os/ServiceSpecificException;

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;

    invoke-virtual {v0}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->getInvalidInputLength()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    return-object p0

    :cond_3c
    instance-of p0, p1, Ljava/security/InvalidKeyException;

    if-eqz p0, :cond_50

    new-instance p0, Landroid/os/ServiceSpecificException;

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;

    invoke-virtual {v0}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->getIncompatibleKey()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    return-object p0

    :cond_50
    new-instance p0, Landroid/os/ServiceSpecificException;

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;

    invoke-virtual {v0}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->getUnknownError()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public final abort()V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperation;->finalized:Z

    iget-object v0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperation;->primitive:Lorg/matrix/TEESimulator/interception/keystore/shim/CryptoPrimitive;

    invoke-interface {v0}, Lorg/matrix/TEESimulator/interception/keystore/shim/CryptoPrimitive;->abort()V

    sget-object v0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    iget-wide v0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperation;->txId:J

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "[SoftwareOp TX_ID: "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "] Operation aborted."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lx4/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final finish([B[B)[B
    .registers 12

    const-string v0, "[SoftwareOp TX_ID: "

    invoke-direct {p0}, Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperation;->checkActive()V

    invoke-direct {p0, p1}, Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperation;->checkInputLength([B)V

    :try_start_8
    iget-wide v1, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperation;->latencyFloorMs:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_17

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    goto :goto_18

    :catch_15
    move-exception p1

    goto :goto_5c

    :cond_17
    move-wide v1, v3

    :goto_18
    iget-object v5, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperation;->primitive:Lorg/matrix/TEESimulator/interception/keystore/shim/CryptoPrimitive;

    invoke-interface {v5, p1, p2}, Lorg/matrix/TEESimulator/interception/keystore/shim/CryptoPrimitive;->finish([B[B)[B

    move-result-object p1

    iget-wide v5, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperation;->latencyFloorMs:J

    cmp-long p2, v5, v3

    if-lez p2, :cond_39

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long/2addr v5, v1

    const p2, 0xf4240

    int-to-long v1, p2

    div-long/2addr v5, v1

    iget-wide v7, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperation;->latencyFloorMs:J

    sub-long/2addr v7, v5

    cmp-long p2, v7, v3

    if-lez p2, :cond_39

    mul-long/2addr v7, v1

    invoke-static {v7, v8}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    :cond_39
    const/4 p2, 0x1

    iput-boolean p2, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperation;->finalized:Z

    iget-object p2, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperation;->onFinishCallback:Lh/a;

    if-eqz p2, :cond_43

    invoke-interface {p2}, Lh/a;->a()Ljava/lang/Object;

    :cond_43
    sget-object p2, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    iget-wide v1, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperation;->txId:J

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "] Finished operation successfully."

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lx4/b;->c(Ljava/lang/String;)V
    :try_end_5b
    .catch Landroid/os/ServiceSpecificException; {:try_start_8 .. :try_end_5b} :catch_79
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_5b} :catch_15

    return-object p1

    :goto_5c
    sget-object p2, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    iget-wide v1, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperation;->txId:J

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "] Failed to finish operation."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lx4/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, p1}, Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperation;->mapToServiceSpecificException(Ljava/lang/Exception;)Landroid/os/ServiceSpecificException;

    move-result-object p0

    throw p0

    :catch_79
    move-exception p0

    throw p0
.end method

.method public final getBeginParameters()Landroid/system/keystore2/KeyParameters;
    .registers 3

    iget-object p0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperation;->primitive:Lorg/matrix/TEESimulator/interception/keystore/shim/CryptoPrimitive;

    invoke-interface {p0}, Lorg/matrix/TEESimulator/interception/keystore/shim/CryptoPrimitive;->getBeginParameters()[Landroid/hardware/security/keymint/KeyParameter;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_a

    return-object v0

    :cond_a
    array-length v1, p0

    if-nez v1, :cond_e

    return-object v0

    :cond_e
    new-instance v0, Landroid/system/keystore2/KeyParameters;

    invoke-direct {v0}, Landroid/system/keystore2/KeyParameters;-><init>()V

    iput-object p0, v0, Landroid/system/keystore2/KeyParameters;->keyParameter:[Landroid/hardware/security/keymint/KeyParameter;

    return-object v0
.end method

.method public final getFinalized()Z
    .registers 1

    iget-boolean p0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperation;->finalized:Z

    return p0
.end method

.method public final getOnFinishCallback()Lh/a;
    .registers 1

    iget-object p0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperation;->onFinishCallback:Lh/a;

    return-object p0
.end method

.method public final setOnFinishCallback(Lh/a;)V
    .registers 2

    iput-object p1, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperation;->onFinishCallback:Lh/a;

    return-void
.end method

.method public final update([B)[B
    .registers 7

    sget-object v0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    iget-wide v0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperation;->txId:J

    if-eqz p1, :cond_8

    array-length v2, p1

    goto :goto_9

    :cond_8
    const/4 v2, 0x0

    :goto_9
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[SoftwareOp TX_ID: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "] update() inputSize="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lx4/b;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperation;->checkActive()V

    invoke-direct {p0, p1}, Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperation;->checkInputLength([B)V

    :try_start_28
    iget-object v0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperation;->primitive:Lorg/matrix/TEESimulator/interception/keystore/shim/CryptoPrimitive;

    invoke-interface {v0, p1}, Lorg/matrix/TEESimulator/interception/keystore/shim/CryptoPrimitive;->update([B)[B

    move-result-object p0
    :try_end_2e
    .catch Landroid/os/ServiceSpecificException; {:try_start_28 .. :try_end_2e} :catch_4d
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2e} :catch_2f

    return-object p0

    :catch_2f
    move-exception p1

    sget-object v0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    iget-wide v0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperation;->txId:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "] Failed to update operation."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lx4/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, p1}, Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperation;->mapToServiceSpecificException(Ljava/lang/Exception;)Landroid/os/ServiceSpecificException;

    move-result-object p0

    throw p0

    :catch_4d
    move-exception p0

    throw p0
.end method

.method public final updateAad([B)V
    .registers 11

    sget-object v0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    iget-wide v0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperation;->txId:J

    const/4 v2, 0x0

    if-eqz p1, :cond_9

    array-length v3, p1

    goto :goto_a

    :cond_9
    move v3, v2

    :goto_a
    iget-object v4, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperation;->primitive:Lorg/matrix/TEESimulator/interception/keystore/shim/CryptoPrimitive;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    sget-object v5, Lkotlin/jvm/internal/k;->a:Lkotlin/jvm/internal/l;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lkotlin/jvm/internal/e;

    invoke-direct {v5, v4}, Lkotlin/jvm/internal/e;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v4}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_24

    move-object v5, v6

    goto/16 :goto_bb

    :cond_24
    invoke-virtual {v4}, Ljava/lang/Class;->isLocalClass()Z

    move-result v5

    if-eqz v5, :cond_86

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v7

    const/16 v8, 0x24

    if-eqz v7, :cond_4f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4, v5}, Ll/q;->q1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_bb

    :cond_4f
    invoke-virtual {v4}, Ljava/lang/Class;->getEnclosingConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v4

    if-eqz v4, :cond_6d

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4, v5}, Ll/q;->q1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_bb

    :cond_6d
    const/4 v4, 0x6

    invoke-static {v5, v8, v4}, Ll/q;->i1(Ljava/lang/CharSequence;CI)I

    move-result v4

    const/4 v7, -0x1

    if-ne v4, v7, :cond_76

    goto :goto_bb

    :cond_76
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v4, "substring(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_bb

    :cond_86
    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_ad

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    const-string v7, "Array"

    if-eqz v5, :cond_a8

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/i;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a8

    invoke-virtual {v4, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    goto :goto_a9

    :cond_a8
    move-object v5, v6

    :goto_a9
    if-nez v5, :cond_bb

    move-object v5, v7

    goto :goto_bb

    :cond_ad
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/i;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_bb

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    :cond_bb
    :goto_bb
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "[SoftwareOp TX_ID: "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "] updateAad() ENTRY inputSize="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " primitive="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lx4/b;->c(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperation;->checkActive()V

    invoke-direct {p0, p1}, Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperation;->checkInputLength([B)V

    :try_start_e2
    iget-object v0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperation;->primitive:Lorg/matrix/TEESimulator/interception/keystore/shim/CryptoPrimitive;

    invoke-interface {v0, p1}, Lorg/matrix/TEESimulator/interception/keystore/shim/CryptoPrimitive;->updateAad([B)V

    iget-wide v0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperation;->txId:J

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "] updateAad() RETURNED_NORMALLY (unexpected for non-AEAD)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lx4/b;->c(Ljava/lang/String;)V
    :try_end_fd
    .catchall {:try_start_e2 .. :try_end_fd} :catchall_fe

    return-void

    :catchall_fe
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const-string v1, "getStackTrace(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    array-length v1, v0

    if-nez v1, :cond_10d

    move-object v0, v6

    goto :goto_10f

    :cond_10d
    aget-object v0, v0, v2

    :goto_10f
    if-eqz v0, :cond_117

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_119

    :cond_117
    const-string v0, "<no-frame>"

    :cond_119
    instance-of v1, p1, Landroid/os/ServiceSpecificException;

    if-eqz v1, :cond_121

    move-object v1, p1

    check-cast v1, Landroid/os/ServiceSpecificException;

    goto :goto_122

    :cond_121
    move-object v1, v6

    :goto_122
    if-eqz v1, :cond_12a

    iget v1, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :cond_12a
    sget-object v1, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    iget-wide v1, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperation;->txId:J

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "] updateAad() THREW class="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " code="

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " msg="

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " top="

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lx4/b;->c(Ljava/lang/String;)V

    throw p1
.end method
