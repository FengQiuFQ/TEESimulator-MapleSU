.class Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;
.super Ljava/security/cert/X509CRLEntry;


# instance fields
.field private c:Ll0/q0;

.field private certificateIssuer:Lj0/c;

.field private volatile hashValue:I

.field private volatile hashValueSet:Z


# direct methods
.method public constructor <init>(Ll0/q0;)V
    .registers 2

    invoke-direct {p0}, Ljava/security/cert/X509CRLEntry;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->c:Ll0/q0;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->certificateIssuer:Lj0/c;

    return-void
.end method

.method public constructor <init>(Ll0/q0;ZLj0/c;)V
    .registers 4

    invoke-direct {p0}, Ljava/security/cert/X509CRLEntry;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->c:Ll0/q0;

    invoke-direct {p0, p2, p3}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->loadCertificateIssuer(ZLj0/c;)Lj0/c;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->certificateIssuer:Lj0/c;

    return-void
.end method

.method private getExtensionOIDs(Z)Ljava/util/Set;
    .registers 6

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->c:Ll0/q0;

    invoke-virtual {p0}, Ll0/q0;->h()Ll0/w;

    move-result-object p0

    if-eqz p0, :cond_30

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Ll0/w;->d:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :cond_13
    :goto_13
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm/q;

    invoke-virtual {p0, v2}, Ll0/w;->h(Lm/q;)Ll0/v;

    move-result-object v3

    iget-boolean v3, v3, Ll0/v;->d:Z

    if-ne p1, v3, :cond_13

    invoke-virtual {v2}, Lm/q;->u()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_2f
    return-object v0

    :cond_30
    const/4 p0, 0x0

    return-object p0
.end method

