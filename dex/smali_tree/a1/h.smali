.class public final La1/h;
.super Lorg/bouncycastle/crypto/r;


# instance fields
.field public final o:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/d;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Lorg/bouncycastle/crypto/n0;

    if-nez v0, :cond_19

    iput-object p1, p0, Lorg/bouncycastle/crypto/r;->k:Lorg/bouncycastle/crypto/d;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/d;->c()I

    move-result p1

    iput p1, p0, La1/h;->o:I

    mul-int/lit8 p1, p1, 0x2

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/r;->h:[B

    const/4 p1, 0x0

    iput p1, p0, Lorg/bouncycastle/crypto/r;->i:I

    return-void

    :cond_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "CTSBlockCipher can only accept ECB, or CBC ciphers"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a([BI)I
    .registers 12

    iget v0, p0, Lorg/bouncycastle/crypto/r;->i:I

    add-int/2addr v0, p2

    array-length v1, p1

    if-gt v0, v1, :cond_be

    iget-object v0, p0, Lorg/bouncycastle/crypto/r;->k:Lorg/bouncycastle/crypto/d;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v0

    iget v1, p0, Lorg/bouncycastle/crypto/r;->i:I

    sub-int v2, v1, v0

    new-array v3, v0, [B

    iget-boolean v4, p0, Lorg/bouncycastle/crypto/r;->j:Z

    const-string v5, "need at least one block of input for CTS"

    const/4 v6, 0x0

    if-eqz v4, :cond_6c

    if-lt v1, v0, :cond_66

    iget-object v1, p0, Lorg/bouncycastle/crypto/r;->k:Lorg/bouncycastle/crypto/d;

    iget-object v4, p0, Lorg/bouncycastle/crypto/r;->h:[B

    invoke-interface {v1, v6, v6, v4, v3}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    iget v1, p0, Lorg/bouncycastle/crypto/r;->i:I

    if-le v1, v0, :cond_62

    :goto_26
    iget-object v4, p0, Lorg/bouncycastle/crypto/r;->h:[B

    array-length v5, v4

    if-eq v1, v5, :cond_34

    sub-int v5, v1, v0

    aget-byte v5, v3, v5

    aput-byte v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    :cond_34
    move v1, v0

    :goto_35
    iget v4, p0, Lorg/bouncycastle/crypto/r;->i:I

    if-eq v1, v4, :cond_48

    iget-object v4, p0, Lorg/bouncycastle/crypto/r;->h:[B

    aget-byte v5, v4, v1

    sub-int v7, v1, v0

    aget-byte v7, v3, v7

    xor-int/2addr v5, v7

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    :cond_48
    iget-object v1, p0, Lorg/bouncycastle/crypto/r;->k:Lorg/bouncycastle/crypto/d;

    instance-of v4, v1, La1/c;

    if-eqz v4, :cond_58

    check-cast v1, La1/c;

    iget-object v1, v1, La1/c;->k:Lorg/bouncycastle/crypto/d;

    iget-object v4, p0, Lorg/bouncycastle/crypto/r;->h:[B

    invoke-interface {v1, v0, p2, v4, p1}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    goto :goto_5d

    :cond_58
    iget-object v4, p0, Lorg/bouncycastle/crypto/r;->h:[B

    invoke-interface {v1, v0, p2, v4, p1}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    :goto_5d
    add-int/2addr p2, v0

    invoke-static {v3, v6, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_b2

    :cond_62
    :goto_62
    invoke-static {v3, v6, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_b2

    :cond_66
    new-instance p0, Lorg/bouncycastle/crypto/q;

    invoke-direct {p0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6c
    if-lt v1, v0, :cond_b8

    new-array v4, v0, [B

    if-le v1, v0, :cond_aa

    iget-object v1, p0, Lorg/bouncycastle/crypto/r;->k:Lorg/bouncycastle/crypto/d;

    instance-of v5, v1, La1/c;

    if-eqz v5, :cond_82

    check-cast v1, La1/c;

    iget-object v1, v1, La1/c;->k:Lorg/bouncycastle/crypto/d;

    iget-object v5, p0, Lorg/bouncycastle/crypto/r;->h:[B

    invoke-interface {v1, v6, v6, v5, v3}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    goto :goto_87

    :cond_82
    iget-object v5, p0, Lorg/bouncycastle/crypto/r;->h:[B

    invoke-interface {v1, v6, v6, v5, v3}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    :goto_87
    move v1, v0

    :goto_88
    iget v5, p0, Lorg/bouncycastle/crypto/r;->i:I

    if-eq v1, v5, :cond_9b

    sub-int v5, v1, v0

    aget-byte v7, v3, v5

    iget-object v8, p0, Lorg/bouncycastle/crypto/r;->h:[B

    aget-byte v8, v8, v1

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_88

    :cond_9b
    iget-object v1, p0, Lorg/bouncycastle/crypto/r;->h:[B

    invoke-static {v1, v0, v3, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/r;->k:Lorg/bouncycastle/crypto/d;

    invoke-interface {v1, v6, p2, v3, p1}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    add-int/2addr p2, v0

    invoke-static {v4, v6, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_b2

    :cond_aa
    iget-object v1, p0, Lorg/bouncycastle/crypto/r;->k:Lorg/bouncycastle/crypto/d;

    iget-object v2, p0, Lorg/bouncycastle/crypto/r;->h:[B

    invoke-interface {v1, v6, v6, v2, v3}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    goto :goto_62

    :goto_b2
    iget p1, p0, Lorg/bouncycastle/crypto/r;->i:I

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/r;->j()V

    return p1

    :cond_b8
    new-instance p0, Lorg/bouncycastle/crypto/q;

    invoke-direct {p0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_be
    new-instance p0, Lorg/bouncycastle/crypto/d0;

    const-string p1, "output buffer to small in doFinal"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c(I)I
    .registers 2

    iget p0, p0, Lorg/bouncycastle/crypto/r;->i:I

    add-int/2addr p1, p0

    return p1
.end method

.method public final e(I)I
    .registers 3

    iget v0, p0, Lorg/bouncycastle/crypto/r;->i:I

    add-int/2addr p1, v0

    iget-object p0, p0, Lorg/bouncycastle/crypto/r;->h:[B

    array-length v0, p0

    rem-int v0, p1, v0

    if-nez v0, :cond_d

    array-length p0, p0

    sub-int/2addr p1, p0

    return p1

    :cond_d
    sub-int/2addr p1, v0

    return p1
.end method

.method public final h(B[BI)I
    .registers 8

    iget v0, p0, Lorg/bouncycastle/crypto/r;->i:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/r;->h:[B

    array-length v2, v1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_18

    iget-object v0, p0, Lorg/bouncycastle/crypto/r;->k:Lorg/bouncycastle/crypto/d;

    invoke-interface {v0, v3, p3, v1, p2}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    move-result p2

    iget-object p3, p0, Lorg/bouncycastle/crypto/r;->h:[B

    iget v0, p0, La1/h;->o:I

    invoke-static {p3, v0, p3, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Lorg/bouncycastle/crypto/r;->i:I

    move v3, p2

    :cond_18
    iget-object p2, p0, Lorg/bouncycastle/crypto/r;->h:[B

    iget p3, p0, Lorg/bouncycastle/crypto/r;->i:I

    add-int/lit8 v0, p3, 0x1

    iput v0, p0, Lorg/bouncycastle/crypto/r;->i:I

    aput-byte p1, p2, p3

    return v3
.end method

.method public final i([BII[BI)I
    .registers 12

    if-ltz p3, :cond_71

    iget-object v0, p0, Lorg/bouncycastle/crypto/r;->k:Lorg/bouncycastle/crypto/d;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v0

    invoke-virtual {p0, p3}, La1/h;->e(I)I

    move-result v1

    if-lez v1, :cond_1c

    add-int v2, p5, v1

    array-length v3, p4

    if-gt v2, v3, :cond_14

    goto :goto_1c

    :cond_14
    new-instance p0, Lorg/bouncycastle/crypto/d0;

    const-string p1, "output buffer too short"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1c
    :goto_1c
    iget-object v2, p0, Lorg/bouncycastle/crypto/r;->h:[B

    array-length v3, v2

    iget v4, p0, Lorg/bouncycastle/crypto/r;->i:I

    sub-int/2addr v3, v4

    const/4 v5, 0x0

    if-le p3, v3, :cond_64

    invoke-static {p1, p2, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v3

    sub-int/2addr p3, v3

    if-ne p1, p4, :cond_38

    invoke-static {p2, p3, p5, v1}, Lm4/d;->J(IIII)Z

    move-result v1

    if-eqz v1, :cond_38

    new-array p1, p3, [B

    invoke-static {p4, p2, p1, v5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move p2, v5

    :cond_38
    iget-object v1, p0, Lorg/bouncycastle/crypto/r;->k:Lorg/bouncycastle/crypto/d;

    iget-object v2, p0, Lorg/bouncycastle/crypto/r;->h:[B

    invoke-interface {v1, v5, p5, v2, p4}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    move-result v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/r;->h:[B

    invoke-static {v2, v0, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Lorg/bouncycastle/crypto/r;->i:I

    :goto_47
    if-le p3, v0, :cond_63

    iget-object v2, p0, Lorg/bouncycastle/crypto/r;->h:[B

    iget v3, p0, Lorg/bouncycastle/crypto/r;->i:I

    invoke-static {p1, p2, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/r;->k:Lorg/bouncycastle/crypto/d;

    iget-object v3, p0, Lorg/bouncycastle/crypto/r;->h:[B

    add-int v4, p5, v1

    invoke-interface {v2, v5, v4, v3, p4}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/r;->h:[B

    invoke-static {v2, v0, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr p3, v0

    add-int/2addr p2, v0

    goto :goto_47

    :cond_63
    move v5, v1

    :cond_64
    iget-object p4, p0, Lorg/bouncycastle/crypto/r;->h:[B

    iget p5, p0, Lorg/bouncycastle/crypto/r;->i:I

    invoke-static {p1, p2, p4, p5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/bouncycastle/crypto/r;->i:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/bouncycastle/crypto/r;->i:I

    return v5

    :cond_71
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t have a negative input length!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
