.class public final La1/k;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/d;


# instance fields
.field public g:I

.field public h:I

.field public i:[B

.field public j:[B

.field public k:Lv0/f;

.field public l:Z

.field public m:Z


# virtual methods
.method public final a([B)V
    .registers 7

    iget-object v0, p0, La1/k;->i:[B

    iget v1, p0, La1/k;->g:I

    iget v2, p0, La1/k;->h:I

    sub-int/2addr v1, v2

    new-array v2, v1, [B

    array-length v3, v0

    sub-int/2addr v3, v1

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, La1/k;->i:[B

    invoke-static {v2, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, La1/k;->i:[B

    iget p0, p0, La1/k;->g:I

    sub-int/2addr p0, v1

    invoke-static {p1, v4, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final b(II[B[B)I
    .registers 12

    iget-object v0, p0, La1/k;->k:Lv0/f;

    iget v1, p0, La1/k;->h:I

    iget-boolean v2, p0, La1/k;->m:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_3b

    iget-object v2, p0, La1/k;->i:[B

    invoke-static {v1, v2}, Lm4/d;->p(I[B)[B

    move-result-object v2

    array-length v4, p3

    add-int v5, v1, p1

    if-ge v4, v5, :cond_16

    array-length v1, p3

    sub-int/2addr v1, p1

    :cond_16
    new-array v4, v1, [B

    invoke-static {p3, p1, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array p1, v1, [B

    move p3, v3

    :goto_1e
    if-ge p3, v1, :cond_2b

    aget-byte v5, v4, p3

    aget-byte v6, v2, p3

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, p1, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_1e

    :cond_2b
    new-array p3, v1, [B

    invoke-virtual {v0, v3, v3, p1, p3}, Lv0/f;->b(II[B[B)I

    invoke-static {p3, v3, p4, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p4

    add-int/2addr p2, v1

    if-le p1, p2, :cond_3a

    invoke-virtual {p0, p3}, La1/k;->a([B)V

    :cond_3a
    return v1

    :cond_3b
    iget-object v2, p0, La1/k;->i:[B

    invoke-static {v1, v2}, Lm4/d;->p(I[B)[B

    move-result-object v2

    array-length v4, p3

    add-int v5, v1, p1

    if-ge v4, v5, :cond_48

    array-length v1, p3

    sub-int/2addr v1, p1

    :cond_48
    new-array v4, v1, [B

    invoke-static {p3, p1, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array p1, v1, [B

    invoke-virtual {v0, v3, v3, v4, p1}, Lv0/f;->b(II[B[B)I

    new-array p3, v1, [B

    move v0, v3

    :goto_55
    if-ge v0, v1, :cond_62

    aget-byte v5, p1, v0

    aget-byte v6, v2, v0

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_55

    :cond_62
    invoke-static {p3, v3, p4, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p4

    add-int/2addr p2, v1

    if-le p1, p2, :cond_6c

    invoke-virtual {p0, v4}, La1/k;->a([B)V

    :cond_6c
    return v1
.end method

.method public final c()I
    .registers 1

    iget p0, p0, La1/k;->h:I

    return p0
.end method

.method public final getAlgorithmName()Ljava/lang/String;
    .registers 1

    const-string p0, "GOST3412_2015/CBC"

    return-object p0
.end method

.method public final init(ZLorg/bouncycastle/crypto/g;)V
    .registers 8

    iget-object v0, p0, La1/k;->k:Lv0/f;

    iget v1, p0, La1/k;->h:I

    iput-boolean p1, p0, La1/k;->m:Z

    instance-of v2, p2, Le1/s0;

    const/4 v3, 0x0

    if-eqz v2, :cond_36

    check-cast p2, Le1/s0;

    iget-object v2, p2, Le1/s0;->c:[B

    array-length v4, v2

    if-lt v4, v1, :cond_2e

    array-length v1, v2

    iput v1, p0, La1/k;->g:I

    new-array v4, v1, [B

    iput-object v4, p0, La1/k;->i:[B

    new-array v1, v1, [B

    iput-object v1, p0, La1/k;->j:[B

    invoke-static {v2}, Lm4/d;->e([B)[B

    move-result-object v1

    iput-object v1, p0, La1/k;->j:[B

    iget-object v2, p0, La1/k;->i:[B

    array-length v4, v1

    invoke-static {v1, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p2, p2, Le1/s0;->d:Lorg/bouncycastle/crypto/g;

    if-eqz p2, :cond_49

    goto :goto_46

    :cond_2e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parameter m must blockSize <= m"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_36
    iput v1, p0, La1/k;->g:I

    new-array v2, v1, [B

    iput-object v2, p0, La1/k;->i:[B

    new-array v1, v1, [B

    iput-object v1, p0, La1/k;->j:[B

    array-length v4, v1

    invoke-static {v1, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz p2, :cond_49

    :goto_46
    invoke-virtual {v0, p1, p2}, Lv0/f;->init(ZLorg/bouncycastle/crypto/g;)V

    :cond_49
    const/4 p1, 0x1

    iput-boolean p1, p0, La1/k;->l:Z

    return-void
.end method

.method public final reset()V
    .registers 4

    iget-boolean v0, p0, La1/k;->l:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, La1/k;->j:[B

    iget-object p0, p0, La1/k;->i:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_d
    return-void
.end method
