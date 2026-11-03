.class public final La1/j;
.super Ljava/lang/Object;

# interfaces
.implements La1/a;


# instance fields
.field public a:La1/w;

.field public b:Z

.field public c:I

.field public d:Lz0/b;

.field public e:[B

.field public f:[B

.field public g:[B

.field public h:I

.field public i:[B

.field public j:I

.field public k:Z

.field public l:[B


# virtual methods
.method public final a([BII)V
    .registers 5

    iget-boolean v0, p0, La1/j;->k:Z

    if-nez v0, :cond_a

    iget-object p0, p0, La1/j;->d:Lz0/b;

    invoke-virtual {p0, p1, p2, p3}, Lz0/b;->update([BII)V

    return-void

    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "AAD data cannot be added after encryption/decryption processing has begun."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b()[B
    .registers 4

    iget v0, p0, La1/j;->h:I

    new-array v1, v0, [B

    iget-object p0, p0, La1/j;->g:[B

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public final c()V
    .registers 6

    iget v0, p0, La1/j;->c:I

    new-array v0, v0, [B

    iget-object v1, p0, La1/j;->d:Lz0/b;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lz0/b;->doFinal([BI)I

    :goto_a
    iget-object v1, p0, La1/j;->g:[B

    array-length v3, v1

    if-ge v2, v3, :cond_21

    iget-object v3, p0, La1/j;->e:[B

    aget-byte v3, v3, v2

    iget-object v4, p0, La1/j;->f:[B

    aget-byte v4, v4, v2

    xor-int/2addr v3, v4

    aget-byte v4, v0, v2

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_21
    return-void
.end method

.method public final d()V
    .registers 6

    iget-object v0, p0, La1/j;->d:Lz0/b;

    iget-boolean v1, p0, La1/j;->k:Z

    if-eqz v1, :cond_7

    return-void

    :cond_7
    const/4 v1, 0x1

    iput-boolean v1, p0, La1/j;->k:Z

    iget-object v1, p0, La1/j;->f:[B

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lz0/b;->doFinal([BI)I

    iget p0, p0, La1/j;->c:I

    new-array v1, p0, [B

    add-int/lit8 v3, p0, -0x1

    const/4 v4, 0x2

    aput-byte v4, v1, v3

    invoke-virtual {v0, v1, v2, p0}, Lz0/b;->update([BII)V

    return-void
.end method

.method public final doFinal([BI)I
    .registers 14

    iget-object v0, p0, La1/j;->g:[B

    iget-object v1, p0, La1/j;->d:Lz0/b;

    iget-object v2, p0, La1/j;->a:La1/w;

    invoke-virtual {p0}, La1/j;->d()V

    iget v3, p0, La1/j;->j:I

    iget-object v4, p0, La1/j;->i:[B

    array-length v5, v4

    new-array v5, v5, [B

    const/4 v6, 0x0

    iput v6, p0, La1/j;->j:I

    iget-boolean v7, p0, La1/j;->b:Z

    const-string v8, "Output buffer too short"

    if-eqz v7, :cond_3f

    array-length v7, p1

    add-int v9, p2, v3

    iget v10, p0, La1/j;->h:I

    add-int/2addr v10, v9

    if-lt v7, v10, :cond_39

    invoke-virtual {v2, v6, v6, v4, v5}, La1/w;->b(II[B[B)I

    invoke-static {v5, v6, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v1, v5, v6, v3}, Lz0/b;->update([BII)V

    invoke-virtual {p0}, La1/j;->c()V

    iget p2, p0, La1/j;->h:I

    invoke-static {v0, v6, p1, v9, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v6}, La1/j;->f(Z)V

    iget p0, p0, La1/j;->h:I

    add-int/2addr v3, p0

    return v3

    :cond_39
    new-instance p0, Lorg/bouncycastle/crypto/d0;

    invoke-direct {p0, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3f
    iget v7, p0, La1/j;->h:I

    if-lt v3, v7, :cond_8d

    array-length v9, p1

    add-int v10, p2, v3

    sub-int/2addr v10, v7

    if-lt v9, v10, :cond_87

    if-le v3, v7, :cond_5c

    sub-int v7, v3, v7

    invoke-virtual {v1, v4, v6, v7}, Lz0/b;->update([BII)V

    iget-object v1, p0, La1/j;->i:[B

    invoke-virtual {v2, v6, v6, v1, v5}, La1/w;->b(II[B[B)I

    iget v1, p0, La1/j;->h:I

    sub-int v1, v3, v1

    invoke-static {v5, v6, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5c
    invoke-virtual {p0}, La1/j;->c()V

    iget-object p1, p0, La1/j;->i:[B

    iget p2, p0, La1/j;->h:I

    sub-int p2, v3, p2

    move v1, v6

    move v2, v1

    :goto_67
    iget v4, p0, La1/j;->h:I

    if-ge v1, v4, :cond_76

    aget-byte v4, v0, v1

    add-int v5, p2, v1

    aget-byte v5, p1, v5

    xor-int/2addr v4, v5

    or-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_67

    :cond_76
    if-nez v2, :cond_7f

    invoke-virtual {p0, v6}, La1/j;->f(Z)V

    iget p0, p0, La1/j;->h:I

    sub-int/2addr v3, p0

    return v3

    :cond_7f
    new-instance p0, Lorg/bouncycastle/crypto/x;

    const-string p1, "mac check in EAX failed"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_87
    new-instance p0, Lorg/bouncycastle/crypto/d0;

    invoke-direct {p0, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8d
    new-instance p0, Lorg/bouncycastle/crypto/x;

    const-string p1, "data too short"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final e(B[BI)I
    .registers 10

    iget-object v0, p0, La1/j;->d:Lz0/b;

    iget-object v1, p0, La1/j;->a:La1/w;

    iget v2, p0, La1/j;->c:I

    iget-object v3, p0, La1/j;->i:[B

    iget v4, p0, La1/j;->j:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, La1/j;->j:I

    aput-byte p1, v3, v4

    array-length p1, v3

    const/4 v4, 0x0

    if-ne v5, p1, :cond_48

    array-length p1, p2

    add-int v5, p3, v2

    if-lt p1, v5, :cond_40

    iget-boolean p1, p0, La1/j;->b:Z

    if-eqz p1, :cond_25

    invoke-virtual {v1, v4, p3, v3, p2}, La1/w;->b(II[B[B)I

    move-result p1

    invoke-virtual {v0, p2, p3, v2}, Lz0/b;->update([BII)V

    goto :goto_2e

    :cond_25
    invoke-virtual {v0, v3, v4, v2}, Lz0/b;->update([BII)V

    iget-object p1, p0, La1/j;->i:[B

    invoke-virtual {v1, v4, p3, p1, p2}, La1/w;->b(II[B[B)I

    move-result p1

    :goto_2e
    iput v4, p0, La1/j;->j:I

    iget-boolean p2, p0, La1/j;->b:Z

    if-nez p2, :cond_3f

    iget-object p2, p0, La1/j;->i:[B

    iget p3, p0, La1/j;->h:I

    invoke-static {p2, v2, p2, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p2, p0, La1/j;->h:I

    iput p2, p0, La1/j;->j:I

    :cond_3f
    return p1

    :cond_40
    new-instance p0, Lorg/bouncycastle/crypto/d0;

    const-string p1, "Output buffer is too short"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_48
    return v4
.end method

.method public final f(Z)V
    .registers 7

    iget-object v0, p0, La1/j;->a:La1/w;

    invoke-virtual {v0}, La1/w;->reset()V

    iget-object v0, p0, La1/j;->d:Lz0/b;

    invoke-virtual {v0}, Lz0/b;->reset()V

    const/4 v1, 0x0

    iput v1, p0, La1/j;->j:I

    iget-object v2, p0, La1/j;->i:[B

    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([BB)V

    if-eqz p1, :cond_19

    iget-object p1, p0, La1/j;->g:[B

    invoke-static {p1, v1}, Ljava/util/Arrays;->fill([BB)V

    :cond_19
    iget p1, p0, La1/j;->c:I

    new-array v2, p1, [B

    add-int/lit8 v3, p1, -0x1

    const/4 v4, 0x1

    aput-byte v4, v2, v3

    invoke-virtual {v0, v2, v1, p1}, Lz0/b;->update([BII)V

    iput-boolean v1, p0, La1/j;->k:Z

    iget-object p1, p0, La1/j;->l:[B

    if-eqz p1, :cond_2f

    array-length v0, p1

    invoke-virtual {p0, p1, v1, v0}, La1/j;->a([BII)V

    :cond_2f
    return-void
.end method

.method public final getAlgorithmName()Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, La1/j;->a:La1/w;

    iget-object p0, p0, Lorg/bouncycastle/crypto/n0;->g:Lorg/bouncycastle/crypto/d;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/d;->getAlgorithmName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/EAX"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getOutputSize(I)I
    .registers 3

    iget v0, p0, La1/j;->j:I

    add-int/2addr p1, v0

    iget-boolean v0, p0, La1/j;->b:Z

    iget p0, p0, La1/j;->h:I

    if-eqz v0, :cond_b

    add-int/2addr p1, p0

    return p1

    :cond_b
    if-ge p1, p0, :cond_f

    const/4 p0, 0x0

    return p0

    :cond_f
    sub-int/2addr p1, p0

    return p1
.end method

.method public final getUnderlyingCipher()Lorg/bouncycastle/crypto/d;
    .registers 1

    iget-object p0, p0, La1/j;->a:La1/w;

    iget-object p0, p0, Lorg/bouncycastle/crypto/n0;->g:Lorg/bouncycastle/crypto/d;

    return-object p0
.end method

.method public final getUpdateOutputSize(I)I
    .registers 3

    iget v0, p0, La1/j;->j:I

    add-int/2addr p1, v0

    iget-boolean v0, p0, La1/j;->b:Z

    if-nez v0, :cond_e

    iget v0, p0, La1/j;->h:I

    if-ge p1, v0, :cond_d

    const/4 p0, 0x0

    return p0

    :cond_d
    sub-int/2addr p1, v0

    :cond_e
    iget p0, p0, La1/j;->c:I

    rem-int p0, p1, p0

    sub-int/2addr p1, p0

    return p1
.end method

.method public final init(ZLorg/bouncycastle/crypto/g;)V
    .registers 9

    iget-object v0, p0, La1/j;->e:[B

    iget v1, p0, La1/j;->c:I

    iget-object v2, p0, La1/j;->d:Lz0/b;

    iput-boolean p1, p0, La1/j;->b:Z

    instance-of v3, p2, Le1/a;

    if-eqz v3, :cond_25

    check-cast p2, Le1/a;

    iget-object v3, p2, Le1/a;->d:[B

    invoke-static {v3}, Lm4/d;->e([B)[B

    move-result-object v3

    iget-object v4, p2, Le1/a;->c:[B

    invoke-static {v4}, Lm4/d;->e([B)[B

    move-result-object v4

    iput-object v4, p0, La1/j;->l:[B

    iget v4, p2, Le1/a;->x:I

    div-int/lit8 v4, v4, 0x8

    iput v4, p0, La1/j;->h:I

    iget-object p2, p2, Le1/a;->q:Le1/o0;

    goto :goto_38

    :cond_25
    instance-of v3, p2, Le1/s0;

    if-eqz v3, :cond_66

    check-cast p2, Le1/s0;

    iget-object v3, p2, Le1/s0;->c:[B

    const/4 v4, 0x0

    iput-object v4, p0, La1/j;->l:[B

    iget v4, v2, Lz0/b;->m:I

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, La1/j;->h:I

    iget-object p2, p2, Le1/s0;->d:Lorg/bouncycastle/crypto/g;

    :goto_38
    if-eqz p1, :cond_3c

    move p1, v1

    goto :goto_3f

    :cond_3c
    iget p1, p0, La1/j;->h:I

    add-int/2addr p1, v1

    :goto_3f
    new-array p1, p1, [B

    iput-object p1, p0, La1/j;->i:[B

    new-array p1, v1, [B

    invoke-virtual {v2, p2}, Lz0/b;->init(Lorg/bouncycastle/crypto/g;)V

    add-int/lit8 v4, v1, -0x1

    const/4 v5, 0x0

    aput-byte v5, p1, v4

    invoke-virtual {v2, p1, v5, v1}, Lz0/b;->update([BII)V

    array-length p1, v3

    invoke-virtual {v2, v3, v5, p1}, Lz0/b;->update([BII)V

    invoke-virtual {v2, v0, v5}, Lz0/b;->doFinal([BI)I

    iget-object p1, p0, La1/j;->a:La1/w;

    new-instance v1, Le1/s0;

    invoke-direct {v1, p2, v0}, Le1/s0;-><init>(Lorg/bouncycastle/crypto/g;[B)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2, v1}, La1/w;->init(ZLorg/bouncycastle/crypto/g;)V

    invoke-virtual {p0, p2}, La1/j;->f(Z)V

    return-void

    :cond_66
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid parameters passed to EAX"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final processByte(B[BI)I
    .registers 4

    invoke-virtual {p0}, La1/j;->d()V

    invoke-virtual {p0, p1, p2, p3}, La1/j;->e(B[BI)I

    move-result p0

    return p0
.end method

.method public final processBytes([BII[BI)I
    .registers 10

    invoke-virtual {p0}, La1/j;->d()V

    array-length v0, p1

    add-int v1, p2, p3

    if-lt v0, v1, :cond_2d

    const/4 v0, 0x0

    if-ne p1, p4, :cond_1b

    invoke-virtual {p0, p3}, La1/j;->getUpdateOutputSize(I)I

    move-result v1

    invoke-static {p2, p3, p5, v1}, Lm4/d;->J(IIII)Z

    move-result v1

    if-eqz v1, :cond_1b

    new-array p1, p3, [B

    invoke-static {p4, p2, p1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move p2, v0

    :cond_1b
    move v1, v0

    :goto_1c
    if-eq v0, p3, :cond_2c

    add-int v2, p2, v0

    aget-byte v2, p1, v2

    add-int v3, p5, v1

    invoke-virtual {p0, v2, p4, v3}, La1/j;->e(B[BI)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_2c
    return v1

    :cond_2d
    new-instance p0, Lorg/bouncycastle/crypto/q;

    const-string p1, "Input buffer too short"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
