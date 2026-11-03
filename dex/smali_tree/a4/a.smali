.class public final La4/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/PrivateKey;
.implements Ljava/security/Key;


# instance fields
.field public transient c:Lf3/b;

.field public transient d:Lm/y;


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    instance-of v0, p1, La4/a;

    if-eqz v0, :cond_1f

    check-cast p1, La4/a;

    iget-object p0, p0, La4/a;->c:Lf3/b;

    iget-object p0, p0, Lf3/b;->q:[B

    invoke-static {p0}, Lm4/d;->e([B)[B

    move-result-object p0

    iget-object p1, p1, La4/a;->c:Lf3/b;

    iget-object p1, p1, Lf3/b;->q:[B

    invoke-static {p1}, Lm4/d;->e([B)[B

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0

    :cond_1f
    const/4 p0, 0x0

    return p0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, La4/a;->c:Lf3/b;

    iget-object p0, p0, La3/a;->d:Ljava/lang/Object;

    check-cast p0, Lf3/a;

    iget-object p0, p0, Lf3/a;->c:Ljava/lang/String;

    invoke-static {p0}, Lm4/m;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getEncoded()[B
    .registers 2

    :try_start_0
    iget-object v0, p0, La4/a;->c:Lf3/b;

    iget-object p0, p0, La4/a;->d:Lm/y;

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
    .registers 1

    iget-object p0, p0, La4/a;->c:Lf3/b;

    iget-object p0, p0, Lf3/b;->q:[B

    invoke-static {p0}, Lm4/d;->e([B)[B

    move-result-object p0

    invoke-static {p0}, Lm4/d;->u([B)I

    move-result p0

    return p0
.end method
