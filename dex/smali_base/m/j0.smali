.class public final Lm/j0;
.super Lm/y;


# virtual methods
.method public final i(Lb1/a;Z)V
    .registers 4

    const/16 v0, 0x31

    iget-object p0, p0, Lm/y;->c:[Lm/f;

    invoke-virtual {p1, p2, v0, p0}, Lb1/a;->G(ZI[Lm/f;)V

    return-void
.end method

.method public final l(Z)I
    .registers 6

    if-eqz p1, :cond_4

    const/4 p1, 0x4

    goto :goto_5

    :cond_4
    const/4 p1, 0x3

    :goto_5
    iget-object p0, p0, Lm/y;->c:[Lm/f;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_1a

    aget-object v2, p0, v1

    invoke-interface {v2}, Lm/f;->d()Lm/u;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lm/u;->l(Z)I

    move-result v2

    add-int/2addr p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1a
    return p1
.end method
