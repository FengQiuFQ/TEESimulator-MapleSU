.class public final Ln0/c;
.super Ljava/lang/Object;

# interfaces
.implements Lm4/c;
.implements Ljava/io/Serializable;


# instance fields
.field public transient c:Ll0/f;


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    instance-of v0, p1, Ln0/c;

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    check-cast p1, Ln0/c;

    iget-object p0, p0, Ln0/c;->c:Ll0/f;

    iget-object p1, p1, Ln0/c;->c:Ll0/f;

    invoke-virtual {p0, p1}, Lm/n;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final getEncoded()[B
    .registers 1

    iget-object p0, p0, Ln0/c;->c:Ll0/f;

    invoke-virtual {p0}, Lm/n;->getEncoded()[B

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .registers 1

    iget-object p0, p0, Ln0/c;->c:Ll0/f;

    invoke-virtual {p0}, Lm/n;->hashCode()I

    move-result p0

    return p0
.end method
