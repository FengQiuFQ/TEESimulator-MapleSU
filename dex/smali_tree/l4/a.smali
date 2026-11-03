.class public final Ll4/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/PrivateKey;


# instance fields
.field public transient c:Lm/q;

.field public transient d:Lv3/q;

.field public transient q:Lm/y;


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Ll4/a;

    const/4 v2, 0x0

    if-eqz v1, :cond_28

    check-cast p1, Ll4/a;

    iget-object v1, p0, Ll4/a;->c:Lm/q;

    iget-object v3, p1, Ll4/a;->c:Lm/q;

    invoke-virtual {v1, v3}, Lm/u;->n(Lm/u;)Z

    move-result v1

    if-eqz v1, :cond_28

    iget-object p0, p0, Ll4/a;->d:Lv3/q;

    invoke-virtual {p0}, Lv3/q;->a()[B

    move-result-object p0

    iget-object p1, p1, Ll4/a;->d:Lv3/q;

    invoke-virtual {p1}, Lv3/q;->a()[B

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
    .registers 2

    :try_start_0
    iget-object v0, p0, Ll4/a;->d:Lv3/q;

    iget-object p0, p0, Ll4/a;->q:Lm/y;

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

    iget-object v0, p0, Ll4/a;->c:Lm/q;

    iget-object v0, v0, Lm/q;->c:[B

    invoke-static {v0}, Lm4/d;->u([B)I

    move-result v0

    iget-object p0, p0, Ll4/a;->d:Lv3/q;

    invoke-virtual {p0}, Lv3/q;->a()[B

    move-result-object p0

    invoke-static {p0}, Lm4/d;->u([B)I

    move-result p0

    mul-int/lit8 p0, p0, 0x25

    add-int/2addr p0, v0

    return p0
.end method
