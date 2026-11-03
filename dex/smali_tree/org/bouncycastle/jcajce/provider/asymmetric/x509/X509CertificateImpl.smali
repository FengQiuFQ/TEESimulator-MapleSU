.class abstract Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;
.super Ljava/security/cert/X509Certificate;

# interfaces
.implements Lb2/b;


# instance fields
.field protected basicConstraints:Ll0/j;

.field protected bcHelper:Le2/b;

.field protected c:Ll0/m;

.field protected keyUsage:[Z

.field protected sigAlgName:Ljava/lang/String;

.field protected sigAlgParams:[B


# direct methods
.method public constructor <init>(Le2/b;Ll0/m;Ll0/j;[ZLjava/lang/String;[B)V
    .registers 7

    invoke-direct {p0}, Ljava/security/cert/X509Certificate;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->bcHelper:Le2/b;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Ll0/m;

    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->basicConstraints:Ll0/j;

    iput-object p4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->keyUsage:[Z

    iput-object p5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->sigAlgName:Ljava/lang/String;

    iput-object p6, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->sigAlgParams:[B

    return-void
.end method

.method private checkSignature(Ljava/security/PublicKey;Ljava/security/Signature;Lm/f;[B)V
    .registers 7

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Ll0/m;

    iget-object v1, v0, Ll0/m;->q:Ll0/b;

    iget-object v0, v0, Ll0/m;->d:Ll0/u0;

    iget-object v0, v0, Ll0/u0;->x:Ll0/b;

    invoke-static {v1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509SignatureUtil;->areEquivalentAlgorithms(Ll0/b;Ll0/b;)Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-static {p2, p3}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509SignatureUtil;->setSignatureParameters(Ljava/security/Signature;Lm/f;)V

    invoke-virtual {p2, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    :try_start_14
    new-instance p1, Ljava/io/BufferedOutputStream;

    new-instance p3, Lc2/c;

    const/4 v0, 0x0

    invoke-direct {p3, v0}, Lc2/c;-><init>(I)V

    iput-object p2, p3, Lc2/c;->d:Ljava/lang/Object;

    const/16 v0, 0x200

    invoke-direct {p1, p3, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Ll0/m;

    iget-object p0, p0, Ll0/m;->d:Ll0/u0;

    const-string p3, "DER"

    invoke-virtual {p0}, Ll0/u0;->d()Lm/u;

    move-result-object p0

    invoke-virtual {p0, p1, p3}, Lm/u;->k(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_33} :catch_42

    invoke-virtual {p2, p4}, Ljava/security/Signature;->verify([B)Z

    move-result p0

    if-eqz p0, :cond_3a

    return-void

    :cond_3a
    new-instance p0, Ljava/security/SignatureException;

    const-string p1, "certificate does not verify with supplied key"

    invoke-direct {p0, p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_42
    move-exception p0

    new-instance p1, Ljava/security/cert/CertificateEncodingException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4d
    new-instance p0, Ljava/security/cert/CertificateException;

    const-string p1, "signature algorithm in TBS cert not same as outer cert"

    invoke-direct {p0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private doVerify(Ljava/security/PublicKey;Lorg/bouncycastle/jcajce/provider/asymmetric/x509/SignatureCreator;)V
    .registers 14

    instance-of v0, p1, La2/d;

    const-string v1, "no matching key found"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_76

    iget-object v5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Ll0/m;

    iget-object v5, v5, Ll0/m;->q:Ll0/b;

    invoke-static {v5}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509SignatureUtil;->isCompositeAlgorithm(Ll0/b;)Z

    move-result v5

    if-eqz v5, :cond_76

    check-cast p1, La2/d;

    iget-object p1, p1, La2/d;->c:Ljava/util/List;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Ll0/m;

    iget-object v0, v0, Ll0/m;->q:Ll0/b;

    iget-object v0, v0, Ll0/b;->d:Lm/f;

    invoke-static {v0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v0

    iget-object v5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Ll0/m;

    iget-object v5, v5, Ll0/m;->x:Lm/b;

    invoke-virtual {v5}, Lm/b;->u()[B

    move-result-object v5

    invoke-static {v5}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v5

    move v6, v4

    :goto_2e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-eq v4, v7, :cond_6c

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_3b

    goto :goto_68

    :cond_3b
    invoke-virtual {v0, v4}, Lm/x;->v(I)Lm/f;

    move-result-object v7

    invoke-static {v7}, Ll0/b;->h(Ljava/lang/Object;)Ll0/b;

    move-result-object v7

    invoke-static {v7}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509SignatureUtil;->getSignatureName(Ll0/b;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2, v8}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/SignatureCreator;->createSignature(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v8

    :try_start_4b
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/security/PublicKey;

    iget-object v7, v7, Ll0/b;->d:Lm/f;

    invoke-virtual {v5, v4}, Lm/x;->v(I)Lm/f;

    move-result-object v10

    invoke-static {v10}, Lm/b;->t(Ljava/lang/Object;)Lm/b;

    move-result-object v10

    invoke-virtual {v10}, Lm/b;->u()[B

    move-result-object v10

    invoke-direct {p0, v9, v8, v7, v10}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->checkSignature(Ljava/security/PublicKey;Ljava/security/Signature;Lm/f;[B)V
    :try_end_62
    .catch Ljava/security/SignatureException; {:try_start_4b .. :try_end_62} :catch_65

    move-object v7, v2

    move v6, v3

    goto :goto_66

    :catch_65
    move-exception v7

    :goto_66
    if-nez v7, :cond_6b

    :goto_68
    add-int/lit8 v4, v4, 0x1

    goto :goto_2e

    :cond_6b
    throw v7

    :cond_6c
    if-eqz v6, :cond_70

    goto/16 :goto_107

    :cond_70
    new-instance p0, Ljava/security/InvalidKeyException;

    invoke-direct {p0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_76
    iget-object v5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Ll0/m;

    iget-object v5, v5, Ll0/m;->q:Ll0/b;

    invoke-static {v5}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509SignatureUtil;->isCompositeAlgorithm(Ll0/b;)Z

    move-result v5

    if-eqz v5, :cond_d3

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Ll0/m;

    iget-object v0, v0, Ll0/m;->q:Ll0/b;

    iget-object v0, v0, Ll0/b;->d:Lm/f;

    invoke-static {v0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v0

    iget-object v5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Ll0/m;

    iget-object v5, v5, Ll0/m;->x:Lm/b;

    invoke-virtual {v5}, Lm/b;->u()[B

    move-result-object v5

    invoke-static {v5}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v5

    move v6, v4

    :goto_97
    invoke-virtual {v5}, Lm/x;->size()I

    move-result v7

    if-eq v4, v7, :cond_ca

    invoke-virtual {v0, v4}, Lm/x;->v(I)Lm/f;

    move-result-object v7

    invoke-static {v7}, Ll0/b;->h(Ljava/lang/Object;)Ll0/b;

    move-result-object v7

    invoke-static {v7}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509SignatureUtil;->getSignatureName(Ll0/b;)Ljava/lang/String;

    move-result-object v8

    :try_start_a9
    invoke-interface {p2, v8}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/SignatureCreator;->createSignature(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v8

    iget-object v7, v7, Ll0/b;->d:Lm/f;

    invoke-virtual {v5, v4}, Lm/x;->v(I)Lm/f;

    move-result-object v9

    invoke-static {v9}, Lm/b;->t(Ljava/lang/Object;)Lm/b;

    move-result-object v9

    invoke-virtual {v9}, Lm/b;->u()[B

    move-result-object v9

    invoke-direct {p0, p1, v8, v7, v9}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->checkSignature(Ljava/security/PublicKey;Ljava/security/Signature;Lm/f;[B)V
    :try_end_be
    .catch Ljava/security/InvalidKeyException; {:try_start_a9 .. :try_end_be} :catch_c3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_a9 .. :try_end_be} :catch_c3
    .catch Ljava/security/SignatureException; {:try_start_a9 .. :try_end_be} :catch_c1

    move-object v7, v2

    move v6, v3

    goto :goto_c4

    :catch_c1
    move-exception v7

    goto :goto_c4

    :catch_c3
    move-object v7, v2

    :goto_c4
    if-nez v7, :cond_c9

    add-int/lit8 v4, v4, 0x1

    goto :goto_97

    :cond_c9
    throw v7

    :cond_ca
    if-eqz v6, :cond_cd

    goto :goto_107

    :cond_cd
    new-instance p0, Ljava/security/InvalidKeyException;

    invoke-direct {p0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d3
    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getSigAlgName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/SignatureCreator;->createSignature(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p2

    if-eqz v0, :cond_113

    sget-object v0, Lv1/c;->v:Lm/q;

    move-object v1, p1

    check-cast v1, La2/d;

    iget-object v2, v1, La2/d;->d:Ll0/b;

    iget-object v2, v2, Ll0/b;->c:Lm/q;

    invoke-virtual {v0, v2}, Lm/u;->n(Lm/u;)Z

    move-result v0

    if-eqz v0, :cond_113

    iget-object p1, v1, La2/d;->c:Ljava/util/List;

    :goto_ee
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eq v4, v0, :cond_10b

    :try_start_f4
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/PublicKey;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Ll0/m;

    iget-object v1, v1, Ll0/m;->q:Ll0/b;

    iget-object v1, v1, Ll0/b;->d:Lm/f;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getSignature()[B

    move-result-object v2

    invoke-direct {p0, v0, p2, v1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->checkSignature(Ljava/security/PublicKey;Ljava/security/Signature;Lm/f;[B)V
    :try_end_107
    .catch Ljava/security/InvalidKeyException; {:try_start_f4 .. :try_end_107} :catch_108

    :goto_107
    return-void

    :catch_108
    add-int/lit8 v4, v4, 0x1

    goto :goto_ee

    :cond_10b
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "no matching signature found"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_113
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Ll0/m;

    iget-object v0, v0, Ll0/m;->q:Ll0/b;

    iget-object v0, v0, Ll0/b;->d:Lm/f;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getSignature()[B

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->checkSignature(Ljava/security/PublicKey;Ljava/security/Signature;Lm/f;[B)V

    return-void
.end method

.method private static getAlternativeNames(Ll0/m;Lm/q;)Ljava/util/Collection;
    .registers 5

    invoke-static {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getExtensionOctets(Ll0/m;Lm/q;)[B

    move-result-object p0

    if-nez p0, :cond_8

    goto/16 :goto_98

    :cond_8
    :try_start_8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p0

    invoke-virtual {p0}, Lm/x;->w()Ljava/util/Enumeration;

    move-result-object p0

    :catch_15
    :goto_15
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_92

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ll0/y;->h(Ljava/lang/Object;)Ll0/y;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget v2, v0, Ll0/y;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v2, v0, Ll0/y;->d:I

    packed-switch v2, :pswitch_data_aa

    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad tag number: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Ll0/y;->d:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_4f
    iget-object v0, v0, Ll0/y;->c:Lm/f;

    invoke-static {v0}, Lm/q;->v(Ljava/lang/Object;)Lm/q;

    move-result-object v0

    invoke-virtual {v0}, Lm/q;->u()Ljava/lang/String;

    move-result-object v0

    goto :goto_87

    :pswitch_5a
    iget-object v0, v0, Ll0/y;->c:Lm/f;

    invoke-static {v0}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object v0

    iget-object v0, v0, Lm/r;->c:[B
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_62} :catch_9f

    :try_start_62
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0
    :try_end_6a
    .catch Ljava/net/UnknownHostException; {:try_start_62 .. :try_end_6a} :catch_15
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_6a} :catch_9f

    goto :goto_87

    :pswitch_6b
    :try_start_6b
    sget-object v2, Lk0/c;->j:Lk0/c;

    iget-object v0, v0, Ll0/y;->c:Lm/f;

    invoke-static {v2, v0}, Lj0/c;->h(Lj0/d;Ljava/lang/Object;)Lj0/c;

    move-result-object v0

    iget-object v2, v0, Lj0/c;->q:Lj0/d;

    invoke-interface {v2, v0}, Lj0/d;->b(Lj0/c;)Ljava/lang/String;

    move-result-object v0

    goto :goto_87

    :pswitch_7a
    iget-object v0, v0, Ll0/y;->c:Lm/f;

    check-cast v0, Lm/z;

    invoke-interface {v0}, Lm/z;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_87

    :pswitch_83
    invoke-virtual {v0}, Lm/n;->getEncoded()[B

    move-result-object v0

    :goto_87
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_92
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_9a

    :goto_98
    const/4 p0, 0x0

    return-object p0

    :cond_9a
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_9e} :catch_9f

    return-object p0

    :catch_9f
    move-exception p0

    new-instance p1, Ljava/security/cert/CertificateParsingException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_aa
    .packed-switch 0x0
        :pswitch_83
        :pswitch_7a
        :pswitch_7a
        :pswitch_83
        :pswitch_6b
        :pswitch_83
        :pswitch_7a
        :pswitch_5a
        :pswitch_4f
    .end packed-switch
.end method

.method public static getExtensionOctets(Ll0/m;Lm/q;)[B
    .registers 2

    iget-object p0, p0, Ll0/m;->d:Ll0/u0;

    iget-object p0, p0, Ll0/u0;->E1:Ll0/w;

    invoke-static {p0, p1}, Ll0/w;->i(Ll0/w;Lm/q;)Lm/r;

    move-result-object p0

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return-object p0

    :cond_c
    iget-object p0, p0, Lm/r;->c:[B

    return-object p0
.end method


# virtual methods
.method public checkValidity()V
    .registers 2

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->checkValidity(Ljava/util/Date;)V

    return-void
.end method

.method public checkValidity(Ljava/util/Date;)V
    .registers 6

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getNotAfter()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3f

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getNotBefore()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-ltz p1, :cond_21

    return-void

    :cond_21
    new-instance p1, Ljava/security/cert/CertificateNotYetValidException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "certificate not valid till "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Ll0/m;

    invoke-virtual {p0}, Ll0/m;->j()Ll0/x0;

    move-result-object p0

    invoke-virtual {p0}, Ll0/x0;->j()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/cert/CertificateNotYetValidException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3f
    new-instance p1, Ljava/security/cert/CertificateExpiredException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "certificate expired on "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Ll0/m;

    invoke-virtual {p0}, Ll0/m;->h()Ll0/x0;

    move-result-object p0

    invoke-virtual {p0}, Ll0/x0;->j()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/cert/CertificateExpiredException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getBasicConstraints()I
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->basicConstraints:Ll0/j;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Ll0/j;->i()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_1a

    :cond_b
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->basicConstraints:Ll0/j;

    iget-object p0, p0, Ll0/j;->d:Lm/l;

    if-nez p0, :cond_15

    const p0, 0x7fffffff

    return p0

    :cond_15
    invoke-virtual {p0}, Lm/l;->w()I

    move-result p0

    return p0

    :cond_1a
    :goto_1a
    const/4 p0, -0x1

    return p0
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .registers 5

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getVersion()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_37

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Ll0/m;

    iget-object p0, p0, Ll0/m;->d:Ll0/u0;

    iget-object p0, p0, Ll0/u0;->E1:Ll0/w;

    if-eqz p0, :cond_37

    iget-object v1, p0, Ll0/w;->d:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :cond_1a
    :goto_1a
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm/q;

    invoke-virtual {p0, v2}, Ll0/w;->h(Lm/q;)Ll0/v;

    move-result-object v3

    iget-boolean v3, v3, Ll0/v;->d:Z

    if-eqz v3, :cond_1a

    invoke-virtual {v2}, Lm/q;->u()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_36
    return-object v0

    :cond_37
    const/4 p0, 0x0

    return-object p0
.end method

.method public getExtendedKeyUsage()Ljava/util/List;
    .registers 4

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Ll0/m;

    sget-object v0, Ll0/v;->N1:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getExtensionOctets(Ll0/m;Lm/q;)[B

    move-result-object p0

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return-object p0

    :cond_c
    :try_start_c
    invoke-static {p0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_16
    invoke-virtual {p0}, Lm/x;->size()I

    move-result v2

    if-eq v1, v2, :cond_2c

    invoke-virtual {p0, v1}, Lm/x;->v(I)Lm/f;

    move-result-object v2

    check-cast v2, Lm/q;

    invoke-virtual {v2}, Lm/q;->u()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_2c
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_30} :catch_31

    return-object p0

    :catch_31
    new-instance p0, Ljava/security/cert/CertificateParsingException;

    const-string v0, "error processing extended key usage extension"

    invoke-direct {p0, v0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .registers 2

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Ll0/m;

    iget-object p0, p0, Ll0/m;->d:Ll0/u0;

    iget-object p0, p0, Ll0/u0;->E1:Ll0/w;

    invoke-static {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509SignatureUtil;->getExtensionValue(Ll0/w;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public getIssuerAlternativeNames()Ljava/util/Collection;
    .registers 2

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Ll0/m;

    sget-object v0, Ll0/v;->A1:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getAlternativeNames(Ll0/m;Lm/q;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public getIssuerDN()Ljava/security/Principal;
    .registers 2

    new-instance v0, Lf2/c;

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Ll0/m;

    iget-object p0, p0, Ll0/m;->d:Ll0/u0;

    iget-object p0, p0, Ll0/u0;->y:Lj0/c;

    invoke-direct {v0, p0}, Lf2/c;-><init>(Lj0/c;)V

    return-object v0
.end method

.method public getIssuerUniqueID()[Z
    .registers 8

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Ll0/m;

    iget-object p0, p0, Ll0/m;->d:Ll0/u0;

    iget-object p0, p0, Ll0/u0;->C1:Lm/b;

    if-eqz p0, :cond_30

    invoke-virtual {p0}, Lm/b;->s()[B

    move-result-object v0

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {p0}, Lm/b;->f()I

    move-result p0

    sub-int/2addr v1, p0

    new-array p0, v1, [Z

    const/4 v2, 0x0

    move v3, v2

    :goto_18
    if-eq v3, v1, :cond_2f

    div-int/lit8 v4, v3, 0x8

    aget-byte v4, v0, v4

    rem-int/lit8 v5, v3, 0x8

    const/16 v6, 0x80

    ushr-int v5, v6, v5

    and-int/2addr v4, v5

    if-eqz v4, :cond_29

    const/4 v4, 0x1

    goto :goto_2a

    :cond_29
    move v4, v2

    :goto_2a
    aput-boolean v4, p0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_2f
    return-object p0

    :cond_30
    const/4 p0, 0x0

    return-object p0
.end method

.method public getIssuerX500Name()Lj0/c;
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Ll0/m;

    iget-object p0, p0, Ll0/m;->d:Ll0/u0;

    iget-object p0, p0, Ll0/u0;->y:Lj0/c;

    return-object p0
.end method

.method public getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;
    .registers 2

    :try_start_0
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Ll0/m;

    iget-object p0, p0, Ll0/m;->d:Ll0/u0;

    iget-object p0, p0, Ll0/u0;->y:Lj0/c;

    invoke-virtual {p0}, Lm/n;->g()[B

    move-result-object p0

    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v0, p0}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_f} :catch_10

    return-object v0

    :catch_10
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "can\'t encode issuer DN"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getKeyUsage()[Z
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->keyUsage:[Z

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    invoke-virtual {p0}, [Z->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Z

    return-object p0
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .registers 5

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getVersion()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_37

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Ll0/m;

    iget-object p0, p0, Ll0/m;->d:Ll0/u0;

    iget-object p0, p0, Ll0/u0;->E1:Ll0/w;

    if-eqz p0, :cond_37

    iget-object v1, p0, Ll0/w;->d:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :cond_1a
    :goto_1a
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm/q;

    invoke-virtual {p0, v2}, Ll0/w;->h(Lm/q;)Ll0/v;

    move-result-object v3

    iget-boolean v3, v3, Ll0/v;->d:Z

    if-nez v3, :cond_1a

    invoke-virtual {v2}, Lm/q;->u()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_36
    return-object v0

    :cond_37
    const/4 p0, 0x0

    return-object p0
.end method

.method public getNotAfter()Ljava/util/Date;
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Ll0/m;

    invoke-virtual {p0}, Ll0/m;->h()Ll0/x0;

    move-result-object p0

    invoke-virtual {p0}, Ll0/x0;->h()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public getNotBefore()Ljava/util/Date;
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Ll0/m;

    invoke-virtual {p0}, Ll0/m;->j()Ll0/x0;

    move-result-object p0

    invoke-virtual {p0}, Ll0/x0;->h()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .registers 3

    :try_start_0
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Ll0/m;

    iget-object p0, p0, Ll0/m;->d:Ll0/u0;

    iget-object p0, p0, Ll0/u0;->B1:Ll0/p0;

    invoke-static {p0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->getPublicKey(Ll0/p0;)Ljava/security/PublicKey;

    move-result-object p0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "failed to recover public key: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lb/b;->c(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Ll0/m;

    iget-object p0, p0, Ll0/m;->d:Ll0/u0;

    iget-object p0, p0, Ll0/u0;->q:Lm/l;

    invoke-virtual {p0}, Lm/l;->t()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public getSigAlgName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->sigAlgName:Ljava/lang/String;

    return-object p0
.end method

.method public getSigAlgOID()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Ll0/m;

    iget-object p0, p0, Ll0/m;->q:Ll0/b;

    iget-object p0, p0, Ll0/b;->c:Lm/q;

    invoke-virtual {p0}, Lm/q;->u()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSigAlgParams()[B
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->sigAlgParams:[B

    invoke-static {p0}, Lm4/d;->e([B)[B

    move-result-object p0

    return-object p0
.end method

.method public getSignature()[B
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Ll0/m;

    iget-object p0, p0, Ll0/m;->x:Lm/b;

    invoke-virtual {p0}, Lm/b;->u()[B

    move-result-object p0

    return-object p0
.end method

.method public getSubjectAlternativeNames()Ljava/util/Collection;
    .registers 2

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Ll0/m;

    sget-object v0, Ll0/v;->z1:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getAlternativeNames(Ll0/m;Lm/q;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public getSubjectDN()Ljava/security/Principal;
    .registers 2

    new-instance v0, Lf2/c;

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Ll0/m;

    iget-object p0, p0, Ll0/m;->d:Ll0/u0;

    iget-object p0, p0, Ll0/u0;->A1:Lj0/c;

    invoke-direct {v0, p0}, Lf2/c;-><init>(Lj0/c;)V

    return-object v0
.end method

.method public getSubjectUniqueID()[Z
    .registers 8

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Ll0/m;

    iget-object p0, p0, Ll0/m;->d:Ll0/u0;

    iget-object p0, p0, Ll0/u0;->D1:Lm/b;

    if-eqz p0, :cond_30

    invoke-virtual {p0}, Lm/b;->s()[B

    move-result-object v0

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {p0}, Lm/b;->f()I

    move-result p0

    sub-int/2addr v1, p0

    new-array p0, v1, [Z

    const/4 v2, 0x0

    move v3, v2

    :goto_18
    if-eq v3, v1, :cond_2f

    div-int/lit8 v4, v3, 0x8

    aget-byte v4, v0, v4

    rem-int/lit8 v5, v3, 0x8

    const/16 v6, 0x80

    ushr-int v5, v6, v5

    and-int/2addr v4, v5

    if-eqz v4, :cond_29

    const/4 v4, 0x1

    goto :goto_2a

    :cond_29
    move v4, v2

    :goto_2a
    aput-boolean v4, p0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_2f
    return-object p0

    :cond_30
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSubjectX500Name()Lj0/c;
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Ll0/m;

    iget-object p0, p0, Ll0/m;->d:Ll0/u0;

    iget-object p0, p0, Ll0/u0;->A1:Lj0/c;

    return-object p0
.end method

.method public getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;
    .registers 2

    :try_start_0
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Ll0/m;

    iget-object p0, p0, Ll0/m;->d:Ll0/u0;

    iget-object p0, p0, Ll0/u0;->A1:Lj0/c;

    invoke-virtual {p0}, Lm/n;->g()[B

    move-result-object p0

    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v0, p0}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_f} :catch_10

    return-object v0

    :catch_10
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "can\'t encode subject DN"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getTBSCertificate()[B
    .registers 2

    :try_start_0
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Ll0/m;

    iget-object p0, p0, Ll0/m;->d:Ll0/u0;

    invoke-virtual {p0}, Lm/n;->g()[B

    move-result-object p0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    new-instance v0, Ljava/security/cert/CertificateEncodingException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTBSCertificateNative()Ll0/u0;
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Ll0/m;

    iget-object p0, p0, Ll0/m;->d:Ll0/u0;

    return-object p0
.end method

.method public getVersion()I
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Ll0/m;

    iget-object p0, p0, Ll0/m;->d:Ll0/u0;

    iget-object p0, p0, Ll0/u0;->d:Lm/l;

    invoke-virtual {p0}, Lm/l;->y()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .registers 4

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getVersion()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_84

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Ll0/m;

    iget-object p0, p0, Ll0/m;->d:Ll0/u0;

    iget-object p0, p0, Ll0/u0;->E1:Ll0/w;

    if-eqz p0, :cond_84

    iget-object v0, p0, Ll0/w;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :cond_15
    :goto_15
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_84

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm/q;

    sget-object v2, Ll0/v;->y:Lm/q;

    invoke-virtual {v2, v1}, Lm/u;->n(Lm/u;)Z

    move-result v2

    if-nez v2, :cond_15

    sget-object v2, Ll0/v;->J1:Lm/q;

    invoke-virtual {v2, v1}, Lm/u;->n(Lm/u;)Z

    move-result v2

    if-nez v2, :cond_15

    sget-object v2, Ll0/v;->K1:Lm/q;

    invoke-virtual {v2, v1}, Lm/u;->n(Lm/u;)Z

    move-result v2

    if-nez v2, :cond_15

    sget-object v2, Ll0/v;->P1:Lm/q;

    invoke-virtual {v2, v1}, Lm/u;->n(Lm/u;)Z

    move-result v2

    if-nez v2, :cond_15

    sget-object v2, Ll0/v;->I1:Lm/q;

    invoke-virtual {v2, v1}, Lm/u;->n(Lm/u;)Z

    move-result v2

    if-nez v2, :cond_15

    sget-object v2, Ll0/v;->F1:Lm/q;

    invoke-virtual {v2, v1}, Lm/u;->n(Lm/u;)Z

    move-result v2

    if-nez v2, :cond_15

    sget-object v2, Ll0/v;->E1:Lm/q;

    invoke-virtual {v2, v1}, Lm/u;->n(Lm/u;)Z

    move-result v2

    if-nez v2, :cond_15

    sget-object v2, Ll0/v;->M1:Lm/q;

    invoke-virtual {v2, v1}, Lm/u;->n(Lm/u;)Z

    move-result v2

    if-nez v2, :cond_15

    sget-object v2, Ll0/v;->B1:Lm/q;

    invoke-virtual {v2, v1}, Lm/u;->n(Lm/u;)Z

    move-result v2

    if-nez v2, :cond_15

    sget-object v2, Ll0/v;->z1:Lm/q;

    invoke-virtual {v2, v1}, Lm/u;->n(Lm/u;)Z

    move-result v2

    if-nez v2, :cond_15

    sget-object v2, Ll0/v;->H1:Lm/q;

    invoke-virtual {v2, v1}, Lm/u;->n(Lm/u;)Z

    move-result v2

    if-eqz v2, :cond_7a

    goto :goto_15

    :cond_7a
    invoke-virtual {p0, v1}, Ll0/w;->h(Lm/q;)Ll0/v;

    move-result-object v1

    iget-boolean v1, v1, Ll0/v;->d:Z

    if-eqz v1, :cond_15

    const/4 p0, 0x1

    return p0

    :cond_84
    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    const-string v0, " value = "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lm4/m;->a:Ljava/lang/String;

    const-string v3, "  [0]         Version: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getVersion()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "         SerialNumber: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "             IssuerDN: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getIssuerDN()Ljava/security/Principal;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "           Start Date: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getNotBefore()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "           Final Date: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getNotAfter()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "            SubjectDN: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getSubjectDN()Ljava/security/Principal;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "           Public Key: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  Signature Algorithm: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getSigAlgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getSignature()[B

    move-result-object v3

    invoke-static {v3, v1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509SignatureUtil;->prettyPrintSignature([BLjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Ll0/m;

    iget-object p0, p0, Ll0/m;->d:Ll0/u0;

    iget-object p0, p0, Ll0/u0;->E1:Ll0/w;

    if-eqz p0, :cond_16f

    iget-object v3, p0, Ll0/w;->d:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_a1

    const-string v4, "       Extensions: \n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a1
    :goto_a1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_16f

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lm/q;

    invoke-virtual {p0, v4}, Ll0/w;->h(Lm/q;)Ll0/v;

    move-result-object v5

    iget-object v6, v5, Ll0/v;->q:Lm/r;

    if-eqz v6, :cond_16a

    iget-object v6, v6, Lm/r;->c:[B

    new-instance v7, Lm/k;

    invoke-direct {v7, v6}, Lm/k;-><init>([B)V

    const-string v6, "                       critical("

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v5, Ll0/v;->d:Z

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ") "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_cb
    sget-object v5, Ll0/v;->B1:Lm/q;

    invoke-virtual {v4, v5}, Lm/u;->n(Lm/u;)Z

    move-result v5

    if-eqz v5, :cond_e2

    invoke-virtual {v7}, Lm/k;->f()Lm/u;

    move-result-object v5

    invoke-static {v5}, Ll0/j;->h(Ljava/lang/Object;)Ll0/j;

    move-result-object v5

    :goto_db
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_de
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a1

    :cond_e2
    sget-object v5, Ll0/v;->y:Lm/q;

    invoke-virtual {v4, v5}, Lm/u;->n(Lm/u;)Z

    move-result v5

    if-eqz v5, :cond_101

    invoke-virtual {v7}, Lm/k;->f()Lm/u;

    move-result-object v5

    if-eqz v5, :cond_fc

    new-instance v6, Ll0/f0;

    invoke-static {v5}, Lm/b;->t(Ljava/lang/Object;)Lm/b;

    move-result-object v5

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v5, v6, Ll0/f0;->c:Lm/b;

    goto :goto_fd

    :cond_fc
    const/4 v6, 0x0

    :goto_fd
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_de

    :cond_101
    sget-object v5, Lv1/c;->a:Lm/q;

    invoke-virtual {v4, v5}, Lm/u;->n(Lm/u;)Z

    move-result v5

    if-eqz v5, :cond_117

    new-instance v5, Lv1/d;

    invoke-virtual {v7}, Lm/k;->f()Lm/u;

    move-result-object v6

    invoke-static {v6}, Lm/b;->t(Ljava/lang/Object;)Lm/b;

    move-result-object v6

    invoke-direct {v5, v6}, Lv1/d;-><init>(Lm/b;)V

    goto :goto_db

    :cond_117
    sget-object v5, Lv1/c;->b:Lm/q;

    invoke-virtual {v4, v5}, Lm/u;->n(Lm/u;)Z

    move-result v5

    if-eqz v5, :cond_12e

    new-instance v5, Lv1/e;

    invoke-virtual {v7}, Lm/k;->f()Lm/u;

    move-result-object v6

    invoke-static {v6}, Lm/u0;->r(Ljava/lang/Object;)Lm/u0;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lv1/e;-><init>(Lm/u0;I)V

    goto :goto_db

    :cond_12e
    sget-object v5, Lv1/c;->c:Lm/q;

    invoke-virtual {v4, v5}, Lm/u;->n(Lm/u;)Z

    move-result v5

    if-eqz v5, :cond_145

    new-instance v5, Lv1/e;

    invoke-virtual {v7}, Lm/k;->f()Lm/u;

    move-result-object v6

    invoke-static {v6}, Lm/u0;->r(Ljava/lang/Object;)Lm/u0;

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Lv1/e;-><init>(Lm/u0;I)V

    goto :goto_db

    :cond_145
    invoke-virtual {v4}, Lm/q;->u()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lm/k;->f()Lm/u;

    move-result-object v5

    invoke-static {v5}, Lt4/d;->H(Lm/f;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_15a
    .catch Ljava/lang/Exception; {:try_start_cb .. :try_end_15a} :catch_15b

    goto :goto_de

    :catch_15b
    invoke-virtual {v4}, Lm/q;->u()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "*****"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_16a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a1

    :cond_16f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final verify(Ljava/security/PublicKey;)V
    .registers 3

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl$1;

    invoke-direct {v0, p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl$1;-><init>(Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;)V

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->doVerify(Ljava/security/PublicKey;Lorg/bouncycastle/jcajce/provider/asymmetric/x509/SignatureCreator;)V

    return-void
.end method

.method public final verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .registers 4

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl$2;

    invoke-direct {v0, p0, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl$2;-><init>(Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->doVerify(Ljava/security/PublicKey;Lorg/bouncycastle/jcajce/provider/asymmetric/x509/SignatureCreator;)V

    return-void
.end method

.method public final verify(Ljava/security/PublicKey;Ljava/security/Provider;)V
    .registers 4

    :try_start_0
    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl$3;

    invoke-direct {v0, p0, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl$3;-><init>(Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;Ljava/security/Provider;)V

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->doVerify(Ljava/security/PublicKey;Lorg/bouncycastle/jcajce/provider/asymmetric/x509/SignatureCreator;)V
    :try_end_8
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    new-instance p1, Ljava/security/NoSuchAlgorithmException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "provider issue: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
