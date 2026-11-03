.class public Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;
.super Ljava/security/KeyStoreSpi;


# static fields
.field private static final NOT_IMPLEMENTED_MESSAGE:Ljava/lang/String; = "BC JKS store is read-only and only supports certificate entries"


# instance fields
.field private final certificateEntries:Ljava/util/Hashtable;

.field private final helper:Le2/b;


# direct methods
.method public constructor <init>(Le2/b;)V
    .registers 3

    invoke-direct {p0}, Ljava/security/KeyStoreSpi;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->certificateEntries:Ljava/util/Hashtable;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->helper:Le2/b;

    return-void
.end method

.method private addPassword(Lorg/bouncycastle/crypto/v;[C)V
    .registers 5

    const/4 p0, 0x0

    move v0, p0

    :goto_2
    array-length v1, p2

    if-ge v0, v1, :cond_16

    aget-char v1, p2, v0

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    invoke-interface {p1, v1}, Lorg/bouncycastle/crypto/v;->update(B)V

    aget-char v1, p2, v0

    int-to-byte v1, v1

    invoke-interface {p1, v1}, Lorg/bouncycastle/crypto/v;->update(B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_16
    const-string p2, "Mighty Aphrodite"

    invoke-static {p2}, Lm4/m;->c(Ljava/lang/String;)[B

    move-result-object p2

    const/16 v0, 0x10

    invoke-interface {p1, p2, p0, v0}, Lorg/bouncycastle/crypto/v;->update([BII)V

    return-void
.end method

.method private createCertFactory(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    .registers 2

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->helper:Le2/b;

    if-eqz p0, :cond_14

    :try_start_4
    invoke-interface {p0, p1}, Le2/b;->a(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p0
    :try_end_8
    .catch Ljava/security/NoSuchProviderException; {:try_start_4 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    new-instance p1, Ljava/security/cert/CertificateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_14
    invoke-static {p1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p0

    return-object p0
.end method

.method private validateStream(Ljava/io/InputStream;[C)Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    .registers 6

    const-string v0, "SHA-1"

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->getDigest(Ljava/lang/String;)Lorg/bouncycastle/crypto/v;

    move-result-object v0

    invoke-static {p1}, Lq4/k;->G0(Ljava/io/InputStream;)[B

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p2, :cond_42

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->addPassword(Lorg/bouncycastle/crypto/v;[C)V

    array-length p0, p1

    invoke-interface {v0}, Lorg/bouncycastle/crypto/v;->getDigestSize()I

    move-result p2

    sub-int/2addr p0, p2

    invoke-interface {v0, p1, v1, p0}, Lorg/bouncycastle/crypto/v;->update([BII)V

    invoke-interface {v0}, Lorg/bouncycastle/crypto/v;->getDigestSize()I

    move-result p0

    new-array p2, p0, [B

    invoke-interface {v0, p2, v1}, Lorg/bouncycastle/crypto/v;->doFinal([BI)I

    new-array v0, p0, [B

    array-length v2, p1

    sub-int/2addr v2, p0

    invoke-static {p1, v2, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p2, v0}, Lm4/d;->o([B[B)Z

    move-result p2

    if-eqz p2, :cond_37

    new-instance p2, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;

    array-length v0, p1

    sub-int/2addr v0, p0

    invoke-direct {p2, p1, v1, v0}, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;-><init>([BII)V

    return-object p2

    :cond_37
    invoke-static {p1, v1}, Ljava/util/Arrays;->fill([BB)V

    new-instance p0, Ljava/io/IOException;

    const-string p1, "password incorrect or store tampered with"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_42
    new-instance p0, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;

    array-length p2, p1

    invoke-interface {v0}, Lorg/bouncycastle/crypto/v;->getDigestSize()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-direct {p0, p1, v1, p2}, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;-><init>([BII)V

    return-object p0
.end method


# virtual methods
.method public engineAliases()Ljava/util/Enumeration;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->certificateEntries:Ljava/util/Hashtable;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->certificateEntries:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_b
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public engineContainsAlias(Ljava/lang/String;)Z
    .registers 3

    if-eqz p1, :cond_10

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->certificateEntries:Ljava/util/Hashtable;

    monitor-enter v0

    :try_start_5
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->certificateEntries:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_d

    throw p0

    :cond_10
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "alias value is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineDeleteEntry(Ljava/lang/String;)V
    .registers 2

    new-instance p0, Ljava/security/KeyStoreException;

    const-string p1, "BC JKS store is read-only and only supports certificate entries"

    invoke-direct {p0, p1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .registers 3

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->certificateEntries:Ljava/util/Hashtable;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->certificateEntries:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$BCJKSTrustedCertEntry;

    if-eqz p0, :cond_13

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$BCJKSTrustedCertEntry;->cert:Ljava/security/cert/Certificate;

    monitor-exit v0

    return-object p0

    :catchall_11
    move-exception p0

    goto :goto_16

    :cond_13
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :goto_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_11

    throw p0
.end method

.method public engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->certificateEntries:Ljava/util/Hashtable;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->certificateEntries:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$BCJKSTrustedCertEntry;

    iget-object v2, v2, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$BCJKSTrustedCertEntry;->cert:Ljava/security/cert/Certificate;

    invoke-virtual {v2, p1}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :catchall_2f
    move-exception p0

    goto :goto_34

    :cond_31
    const/4 p0, 0x0

    monitor-exit v0

    return-object p0

    :goto_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_2f

    throw p0
.end method

.method public engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .registers 3

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->certificateEntries:Ljava/util/Hashtable;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->certificateEntries:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$BCJKSTrustedCertEntry;

    if-eqz p0, :cond_13

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$BCJKSTrustedCertEntry;->date:Ljava/util/Date;

    monitor-exit v0

    return-object p0

    :catchall_11
    move-exception p0

    goto :goto_16

    :cond_13
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :goto_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_11

    throw p0
.end method

.method public engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;
    .registers 3

    const/4 p0, 0x0

    return-object p0
.end method

.method public engineIsCertificateEntry(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->certificateEntries:Ljava/util/Hashtable;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->certificateEntries:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public engineIsKeyEntry(Ljava/lang/String;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public engineLoad(Ljava/io/InputStream;[C)V
    .registers 20

    move-object/from16 v0, p0

    if-nez p1, :cond_5

    return-void

    :cond_5
    invoke-direct/range {p0 .. p2}, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->validateStream(Ljava/io/InputStream;[C)Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;

    move-result-object v1

    iget-object v2, v0, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->certificateEntries:Ljava/util/Hashtable;

    monitor-enter v2

    :try_start_c
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    const v6, -0x1120113

    if-ne v4, v6, :cond_bf

    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v5, v7, :cond_36

    if-ne v5, v6, :cond_2e

    new-instance v8, Ljava/util/Hashtable;

    invoke-direct {v8}, Ljava/util/Hashtable;-><init>()V

    goto :goto_41

    :catchall_2b
    move-exception v0

    goto/16 :goto_d4

    :cond_2e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "unable to discern store version"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    const-string v8, "X.509"

    invoke-direct {v0, v8}, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->createCertFactory(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v8

    move-object/from16 v16, v8

    move-object v8, v4

    move-object/from16 v4, v16

    :goto_41
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    const/4 v10, 0x0

    move v11, v10

    :goto_47
    if-ge v11, v9, :cond_bf

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    if-eq v12, v7, :cond_b7

    if-ne v12, v6, :cond_af

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/util/Date;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v14

    invoke-direct {v13, v14, v15}, Ljava/util/Date;-><init>(J)V

    if-ne v5, v6, :cond_79

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_71

    invoke-virtual {v8, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/CertificateFactory;

    goto :goto_79

    :cond_71
    invoke-direct {v0, v4}, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->createCertFactory(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v14

    invoke-virtual {v8, v4, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v14

    :cond_79
    :goto_79
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v14

    new-array v15, v14, [B

    invoke-virtual {v3, v15}, Ljava/io/DataInputStream;->readFully([B)V

    new-instance v6, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;

    invoke-direct {v6, v15, v10, v14}, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;-><init>([BII)V
    :try_end_87
    .catchall {:try_start_c .. :try_end_87} :catchall_2b

    :try_start_87
    invoke-virtual {v4, v6}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v14

    invoke-virtual {v6}, Ljava/io/InputStream;->available()I

    move-result v15
    :try_end_8f
    .catchall {:try_start_87 .. :try_end_8f} :catchall_aa

    if-nez v15, :cond_a2

    :try_start_91
    invoke-virtual {v6}, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;->erase()V

    iget-object v6, v0, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->certificateEntries:Ljava/util/Hashtable;

    new-instance v15, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$BCJKSTrustedCertEntry;

    invoke-direct {v15, v13, v14}, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$BCJKSTrustedCertEntry;-><init>(Ljava/util/Date;Ljava/security/cert/Certificate;)V

    invoke-virtual {v6, v12, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9e
    .catchall {:try_start_91 .. :try_end_9e} :catchall_2b

    add-int/lit8 v11, v11, 0x1

    const/4 v6, 0x2

    goto :goto_47

    :cond_a2
    :try_start_a2
    new-instance v0, Ljava/io/IOException;

    const-string v3, "password incorrect or store tampered with"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_aa
    .catchall {:try_start_a2 .. :try_end_aa} :catchall_aa

    :catchall_aa
    move-exception v0

    :try_start_ab
    invoke-virtual {v6}, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;->erase()V

    throw v0

    :cond_af
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "unable to discern entry type"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b7
    new-instance v0, Ljava/io/IOException;

    const-string v3, "BC JKS store is read-only and only supports certificate entries"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_bf
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v0
    :try_end_c3
    .catchall {:try_start_ab .. :try_end_c3} :catchall_2b

    if-nez v0, :cond_cc

    :try_start_c5
    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;->erase()V

    monitor-exit v2
    :try_end_c9
    .catchall {:try_start_c5 .. :try_end_c9} :catchall_ca

    return-void

    :catchall_ca
    move-exception v0

    goto :goto_d8

    :cond_cc
    :try_start_cc
    new-instance v0, Ljava/io/IOException;

    const-string v3, "password incorrect or store tampered with"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d4
    .catchall {:try_start_cc .. :try_end_d4} :catchall_2b

    :goto_d4
    :try_start_d4
    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;->erase()V

    throw v0

    :goto_d8
    monitor-exit v2
    :try_end_d9
    .catchall {:try_start_d4 .. :try_end_d9} :catchall_ca

    throw v0
.end method

.method public engineLoad(Ljava/security/KeyStore$LoadStoreParameter;)V
    .registers 3

    if-nez p1, :cond_7

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->engineLoad(Ljava/io/InputStream;[C)V

    return-void

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "no support for \'param\' of type "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineProbe(Ljava/io/InputStream;)Z
    .registers 3

    instance-of p0, p1, Ljava/io/DataInputStream;

    if-eqz p0, :cond_7

    check-cast p1, Ljava/io/DataInputStream;

    goto :goto_d

    :cond_7
    new-instance p0, Ljava/io/DataInputStream;

    invoke-direct {p0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, p0

    :goto_d
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result p0

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    const v0, -0x1120113

    if-ne p0, v0, :cond_21

    const/4 p0, 0x1

    if-eq p1, p0, :cond_20

    const/4 v0, 0x2

    if-ne p1, v0, :cond_21

    :cond_20
    return p0

    :cond_21
    const/4 p0, 0x0

    return p0
.end method

.method public engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .registers 3

    new-instance p0, Ljava/security/KeyStoreException;

    const-string p1, "BC JKS store is read-only and only supports certificate entries"

    invoke-direct {p0, p1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .registers 5

    new-instance p0, Ljava/security/KeyStoreException;

    const-string p1, "BC JKS store is read-only and only supports certificate entries"

    invoke-direct {p0, p1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .registers 4

    new-instance p0, Ljava/security/KeyStoreException;

    const-string p1, "BC JKS store is read-only and only supports certificate entries"

    invoke-direct {p0, p1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineSize()I
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->certificateEntries:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/util/Hashtable;->size()I

    move-result p0

    return p0
.end method

.method public engineStore(Ljava/io/OutputStream;[C)V
    .registers 3

    new-instance p0, Ljava/io/IOException;

    const-string p1, "BC JKS store is read-only and only supports certificate entries"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
