.class public final Lm/j1;
.super Lm/b;


# virtual methods
.method public final i(Lb1/a;Z)V
    .registers 4

    const/4 v0, 0x3

    iget-object p0, p0, Lm/b;->c:[B

    invoke-virtual {p1, v0, p2, p0}, Lb1/a;->F(IZ[B)V

    return-void
.end method

.method public final j()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final l(Z)I
    .registers 2

    iget-object p0, p0, Lm/b;->c:[B

    array-length p0, p0

    invoke-static {p0, p1}, Lb1/a;->s(IZ)I

    move-result p0

    return p0
.end method

.method public final q()Lm/u;
    .registers 1

    return-object p0
.end method
