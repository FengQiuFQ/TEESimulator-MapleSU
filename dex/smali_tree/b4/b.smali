.class public final Lb4/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/PublicKey;
.implements Ljava/security/Key;


# instance fields
.field public transient c:Lj3/h;

.field public transient d:Ljava/lang/String;

.field public transient q:[B


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    instance-of v0, p1, Lb4/b;

    if-eqz v0, :cond_17

    check-cast p1, Lb4/b;

    invoke-virtual {p0}, Lb4/b;->getEncoded()[B

    move-result-object p0

    invoke-virtual {p1}, Lb4/b;->getEncoded()[B

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

    iget-object p0, p0, Lb4/b;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final getEncoded()[B
    .registers 2

    iget-object v0, p0, Lb4/b;->q:[B

    if-nez v0, :cond_c

    iget-object v0, p0, Lb4/b;->c:Lj3/h;

    invoke-static {v0}, Lq4/k;->c0(Le1/b;)[B

    move-result-object v0

    iput-object v0, p0, Lb4/b;->q:[B

    :cond_c
    iget-object p0, p0, Lb4/b;->q:[B

    invoke-static {p0}, Lm4/d;->e([B)[B

    move-result-object p0

    return-object p0
.end method

.method public final getFormat()Ljava/lang/String;
    .registers 1

    const-string p0, "X.509"

    return-object p0
.end method

.method public final hashCode()I
    .registers 1

    invoke-virtual {p0}, Lb4/b;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lm4/d;->u([B)I

    move-result p0

    return p0
.end method
