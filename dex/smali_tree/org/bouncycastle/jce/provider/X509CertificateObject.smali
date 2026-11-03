.class public Lorg/bouncycastle/jce/provider/X509CertificateObject;
.super Ljava/security/cert/X509Certificate;

# interfaces
.implements Lh2/k;


# instance fields
.field private attrCarrier:Lh2/k;

.field private basicConstraints:Ll0/j;

.field private c:Ll0/m;

.field private hashValue:I

.field private hashValueSet:Z

.field private keyUsage:[Z


# direct methods
.method public constructor <init>(Ll0/m;)V
    .registers 9

    invoke-direct {p0}, Ljava/security/cert/X509Certificate;-><init>()V

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->attrCarrier:Lh2/k;

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Ll0/m;

    :try_start_c
    sget-object v0, Ll0/v;->B1:Lm/q;

    invoke-static {p1, v0}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->getExtensionOctets(Ll0/m;Lm/q;)[B

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-static {v0}, Lm/u;->o([B)Lm/u;

    move-result-object v0

    invoke-static {v0}, Ll0/j;->h(Ljava/lang/Object;)Ll0/j;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->basicConstraints:Ll0/j;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1e} :catch_79

    :cond_1e
    :try_start_1e
    sget-object v0, Ll0/v;->y:Lm/q;

    invoke-static {p1, v0}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->getExtensionOctets(Ll0/m;Lm/q;)[B

    move-result-object p1

    if-eqz p1, :cond_60

    invoke-static {p1}, Lm/u;->o([B)Lm/u;

    move-result-object p1

    invoke-static {p1}, Lm/b;->t(Ljava/lang/Object;)Lm/b;

    move-result-object p1

    invoke-virtual {p1}, Lm/b;->s()[B

    move-result-object v0

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {p1}, Lm/b;->f()I

    move-result p1

    sub-int/2addr v1, p1

    const/16 p1, 0x9

    if-ge v1, p1, :cond_3f

    goto :goto_40

    :cond_3f
    move p1, v1

    :goto_40
    new-array p1, p1, [Z

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->keyUsage:[Z

    const/4 p1, 0x0

    move v2, p1

    :goto_46
    if-eq v2, v1, :cond_5f

    iget-object v3, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->keyUsage:[Z

    div-int/lit8 v4, v2, 0x8

    aget-byte v4, v0, v4

    rem-int/lit8 v5, v2, 0x8

    const/16 v6, 0x80

    ushr-int v5, v6, v5

    and-int/2addr v4, v5

    if-eqz v4, :cond_59

    const/4 v4, 0x1

    goto :goto_5a

    :cond_59
    move v4, p1

    :goto_5a
    aput-boolean v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    :cond_5f
    return-void

    :cond_60
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->keyUsage:[Z
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_63} :catch_64

    return-void

    :catch_64
    move-exception p0

    new-instance p1, Ljava/security/cert/CertificateParsingException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cannot construct KeyUsage: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_79
    move-exception p0

    new-instance p1, Ljava/security/cert/CertificateParsingException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cannot construct BasicConstraints: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private calculateHashCode()I
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->getEncoded()[B

    move-result-object p0

    const/4 v1, 0x1

    move v2, v0

    :goto_7
    array-length v3, p0

    if-ge v1, v3, :cond_11

    aget-byte v3, p0, v1
    :try_end_c
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_c} :catch_12

    mul-int/2addr v3, v1

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_11
    return v2

    :catch_12
    return v0
.end method

.method private checkSignature(Ljava/security/PublicKey;Ljava/security/Signature;)V
    .registers 5

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Ll0/m;

    iget-object v1, v0, Ll0/m;->q:Ll0/b;

    iget-object v0, v0, Ll0/m;->d:Ll0/u0;

    iget-object v0, v0, Ll0/u0;->x:Ll0/b;

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->isAlgIdEqual(Ll0/b;Ll0/b;)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Ll0/m;

    iget-object v0, v0, Ll0/m;->q:Ll0/b;

    iget-object v0, v0, Ll0/b;->d:Lm/f;

    invoke-static {p2, v0}, Lorg/bouncycastle/jce/provider/X509SignatureUtil;->setSignatureParameters(Ljava/security/Signature;Lm/f;)V

    invoke-virtual {p2, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->getTBSCertificate()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/security/Signature;->update([B)V

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->getSignature()[B

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/security/Signature;->verify([B)Z

    move-result p0

    if-eqz p0, :cond_2c

    return-void

    :cond_2c
    new-instance p0, Ljava/security/SignatureException;

    const-string p1, "certificate does not verify with supplied key"

    invoke-direct {p0, p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_34
    new-instance p0, Ljava/security/cert/CertificateException;

    const-string p1, "signature algorithm in TBS cert not same as outer cert"

    invoke-direct {p0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getAlternativeNames(Ll0/m;Lm/q;)Ljava/util/Collection;
    .registers 5

    invoke-static {p0, p1}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->getExtensionOctets(Ll0/m;Lm/q;)[B

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

.method private static getExtensionOctets(Ll0/m;Lm/q;)[B
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

.method private isAlgIdEqual(Ll0/b;Ll0/b;)Z
    .registers 5

    iget-object p0, p1, Ll0/b;->c:Lm/q;

    iget-object v0, p2, Ll0/b;->c:Lm/q;

    iget-object p2, p2, Ll0/b;->d:Lm/f;

    invoke-virtual {p0, v0}, Lm/u;->n(Lm/u;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_e

    return v0

    :cond_e
    iget-object p0, p1, Ll0/b;->d:Lm/f;

    const/4 p1, 0x1

    sget-object v1, Lm/v0;->d:Lm/v0;

    if-nez p0, :cond_1f

    if-eqz p2, :cond_1e

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1e

    return v0

    :cond_1e
    return p1

    :cond_1f
    if-nez p2, :cond_2b

    if-eqz p0, :cond_2a

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2a

    return v0

    :cond_2a
    return p1

    :cond_2b
    invoke-virtual {p0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public checkValidity()V
    .registers 2

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->checkValidity(Ljava/util/Date;)V

    return-void
.end method

.method public checkValidity(Ljava/util/Date;)V
    .registers 6

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->getNotAfter()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3f

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->getNotBefore()Ljava/util/Date;

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

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Ll0/m;

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

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Ll0/m;

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

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p1, p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    instance-of v0, p1, Ljava/security/cert/Certificate;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    check-cast p1, Ljava/security/cert/Certificate;

    :try_start_c
    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->getEncoded()[B

    move-result-object p0

    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0
    :try_end_18
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_c .. :try_end_18} :catch_19

    return p0

    :catch_19
    return v1
.end method

.method public getBagAttribute(Lm/q;)Lm/f;
    .registers 2

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->attrCarrier:Lh2/k;

    invoke-interface {p0, p1}, Lh2/k;->getBagAttribute(Lm/q;)Lm/f;

    move-result-object p0

    return-object p0
.end method

.method public getBagAttributeKeys()Ljava/util/Enumeration;
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->attrCarrier:Lh2/k;

    invoke-interface {p0}, Lh2/k;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method public getBasicConstraints()I
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->basicConstraints:Ll0/j;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Ll0/j;->i()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_1a

    :cond_b
    iget-object p0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->basicConstraints:Ll0/j;

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

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->getVersion()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_37

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Ll0/m;

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

.method public getEncoded()[B
    .registers 2

    :try_start_0
    iget-object p0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Ll0/m;

    invoke-virtual {p0}, Lm/n;->g()[B

    move-result-object p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    move-exception p0

    new-instance v0, Ljava/security/cert/CertificateEncodingException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getExtendedKeyUsage()Ljava/util/List;
    .registers 4

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Ll0/m;

    sget-object v0, Ll0/v;->N1:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->getExtensionOctets(Ll0/m;Lm/q;)[B

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

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Ll0/m;

    iget-object p0, p0, Ll0/m;->d:Ll0/u0;

    iget-object p0, p0, Ll0/u0;->E1:Ll0/w;

    invoke-static {p0, p1}, Lorg/bouncycastle/jce/provider/X509SignatureUtil;->getExtensionValue(Ll0/w;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public getIssuerAlternativeNames()Ljava/util/Collection;
    .registers 2

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Ll0/m;

    sget-object v0, Ll0/v;->A1:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->getAlternativeNames(Ll0/m;Lm/q;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public getIssuerDN()Ljava/security/Principal;
    .registers 2

    new-instance v0, Lf2/c;

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Ll0/m;

    iget-object p0, p0, Ll0/m;->d:Ll0/u0;

    iget-object p0, p0, Ll0/u0;->y:Lj0/c;

    invoke-direct {v0, p0}, Lf2/c;-><init>(Lj0/c;)V

    return-object v0
.end method

.method public getIssuerUniqueID()[Z
    .registers 8

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Ll0/m;

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

.method public getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;
    .registers 2

    :try_start_0
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Ll0/m;

    iget-object p0, p0, Ll0/m;->d:Ll0/u0;

    iget-object p0, p0, Ll0/u0;->y:Lj0/c;

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

.method public getKeyUsage()[Z
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->keyUsage:[Z

    return-object p0
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .registers 5

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->getVersion()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_37

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Ll0/m;

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

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Ll0/m;

    invoke-virtual {p0}, Ll0/m;->h()Ll0/x0;

    move-result-object p0

    invoke-virtual {p0}, Ll0/x0;->h()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public getNotBefore()Ljava/util/Date;
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Ll0/m;

    invoke-virtual {p0}, Ll0/m;->j()Ll0/x0;

    move-result-object p0

    invoke-virtual {p0}, Ll0/x0;->h()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .registers 1

    :try_start_0
    iget-object p0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Ll0/m;

    iget-object p0, p0, Ll0/m;->d:Ll0/u0;

    iget-object p0, p0, Ll0/u0;->B1:Ll0/p0;

    invoke-static {p0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->getPublicKey(Ll0/p0;)Ljava/security/PublicKey;

    move-result-object p0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Ll0/m;

    iget-object p0, p0, Ll0/m;->d:Ll0/u0;

    iget-object p0, p0, Ll0/u0;->q:Lm/l;

    invoke-virtual {p0}, Lm/l;->t()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public getSigAlgName()Ljava/lang/String;
    .registers 7

    const-string v0, "BC"

    invoke-static {v0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    const-string v1, "Alg.Alias.Signature."

    if-eqz v0, :cond_21

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->getSigAlgOID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_21

    return-object v0

    :cond_21
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v0

    const/4 v2, 0x0

    :goto_26
    array-length v3, v0

    if-eq v2, v3, :cond_45

    aget-object v3, v0, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->getSigAlgOID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_42

    return-object v3

    :cond_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    :cond_45
    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->getSigAlgOID()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSigAlgOID()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Ll0/m;

    iget-object p0, p0, Ll0/m;->q:Ll0/b;

    iget-object p0, p0, Ll0/b;->c:Lm/q;

    invoke-virtual {p0}, Lm/q;->u()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSigAlgParams()[B
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Ll0/m;

    iget-object p0, p0, Ll0/m;->q:Ll0/b;

    iget-object p0, p0, Ll0/b;->d:Lm/f;

    if-eqz p0, :cond_11

    :try_start_8
    invoke-interface {p0}, Lm/f;->d()Lm/u;

    move-result-object p0

    invoke-virtual {p0}, Lm/n;->g()[B

    move-result-object p0
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_10} :catch_11

    return-object p0

    :catch_11
    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSignature()[B
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Ll0/m;

    iget-object p0, p0, Ll0/m;->x:Lm/b;

    invoke-virtual {p0}, Lm/b;->u()[B

    move-result-object p0

    return-object p0
.end method

.method public getSubjectAlternativeNames()Ljava/util/Collection;
    .registers 2

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Ll0/m;

    sget-object v0, Ll0/v;->z1:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->getAlternativeNames(Ll0/m;Lm/q;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public getSubjectDN()Ljava/security/Principal;
    .registers 2

    new-instance v0, Lf2/c;

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Ll0/m;

    iget-object p0, p0, Ll0/m;->d:Ll0/u0;

    iget-object p0, p0, Ll0/u0;->A1:Lj0/c;

    invoke-direct {v0, p0}, Lf2/c;-><init>(Lj0/c;)V

    return-object v0
.end method

.method public getSubjectUniqueID()[Z
    .registers 8

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Ll0/m;

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

.method public getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;
    .registers 2

    :try_start_0
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Ll0/m;

    iget-object p0, p0, Ll0/m;->d:Ll0/u0;

    iget-object p0, p0, Ll0/u0;->A1:Lj0/c;

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

.method public getTBSCertificate()[B
    .registers 2

    :try_start_0
    iget-object p0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Ll0/m;

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

.method public getVersion()I
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Ll0/m;

    iget-object p0, p0, Ll0/m;->d:Ll0/u0;

    iget-object p0, p0, Ll0/u0;->d:Lm/l;

    invoke-virtual {p0}, Lm/l;->y()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public hasFriendlyName()Z
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->attrCarrier:Lh2/k;

    invoke-interface {p0}, Lh2/k;->hasFriendlyName()Z

    move-result p0

    return p0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .registers 4

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->getVersion()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_84

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Ll0/m;

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

.method public declared-synchronized hashCode()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->hashValueSet:Z

    if-nez v0, :cond_11

    invoke-direct {p0}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->calculateHashCode()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->hashValue:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->hashValueSet:Z

    goto :goto_11

    :catchall_f
    move-exception v0

    goto :goto_15

    :cond_11
    :goto_11
    iget v0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->hashValue:I
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_f

    monitor-exit p0

    return v0

    :goto_15
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_f

    throw v0
.end method

.method public setBagAttribute(Lm/q;Lm/f;)V
    .registers 3

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->attrCarrier:Lh2/k;

    invoke-interface {p0, p1, p2}, Lh2/k;->setBagAttribute(Lm/q;Lm/f;)V

    return-void
.end method

.method public setFriendlyName(Ljava/lang/String;)V
    .registers 2

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->attrCarrier:Lh2/k;

    invoke-interface {p0, p1}, Lh2/k;->setFriendlyName(Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  [0]         Version: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lm4/m;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->getVersion()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "         SerialNumber: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "             IssuerDN: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->getIssuerDN()Ljava/security/Principal;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "           Start Date: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->getNotBefore()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "           Final Date: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->getNotAfter()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "            SubjectDN: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->getSubjectDN()Ljava/security/Principal;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "           Public Key: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  Signature Algorithm: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->getSigAlgName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->getSignature()[B

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

    :goto_98
    array-length v4, v2

    if-ge v3, v4, :cond_c3

    array-length v4, v2

    sub-int/2addr v4, v5

    const-string v6, "                       "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge v3, v4, :cond_b4

    new-instance v4, Ljava/lang/String;

    invoke-static {v2, v3, v5}, Ln4/c;->d([BII)[B

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>([B)V

    :goto_ad
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c0

    :cond_b4
    new-instance v4, Ljava/lang/String;

    array-length v6, v2

    sub-int/2addr v6, v3

    invoke-static {v2, v3, v6}, Ln4/c;->d([BII)[B

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>([B)V

    goto :goto_ad

    :goto_c0
    add-int/lit8 v3, v3, 0x14

    goto :goto_98

    :cond_c3
    iget-object p0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Ll0/m;

    iget-object p0, p0, Ll0/m;->d:Ll0/u0;

    iget-object p0, p0, Ll0/u0;->E1:Ll0/w;

    if-eqz p0, :cond_1a3

    iget-object v2, p0, Ll0/w;->d:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_dc

    const-string v3, "       Extensions: \n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_dc
    :goto_dc
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1a3

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm/q;

    invoke-virtual {p0, v3}, Ll0/w;->h(Lm/q;)Ll0/v;

    move-result-object v4

    iget-object v5, v4, Ll0/v;->q:Lm/r;

    if-eqz v5, :cond_19e

    iget-object v5, v5, Lm/r;->c:[B

    new-instance v6, Lm/k;

    invoke-direct {v6, v5}, Lm/k;-><init>([B)V

    const-string v5, "                       critical("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v4, Ll0/v;->d:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ") "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_106
    sget-object v4, Ll0/v;->B1:Lm/q;

    invoke-virtual {v3, v4}, Lm/u;->n(Lm/u;)Z

    move-result v4

    if-eqz v4, :cond_11d

    invoke-virtual {v6}, Lm/k;->f()Lm/u;

    move-result-object v4

    invoke-static {v4}, Ll0/j;->h(Ljava/lang/Object;)Ll0/j;

    move-result-object v4

    :goto_116
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_dc

    :cond_11d
    sget-object v4, Ll0/v;->y:Lm/q;

    invoke-virtual {v3, v4}, Lm/u;->n(Lm/u;)Z

    move-result v4

    if-eqz v4, :cond_13c

    invoke-virtual {v6}, Lm/k;->f()Lm/u;

    move-result-object v4

    if-eqz v4, :cond_137

    new-instance v5, Ll0/f0;

    invoke-static {v4}, Lm/b;->t(Ljava/lang/Object;)Lm/b;

    move-result-object v4

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v4, v5, Ll0/f0;->c:Lm/b;

    goto :goto_138

    :cond_137
    const/4 v5, 0x0

    :goto_138
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_119

    :cond_13c
    sget-object v4, Lv1/c;->a:Lm/q;

    invoke-virtual {v3, v4}, Lm/u;->n(Lm/u;)Z

    move-result v4

    if-eqz v4, :cond_150

    new-instance v4, Lv1/d;

    invoke-virtual {v6}, Lm/k;->f()Lm/u;

    move-result-object v5

    check-cast v5, Lm/b;

    invoke-direct {v4, v5}, Lv1/d;-><init>(Lm/b;)V

    goto :goto_116

    :cond_150
    sget-object v4, Lv1/c;->b:Lm/q;

    invoke-virtual {v3, v4}, Lm/u;->n(Lm/u;)Z

    move-result v4

    if-eqz v4, :cond_165

    new-instance v4, Lv1/e;

    invoke-virtual {v6}, Lm/k;->f()Lm/u;

    move-result-object v5

    check-cast v5, Lm/u0;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lv1/e;-><init>(Lm/u0;I)V

    goto :goto_116

    :cond_165
    sget-object v4, Lv1/c;->c:Lm/q;

    invoke-virtual {v3, v4}, Lm/u;->n(Lm/u;)Z

    move-result v4

    if-eqz v4, :cond_17a

    new-instance v4, Lv1/e;

    invoke-virtual {v6}, Lm/k;->f()Lm/u;

    move-result-object v5

    check-cast v5, Lm/u0;

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Lv1/e;-><init>(Lm/u0;I)V

    goto :goto_116

    :cond_17a
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
    :try_end_191
    .catch Ljava/lang/Exception; {:try_start_106 .. :try_end_191} :catch_192

    goto :goto_119

    :catch_192
    invoke-virtual {v3}, Lm/q;->u()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " value = *****"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_19e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_dc

    :cond_1a3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final verify(Ljava/security/PublicKey;)V
    .registers 4

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Ll0/m;

    iget-object v0, v0, Ll0/m;->q:Ll0/b;

    invoke-static {v0}, Lorg/bouncycastle/jce/provider/X509SignatureUtil;->getSignatureName(Ll0/b;)Ljava/lang/String;

    move-result-object v0

    :try_start_8
    const-string v1, "BC"

    invoke-static {v0, v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_e} :catch_f

    goto :goto_13

    :catch_f
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    :goto_13
    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->checkSignature(Ljava/security/PublicKey;Ljava/security/Signature;)V

    return-void
.end method

.method public final verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Ll0/m;

    iget-object v0, v0, Ll0/m;->q:Ll0/b;

    invoke-static {v0}, Lorg/bouncycastle/jce/provider/X509SignatureUtil;->getSignatureName(Ll0/b;)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_f

    invoke-static {v0, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p2

    goto :goto_13

    :cond_f
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p2

    :goto_13
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->checkSignature(Ljava/security/PublicKey;Ljava/security/Signature;)V

    return-void
.end method

.method public final verify(Ljava/security/PublicKey;Ljava/security/Provider;)V
    .registers 4

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Ll0/m;

    iget-object v0, v0, Ll0/m;->q:Ll0/b;

    invoke-static {v0}, Lorg/bouncycastle/jce/provider/X509SignatureUtil;->getSignatureName(Ll0/b;)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_f

    invoke-static {v0, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    move-result-object p2

    goto :goto_13

    :cond_f
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p2

    :goto_13
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->checkSignature(Ljava/security/PublicKey;Ljava/security/Signature;)V

    return-void
.end method
