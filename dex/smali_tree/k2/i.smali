.class public abstract Lk2/i;
.super Lk2/b0;


# virtual methods
.method public I(Lk2/b0;)Lk2/b0;
    .registers 2

    invoke-virtual {p0, p1}, Lk2/i;->a(Lk2/b0;)Lk2/b0;

    move-result-object p0

    return-object p0
.end method

.method public M()Lk2/b0;
    .registers 7

    invoke-virtual {p0}, Lk2/b0;->k()I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_31

    const/4 v1, 0x1

    add-int/2addr v0, v1

    ushr-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x1f

    move-object v3, p0

    move v4, v1

    :cond_13
    :goto_13
    if-lez v2, :cond_30

    shl-int/2addr v4, v1

    invoke-virtual {v3, v4}, Lk2/b0;->H(I)Lk2/b0;

    move-result-object v4

    invoke-virtual {v4, v3}, Lk2/b0;->a(Lk2/b0;)Lk2/b0;

    move-result-object v3

    add-int/lit8 v2, v2, -0x1

    ushr-int v4, v0, v2

    and-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_13

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lk2/b0;->H(I)Lk2/b0;

    move-result-object v3

    invoke-virtual {v3, p0}, Lk2/b0;->a(Lk2/b0;)Lk2/b0;

    move-result-object v3

    goto :goto_13

    :cond_30
    return-object v3

    :cond_31
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Half-trace only defined for odd m"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public N()Z
    .registers 1

    instance-of p0, p0, Ln2/y;

    return p0
.end method

.method public O()I
    .registers 7

    invoke-virtual {p0}, Lk2/b0;->k()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x1f

    const/4 v2, 0x1

    move-object v3, p0

    move v4, v2

    :cond_d
    :goto_d
    if-lez v1, :cond_28

    invoke-virtual {v3, v4}, Lk2/b0;->H(I)Lk2/b0;

    move-result-object v4

    invoke-virtual {v4, v3}, Lk2/b0;->a(Lk2/b0;)Lk2/b0;

    move-result-object v3

    add-int/lit8 v1, v1, -0x1

    ushr-int v4, v0, v1

    and-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_d

    invoke-virtual {v3}, Lk2/b0;->F()Lk2/b0;

    move-result-object v3

    invoke-virtual {v3, p0}, Lk2/b0;->a(Lk2/b0;)Lk2/b0;

    move-result-object v3

    goto :goto_d

    :cond_28
    invoke-virtual {v3}, Lk2/b0;->t()Z

    move-result p0

    if-eqz p0, :cond_30

    const/4 p0, 0x0

    return p0

    :cond_30
    invoke-virtual {v3}, Lk2/b0;->s()Z

    move-result p0

    if-eqz p0, :cond_37

    return v2

    :cond_37
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Internal error in trace calculation"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
