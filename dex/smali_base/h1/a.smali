.class public final Lh1/a;
.super Ljava/lang/Object;

# interfaces
.implements Lh1/c;


# instance fields
.field public a:[B

.field public b:[B

.field public c:J

.field public d:Lg1/a;

.field public e:Lz0/d;

.field public f:I


# virtual methods
.method public final a(Z[B)I
    .registers 13

    iget-object v0, p0, Lh1/a;->e:Lz0/d;

    iget-object v1, p0, Lh1/a;->b:[B

    array-length v2, p2

    mul-int/lit8 v2, v2, 0x8

    const/high16 v3, 0x40000

    if-gt v2, v3, :cond_64

    iget-wide v3, p0, Lh1/a;->c:J

    const-wide v5, 0x800000000000L

    cmp-long v3, v3, v5

    if-lez v3, :cond_18

    const/4 p0, -0x1

    return p0

    :cond_18
    const/4 v3, 0x0

    if-eqz p1, :cond_1e

    invoke-virtual {p0, v3}, Lh1/a;->b([B)V

    :cond_1e
    array-length p1, p2

    new-array v4, p1, [B

    array-length v5, p2

    array-length v6, v1

    div-int/2addr v5, v6

    new-instance v6, Le1/o0;

    iget-object v7, p0, Lh1/a;->a:[B

    invoke-direct {v6, v7}, Le1/o0;-><init>([B)V

    invoke-virtual {v0, v6}, Lz0/d;->init(Lorg/bouncycastle/crypto/g;)V

    const/4 v6, 0x0

    move v7, v6

    :goto_30
    if-ge v7, v5, :cond_42

    array-length v8, v1

    invoke-virtual {v0, v1, v6, v8}, Lz0/d;->update([BII)V

    invoke-virtual {v0, v1, v6}, Lz0/d;->doFinal([BI)I

    array-length v8, v1

    mul-int/2addr v8, v7

    array-length v9, v1

    invoke-static {v1, v6, v4, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_30

    :cond_42
    array-length v7, v1

    mul-int/2addr v7, v5

    if-ge v7, p1, :cond_55

    array-length v7, v1

    invoke-virtual {v0, v1, v6, v7}, Lz0/d;->update([BII)V

    invoke-virtual {v0, v1, v6}, Lz0/d;->doFinal([BI)I

    array-length v0, v1

    mul-int/2addr v0, v5

    array-length v7, v1

    mul-int/2addr v5, v7

    sub-int/2addr p1, v5

    invoke-static {v1, v6, v4, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_55
    invoke-virtual {p0, v3, v6}, Lh1/a;->c([BB)V

    iget-wide v0, p0, Lh1/a;->c:J

    const-wide/16 v7, 0x1

    add-long/2addr v0, v7

    iput-wide v0, p0, Lh1/a;->c:J

    array-length p0, p2

    invoke-static {v4, v6, p2, v6, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v2

    :cond_64
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number of bits per request limited to 262144"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b([B)V
    .registers 5

    iget-object v0, p0, Lh1/a;->d:Lg1/a;

    invoke-interface {v0}, Lg1/a;->getEntropy()[B

    move-result-object v0

    array-length v1, v0

    iget v2, p0, Lh1/a;->f:I

    add-int/lit8 v2, v2, 0x7

    div-int/lit8 v2, v2, 0x8

    if-lt v1, v2, :cond_22

    invoke-static {v0, p1}, Lm4/d;->j([B[B)[B

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lh1/a;->c([BB)V

    if-eqz p1, :cond_1d

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lh1/a;->c([BB)V

    :cond_1d
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lh1/a;->c:J

    return-void

    :cond_22
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Insufficient entropy provided by entropy source"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c([BB)V
    .registers 7

    iget-object v0, p0, Lh1/a;->e:Lz0/d;

    new-instance v1, Le1/o0;

    iget-object v2, p0, Lh1/a;->a:[B

    invoke-direct {v1, v2}, Le1/o0;-><init>([B)V

    invoke-virtual {v0, v1}, Lz0/d;->init(Lorg/bouncycastle/crypto/g;)V

    iget-object p0, p0, Lh1/a;->b:[B

    array-length v1, p0

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v3, v1}, Lz0/d;->update([BII)V

    invoke-virtual {v0, p2}, Lz0/d;->update(B)V

    if-eqz p1, :cond_1c

    array-length p2, p1

    invoke-virtual {v0, p1, v3, p2}, Lz0/d;->update([BII)V

    :cond_1c
    invoke-virtual {v0, v2, v3}, Lz0/d;->doFinal([BI)I

    new-instance p1, Le1/o0;

    array-length p2, v2

    invoke-direct {p1, v2, v3, p2}, Le1/o0;-><init>([BII)V

    invoke-virtual {v0, p1}, Lz0/d;->init(Lorg/bouncycastle/crypto/g;)V

    array-length p1, p0

    invoke-virtual {v0, p0, v3, p1}, Lz0/d;->update([BII)V

    invoke-virtual {v0, p0, v3}, Lz0/d;->doFinal([BI)I

    return-void
.end method
