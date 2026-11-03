.class public final Li1/n;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/m0;


# instance fields
.field public g:Lorg/bouncycastle/crypto/v;

.field public h:Lorg/bouncycastle/crypto/a;

.field public i:Le1/z0;

.field public j:I

.field public k:[B


# virtual methods
.method public final a([B)Z
    .registers 6

    iget v0, p0, Li1/n;->j:I

    const/4 v1, 0x0

    :try_start_3
    iget-object v2, p0, Li1/n;->h:Lorg/bouncycastle/crypto/a;

    array-length v3, p1

    invoke-interface {v2, p1, v1, v3}, Lorg/bouncycastle/crypto/a;->processBlock([BII)[B

    move-result-object p1

    iput-object p1, p0, Li1/n;->k:[B
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_c} :catch_67

    new-instance p1, Ljava/math/BigInteger;

    iget-object v2, p0, Li1/n;->k:[B

    const/4 v3, 0x1

    invoke-direct {p1, v3, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    and-int/lit8 v2, v2, 0xf

    const/16 v3, 0xc

    if-ne v2, v3, :cond_1f

    goto :goto_2f

    :cond_1f
    iget-object v2, p0, Li1/n;->i:Le1/z0;

    iget-object v2, v2, Le1/z0;->d:Ljava/math/BigInteger;

    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    and-int/lit8 v2, v2, 0xf

    if-ne v2, v3, :cond_67

    :goto_2f
    invoke-virtual {p0, v0}, Li1/n;->c(I)V

    iget-object v2, p0, Li1/n;->k:[B

    array-length v2, v2

    invoke-static {v2, p1}, Lm4/a;->a(ILjava/math/BigInteger;)[B

    move-result-object p1

    iget-object v2, p0, Li1/n;->k:[B

    invoke-static {v2, p1}, Lm4/d;->o([B[B)Z

    move-result v2

    const/16 v3, 0x3acc

    if-ne v0, v3, :cond_52

    if-nez v2, :cond_52

    iget-object v0, p0, Li1/n;->k:[B

    array-length v2, v0

    add-int/lit8 v2, v2, -0x2

    const/16 v3, 0x40

    aput-byte v3, v0, v2

    invoke-static {v0, p1}, Lm4/d;->o([B[B)Z

    move-result v2

    :cond_52
    iget-object p0, p0, Li1/n;->k:[B

    move v0, v1

    :goto_55
    array-length v3, p0

    if-eq v0, v3, :cond_5d

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_55

    :cond_5d
    move p0, v1

    :goto_5e
    array-length v0, p1

    if-eq p0, v0, :cond_66

    aput-byte v1, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_5e

    :cond_66
    return v2

    :catch_67
    :cond_67
    return v1
.end method

.method public final b()[B
    .registers 6

    iget v0, p0, Li1/n;->j:I

    invoke-virtual {p0, v0}, Li1/n;->c(I)V

    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Li1/n;->h:Lorg/bouncycastle/crypto/a;

    iget-object v2, p0, Li1/n;->k:[B

    array-length v3, v2

    const/4 v4, 0x0

    invoke-interface {v1, v2, v4, v3}, Lorg/bouncycastle/crypto/a;->processBlock([BII)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    iget-object v1, p0, Li1/n;->k:[B

    move v2, v4

    :goto_18
    array-length v3, v1

    if-eq v2, v3, :cond_20

    aput-byte v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_20
    iget-object v1, p0, Li1/n;->i:Le1/z0;

    iget-object v1, v1, Le1/z0;->d:Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->min(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iget-object p0, p0, Li1/n;->i:Le1/z0;

    iget-object p0, p0, Le1/z0;->d:Ljava/math/BigInteger;

    invoke-static {p0}, Lm4/a;->g(Ljava/math/BigInteger;)I

    move-result p0

    invoke-static {p0, v0}, Lm4/a;->a(ILjava/math/BigInteger;)[B

    move-result-object p0

    return-object p0
.end method

.method public final c(I)V
    .registers 6

    iget-object v0, p0, Li1/n;->g:Lorg/bouncycastle/crypto/v;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/v;->getDigestSize()I

    move-result v1

    const/16 v2, 0xbc

    if-ne p1, v2, :cond_1d

    iget-object p1, p0, Li1/n;->k:[B

    array-length v2, p1

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, p1, v2}, Lorg/bouncycastle/crypto/v;->doFinal([BI)I

    iget-object p1, p0, Li1/n;->k:[B

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    const/16 v1, -0x44

    aput-byte v1, p1, v0

    goto :goto_37

    :cond_1d
    iget-object v2, p0, Li1/n;->k:[B

    array-length v3, v2

    sub-int/2addr v3, v1

    add-int/lit8 v1, v3, -0x2

    invoke-interface {v0, v2, v1}, Lorg/bouncycastle/crypto/v;->doFinal([BI)I

    iget-object v0, p0, Li1/n;->k:[B

    array-length v2, v0

    add-int/lit8 v2, v2, -0x2

    ushr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    move v2, v1

    :goto_37
    iget-object p1, p0, Li1/n;->k:[B

    const/4 v0, 0x0

    const/16 v1, 0x6b

    aput-byte v1, p1, v0

    add-int/lit8 p1, v2, -0x2

    :goto_40
    if-eqz p1, :cond_4b

    iget-object v0, p0, Li1/n;->k:[B

    const/16 v1, -0x45

    aput-byte v1, v0, p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_40

    :cond_4b
    iget-object p0, p0, Li1/n;->k:[B

    add-int/lit8 v2, v2, -0x1

    const/16 p1, -0x46

    aput-byte p1, p0, v2

    return-void
.end method

.method public final init(ZLorg/bouncycastle/crypto/g;)V
    .registers 4

    check-cast p2, Le1/z0;

    iput-object p2, p0, Li1/n;->i:Le1/z0;

    iget-object v0, p0, Li1/n;->h:Lorg/bouncycastle/crypto/a;

    invoke-interface {v0, p1, p2}, Lorg/bouncycastle/crypto/a;->init(ZLorg/bouncycastle/crypto/g;)V

    iget-object p1, p0, Li1/n;->i:Le1/z0;

    iget-object p1, p1, Le1/z0;->d:Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    add-int/lit8 p1, p1, 0x7

    div-int/lit8 p1, p1, 0x8

    new-array p1, p1, [B

    iput-object p1, p0, Li1/n;->k:[B

    iget-object p0, p0, Li1/n;->g:Lorg/bouncycastle/crypto/v;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/v;->reset()V

    return-void
.end method

.method public final update(B)V
    .registers 2

    iget-object p0, p0, Li1/n;->g:Lorg/bouncycastle/crypto/v;

    invoke-interface {p0, p1}, Lorg/bouncycastle/crypto/v;->update(B)V

    return-void
.end method

.method public final update([BII)V
    .registers 4

    iget-object p0, p0, Li1/n;->g:Lorg/bouncycastle/crypto/v;

    invoke-interface {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/v;->update([BII)V

    return-void
.end method
