.class abstract Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;
.super Ljava/security/cert/X509CRL;


# instance fields
.field protected bcHelper:Le2/b;

.field protected c:Ll0/n;

.field protected isIndirect:Z

.field protected sigAlgName:Ljava/lang/String;

.field protected sigAlgParams:[B


# direct methods
.method public constructor <init>(Le2/b;Ll0/n;Ljava/lang/String;[BZ)V
    .registers 6

    invoke-direct {p0}, Ljava/security/cert/X509CRL;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->bcHelper:Le2/b;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->c:Ll0/n;

    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->sigAlgName:Ljava/lang/String;

    iput-object p4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->sigAlgParams:[B

    iput-boolean p5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->isIndirect:Z

    return-void
.end method

.method private checkSignature(Ljava/security/PublicKey;Ljava/security/Signature;Lm/f;[B)V
    .registers 7

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->c:Ll0/n;

    iget-object v1, v0, Ll0/n;->d:Ll0/b;

    iget-object v0, v0, Ll0/n;->c:Ll0/t0;

    iget-object v0, v0, Ll0/t0;->d:Ll0/b;

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

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->c:Ll0/n;

    iget-object p0, p0, Ll0/n;->c:Ll0/t0;

    const-string p3, "DER"

    invoke-virtual {p0}, Ll0/t0;->d()Lm/u;

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

    const-string p1, "CRL does not verify with supplied public key."

    invoke-direct {p0, p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_42
    move-exception p0

    new-instance p1, Ljava/security/cert/CRLException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4d
    new-instance p0, Ljava/security/cert/CRLException;

    const-string p1, "Signature algorithm on CertificateList does not match TbsCertList."

    invoke-direct {p0, p1}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private doVerify(Ljava/security/PublicKey;Lorg/bouncycastle/jcajce/provider/asymmetric/x509/SignatureCreator;)V
    .registers 14

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->c:Ll0/n;

    iget-object v1, v0, Ll0/n;->d:Ll0/b;

    iget-object v0, v0, Ll0/n;->c:Ll0/t0;

    iget-object v0, v0, Ll0/t0;->d:Ll0/b;

    invoke-virtual {v1, v0}, Lm/n;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_112

    instance-of v0, p1, La2/d;

    const-string v1, "no matching key found"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_83

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->c:Ll0/n;

    iget-object v0, v0, Ll0/n;->d:Ll0/b;

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509SignatureUtil;->isCompositeAlgorithm(Ll0/b;)Z

    move-result v0

    if-eqz v0, :cond_83

    check-cast p1, La2/d;

    iget-object p1, p1, La2/d;->c:Ljava/util/List;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->c:Ll0/n;

    iget-object v0, v0, Ll0/n;->d:Ll0/b;

    iget-object v0, v0, Ll0/b;->d:Lm/f;

    invoke-static {v0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v0

    iget-object v5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->c:Ll0/n;

    iget-object v5, v5, Ll0/n;->q:Lm/b;

    invoke-virtual {v5}, Lm/b;->u()[B

    move-result-object v5

    invoke-static {v5}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v5

    move v6, v4

    :goto_3c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-eq v4, v7, :cond_7a

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_49

    goto :goto_76

    :cond_49
    invoke-virtual {v0, v4}, Lm/x;->v(I)Lm/f;

    move-result-object v7

    invoke-static {v7}, Ll0/b;->h(Ljava/lang/Object;)Ll0/b;

    move-result-object v7

    invoke-static {v7}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509SignatureUtil;->getSignatureName(Ll0/b;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2, v8}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/SignatureCreator;->createSignature(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v8

    :try_start_59
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

    invoke-direct {p0, v9, v8, v7, v10}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->checkSignature(Ljava/security/PublicKey;Ljava/security/Signature;Lm/f;[B)V
    :try_end_70
    .catch Ljava/security/SignatureException; {:try_start_59 .. :try_end_70} :catch_73

    move-object v7, v2

    move v6, v3

    goto :goto_74

    :catch_73
    move-exception v7

    :goto_74
    if-nez v7, :cond_79

    :goto_76
    add-int/lit8 v4, v4, 0x1

    goto :goto_3c

    :cond_79
    throw v7

    :cond_7a
    if-eqz v6, :cond_7d

    goto :goto_d9

    :cond_7d
    new-instance p0, Ljava/security/InvalidKeyException;

    invoke-direct {p0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_83
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->c:Ll0/n;

    iget-object v0, v0, Ll0/n;->d:Ll0/b;

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509SignatureUtil;->isCompositeAlgorithm(Ll0/b;)Z

    move-result v0

    if-eqz v0, :cond_e0

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->c:Ll0/n;

    iget-object v0, v0, Ll0/n;->d:Ll0/b;

    iget-object v0, v0, Ll0/b;->d:Lm/f;

    invoke-static {v0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v0

    iget-object v5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->c:Ll0/n;

    iget-object v5, v5, Ll0/n;->q:Lm/b;

    invoke-virtual {v5}, Lm/b;->u()[B

    move-result-object v5

    invoke-static {v5}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v5

    move v6, v4

    :goto_a4
    invoke-virtual {v5}, Lm/x;->size()I

    move-result v7

    if-eq v4, v7, :cond_d7

    invoke-virtual {v0, v4}, Lm/x;->v(I)Lm/f;

    move-result-object v7

    invoke-static {v7}, Ll0/b;->h(Ljava/lang/Object;)Ll0/b;

    move-result-object v7

    invoke-static {v7}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509SignatureUtil;->getSignatureName(Ll0/b;)Ljava/lang/String;

    move-result-object v8

    :try_start_b6
    invoke-interface {p2, v8}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/SignatureCreator;->createSignature(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v8

    iget-object v7, v7, Ll0/b;->d:Lm/f;

    invoke-virtual {v5, v4}, Lm/x;->v(I)Lm/f;

    move-result-object v9

    invoke-static {v9}, Lm/b;->t(Ljava/lang/Object;)Lm/b;

    move-result-object v9

    invoke-virtual {v9}, Lm/b;->u()[B

    move-result-object v9

    invoke-direct {p0, p1, v8, v7, v9}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->checkSignature(Ljava/security/PublicKey;Ljava/security/Signature;Lm/f;[B)V
    :try_end_cb
    .catch Ljava/security/InvalidKeyException; {:try_start_b6 .. :try_end_cb} :catch_d0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_b6 .. :try_end_cb} :catch_d0
    .catch Ljava/security/SignatureException; {:try_start_b6 .. :try_end_cb} :catch_ce

    move-object v7, v2

    move v6, v3

    goto :goto_d1

    :catch_ce
    move-exception v7

    goto :goto_d1

    :catch_d0
    move-object v7, v2

    :goto_d1
    if-nez v7, :cond_d6

    add-int/lit8 v4, v4, 0x1

    goto :goto_a4

    :cond_d6
    throw v7

    :cond_d7
    if-eqz v6, :cond_da

    :goto_d9
    return-void

    :cond_da
    new-instance p0, Ljava/security/InvalidKeyException;

    invoke-direct {p0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e0
    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->getSigAlgName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/SignatureCreator;->createSignature(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->sigAlgParams:[B

    if-nez v0, :cond_f4

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->getSignature()[B

    move-result-object v0

    invoke-direct {p0, p1, p2, v2, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->checkSignature(Ljava/security/PublicKey;Ljava/security/Signature;Lm/f;[B)V

    return-void

    :cond_f4
    :try_start_f4
    invoke-static {v0}, Lm/u;->o([B)Lm/u;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->getSignature()[B

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->checkSignature(Ljava/security/PublicKey;Ljava/security/Signature;Lm/f;[B)V
    :try_end_ff
    .catch Ljava/io/IOException; {:try_start_f4 .. :try_end_ff} :catch_100

    return-void

    :catch_100
    move-exception p0

    new-instance p1, Ljava/security/SignatureException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "cannot decode signature parameters: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2}, Lb/b;->c(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_112
    new-instance p0, Ljava/security/cert/CRLException;

    const-string p1, "Signature algorithm on CertificateList does not match TBSCertList."

    invoke-direct {p0, p1}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getExtensionOIDs(Z)Ljava/util/Set;
    .registers 6

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->getVersion()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_37

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->c:Ll0/n;

    iget-object p0, p0, Ll0/n;->c:Ll0/t0;

    iget-object p0, p0, Ll0/t0;->A1:Ll0/w;

    if-eqz p0, :cond_37

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

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

    if-ne p1, v3, :cond_1a

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

.method public static getExtensionOctets(Ll0/n;Lm/q;)[B
    .registers 2

    iget-object p0, p0, Ll0/n;->c:Ll0/t0;

    iget-object p0, p0, Ll0/t0;->A1:Ll0/w;

    invoke-static {p0, p1}, Ll0/w;->i(Ll0/w;Lm/q;)Lm/r;

    move-result-object p0

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return-object p0

    :cond_c
    iget-object p0, p0, Lm/r;->c:[B

    return-object p0
.end method

.method private loadCRLEntries()Ljava/util/Set;
    .registers 7

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->c:Ll0/n;

    invoke-virtual {v1}, Ll0/n;->i()Ljava/util/Enumeration;

    move-result-object v1

    const/4 v2, 0x0

    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_4e

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ll0/q0;

    new-instance v4, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;

    iget-boolean v5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->isIndirect:Z

    invoke-direct {v4, v3, v5, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;-><init>(Ll0/q0;ZLj0/c;)V

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-boolean v4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->isIndirect:Z

    if-eqz v4, :cond_c

    invoke-virtual {v3}, Ll0/q0;->k()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {v3}, Ll0/q0;->h()Ll0/w;

    move-result-object v3

    sget-object v4, Ll0/v;->G1:Lm/q;

    invoke-virtual {v3, v4}, Ll0/w;->h(Lm/q;)Ll0/v;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ll0/v;->h()Lm/u;

    move-result-object v2

    invoke-static {v2}, Ll0/z;->h(Ljava/lang/Object;)Ll0/z;

    move-result-object v2

    invoke-virtual {v2}, Ll0/z;->i()[Ll0/y;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v2, v2, Ll0/y;->c:Lm/f;

    invoke-static {v2}, Lj0/c;->i(Ljava/lang/Object;)Lj0/c;

    move-result-object v2

    goto :goto_c

    :cond_4e
    return-object v0
.end method


# virtual methods
.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->getExtensionOIDs(Z)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .registers 2

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->c:Ll0/n;

    iget-object p0, p0, Ll0/n;->c:Ll0/t0;

    iget-object p0, p0, Ll0/t0;->A1:Ll0/w;

    invoke-static {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509SignatureUtil;->getExtensionValue(Ll0/w;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public getIssuerDN()Ljava/security/Principal;
    .registers 2

    new-instance v0, Lf2/c;

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->c:Ll0/n;

    iget-object p0, p0, Ll0/n;->c:Ll0/t0;

    iget-object p0, p0, Ll0/t0;->q:Lj0/c;

    iget-object p0, p0, Lj0/c;->y:Lm/a1;

    invoke-static {p0}, Lj0/c;->i(Ljava/lang/Object;)Lj0/c;

    move-result-object p0

    invoke-direct {v0, p0}, Lf2/c;-><init>(Lj0/c;)V

    return-object v0
.end method

.method public getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;
    .registers 2

    :try_start_0
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->c:Ll0/n;

    iget-object p0, p0, Ll0/n;->c:Ll0/t0;

    iget-object p0, p0, Ll0/t0;->q:Lj0/c;

    invoke-virtual {p0}, Lm/n;->getEncoded()[B

    move-result-object p0

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

.method public getNextUpdate()Ljava/util/Date;
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->c:Ll0/n;

    iget-object p0, p0, Ll0/n;->c:Ll0/t0;

    iget-object p0, p0, Ll0/t0;->y:Ll0/x0;

    if-nez p0, :cond_a

    const/4 p0, 0x0

    return-object p0

    :cond_a
    invoke-virtual {p0}, Ll0/x0;->h()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->getExtensionOIDs(Z)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getRevokedCertificate(Ljava/math/BigInteger;)Ljava/security/cert/X509CRLEntry;
    .registers 7

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->c:Ll0/n;

    invoke-virtual {v0}, Ll0/n;->i()Ljava/util/Enumeration;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_52

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ll0/q0;

    invoke-virtual {v3}, Ll0/q0;->j()Lm/l;

    move-result-object v4

    invoke-virtual {v4, p1}, Lm/l;->v(Ljava/math/BigInteger;)Z

    move-result v4

    if-eqz v4, :cond_26

    new-instance p1, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;

    iget-boolean p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->isIndirect:Z

    invoke-direct {p1, v3, p0, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;-><init>(Ll0/q0;ZLj0/c;)V

    return-object p1

    :cond_26
    iget-boolean v4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->isIndirect:Z

    if-eqz v4, :cond_8

    invoke-virtual {v3}, Ll0/q0;->k()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v3}, Ll0/q0;->h()Ll0/w;

    move-result-object v3

    sget-object v4, Ll0/v;->G1:Lm/q;

    invoke-virtual {v3, v4}, Ll0/w;->h(Lm/q;)Ll0/v;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ll0/v;->h()Lm/u;

    move-result-object v2

    invoke-static {v2}, Ll0/z;->h(Ljava/lang/Object;)Ll0/z;

    move-result-object v2

    invoke-virtual {v2}, Ll0/z;->i()[Ll0/y;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v2, v2, Ll0/y;->c:Lm/f;

    invoke-static {v2}, Lj0/c;->i(Ljava/lang/Object;)Lj0/c;

    move-result-object v2

    goto :goto_8

    :cond_52
    return-object v1
.end method

.method public getRevokedCertificates()Ljava/util/Set;
    .registers 2

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->loadCRLEntries()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSigAlgName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->sigAlgName:Ljava/lang/String;

    return-object p0
.end method

.method public getSigAlgOID()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->c:Ll0/n;

    iget-object p0, p0, Ll0/n;->d:Ll0/b;

    iget-object p0, p0, Ll0/b;->c:Lm/q;

    invoke-virtual {p0}, Lm/q;->u()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSigAlgParams()[B
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->sigAlgParams:[B

    invoke-static {p0}, Lm4/d;->e([B)[B

    move-result-object p0

    return-object p0
.end method

.method public getSignature()[B
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->c:Ll0/n;

    iget-object p0, p0, Ll0/n;->q:Lm/b;

    invoke-virtual {p0}, Lm/b;->u()[B

    move-result-object p0

    return-object p0
.end method

.method public getTBSCertList()[B
    .registers 2

    :try_start_0
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->c:Ll0/n;

    iget-object p0, p0, Ll0/n;->c:Ll0/t0;

    invoke-virtual {p0}, Lm/n;->g()[B

    move-result-object p0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    new-instance v0, Ljava/security/cert/CRLException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getThisUpdate()Ljava/util/Date;
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->c:Ll0/n;

    iget-object p0, p0, Ll0/n;->c:Ll0/t0;

    iget-object p0, p0, Ll0/t0;->x:Ll0/x0;

    invoke-virtual {p0}, Ll0/x0;->h()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public getVersion()I
    .registers 2

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->c:Ll0/n;

    iget-object p0, p0, Ll0/n;->c:Ll0/t0;

    iget-object p0, p0, Ll0/t0;->c:Lm/l;

    const/4 v0, 0x1

    if-nez p0, :cond_a

    return v0

    :cond_a
    invoke-virtual {p0}, Lm/l;->y()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .registers 4

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->getVersion()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3c

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->c:Ll0/n;

    iget-object p0, p0, Ll0/n;->c:Ll0/t0;

    iget-object p0, p0, Ll0/t0;->A1:Ll0/w;

    if-eqz p0, :cond_3c

    iget-object v0, p0, Ll0/w;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :cond_15
    :goto_15
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm/q;

    sget-object v2, Ll0/v;->F1:Lm/q;

    invoke-virtual {v2, v1}, Lm/u;->n(Lm/u;)Z

    move-result v2

    if-nez v2, :cond_15

    sget-object v2, Ll0/v;->E1:Lm/q;

    invoke-virtual {v2, v1}, Lm/u;->n(Lm/u;)Z

    move-result v2

    if-eqz v2, :cond_32

    goto :goto_15

    :cond_32
    invoke-virtual {p0, v1}, Ll0/w;->h(Lm/q;)Ll0/v;

    move-result-object v1

    iget-boolean v1, v1, Ll0/v;->d:Z

    if-eqz v1, :cond_15

    const/4 p0, 0x1

    return p0

    :cond_3c
    const/4 p0, 0x0

    return p0
.end method

.method public isRevoked(Ljava/security/cert/Certificate;)Z
    .registers 10

    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "X.509"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a8

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->c:Ll0/n;

    invoke-virtual {v0}, Ll0/n;->i()Ljava/util/Enumeration;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->c:Ll0/n;

    iget-object v1, v1, Ll0/n;->c:Ll0/t0;

    iget-object v1, v1, Ll0/t0;->q:Lj0/c;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_a7

    move-object v2, p1

    check-cast v2, Ljava/security/cert/X509Certificate;

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v4

    :cond_26
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_a7

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ll0/q0;->i(Ljava/lang/Object;)Ll0/q0;

    move-result-object v5

    iget-boolean v6, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->isIndirect:Z

    if-eqz v6, :cond_5e

    invoke-virtual {v5}, Ll0/q0;->k()Z

    move-result v6

    if-eqz v6, :cond_5e

    invoke-virtual {v5}, Ll0/q0;->h()Ll0/w;

    move-result-object v6

    sget-object v7, Ll0/v;->G1:Lm/q;

    invoke-virtual {v6, v7}, Ll0/w;->h(Lm/q;)Ll0/v;

    move-result-object v6

    if-eqz v6, :cond_5e

    invoke-virtual {v6}, Ll0/v;->h()Lm/u;

    move-result-object v1

    invoke-static {v1}, Ll0/z;->h(Ljava/lang/Object;)Ll0/z;

    move-result-object v1

    invoke-virtual {v1}, Ll0/z;->i()[Ll0/y;

    move-result-object v1

    aget-object v1, v1, v3

    iget-object v1, v1, Ll0/y;->c:Lm/f;

    invoke-static {v1}, Lj0/c;->i(Ljava/lang/Object;)Lj0/c;

    move-result-object v1

    :cond_5e
    invoke-virtual {v5}, Ll0/q0;->j()Lm/l;

    move-result-object v5

    invoke-virtual {v5, v4}, Lm/l;->v(Ljava/math/BigInteger;)Z

    move-result v5

    if-eqz v5, :cond_26

    instance-of p0, p1, Ljava/security/cert/X509Certificate;

    if-eqz p0, :cond_79

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lj0/c;->i(Ljava/lang/Object;)Lj0/c;

    move-result-object p0

    goto :goto_85

    :cond_79
    :try_start_79
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Ll0/m;->i(Ljava/lang/Object;)Ll0/m;

    move-result-object p0

    iget-object p0, p0, Ll0/m;->d:Ll0/u0;

    iget-object p0, p0, Ll0/u0;->y:Lj0/c;
    :try_end_85
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_79 .. :try_end_85} :catch_8e

    :goto_85
    invoke-virtual {v1, p0}, Lj0/c;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8c

    goto :goto_a7

    :cond_8c
    const/4 p0, 0x1

    return p0

    :catch_8e
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot process certificate: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a7
    :goto_a7
    return v3

    :cond_a8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "X.509 CRL used with non X.509 Cert"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 10

    const-string v0, " value = "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lm4/m;->a:Ljava/lang/String;

    const-string v3, "              Version: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->getVersion()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "             IssuerDN: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->getIssuerDN()Ljava/security/Principal;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "          This update: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->getThisUpdate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "          Next update: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->getNextUpdate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  Signature Algorithm: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->getSigAlgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->getSignature()[B

    move-result-object v3

    invoke-static {v3, v1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509SignatureUtil;->prettyPrintSignature([BLjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->c:Ll0/n;

    iget-object v3, v3, Ll0/n;->c:Ll0/t0;

    iget-object v3, v3, Ll0/t0;->A1:Ll0/w;

    if-eqz v3, :cond_143

    iget-object v4, v3, Ll0/w;->d:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_77

    const-string v5, "           Extensions: "

    :goto_71
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_77
    :goto_77
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_143

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lm/q;

    invoke-virtual {v3, v5}, Ll0/w;->h(Lm/q;)Ll0/v;

    move-result-object v6

    iget-object v7, v6, Ll0/v;->q:Lm/r;

    if-eqz v7, :cond_74

    iget-object v7, v7, Lm/r;->c:[B

    new-instance v8, Lm/k;

    invoke-direct {v8, v7}, Lm/k;-><init>([B)V

    const-string v7, "                       critical("

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v6, Ll0/v;->d:Z

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ") "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_a1
    sget-object v6, Ll0/v;->C1:Lm/q;

    invoke-virtual {v5, v6}, Lm/u;->n(Lm/u;)Z

    move-result v6

    if-eqz v6, :cond_c1

    new-instance v6, Lb0/g;

    invoke-virtual {v8}, Lm/k;->f()Lm/u;

    move-result-object v7

    invoke-static {v7}, Lm/l;->r(Ljava/lang/Object;)Lm/l;

    move-result-object v7

    invoke-virtual {v7}, Lm/l;->s()Ljava/math/BigInteger;

    move-result-object v7

    invoke-direct {v6, v7}, Lb0/g;-><init>(Ljava/math/BigInteger;)V

    :goto_ba
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_bd
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_77

    :cond_c1
    sget-object v6, Ll0/v;->E1:Lm/q;

    invoke-virtual {v5, v6}, Lm/u;->n(Lm/u;)Z

    move-result v6

    if-eqz v6, :cond_ef

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Base CRL: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Lb0/g;

    invoke-virtual {v8}, Lm/k;->f()Lm/u;

    move-result-object v8

    invoke-static {v8}, Lm/l;->r(Ljava/lang/Object;)Lm/l;

    move-result-object v8

    invoke-virtual {v8}, Lm/l;->s()Ljava/math/BigInteger;

    move-result-object v8

    invoke-direct {v7, v8}, Lb0/g;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_eb
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_bd

    :cond_ef
    sget-object v6, Ll0/v;->F1:Lm/q;

    invoke-virtual {v5, v6}, Lm/u;->n(Lm/u;)Z

    move-result v6

    if-eqz v6, :cond_100

    invoke-virtual {v8}, Lm/k;->f()Lm/u;

    move-result-object v6

    invoke-static {v6}, Ll0/d0;->i(Ljava/lang/Object;)Ll0/d0;

    move-result-object v6

    goto :goto_ba

    :cond_100
    sget-object v6, Ll0/v;->I1:Lm/q;

    invoke-virtual {v5, v6}, Lm/u;->n(Lm/u;)Z

    move-result v6

    if-eqz v6, :cond_111

    invoke-virtual {v8}, Lm/k;->f()Lm/u;

    move-result-object v6

    invoke-static {v6}, Ll0/k;->i(Ljava/lang/Object;)Ll0/k;

    move-result-object v6

    goto :goto_ba

    :cond_111
    sget-object v6, Ll0/v;->O1:Lm/q;

    invoke-virtual {v5, v6}, Lm/u;->n(Lm/u;)Z

    move-result v6

    if-eqz v6, :cond_122

    invoke-virtual {v8}, Lm/k;->f()Lm/u;

    move-result-object v6

    invoke-static {v6}, Ll0/k;->i(Ljava/lang/Object;)Ll0/k;

    move-result-object v6

    goto :goto_ba

    :cond_122
    invoke-virtual {v5}, Lm/q;->u()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lm/k;->f()Lm/u;

    move-result-object v6

    invoke-static {v6}, Lt4/d;->H(Lm/f;)Ljava/lang/String;

    move-result-object v6
    :try_end_134
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_134} :catch_135

    goto :goto_eb

    :catch_135
    invoke-virtual {v5}, Lm/q;->u()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "*****"

    goto/16 :goto_71

    :cond_143
    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->getRevokedCertificates()Ljava/util/Set;

    move-result-object p0

    if-eqz p0, :cond_15e

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_14d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_14d

    :cond_15e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public verify(Ljava/security/PublicKey;)V
    .registers 3

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl$1;

    invoke-direct {v0, p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl$1;-><init>(Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;)V

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->doVerify(Ljava/security/PublicKey;Lorg/bouncycastle/jcajce/provider/asymmetric/x509/SignatureCreator;)V

    return-void
.end method

.method public verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .registers 4

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl$2;

    invoke-direct {v0, p0, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl$2;-><init>(Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->doVerify(Ljava/security/PublicKey;Lorg/bouncycastle/jcajce/provider/asymmetric/x509/SignatureCreator;)V

    return-void
.end method

.method public verify(Ljava/security/PublicKey;Ljava/security/Provider;)V
    .registers 4

    :try_start_0
    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl$3;

    invoke-direct {v0, p0, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl$3;-><init>(Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;Ljava/security/Provider;)V

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->doVerify(Ljava/security/PublicKey;Lorg/bouncycastle/jcajce/provider/asymmetric/x509/SignatureCreator;)V
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
