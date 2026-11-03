.class public final La2/l;
.super Ljava/security/cert/X509CRLSelector;


# instance fields
.field public final c:La2/m;


# direct methods
.method public constructor <init>(La2/m;)V
    .registers 3

    invoke-direct {p0}, Ljava/security/cert/X509CRLSelector;-><init>()V

    iput-object p1, p0, La2/l;->c:La2/m;

    iget-object p1, p1, La2/m;->c:Ljava/security/cert/CRLSelector;

    instance-of v0, p1, Ljava/security/cert/X509CRLSelector;

    if-eqz v0, :cond_30

    check-cast p1, Ljava/security/cert/X509CRLSelector;

    invoke-virtual {p1}, Ljava/security/cert/X509CRLSelector;->getCertificateChecking()Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/security/cert/X509CRLSelector;->setCertificateChecking(Ljava/security/cert/X509Certificate;)V

    invoke-virtual {p1}, Ljava/security/cert/X509CRLSelector;->getDateAndTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/security/cert/X509CRLSelector;->setDateAndTime(Ljava/util/Date;)V

    invoke-virtual {p1}, Ljava/security/cert/X509CRLSelector;->getIssuers()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/security/cert/X509CRLSelector;->setIssuers(Ljava/util/Collection;)V

    invoke-virtual {p1}, Ljava/security/cert/X509CRLSelector;->getMinCRL()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/security/cert/X509CRLSelector;->setMinCRLNumber(Ljava/math/BigInteger;)V

    invoke-virtual {p1}, Ljava/security/cert/X509CRLSelector;->getMaxCRL()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/security/cert/X509CRLSelector;->setMaxCRLNumber(Ljava/math/BigInteger;)V

    :cond_30
    return-void
.end method


# virtual methods
.method public final match(Ljava/security/cert/CRL;)Z
    .registers 2

    iget-object p0, p0, La2/l;->c:La2/m;

    if-nez p0, :cond_a

    if-eqz p1, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0

    :cond_a
    invoke-virtual {p0, p1}, La2/m;->match(Ljava/security/cert/CRL;)Z

    move-result p0

    return p0
.end method