.method private loadCertificateIssuer(ZLj0/c;)Lj0/c;
    .registers 5

    if-nez p1, :cond_3

    goto :goto_31

    :cond_3
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->c:Ll0/q0;

    invoke-virtual {p0}, Ll0/q0;->h()Ll0/w;

    move-result-object p0

    sget-object p1, Ll0/v;->G1:Lm/q;

    invoke-static {p0, p1}, Ll0/w;->i(Ll0/w;Lm/q;)Lm/r;

    move-result-object p0

    if-nez p0, :cond_12

    return-object p2

    :cond_12
    :try_start_12
    iget-object p0, p0, Lm/r;->c:[B

    invoke-static {p0}, Ll0/z;->h(Ljava/lang/Object;)Ll0/z;

    move-result-object p0

    invoke-virtual {p0}, Ll0/z;->i()[Ll0/y;

    move-result-object p0

    const/4 p1, 0x0

    :goto_1d
    array-length p2, p0

    if-ge p1, p2, :cond_31

    aget-object p2, p0, p1

    iget v0, p2, Ll0/y;->d:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2e

    iget-object p0, p2, Ll0/y;->c:Lm/f;

    invoke-static {p0}, Lj0/c;->i(Ljava/lang/Object;)Lj0/c;

    move-result-object p0
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_2d} :catch_31

    return-object p0

    :cond_2e
    add-int/lit8 p1, p1, 0x1

    goto :goto_1d

    :catch_31
    :cond_31
    :goto_31
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p1, p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    instance-of v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;

    if-eqz v0, :cond_23

    check-cast p1, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;

    iget-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->hashValueSet:Z

    if-eqz v0, :cond_1a

    iget-boolean v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->hashValueSet:Z

    if-eqz v0, :cond_1a

    iget v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->hashValue:I

    iget v1, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->hashValue:I

    if-eq v0, v1, :cond_1a

    const/4 p0, 0x0

    return p0

    :cond_1a
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->c:Ll0/q0;

    iget-object p1, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->c:Ll0/q0;

    invoke-virtual {p0, p1}, Lm/n;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_23
    invoke-super {p0, p0}, Ljava/security/cert/X509CRLEntry;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getCertificateIssuer()Ljavax/security/auth/x500/X500Principal;
    .registers 3

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->certificateIssuer:Lj0/c;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    :try_start_6
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->certificateIssuer:Lj0/c;

    invoke-virtual {p0}, Lm/n;->getEncoded()[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_11} :catch_12

    return-object v0

    :catch_12
    return-object v1
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->getExtensionOIDs(Z)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getEncoded()[B
    .registers 2

    :try_start_0
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->c:Ll0/q0;

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

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->c:Ll0/q0;

    invoke-virtual {p0}, Ll0/q0;->h()Ll0/w;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509SignatureUtil;->getExtensionValue(Ll0/w;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->getExtensionOIDs(Z)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getRevocationDate()Ljava/util/Date;
    .registers 2

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->c:Ll0/q0;

    iget-object p0, p0, Ll0/q0;->c:Lm/x;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lm/x;->v(I)Lm/f;

    move-result-object p0

    invoke-static {p0}, Ll0/x0;->i(Lm/f;)Ll0/x0;

    move-result-object p0

    invoke-virtual {p0}, Ll0/x0;->h()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->c:Ll0/q0;

    invoke-virtual {p0}, Ll0/q0;->j()Lm/l;

    move-result-object p0

    invoke-virtual {p0}, Lm/l;->t()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public hasExtensions()Z
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->c:Ll0/q0;

    invoke-virtual {p0}, Ll0/q0;->h()Ll0/w;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->c:Ll0/q0;

    invoke-virtual {p0}, Ll0/q0;->h()Ll0/w;

    move-result-object p0

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Ll0/w;->k()Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public hashCode()I
    .registers 2

    iget-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->hashValueSet:Z

    if-nez v0, :cond_d

    invoke-super {p0}, Ljava/security/cert/X509CRLEntry;->hashCode()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->hashValue:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->hashValueSet:Z

    :cond_d
    iget p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->hashValue:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "      userCertificate: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lm4/m;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "       revocationDate: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->getRevocationDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "       certificateIssuer: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->getCertificateIssuer()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->c:Ll0/q0;

    invoke-virtual {p0}, Ll0/q0;->h()Ll0/w;

    move-result-object p0

    if-eqz p0, :cond_cb

    iget-object v2, p0, Ll0/w;->d:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_cb

    const-string v3, "   crlEntryExtensions:"

    :goto_47
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4d
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_cb

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm/q;

    invoke-virtual {p0, v3}, Ll0/w;->h(Lm/q;)Ll0/v;

    move-result-object v4

    iget-object v5, v4, Ll0/v;->q:Lm/r;

    if-eqz v5, :cond_4a

    iget-object v5, v5, Lm/r;->c:[B

    new-instance v6, Lm/k;

    invoke-direct {v6, v5}, Lm/k;-><init>([B)V

    const-string v5, "                       critical("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v4, Ll0/v;->d:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ") "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_77
    sget-object v4, Ll0/v;->D1:Lm/q;

    invoke-virtual {v3, v4}, Lm/u;->n(Lm/u;)Z

    move-result v4

    if-eqz v4, :cond_92

    invoke-virtual {v6}, Lm/k;->f()Lm/u;

    move-result-object v4

    invoke-static {v4}, Lm/h;->s(Ljava/lang/Object;)Lm/h;

    move-result-object v4

    invoke-static {v4}, Ll0/l;->h(Lm/h;)Ll0/l;

    move-result-object v4

    :goto_8b
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_8e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4d

    :cond_92
    sget-object v4, Ll0/v;->G1:Lm/q;

    invoke-virtual {v3, v4}, Lm/u;->n(Lm/u;)Z

    move-result v4

    if-eqz v4, :cond_a8

    const-string v4, "Certificate issuer: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lm/k;->f()Lm/u;

    move-result-object v4

    invoke-static {v4}, Ll0/z;->h(Ljava/lang/Object;)Ll0/z;

    move-result-object v4

    goto :goto_8b

    :cond_a8
    invoke-virtual {v3}, Lm/q;->u()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " value = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lm/k;->f()Lm/u;

    move-result-object v4

    invoke-static {v4}, Lt4/d;->H(Lm/f;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_bf} :catch_c0

    goto :goto_8e

    :catch_c0
    invoke-virtual {v3}, Lm/q;->u()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " value = *****"

    goto/16 :goto_47

    :cond_cb
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
