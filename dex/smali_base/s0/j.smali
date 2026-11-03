.class public abstract Ls0/j;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/w;
.implements Lm4/e;


# instance fields
.field public final g:Lorg/bouncycastle/crypto/j;

.field public final h:[B

.field public i:I

.field public j:J


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/j;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Ls0/j;->h:[B

    iput-object p1, p0, Ls0/j;->g:Lorg/bouncycastle/crypto/j;

    const/4 p1, 0x0

    iput p1, p0, Ls0/j;->i:I

    return-void
.end method

.method public constructor <init>(Ls0/j;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Ls0/j;->h:[B

    iget-object v0, p1, Ls0/j;->g:Lorg/bouncycastle/crypto/j;

    iput-object v0, p0, Ls0/j;->g:Lorg/bouncycastle/crypto/j;

    invoke-virtual {p0, p1}, Ls0/j;->d(Ls0/j;)V

    return-void
.end method


# virtual methods
.method public final d(Ls0/j;)V
    .registers 6

    iget-object v0, p1, Ls0/j;->h:[B

    iget-object v1, p0, Ls0/j;->h:[B

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Ls0/j;->i:I

    iput v0, p0, Ls0/j;->i:I

    iget-wide v0, p1, Ls0/j;->j:J

    iput-wide v0, p0, Ls0/j;->j:J

    return-void
.end method

.method public final e()V
    .registers 4

    iget-wide v0, p0, Ls0/j;->j:J

    const/4 v2, 0x3

    shl-long/2addr v0, v2

    const/16 v2, -0x80

    :goto_6
    invoke-virtual {p0, v2}, Ls0/j;->update(B)V

    iget v2, p0, Ls0/j;->i:I

    if-eqz v2, :cond_f

    const/4 v2, 0x0

    goto :goto_6

    :cond_f
    invoke-virtual {p0, v0, v1}, Ls0/j;->g(J)V

    invoke-virtual {p0}, Ls0/j;->f()V

    return-void
.end method

.method public abstract f()V
.end method

.method public abstract g(J)V
.end method

.method public final getByteLength()I
    .registers 1

    const/16 p0, 0x40

    return p0
.end method

.method public abstract h(I[B)V
.end method

.method public reset()V
    .registers 5

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ls0/j;->j:J

    const/4 v0, 0x0

    iput v0, p0, Ls0/j;->i:I

    move v1, v0

    :goto_8
    iget-object v2, p0, Ls0/j;->h:[B

    array-length v3, v2

    if-ge v1, v3, :cond_12

    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_12
    return-void
.end method

.method public final update(B)V
    .registers 6

    iget v0, p0, Ls0/j;->i:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ls0/j;->i:I

    iget-object v2, p0, Ls0/j;->h:[B

    aput-byte p1, v2, v0

    array-length p1, v2

    if-ne v1, p1, :cond_13

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v2}, Ls0/j;->h(I[B)V

    iput p1, p0, Ls0/j;->i:I

    :cond_13
    iget-wide v0, p0, Ls0/j;->j:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Ls0/j;->j:J

    return-void
.end method

.method public final update([BII)V
    .registers 10

    const/4 v0, 0x0

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    iget v1, p0, Ls0/j;->i:I

    iget-object v2, p0, Ls0/j;->h:[B

    if-eqz v1, :cond_28

    move v1, v0

    :goto_c
    if-ge v1, p3, :cond_27

    iget v3, p0, Ls0/j;->i:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Ls0/j;->i:I

    add-int/lit8 v5, v1, 0x1

    add-int/2addr v1, p2

    aget-byte v1, p1, v1

    aput-byte v1, v2, v3

    const/4 v1, 0x4

    if-ne v4, v1, :cond_25

    invoke-virtual {p0, v0, v2}, Ls0/j;->h(I[B)V

    iput v0, p0, Ls0/j;->i:I

    move v0, v5

    goto :goto_28

    :cond_25
    move v1, v5

    goto :goto_c

    :cond_27
    move v0, v1

    :cond_28
    :goto_28
    add-int/lit8 v1, p3, -0x3

    :goto_2a
    if-ge v0, v1, :cond_34

    add-int v3, p2, v0

    invoke-virtual {p0, v3, p1}, Ls0/j;->h(I[B)V

    add-int/lit8 v0, v0, 0x4

    goto :goto_2a

    :cond_34
    :goto_34
    if-ge v0, p3, :cond_45

    iget v1, p0, Ls0/j;->i:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Ls0/j;->i:I

    add-int/lit8 v3, v0, 0x1

    add-int/2addr v0, p2

    aget-byte v0, p1, v0

    aput-byte v0, v2, v1

    move v0, v3

    goto :goto_34

    :cond_45
    iget-wide p1, p0, Ls0/j;->j:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Ls0/j;->j:J

    return-void
.end method
