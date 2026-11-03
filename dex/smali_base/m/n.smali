.class public abstract Lm/n;
.super Ljava/lang/Object;

# interfaces
.implements Lm/f;
.implements Lm4/c;


# virtual methods
.method public abstract d()Lm/u;
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    instance-of v0, p1, Lm/f;

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    check-cast p1, Lm/f;

    invoke-virtual {p0}, Lm/n;->d()Lm/u;

    move-result-object p0

    invoke-interface {p1}, Lm/f;->d()Lm/u;

    move-result-object p1

    invoke-virtual {p0, p1}, Lm/u;->n(Lm/u;)Z

    move-result p0

    return p0
.end method

.method public final g()[B
    .registers 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0}, Lm/n;->d()Lm/u;

    move-result-object p0

    const-string v1, "DER"

    invoke-virtual {p0, v0, v1}, Lm/u;->k(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public getEncoded()[B
    .registers 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0}, Lm/n;->d()Lm/u;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lb1/a;

    const/4 v2, 0x6

    invoke-direct {v1, v2, v0}, Lb1/a;-><init>(ILjava/lang/Object;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lm/u;->i(Lb1/a;Z)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Lm/n;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .registers 1

    invoke-virtual {p0}, Lm/n;->d()Lm/u;

    move-result-object p0

    invoke-virtual {p0}, Lm/u;->hashCode()I

    move-result p0

    return p0
.end method
