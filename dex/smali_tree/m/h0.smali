.class public final Lm/h0;
.super Lm/x;


# virtual methods
.method public final A()Lm/y;
    .registers 3

    new-instance v0, Lm/j0;

    const/4 v1, 0x0

    iget-object p0, p0, Lm/x;->c:[Lm/f;

    invoke-direct {v0, v1, p0}, Lm/y;-><init>(Z[Lm/f;)V

    return-object v0
.end method

.method public final i(Lb1/a;Z)V
    .registers 4

    const/16 v0, 0x30

    iget-object p0, p0, Lm/x;->c:[Lm/f;

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
    iget-object v0, p0, Lm/x;->c:[Lm/f;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_1c

    iget-object v2, p0, Lm/x;->c:[Lm/f;

    aget-object v2, v2, v1

    invoke-interface {v2}, Lm/f;->d()Lm/u;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lm/u;->l(Z)I

    move-result v2

    add-int/2addr p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1c
    return p1
.end method

.method public final x()Lm/b;
    .registers 2

    new-instance v0, Lm/c0;

    invoke-virtual {p0}, Lm/x;->r()[Lm/b;

    move-result-object p0

    invoke-direct {v0, p0}, Lm/c0;-><init>([Lm/b;)V

    return-object v0
.end method

.method public final y()Lm/q0;
    .registers 1

    invoke-virtual {p0}, Lm/x;->q()Lm/u;

    move-result-object p0

    check-cast p0, Lm/x;

    invoke-virtual {p0}, Lm/x;->y()Lm/q0;

    move-result-object p0

    return-object p0
.end method

.method public final z()Lm/r;
    .registers 3

    new-instance v0, Lm/f0;

    invoke-virtual {p0}, Lm/x;->s()[Lm/r;

    move-result-object p0

    invoke-static {p0}, Lm/f0;->s([Lm/r;)[B

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lm/f0;-><init>([B[Lm/r;)V

    return-object v0
.end method
