.class public final Lz0/a;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/b0;


# instance fields
.field public final g:[B

.field public final h:[B

.field public i:I

.field public final j:La1/c;

.field public final k:Ld1/a;

.field public final l:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/d;)V
    .registers 4

    invoke-interface {p1}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lz0/a;-><init>(Lorg/bouncycastle/crypto/d;ILa3/e;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/d;ILa3/e;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    rem-int/lit8 v0, p2, 0x8

    if-nez v0, :cond_28

    new-instance v0, La1/c;

    invoke-direct {v0, p1}, La1/c;-><init>(Lorg/bouncycastle/crypto/d;)V

    iput-object v0, p0, Lz0/a;->j:La1/c;

    iput-object p3, p0, Lz0/a;->k:Ld1/a;

    div-int/lit8 p2, p2, 0x8

    iput p2, p0, Lz0/a;->l:I

    invoke-interface {p1}, Lorg/bouncycastle/crypto/d;->c()I

    move-result p2

    new-array p2, p2, [B

    iput-object p2, p0, Lz0/a;->g:[B

    invoke-interface {p1}, Lorg/bouncycastle/crypto/d;->c()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lz0/a;->h:[B

    const/4 p1, 0x0

    iput p1, p0, Lz0/a;->i:I

    return-void

    :cond_28
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "MAC size must be multiple of 8"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final doFinal([BI)I
    .registers 9

    iget-object p2, p0, Lz0/a;->j:La1/c;

    iget-object v0, p2, La1/c;->k:Lorg/bouncycastle/crypto/d;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v0

    const/4 v1, 0x0

    iget-object v2, p0, Lz0/a;->g:[B

    iget-object v3, p0, Lz0/a;->h:[B

    iget-object v4, p0, Lz0/a;->k:Ld1/a;

    if-nez v4, :cond_1c

    :goto_11
    iget v4, p0, Lz0/a;->i:I

    if-ge v4, v0, :cond_2a

    aput-byte v1, v3, v4

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lz0/a;->i:I

    goto :goto_11

    :cond_1c
    iget v5, p0, Lz0/a;->i:I

    if-ne v5, v0, :cond_25

    invoke-virtual {p2, v1, v1, v3, v2}, La1/c;->b(II[B[B)I

    iput v1, p0, Lz0/a;->i:I

    :cond_25
    iget v0, p0, Lz0/a;->i:I

    invoke-interface {v4, v0, v3}, Ld1/a;->k(I[B)I

    :cond_2a
    invoke-virtual {p2, v1, v1, v3, v2}, La1/c;->b(II[B[B)I

    iget p2, p0, Lz0/a;->l:I

    invoke-static {v2, v1, p1, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Lz0/a;->reset()V

    return p2
.end method

.method public final getAlgorithmName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lz0/a;->j:La1/c;

    invoke-virtual {p0}, La1/c;->getAlgorithmName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getMacSize()I
    .registers 1

    iget p0, p0, Lz0/a;->l:I

    return p0
.end method

.method public final init(Lorg/bouncycastle/crypto/g;)V
    .registers 3

    invoke-virtual {p0}, Lz0/a;->reset()V

    iget-object p0, p0, Lz0/a;->j:La1/c;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, La1/c;->init(ZLorg/bouncycastle/crypto/g;)V

    return-void
.end method

.method public final reset()V
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lz0/a;->h:[B

    array-length v3, v2

    if-ge v1, v3, :cond_c

    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_c
    iput v0, p0, Lz0/a;->i:I

    iget-object p0, p0, Lz0/a;->j:La1/c;

    invoke-virtual {p0}, La1/c;->reset()V

    return-void
.end method

.method public final update(B)V
    .registers 6

    iget v0, p0, Lz0/a;->i:I

    iget-object v1, p0, Lz0/a;->h:[B

    array-length v2, v1

    if-ne v0, v2, :cond_11

    iget-object v0, p0, Lz0/a;->j:La1/c;

    iget-object v2, p0, Lz0/a;->g:[B

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, La1/c;->b(II[B[B)I

    iput v3, p0, Lz0/a;->i:I

    :cond_11
    iget v0, p0, Lz0/a;->i:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lz0/a;->i:I

    aput-byte p1, v1, v0

    return-void
.end method

.method public final update([BII)V
    .registers 10

    if-ltz p3, :cond_32

    iget-object v0, p0, Lz0/a;->j:La1/c;

    iget-object v1, v0, La1/c;->k:Lorg/bouncycastle/crypto/d;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v1

    iget v2, p0, Lz0/a;->i:I

    sub-int v3, v1, v2

    iget-object v4, p0, Lz0/a;->h:[B

    if-le p3, v3, :cond_27

    invoke-static {p1, p2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x0

    iget-object v5, p0, Lz0/a;->g:[B

    invoke-virtual {v0, v2, v2, v4, v5}, La1/c;->b(II[B[B)I

    iput v2, p0, Lz0/a;->i:I

    sub-int/2addr p3, v3

    add-int/2addr p2, v3

    :goto_1f
    if-le p3, v1, :cond_27

    invoke-virtual {v0, p2, v2, p1, v5}, La1/c;->b(II[B[B)I

    sub-int/2addr p3, v1

    add-int/2addr p2, v1

    goto :goto_1f

    :cond_27
    iget v0, p0, Lz0/a;->i:I

    invoke-static {p1, p2, v4, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lz0/a;->i:I

    add-int/2addr p1, p3

    iput p1, p0, Lz0/a;->i:I

    return-void

    :cond_32
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t have a negative input length!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
