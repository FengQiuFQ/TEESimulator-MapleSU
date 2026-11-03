.class public final Li4/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/PublicKey;
.implements Ljava/security/Key;


# instance fields
.field public transient c:Lm/q;

.field public transient d:Ls3/c;


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Li4/b;

    const/4 v2, 0x0

    if-eqz v1, :cond_2c

    check-cast p1, Li4/b;

    iget-object v1, p0, Li4/b;->c:Lm/q;

    iget-object v3, p1, Li4/b;->c:Lm/q;

    invoke-virtual {v1, v3}, Lm/u;->n(Lm/u;)Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object p0, p0, Li4/b;->d:Ls3/c;

    iget-object p0, p0, Ls3/c;->q:[B

    invoke-static {p0}, Lm4/d;->e([B)[B

    move-result-object p0

    iget-object p1, p1, Li4/b;->d:Ls3/c;

    iget-object p1, p1, Ls3/c;->q:[B

    invoke-static {p1}, Lm4/d;->e([B)[B

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_2c

    return v0

    :cond_2c
    return v2
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .registers 1

    const-string p0, "SPHINCS-256"

    return-object p0
.end method

.method public final getEncoded()[B
    .registers 6

    :try_start_0
    iget-object v0, p0, Li4/b;->d:Ls3/c;

    iget-object v1, v0, Ls3/a;->d:Ljava/lang/String;

    if-eqz v1, :cond_b

    invoke-static {v0}, Ls2/b;->p(Le1/b;)Ll0/p0;

    move-result-object p0

    goto :goto_2c

    :cond_b
    new-instance v0, Ll0/b;

    sget-object v1, Ly2/e;->a:Lm/q;

    new-instance v2, Ly2/f;

    new-instance v3, Ll0/b;

    iget-object v4, p0, Li4/b;->c:Lm/q;

    invoke-direct {v3, v4}, Ll0/b;-><init>(Lm/q;)V

    invoke-direct {v2, v3}, Ly2/f;-><init>(Ll0/b;)V

    invoke-direct {v0, v1, v2}, Ll0/b;-><init>(Lm/q;Lm/f;)V

    new-instance v1, Ll0/p0;

    iget-object p0, p0, Li4/b;->d:Ls3/c;

    iget-object p0, p0, Ls3/c;->q:[B

    invoke-static {p0}, Lm4/d;->e([B)[B

    move-result-object p0

    invoke-direct {v1, v0, p0}, Ll0/p0;-><init>(Ll0/b;[B)V

    move-object p0, v1

    :goto_2c
    invoke-virtual {p0}, Lm/n;->getEncoded()[B

    move-result-object p0
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_30} :catch_31

    return-object p0

    :catch_31
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getFormat()Ljava/lang/String;
    .registers 1

    const-string p0, "X.509"

    return-object p0
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Li4/b;->c:Lm/q;

    iget-object v0, v0, Lm/q;->c:[B

    invoke-static {v0}, Lm4/d;->u([B)I

    move-result v0

    iget-object p0, p0, Li4/b;->d:Ls3/c;

    iget-object p0, p0, Ls3/c;->q:[B

    invoke-static {p0}, Lm4/d;->e([B)[B

    move-result-object p0

    invoke-static {p0}, Lm4/d;->u([B)I

    move-result p0

    mul-int/lit8 p0, p0, 0x25

    add-int/2addr p0, v0

    return p0
.end method
