.class public final Lm/n1;
.super Lm/x;


# instance fields
.field public q:I


# virtual methods
.method public final A()Lm/y;
    .registers 2

    new-instance v0, Lm/o1;

    iget-object p0, p0, Lm/x;->c:[Lm/f;

    invoke-direct {v0, p0}, Lm/o1;-><init>([Lm/f;)V

    return-object v0
.end method

.method public final C()I
    .registers 6

    iget v0, p0, Lm/n1;->q:I

    if-gez v0, :cond_22

    iget-object v0, p0, Lm/x;->c:[Lm/f;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_9
    if-ge v1, v0, :cond_20

    iget-object v3, p0, Lm/x;->c:[Lm/f;

    aget-object v3, v3, v1

    invoke-interface {v3}, Lm/f;->d()Lm/u;

    move-result-object v3

    invoke-virtual {v3}, Lm/u;->q()Lm/u;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lm/u;->l(Z)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_20
    iput v2, p0, Lm/n1;->q:I

    :cond_22
    iget p0, p0, Lm/n1;->q:I

    return p0
.end method

.method public final i(Lb1/a;Z)V
    .registers 10

    const/16 v0, 0x30

    invoke-virtual {p1, v0, p2}, Lb1/a;->I(IZ)V

    invoke-virtual {p1}, Lb1/a;->p()Lm/m1;

    move-result-object p2

    iget-object v0, p0, Lm/x;->c:[Lm/f;

    array-length v0, v0

    iget v1, p0, Lm/n1;->q:I

    const/4 v2, 0x0

    if-gez v1, :cond_42

    const/16 v1, 0x10

    if-le v0, v1, :cond_16

    goto :goto_42

    :cond_16
    new-array v1, v0, [Lm/u;

    move v3, v2

    move v4, v3

    :goto_1a
    if-ge v3, v0, :cond_33

    iget-object v5, p0, Lm/x;->c:[Lm/f;

    aget-object v5, v5, v3

    invoke-interface {v5}, Lm/f;->d()Lm/u;

    move-result-object v5

    invoke-virtual {v5}, Lm/u;->q()Lm/u;

    move-result-object v5

    aput-object v5, v1, v3

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lm/u;->l(Z)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_33
    iput v4, p0, Lm/n1;->q:I

    invoke-virtual {p1, v4}, Lb1/a;->D(I)V

    :goto_38
    if-ge v2, v0, :cond_59

    aget-object p0, v1, v2

    invoke-virtual {p2, p0}, Lm/m1;->J(Lm/u;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    :cond_42
    :goto_42
    invoke-virtual {p0}, Lm/n1;->C()I

    move-result v1

    invoke-virtual {p1, v1}, Lb1/a;->D(I)V

    :goto_49
    if-ge v2, v0, :cond_59

    iget-object p1, p0, Lm/x;->c:[Lm/f;

    aget-object p1, p1, v2

    invoke-interface {p1}, Lm/f;->d()Lm/u;

    move-result-object p1

    invoke-virtual {p2, p1}, Lm/m1;->J(Lm/u;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_49

    :cond_59
    return-void
.end method

.method public final l(Z)I
    .registers 2

    invoke-virtual {p0}, Lm/n1;->C()I

    move-result p0

    invoke-static {p0, p1}, Lb1/a;->s(IZ)I

    move-result p0

    return p0
.end method

.method public final q()Lm/u;
    .registers 1

    return-object p0
.end method

.method public final x()Lm/b;
    .registers 2

    new-instance v0, Lm/j1;

    invoke-virtual {p0}, Lm/x;->r()[Lm/b;

    move-result-object p0

    invoke-static {p0}, Lm/c0;->w([Lm/b;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lm/b;-><init>([B)V

    return-object v0
.end method

.method public final y()Lm/q0;
    .registers 3

    new-instance v0, Lm/q0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lm/q0;-><init>(Lm/x;I)V

    return-object v0
.end method

.method public final z()Lm/r;
    .registers 2

    new-instance v0, Lm/x0;

    invoke-virtual {p0}, Lm/x;->s()[Lm/r;

    move-result-object p0

    invoke-static {p0}, Lm/f0;->s([Lm/r;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lm/r;-><init>([B)V

    return-object v0
.end method
