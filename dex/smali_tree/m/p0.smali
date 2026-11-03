.class public Lm/p0;
.super Lm/b;


# virtual methods
.method public final i(Lb1/a;Z)V
    .registers 9

    iget-object p0, p0, Lm/b;->c:[B

    const/4 v0, 0x0

    aget-byte v1, p0, v0

    const/16 v2, 0xff

    and-int/2addr v1, v2

    array-length v3, p0

    add-int/lit8 v4, v3, -0x1

    aget-byte v5, p0, v4

    shl-int v1, v2, v1

    and-int/2addr v1, v5

    int-to-byte v1, v1

    const/4 v2, 0x3

    if-ne v5, v1, :cond_18

    invoke-virtual {p1, v2, p2, p0}, Lb1/a;->F(IZ[B)V

    return-void

    :cond_18
    invoke-virtual {p1, v2, p2}, Lb1/a;->I(IZ)V

    invoke-virtual {p1, v3}, Lb1/a;->D(I)V

    invoke-virtual {p1, p0, v0, v4}, Lb1/a;->C([BII)V

    invoke-virtual {p1, v1}, Lb1/a;->B(I)V

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

.method public final p()Lm/u;
    .registers 1

    return-object p0
.end method

.method public final q()Lm/u;
    .registers 1

    return-object p0
.end method
