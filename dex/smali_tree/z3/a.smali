.class public final Lz3/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/PrivateKey;
.implements Ljava/security/Key;


# instance fields
.field public transient c:Ld3/b;

.field public transient d:Ljava/lang/String;

.field public transient q:[B

.field public transient x:Lm/y;


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    instance-of v0, p1, Lz3/a;

    if-eqz v0, :cond_17

    check-cast p1, Lz3/a;

    invoke-virtual {p0}, Lz3/a;->getEncoded()[B

    move-result-object p0

    invoke-virtual {p1}, Lz3/a;->getEncoded()[B

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lz3/a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final getEncoded()[B
    .registers 3

    iget-object v0, p0, Lz3/a;->q:[B

    if-nez v0, :cond_e

    iget-object v0, p0, Lz3/a;->c:Ld3/b;

    iget-object v1, p0, Lz3/a;->x:Lm/y;

    invoke-static {v0, v1}, Lq4/k;->b0(Le1/b;Lm/y;)[B

    move-result-object v0

    iput-object v0, p0, Lz3/a;->q:[B

    :cond_e
    iget-object p0, p0, Lz3/a;->q:[B

    invoke-static {p0}, Lm4/d;->e([B)[B

    move-result-object p0

    return-object p0
.end method

.method public final getFormat()Ljava/lang/String;
    .registers 1

    const-string p0, "PKCS#8"

    return-object p0
.end method

.method public final hashCode()I
    .registers 1

    invoke-virtual {p0}, Lz3/a;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lm4/d;->u([B)I

    move-result p0

    return p0
.end method
