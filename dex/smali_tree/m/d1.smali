.class public final Lm/d1;
.super Lm/a0;


# virtual methods
.method public final i(Lb1/a;Z)V
    .registers 6

    iget-object v0, p0, Lm/a0;->x:Lm/f;

    invoke-interface {v0}, Lm/f;->d()Lm/u;

    move-result-object v0

    invoke-virtual {v0}, Lm/u;->p()Lm/u;

    move-result-object v0

    invoke-virtual {p0}, Lm/a0;->w()Z

    move-result v1

    if-eqz p2, :cond_21

    iget p2, p0, Lm/a0;->d:I

    if-nez v1, :cond_1a

    invoke-virtual {v0}, Lm/u;->j()Z

    move-result v2

    if-eqz v2, :cond_1c

    :cond_1a
    or-int/lit8 p2, p2, 0x20

    :cond_1c
    iget p0, p0, Lm/a0;->q:I

    invoke-virtual {p1, p2, p0}, Lb1/a;->H(II)V

    :cond_21
    if-eqz v1, :cond_2b

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lm/u;->l(Z)I

    move-result p0

    invoke-virtual {p1, p0}, Lb1/a;->D(I)V

    :cond_2b
    invoke-virtual {p1}, Lb1/a;->o()Lm/y0;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Lm/u;->i(Lb1/a;Z)V

    return-void
.end method

.method public final j()Z
    .registers 2

    invoke-virtual {p0}, Lm/a0;->w()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object p0, p0, Lm/a0;->x:Lm/f;

    invoke-interface {p0}, Lm/f;->d()Lm/u;

    move-result-object p0

    invoke-virtual {p0}, Lm/u;->p()Lm/u;

    move-result-object p0

    invoke-virtual {p0}, Lm/u;->j()Z

    move-result p0

    if-eqz p0, :cond_17

    goto :goto_19

    :cond_17
    const/4 p0, 0x0

    return p0

    :cond_19
    :goto_19
    const/4 p0, 0x1

    return p0
.end method

.method public final l(Z)I
    .registers 4

    iget-object v0, p0, Lm/a0;->x:Lm/f;

    invoke-interface {v0}, Lm/f;->d()Lm/u;

    move-result-object v0

    invoke-virtual {v0}, Lm/u;->p()Lm/u;

    move-result-object v0

    invoke-virtual {p0}, Lm/a0;->w()Z

    move-result v1

    invoke-virtual {v0, v1}, Lm/u;->l(Z)I

    move-result v0

    if-eqz v1, :cond_19

    invoke-static {v0}, Lb1/a;->r(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_19
    if-eqz p1, :cond_22

    iget p0, p0, Lm/a0;->q:I

    invoke-static {p0}, Lb1/a;->t(I)I

    move-result p0

    goto :goto_23

    :cond_22
    const/4 p0, 0x0

    :goto_23
    add-int/2addr v0, p0

    return v0
.end method

.method public final p()Lm/u;
    .registers 1

    return-object p0
.end method

.method public final q()Lm/u;
    .registers 1

    return-object p0
.end method

.method public final x(Lm/u;)Lm/x;
    .registers 2

    new-instance p0, Lm/a1;

    invoke-direct {p0, p1}, Lm/x;-><init>(Lm/f;)V

    const/4 p1, -0x1

    iput p1, p0, Lm/a1;->q:I

    return-object p0
.end method
