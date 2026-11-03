.class public Lorg/bouncycastle/jce/provider/X509CRLObject;
.super Ljava/security/cert/X509CRL;


# instance fields
.field private c:Ll0/n;

.field private hashCodeValue:I

.field private isHashCodeSet:Z

.field private isIndirect:Z

.field private sigAlgName:Ljava/lang/String;

.field private sigAlgParams:[B


# direct methods
.method public constructor <init>(Ll0/n;)V
    .registers 4

    invoke-direct {p0}, Ljava/security/cert/X509CRL;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/jce/provider/X509CRLObject;->isHashCodeSet:Z

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/X509CRLObject;->c:Ll0/n;

    :try_start_8
    iget-object v0, p1, Ll0/n;->d:Ll0/b;

    invoke-static {v0}, Lorg/bouncycastle/jce/provider/X509SignatureUtil;->getSignatureName(Ll0/b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/X509CRLObject;->sigAlgName:Ljava/lang/String;

    iget-object p1, p1, Ll0/n;->d:Ll0/b;

    iget-object p1, p1, Ll0/b;->d:Lm/f;

    if-eqz p1, :cond_21

    invoke-interface {p1}, Lm/f;->d()Lm/u;

    move-result-object p1

    invoke-virtual {p1}, Lm/n;->g()[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/X509CRLObject;->sigAlgParams:[B

    goto :goto_24

    :cond_21
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/X509CRLObject;->sigAlgParams:[B

    :goto_24
    invoke-static {p0}, Lorg/bouncycastle/jce/provider/X509CRLObject;->isIndirectCRL(Ljava/security/cert/X509CRL;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/bouncycastle/jce/provider/X509CRLObject;->isIndirect:Z
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2a} :catch_2b

    return-void

    :catch_2b
    move-exception p0

    new-instance p1, Ljava/security/cert/CRLException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CRL contents invalid: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private doVerify(Ljava/security/PublicKey;Ljava/security/Signature;)V
    .registers 5

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/X509CRLObject;->c:Ll0/n;

    iget-object v1, v0, Ll0/n;->d:Ll0/b;

    iget-object v0, v0, Ll0/n;->c:Ll0/t0;

    iget-object v0, v0, Ll0/t0;->d:Ll0/b;

    invoke-virtual {v1, v0}, Lm/n;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual {p2, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CRLObject;->getTBSCertList()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/security/Signature;->update([B)V

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CRLObject;->getSignature()[B

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/security/Signature;->verify([B)Z

    move-result p0

    if-eqz p0, :cond_23

    return-void

    :cond_23
    new-instance p0, Ljava/security/SignatureException;

    const-string p1, "CRL does not verify with supplied public key."

    invoke-direct {p0, p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2b
    new-instance p0, Ljava/security/cert/CRLException;

    const-string p1, "Signature algorithm on CertificateList does not match TBSCertList."

    invoke-direct {p0, p1}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getExtensionOIDs(Z)Ljava/util/Set;
    .registers 6

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CRLObject;->getVersion()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_37

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/X509CRLObject;->c:Ll0/n;

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

.method public static isIndirectCRL(Ljava/security/cert/X509CRL;)Z
    .registers 3

    :try_start_0
    sget-object v0, Ll0/v;->F1:Lm/q;

    invoke-virtual {v0}, Lm/q;->u()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/security/cert/X509Extension;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_1c

    invoke-static {p0}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object p0

    iget-object p0, p0, Lm/r;->c:[B

    invoke-static {p0}, Ll0/d0;->i(Ljava/lang/Object;)Ll0/d0;

    move-result-object p0

    iget-boolean p0, p0, Ll0/d0;->y:Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_1e

    if-eqz p0, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0

    :catch_1e
    move-exception p0

    new-instance v0, Lorg/bouncycastle/jce/provider/ExtCRLException;

    const-string v1, "Exception reading IssuingDistributionPoint"

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/jce/provider/ExtCRLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private loadCRLEntries()Ljava/util/Set;
    .registers 7

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/X509CRLObject;->c:Ll0/n;

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

    new-instance v4, Lorg/bouncycastle/jce/provider/X509CRLEntryObject;

    iget-boolean v5, p0, Lorg/bouncycastle/jce/provider/X509CRLObject;->isIndirect:Z

    invoke-direct {v4, v3, v5, v2}, Lorg/bouncycastle/jce/provider/X509CRLEntryObject;-><init>(Ll0/q0;ZLj0/c;)V

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-boolean v4, p0, Lorg/bouncycastle/jce/provider/X509CRLObject;->isIndirect:Z

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
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    instance-of v0, p1, Ljava/security/cert/X509CRL;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    instance-of v0, p1, Lorg/bouncycastle/jce/provider/X509CRLObject;

    if-eqz v0, :cond_28

    check-cast p1, Lorg/bouncycastle/jce/provider/X509CRLObject;

    iget-boolean v0, p0, Lorg/bouncycastle/jce/provider/X509CRLObject;->isHashCodeSet:Z

    if-eqz v0, :cond_1f

    iget-boolean v0, p1, Lorg/bouncycastle/jce/provider/X509CRLObject;->isHashCodeSet:Z

    if-eqz v0, :cond_1f

    iget v0, p1, Lorg/bouncycastle/jce/provider/X509CRLObject;->hashCodeValue:I

    iget v2, p0, Lorg/bouncycastle/jce/provider/X509CRLObject;->hashCodeValue:I

    if-eq v0, v2, :cond_1f

    return v1

    :cond_1f
    iget-object p0, p0, Lorg/bouncycastle/jce/provider/X509CRLObject;->c:Ll0/n;

    iget-object p1, p1, Lorg/bouncycastle/jce/provider/X509CRLObject;->c:Ll0/n;

    invoke-virtual {p0, p1}, Lm/n;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_28
    invoke-super {p0, p1}, Ljava/security/cert/X509CRL;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/jce/provider/X509CRLObject;->getExtensionOIDs(Z)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getEncoded()[B
    .registers 2

    :try_start_0
    iget-object p0, p0, Lorg/bouncycastle/jce/provider/X509CRLObject;->c:Ll0/n;

    invoke-virtual {p0}, Lm/n;->g()[B

    move-result-object p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    move-exception p0

    new-instance v0, Ljava/security/cert/CRLException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .registers 2

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/X509CRLObject;->c:Ll0/n;

    iget-object p0, p0, Ll0/n;->c:Ll0/t0;

    iget-object p0, p0, Ll0/t0;->A1:Ll0/w;

    invoke-static {p0, p1}, Lorg/bouncycastle/jce/provider/X509SignatureUtil;->getExtensionValue(Ll0/w;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public getIssuerDN()Ljava/security/Principal;
    .registers 2

    new-instance v0, Lf2/c;

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/X509CRLObject;->c:Ll0/n;

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

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/X509CRLObject;->c:Ll0/n;

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

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/X509CRLObject;->c:Ll0/n;

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

    invoke-direct {p0, v0}, Lorg/bouncycastle/jce/provider/X509CRLObject;->getExtensionOIDs(Z)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getRevokedCertificate(Ljava/math/BigInteger;)Ljava/security/cert/X509CRLEntry;
    .registers 7

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/X509CRLObject;->c:Ll0/n;

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

    new-instance p1, Lorg/bouncycastle/jce/provider/X509CRLEntryObject;

    iget-boolean p0, p0, Lorg/bouncycastle/jce/provider/X509CRLObject;->isIndirect:Z

    invoke-direct {p1, v3, p0, v2}, Lorg/bouncycastle/jce/provider/X509CRLEntryObject;-><init>(Ll0/q0;ZLj0/c;)V

    return-object p1

    :cond_26
    iget-boolean v4, p0, Lorg/bouncycastle/jce/provider/X509CRLObject;->isIndirect:Z

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

    invoke-direct {p0}, Lorg/bouncycastle/jce/provider/X509CRLObject;->loadCRLEntries()Ljava/util/Set;

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

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/X509CRLObject;->sigAlgName:Ljava/lang/String;

    return-object p0
.end method

.method public getSigAlgOID()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/X509CRLObject;->c:Ll0/n;

    iget-object p0, p0, Ll0/n;->d:Ll0/b;

    iget-object p0, p0, Ll0/b;->c:Lm/q;

    invoke-virtual {p0}, Lm/q;->u()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSigAlgParams()[B
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/X509CRLObject;->sigAlgParams:[B

    invoke-static {p0}, Lm4/d;->e([B)[B

    move-result-object p0

    return-object p0
.end method

.method public getSignature()[B
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/X509CRLObject;->c:Ll0/n;

    iget-object p0, p0, Ll0/n;->q:Lm/b;

    invoke-virtual {p0}, Lm/b;->u()[B

    move-result-object p0

    return-object p0
.end method

.method public getTBSCertList()[B
    .registers 2

    :try_start_0
    iget-object p0, p0, Lorg/bouncycastle/jce/provider/X509CRLObject;->c:Ll0/n;

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

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/X509CRLObject;->c:Ll0/n;

    iget-object p0, p0, Ll0/n;->c:Ll0/t0;

    iget-object p0, p0, Ll0/t0;->x:Ll0/x0;

    invoke-virtual {p0}, Ll0/x0;->h()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public getVersion()I
    .registers 2

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/X509CRLObject;->c:Ll0/n;

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

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CRLObject;->getVersion()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3c

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/X509CRLObject;->c:Ll0/n;

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

.method public hashCode()I
    .registers 2

    iget-boolean v0, p0, Lorg/bouncycastle/jce/provider/X509CRLObject;->isHashCodeSet:Z

    if-nez v0, :cond_d

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/jce/provider/X509CRLObject;->isHashCodeSet:Z

    invoke-super {p0}, Ljava/security/cert/X509CRL;->hashCode()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/jce/provider/X509CRLObject;->hashCodeValue:I

    :cond_d
    iget p0, p0, Lorg/bouncycastle/jce/provider/X509CRLObject;->hashCodeValue:I

    return p0
.end method

.method public isRevoked(Ljava/security/cert/Certificate;)Z
    .registers 10

    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "X.509"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_91

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/X509CRLObject;->c:Ll0/n;

    invoke-virtual {v0}, Ll0/n;->i()Ljava/util/Enumeration;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/X509CRLObject;->c:Ll0/n;

    iget-object v1, v1, Ll0/n;->c:Ll0/t0;

    iget-object v1, v1, Ll0/t0;->q:Lj0/c;

    move-object v2, p1

    check-cast v2, Ljava/security/cert/X509Certificate;

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v3

    :cond_1f
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_90

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ll0/q0;->i(Ljava/lang/Object;)Ll0/q0;

    move-result-object v4

    iget-boolean v6, p0, Lorg/bouncycastle/jce/provider/X509CRLObject;->isIndirect:Z

    if-eqz v6, :cond_58

    invoke-virtual {v4}, Ll0/q0;->k()Z

    move-result v6

    if-eqz v6, :cond_58

    invoke-virtual {v4}, Ll0/q0;->h()Ll0/w;

    move-result-object v6

    sget-object v7, Ll0/v;->G1:Lm/q;

    invoke-virtual {v6, v7}, Ll0/w;->h(Lm/q;)Ll0/v;

    move-result-object v6

    if-eqz v6, :cond_58

    invoke-virtual {v6}, Ll0/v;->h()Lm/u;

    move-result-object v1

    invoke-static {v1}, Ll0/z;->h(Ljava/lang/Object;)Ll0/z;

    move-result-object v1

    invoke-virtual {v1}, Ll0/z;->i()[Ll0/y;

    move-result-object v1

    aget-object v1, v1, v5

    iget-object v1, v1, Ll0/y;->c:Lm/f;

    invoke-static {v1}, Lj0/c;->i(Ljava/lang/Object;)Lj0/c;

    move-result-object v1

    :cond_58
    invoke-virtual {v4}, Ll0/q0;->j()Lm/l;

    move-result-object v4

    invoke-virtual {v4, v3}, Lm/l;->v(Ljava/math/BigInteger;)Z

    move-result v4

    if-eqz v4, :cond_1f

    instance-of p0, p1, Ljava/security/cert/X509Certificate;

    if-eqz p0, :cond_73

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lj0/c;->i(Ljava/lang/Object;)Lj0/c;

    move-result-object p0

    goto :goto_7f

    :cond_73
    :try_start_73
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Ll0/m;->i(Ljava/lang/Object;)Ll0/m;

    move-result-object p0

    iget-object p0, p0, Ll0/m;->d:Ll0/u0;

    iget-object p0, p0, Ll0/u0;->y:Lj0/c;
    :try_end_7f
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_73 .. :try_end_7f} :catch_88

    :goto_7f
    invoke-virtual {v1, p0}, Lj0/c;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_86

    goto :goto_90

    :cond_86
    const/4 p0, 0x1

    return p0

    :catch_88
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Cannot process certificate"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_90
    :goto_90
    return v5

    :cond_91
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "X.509 CRL used with non X.509 Cert"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "              Version: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lm4/m;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CRLObject;->getVersion()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "             IssuerDN: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CRLObject;->getIssuerDN()Ljava/security/Principal;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "          This update: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CRLObject;->getThisUpdate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "          Next update: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CRLObject;->getNextUpdate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  Signature Algorithm: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CRLObject;->getSigAlgName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CRLObject;->getSignature()[B

    move-result-object v2

    const-string v3, "            Signature: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    const/16 v5, 0x14

    invoke-static {v2, v4, v5}, Ln4/c;->d([BII)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v5

    :goto_6b
    array-length v4, v2

    if-ge v3, v4, :cond_96

    array-length v4, v2

    sub-int/2addr v4, v5

    const-string v6, "                       "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge v3, v4, :cond_87

    new-instance v4, Ljava/lang/String;

    invoke-static {v2, v3, v5}, Ln4/c;->d([BII)[B

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>([B)V

    :goto_80
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_93

    :cond_87
    new-instance v4, Ljava/lang/String;

    array-length v6, v2

    sub-int/2addr v6, v3

    invoke-static {v2, v3, v6}, Ln4/c;->d([BII)[B

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>([B)V

    goto :goto_80

    :goto_93
    add-int/lit8 v3, v3, 0x14

    goto :goto_6b

    :cond_96
    iget-object v2, p0, Lorg/bouncycastle/jce/provider/X509CRLObject;->c:Ll0/n;

    iget-object v2, v2, Ll0/n;->c:Ll0/t0;

    iget-object v2, v2, Ll0/t0;->A1:Ll0/w;

    if-eqz v2, :cond_17d

    iget-object v3, v2, Ll0/w;->d:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_b2

    const-string v4, "           Extensions: "

    :goto_ac
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_af
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b2
    :goto_b2
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_17d

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lm/q;

    invoke-virtual {v2, v4}, Ll0/w;->h(Lm/q;)Ll0/v;

    move-result-object v5

    iget-object v6, v5, Ll0/v;->q:Lm/r;

    if-eqz v6, :cond_af

    iget-object v6, v6, Lm/r;->c:[B

    new-instance v7, Lm/k;

    invoke-direct {v7, v6}, Lm/k;-><init>([B)V

    const-string v6, "                       critical("

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v5, Ll0/v;->d:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ") "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_dc
    sget-object v5, Ll0/v;->C1:Lm/q;

    invoke-virtual {v4, v5}, Lm/u;->n(Lm/u;)Z

    move-result v5

    if-eqz v5, :cond_fc

    new-instance v5, Lb0/g;

    invoke-virtual {v7}, Lm/k;->f()Lm/u;

    move-result-object v6

    invoke-static {v6}, Lm/l;->r(Ljava/lang/Object;)Lm/l;

    move-result-object v6

    invoke-virtual {v6}, Lm/l;->s()Ljava/math/BigInteger;

    move-result-object v6

    invoke-direct {v5, v6}, Lb0/g;-><init>(Ljava/math/BigInteger;)V

    :goto_f5
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_f8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b2

    :cond_fc
    sget-object v5, Ll0/v;->E1:Lm/q;

    invoke-virtual {v4, v5}, Lm/u;->n(Lm/u;)Z

    move-result v5

    if-eqz v5, :cond_12a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Base CRL: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Lb0/g;

    invoke-virtual {v7}, Lm/k;->f()Lm/u;

    move-result-object v7

    invoke-static {v7}, Lm/l;->r(Ljava/lang/Object;)Lm/l;

    move-result-object v7

    invoke-virtual {v7}, Lm/l;->s()Ljava/math/BigInteger;

    move-result-object v7

    invoke-direct {v6, v7}, Lb0/g;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_126
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f8

    :cond_12a
    sget-object v5, Ll0/v;->F1:Lm/q;

    invoke-virtual {v4, v5}, Lm/u;->n(Lm/u;)Z

    move-result v5

    if-eqz v5, :cond_13b

    invoke-virtual {v7}, Lm/k;->f()Lm/u;

    move-result-object v5

    invoke-static {v5}, Ll0/d0;->i(Ljava/lang/Object;)Ll0/d0;

    move-result-object v5

    goto :goto_f5

    :cond_13b
    sget-object v5, Ll0/v;->I1:Lm/q;

    invoke-virtual {v4, v5}, Lm/u;->n(Lm/u;)Z

    move-result v5

    if-eqz v5, :cond_14c

    invoke-virtual {v7}, Lm/k;->f()Lm/u;

    move-result-object v5

    invoke-static {v5}, Ll0/k;->i(Ljava/lang/Object;)Ll0/k;

    move-result-object v5

    goto :goto_f5

    :cond_14c
    sget-object v5, Ll0/v;->O1:Lm/q;

    invoke-virtual {v4, v5}, Lm/u;->n(Lm/u;)Z

    move-result v5

    if-eqz v5, :cond_15d

    invoke-virtual {v7}, Lm/k;->f()Lm/u;

    move-result-object v5

    invoke-static {v5}, Ll0/k;->i(Ljava/lang/Object;)Ll0/k;

    move-result-object v5

    goto :goto_f5

    :cond_15d
    invoke-virtual {v4}, Lm/q;->u()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " value = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lm/k;->f()Lm/u;

    move-result-object v5

    invoke-static {v5}, Lt4/d;->H(Lm/f;)Ljava/lang/String;

    move-result-object v5
    :try_end_171
    .catch Ljava/lang/Exception; {:try_start_dc .. :try_end_171} :catch_172

    goto :goto_126

    :catch_172
    invoke-virtual {v4}, Lm/q;->u()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " value = *****"

    goto/16 :goto_ac

    :cond_17d
    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CRLObject;->getRevokedCertificates()Ljava/util/Set;

    move-result-object p0

    if-eqz p0, :cond_198

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_187
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_198

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_187

    :cond_198
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public verify(Ljava/security/PublicKey;)V
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CRLObject;->getSigAlgName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BC"

    invoke-static {v0, v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_13

    :catch_b
    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CRLObject;->getSigAlgName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    :goto_13
    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/jce/provider/X509CRLObject;->doVerify(Ljava/security/PublicKey;Ljava/security/Signature;)V

    return-void
.end method

.method public verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .registers 4

    if-eqz p2, :cond_b

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CRLObject;->getSigAlgName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p2

    goto :goto_13

    :cond_b
    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CRLObject;->getSigAlgName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p2

    :goto_13
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/jce/provider/X509CRLObject;->doVerify(Ljava/security/PublicKey;Ljava/security/Signature;)V

    return-void
.end method

.method public verify(Ljava/security/PublicKey;Ljava/security/Provider;)V
    .registers 4

    if-eqz p2, :cond_b

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CRLObject;->getSigAlgName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    move-result-object p2

    goto :goto_13

    :cond_b
    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CRLObject;->getSigAlgName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p2

    :goto_13
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/jce/provider/X509CRLObject;->doVerify(Ljava/security/PublicKey;Ljava/security/Signature;)V

    return-void
.end method
