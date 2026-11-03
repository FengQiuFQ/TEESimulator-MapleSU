.class public Lm/m1;
.super Lb1/a;


# virtual methods
.method public E([Lm/f;)V
    .registers 6

    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_15

    aget-object v2, p1, v1

    invoke-interface {v2}, Lm/f;->d()Lm/u;

    move-result-object v2

    invoke-virtual {v2}, Lm/u;->q()Lm/u;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p0, v3}, Lm/u;->i(Lb1/a;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_15
    return-void
.end method

.method public J(Lm/u;)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p1}, Lm/u;->q()Lm/u;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lm/u;->i(Lb1/a;Z)V

    return-void
.end method

.method public K([Lm/u;)V
    .registers 6

    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_11

    aget-object v2, p1, v1

    invoke-virtual {v2}, Lm/u;->q()Lm/u;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p0, v3}, Lm/u;->i(Lb1/a;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_11
    return-void
.end method

.method public final p()Lm/m1;
    .registers 1

    return-object p0
.end method
