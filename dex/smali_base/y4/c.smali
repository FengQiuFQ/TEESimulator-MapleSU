.class public abstract Ly4/c;
.super Ljava/lang/Object;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"


# static fields
.field public static final a:La/f;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lorg/matrix/TEESimulator/interception/keystore/shim/h;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Lorg/matrix/TEESimulator/interception/keystore/shim/h;-><init>(I)V

    new-instance v1, La/f;

    invoke-direct {v1, v0}, La/f;-><init>(Lh/a;)V

    sput-object v1, Ly4/c;->a:La/f;

    return-void
.end method

.method public static a(Ljava/util/List;)[B
    .registers 3

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_2d

    :try_start_5
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/Certificate;

    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_9

    :catchall_1d
    move-exception p0

    goto :goto_27

    :cond_1f
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_1d

    :try_start_23
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_2d

    goto :goto_34

    :goto_27
    :try_start_27
    throw p0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_28

    :catchall_28
    move-exception v1

    :try_start_29
    invoke-static {v0, p0}, Lq4/k;->w(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2d
    .catchall {:try_start_29 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    new-instance v0, La/d;

    invoke-direct {v0, p0}, La/d;-><init>(Ljava/lang/Throwable;)V

    move-object p0, v0

    :goto_34
    invoke-static {p0}, La/e;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_41

    sget-object v1, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    const-string v1, "Failed to serialize certificate collection to byte array."

    invoke-static {v1, v0}, Lx4/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_41
    instance-of v0, p0, La/d;

    if-eqz v0, :cond_46

    const/4 p0, 0x0

    :cond_46
    check-cast p0, [B

    return-object p0
.end method

.method public static b(Landroid/system/keystore2/KeyMetadata;)[Ljava/security/cert/Certificate;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    goto :goto_60

    :cond_4
    iget-object v1, p0, Landroid/system/keystore2/KeyMetadata;->certificate:[B

    if-nez v1, :cond_9

    goto :goto_60

    :cond_9
    invoke-static {v1}, Ly4/c;->e([B)Ls2/a;

    move-result-object v1

    instance-of v2, v1, Ly4/b;

    if-eqz v2, :cond_14

    check-cast v1, Ly4/b;

    goto :goto_15

    :cond_14
    move-object v1, v0

    :goto_15
    if-eqz v1, :cond_60

    iget-object v1, v1, Ly4/b;->a:Ljava/lang/Object;

    check-cast v1, Ljava/security/cert/X509Certificate;

    if-nez v1, :cond_1e

    goto :goto_60

    :cond_1e
    iget-object p0, p0, Landroid/system/keystore2/KeyMetadata;->certificateChain:[B

    const/4 v0, 0x0

    if-nez p0, :cond_29

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/security/cert/Certificate;

    aput-object v1, p0, v0

    return-object p0

    :cond_29
    :try_start_29
    sget-object v2, Ly4/c;->a:La/f;

    invoke-virtual {v2}, La/f;->a()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "getValue(...)"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v2, Ljava/security/cert/CertificateFactory;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object p0

    const-string v2, "null cannot be cast to non-null type kotlin.collections.Collection<java.security.cert.X509Certificate>"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/i;->c(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_44
    .catch Ljava/security/cert/CertificateException; {:try_start_29 .. :try_end_44} :catch_45

    goto :goto_4f

    :catch_45
    move-exception p0

    sget-object v2, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    const-string v2, "Could not parse certificate collection from byte array."

    invoke-static {v2, p0}, Lx4/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p0, Lb/q;->c:Lb/q;

    :goto_4f
    invoke-static {v1}, Lt4/d;->n0(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1, p0}, Lb/i;->Z0(Ljava/util/List;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p0

    new-array v0, v0, [Ljava/security/cert/Certificate;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/security/cert/Certificate;

    return-object p0

    :cond_60
    :goto_60
    return-object v0
.end method

.method public static c(Ljava/lang/String;)Ls2/a;
    .registers 4

    const-string v0, "pemContent"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_5
    new-instance v0, Lp4/d;

    new-instance v1, Ljava/io/StringReader;

    invoke-static {p0}, Ls2/a;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_13} :catch_3f

    :try_start_13
    invoke-virtual {v0}, Lp4/d;->a()Lp4/b;

    move-result-object p0

    sget-object v1, Ly4/c;->a:La/f;

    invoke-virtual {v1}, La/f;->a()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "getValue(...)"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v1, Ljava/security/cert/CertificateFactory;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object p0, p0, Lp4/b;->c:[B

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p0

    new-instance v1, Ly4/b;

    invoke-direct {v1, p0}, Ly4/b;-><init>(Ljava/io/Serializable;)V
    :try_end_34
    .catchall {:try_start_13 .. :try_end_34} :catchall_38

    :try_start_34
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_37} :catch_3f

    return-object v1

    :catchall_38
    move-exception p0

    :try_start_39
    throw p0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_3a

    :catchall_3a
    move-exception v1

    :try_start_3b
    invoke-static {v0, p0}, Lq4/k;->w(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3f} :catch_3f

    :catch_3f
    move-exception p0

    sget-object v0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    const-string v0, "Failed to parse PEM certificate."

    invoke-static {v0, p0}, Lx4/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Ly4/a;

    const-string v1, "Failed to parse PEM certificate"

    invoke-direct {v0, v1, p0}, Ly4/a;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    return-object v0
.end method

.method public static d(Ljava/lang/String;)Ls2/a;
    .registers 6

    const-string v0, "Invalid PEM format: Expected a key pair, but got "

    :try_start_2
    new-instance v1, Lt2/d;

    new-instance v2, Ljava/io/StringReader;

    invoke-static {p0}, Ls2/a;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lt2/d;-><init>(Ljava/io/StringReader;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_10} :catch_7c

    :try_start_10
    invoke-virtual {v1}, Lp4/d;->a()Lp4/b;

    move-result-object p0

    const/4 v2, 0x0

    if-nez p0, :cond_19

    move-object p0, v2

    goto :goto_29

    :cond_19
    iget-object v3, p0, Lp4/b;->a:Ljava/lang/String;

    iget-object v4, v1, Lt2/d;->d:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_62

    check-cast v4, Lp4/c;

    invoke-interface {v4, p0}, Lp4/c;->a(Lp4/b;)Ljava/lang/Object;

    move-result-object p0

    :goto_29
    instance-of v3, p0, Lt2/a;

    if-eqz v3, :cond_40

    new-instance v0, Lu2/a;

    invoke-direct {v0}, Lu2/a;-><init>()V

    check-cast p0, Lt2/a;

    invoke-virtual {v0, p0}, Lu2/a;->a(Lt2/a;)Ljava/security/KeyPair;

    move-result-object p0

    new-instance v0, Ly4/b;

    invoke-direct {v0, p0}, Ly4/b;-><init>(Ljava/io/Serializable;)V

    goto :goto_5e

    :catchall_3e
    move-exception p0

    goto :goto_76

    :cond_40
    new-instance v3, Ly4/a;

    if-eqz p0, :cond_4d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    goto :goto_4e

    :cond_4d
    move-object p0, v2

    :goto_4e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0, v2}, Ly4/a;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_5d
    .catchall {:try_start_10 .. :try_end_5d} :catchall_3e

    move-object v0, v3

    :goto_5e
    :try_start_5e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_61} :catch_7c

    return-object v0

    :cond_62
    :try_start_62
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "unrecognised object: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_76
    .catchall {:try_start_62 .. :try_end_76} :catchall_3e

    :goto_76
    :try_start_76
    throw p0
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_77

    :catchall_77
    move-exception v0

    :try_start_78
    invoke-static {v1, p0}, Lq4/k;->w(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_7c} :catch_7c

    :catch_7c
    move-exception p0

    sget-object v0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    const-string v0, "Failed to parse PEM key pair."

    invoke-static {v0, p0}, Lx4/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Ly4/a;

    const-string v1, "Failed to parse PEM key pair"

    invoke-direct {v0, v1, p0}, Ly4/a;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    return-object v0
.end method

.method public static e([B)Ls2/a;
    .registers 3

    :try_start_0
    sget-object v0, Ly4/c;->a:La/f;

    invoke-virtual {v0}, La/f;->a()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v0, Ljava/security/cert/CertificateFactory;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type java.security.cert.X509Certificate"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p0, Ljava/security/cert/X509Certificate;

    new-instance v0, Ly4/b;

    invoke-direct {v0, p0}, Ly4/b;-><init>(Ljava/io/Serializable;)V
    :try_end_22
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_22} :catch_23

    return-object v0

    :catch_23
    move-exception p0

    sget-object v0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    const-string v0, "Failed to parse X.509 certificate from byte array."

    invoke-static {v0, p0}, Lx4/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Ly4/a;

    const-string v1, "Failed to parse certificate"

    invoke-direct {v0, v1, p0}, Ly4/a;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    return-object v0
.end method

.method public static f(Landroid/system/keystore2/KeyMetadata;[Ljava/security/cert/Certificate;)Ljava/lang/Object;
    .registers 4

    const-string v0, "chain"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_5
    array-length v0, p1

    if-eqz v0, :cond_24

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v0

    iput-object v0, p0, Landroid/system/keystore2/KeyMetadata;->certificate:[B

    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_1e

    invoke-static {p1}, Lb/h;->h1([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ly4/c;->a(Ljava/util/List;)[B

    move-result-object p1

    goto :goto_1f

    :cond_1e
    const/4 p1, 0x0

    :goto_1f
    iput-object p1, p0, Landroid/system/keystore2/KeyMetadata;->certificateChain:[B

    sget-object p0, La/h;->a:La/h;

    return-object p0

    :cond_24
    const-string p0, "Certificate chain cannot be empty."

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_2c

    :catchall_2c
    move-exception p0

    new-instance p1, La/d;

    invoke-direct {p1, p0}, La/d;-><init>(Ljava/lang/Throwable;)V

    return-object p1
.end method
