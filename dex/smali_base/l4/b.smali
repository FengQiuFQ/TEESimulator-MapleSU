.class public final Ll4/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/PublicKey;


# instance fields
.field public transient c:Lm/q;

.field public transient d:Lv3/r;


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Ll4/b;

    const/4 v2, 0x0

    if-eqz v1, :cond_28

    check-cast p1, Ll4/b;

    iget-object v1, p0, Ll4/b;->c:Lm/q;

    iget-object v3, p1, Ll4/b;->c:Lm/q;

    invoke-virtual {v1, v3}, Lm/u;->n(Lm/u;)Z

    move-result v1

    if-eqz v1, :cond_28

    iget-object p0, p0, Ll4/b;->d:Lv3/r;

    invoke-virtual {p0}, Lv3/r;->a()[B

    move-result-object p0

    iget-object p1, p1, Ll4/b;->d:Lv3/r;

    invoke-virtual {p1}, Lv3/r;->a()[B

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_28

    return v0

    :cond_28
    return v2
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .registers 1

    const-string p0, "XMSSMT"

    return-object p0
.end method

.method public final getEncoded()[B
    .registers 1

    :try_start_0
    iget-object p0, p0, Ll4/b;->d:Lv3/r;

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
    .registers 2

    iget-object v0, p0, Ll4/b;->c:Lm/q;

    iget-object v0, v0, Lm/q;->c:[B

    invoke-static {v0}, Lm4/d;->u([B)I

    move-result v0

    iget-object p0, p0, Ll4/b;->d:Lv3/r;

    invoke-virtual {p0}, Lv3/r;->a()[B

    move-result-object p0

    invoke-static {p0}, Lm4/d;->u([B)I

    move-result p0

    mul-int/lit8 p0, p0, 0x25

    add-int/2addr p0, v0

    return p0
.end method
