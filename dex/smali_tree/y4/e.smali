.class public abstract Ly4/e;
.super Ljava/lang/Object;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"


# static fields
.field public static final a:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Ly4/e;->a:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ly4/d;
    .registers 3

    sget-object v0, Ly4/e;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_14

    invoke-static {p0}, Ly4/e;->c(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_13

    goto :goto_14

    :cond_13
    move-object v1, p0

    :cond_14
    :goto_14
    check-cast v1, Ljava/util/Map;

    const-string p0, "EC"

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ly4/d;

    if-nez p0, :cond_4f

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    const-string v0, "<this>"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of v0, p0, Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_3d

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_37

    goto :goto_4c

    :cond_37
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_4c

    :cond_3d
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_48

    goto :goto_4c

    :cond_48
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    :goto_4c
    check-cast v1, Ly4/d;

    return-object v1

    :cond_4f
    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ly4/d;
    .registers 9

    sget-object v0, Ly4/e;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_14

    invoke-static {p0}, Ly4/e;->c(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_13

    goto :goto_14

    :cond_13
    move-object v1, v0

    :cond_14
    :goto_14
    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly4/d;

    if-eqz v0, :cond_54

    iget-object v1, v0, Ly4/d;->b:Ljava/util/ArrayList;

    new-instance v5, Lorg/matrix/TEESimulator/interception/keystore/shim/h;

    const/16 v2, 0x14

    invoke-direct {v5, v2}, Lorg/matrix/TEESimulator/interception/keystore/shim/h;-><init>(I)V

    const/16 v6, 0x1e

    const-string v2, ", "

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lb/i;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lh/l;I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Using "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " keybox "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "; attestation cert serials (hex): "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lx4/b;->c(Ljava/lang/String;)V

    :cond_54
    return-object v0
.end method

.method public static c(Ljava/lang/String;)Ljava/util/Map;
    .registers 11

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/adb/tricky_store"

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Parsing new key store file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lx4/b;->c(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    sget-object v2, Lb/r;->c:Lb/r;

    if-nez v1, :cond_3d

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Key store file not found: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lx4/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2

    :cond_3d
    :try_start_3d
    invoke-static {v0}, Lt4/d;->D0(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v3, v1, [C

    fill-array-data v3, :array_98

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_4d
    if-ge v6, v4, :cond_72

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v8, v5

    :goto_54
    if-ge v8, v1, :cond_5e

    aget-char v9, v3, v8

    if-ne v7, v9, :cond_5b

    goto :goto_5f

    :cond_5b
    add-int/lit8 v8, v8, 0x1

    goto :goto_54

    :cond_5e
    const/4 v8, -0x1

    :goto_5f
    if-ltz v8, :cond_63

    const/4 v7, 0x1

    goto :goto_64

    :cond_63
    move v7, v5

    :goto_64
    if-nez v7, :cond_6f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_74

    :cond_6f
    add-int/lit8 v6, v6, 0x1

    goto :goto_4d

    :cond_72
    const-string v0, ""

    :goto_74
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ly4/e;->d(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p0
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_7c} :catch_7d

    return-object p0

    :catch_7d
    move-exception v0

    sget-object v1, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Fatal error parsing key store file \'"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lx4/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2

    nop

    :array_98
    .array-data 2
        -0x101s
        -0x2s
        0x20s
    .end array-data
.end method

.method public static d(Ljava/lang/String;)Ljava/util/LinkedHashMap;
    .registers 18

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    new-instance v0, Ljava/io/StringReader;

    move-object/from16 v3, p0

    invoke-direct {v0, v3}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_24
    const/4 v10, 0x1

    if-eq v0, v10, :cond_251

    const-string v11, "Certificate"

    const-string v12, "Key"

    const-string v13, "PrivateKey"

    const v14, 0x6ff49fc

    const v15, 0x1263f

    const v5, -0x28371689

    const/4 v10, 0x2

    if-eq v0, v10, :cond_20d

    const/4 v10, 0x3

    if-eq v0, v10, :cond_66

    const/4 v5, 0x4

    if-eq v0, v5, :cond_40

    :goto_3f
    goto :goto_52

    :cond_40
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->isWhitespace()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_24

    :cond_4b
    if-eqz v6, :cond_57

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    :cond_52
    :goto_52
    move-object/from16 v16, v3

    :cond_54
    :goto_54
    const/4 v4, 0x0

    goto/16 :goto_249

    :cond_57
    if-eqz v7, :cond_52

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v5, "getText(...)"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_52

    :cond_66
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_52

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v10

    if-eq v10, v5, :cond_201

    if-eq v10, v15, :cond_84

    if-eq v10, v14, :cond_77

    goto :goto_3f

    :cond_77
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7e

    goto :goto_3f

    :cond_7e
    move-object/from16 v16, v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    goto/16 :goto_249

    :cond_84
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8b

    goto :goto_3f

    :cond_8b
    sget-object v5, La/h;->a:La/h;

    if-eqz v8, :cond_1d9

    if-eqz v9, :cond_1d9

    :try_start_91
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d9

    invoke-static {v9}, Ly4/c;->d(Ljava/lang/String;)Ls2/a;

    move-result-object v0

    check-cast v0, Ly4/b;

    iget-object v0, v0, Ly4/b;->a:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Ljava/security/KeyPair;

    new-instance v11, Ljava/util/ArrayList;

    invoke-static {v3}, Lb/k;->V0(Ljava/lang/Iterable;)I

    move-result v0

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v12, 0x0

    :goto_b0
    if-ge v12, v0, :cond_cd

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v12, v12, 0x1

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Ly4/c;->c(Ljava/lang/String;)Ls2/a;

    move-result-object v13

    check-cast v13, Ly4/b;

    iget-object v13, v13, Ly4/b;->a:Ljava/lang/Object;

    check-cast v13, Ljava/security/cert/Certificate;

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b0

    :catchall_c8
    move-exception v0

    move-object/from16 v16, v3

    goto/16 :goto_1dc

    :cond_cd
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v0, 0x0

    :goto_d2
    if-ge v0, v12, :cond_13a

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v14, v0, 0x1

    check-cast v13, Ljava/security/cert/Certificate;

    instance-of v0, v13, Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_e3

    check-cast v13, Ljava/security/cert/X509Certificate;
    :try_end_e2
    .catchall {:try_start_91 .. :try_end_e2} :catchall_c8

    goto :goto_e4

    :cond_e3
    const/4 v13, 0x0

    :goto_e4
    if-eqz v13, :cond_134

    :try_start_e6
    invoke-virtual {v13}, Ljava/security/cert/X509Certificate;->checkValidity()V
    :try_end_e9
    .catchall {:try_start_e6 .. :try_end_e9} :catchall_eb

    move-object v15, v5

    goto :goto_f1

    :catchall_eb
    move-exception v0

    :try_start_ec
    new-instance v15, La/d;

    invoke-direct {v15, v0}, La/d;-><init>(Ljava/lang/Throwable;)V

    :goto_f1
    invoke-static {v15}, La/e;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_134

    sget-object v15, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v13}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v15

    invoke-virtual {v15}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_10e
    .catchall {:try_start_ec .. :try_end_10e} :catchall_c8

    move-object/from16 v16, v3

    :try_start_110
    const-string v3, "Keybox certificate \'"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' is not currently valid (notAfter="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "): "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lx4/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_136

    :catchall_131
    move-exception v0

    goto/16 :goto_1dc

    :cond_134
    move-object/from16 v16, v3

    :goto_136
    move v0, v14

    move-object/from16 v3, v16

    goto :goto_d2

    :cond_13a
    move-object/from16 v16, v3

    invoke-virtual {v10}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    instance-of v3, v0, Ljava/security/interfaces/RSAPrivateKey;
    :try_end_142
    .catchall {:try_start_110 .. :try_end_142} :catchall_131

    const-string v4, "EC"

    const-string v12, "RSA"

    if-eqz v3, :cond_14b

    move-object v0, v12

    :goto_149
    const/4 v3, 0x1

    goto :goto_151

    :cond_14b
    :try_start_14b
    instance-of v0, v0, Ljava/security/interfaces/ECPrivateKey;

    if-eqz v0, :cond_1b6

    move-object v0, v4

    goto :goto_149

    :goto_151
    invoke-static {v8, v12, v3}, Ll/q;->f1(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v13

    if-ne v13, v3, :cond_159

    move-object v4, v12

    goto :goto_161

    :cond_159
    invoke-static {v8, v4, v3}, Ll/q;->f1(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v12

    if-ne v12, v3, :cond_160

    goto :goto_161

    :cond_160
    move-object v4, v8

    :goto_161
    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18b

    sget-object v3, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Key algorithm mismatch in XML file. Tag said \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' but key is actually \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'. Using the correct derived algorithm."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lx4/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_18b
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1ad

    sget-object v3, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Duplicate key found for algorithm \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'. The later one in the file will be used."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lx4/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1ad
    new-instance v3, Ly4/d;

    invoke-direct {v3, v10, v11}, Ly4/d;-><init>(Ljava/security/KeyPair;Ljava/util/ArrayList;)V

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e1

    :cond_1b6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v10}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported key type found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1d9
    .catchall {:try_start_14b .. :try_end_1d9} :catchall_131

    :cond_1d9
    move-object/from16 v16, v3

    goto :goto_1e1

    :goto_1dc
    new-instance v5, La/d;

    invoke-direct {v5, v0}, La/d;-><init>(Ljava/lang/Throwable;)V

    :goto_1e1
    invoke-static {v5}, La/e;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_54

    sget-object v3, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to parse a <Key> entry for algorithm \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lx4/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_54

    :cond_201
    move-object/from16 v16, v3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20a

    goto :goto_220

    :cond_20a
    const/4 v4, 0x0

    const/4 v7, 0x0

    goto :goto_249

    :cond_20d
    move-object/from16 v16, v3

    const/4 v3, 0x1

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_54

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    if-eq v4, v5, :cond_240

    if-eq v4, v15, :cond_22c

    if-eq v4, v14, :cond_222

    :goto_220
    goto/16 :goto_54

    :cond_222
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_229

    goto :goto_220

    :cond_229
    move v6, v3

    goto/16 :goto_54

    :cond_22c
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_233

    goto :goto_220

    :cond_233
    const-string v0, "algorithm"

    const/4 v4, 0x0

    invoke-interface {v2, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clear()V

    move-object v8, v0

    move-object v9, v4

    goto :goto_249

    :cond_240
    const/4 v4, 0x0

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_248

    goto :goto_249

    :cond_248
    move v7, v3

    :goto_249
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move-object/from16 v3, v16

    goto/16 :goto_24

    :cond_251
    sget-object v0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Finished parsing, found "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " valid keys."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lx4/b;->c(Ljava/lang/String;)V

    return-object v1
.end method
