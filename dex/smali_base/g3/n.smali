.class public final Lg3/n;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/b0;


# instance fields
.field public final g:[B

.field public final h:[B

.field public i:I

.field public j:I

.field public final k:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/d;)V
    .registers 6

    invoke-interface {p1}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    div-int/lit8 v0, v0, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    rem-int/lit8 v1, v0, 0x8

    if-nez v1, :cond_47

    invoke-interface {p1}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p0, Lg3/n;->g:[B

    new-instance v1, Ls0/j0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object p1, v1, Ls0/j0;->e:Ljava/lang/Object;

    const/4 v2, 0x1

    iput v2, v1, Ls0/j0;->b:I

    invoke-interface {p1}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v3

    new-array v3, v3, [B

    iput-object v3, v1, Ls0/j0;->a:[B

    invoke-interface {p1}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v3

    new-array v3, v3, [B

    iput-object v3, v1, Ls0/j0;->c:Ljava/lang/Object;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/d;->c()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, v1, Ls0/j0;->d:Ljava/lang/Object;

    iput-object v1, p0, Lg3/n;->k:Ljava/lang/Object;

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lg3/n;->j:I

    new-array p1, v2, [B

    iput-object p1, p0, Lg3/n;->h:[B

    const/4 p1, 0x0

    iput p1, p0, Lg3/n;->i:I

    return-void

    :cond_47
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "MAC size must be multiple of 8"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>([B[BLorg/bouncycastle/crypto/v;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg3/n;->g:[B

    iput-object p2, p0, Lg3/n;->h:[B

    iput-object p3, p0, Lg3/n;->k:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(IZ[B)V
    .registers 8

    array-length v0, p3

    sub-int/2addr v0, p1

    iget-object v1, p0, Lg3/n;->k:Ljava/lang/Object;

    check-cast v1, Lorg/bouncycastle/crypto/v;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/v;->getDigestSize()I

    move-result v2

    if-lt v0, v2, :cond_55

    iget-object v0, p0, Lg3/n;->g:[B

    array-length v2, v0

    const/4 v3, 0x0

    invoke-interface {v1, v0, v3, v2}, Lorg/bouncycastle/crypto/v;->update([BII)V

    iget v0, p0, Lg3/n;->i:I

    ushr-int/lit8 v0, v0, 0x18

    int-to-byte v0, v0

    invoke-interface {v1, v0}, Lorg/bouncycastle/crypto/v;->update(B)V

    iget v0, p0, Lg3/n;->i:I

    ushr-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    invoke-interface {v1, v0}, Lorg/bouncycastle/crypto/v;->update(B)V

    iget v0, p0, Lg3/n;->i:I

    ushr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    invoke-interface {v1, v0}, Lorg/bouncycastle/crypto/v;->update(B)V

    iget v0, p0, Lg3/n;->i:I

    int-to-byte v0, v0

    invoke-interface {v1, v0}, Lorg/bouncycastle/crypto/v;->update(B)V

    iget v0, p0, Lg3/n;->j:I

    ushr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    invoke-interface {v1, v0}, Lorg/bouncycastle/crypto/v;->update(B)V

    iget v0, p0, Lg3/n;->j:I

    int-to-byte v0, v0

    invoke-interface {v1, v0}, Lorg/bouncycastle/crypto/v;->update(B)V

    const/4 v0, -0x1

    invoke-interface {v1, v0}, Lorg/bouncycastle/crypto/v;->update(B)V

    iget-object v0, p0, Lg3/n;->h:[B

    array-length v2, v0

    invoke-interface {v1, v0, v3, v2}, Lorg/bouncycastle/crypto/v;->update([BII)V

    invoke-interface {v1, p3, p1}, Lorg/bouncycastle/crypto/v;->doFinal([BI)I

    if-eqz p2, :cond_54

    iget p1, p0, Lg3/n;->j:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lg3/n;->j:I

    :cond_54
    return-void

    :cond_55
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "target length is less than digest size."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public doFinal([BI)I
    .registers 8

    iget p2, p0, Lg3/n;->j:I

    iget-object v0, p0, Lg3/n;->k:Ljava/lang/Object;

    check-cast v0, Ls0/j0;

    iget v1, v0, Ls0/j0;->b:I

    :goto_8
    iget v2, p0, Lg3/n;->i:I

    const/4 v3, 0x0

    iget-object v4, p0, Lg3/n;->h:[B

    if-ge v2, v1, :cond_16

    aput-byte v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lg3/n;->i:I

    goto :goto_8

    :cond_16
    iget-object v1, p0, Lg3/n;->g:[B

    invoke-virtual {v0, v4, v3, v1}, Ls0/j0;->b([BI[B)V

    iget-object v2, v0, Ls0/j0;->e:Ljava/lang/Object;

    check-cast v2, Lorg/bouncycastle/crypto/d;

    iget-object v0, v0, Ls0/j0;->c:Ljava/lang/Object;

    check-cast v0, [B

    invoke-interface {v2, v3, v3, v0, v1}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    invoke-static {v1, v3, p1, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Lg3/n;->reset()V

    return p2
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 3

    iget-object p0, p0, Lg3/n;->k:Ljava/lang/Object;

    check-cast p0, Ls0/j0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ls0/j0;->e:Ljava/lang/Object;

    check-cast v1, Lorg/bouncycastle/crypto/d;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/d;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/CFB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Ls0/j0;->b:I

    mul-int/lit8 p0, p0, 0x8

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMacSize()I
    .registers 1

    iget p0, p0, Lg3/n;->j:I

    return p0
.end method

.method public init(Lorg/bouncycastle/crypto/g;)V
    .registers 10

    invoke-virtual {p0}, Lg3/n;->reset()V

    iget-object p0, p0, Lg3/n;->k:Ljava/lang/Object;

    check-cast p0, Ls0/j0;

    iget-object v0, p0, Ls0/j0;->e:Ljava/lang/Object;

    check-cast v0, Lorg/bouncycastle/crypto/d;

    iget-object v1, p0, Ls0/j0;->e:Ljava/lang/Object;

    check-cast v1, Lorg/bouncycastle/crypto/d;

    iget-object v2, p0, Ls0/j0;->c:Ljava/lang/Object;

    check-cast v2, [B

    iget-object p0, p0, Ls0/j0;->a:[B

    instance-of v3, p1, Le1/s0;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_3c

    check-cast p1, Le1/s0;

    iget-object v3, p1, Le1/s0;->c:[B

    array-length v6, v3

    array-length v7, p0

    if-ge v6, v7, :cond_2b

    array-length v6, p0

    array-length v7, v3

    sub-int/2addr v6, v7

    array-length v7, v3

    invoke-static {v3, v5, p0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2f

    :cond_2b
    array-length v6, p0

    invoke-static {v3, v5, p0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2f
    array-length v3, p0

    invoke-static {p0, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {v1}, Lorg/bouncycastle/crypto/d;->reset()V

    iget-object p0, p1, Le1/s0;->d:Lorg/bouncycastle/crypto/g;

    invoke-interface {v0, v4, p0}, Lorg/bouncycastle/crypto/d;->init(ZLorg/bouncycastle/crypto/g;)V

    return-void

    :cond_3c
    array-length v3, p0

    invoke-static {p0, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {v1}, Lorg/bouncycastle/crypto/d;->reset()V

    invoke-interface {v0, v4, p1}, Lorg/bouncycastle/crypto/d;->init(ZLorg/bouncycastle/crypto/g;)V

    return-void
.end method

.method public reset()V
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lg3/n;->h:[B

    array-length v3, v2

    if-ge v1, v3, :cond_c

    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_c
    iput v0, p0, Lg3/n;->i:I

    iget-object p0, p0, Lg3/n;->k:Ljava/lang/Object;

    check-cast p0, Ls0/j0;

    iget-object v1, p0, Ls0/j0;->a:[B

    iget-object v2, p0, Ls0/j0;->c:Ljava/lang/Object;

    check-cast v2, [B

    array-length v3, v1

    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p0, p0, Ls0/j0;->e:Ljava/lang/Object;

    check-cast p0, Lorg/bouncycastle/crypto/d;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/d;->reset()V

    return-void
.end method

.method public update(B)V
    .registers 6

    iget v0, p0, Lg3/n;->i:I

    iget-object v1, p0, Lg3/n;->h:[B

    array-length v2, v1

    if-ne v0, v2, :cond_13

    iget-object v0, p0, Lg3/n;->k:Ljava/lang/Object;

    check-cast v0, Ls0/j0;

    iget-object v2, p0, Lg3/n;->g:[B

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ls0/j0;->b([BI[B)V

    iput v3, p0, Lg3/n;->i:I

    :cond_13
    iget v0, p0, Lg3/n;->i:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lg3/n;->i:I

    aput-byte p1, v1, v0

    return-void
.end method

.method public update([BII)V
    .registers 10

    iget-object v0, p0, Lg3/n;->k:Ljava/lang/Object;

    check-cast v0, Ls0/j0;

    if-ltz p3, :cond_30

    iget v1, v0, Ls0/j0;->b:I

    iget v2, p0, Lg3/n;->i:I

    sub-int v3, v1, v2

    iget-object v4, p0, Lg3/n;->h:[B

    if-le p3, v3, :cond_25

    invoke-static {p1, p2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x0

    iget-object v5, p0, Lg3/n;->g:[B

    invoke-virtual {v0, v4, v2, v5}, Ls0/j0;->b([BI[B)V

    iput v2, p0, Lg3/n;->i:I

    sub-int/2addr p3, v3

    add-int/2addr p2, v3

    :goto_1d
    if-le p3, v1, :cond_25

    invoke-virtual {v0, p1, p2, v5}, Ls0/j0;->b([BI[B)V

    sub-int/2addr p3, v1

    add-int/2addr p2, v1

    goto :goto_1d

    :cond_25
    iget v0, p0, Lg3/n;->i:I

    invoke-static {p1, p2, v4, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lg3/n;->i:I

    add-int/2addr p1, p3

    iput p1, p0, Lg3/n;->i:I

    return-void

    :cond_30
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t have a negative input length!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
