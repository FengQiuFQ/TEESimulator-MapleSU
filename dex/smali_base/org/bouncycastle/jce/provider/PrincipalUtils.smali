.class Lorg/bouncycastle/jce/provider/PrincipalUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCA(Ljava/security/cert/TrustAnchor;)Lj0/c;
    .registers 1

    invoke-static {p0}, Lorg/bouncycastle/jce/provider/PrincipalUtils;->notNull(Ljava/security/cert/TrustAnchor;)Ljava/security/cert/TrustAnchor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/cert/TrustAnchor;->getCA()Ljavax/security/auth/x500/X500Principal;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/jce/provider/PrincipalUtils;->getX500Name(Ljavax/security/auth/x500/X500Principal;)Lj0/c;

    move-result-object p0

    return-object p0
.end method

.method private static getEncoded(Ljavax/security/auth/x500/X500Principal;)[B
    .registers 1

    invoke-static {p0}, Lorg/bouncycastle/jce/provider/PrincipalUtils;->notNull(Ljavax/security/auth/x500/X500Principal;)Ljavax/security/auth/x500/X500Principal;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/jce/provider/PrincipalUtils;->notNull([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static getEncodedIssuerPrincipal(Ljava/lang/Object;)Lj0/c;
    .registers 2

    instance-of v0, p0, Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_b

    check-cast p0, Ljava/security/cert/X509Certificate;

    invoke-static {p0}, Lorg/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509Certificate;)Lj0/c;

    move-result-object p0

    return-object p0

    :cond_b
    check-cast p0, Lq4/f;

    check-cast p0, Lq4/m;

    invoke-virtual {p0}, Lq4/m;->e()Lq4/b;

    move-result-object p0

    invoke-virtual {p0}, Lq4/b;->b()[Ljava/security/Principal;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    check-cast p0, Ljavax/security/auth/x500/X500Principal;

    invoke-static {p0}, Lorg/bouncycastle/jce/provider/PrincipalUtils;->getX500Name(Ljavax/security/auth/x500/X500Principal;)Lj0/c;

    move-result-object p0

    return-object p0
.end method

.method public static getIssuerPrincipal(Ljava/security/cert/X509CRL;)Lj0/c;
    .registers 1

    invoke-static {p0}, Lorg/bouncycastle/jce/provider/PrincipalUtils;->notNull(Ljava/security/cert/X509CRL;)Ljava/security/cert/X509CRL;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/jce/provider/PrincipalUtils;->getX500Name(Ljavax/security/auth/x500/X500Principal;)Lj0/c;

    move-result-object p0

    return-object p0
.end method

.method public static getIssuerPrincipal(Ljava/security/cert/X509Certificate;)Lj0/c;
    .registers 2

    instance-of v0, p0, Lb2/b;

    if-eqz v0, :cond_f

    check-cast p0, Lb2/b;

    invoke-interface {p0}, Lb2/b;->getIssuerX500Name()Lj0/c;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/jce/provider/PrincipalUtils;->notNull(Lj0/c;)Lj0/c;

    move-result-object p0

    return-object p0

    :cond_f
    invoke-static {p0}, Lorg/bouncycastle/jce/provider/PrincipalUtils;->notNull(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/jce/provider/PrincipalUtils;->getX500Name(Ljavax/security/auth/x500/X500Principal;)Lj0/c;

    move-result-object p0

    return-object p0
.end method

.method public static getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Lj0/c;
    .registers 2

    instance-of v0, p0, Lb2/b;

    if-eqz v0, :cond_f

    check-cast p0, Lb2/b;

    invoke-interface {p0}, Lb2/b;->getSubjectX500Name()Lj0/c;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/jce/provider/PrincipalUtils;->notNull(Lj0/c;)Lj0/c;

    move-result-object p0

    return-object p0

    :cond_f
    invoke-static {p0}, Lorg/bouncycastle/jce/provider/PrincipalUtils;->notNull(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/jce/provider/PrincipalUtils;->getX500Name(Ljavax/security/auth/x500/X500Principal;)Lj0/c;

    move-result-object p0

    return-object p0
.end method

.method public static getX500Name(Lj0/d;Ljavax/security/auth/x500/X500Principal;)Lj0/c;
    .registers 2

    invoke-static {p1}, Lorg/bouncycastle/jce/provider/PrincipalUtils;->getEncoded(Ljavax/security/auth/x500/X500Principal;)[B

    move-result-object p1

    invoke-static {p0, p1}, Lj0/c;->h(Lj0/d;Ljava/lang/Object;)Lj0/c;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/jce/provider/PrincipalUtils;->notNull(Lj0/c;)Lj0/c;

    move-result-object p0

    return-object p0
.end method

.method public static getX500Name(Ljavax/security/auth/x500/X500Principal;)Lj0/c;
    .registers 1

    invoke-static {p0}, Lorg/bouncycastle/jce/provider/PrincipalUtils;->getEncoded(Ljavax/security/auth/x500/X500Principal;)[B

    move-result-object p0

    invoke-static {p0}, Lj0/c;->i(Ljava/lang/Object;)Lj0/c;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/jce/provider/PrincipalUtils;->notNull(Lj0/c;)Lj0/c;

    move-result-object p0

    return-object p0
.end method

.method private static notNull(Lj0/c;)Lj0/c;
    .registers 1

    if-eqz p0, :cond_3

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method private static notNull(Ljava/security/cert/TrustAnchor;)Ljava/security/cert/TrustAnchor;
    .registers 1

    if-eqz p0, :cond_3

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method private static notNull(Ljava/security/cert/X509CRL;)Ljava/security/cert/X509CRL;
    .registers 1

    if-eqz p0, :cond_3

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method private static notNull(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .registers 1

    if-eqz p0, :cond_3

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method private static notNull(Ljavax/security/auth/x500/X500Principal;)Ljavax/security/auth/x500/X500Principal;
    .registers 1

    if-eqz p0, :cond_3

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method private static notNull([B)[B
    .registers 1

    if-eqz p0, :cond_3

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
