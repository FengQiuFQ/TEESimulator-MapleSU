.class public final Le4/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/Key;
.implements Ljava/security/PublicKey;


# instance fields
.field public transient c:Lk3/b;


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    if-eqz p1, :cond_1e

    instance-of v0, p1, Le4/b;

    if-nez v0, :cond_7

    goto :goto_1e

    :cond_7
    check-cast p1, Le4/b;

    iget-object p0, p0, Le4/b;->c:Lk3/b;

    iget-object p0, p0, Lk3/b;->d:[B

    invoke-static {p0}, Lm4/d;->e([B)[B

    move-result-object p0

    iget-object p1, p1, Le4/b;->c:Lk3/b;

    iget-object p1, p1, Lk3/b;->d:[B

    invoke-static {p1}, Lm4/d;->e([B)[B

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0

    :cond_1e
    :goto_1e
    const/4 p0, 0x0

    return p0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .registers 1

    const-string p0, "NH"

    return-object p0
.end method

.method public final getEncoded()[B
    .registers 1

    :try_start_0
    iget-object p0, p0, Le4/b;->c:Lk3/b;

    invoke-static {p0}, Ls2/b;->p(Le1/b;)Ll0/p0;

    move-result-object p0

    invoke-virtual {p0}, Lm/n;->getEncoded()[B

    move-result-object p0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getFormat()Ljava/lang/String;
    .registers 1

    const-string p0, "X.509"

    return-object p0
.end method

.method public final hashCode()I
    .registers 1

    iget-object p0, p0, Le4/b;->c:Lk3/b;

    iget-object p0, p0, Lk3/b;->d:[B

    invoke-static {p0}, Lm4/d;->e([B)[B

    move-result-object p0

    invoke-static {p0}, Lm4/d;->u([B)I

    move-result p0

    return p0
.end method
