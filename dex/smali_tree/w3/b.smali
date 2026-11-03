.class public final Lw3/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/PublicKey;
.implements Ljava/security/Key;


# instance fields
.field public transient c:La3/d;


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    instance-of v0, p1, Lw3/b;

    if-eqz v0, :cond_1f

    check-cast p1, Lw3/b;

    iget-object p0, p0, Lw3/b;->c:La3/d;

    iget-object p0, p0, La3/d;->q:[B

    invoke-static {p0}, Lm4/d;->e([B)[B

    move-result-object p0

    iget-object p1, p1, Lw3/b;->c:La3/d;

    iget-object p1, p1, La3/d;->q:[B

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

    iget-object p0, p0, Lw3/b;->c:La3/d;

    iget-object p0, p0, La3/a;->d:Ljava/lang/Object;

    check-cast p0, La3/b;

    iget-object p0, p0, La3/b;->c:Ljava/lang/String;

    invoke-static {p0}, Lm4/m;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getEncoded()[B
    .registers 1

    :try_start_0
    iget-object p0, p0, Lw3/b;->c:La3/d;

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

    iget-object p0, p0, Lw3/b;->c:La3/d;

    iget-object p0, p0, La3/d;->q:[B

    invoke-static {p0}, Lm4/d;->e([B)[B

    move-result-object p0

    invoke-static {p0}, Lm4/d;->u([B)I

    move-result p0

    return p0
.end method
