.class public final Lq4/j;
.super Ljava/lang/Object;


# instance fields
.field public a:Lorg/bouncycastle/jce/provider/X509CertificateObject;

.field public b:Lorg/bouncycastle/jce/provider/X509CertificateObject;


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    goto :goto_31

    :cond_4
    instance-of v1, p1, Lq4/j;

    if-nez v1, :cond_9

    goto :goto_31

    :cond_9
    check-cast p1, Lq4/j;

    iget-object v1, p1, Lq4/j;->b:Lorg/bouncycastle/jce/provider/X509CertificateObject;

    iget-object p1, p1, Lq4/j;->a:Lorg/bouncycastle/jce/provider/X509CertificateObject;

    iget-object v2, p0, Lq4/j;->a:Lorg/bouncycastle/jce/provider/X509CertificateObject;

    const/4 v3, 0x1

    if-eqz v2, :cond_19

    invoke-virtual {v2, p1}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_1e

    :cond_19
    if-eqz p1, :cond_1d

    move p1, v0

    goto :goto_1e

    :cond_1d
    move p1, v3

    :goto_1e
    iget-object p0, p0, Lq4/j;->b:Lorg/bouncycastle/jce/provider/X509CertificateObject;

    if-eqz p0, :cond_27

    invoke-virtual {p0, v1}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->equals(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_2c

    :cond_27
    if-eqz v1, :cond_2b

    move p0, v0

    goto :goto_2c

    :cond_2b
    move p0, v3

    :goto_2c
    if-eqz p1, :cond_31

    if-eqz p0, :cond_31

    return v3

    :cond_31
    :goto_31
    return v0
.end method

.method public final hashCode()I
    .registers 3

    iget-object v0, p0, Lq4/j;->a:Lorg/bouncycastle/jce/provider/X509CertificateObject;

    const/4 v1, -0x1

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->hashCode()I

    move-result v0

    xor-int/2addr v1, v0

    :cond_a
    iget-object p0, p0, Lq4/j;->b:Lorg/bouncycastle/jce/provider/X509CertificateObject;

    if-eqz p0, :cond_16

    mul-int/lit8 v1, v1, 0x11

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->hashCode()I

    move-result p0

    xor-int/2addr p0, v1

    return p0

    :cond_16
    return v1
.end method
