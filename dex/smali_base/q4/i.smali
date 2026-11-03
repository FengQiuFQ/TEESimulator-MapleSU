.class public final Lq4/i;
.super Ljava/security/cert/X509CertSelector;

# interfaces
.implements Lm4/i;


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    check-cast p1, Ljava/security/cert/X509Certificate;

    invoke-super {p0, p1}, Ljava/security/cert/X509CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result p0

    return p0
.end method

.method public final clone()Ljava/lang/Object;
    .registers 1

    invoke-super {p0}, Ljava/security/cert/X509CertSelector;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lq4/i;

    return-object p0
.end method

.method public final match(Ljava/security/cert/Certificate;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lq4/i;->a(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
