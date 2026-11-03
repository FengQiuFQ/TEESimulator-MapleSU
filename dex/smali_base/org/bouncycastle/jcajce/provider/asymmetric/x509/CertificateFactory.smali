.class public Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;
.super Ljava/security/cert/CertificateFactorySpi;


# static fields
.field private static final PEM_CERT_PARSER:Lorg/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;

.field private static final PEM_CRL_PARSER:Lorg/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;

.field private static final PEM_PKCS7_PARSER:Lorg/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;


# instance fields
.field private final bcHelper:Le2/b;

.field private currentCrlStream:Ljava/io/InputStream;

.field private currentStream:Ljava/io/InputStream;

.field private sCrlData:Lm/y;

.field private sCrlDataObjectCount:I

.field private sData:Lm/y;

.field private sDataObjectCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;

    const-string v1, "CERTIFICATE"

    invoke-direct {v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->PEM_CERT_PARSER:Lorg/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;

    const-string v1, "CRL"

    invoke-direct {v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->PEM_CRL_PARSER:Lorg/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;

    const-string v1, "PKCS7"

    invoke-direct {v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->PEM_PKCS7_PARSER:Lorg/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/security/cert/CertificateFactorySpi;-><init>()V

    new-instance v0, Le2/a;

    invoke-direct {v0}, Le2/a;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->bcHelper:Le2/b;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sData:Lm/y;

    const/4 v1, 0x0

    iput v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sDataObjectCount:I

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->currentStream:Ljava/io/InputStream;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sCrlData:Lm/y;

    iput v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sCrlDataObjectCount:I

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->currentCrlStream:Ljava/io/InputStream;

    return-void
.end method

.method private doGenerateCRL(Ljava/io/InputStream;Z)Ljava/security/cert/CRL;
    .registers 6

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->currentCrlStream:Ljava/io/InputStream;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_d

    :goto_6
    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->currentCrlStream:Ljava/io/InputStream;

    iput-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sCrlData:Lm/y;

    iput v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sCrlDataObjectCount:I

    goto :goto_10

    :cond_d
    if-eq v0, p1, :cond_10

    goto :goto_6

    :cond_10
    :goto_10
    :try_start_10
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sCrlData:Lm/y;

    if-eqz v0, :cond_25

    iget p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sCrlDataObjectCount:I

    iget-object p2, v0, Lm/y;->c:[Lm/f;

    array-length p2, p2

    if-eq p1, p2, :cond_20

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->getCRL()Ljava/security/cert/CRL;

    move-result-object p0

    return-object p0

    :cond_20
    iput-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sCrlData:Lm/y;

    iput v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sCrlDataObjectCount:I

    return-object v2

    :cond_25
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_2c

    goto :goto_36

    :cond_2c
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-static {p1}, Lq4/k;->G0(Ljava/io/InputStream;)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object p1, v0

    :goto_36
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->mark(I)V

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_42

    return-object v2

    :cond_42
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    const/16 v1, 0x30

    if-eq v0, v1, :cond_4e

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->readPEMCRL(Ljava/io/InputStream;Z)Ljava/security/cert/CRL;

    move-result-object p0

    return-object p0

    :cond_4e
    new-instance p2, Lm/k;

    invoke-direct {p2, p1, v2}, Lm/k;-><init>(Ljava/io/InputStream;Ljava/lang/Object;)V

    invoke-direct {p0, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->readDERCRL(Lm/k;)Ljava/security/cert/CRL;

    move-result-object p0
    :try_end_57
    .catch Ljava/security/cert/CRLException; {:try_start_10 .. :try_end_57} :catch_63
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_57} :catch_58

    return-object p0

    :catch_58
    move-exception p0

    new-instance p1, Ljava/security/cert/CRLException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_63
    move-exception p0

    throw p0
.end method

.method private doGenerateCertificate(Ljava/io/InputStream;Z)Ljava/security/cert/Certificate;
    .registers 6

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->currentStream:Ljava/io/InputStream;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_d

    :goto_6
    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->currentStream:Ljava/io/InputStream;

    iput-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sData:Lm/y;

    iput v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sDataObjectCount:I

    goto :goto_10

    :cond_d
    if-eq v0, p1, :cond_10

    goto :goto_6

    :cond_10
    :goto_10
    :try_start_10
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sData:Lm/y;

    if-eqz v0, :cond_25

    iget p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sDataObjectCount:I

    iget-object p2, v0, Lm/y;->c:[Lm/f;

    array-length p2, p2

    if-eq p1, p2, :cond_20

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object p0

    return-object p0

    :cond_20
    iput-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sData:Lm/y;

    iput v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sDataObjectCount:I

    return-object v2

    :cond_25
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_2c

    goto :goto_36

    :cond_2c
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-static {p1}, Lq4/k;->G0(Ljava/io/InputStream;)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object p1, v0

    :goto_36
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->mark(I)V

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_42

    return-object v2

    :cond_42
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    const/16 v1, 0x30

    if-eq v0, v1, :cond_4e

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->readPEMCertificate(Ljava/io/InputStream;Z)Ljava/security/cert/Certificate;

    move-result-object p0

    return-object p0

    :cond_4e
    new-instance p2, Lm/k;

    invoke-direct {p2, p1}, Lm/k;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->readDERCertificate(Lm/k;)Ljava/security/cert/Certificate;

    move-result-object p0
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_57} :catch_58

    return-object p0

    :catch_58
    move-exception p0

    new-instance p1, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory$ExCertificateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "parsing issue: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2}, Lb/b;->B(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory$ExCertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private getCRL()Ljava/security/cert/CRL;
    .registers 4

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sCrlData:Lm/y;

    if-eqz v0, :cond_1b

    iget v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sCrlDataObjectCount:I

    iget-object v0, v0, Lm/y;->c:[Lm/f;

    array-length v2, v0

    if-lt v1, v2, :cond_c

    goto :goto_1b

    :cond_c
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sCrlDataObjectCount:I

    aget-object v0, v0, v1

    invoke-static {v0}, Ll0/n;->h(Lm/f;)Ll0/n;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->createCRL(Ll0/n;)Ljava/security/cert/CRL;

    move-result-object p0

    return-object p0

    :cond_1b
    :goto_1b
    const/4 p0, 0x0

    return-object p0
.end method

.method private getCRL(Lm/x;)Ljava/security/cert/CRL;
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    invoke-virtual {p1}, Lm/x;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_a5

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lm/x;->v(I)Lm/f;

    move-result-object v3

    instance-of v3, v3, Lm/q;

    if-eqz v3, :cond_a5

    invoke-virtual {p1, v1}, Lm/x;->v(I)Lm/f;

    move-result-object v3

    sget-object v4, Ld0/r;->S:Lm/q;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a5

    invoke-virtual {p1, v2}, Lm/x;->v(I)Lm/f;

    move-result-object p1

    check-cast p1, Lm/a0;

    invoke-static {p1, v2}, Lm/x;->u(Lm/a0;Z)Lm/x;

    move-result-object p1

    if-eqz p1, :cond_9c

    new-instance v0, Ld0/a0;

    invoke-static {p1}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lm/x;->w()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm/l;

    iput-object v3, v0, Ld0/a0;->c:Lm/l;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm/y;

    iput-object v3, v0, Ld0/a0;->d:Lm/y;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ld0/f;->h(Ljava/lang/Object;)Ld0/f;

    move-result-object v3

    iput-object v3, v0, Ld0/a0;->q:Ld0/f;

    :goto_53
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_9c

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm/u;

    instance-of v4, v3, Lm/a0;

    if-eqz v4, :cond_97

    check-cast v3, Lm/a0;

    iget v4, v3, Lm/a0;->q:I

    sget-object v5, Lm/y;->q:Lm/a;

    if-eqz v4, :cond_88

    if-ne v4, v2, :cond_7c

    invoke-static {v3}, Lq4/k;->v(Lm/a0;)V

    invoke-virtual {v3, v1, v5}, Lm/a0;->t(ZLm/a;)Lm/u;

    move-result-object v3

    invoke-virtual {v5, v3}, Lm/a;->a(Lm/u;)V

    check-cast v3, Lm/y;

    iput-object v3, v0, Ld0/a0;->y:Lm/y;

    goto :goto_53

    :cond_7c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unknown tag value "

    invoke-static {v4, p1}, Lb/b;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_88
    invoke-static {v3}, Lq4/k;->v(Lm/a0;)V

    invoke-virtual {v3, v1, v5}, Lm/a0;->t(ZLm/a;)Lm/u;

    move-result-object v3

    invoke-virtual {v5, v3}, Lm/a;->a(Lm/u;)V

    check-cast v3, Lm/y;

    iput-object v3, v0, Ld0/a0;->x:Lm/y;

    goto :goto_53

    :cond_97
    check-cast v3, Lm/y;

    iput-object v3, v0, Ld0/a0;->z1:Lm/y;

    goto :goto_53

    :cond_9c
    iget-object p1, v0, Ld0/a0;->y:Lm/y;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sCrlData:Lm/y;

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->getCRL()Ljava/security/cert/CRL;

    move-result-object p0

    return-object p0

    :cond_a5
    invoke-static {p1}, Ll0/n;->h(Lm/f;)Ll0/n;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->createCRL(Ll0/n;)Ljava/security/cert/CRL;

    move-result-object p0

    return-object p0
.end method

.method private getCertificate()Ljava/security/cert/Certificate;
    .registers 4

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sData:Lm/y;

    if-eqz v0, :cond_23

    :cond_4
    iget v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sDataObjectCount:I

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sData:Lm/y;

    iget-object v1, v1, Lm/y;->c:[Lm/f;

    array-length v2, v1

    if-ge v0, v2, :cond_23

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sDataObjectCount:I

    aget-object v0, v1, v0

    instance-of v1, v0, Lm/x;

    if-eqz v1, :cond_4

    new-instance v1, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->bcHelper:Le2/b;

    invoke-static {v0}, Ll0/m;->i(Ljava/lang/Object;)Ll0/m;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;-><init>(Le2/b;Ll0/m;)V

    return-object v1

    :cond_23
    const/4 p0, 0x0

    return-object p0
.end method

.method private getCertificate(Lm/x;)Ljava/security/cert/Certificate;
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    invoke-virtual {p1}, Lm/x;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_a5

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lm/x;->v(I)Lm/f;

    move-result-object v3

    instance-of v3, v3, Lm/q;

    if-eqz v3, :cond_a5

    invoke-virtual {p1, v1}, Lm/x;->v(I)Lm/f;

    move-result-object v3

    sget-object v4, Ld0/r;->S:Lm/q;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a5

    invoke-virtual {p1, v2}, Lm/x;->v(I)Lm/f;

    move-result-object p1

    check-cast p1, Lm/a0;

    invoke-static {p1, v2}, Lm/x;->u(Lm/a0;Z)Lm/x;

    move-result-object p1

    if-eqz p1, :cond_9c

    new-instance v0, Ld0/a0;

    invoke-static {p1}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lm/x;->w()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm/l;

    iput-object v3, v0, Ld0/a0;->c:Lm/l;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm/y;

    iput-object v3, v0, Ld0/a0;->d:Lm/y;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ld0/f;->h(Ljava/lang/Object;)Ld0/f;

    move-result-object v3

    iput-object v3, v0, Ld0/a0;->q:Ld0/f;

    :goto_53
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_9c

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm/u;

    instance-of v4, v3, Lm/a0;

    if-eqz v4, :cond_97

    check-cast v3, Lm/a0;

    iget v4, v3, Lm/a0;->q:I

    sget-object v5, Lm/y;->q:Lm/a;

    if-eqz v4, :cond_88

    if-ne v4, v2, :cond_7c

    invoke-static {v3}, Lq4/k;->v(Lm/a0;)V

    invoke-virtual {v3, v1, v5}, Lm/a0;->t(ZLm/a;)Lm/u;

    move-result-object v3

    invoke-virtual {v5, v3}, Lm/a;->a(Lm/u;)V

    check-cast v3, Lm/y;

    iput-object v3, v0, Ld0/a0;->y:Lm/y;

    goto :goto_53

    :cond_7c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unknown tag value "

    invoke-static {v4, p1}, Lb/b;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_88
    invoke-static {v3}, Lq4/k;->v(Lm/a0;)V

    invoke-virtual {v3, v1, v5}, Lm/a0;->t(ZLm/a;)Lm/u;

    move-result-object v3

    invoke-virtual {v5, v3}, Lm/a;->a(Lm/u;)V

    check-cast v3, Lm/y;

    iput-object v3, v0, Ld0/a0;->x:Lm/y;

    goto :goto_53

    :cond_97
    check-cast v3, Lm/y;

    iput-object v3, v0, Ld0/a0;->z1:Lm/y;

    goto :goto_53

    :cond_9c
    iget-object p1, v0, Ld0/a0;->x:Lm/y;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->sData:Lm/y;

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object p0

    return-object p0

    :cond_a5
    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->bcHelper:Le2/b;

    invoke-static {p1}, Ll0/m;->i(Ljava/lang/Object;)Ll0/m;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;-><init>(Le2/b;Ll0/m;)V

    return-object v0
.end method

.method private readDERCRL(Lm/k;)Ljava/security/cert/CRL;
    .registers 2

    invoke-virtual {p1}, Lm/k;->f()Lm/u;

    move-result-object p1

    invoke-static {p1}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->getCRL(Lm/x;)Ljava/security/cert/CRL;

    move-result-object p0

    return-object p0
.end method

.method private readDERCertificate(Lm/k;)Ljava/security/cert/Certificate;
    .registers 2

    invoke-virtual {p1}, Lm/k;->f()Lm/u;

    move-result-object p1

    invoke-static {p1}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->getCertificate(Lm/x;)Ljava/security/cert/Certificate;

    move-result-object p0

    return-object p0
.end method

.method private readPEMCRL(Ljava/io/InputStream;Z)Ljava/security/cert/CRL;
    .registers 4

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->PEM_CRL_PARSER:Lorg/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;->readPEMObject(Ljava/io/InputStream;Z)Lm/x;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->getCRL(Lm/x;)Ljava/security/cert/CRL;

    move-result-object p0

    return-object p0
.end method

.method private readPEMCertificate(Ljava/io/InputStream;Z)Ljava/security/cert/Certificate;
    .registers 4

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->PEM_CERT_PARSER:Lorg/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;->readPEMObject(Ljava/io/InputStream;Z)Lm/x;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->getCertificate(Lm/x;)Ljava/security/cert/Certificate;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public createCRL(Ll0/n;)Ljava/security/cert/CRL;
    .registers 3

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->bcHelper:Le2/b;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;-><init>(Le2/b;Ll0/n;)V

    return-object v0
.end method

.method public engineGenerateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->doGenerateCRL(Ljava/io/InputStream;Z)Ljava/security/cert/CRL;

    move-result-object p0

    return-object p0
.end method

.method public engineGenerateCRLs(Ljava/io/InputStream;)Ljava/util/Collection;
    .registers 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_a
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    invoke-direct {p0, v1, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->doGenerateCRL(Ljava/io/InputStream;Z)Ljava/security/cert/CRL;

    move-result-object p1

    if-eqz p1, :cond_18

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_18
    return-object v0
.end method

.method public engineGenerateCertPath(Ljava/io/InputStream;)Ljava/security/cert/CertPath;
    .registers 3

    const-string v0, "PkiPath"

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->engineGenerateCertPath(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/cert/CertPath;

    move-result-object p0

    return-object p0
.end method

.method public engineGenerateCertPath(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/cert/CertPath;
    .registers 3

    new-instance p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object p0
.end method

.method public engineGenerateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;
    .registers 4

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    instance-of v1, v0, Ljava/security/cert/X509Certificate;

    if-eqz v1, :cond_15

    goto :goto_4

    :cond_15
    new-instance p0, Ljava/security/cert/CertificateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "list contains non X509Certificate object while creating CertPath\n"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2d
    new-instance p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public engineGenerateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->doGenerateCertificate(Ljava/io/InputStream;Z)Ljava/security/cert/Certificate;

    move-result-object p0

    return-object p0
.end method

.method public engineGenerateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;
    .registers 4

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_a
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->doGenerateCertificate(Ljava/io/InputStream;Z)Ljava/security/cert/Certificate;

    move-result-object v1

    if-eqz v1, :cond_18

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_18
    return-object p1
.end method

.method public engineGetCertPathEncodings()Ljava/util/Iterator;
    .registers 1

    sget-object p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->certPathEncodings:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method
