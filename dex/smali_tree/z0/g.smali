.class public final Lz0/g;
.super Lz0/h;


# virtual methods
.method public final b()J
    .registers 2

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "doFinal() is not supported"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final doFinal([BI)I
    .registers 10

    iget-wide v0, p0, Lz0/h;->o:J

    iget p2, p0, Lz0/h;->p:I

    rsub-int/lit8 v2, p2, 0x7

    shl-int/lit8 v2, v2, 0x3

    ushr-long/2addr v0, v2

    const/16 v2, 0x8

    ushr-long/2addr v0, v2

    iget v3, p0, Lz0/h;->q:I

    shl-int/lit8 v3, v3, 0x3

    add-int/2addr v3, p2

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    const/16 p2, 0x38

    shl-long/2addr v3, p2

    or-long/2addr v0, v3

    iput-wide v0, p0, Lz0/h;->o:J

    invoke-virtual {p0}, Lz0/h;->c()V

    iget-wide v0, p0, Lz0/h;->m:J

    const-wide/16 v3, 0xee

    xor-long/2addr v0, v3

    iput-wide v0, p0, Lz0/h;->m:J

    iget p2, p0, Lz0/h;->h:I

    invoke-virtual {p0, p2}, Lz0/h;->a(I)V

    iget-wide v0, p0, Lz0/h;->k:J

    iget-wide v3, p0, Lz0/h;->l:J

    xor-long/2addr v0, v3

    iget-wide v5, p0, Lz0/h;->m:J

    xor-long/2addr v0, v5

    iget-wide v5, p0, Lz0/h;->n:J

    xor-long/2addr v0, v5

    const-wide/16 v5, 0xdd

    xor-long/2addr v3, v5

    iput-wide v3, p0, Lz0/h;->l:J

    invoke-virtual {p0, p2}, Lz0/h;->a(I)V

    iget-wide v3, p0, Lz0/h;->k:J

    iget-wide v5, p0, Lz0/h;->l:J

    xor-long/2addr v3, v5

    iget-wide v5, p0, Lz0/h;->m:J

    xor-long/2addr v3, v5

    iget-wide v5, p0, Lz0/h;->n:J

    xor-long/2addr v3, v5

    invoke-virtual {p0}, Lz0/g;->reset()V

    const/4 p0, 0x0

    invoke-static {p0, v0, v1, p1}, Lm4/d;->F(IJ[B)V

    invoke-static {v2, v3, v4, p1}, Lm4/d;->F(IJ[B)V

    const/16 p0, 0x10

    return p0
.end method

.method public final getAlgorithmName()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SipHash128-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lz0/h;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lz0/h;->h:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getMacSize()I
    .registers 1

    const/16 p0, 0x10

    return p0
.end method

.method public final reset()V
    .registers 5

    invoke-super {p0}, Lz0/h;->reset()V

    iget-wide v0, p0, Lz0/h;->l:J

    const-wide/16 v2, 0xee

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lz0/h;->l:J

    return-void
.end method
