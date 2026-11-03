.class public final Lv0/h;
.super Lv0/d0;


# virtual methods
.method public final a()V
    .registers 3

    iget-object p0, p0, Lv0/d0;->h:[I

    const/16 v0, 0xc

    aget v1, p0, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p0, v0

    if-eqz v1, :cond_d

    return-void

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "attempt to increase counter past 2^32."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b([B)V
    .registers 3

    iget-object v0, p0, Lv0/d0;->h:[I

    iget-object p0, p0, Lv0/d0;->i:[I

    invoke-static {v0, p0}, Lv0/i;->h([I[I)V

    invoke-static {p1, p0}, Lm4/d;->y([B[I)V

    return-void
.end method

.method public final c()I
    .registers 1

    const/16 p0, 0xc

    return p0
.end method

.method public final e()V
    .registers 3

    const/16 v0, 0xc

    const/4 v1, 0x0

    iget-object p0, p0, Lv0/d0;->h:[I

    aput v1, p0, v0

    return-void
.end method

.method public final g([B[B)V
    .registers 6

    const/4 v0, 0x0

    iget-object p0, p0, Lv0/d0;->h:[I

    if-eqz p1, :cond_1d

    array-length v1, p1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_15

    array-length v1, p1

    invoke-static {v1, p0}, Lv0/d0;->d(I[I)V

    const/4 v1, 0x4

    const/16 v2, 0x8

    invoke-static {p1, v0, p0, v1, v2}, Lm4/d;->B([BI[III)V

    goto :goto_1d

    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ChaCha7539 requires 256 bit key"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1d
    :goto_1d
    const/16 p1, 0xd

    const/4 v1, 0x3

    invoke-static {p2, v0, p0, p1, v1}, Lm4/d;->B([BI[III)V

    return-void
.end method

.method public final getAlgorithmName()Ljava/lang/String;
    .registers 1

    const-string p0, "ChaCha7539"

    return-object p0
.end method
