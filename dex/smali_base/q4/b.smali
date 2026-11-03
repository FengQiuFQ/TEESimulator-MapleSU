.class public final Lq4/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/cert/CertSelector;
.implements Lm4/i;


# instance fields
.field public final c:Lm/n;


# direct methods
.method public constructor <init>(Ll0/c;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Ll0/c;->c:Lm/n;

    iput-object p1, p0, Lq4/b;->c:Lm/n;

    return-void
.end method

.method public static c(Ljavax/security/auth/x500/X500Principal;Ll0/z;)Z
    .registers 7

    invoke-virtual {p1}, Ll0/z;->i()[Ll0/y;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    array-length v2, p1

    if-eq v1, v2, :cond_2a

    aget-object v2, p1, v1

    iget v3, v2, Ll0/y;->d:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_27

    :try_start_10
    new-instance v3, Ljavax/security/auth/x500/X500Principal;

    iget-object v2, v2, Ll0/y;->c:Lm/f;

    invoke-interface {v2}, Lm/f;->d()Lm/u;

    move-result-object v2

    invoke-virtual {v2}, Lm/n;->getEncoded()[B

    move-result-object v2

    invoke-direct {v3, v2}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    invoke-virtual {v3, p0}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_23} :catch_27

    if-eqz v2, :cond_27

    const/4 p0, 0x1

    return p0

    :catch_27
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_2a
    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    check-cast p1, Ljava/security/cert/Certificate;

    invoke-virtual {p0, p1}, Lq4/b;->match(Ljava/security/cert/Certificate;)Z

    move-result p0

    return p0
.end method

.method public final b()[Ljava/security/Principal;
    .registers 6

    iget-object p0, p0, Lq4/b;->c:Lm/n;

    instance-of v0, p0, Ll0/y0;

    if-eqz v0, :cond_b

    check-cast p0, Ll0/y0;

    iget-object p0, p0, Ll0/y0;->c:Ll0/z;

    goto :goto_d

    :cond_b
    check-cast p0, Ll0/z;

    :goto_d
    invoke-virtual {p0}, Ll0/z;->i()[Ll0/y;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_19
    array-length v3, p0

    if-eq v2, v3, :cond_43

    aget-object v3, p0, v2

    iget v3, v3, Ll0/y;->d:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_40

    :try_start_23
    new-instance v3, Ljavax/security/auth/x500/X500Principal;

    aget-object v4, p0, v2

    iget-object v4, v4, Ll0/y;->c:Lm/f;

    invoke-interface {v4}, Lm/f;->d()Lm/u;

    move-result-object v4

    invoke-virtual {v4}, Lm/n;->getEncoded()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_37} :catch_38

    goto :goto_40

    :catch_38
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "badly formed Name object"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_40
    :goto_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_43
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_52
    array-length v2, p0

    if-eq v1, v2, :cond_61

    aget-object v2, p0, v1

    instance-of v3, v2, Ljava/security/Principal;

    if-eqz v3, :cond_5e

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5e
    add-int/lit8 v1, v1, 0x1

    goto :goto_52

    :cond_61
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/security/Principal;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/security/Principal;

    return-object p0
.end method

.method public final clone()Ljava/lang/Object;
    .registers 2

    new-instance v0, Lq4/b;

    iget-object p0, p0, Lq4/b;->c:Lm/n;

    invoke-static {p0}, Ll0/c;->h(Lm/f;)Ll0/c;

    move-result-object p0

    invoke-direct {v0, p0}, Lq4/b;-><init>(Ll0/c;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    instance-of v0, p1, Lq4/b;

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    check-cast p1, Lq4/b;

    iget-object p0, p0, Lq4/b;->c:Lm/n;

    iget-object p1, p1, Lq4/b;->c:Lm/n;

    invoke-virtual {p0, p1}, Lm/n;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .registers 1

    iget-object p0, p0, Lq4/b;->c:Lm/n;

    invoke-virtual {p0}, Lm/n;->hashCode()I

    move-result p0

    return p0
.end method

.method public final match(Ljava/security/cert/Certificate;)Z
    .registers 4

    instance-of v0, p1, Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_5

    goto :goto_47

    :cond_5
    check-cast p1, Ljava/security/cert/X509Certificate;

    iget-object p0, p0, Lq4/b;->c:Lm/n;

    instance-of v0, p0, Ll0/y0;

    if-eqz v0, :cond_39

    check-cast p0, Ll0/y0;

    iget-object v0, p0, Ll0/y0;->d:Ll0/c0;

    if-eqz v0, :cond_2c

    iget-object p0, v0, Ll0/c0;->d:Lm/l;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Lm/l;->v(Ljava/math/BigInteger;)Z

    move-result p0

    if-eqz p0, :cond_47

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p0

    iget-object p1, v0, Ll0/c0;->c:Ll0/z;

    invoke-static {p0, p1}, Lq4/b;->c(Ljavax/security/auth/x500/X500Principal;Ll0/z;)Z

    move-result p0

    if-eqz p0, :cond_47

    goto :goto_45

    :cond_2c
    iget-object p0, p0, Ll0/y0;->c:Ll0/z;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p1

    invoke-static {p1, p0}, Lq4/b;->c(Ljavax/security/auth/x500/X500Principal;Ll0/z;)Z

    move-result p0

    if-eqz p0, :cond_47

    goto :goto_45

    :cond_39
    check-cast p0, Ll0/z;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p1

    invoke-static {p1, p0}, Lq4/b;->c(Ljavax/security/auth/x500/X500Principal;Ll0/z;)Z

    move-result p0

    if-eqz p0, :cond_47

    :goto_45
    const/4 p0, 0x1

    return p0

    :cond_47
    :goto_47
    const/4 p0, 0x0

    return p0
.end method
