.class public final Lmpl/SoterIdentity;
.super Ljava/lang/Object;
.source "SoterIdentity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmpl/SoterIdentity$Identity;
    }
.end annotation


# static fields
.field private static final ALG_ID_ECDSA_SHA256:[B

.field private static final ALG_ID_RSA_SHA256:[B

.field private static final ALG_RSA_SHA256:Ljava/lang/String; = "1.2.840.113549.1.1.11"

.field public static final ENV_DIR:Ljava/lang/String; = "MPL_SOTER_IDENTITY_DIR"

.field public static final ENV_SWITCH:Ljava/lang/String; = "MPL_SOTER_CERTS"

.field public static final FILES:[Ljava/lang/String;

.field public static final FILE_ASK_CRT:Ljava/lang/String; = "ask.crt"

.field public static final FILE_ASK_KEY:Ljava/lang/String; = "ask.key"

.field public static final FILE_AUTH_CRT:Ljava/lang/String; = "auth.crt"

.field public static final FILE_AUTH_KEY:Ljava/lang/String; = "auth.key"

.field public static final FILE_META:Ljava/lang/String; = "meta"

.field private static final KEYBOX_NAME:Ljava/lang/String; = "keybox.xml"

.field public static final OID_ATTESTATION:Ljava/lang/String; = "1.3.6.1.4.1.11129.2.1.17"

.field public static final PUSHED_DIR:Ljava/lang/String; = "/data/user/0/com.tencent.soter.soterserver/files/soter_identity"

.field private static final PUSHED_DIR_LEGACY:Ljava/lang/String; = "/data/data/com.tencent.soter.soterserver/files/soter_identity"

.field public static final PUSHED_SWITCH:Ljava/lang/String; = "/data/user/0/com.tencent.soter.soterserver/files/soter_certs"

.field public static final ROOT_DIR:Ljava/lang/String; = "/data/adb/tricky_store/soter_identity"

.field private static final SCANS:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final SWITCH_PATH:Ljava/lang/String; = "/data/adb/tricky_store/soter_certs"

.field private static final SWITCH_TTL_MS:J = 0x1f4L

.field private static final TAG:Ljava/lang/String; = "MPL-SOTER"

.field private static volatile askIdentity:Lmpl/SoterIdentity$Identity;

.field private static volatile askStamp:J

.field private static volatile authIdentity:Lmpl/SoterIdentity$Identity;

.field private static volatile authStamp:J

.field private static volatile lastNote:Ljava/lang/String;

.field private static volatile switchAt:J

.field private static volatile switchOn:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 119
    const-string v0, "auth.crt"

    const-string v1, "meta"

    const-string v2, "ask.key"

    const-string v3, "ask.crt"

    const-string v4, "auth.key"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmpl/SoterIdentity;->FILES:[Ljava/lang/String;

    const/16 v0, 0xf

    .line 127
    new-array v0, v0, [B

    fill-array-data v0, :array_30

    sput-object v0, Lmpl/SoterIdentity;->ALG_ID_RSA_SHA256:[B

    const/16 v0, 0xc

    .line 132
    new-array v0, v0, [B

    fill-array-data v0, :array_3c

    sput-object v0, Lmpl/SoterIdentity;->ALG_ID_ECDSA_SHA256:[B

    const-wide/high16 v0, -0x8000000000000000L

    .line 141
    sput-wide v0, Lmpl/SoterIdentity;->askStamp:J

    .line 142
    sput-wide v0, Lmpl/SoterIdentity;->authStamp:J

    .line 294
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lmpl/SoterIdentity;->SCANS:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void

    :array_30
    .array-data 1
        0x30t
        0xdt
        0x6t
        0x9t
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x1t
        0x1t
        0xbt
        0x5t
        0x0t
    .end array-data

    :array_3c
    .array-data 1
        0x30t
        0xat
        0x6t
        0x8t
        0x2at
        -0x7at
        0x48t
        -0x32t
        0x3dt
        0x4t
        0x3t
        0x2t
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static applicationId()[B
    .registers 4

    .line 1181
    const-string v0, "com.tencent.soter.soterserver"

    .line 1182
    invoke-static {v0}, Lmpl/SoterIdentity;->bytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lmpl/Der;->octetString([B)[B

    move-result-object v0

    const/16 v1, 0x20

    new-array v1, v1, [B

    .line 1183
    invoke-static {v1}, Lmpl/Der;->octetString([B)[B

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [[B

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    .line 1181
    invoke-static {v2}, Lmpl/Der;->sequence([[B)[B

    move-result-object v0

    return-object v0
.end method

.method private static attestationExtension([B)[B
    .registers 4

    .line 808
    const-string v0, "1.3.6.1.4.1.11129.2.1.17"

    .line 809
    invoke-static {v0}, Lmpl/Der;->oid(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    .line 810
    invoke-static {p0, v1}, Lmpl/SoterIdentity;->keyDescription([B[B)[B

    move-result-object p0

    invoke-static {p0}, Lmpl/Der;->octetString([B)[B

    move-result-object p0

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p0, v1, v0

    .line 808
    invoke-static {v1}, Lmpl/Der;->sequence([[B)[B

    move-result-object p0

    return-object p0
.end method

.method private static bytes(Ljava/lang/String;)[B
    .registers 2

    .line 1228
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_7

    return-object p0

    .line 1230
    :catchall_7
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method static certificate(Ljava/security/KeyPair;[B[BLjava/security/PrivateKey;[B)[B
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 693
    invoke-virtual {p0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object p0

    check-cast p0, Ljava/security/interfaces/RSAPublicKey;

    .line 694
    const-string v0, "1.2.840.113549.1.1.1"

    .line 695
    invoke-static {v0}, Lmpl/Der;->oid(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {}, Lmpl/Der;->nullValue()[B

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [[B

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-static {v3}, Lmpl/Der;->sequence([[B)[B

    move-result-object v1

    .line 697
    invoke-interface {p0}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    invoke-static {v3}, Lmpl/Der;->integerContent([B)[B

    move-result-object v3

    .line 698
    invoke-interface {p0}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lmpl/Der;->integerContent([B)[B

    move-result-object p0

    new-array v5, v2, [[B

    aput-object v3, v5, v4

    aput-object p0, v5, v0

    .line 696
    invoke-static {v5}, Lmpl/Der;->sequence([[B)[B

    move-result-object p0

    invoke-static {v4, p0}, Lmpl/Der;->bitString(I[B)[B

    move-result-object p0

    new-array v3, v2, [[B

    aput-object v1, v3, v4

    aput-object p0, v3, v0

    .line 694
    invoke-static {v3}, Lmpl/Der;->sequence([[B)[B

    move-result-object p0

    .line 699
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/32 v7, 0x5265c00

    sub-long v7, v5, v7

    .line 701
    invoke-static {v7, v8}, Lmpl/SoterIdentity;->utc(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmpl/Der;->utcTime(Ljava/lang/String;)[B

    move-result-object v1

    const-wide v7, 0x496cebb800L

    add-long/2addr v5, v7

    .line 702
    invoke-static {v5, v6}, Lmpl/SoterIdentity;->utc(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmpl/Der;->utcTime(Ljava/lang/String;)[B

    move-result-object v3

    new-array v5, v2, [[B

    aput-object v1, v5, v4

    aput-object v3, v5, v0

    .line 700
    invoke-static {v5}, Lmpl/Der;->sequence([[B)[B

    move-result-object v1

    .line 704
    invoke-static {p4}, Lmpl/SoterIdentity;->attestationExtension([B)[B

    move-result-object p4

    new-array v3, v4, [[B

    .line 705
    invoke-static {v3}, Lmpl/Der;->sequence([[B)[B

    move-result-object v3

    const-string v5, "2.5.29.19"

    invoke-static {v5, v0, v3}, Lmpl/SoterIdentity;->extension(Ljava/lang/String;Z[B)[B

    move-result-object v3

    new-array v5, v0, [B

    const/16 v6, -0x80

    aput-byte v6, v5, v4

    const/4 v6, 0x7

    .line 706
    invoke-static {v6, v5}, Lmpl/Der;->bitString(I[B)[B

    move-result-object v5

    const-string v7, "2.5.29.15"

    invoke-static {v7, v0, v5}, Lmpl/SoterIdentity;->extension(Ljava/lang/String;Z[B)[B

    move-result-object v5

    const/4 v7, 0x3

    new-array v8, v7, [[B

    aput-object p4, v8, v4

    aput-object v3, v8, v0

    aput-object v5, v8, v2

    .line 703
    invoke-static {v8}, Lmpl/Der;->sequence([[B)[B

    move-result-object p4

    invoke-static {v7, p4}, Lmpl/Der;->context(I[B)[B

    move-result-object p4

    .line 707
    invoke-static {p3}, Lmpl/SoterIdentity;->isRsa(Ljava/security/PrivateKey;)Z

    move-result v3

    if-eqz v3, :cond_b1

    .line 708
    sget-object v5, Lmpl/SoterIdentity;->ALG_ID_RSA_SHA256:[B

    goto :goto_b3

    :cond_b1
    sget-object v5, Lmpl/SoterIdentity;->ALG_ID_ECDSA_SHA256:[B

    :goto_b3
    const-wide/16 v8, 0x2

    .line 710
    invoke-static {v8, v9}, Lmpl/Der;->integer(J)[B

    move-result-object v8

    invoke-static {v4, v8}, Lmpl/Der;->context(I[B)[B

    move-result-object v8

    .line 711
    invoke-static {}, Lmpl/SoterIdentity;->serialLong()J

    move-result-wide v9

    invoke-static {v9, v10}, Lmpl/Der;->integer(J)[B

    move-result-object v9

    const/16 v10, 0x8

    new-array v10, v10, [[B

    aput-object v8, v10, v4

    aput-object v9, v10, v0

    aput-object v5, v10, v2

    aput-object p2, v10, v7

    const/4 p2, 0x4

    aput-object v1, v10, p2

    const/4 p2, 0x5

    aput-object p1, v10, p2

    const/4 p1, 0x6

    aput-object p0, v10, p1

    aput-object p4, v10, v6

    .line 709
    invoke-static {v10}, Lmpl/Der;->sequence([[B)[B

    move-result-object p0

    if-eqz v3, :cond_e5

    .line 718
    const-string p1, "SHA256withRSA"

    goto :goto_e7

    :cond_e5
    const-string p1, "SHA256withECDSA"

    :goto_e7
    invoke-static {p1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p1

    .line 719
    invoke-virtual {p1, p3}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 720
    invoke-virtual {p1, p0}, Ljava/security/Signature;->update([B)V

    .line 721
    invoke-virtual {p1}, Ljava/security/Signature;->sign()[B

    move-result-object p1

    invoke-static {p1}, Lmpl/Der;->bitString([B)[B

    move-result-object p1

    new-array p2, v7, [[B

    aput-object p0, p2, v4

    aput-object v5, p2, v0

    aput-object p1, p2, v2

    invoke-static {p2}, Lmpl/Der;->sequence([[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static certsEnabled()Z
    .registers 7

    .line 187
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 188
    sget-wide v2, Lmpl/SoterIdentity;->switchAt:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v6, v2, v4

    if-gez v6, :cond_11

    .line 189
    sget-boolean v0, Lmpl/SoterIdentity;->switchOn:Z

    return v0

    .line 191
    :cond_11
    invoke-static {}, Lmpl/SoterIdentity;->readAnySwitch()Z

    move-result v2

    .line 192
    sput-boolean v2, Lmpl/SoterIdentity;->switchOn:Z

    .line 193
    sput-wide v0, Lmpl/SoterIdentity;->switchAt:J

    return v2
.end method

.method public static challenge(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{\"cpu_id\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p0, :cond_b

    const-string p0, "0000000000000000"

    :cond_b
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\",\"uid\":0,\"counter\":1}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static concatCertificates(Ljava/util/List;)[B
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 1158
    :cond_4
    :try_start_4
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1159
    :goto_b
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_26

    .line 1160
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 1161
    instance-of v5, v4, Ljava/security/cert/Certificate;

    if-eqz v5, :cond_23

    .line 1162
    check-cast v4, Ljava/security/cert/Certificate;

    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v4

    .line 1163
    array-length v5, v4

    invoke-virtual {v1, v4, v2, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 1166
    :cond_26
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_2a
    .catchall {:try_start_4 .. :try_end_2a} :catchall_2b

    return-object p0

    :catchall_2b
    return-object v0
.end method

.method private static config(III[B[B[BLjava/lang/String;)Lorg/matrix/TEESimulator/pki/CertGenConfig;
    .registers 58

    .line 570
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    .line 571
    new-instance v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;

    const/4 v1, 0x2

    filled-new-array {v1}, [I

    move-result-object v7

    const/4 v1, 0x0

    filled-new-array {v1}, [I

    move-result-object v8

    .line 575
    invoke-static {}, Lmpl/SoterIdentity;->serial()[B

    move-result-object v9

    .line 576
    invoke-static/range {p6 .. p6}, Lmpl/SoterIdentity;->subject(Ljava/lang/String;)[B

    move-result-object v10

    const-wide/32 v2, 0x5265c00

    sub-long v11, v26, v2

    const-wide v2, 0x496cebb800L

    add-long v13, v26, v2

    .line 584
    invoke-static {}, Lmpl/SoterIdentity;->sdkInt()I

    move-result v20

    .line 585
    invoke-static {}, Lmpl/SoterIdentity;->patchLevel()I

    move-result v21

    .line 586
    invoke-static {}, Lmpl/SoterIdentity;->patchLevel()I

    move-result v22

    .line 587
    invoke-static {}, Lmpl/SoterIdentity;->patchLevel()I

    move-result v23

    const/16 v2, 0x20

    new-array v3, v2, [B

    new-array v4, v2, [B

    .line 591
    invoke-static {}, Lmpl/SoterIdentity;->applicationId()[B

    move-result-object v28

    new-array v2, v2, [B

    const-string v5, "mpl"

    .line 593
    invoke-static {v5}, Lmpl/SoterIdentity;->bytes(Ljava/lang/String;)[B

    move-result-object v30

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "soter-"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v15, p6

    invoke-virtual {v15, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lmpl/SoterIdentity;->bytes(Ljava/lang/String;)[B

    move-result-object v31

    const-string v5, "soter"

    .line 594
    invoke-static {v5}, Lmpl/SoterIdentity;->bytes(Ljava/lang/String;)[B

    move-result-object v32

    const-string v5, "0"

    invoke-static {v5}, Lmpl/SoterIdentity;->bytes(Ljava/lang/String;)[B

    move-result-object v33

    new-array v5, v1, [B

    new-array v6, v1, [B

    const-string v15, "MapleSU"

    .line 595
    invoke-static {v15}, Lmpl/SoterIdentity;->bytes(Ljava/lang/String;)[B

    move-result-object v36

    const-string v15, "Soter"

    invoke-static {v15}, Lmpl/SoterIdentity;->bytes(Ljava/lang/String;)[B

    move-result-object v37

    new-array v1, v1, [B

    const/16 v49, 0x0

    const/16 v50, 0x0

    move-object/from16 v25, v4

    move-object/from16 v34, v5

    const-wide/32 v4, 0x10001

    const/16 v17, 0x1

    const/16 v18, 0x12c

    const/16 v19, 0x4

    const-wide/16 v39, -0x1

    const-wide/16 v41, -0x1

    const-wide/16 v43, -0x1

    const/16 v45, -0x1

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x1

    move-object/from16 v15, p4

    move-object/from16 v16, p5

    move-object/from16 v38, v1

    move-object/from16 v29, v2

    move-object/from16 v24, v3

    move-object/from16 v35, v6

    move/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v50}, Lorg/matrix/TEESimulator/pki/CertGenConfig;-><init>(IIIJ[B[I[I[B[BJJ[B[BIIIIIII[B[BJ[B[B[B[B[B[B[B[B[B[B[BJJJIZZZIZ)V

    return-object v0
.end method

.method private static consistent(Ljava/security/KeyPair;)Z
    .registers 5

    .line 386
    const-string v0, "SHA256withRSA"

    const/16 v1, 0x20

    :try_start_4
    new-array v1, v1, [B

    .line 387
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 388
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v2

    .line 389
    invoke-virtual {p0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 390
    invoke-virtual {v2, v1}, Ljava/security/Signature;->update([B)V

    .line 391
    invoke-virtual {v2}, Ljava/security/Signature;->sign()[B

    move-result-object v2

    .line 392
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 393
    invoke-virtual {p0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 394
    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    .line 395
    invoke-virtual {v0, v2}, Ljava/security/Signature;->verify([B)Z

    move-result p0
    :try_end_32
    .catchall {:try_start_4 .. :try_end_32} :catchall_33

    return p0

    :catchall_33
    const/4 p0, 0x0

    return p0
.end method

.method private static containsJson([B[B)Z
    .registers 9

    const/4 v0, 0x0

    if-eqz p0, :cond_3c

    if-eqz p1, :cond_3c

    .line 930
    array-length v1, p1

    if-nez v1, :cond_9

    goto :goto_3c

    :cond_9
    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 937
    :goto_c
    array-length v4, p0

    if-ge v3, v4, :cond_20

    .line 938
    aget-byte v4, p0, v3

    const/16 v5, 0x7b

    if-ne v4, v5, :cond_18

    if-gez v1, :cond_18

    move v1, v3

    :cond_18
    const/16 v5, 0x7d

    if-ne v4, v5, :cond_1d

    move v2, v3

    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_20
    if-ltz v1, :cond_3c

    if-gt v2, v1, :cond_25

    goto :goto_3c

    :cond_25
    sub-int/2addr v2, v1

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 949
    array-length v4, p1

    if-eq v2, v4, :cond_2c

    return v0

    :cond_2c
    const/4 v4, 0x0

    :goto_2d
    if-ge v4, v2, :cond_3b

    add-int v5, v1, v4

    .line 953
    aget-byte v5, p0, v5

    aget-byte v6, p1, v4

    if-eq v5, v6, :cond_38

    return v0

    :cond_38
    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    :cond_3b
    return v3

    :cond_3c
    :goto_3c
    return v0
.end method

.method private static countPem(Ljava/io/File;)I
    .registers 4

    .line 1075
    invoke-static {p0}, Lmpl/SoterIdentity;->readText(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return v0

    :cond_8
    const/4 v1, 0x0

    .line 1081
    :goto_9
    const-string v2, "-----BEGIN CERTIFICATE-----"

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_16

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1b

    goto :goto_9

    :cond_16
    return v1
.end method

.method private static decodeNative([B)[Ljava/lang/Object;
    .registers 9

    const/4 v0, 0x0

    .line 602
    :try_start_1
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 603
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result p0

    if-ltz p0, :cond_53

    .line 604
    invoke-virtual {v1}, Ljava/io/DataInputStream;->available()I

    move-result v2

    if-le p0, v2, :cond_18

    goto :goto_53

    .line 607
    :cond_18
    new-array p0, p0, [B

    .line 608
    invoke-virtual {v1, p0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 609
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    if-ltz v2, :cond_53

    const/16 v3, 0x40

    if-le v2, v3, :cond_28

    goto :goto_53

    .line 613
    :cond_28
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_2f
    if-ge v5, v2, :cond_4a

    .line 615
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    if-ltz v6, :cond_49

    .line 616
    invoke-virtual {v1}, Ljava/io/DataInputStream;->available()I

    move-result v7

    if-le v6, v7, :cond_3e

    goto :goto_49

    .line 619
    :cond_3e
    new-array v6, v6, [B

    .line 620
    invoke-virtual {v1, v6}, Ljava/io/DataInputStream;->readFully([B)V

    .line 621
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2f

    :cond_49
    :goto_49
    return-object v0

    :cond_4a
    const/4 v1, 0x2

    .line 623
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    const/4 p0, 0x1

    aput-object v3, v1, p0
    :try_end_52
    .catchall {:try_start_1 .. :try_end_52} :catchall_53

    return-object v1

    :catchall_53
    :cond_53
    :goto_53
    return-object v0
.end method

.method static ensureAttestation([B[B[B)[B
    .registers 20

    move-object/from16 v0, p0

    if-eqz v0, :cond_1e8

    .line 821
    :try_start_4
    array-length v2, v0

    if-eqz v2, :cond_1e8

    if-nez p2, :cond_b

    goto/16 :goto_1e8

    .line 825
    :cond_b
    invoke-static {v0}, Lmpl/Der;->parse([B)Lmpl/Der$Node;

    move-result-object v2

    .line 826
    invoke-virtual {v2}, Lmpl/Der$Node;->tag()I

    move-result v3

    const/16 v4, 0x30

    if-ne v3, v4, :cond_1d0

    invoke-virtual {v2}, Lmpl/Der$Node;->childCount()I

    move-result v3

    const/4 v5, 0x3

    if-eq v3, v5, :cond_20

    goto/16 :goto_1d0

    :cond_20
    const/4 v3, 0x0

    .line 829
    invoke-virtual {v2, v3}, Lmpl/Der$Node;->child(I)Lmpl/Der$Node;

    move-result-object v6

    const/4 v7, 0x1

    .line 830
    invoke-virtual {v2, v7}, Lmpl/Der$Node;->child(I)Lmpl/Der$Node;

    .line 831
    invoke-virtual {v6}, Lmpl/Der$Node;->childCount()I

    move-result v2

    if-lez v2, :cond_3f

    invoke-virtual {v6, v3}, Lmpl/Der$Node;->child(I)Lmpl/Der$Node;

    move-result-object v2

    invoke-virtual {v2}, Lmpl/Der$Node;->tag()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    const/16 v8, 0xa0

    if-ne v2, v8, :cond_3f

    const/4 v2, 0x1

    goto :goto_40

    :cond_3f
    const/4 v2, 0x0

    :goto_40
    add-int/lit8 v8, v2, 0x1

    move v9, v2

    .line 834
    :goto_43
    invoke-virtual {v6}, Lmpl/Der$Node;->childCount()I

    move-result v10

    const/16 v11, 0xa3

    if-ge v9, v10, :cond_5f

    .line 835
    invoke-virtual {v6, v9}, Lmpl/Der$Node;->child(I)Lmpl/Der$Node;

    move-result-object v10

    invoke-virtual {v10}, Lmpl/Der$Node;->tag()I

    move-result v10

    and-int/lit16 v10, v10, 0xff

    if-ne v10, v11, :cond_5c

    .line 836
    invoke-virtual {v6, v9}, Lmpl/Der$Node;->child(I)Lmpl/Der$Node;

    move-result-object v9
    :try_end_5b
    .catchall {:try_start_4 .. :try_end_5b} :catchall_1d3

    goto :goto_60

    :cond_5c
    add-int/lit8 v9, v9, 0x1

    goto :goto_43

    :cond_5f
    const/4 v9, 0x0

    .line 842
    :goto_60
    const-string v10, "1.3.6.1.4.1.11129.2.1.17"

    const/4 v12, 0x2

    if-eqz v9, :cond_b9

    :try_start_65
    invoke-virtual {v9}, Lmpl/Der$Node;->childCount()I

    move-result v13

    if-ne v13, v7, :cond_b9

    .line 843
    invoke-virtual {v9, v3}, Lmpl/Der$Node;->child(I)Lmpl/Der$Node;

    move-result-object v13

    .line 844
    invoke-virtual {v13}, Lmpl/Der$Node;->tag()I

    move-result v14

    if-ne v14, v4, :cond_b9

    const/4 v14, 0x0

    .line 845
    :goto_76
    invoke-virtual {v13}, Lmpl/Der$Node;->childCount()I

    move-result v15

    if-ge v14, v15, :cond_b9

    .line 846
    invoke-virtual {v13, v14}, Lmpl/Der$Node;->child(I)Lmpl/Der$Node;

    move-result-object v15
    :try_end_80
    .catchall {:try_start_65 .. :try_end_80} :catchall_1d3

    const/16 v16, 0x0

    .line 847
    :try_start_82
    invoke-virtual {v15}, Lmpl/Der$Node;->tag()I

    move-result v1

    if-ne v1, v4, :cond_b4

    invoke-virtual {v15}, Lmpl/Der$Node;->childCount()I

    move-result v1

    if-ge v1, v12, :cond_8f

    goto :goto_b4

    .line 850
    :cond_8f
    invoke-virtual {v15, v3}, Lmpl/Der$Node;->child(I)Lmpl/Der$Node;

    move-result-object v1

    invoke-virtual {v1}, Lmpl/Der$Node;->oid()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b4

    .line 851
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b4

    .line 853
    invoke-virtual {v15}, Lmpl/Der$Node;->childCount()I

    move-result v1

    sub-int/2addr v1, v7

    invoke-virtual {v15, v1}, Lmpl/Der$Node;->child(I)Lmpl/Der$Node;

    move-result-object v1

    invoke-virtual {v1}, Lmpl/Der$Node;->value()[B

    move-result-object v1

    move-object/from16 v15, p1

    .line 854
    invoke-static {v1, v15}, Lmpl/SoterIdentity;->containsJson([B[B)Z

    move-result v1

    const/4 v13, 0x1

    goto :goto_bf

    :cond_b4
    :goto_b4
    move-object/from16 v15, p1

    add-int/lit8 v14, v14, 0x1

    goto :goto_76

    :cond_b9
    move-object/from16 v15, p1

    const/16 v16, 0x0

    const/4 v1, 0x0

    const/4 v13, 0x0

    :goto_bf
    if-eqz v13, :cond_c4

    if-eqz v1, :cond_c4

    return-object v0

    .line 863
    :cond_c4
    invoke-static {v15}, Lmpl/SoterIdentity;->attestationExtension([B)[B

    move-result-object v0

    .line 864
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v9, :cond_10d

    .line 865
    invoke-virtual {v9}, Lmpl/Der$Node;->childCount()I

    move-result v13

    if-ne v13, v7, :cond_10d

    .line 866
    invoke-virtual {v9, v3}, Lmpl/Der$Node;->child(I)Lmpl/Der$Node;

    move-result-object v13

    const/4 v14, 0x0

    .line 867
    :goto_da
    invoke-virtual {v13}, Lmpl/Der$Node;->childCount()I

    move-result v15

    if-ge v14, v15, :cond_10d

    .line 868
    invoke-virtual {v13, v14}, Lmpl/Der$Node;->child(I)Lmpl/Der$Node;

    move-result-object v15

    .line 869
    invoke-virtual {v15}, Lmpl/Der$Node;->tag()I

    move-result v11

    if-ne v11, v4, :cond_101

    invoke-virtual {v15}, Lmpl/Der$Node;->childCount()I

    move-result v11

    if-lt v11, v12, :cond_101

    .line 870
    invoke-virtual {v15, v3}, Lmpl/Der$Node;->child(I)Lmpl/Der$Node;

    move-result-object v11

    invoke-virtual {v11}, Lmpl/Der$Node;->oid()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_101

    .line 871
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_101

    goto :goto_108

    .line 875
    :cond_101
    invoke-virtual {v15}, Lmpl/Der$Node;->serialize()[B

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_108
    add-int/lit8 v14, v14, 0x1

    const/16 v11, 0xa3

    goto :goto_da

    .line 878
    :cond_10d
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 880
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    .line 881
    :goto_11a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v4, v10, :cond_12c

    .line 882
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_11a

    .line 884
    :cond_12c
    invoke-static {v0}, Lmpl/SoterIdentity;->toArray(Ljava/util/ArrayList;)[B

    move-result-object v0

    new-array v1, v7, [[B

    aput-object v0, v1, v3

    invoke-static {v1}, Lmpl/Der;->sequence([[B)[B

    move-result-object v0

    .line 885
    invoke-static {v5, v0}, Lmpl/Der;->context(I[B)[B

    move-result-object v0

    .line 886
    invoke-static {v0}, Lmpl/Der;->parse([B)Lmpl/Der$Node;

    move-result-object v1

    if-eqz v9, :cond_160

    move v0, v2

    .line 890
    :goto_143
    invoke-virtual {v6}, Lmpl/Der$Node;->childCount()I

    move-result v4

    if-ge v0, v4, :cond_15c

    .line 891
    invoke-virtual {v6, v0}, Lmpl/Der$Node;->child(I)Lmpl/Der$Node;

    move-result-object v4

    invoke-virtual {v4}, Lmpl/Der$Node;->tag()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    const/16 v9, 0xa3

    if-ne v4, v9, :cond_159

    move v2, v0

    goto :goto_15c

    :cond_159
    add-int/lit8 v0, v0, 0x1

    goto :goto_143

    .line 896
    :cond_15c
    :goto_15c
    invoke-virtual {v6, v2, v1}, Lmpl/Der$Node;->replaceChild(ILmpl/Der$Node;)V

    goto :goto_192

    .line 899
    :cond_160
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v6}, Lmpl/Der$Node;->childCount()I

    move-result v2

    add-int/2addr v2, v7

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    .line 900
    :goto_16b
    invoke-virtual {v6}, Lmpl/Der$Node;->childCount()I

    move-result v4

    if-ge v2, v4, :cond_17f

    .line 901
    invoke-virtual {v6, v2}, Lmpl/Der$Node;->child(I)Lmpl/Der$Node;

    move-result-object v4

    invoke-virtual {v4}, Lmpl/Der$Node;->serialize()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_16b

    .line 903
    :cond_17f
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 904
    invoke-static {v1}, Lmpl/SoterIdentity;->toArray(Ljava/util/ArrayList;)[B

    move-result-object v0

    new-array v1, v7, [[B

    aput-object v0, v1, v3

    invoke-static {v1}, Lmpl/Der;->sequence([[B)[B

    move-result-object v0

    invoke-static {v0}, Lmpl/Der;->parse([B)Lmpl/Der$Node;

    move-result-object v6

    .line 907
    :goto_192
    invoke-static/range {p2 .. p2}, Lmpl/SoterIdentity;->signingAlgorithm([B)[B

    move-result-object v0

    if-nez v0, :cond_199

    return-object v16

    .line 911
    :cond_199
    invoke-static/range {p2 .. p2}, Lmpl/SoterIdentity;->signingJca([B)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1a0

    return-object v16

    .line 916
    :cond_1a0
    invoke-static {v0}, Lmpl/Der;->parse([B)Lmpl/Der$Node;

    move-result-object v2

    .line 915
    invoke-virtual {v6, v8, v2}, Lmpl/Der$Node;->replaceChild(ILmpl/Der$Node;)V

    .line 917
    invoke-virtual {v6}, Lmpl/Der$Node;->serialize()[B

    move-result-object v2

    .line 918
    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 919
    invoke-static/range {p2 .. p2}, Lmpl/SoterIdentity;->privateKey([B)Ljava/security/PrivateKey;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 920
    invoke-virtual {v1, v2}, Ljava/security/Signature;->update([B)V

    .line 921
    invoke-virtual {v1}, Ljava/security/Signature;->sign()[B

    move-result-object v1

    .line 922
    invoke-static {v1}, Lmpl/Der;->bitString([B)[B

    move-result-object v1

    new-array v4, v5, [[B

    aput-object v2, v4, v3

    aput-object v0, v4, v7

    aput-object v1, v4, v12

    invoke-static {v4}, Lmpl/Der;->sequence([[B)[B

    move-result-object v0
    :try_end_1cd
    .catchall {:try_start_82 .. :try_end_1cd} :catchall_1ce

    return-object v0

    :catchall_1ce
    move-exception v0

    goto :goto_1d6

    :cond_1d0
    :goto_1d0
    const/16 v16, 0x0

    return-object v16

    :catchall_1d3
    move-exception v0

    const/16 v16, 0x0

    .line 924
    :goto_1d6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "identity: attestation splice failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmpl/SoterIdentity;->note(Ljava/lang/String;)V

    return-object v16

    :cond_1e8
    :goto_1e8
    const/16 v16, 0x0

    return-object v16
.end method

.method public static declared-synchronized ensureRootIdentities(Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    const-string v0, "identity: cannot create "

    const-class v1, Lmpl/SoterIdentity;

    monitor-enter v1

    .line 428
    :try_start_5
    invoke-static {}, Lmpl/SoterIdentity;->rootDir()Ljava/io/File;

    move-result-object v2

    .line 429
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_23

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_23

    .line 430
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_bc

    monitor-exit v1

    return-object p0

    .line 432
    :cond_23
    :try_start_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 433
    const-string v3, "ASK"

    const-string v4, "AUTH"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    :goto_31
    const/4 v5, 0x2

    if-ge v4, v5, :cond_a1

    .line 435
    aget-object v5, v3, v4

    .line 436
    const-string v6, "ASK"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_41

    const-string v6, "ask"

    goto :goto_43

    :cond_41
    const-string v6, "auth"

    .line 437
    :goto_43
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ".key"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v2, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 438
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ".crt"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v2, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 439
    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_8a

    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_8a

    .line 440
    invoke-static {v2, v6, v7, v8, v5}, Lmpl/SoterIdentity;->read(Ljava/io/File;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Lmpl/SoterIdentity$Identity;

    move-result-object v7

    if-eqz v7, :cond_8a

    .line 441
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "=kept "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9e

    .line 444
    :cond_8a
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x3d

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v2, v6, v5, p0}, Lmpl/SoterIdentity;->generate(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_9e
    add-int/lit8 v4, v4, 0x1

    goto :goto_31

    .line 446
    :cond_a1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "identity: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_ba
    .catchall {:try_start_23 .. :try_end_ba} :catchall_bc

    monitor-exit v1

    return-object p0

    :catchall_bc
    move-exception p0

    :try_start_bd
    monitor-exit v1
    :try_end_be
    .catchall {:try_start_bd .. :try_end_be} :catchall_bc

    throw p0
.end method

.method private static env(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 1236
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return-object p0

    :catchall_5
    const/4 p0, 0x0

    return-object p0
.end method

.method private static extension(Ljava/lang/String;Z[B)[B
    .registers 7

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_24

    .line 727
    invoke-static {p0}, Lmpl/Der;->oid(Ljava/lang/String;)[B

    move-result-object p0

    new-array p1, v2, [B

    const/4 v3, -0x1

    aput-byte v3, p1, v1

    .line 728
    invoke-static {v2, p1}, Lmpl/Der;->tlv(I[B)[B

    move-result-object p1

    .line 729
    invoke-static {p2}, Lmpl/Der;->octetString([B)[B

    move-result-object p2

    const/4 v3, 0x3

    new-array v3, v3, [[B

    aput-object p0, v3, v1

    aput-object p1, v3, v2

    aput-object p2, v3, v0

    .line 727
    invoke-static {v3}, Lmpl/Der;->sequence([[B)[B

    move-result-object p0

    return-object p0

    .line 731
    :cond_24
    invoke-static {p0}, Lmpl/Der;->oid(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p2}, Lmpl/Der;->octetString([B)[B

    move-result-object p1

    new-array p2, v0, [[B

    aput-object p0, p2, v1

    aput-object p1, p2, v2

    invoke-static {p2}, Lmpl/Der;->sequence([[B)[B

    move-result-object p0

    return-object p0
.end method

.method private static generate(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .line 463
    invoke-static {p3}, Lmpl/SoterIdentity;->challenge(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lmpl/SoterIdentity;->bytes(Ljava/lang/String;)[B

    move-result-object p3

    .line 464
    const-string v0, "MPL_SOTER_IDENTITY_MODE"

    invoke-static {v0}, Lmpl/SoterIdentity;->env(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 465
    const-string v1, "selfsigned"

    const-string v2, "keybox"

    const-string v3, "native"

    const-string v4, "identity "

    if-eqz v0, :cond_82

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_82

    .line 468
    :try_start_1e
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 469
    invoke-static {p0, p1, p2, p3}, Lmpl/SoterIdentity;->generateNative(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;[B)Z

    move-result p0

    if-eqz p0, :cond_2b

    return-object v3

    .line 470
    :cond_2b
    const-string p0, "failed(native)"

    return-object p0

    .line 472
    :cond_2e
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 473
    invoke-static {p0, p1, p2, p3}, Lmpl/SoterIdentity;->generateKeyboxSigned(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;[B)Z

    move-result p0

    if-eqz p0, :cond_3b

    return-object v2

    .line 474
    :cond_3b
    const-string p0, "failed(keybox)"

    return-object p0

    .line 476
    :cond_3e
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_82

    .line 477
    invoke-static {p0, p1, p2, p3}, Lmpl/SoterIdentity;->generateSelfSigned(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;[B)Z

    move-result p0

    if-eqz p0, :cond_4b

    return-object v1

    .line 478
    :cond_4b
    const-string p0, "failed(selfsigned)"
    :try_end_4d
    .catchall {:try_start_1e .. :try_end_4d} :catchall_4e

    return-object p0

    :catchall_4e
    move-exception p0

    .line 481
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " forced "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " failed: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmpl/SoterIdentity;->note(Ljava/lang/String;)V

    .line 482
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "failed("

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 486
    :cond_82
    :try_start_82
    invoke-static {p0, p1, p2, p3}, Lmpl/SoterIdentity;->generateNative(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;[B)Z

    move-result v0
    :try_end_86
    .catchall {:try_start_82 .. :try_end_86} :catchall_89

    if-eqz v0, :cond_a1

    return-object v3

    :catchall_89
    move-exception v0

    .line 490
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " native generation failed: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmpl/SoterIdentity;->note(Ljava/lang/String;)V

    .line 493
    :cond_a1
    :try_start_a1
    invoke-static {p0, p1, p2, p3}, Lmpl/SoterIdentity;->generateKeyboxSigned(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;[B)Z

    move-result v0
    :try_end_a5
    .catchall {:try_start_a1 .. :try_end_a5} :catchall_a8

    if-eqz v0, :cond_c0

    return-object v2

    :catchall_a8
    move-exception v0

    .line 497
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " keybox generation failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmpl/SoterIdentity;->note(Ljava/lang/String;)V

    .line 500
    :cond_c0
    :try_start_c0
    invoke-static {p0, p1, p2, p3}, Lmpl/SoterIdentity;->generateSelfSigned(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;[B)Z

    move-result p0
    :try_end_c4
    .catchall {:try_start_c0 .. :try_end_c4} :catchall_c7

    if-eqz p0, :cond_df

    return-object v1

    :catchall_c7
    move-exception p0

    .line 504
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " self-signed generation failed: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmpl/SoterIdentity;->note(Ljava/lang/String;)V

    .line 506
    :cond_df
    const-string p0, "failed"

    return-object p0
.end method

.method private static generateKeyboxSigned(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;[B)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 633
    const-string v0, "keybox.xml"

    invoke-static {v0}, Ly4/e;->a(Ljava/lang/String;)Ly4/d;

    move-result-object v0

    const/4 v1, 0x0

    .line 634
    const-string v2, "identity "

    if-eqz v0, :cond_122

    iget-object v3, v0, Ly4/d;->a:Ljava/security/KeyPair;

    if-eqz v3, :cond_122

    iget-object v3, v0, Ly4/d;->a:Ljava/security/KeyPair;

    invoke-virtual {v3}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v3

    if-eqz v3, :cond_122

    iget-object v3, v0, Ly4/d;->b:Ljava/util/ArrayList;

    if-eqz v3, :cond_122

    iget-object v3, v0, Ly4/d;->b:Ljava/util/ArrayList;

    .line 635
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_25

    goto/16 :goto_122

    .line 639
    :cond_25
    iget-object v3, v0, Ly4/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 640
    instance-of v4, v3, Ljava/security/cert/X509Certificate;

    if-nez v4, :cond_44

    .line 641
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": keybox chain leaf is not an X509Certificate"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmpl/SoterIdentity;->note(Ljava/lang/String;)V

    return v1

    .line 644
    :cond_44
    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 645
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": keybox rung issuerAlg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Ly4/d;->a:Ljava/security/KeyPair;

    .line 646
    invoke-virtual {v5}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v5

    invoke-interface {v5}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " chain="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Ly4/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 645
    invoke-static {v4}, Lmpl/SoterIdentity;->note(Ljava/lang/String;)V

    .line 649
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v3

    .line 650
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": keybox rung issuerName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "B"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmpl/SoterIdentity;->note(Ljava/lang/String;)V

    .line 651
    const-string v4, "RSA"

    invoke-static {v4}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v4

    const/16 v6, 0x800

    .line 652
    invoke-virtual {v4, v6}, Ljava/security/KeyPairGenerator;->initialize(I)V

    .line 653
    invoke-virtual {v4}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v4

    .line 654
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": keybox rung subject keypair generated"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lmpl/SoterIdentity;->note(Ljava/lang/String;)V

    .line 655
    invoke-static {p2}, Lmpl/SoterIdentity;->subject(Ljava/lang/String;)[B

    move-result-object v6

    iget-object v7, v0, Ly4/d;->a:Ljava/security/KeyPair;

    .line 656
    invoke-virtual {v7}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v7

    .line 655
    invoke-static {v4, v6, v3, v7, p3}, Lmpl/SoterIdentity;->certificate(Ljava/security/KeyPair;[B[BLjava/security/PrivateKey;[B)[B

    move-result-object p3

    .line 657
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": keybox rung leaf="

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lmpl/SoterIdentity;->note(Ljava/lang/String;)V

    .line 658
    new-instance p2, Ljava/util/ArrayList;

    iget-object v2, v0, Ly4/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-direct {p2, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 659
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 660
    :goto_f6
    iget-object p3, v0, Ly4/d;->b:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge v1, p3, :cond_114

    .line 661
    iget-object p3, v0, Ly4/d;->b:Ljava/util/ArrayList;

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    .line 662
    instance-of v2, p3, Ljava/security/cert/Certificate;

    if-eqz v2, :cond_111

    .line 663
    check-cast p3, Ljava/security/cert/Certificate;

    invoke-virtual {p3}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_111
    add-int/lit8 v1, v1, 0x1

    goto :goto_f6

    .line 666
    :cond_114
    invoke-virtual {v4}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object p3

    invoke-interface {p3}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object p3

    const-string v0, "keybox"

    invoke-static {p0, p1, p3, p2, v0}, Lmpl/SoterIdentity;->writeIdentity(Ljava/io/File;Ljava/lang/String;[BLjava/util/ArrayList;Ljava/lang/String;)V

    return v3

    .line 636
    :cond_122
    :goto_122
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": no keybox to sign with, skipping keybox rung"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmpl/SoterIdentity;->note(Ljava/lang/String;)V

    return v1
.end method

.method private static generateNative(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;[B)Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 523
    sget-object v0, Lorg/matrix/TEESimulator/pki/NativeCertGen;->INSTANCE:Lorg/matrix/TEESimulator/pki/NativeCertGen;

    invoke-virtual {v0}, Lorg/matrix/TEESimulator/pki/NativeCertGen;->isAvailable()Z

    move-result v0

    const-string v1, "identity "

    const/4 v2, 0x0

    if-nez v0, :cond_20

    .line 524
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": libcertgen not initialized, skipping native rung"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmpl/SoterIdentity;->note(Ljava/lang/String;)V

    return v2

    .line 527
    :cond_20
    const-string v0, "keybox.xml"

    invoke-static {v0}, Ly4/e;->a(Ljava/lang/String;)Ly4/d;

    move-result-object v0

    if-eqz v0, :cond_e9

    .line 528
    iget-object v3, v0, Ly4/d;->a:Ljava/security/KeyPair;

    if-eqz v3, :cond_e9

    iget-object v3, v0, Ly4/d;->a:Ljava/security/KeyPair;

    invoke-virtual {v3}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v3

    if-nez v3, :cond_36

    goto/16 :goto_e9

    .line 532
    :cond_36
    iget-object v3, v0, Ly4/d;->a:Ljava/security/KeyPair;

    invoke-virtual {v3}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v3

    invoke-interface {v3}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v8

    .line 533
    iget-object v0, v0, Ly4/d;->b:Ljava/util/ArrayList;

    invoke-static {v0}, Lmpl/SoterIdentity;->concatCertificates(Ljava/util/List;)[B

    move-result-object v9

    if-eqz v8, :cond_d3

    if-nez v9, :cond_4c

    goto/16 :goto_d3

    .line 538
    :cond_4c
    sget-object v0, Lorg/matrix/TEESimulator/pki/NativeCertGen;->INSTANCE:Lorg/matrix/TEESimulator/pki/NativeCertGen;

    const/16 v5, 0x800

    const/4 v6, -0x1

    const/4 v4, 0x1

    move-object v10, p2

    move-object v7, p3

    .line 539
    invoke-static/range {v4 .. v10}, Lmpl/SoterIdentity;->config(III[B[B[BLjava/lang/String;)Lorg/matrix/TEESimulator/pki/CertGenConfig;

    move-result-object p2

    .line 538
    invoke-virtual {v0, p2}, Lorg/matrix/TEESimulator/pki/NativeCertGen;->generateAttestedKeyPair(Lorg/matrix/TEESimulator/pki/CertGenConfig;)[B

    move-result-object p2

    if-eqz p2, :cond_be

    .line 540
    array-length p3, p2

    if-nez p3, :cond_62

    goto :goto_be

    .line 544
    :cond_62
    invoke-static {p2}, Lmpl/SoterIdentity;->decodeNative([B)[Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_7d

    .line 546
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": libcertgen result undecodable"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmpl/SoterIdentity;->note(Ljava/lang/String;)V

    return v2

    .line 549
    :cond_7d
    aget-object p3, p2, v2

    check-cast p3, [B

    const/4 v0, 0x1

    .line 550
    aget-object p2, p2, v0

    check-cast p2, Ljava/util/ArrayList;

    if-eqz p3, :cond_a9

    .line 551
    array-length v3, p3

    if-eqz v3, :cond_a9

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_92

    goto :goto_a9

    .line 558
    :cond_92
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 559
    invoke-static {v1, v7, v8}, Lmpl/SoterIdentity;->ensureAttestation([B[B[B)[B

    move-result-object v3

    if-eqz v3, :cond_a3

    if-eq v3, v1, :cond_a3

    .line 561
    invoke-virtual {p2, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 563
    :cond_a3
    const-string v1, "native"

    invoke-static {p0, p1, p3, p2, v1}, Lmpl/SoterIdentity;->writeIdentity(Ljava/io/File;Ljava/lang/String;[BLjava/util/ArrayList;Ljava/lang/String;)V

    return v0

    .line 552
    :cond_a9
    :goto_a9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": libcertgen result empty"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmpl/SoterIdentity;->note(Ljava/lang/String;)V

    return v2

    .line 541
    :cond_be
    :goto_be
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": libcertgen returned null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmpl/SoterIdentity;->note(Ljava/lang/String;)V

    return v2

    :cond_d3
    :goto_d3
    move-object v10, p2

    .line 535
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": keybox incomplete, skipping native rung"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmpl/SoterIdentity;->note(Ljava/lang/String;)V

    return v2

    :cond_e9
    :goto_e9
    move-object v10, p2

    .line 529
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": no keybox (keybox.xml), skipping native rung"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmpl/SoterIdentity;->note(Ljava/lang/String;)V

    return v2
.end method

.method private static generateSelfSigned(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;[B)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 674
    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    const/16 v1, 0x800

    .line 675
    invoke-virtual {v0, v1}, Ljava/security/KeyPairGenerator;->initialize(I)V

    .line 676
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    .line 677
    invoke-static {p2}, Lmpl/SoterIdentity;->subject(Ljava/lang/String;)[B

    move-result-object p2

    .line 678
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    invoke-static {v0, p2, p2, v1, p3}, Lmpl/SoterIdentity;->certificate(Ljava/security/KeyPair;[B[BLjava/security/PrivateKey;[B)[B

    move-result-object p2

    .line 679
    new-instance p3, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {p3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 680
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 681
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object p2

    invoke-interface {p2}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object p2

    const-string v0, "selfsigned"

    invoke-static {p0, p1, p2, p3, v0}, Lmpl/SoterIdentity;->writeIdentity(Ljava/io/File;Ljava/lang/String;[BLjava/util/ArrayList;Ljava/lang/String;)V

    return v1
.end method

.method public static get(Ljava/lang/String;)Lmpl/SoterIdentity$Identity;
    .registers 13

    .line 248
    invoke-static {}, Lmpl/SoterIdentity;->certsEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 251
    :cond_8
    const-string v0, "AUTH"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 252
    const-string v2, "auth"

    goto :goto_15

    :cond_13
    const-string v2, "ask"

    .line 253
    :goto_15
    invoke-static {v2}, Lmpl/SoterIdentity;->locate(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_32

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "identity "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " absent (certs skipped)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmpl/SoterIdentity;->note(Ljava/lang/String;)V

    return-object v1

    .line 258
    :cond_32
    new-instance v4, Ljava/io/File;

    const-string v5, ".key"

    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 259
    new-instance v5, Ljava/io/File;

    const-string v6, ".crt"

    invoke-virtual {v2, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 260
    invoke-static {v4, v5}, Lmpl/SoterIdentity;->stampOf(Ljava/io/File;Ljava/io/File;)J

    move-result-wide v6

    if-eqz v0, :cond_51

    .line 261
    sget-object v8, Lmpl/SoterIdentity;->authIdentity:Lmpl/SoterIdentity$Identity;

    goto :goto_53

    :cond_51
    sget-object v8, Lmpl/SoterIdentity;->askIdentity:Lmpl/SoterIdentity$Identity;

    :goto_53
    if-eqz v0, :cond_58

    .line 262
    sget-wide v9, Lmpl/SoterIdentity;->authStamp:J

    goto :goto_5a

    :cond_58
    sget-wide v9, Lmpl/SoterIdentity;->askStamp:J

    :goto_5a
    if-eqz v8, :cond_61

    cmp-long v11, v6, v9

    if-nez v11, :cond_61

    return-object v8

    .line 266
    :cond_61
    invoke-static {v3, v2, v4, v5, p0}, Lmpl/SoterIdentity;->read(Ljava/io/File;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Lmpl/SoterIdentity$Identity;

    move-result-object p0

    if-nez p0, :cond_75

    const-wide/high16 v2, -0x8000000000000000L

    if-eqz v0, :cond_70

    .line 269
    sput-object v1, Lmpl/SoterIdentity;->authIdentity:Lmpl/SoterIdentity$Identity;

    .line 270
    sput-wide v2, Lmpl/SoterIdentity;->authStamp:J

    goto :goto_74

    .line 272
    :cond_70
    sput-object v1, Lmpl/SoterIdentity;->askIdentity:Lmpl/SoterIdentity$Identity;

    .line 273
    sput-wide v2, Lmpl/SoterIdentity;->askStamp:J

    :goto_74
    return-object v1

    :cond_75
    if-eqz v0, :cond_7c

    .line 278
    sput-object p0, Lmpl/SoterIdentity;->authIdentity:Lmpl/SoterIdentity$Identity;

    .line 279
    sput-wide v6, Lmpl/SoterIdentity;->authStamp:J

    return-object p0

    .line 281
    :cond_7c
    sput-object p0, Lmpl/SoterIdentity;->askIdentity:Lmpl/SoterIdentity$Identity;

    .line 282
    sput-wide v6, Lmpl/SoterIdentity;->askStamp:J

    return-object p0
.end method

.method public static identityScans()I
    .registers 1

    .line 299
    sget-object v0, Lmpl/SoterIdentity;->SCANS:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method private static isRsa(Ljava/security/PrivateKey;)Z
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_8

    .line 735
    :cond_4
    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object p0

    :goto_8
    if-eqz p0, :cond_1b

    .line 736
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "EC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    return p0

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    return p0
.end method

.method public static keyDescription([B[B)[B
    .registers 10

    const-wide/16 v0, 0x12c

    .line 797
    invoke-static {v0, v1}, Lmpl/Der;->integer(J)[B

    move-result-object v0

    const-wide/16 v1, 0x1

    .line 798
    invoke-static {v1, v2}, Lmpl/Der;->enumerated(J)[B

    move-result-object v3

    const-wide/16 v4, 0x4

    .line 799
    invoke-static {v4, v5}, Lmpl/Der;->integer(J)[B

    move-result-object v4

    .line 800
    invoke-static {v1, v2}, Lmpl/Der;->enumerated(J)[B

    move-result-object v1

    .line 801
    invoke-static {p0}, Lmpl/Der;->octetString([B)[B

    move-result-object p0

    const/4 v2, 0x0

    if-nez p1, :cond_1f

    .line 802
    new-array p1, v2, [B

    :cond_1f
    invoke-static {p1}, Lmpl/Der;->octetString([B)[B

    move-result-object p1

    new-array v5, v2, [[B

    .line 803
    invoke-static {v5}, Lmpl/Der;->sequence([[B)[B

    move-result-object v5

    new-array v6, v2, [[B

    .line 804
    invoke-static {v6}, Lmpl/Der;->sequence([[B)[B

    move-result-object v6

    const/16 v7, 0x8

    new-array v7, v7, [[B

    aput-object v0, v7, v2

    const/4 v0, 0x1

    aput-object v3, v7, v0

    const/4 v0, 0x2

    aput-object v4, v7, v0

    const/4 v0, 0x3

    aput-object v1, v7, v0

    const/4 v0, 0x4

    aput-object p0, v7, v0

    const/4 p0, 0x5

    aput-object p1, v7, p0

    const/4 p0, 0x6

    aput-object v5, v7, p0

    const/4 p0, 0x7

    aput-object v6, v7, p0

    .line 796
    invoke-static {v7}, Lmpl/Der;->sequence([[B)[B

    move-result-object p0

    return-object p0
.end method

.method private static locate(Ljava/lang/String;)Ljava/io/File;
    .registers 7

    .line 313
    sget-object v0, Lmpl/SoterIdentity;->SCANS:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 314
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 315
    const-string v1, "MPL_SOTER_IDENTITY_DIR"

    invoke-static {v1}, Lmpl/SoterIdentity;->env(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 316
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_21

    .line 317
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    :cond_21
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/user/0/com.tencent.soter.soterserver/files/soter_identity"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/data/com.tencent.soter.soterserver/files/soter_identity"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 321
    :goto_36
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_7e

    .line 322
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 323
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".key"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_7b

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".crt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_7b

    return-object v2

    :cond_7b
    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    :cond_7e
    const/4 p0, 0x0

    return-object p0
.end method

.method private static modeFrom(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 1056
    :cond_4
    const-string v1, "\n"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 1057
    :goto_b
    array-length v2, p0

    if-ge v1, v2, :cond_4c

    .line 1058
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1059
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_49

    const/16 p0, 0x20

    .line 1060
    invoke-virtual {v2, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-gez p0, :cond_3e

    .line 1061
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v2, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1062
    :cond_3e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v2, p1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_49
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_4c
    return-object v0
.end method

.method private static modeOf(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1070
    new-instance v0, Ljava/io/File;

    const-string v1, "meta"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lmpl/SoterIdentity;->readText(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lmpl/SoterIdentity;->modeFrom(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_13

    .line 1071
    const-string p0, "unknown"

    :cond_13
    return-object p0
.end method

.method public static nativeProbe(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 17

    const-string v7, "native ok alg="

    const-string v8, "native_alg"

    const-string v9, "native: undecodable result len="

    .line 749
    :try_start_6
    sget-object v0, Lorg/matrix/TEESimulator/pki/NativeCertGen;->INSTANCE:Lorg/matrix/TEESimulator/pki/NativeCertGen;

    invoke-virtual {v0}, Lorg/matrix/TEESimulator/pki/NativeCertGen;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_11

    .line 750
    const-string v0, "native unavailable"

    return-object v0

    .line 752
    :cond_11
    const-string v0, "keybox.xml"

    invoke-static {v0}, Ly4/e;->a(Ljava/lang/String;)Ly4/d;

    move-result-object v0

    if-eqz v0, :cond_bf

    .line 753
    iget-object v1, v0, Ly4/d;->a:Ljava/security/KeyPair;

    if-eqz v1, :cond_bf

    iget-object v1, v0, Ly4/d;->a:Ljava/security/KeyPair;

    invoke-virtual {v1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    if-nez v1, :cond_27

    goto/16 :goto_bf

    .line 756
    :cond_27
    iget-object v1, v0, Ly4/d;->a:Ljava/security/KeyPair;

    invoke-virtual {v1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v4

    .line 757
    iget-object v0, v0, Ly4/d;->b:Ljava/util/ArrayList;

    invoke-static {v0}, Lmpl/SoterIdentity;->concatCertificates(Ljava/util/List;)[B

    move-result-object v5

    .line 758
    invoke-static {p4}, Lmpl/SoterIdentity;->challenge(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmpl/SoterIdentity;->bytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 759
    sget-object v10, Lorg/matrix/TEESimulator/pki/NativeCertGen;->INSTANCE:Lorg/matrix/TEESimulator/pki/NativeCertGen;

    move v0, p0

    move v1, p1

    move v2, p2

    move-object v6, p3

    .line 760
    invoke-static/range {v0 .. v6}, Lmpl/SoterIdentity;->config(III[B[B[BLjava/lang/String;)Lorg/matrix/TEESimulator/pki/CertGenConfig;

    move-result-object v2

    .line 759
    invoke-virtual {v10, v2}, Lorg/matrix/TEESimulator/pki/NativeCertGen;->generateAttestedKeyPair(Lorg/matrix/TEESimulator/pki/CertGenConfig;)[B

    move-result-object v1

    if-eqz v1, :cond_bc

    .line 761
    array-length v2, v1

    if-nez v2, :cond_53

    goto :goto_bc

    .line 764
    :cond_53
    invoke-static {v1}, Lmpl/SoterIdentity;->decodeNative([B)[Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_67

    .line 766
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_67
    const/4 v1, 0x0

    .line 768
    aget-object v1, v2, v1

    check-cast v1, [B

    const/4 v3, 0x1

    .line 769
    aget-object v2, v2, v3

    check-cast v2, Ljava/util/ArrayList;

    .line 770
    new-instance v3, Ljava/io/File;

    move-object/from16 v4, p5

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 771
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_81

    .line 772
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 774
    :cond_81
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "native-probe"

    invoke-static {v3, v4, v1, v2, v5}, Lmpl/SoterIdentity;->writeIdentity(Ljava/io/File;Ljava/lang/String;[BLjava/util/ArrayList;Ljava/lang/String;)V

    .line 775
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " keySize="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " pkcs8="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "B certs="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 776
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 762
    :cond_bc
    :goto_bc
    const-string v0, "native: returned null (see certgen.log / stderr)"

    return-object v0

    .line 754
    :cond_bf
    :goto_bf
    const-string v0, "native: no keybox"
    :try_end_c1
    .catchall {:try_start_6 .. :try_end_c1} :catchall_c2

    return-object v0

    :catchall_c2
    move-exception v0

    .line 778
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "native threw: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static note(Ljava/lang/String;)V
    .registers 2

    .line 1296
    sget-object v0, Lmpl/SoterIdentity;->lastNote:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 1299
    :cond_9
    sput-object p0, Lmpl/SoterIdentity;->lastNote:Ljava/lang/String;

    .line 1300
    const-string v0, "MPL-SOTER"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    :try_start_10
    invoke-static {p0}, Lmpl/SoterInjector;->file(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_13

    :catchall_13
    return-void
.end method

.method private static patchLevel()I
    .registers 5

    .line 1216
    :try_start_0
    sget-object v0, Landroid/os/Build$VERSION;->SECURITY_PATCH:Ljava/lang/String;

    if-eqz v0, :cond_2a

    .line 1217
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x7

    if-lt v1, v2, :cond_2a

    .line 1218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x5

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_29
    .catchall {:try_start_0 .. :try_end_29} :catchall_2a

    return v0

    :catchall_2a
    :cond_2a
    const v0, 0x31705

    return v0
.end method

.method public static pem([B)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x2

    .line 1092
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    .line 1093
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1094
    const-string v1, "-----BEGIN CERTIFICATE-----\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 1095
    :goto_16
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_30

    .line 1096
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v3, v1, 0x40

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v0, p0, v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v3

    goto :goto_16

    .line 1098
    :cond_30
    const-string p0, "-----END CERTIFICATE-----\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1099
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static pemToDer(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 9

    .line 1104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_8

    goto :goto_1d

    :cond_8
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1112
    :goto_a
    const-string v3, "-----BEGIN CERTIFICATE-----"

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-gez v2, :cond_13

    goto :goto_1d

    :cond_13
    add-int/lit8 v2, v2, 0x1b

    .line 1116
    const-string v3, "-----END CERTIFICATE-----"

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-gez v3, :cond_1e

    :goto_1d
    return-object v0

    .line 1120
    :cond_1e
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1121
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v5, 0x0

    .line 1122
    :goto_2c
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_4c

    .line 1123
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0xa

    if-eq v6, v7, :cond_49

    const/16 v7, 0xd

    if-eq v6, v7, :cond_49

    const/16 v7, 0x20

    if-eq v6, v7, :cond_49

    const/16 v7, 0x9

    if-eq v6, v7, :cond_49

    .line 1125
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_49
    add-int/lit8 v5, v5, 0x1

    goto :goto_2c

    .line 1129
    :cond_4c
    :try_start_4c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_57
    .catchall {:try_start_4c .. :try_end_57} :catchall_57

    :catchall_57
    add-int/lit8 v2, v3, 0x19

    goto :goto_a
.end method

.method private static privateKey([B)Ljava/security/PrivateKey;
    .registers 2

    .line 1139
    new-instance v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v0, p0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 1141
    :try_start_5
    const-string p0, "RSA"

    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    return-object p0

    .line 1146
    :catchall_10
    :try_start_10
    const-string p0, "EC"

    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p0
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_1b

    return-object p0

    :catchall_1b
    const/4 p0, 0x0

    return-object p0
.end method

.method private static read(Ljava/io/File;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Lmpl/SoterIdentity$Identity;
    .registers 14

    const-string v1, "identity "

    const/4 v2, 0x0

    .line 337
    :try_start_3
    invoke-static {p2}, Lmpl/SoterIdentity;->readBytes(Ljava/io/File;)[B

    move-result-object v0

    if-eqz v0, :cond_115

    .line 338
    array-length v3, v0

    if-nez v3, :cond_e

    goto/16 :goto_115

    .line 342
    :cond_e
    invoke-static {v0}, Lmpl/SoterIdentity;->privateKey([B)Ljava/security/PrivateKey;

    move-result-object v0

    if-nez v0, :cond_2c

    .line 344
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " PKCS8 not RSA/EC: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmpl/SoterIdentity;->note(Ljava/lang/String;)V

    return-object v2

    .line 347
    :cond_2c
    invoke-static {p3}, Lmpl/SoterIdentity;->readText(Ljava/io/File;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lmpl/SoterIdentity;->pemToDer(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    .line 348
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_52

    .line 349
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " chain empty: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmpl/SoterIdentity;->note(Ljava/lang/String;)V

    return-object v2

    .line 352
    :cond_52
    const-string p3, "X.509"

    invoke-static {p3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p3

    .line 353
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    move-object v6, v2

    .line 355
    :goto_63
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_ab

    .line 356
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 357
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p3, v7}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v7

    .line 358
    instance-of v8, v7, Ljava/security/cert/X509Certificate;

    if-nez v8, :cond_9c

    .line 359
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " cert["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] is not X509"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmpl/SoterIdentity;->note(Ljava/lang/String;)V

    return-object v2

    :cond_9c
    if-nez v3, :cond_a1

    .line 363
    move-object v6, v7

    check-cast v6, Ljava/security/cert/X509Certificate;

    .line 365
    :cond_a1
    invoke-static {v4}, Lmpl/SoterIdentity;->pem([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_63

    .line 367
    :cond_ab
    new-instance v4, Ljava/security/KeyPair;

    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p2

    invoke-direct {v4, p2, v0}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    .line 368
    invoke-static {v4}, Lmpl/SoterIdentity;->consistent(Ljava/security/KeyPair;)Z

    move-result p2

    if-nez p2, :cond_d5

    .line 369
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " key/cert mismatch in "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmpl/SoterIdentity;->note(Ljava/lang/String;)V

    return-object v2

    .line 372
    :cond_d5
    invoke-static {p0, p1}, Lmpl/SoterIdentity;->modeOf(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 373
    new-instance v3, Lmpl/SoterIdentity$Identity;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v3 .. v8}, Lmpl/SoterIdentity$Identity;-><init>(Ljava/security/KeyPair;Ljava/util/ArrayList;Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " loaded mode="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " certs="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " dir="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 374
    invoke-static {p0}, Lmpl/SoterIdentity;->note(Ljava/lang/String;)V

    return-object v3

    .line 339
    :cond_115
    :goto_115
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " key unreadable: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmpl/SoterIdentity;->note(Ljava/lang/String;)V
    :try_end_12c
    .catchall {:try_start_3 .. :try_end_12c} :catchall_12d

    return-object v2

    :catchall_12d
    move-exception v0

    move-object p0, v0

    .line 378
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " read failed: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmpl/SoterIdentity;->note(Ljava/lang/String;)V

    return-object v2
.end method

.method private static readAnySwitch()Z
    .registers 2

    .line 216
    const-string v0, "MPL_SOTER_CERTS"

    invoke-static {v0}, Lmpl/SoterIdentity;->env(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 218
    invoke-static {v0}, Lmpl/SoterIdentity;->truthy(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 220
    :cond_d
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/user/0/com.tencent.soter.soterserver/files/soter_certs"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lmpl/SoterIdentity;->readText(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmpl/SoterIdentity;->truthy(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static readBytes(Ljava/io/File;)[B
    .registers 7

    const/4 v0, 0x0

    .line 1245
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_2d

    .line 1246
    :try_start_6
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int p0, v2

    new-array v2, p0, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_f
    if-ge v4, p0, :cond_1c

    sub-int v5, p0, v4

    .line 1249
    invoke-virtual {v1, v2, v4, v5}, Ljava/io/FileInputStream;->read([BII)I

    move-result v5

    if-gtz v5, :cond_1a

    goto :goto_1c

    :cond_1a
    add-int/2addr v4, v5

    goto :goto_f

    :cond_1c
    :goto_1c
    if-eq v4, p0, :cond_27

    .line 1256
    new-array p0, v4, [B

    .line 1257
    invoke-static {v2, v3, p0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_23
    .catchall {:try_start_6 .. :try_end_23} :catchall_2b

    .line 1266
    :try_start_23
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_26

    :catchall_26
    return-object p0

    :cond_27
    :try_start_27
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_2a

    :catchall_2a
    return-object v2

    :catchall_2b
    nop

    goto :goto_2f

    :catchall_2d
    nop

    move-object v1, v0

    :goto_2f
    if-eqz v1, :cond_34

    :try_start_31
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_34

    :catchall_34
    :cond_34
    return-object v0
.end method

.method private static readText(Ljava/io/File;)Ljava/lang/String;
    .registers 3

    .line 1275
    invoke-static {p0}, Lmpl/SoterIdentity;->readBytes(Ljava/io/File;)[B

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 1280
    :cond_8
    :try_start_8
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_10

    return-object v0

    .line 1282
    :catchall_10
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private static restrict(Ljava/io/File;)V
    .registers 3

    const/4 v0, 0x0

    .line 1012
    :try_start_1
    invoke-virtual {p0, v0, v0}, Ljava/io/File;->setReadable(ZZ)Z

    .line 1013
    invoke-virtual {p0, v0, v0}, Ljava/io/File;->setWritable(ZZ)Z

    const/4 v1, 0x1

    .line 1014
    invoke-virtual {p0, v1, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 1015
    invoke-virtual {p0, v1, v1}, Ljava/io/File;->setWritable(ZZ)Z

    .line 1016
    invoke-virtual {p0, v0, v0}, Ljava/io/File;->setExecutable(ZZ)Z
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_11

    :catchall_11
    return-void
.end method

.method public static rootDir()Ljava/io/File;
    .registers 2

    .line 408
    const-string v0, "MPL_SOTER_IDENTITY_DIR"

    invoke-static {v0}, Lmpl/SoterIdentity;->env(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 409
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_14

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_14
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/adb/tricky_store/soter_identity"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static rootDirPath()Ljava/lang/String;
    .registers 1

    .line 414
    invoke-static {}, Lmpl/SoterIdentity;->rootDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static rootSwitchOn()Z
    .registers 2

    .line 199
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/adb/tricky_store/soter_certs"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lmpl/SoterIdentity;->readText(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmpl/SoterIdentity;->truthy(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static sdkInt()I
    .registers 1

    .line 1207
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_2
    .catchall {:try_start_0 .. :try_end_2} :catchall_3

    return v0

    :catchall_3
    const/16 v0, 0x23

    return v0
.end method

.method private static serial()[B
    .registers 3

    const/16 v0, 0x8

    .line 1187
    new-array v0, v0, [B

    .line 1188
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v1, 0x0

    .line 1189
    aget-byte v2, v0, v1

    and-int/lit8 v2, v2, 0x7f

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    if-nez v2, :cond_19

    const/4 v2, 0x1

    .line 1191
    aput-byte v2, v0, v1

    :cond_19
    return-object v0
.end method

.method private static serialLong()J
    .registers 10

    .line 1197
    invoke-static {}, Lmpl/SoterIdentity;->serial()[B

    move-result-object v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-wide v4, v1

    .line 1199
    :goto_8
    array-length v6, v0

    if-ge v3, v6, :cond_18

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    .line 1200
    aget-byte v6, v0, v3

    int-to-long v6, v6

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    or-long/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_18
    cmp-long v0, v4, v1

    if-nez v0, :cond_1f

    const-wide/16 v0, 0x1

    return-wide v0

    :cond_1f
    return-wide v4
.end method

.method private static signingAlgorithm([B)[B
    .registers 2

    .line 970
    invoke-static {p0}, Lmpl/SoterIdentity;->privateKey([B)Ljava/security/PrivateKey;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 974
    :cond_8
    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "EC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_23

    .line 975
    sget-object p0, Lmpl/SoterIdentity;->ALG_ID_ECDSA_SHA256:[B

    return-object p0

    :cond_23
    sget-object p0, Lmpl/SoterIdentity;->ALG_ID_RSA_SHA256:[B

    return-object p0
.end method

.method private static signingJca([B)Ljava/lang/String;
    .registers 2

    .line 961
    invoke-static {p0}, Lmpl/SoterIdentity;->privateKey([B)Ljava/security/PrivateKey;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 965
    :cond_8
    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "EC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_23

    .line 966
    const-string p0, "SHA256withECDSA"

    return-object p0

    :cond_23
    const-string p0, "SHA256withRSA"

    return-object p0
.end method

.method private static stampOf(Ljava/io/File;Ljava/io/File;)J
    .registers 8

    .line 331
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    const-wide/16 v2, 0x1f

    mul-long v0, v0, v2

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    add-long/2addr v0, v4

    mul-long v0, v0, v2

    .line 332
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    const-wide/16 v4, 0x83

    mul-long v2, v2, v4

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide p0

    add-long/2addr v2, p0

    add-long/2addr v0, v2

    return-wide v0
.end method

.method static subject(Ljava/lang/String;)[B
    .registers 8

    .line 1174
    const-string v0, "2.5.4.6"

    .line 1175
    invoke-static {v0}, Lmpl/Der;->oid(Ljava/lang/String;)[B

    move-result-object v0

    const-string v1, "MapleSU"

    invoke-static {v1}, Lmpl/Der;->printableString(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [[B

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-static {v3}, Lmpl/Der;->sequence([[B)[B

    move-result-object v1

    new-array v3, v0, [[B

    aput-object v1, v3, v4

    invoke-static {v3}, Lmpl/Der;->set([[B)[B

    move-result-object v1

    const-string v3, "2.5.4.3"

    .line 1176
    invoke-static {v3}, Lmpl/Der;->oid(Ljava/lang/String;)[B

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Soter "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmpl/Der;->utf8String(Ljava/lang/String;)[B

    move-result-object p0

    new-array v5, v2, [[B

    aput-object v3, v5, v4

    aput-object p0, v5, v0

    invoke-static {v5}, Lmpl/Der;->sequence([[B)[B

    move-result-object p0

    new-array v3, v0, [[B

    aput-object p0, v3, v4

    invoke-static {v3}, Lmpl/Der;->set([[B)[B

    move-result-object p0

    new-array v2, v2, [[B

    aput-object v1, v2, v4

    aput-object p0, v2, v0

    .line 1174
    invoke-static {v2}, Lmpl/Der;->sequence([[B)[B

    move-result-object p0

    return-object p0
.end method

.method private static toArray(Ljava/util/ArrayList;)[B
    .registers 5

    .line 1287
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [[B

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_14

    .line 1289
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1291
    :cond_14
    invoke-static {v1}, Lmpl/Der;->concat([[B)[B

    move-result-object p0

    return-object p0
.end method

.method private static truthy(Ljava/lang/String;)Z
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 235
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static utc(J)Ljava/lang/String;
    .registers 5

    .line 783
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyMMddHHmmss\'Z\'"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 784
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 785
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static write(Ljava/io/File;[B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 999
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 1001
    :try_start_6
    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 1002
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_13

    .line 1004
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 1006
    invoke-static {p0}, Lmpl/SoterIdentity;->restrict(Ljava/io/File;)V

    return-void

    :catchall_13
    move-exception p0

    .line 1004
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 1005
    throw p0
.end method

.method private static writeIdentity(Ljava/io/File;Ljava/lang/String;[BLjava/util/ArrayList;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p2, :cond_a5

    .line 982
    array-length v0, p2

    if-eqz v0, :cond_a5

    if-eqz p3, :cond_a5

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a5

    .line 986
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    .line 987
    :goto_13
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2f

    .line 988
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2}, Lmpl/SoterIdentity;->pem([B)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 990
    :cond_2f
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 991
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1, p2}, Lmpl/SoterIdentity;->write(Ljava/io/File;[B)V

    .line 992
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".crt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1, v0}, Lmpl/SoterIdentity;->write(Ljava/io/File;[B)V

    .line 993
    invoke-static {p0, p1, p4}, Lmpl/SoterIdentity;->writeMeta(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 994
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "identity "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " generated mode="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " certs="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " key="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "B crt="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "B"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmpl/SoterIdentity;->note(Ljava/lang/String;)V

    return-void

    .line 983
    :cond_a5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "empty identity material"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static writeMeta(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    .line 1024
    const-string v0, "meta"

    :try_start_2
    const-string v1, "ask"

    const-string v2, "auth"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 1025
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2}, Lmpl/SoterIdentity;->readText(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 1026
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0xa0

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1027
    const-string v4, "format=1\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_21
    const/4 v6, 0x2

    if-ge v5, v6, :cond_8c

    .line 1029
    aget-object v6, v1, v5

    .line 1030
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2e

    move-object v7, p2

    goto :goto_32

    :cond_2e
    invoke-static {v2, v6}, Lmpl/SoterIdentity;->modeFrom(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_32
    if-nez v7, :cond_35

    goto :goto_89

    .line 1034
    :cond_35
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x3d

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " certs="

    .line 1035
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ".crt"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, p0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v7}, Lmpl/SoterIdentity;->countPem(Ljava/io/File;)I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " key="

    .line 1036
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".key"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, p0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v6, 0xa

    .line 1037
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_89
    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    .line 1039
    :cond_8c
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1040
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_96
    .catchall {:try_start_2 .. :try_end_96} :catchall_af

    .line 1042
    :try_start_96
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "UTF-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_a3
    .catchall {:try_start_96 .. :try_end_a3} :catchall_aa

    .line 1044
    :try_start_a3
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    .line 1046
    invoke-static {p1}, Lmpl/SoterIdentity;->restrict(Ljava/io/File;)V

    return-void

    :catchall_aa
    move-exception p1

    .line 1044
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    .line 1045
    throw p1
    :try_end_af
    .catchall {:try_start_a3 .. :try_end_af} :catchall_af

    :catchall_af
    return-void
.end method
