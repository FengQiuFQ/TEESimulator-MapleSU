.class public final Lorg/matrix/TEESimulator/pki/NativeCertGen;
.super Ljava/lang/Object;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"


# static fields
.field public static final INSTANCE:Lorg/matrix/TEESimulator/pki/NativeCertGen;

.field private static final LOG_DIR:Ljava/lang/String; = "/data/adb/tricky_store/logs"

.field private static volatile isAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/matrix/TEESimulator/pki/NativeCertGen;

    invoke-direct {v0}, Lorg/matrix/TEESimulator/pki/NativeCertGen;-><init>()V

    sput-object v0, Lorg/matrix/TEESimulator/pki/NativeCertGen;->INSTANCE:Lorg/matrix/TEESimulator/pki/NativeCertGen;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final native initLogging(ZLjava/lang/String;)Z
.end method


# virtual methods
.method public final native generateAttestedKeyPair(Lorg/matrix/TEESimulator/pki/CertGenConfig;)[B
.end method

.method public final initialize(Ljava/lang/String;)V
    .registers 3

    const-string v0, "libraryPath"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_5
    invoke-static {p1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    const-string p1, "/data/adb/tricky_store/logs"

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/matrix/TEESimulator/pki/NativeCertGen;->initLogging(ZLjava/lang/String;)Z

    const/4 p0, 0x1

    sput-boolean p0, Lorg/matrix/TEESimulator/pki/NativeCertGen;->isAvailable:Z

    sget-object p0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    const-string p0, "NativeCertGen: loaded libcertgen.so successfully"

    invoke-static {p0}, Lx4/b;->c(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_5 .. :try_end_18} :catch_19

    return-void

    :catch_19
    move-exception p0

    sget-object p1, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    const-string p1, "NativeCertGen: failed to load libcertgen.so, falling back to BouncyCastle"

    invoke-static {p1, p0}, Lx4/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final isAvailable()Z
    .registers 1

    sget-boolean p0, Lorg/matrix/TEESimulator/pki/NativeCertGen;->isAvailable:Z

    return p0
.end method

.method public final parseNativeResult([B)La/c;
    .registers 9

    const-string p0, "bytes"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object p1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    if-ltz p1, :cond_f3

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    if-gt p1, v0, :cond_f3

    new-array p1, p1, [B

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    if-ltz v0, :cond_e7

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_e7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "X.509"

    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_39
    if-ge v4, v0, :cond_6c

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    if-ltz v5, :cond_60

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v6

    if-gt v5, v6, :cond_60

    new-array v5, v5, [B

    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v6}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v5

    const-string v6, "generateCertificate(...)"

    invoke-static {v6, v5}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    :cond_60
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Invalid cert length: "

    invoke-static {v5, p1}, Lb/b;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6c
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_df

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/cert/Certificate;

    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p0

    invoke-interface {p0}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_af

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v2, 0x89e

    const-string v4, "EC"

    if-eq v0, v2, :cond_a9

    const v2, 0x13e20

    if-eq v0, v2, :cond_a0

    const v2, 0x3ebd434

    if-eq v0, v2, :cond_97

    goto :goto_af

    :cond_97
    const-string v0, "ECDSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_af

    goto :goto_bd

    :cond_a0
    const-string v4, "RSA"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_bd

    goto :goto_af

    :cond_a9
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_bd

    :cond_af
    :goto_af
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/cert/Certificate;

    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p0

    invoke-interface {p0}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    :cond_bd
    :goto_bd
    invoke-static {v4}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    new-instance v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v0, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {p0, v0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/cert/Certificate;

    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p1

    new-instance v0, La/c;

    new-instance v2, Ljava/security/KeyPair;

    invoke-direct {v2, p1, p0}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    invoke-direct {v0, v2, v1}, La/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_df
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No certificates in native result"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Invalid cert count: "

    invoke-static {v0, p1}, Lb/b;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid private key length: "

    invoke-static {p1, v0}, Lb/b;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
