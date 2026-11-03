.class public final Lm/k0;
.super Lm/a0;


# virtual methods
.method public final i(Lb1/a;Z)V
    .registers 6

    iget-object v0, p0, Lm/a0;->x:Lm/f;

    invoke-interface {v0}, Lm/f;->d()Lm/u;

    move-result-object v0

    invoke-virtual {p0}, Lm/a0;->w()Z

    move-result v1

    if-eqz p2, :cond_1d

    iget p2, p0, Lm/a0;->d:I

    if-nez v1, :cond_16

    invoke-virtual {v0}, Lm/u;->j()Z

    move-result v2

    if-eqz v2, :cond_18

    :cond_16
    or-int/lit8 p2, p2, 0x20

    :cond_18
    iget p0, p0, Lm/a0;->q:I

    invoke-virtual {p1, p2, p0}, Lb1/a;->H(II)V

    :cond_1d
    const/4 p0, 0x0

    if-eqz v1, :cond_30

    const/16 p2, 0x80

    invoke-virtual {p1, p2}, Lb1/a;->B(I)V

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p2}, Lm/u;->i(Lb1/a;Z)V

    invoke-virtual {p1, p0}, Lb1/a;->B(I)V

    invoke-virtual {p1, p0}, Lb1/a;->B(I)V

    return-void

    :cond_30
    invoke-virtual {v0, p1, p0}, Lm/u;->i(Lb1/a;Z)V

    return-void
.end method

.method public final j()Z
    .registers 2

    invoke-virtual {p0}, Lm/a0;->w()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object p0, p0, Lm/a0;->x:Lm/f;

    invoke-interface {p0}, Lm/f;->d()Lm/u;

    move-result-object p0

    invoke-virtual {p0}, Lm/u;->j()Z

    move-result p0

    if-eqz p0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    return p0

    :cond_15
    :goto_15
    const/4 p0, 0x1

    return p0
.end method

.method public final l(Z)I
    .registers 4

    iget-object v0, p0, Lm/a0;->x:Lm/f;

    invoke-interface {v0}, Lm/f;->d()Lm/u;

    move-result-object v0

    invoke-virtual {p0}, Lm/a0;->w()Z

    move-result v1

    invoke-virtual {v0, v1}, Lm/u;->l(Z)I

    move-result v0

    if-eqz v1, :cond_12

    add-int/lit8 v0, v0, 0x3

    :cond_12
    if-eqz p1, :cond_1b

    iget p0, p0, Lm/a0;->q:I

    invoke-static {p0}, Lb1/a;->t(I)I

    move-result p0

    goto :goto_1c

    :cond_1b
    const/4 p0, 0x0

    :goto_1c
    add-int/2addr v0, p0

    return v0
.end method

.method public final x(Lm/u;)Lm/x;
    .registers 2

    new-instance p0, Lm/h0;

    invoke-direct {p0, p1}, Lm/x;-><init>(Lm/f;)V

    return-object p0
.end method
