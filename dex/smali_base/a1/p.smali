.class public final La1/p;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/b0;


# instance fields
.field public g:I

.field public h:[B

.field public i:[B

.field public j:J

.field public final k:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ls0/e;

    invoke-direct {v0, p1}, Ls0/e;-><init>(I)V

    iput-object v0, p0, La1/p;->k:Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x8

    iput p1, p0, La1/p;->g:I

    const/4 p1, 0x0

    iput-object p1, p0, La1/p;->h:[B

    iput-object p1, p0, La1/p;->i:[B

    return-void
.end method

.method public constructor <init>(La1/q;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La1/p;->k:Ljava/lang/Object;

    const/16 p1, 0x10

    new-array p1, p1, [B

    iput-object p1, p0, La1/p;->h:[B

    const/4 p1, 0x1

    new-array p1, p1, [B

    iput-object p1, p0, La1/p;->i:[B

    return-void
.end method


# virtual methods
.method public a([BII)V
    .registers 11

    iget-object v0, p0, La1/p;->h:[B

    iget-object v1, p0, La1/p;->k:Ljava/lang/Object;

    check-cast v1, La1/q;

    iget v2, p0, La1/p;->g:I

    rsub-int/lit8 v3, v2, 0x10

    const/16 v4, 0x10

    const/4 v5, 0x0

    if-lez v2, :cond_23

    if-lt p3, v3, :cond_23

    invoke-static {p1, p2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, v1, La1/q;->d:[B

    invoke-static {v5, v4, v0, v2}, La1/q;->f(II[B[B)V

    iget-object v2, v1, La1/q;->d:[B

    invoke-virtual {v1, v2}, La1/q;->g([B)V

    sub-int v2, p3, v3

    iput v5, p0, La1/p;->g:I

    goto :goto_25

    :cond_23
    move v2, p3

    move v3, v5

    :goto_25
    if-lt v2, v4, :cond_38

    add-int v5, p2, v3

    iget-object v6, v1, La1/q;->d:[B

    invoke-static {v5, v4, p1, v6}, La1/q;->f(II[B[B)V

    iget-object v5, v1, La1/q;->d:[B

    invoke-virtual {v1, v5}, La1/q;->g([B)V

    add-int/lit8 v3, v3, 0x10

    add-int/lit8 v2, v2, -0x10

    goto :goto_25

    :cond_38
    if-lez v2, :cond_45

    add-int/2addr p2, v3

    iget v1, p0, La1/p;->g:I

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, La1/p;->g:I

    add-int/2addr p1, v2

    iput p1, p0, La1/p;->g:I

    :cond_45
    iget-wide p1, p0, La1/p;->j:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, La1/p;->j:J

    return-void
.end method

.method public doFinal([BI)I
    .registers 11

    iget-object p2, p0, La1/p;->k:Ljava/lang/Object;

    check-cast p2, Ls0/e;

    iget-object v0, p0, La1/p;->h:[B

    if-eqz v0, :cond_48

    array-length v0, p1

    iget v1, p0, La1/p;->g:I

    if-lt v0, v1, :cond_40

    iget v0, p2, Ls0/e;->i:I

    iget-wide v1, p0, La1/p;->j:J

    int-to-long v3, v0

    rem-long v3, v1, v3

    long-to-int v3, v3

    sub-int v3, v0, v3

    const/16 v4, 0xd

    if-ge v3, v4, :cond_1c

    add-int/2addr v3, v0

    :cond_1c
    new-array v0, v3, [B

    const/16 v4, -0x80

    const/4 v5, 0x0

    aput-byte v4, v0, v5

    const-wide/16 v6, 0x8

    mul-long/2addr v1, v6

    add-int/lit8 v4, v3, -0xc

    invoke-static {v4, v1, v2, v0}, Lm4/d;->F(IJ[B)V

    invoke-virtual {p2, v0, v5, v3}, Ls0/e;->update([BII)V

    iget-object v0, p0, La1/p;->i:[B

    array-length v1, v0

    invoke-virtual {p2, v0, v5, v1}, Ls0/e;->update([BII)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, La1/p;->j:J

    invoke-virtual {p2, p1, v5}, Ls0/e;->doFinal([BI)I

    move-result p1

    invoke-virtual {p0}, La1/p;->reset()V

    return p1

    :cond_40
    new-instance p0, Lorg/bouncycastle/crypto/d0;

    const-string p1, "Output buffer too short"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_48
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "DSTU7564Mac not initialised"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 1

    const-string p0, "DSTU7564Mac"

    return-object p0
.end method

.method public getMacSize()I
    .registers 1

    iget p0, p0, La1/p;->g:I

    return p0
.end method

.method public init(Lorg/bouncycastle/crypto/g;)V
    .registers 8

    iget-object v0, p0, La1/p;->k:Ljava/lang/Object;

    check-cast v0, Ls0/e;

    const/4 v1, 0x0

    iput-object v1, p0, La1/p;->h:[B

    invoke-virtual {p0}, La1/p;->reset()V

    instance-of v1, p1, Le1/o0;

    if-eqz v1, :cond_53

    check-cast p1, Le1/o0;

    iget-object p1, p1, Le1/o0;->c:[B

    array-length v1, p1

    new-array v1, v1, [B

    iput-object v1, p0, La1/p;->i:[B

    array-length v1, p1

    iget v2, v0, Ls0/e;->i:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    div-int/2addr v1, v2

    mul-int/2addr v1, v2

    array-length v3, p1

    sub-int v3, v1, v3

    const/16 v4, 0xd

    if-ge v3, v4, :cond_27

    add-int/2addr v1, v2

    :cond_27
    new-array v2, v1, [B

    array-length v3, p1

    const/4 v4, 0x0

    invoke-static {p1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, p1

    const/16 v5, -0x80

    aput-byte v5, v2, v3

    array-length v3, p1

    mul-int/lit8 v3, v3, 0x8

    add-int/lit8 v1, v1, -0xc

    invoke-static {v2, v3, v1}, Lm4/d;->x([BII)V

    iput-object v2, p0, La1/p;->h:[B

    move v1, v4

    :goto_3e
    iget-object v2, p0, La1/p;->i:[B

    array-length v3, v2

    if-ge v1, v3, :cond_4c

    aget-byte v3, p1, v1

    not-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    :cond_4c
    iget-object p0, p0, La1/p;->h:[B

    array-length p1, p0

    invoke-virtual {v0, p0, v4, p1}, Ls0/e;->update([BII)V

    return-void

    :cond_53
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Bad parameter passed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public reset()V
    .registers 4

    const-wide/16 v0, 0x0

    iput-wide v0, p0, La1/p;->j:J

    iget-object v0, p0, La1/p;->k:Ljava/lang/Object;

    check-cast v0, Ls0/e;

    invoke-virtual {v0}, Ls0/e;->reset()V

    iget-object p0, p0, La1/p;->h:[B

    if-eqz p0, :cond_14

    const/4 v1, 0x0

    array-length v2, p0

    invoke-virtual {v0, p0, v1, v2}, Ls0/e;->update([BII)V

    :cond_14
    return-void
.end method

.method public update(B)V
    .registers 6

    iget-object v0, p0, La1/p;->k:Ljava/lang/Object;

    check-cast v0, Ls0/e;

    invoke-virtual {v0, p1}, Ls0/e;->update(B)V

    iget-wide v0, p0, La1/p;->j:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, La1/p;->j:J

    return-void
.end method

.method public update([BII)V
    .registers 6

    array-length v0, p1

    sub-int/2addr v0, p2

    if-lt v0, p3, :cond_1e

    iget-object v0, p0, La1/p;->h:[B

    if-eqz v0, :cond_16

    iget-object v0, p0, La1/p;->k:Ljava/lang/Object;

    check-cast v0, Ls0/e;

    invoke-virtual {v0, p1, p2, p3}, Ls0/e;->update([BII)V

    iget-wide p1, p0, La1/p;->j:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, La1/p;->j:J

    return-void

    :cond_16
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "DSTU7564Mac not initialised"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1e
    new-instance p0, Lorg/bouncycastle/crypto/q;

    const-string p1, "Input buffer too short"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
