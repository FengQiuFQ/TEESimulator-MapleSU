.class public final Le4/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/Key;
.implements Ljava/security/PrivateKey;


# instance fields
.field public transient c:Lk3/a;

.field public transient d:Lm/y;


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Le4/a;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    check-cast p1, Le4/a;

    iget-object p0, p0, Le4/a;->c:Lk3/a;

    iget-object p0, p0, Lk3/a;->d:[S

    invoke-static {p0}, Lm4/d;->i([S)[S

    move-result-object p0

    iget-object p1, p1, Le4/a;->c:Lk3/a;

    iget-object p1, p1, Lk3/a;->d:[S

    invoke-static {p1}, Lm4/d;->i([S)[S

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([S[S)Z

    move-result p0

    return p0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .registers 1

    const-string p0, "NH"

    return-object p0
.end method

.method public final getEncoded()[B
    .registers 2

    :try_start_0
    iget-object v0, p0, Le4/a;->c:Lk3/a;

    iget-object p0, p0, Le4/a;->d:Lm/y;

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
    .registers 4

    iget-object p0, p0, Le4/a;->c:Lk3/a;

    iget-object p0, p0, Lk3/a;->d:[S

    invoke-static {p0}, Lm4/d;->i([S)[S

    move-result-object p0

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return p0

    :cond_c
    array-length v0, p0

    add-int/lit8 v1, v0, 0x1

    :goto_f
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1b

    mul-int/lit16 v1, v1, 0x101

    aget-short v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    xor-int/2addr v1, v2

    goto :goto_f

    :cond_1b
    return v1
.end method
