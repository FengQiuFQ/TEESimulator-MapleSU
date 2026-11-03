.class public final Lq4/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/cert/CertSelector;
.implements Lm4/i;


# instance fields
.field public final c:Ll0/b0;


# direct methods
.method public constructor <init>(Lm/x;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ll0/b0;->h(Lm/f;)Ll0/b0;

    move-result-object p1

    iput-object p1, p0, Lq4/a;->c:Ll0/b0;

    return-void
.end method

.method public static c(Ll0/z;)[Ljava/security/Principal;
    .registers 6

    invoke-virtual {p0}, Ll0/z;->i()[Ll0/y;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_c
    array-length v3, p0

    if-eq v2, v3, :cond_36

    aget-object v3, p0, v2

    iget v3, v3, Ll0/y;->d:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_33

    :try_start_16
    new-instance v3, Ljavax/security/auth/x500/X500Principal;

    aget-object v4, p0, v2

    iget-object v4, v4, Ll0/y;->c:Lm/f;

    invoke-interface {v4}, Lm/f;->d()Lm/u;

    move-result-object v4

    invoke-virtual {v4}, Lm/n;->getEncoded()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_2a} :catch_2b

    goto :goto_33

    :catch_2b
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "badly formed Name object"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_33
    :goto_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_36
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_45
    array-length v2, p0

    if-eq v1, v2, :cond_54

    aget-object v2, p0, v1

    instance-of v3, v2, Ljava/security/Principal;

    if-eqz v3, :cond_51

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_45

    :cond_54
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/security/Principal;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/security/Principal;

    return-object p0
.end method

.method public static d(Lf2/c;Ll0/z;)Z
    .registers 8

    invoke-virtual {p1}, Ll0/z;->i()[Ll0/y;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    array-length v2, p1

    if-eq v1, v2, :cond_4c

    aget-object v2, p1, v1

    iget v3, v2, Ll0/y;->d:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_49

    :try_start_10
    new-instance v3, Lf2/c;

    iget-object v2, v2, Ll0/y;->c:Lm/f;

    invoke-interface {v2}, Lm/f;->d()Lm/u;

    move-result-object v2

    invoke-virtual {v2}, Lm/n;->getEncoded()[B

    move-result-object v2

    new-instance v4, Lm/k;

    invoke-direct {v4, v2}, Lm/k;-><init>([B)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_21} :catch_49

    :try_start_21
    invoke-virtual {v4}, Lm/k;->f()Lm/u;

    move-result-object v2

    invoke-static {v2}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v2
    :try_end_29
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21 .. :try_end_29} :catch_34
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_29} :catch_49

    :try_start_29
    invoke-direct {v3, v2}, Ll0/d1;-><init>(Lm/x;)V

    invoke-virtual {v3, p0}, Ll0/d1;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    const/4 p0, 0x1

    return p0

    :catch_34
    move-exception v2

    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "not an ASN.1 Sequence: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_49} :catch_49

    :catch_49
    :cond_49
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_4c
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

    invoke-virtual {p0, p1}, Lq4/a;->match(Ljava/security/cert/Certificate;)Z

    move-result p0

    return p0
.end method

.method public final b()[Ljava/security/Principal;
    .registers 1

    iget-object p0, p0, Lq4/a;->c:Ll0/b0;

    iget-object p0, p0, Ll0/b0;->d:Ll0/z;

    if-eqz p0, :cond_b

    invoke-static {p0}, Lq4/a;->c(Ll0/z;)[Ljava/security/Principal;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public final clone()Ljava/lang/Object;
    .registers 2

    new-instance v0, Lq4/a;

    iget-object p0, p0, Lq4/a;->c:Ll0/b0;

    invoke-virtual {p0}, Ll0/b0;->d()Lm/u;

    move-result-object p0

    check-cast p0, Lm/x;

    invoke-direct {v0, p0}, Lq4/a;-><init>(Lm/x;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    instance-of v0, p1, Lq4/a;

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    check-cast p1, Lq4/a;

    iget-object p0, p0, Lq4/a;->c:Ll0/b0;

    iget-object p1, p1, Lq4/a;->c:Ll0/b0;

    invoke-virtual {p0, p1}, Lm/n;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .registers 1

    iget-object p0, p0, Lq4/a;->c:Ll0/b0;

    invoke-virtual {p0}, Lm/n;->hashCode()I

    move-result p0

    return p0
.end method

.method public final match(Ljava/security/cert/Certificate;)Z
    .registers 8

    iget-object p0, p0, Lq4/a;->c:Ll0/b0;

    instance-of v0, p1, Ljava/security/cert/X509Certificate;

    const/4 v1, 0x0

    if-nez v0, :cond_9

    goto/16 :goto_bc

    :cond_9
    move-object v0, p1

    check-cast v0, Ljava/security/cert/X509Certificate;

    :try_start_c
    iget-object v2, p0, Ll0/b0;->c:Ll0/c0;
    :try_end_e
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_c .. :try_end_e} :catch_bc

    iget-object v3, p0, Ll0/b0;->d:Ll0/z;

    iget-object v4, p0, Ll0/b0;->q:Ll0/i0;

    const/4 v5, 0x1

    if-eqz v2, :cond_4e

    :try_start_15
    iget-object p1, v2, Ll0/c0;->d:Lm/l;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1, v2}, Lm/l;->v(Ljava/math/BigInteger;)Z

    move-result p1
    :try_end_1f
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_15 .. :try_end_1f} :catch_bc

    if-eqz p1, :cond_bc

    :try_start_21
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getTBSCertificate()[B

    move-result-object p1

    invoke-static {p1}, Lm/u;->o([B)Lm/u;

    move-result-object p1

    invoke-static {p1}, Ll0/v0;->h(Lm/u;)Ll0/v0;

    move-result-object p1

    new-instance v0, Lf2/c;

    iget-object p1, p1, Ll0/v0;->d:Lj0/c;

    invoke-static {p1}, Ll0/d1;->j(Ljava/lang/Object;)Ll0/d1;

    move-result-object p1

    invoke-direct {v0, p1}, Lf2/c;-><init>(Ll0/d1;)V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_38} :catch_43
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_21 .. :try_end_38} :catch_bc

    :try_start_38
    iget-object p0, p0, Ll0/b0;->c:Ll0/c0;

    iget-object p0, p0, Ll0/c0;->c:Ll0/z;

    invoke-static {v0, p0}, Lq4/a;->d(Lf2/c;Ll0/z;)Z

    move-result p0

    if-eqz p0, :cond_bc

    goto :goto_6d

    :catch_43
    move-exception p0

    new-instance p1, Ljava/security/cert/CertificateEncodingException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4e
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_38 .. :try_end_4e} :catch_bc

    :cond_4e
    if-eqz v3, :cond_79

    :try_start_50
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getTBSCertificate()[B

    move-result-object p0

    invoke-static {p0}, Lm/u;->o([B)Lm/u;

    move-result-object p0

    invoke-static {p0}, Ll0/v0;->h(Lm/u;)Ll0/v0;

    move-result-object p0

    new-instance v0, Lf2/c;

    iget-object p0, p0, Ll0/v0;->q:Lj0/c;

    invoke-static {p0}, Ll0/d1;->j(Ljava/lang/Object;)Ll0/d1;

    move-result-object p0

    invoke-direct {v0, p0}, Lf2/c;-><init>(Ll0/d1;)V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_67} :catch_6e
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_50 .. :try_end_67} :catch_bc

    :try_start_67
    invoke-static {v0, v3}, Lq4/a;->d(Lf2/c;Ll0/z;)Z

    move-result p0

    if-eqz p0, :cond_79

    :goto_6d
    return v5

    :catch_6e
    move-exception p0

    new-instance p1, Ljava/security/cert/CertificateEncodingException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_79
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_67 .. :try_end_79} :catch_bc

    :cond_79
    if-eqz v4, :cond_bc

    :try_start_7b
    iget-object p0, v4, Ll0/i0;->q:Ll0/b;

    iget-object p0, p0, Ll0/b;->c:Lm/q;

    invoke-virtual {p0}, Lm/q;->u()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BC"

    invoke-static {p0, v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_89} :catch_bc

    if-eqz v4, :cond_92

    :try_start_8b
    iget-object v0, v4, Ll0/i0;->c:Lm/h;

    invoke-virtual {v0}, Lm/h;->u()I

    move-result v0

    goto :goto_93

    :cond_92
    const/4 v0, -0x1

    :goto_93
    if-eqz v0, :cond_a0

    if-eq v0, v5, :cond_98

    goto :goto_ab

    :cond_98
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->update([B)V

    goto :goto_ab

    :cond_a0
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p1

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->update([B)V

    :goto_ab
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    if-eqz v4, :cond_b8

    iget-object p1, v4, Ll0/i0;->x:Lm/b;

    invoke-virtual {p1}, Lm/b;->s()[B

    move-result-object p1

    goto :goto_b9

    :cond_b8
    const/4 p1, 0x0

    :goto_b9
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_bc
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_8b .. :try_end_bc} :catch_bc

    :catch_bc
    :cond_bc
    :goto_bc
    return v1
.end method
