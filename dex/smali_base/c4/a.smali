.class public final Lc4/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/PrivateKey;
.implements Ljava/security/Key;


# instance fields
.field public transient c:Lg3/h;

.field public transient d:Lm/y;


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    instance-of v0, p1, Lc4/a;

    if-eqz v0, :cond_23

    check-cast p1, Lc4/a;

    :try_start_a
    iget-object p0, p0, Lc4/a;->c:Lg3/h;

    invoke-interface {p0}, Lm4/c;->getEncoded()[B

    move-result-object p0

    iget-object p1, p1, Lc4/a;->c:Lg3/h;

    invoke-interface {p1}, Lm4/c;->getEncoded()[B

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_1a} :catch_1b

    return p0

    :catch_1b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "unable to perform equals"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_23
    const/4 p0, 0x0

    return p0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .registers 1

    const-string p0, "LMS"

    return-object p0
.end method

.method public final getEncoded()[B
    .registers 2

    :try_start_0
    iget-object v0, p0, Lc4/a;->c:Lg3/h;

    iget-object p0, p0, Lc4/a;->d:Lm/y;

    invoke-static {v0, p0}, Ls2/a;->i(Le1/b;Lm/y;)Ld0/t;

    move-result-object p0

    invoke-virtual {p0}, Lm/n;->getEncoded()[B

    move-result-object p0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getFormat()Ljava/lang/String;
    .registers 1

    const-string p0, "PKCS#8"

    return-object p0
.end method

.method public final hashCode()I
    .registers 2

    :try_start_0
    iget-object p0, p0, Lc4/a;->c:Lg3/h;

    invoke-interface {p0}, Lm4/c;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lm4/d;->u([B)I

    move-result p0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_b

    return p0

    :catch_b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "unable to calculate hashCode"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
