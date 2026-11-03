.class public final Li1/g;
.super Ljava/lang/Object;

# interfaces
.implements Li1/b;


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ls0/g0;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ls0/g0;-><init>(I)V

    iput-object v0, p0, Li1/g;->a:Ljava/lang/Object;

    new-instance v0, Ls0/g0;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ls0/g0;-><init>(I)V

    iput-object v0, p0, Li1/g;->d:Ljava/lang/Object;

    new-instance v0, Ls0/d0;

    invoke-direct {v0, v1}, Ls0/d0;-><init>(I)V

    iput-object v0, p0, Li1/g;->c:Ljava/lang/Object;

    new-instance v0, Ls0/d0;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ls0/d0;-><init>(I)V

    iput-object v0, p0, Li1/g;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Li1/g;->b:Ljava/lang/Object;

    iput-object v0, p0, Li1/g;->c:Ljava/lang/Object;

    iput-object v0, p0, Li1/g;->d:Ljava/lang/Object;

    iput-object p1, p0, Li1/g;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/v;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lz0/d;

    invoke-direct {v0, p1}, Lz0/d;-><init>(Lorg/bouncycastle/crypto/v;)V

    iput-object v0, p0, Li1/g;->a:Ljava/lang/Object;

    iget p1, v0, Lz0/d;->h:I

    new-array v0, p1, [B

    iput-object v0, p0, Li1/g;->c:Ljava/lang/Object;

    new-array p1, p1, [B

    iput-object p1, p0, Li1/g;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lv3/m;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1b

    iput-object p1, p0, Li1/g;->a:Ljava/lang/Object;

    iget v0, p1, Lv3/m;->a:I

    new-instance v1, Lorg/bouncycastle/crypto/z;

    iget-object p1, p1, Lv3/m;->d:Lm/q;

    invoke-direct {v1, v0, p1}, Lorg/bouncycastle/crypto/z;-><init>(ILm/q;)V

    iput-object v1, p0, Li1/g;->d:Ljava/lang/Object;

    new-array p1, v0, [B

    iput-object p1, p0, Li1/g;->b:Ljava/lang/Object;

    new-array p1, v0, [B

    iput-object p1, p0, Li1/g;->c:Ljava/lang/Object;

    return-void

    :cond_1b
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "params == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a()Ljava/math/BigInteger;
    .registers 11

    iget-object v0, p0, Li1/g;->b:Ljava/lang/Object;

    check-cast v0, [B

    iget-object v1, p0, Li1/g;->c:Ljava/lang/Object;

    check-cast v1, [B

    iget-object v2, p0, Li1/g;->a:Ljava/lang/Object;

    check-cast v2, Lz0/d;

    iget-object v3, p0, Li1/g;->d:Ljava/lang/Object;

    check-cast v3, Ljava/math/BigInteger;

    invoke-static {v3}, Lm4/a;->g(Ljava/math/BigInteger;)I

    move-result v3

    new-array v4, v3, [B

    :goto_16
    const/4 v5, 0x0

    move v6, v5

    :goto_18
    if-ge v6, v3, :cond_2d

    array-length v7, v1

    invoke-virtual {v2, v1, v5, v7}, Lz0/d;->update([BII)V

    invoke-virtual {v2, v1, v5}, Lz0/d;->doFinal([BI)I

    sub-int v7, v3, v6

    array-length v8, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v1, v5, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v6, v7

    goto :goto_18

    :cond_2d
    mul-int/lit8 v6, v3, 0x8

    iget-object v7, p0, Li1/g;->d:Ljava/lang/Object;

    check-cast v7, Ljava/math/BigInteger;

    invoke-virtual {v7}, Ljava/math/BigInteger;->bitLength()I

    move-result v7

    sget-object v8, Lm4/a;->a:Ljava/math/BigInteger;

    new-instance v8, Ljava/math/BigInteger;

    const/4 v9, 0x1

    invoke-direct {v8, v9, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    if-le v6, v7, :cond_46

    sub-int/2addr v6, v7

    invoke-virtual {v8, v6}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v8

    :cond_46
    invoke-virtual {v8}, Ljava/math/BigInteger;->signum()I

    move-result v6

    if-lez v6, :cond_57

    iget-object v6, p0, Li1/g;->d:Ljava/lang/Object;

    check-cast v6, Ljava/math/BigInteger;

    invoke-virtual {v8, v6}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v6

    if-gez v6, :cond_57

    return-object v8

    :cond_57
    array-length v6, v1

    invoke-virtual {v2, v1, v5, v6}, Lz0/d;->update([BII)V

    invoke-virtual {v2, v5}, Lz0/d;->update(B)V

    invoke-virtual {v2, v0, v5}, Lz0/d;->doFinal([BI)I

    new-instance v6, Le1/o0;

    invoke-direct {v6, v0}, Le1/o0;-><init>([B)V

    invoke-virtual {v2, v6}, Lz0/d;->init(Lorg/bouncycastle/crypto/g;)V

    array-length v6, v1

    invoke-virtual {v2, v1, v5, v6}, Lz0/d;->update([BII)V

    invoke-virtual {v2, v1, v5}, Lz0/d;->doFinal([BI)I

    goto :goto_16
.end method

.method public b(Ljava/math/BigInteger;Ljava/security/SecureRandom;)V
    .registers 3

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Operation not supported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public c()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public d(Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .registers 10

    iget-object v0, p0, Li1/g;->b:Ljava/lang/Object;

    check-cast v0, [B

    iget-object v1, p0, Li1/g;->c:Ljava/lang/Object;

    check-cast v1, [B

    iget-object v2, p0, Li1/g;->a:Ljava/lang/Object;

    check-cast v2, Lz0/d;

    iput-object p1, p0, Li1/g;->d:Ljava/lang/Object;

    array-length p0, p3

    mul-int/lit8 p0, p0, 0x8

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    sget-object v4, Lm4/a;->a:Ljava/math/BigInteger;

    new-instance v4, Ljava/math/BigInteger;

    const/4 v5, 0x1

    invoke-direct {v4, v5, p3}, Ljava/math/BigInteger;-><init>(I[B)V

    if-le p0, v3, :cond_24

    sub-int/2addr p0, v3

    invoke-virtual {v4, p0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v4

    :cond_24
    invoke-virtual {v4, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-ltz p0, :cond_2e

    invoke-virtual {v4, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    :cond_2e
    invoke-static {p1}, Lm4/a;->g(Ljava/math/BigInteger;)I

    move-result p0

    invoke-static {p0, p2}, Lm4/a;->a(ILjava/math/BigInteger;)[B

    move-result-object p1

    invoke-static {p0, v4}, Lm4/a;->a(ILjava/math/BigInteger;)[B

    move-result-object p0

    const/4 p2, 0x0

    invoke-static {v0, p2}, Ljava/util/Arrays;->fill([BB)V

    invoke-static {v1, v5}, Ljava/util/Arrays;->fill([BB)V

    new-instance p3, Le1/o0;

    invoke-direct {p3, v0}, Le1/o0;-><init>([B)V

    invoke-virtual {v2, p3}, Lz0/d;->init(Lorg/bouncycastle/crypto/g;)V

    array-length p3, v1

    invoke-virtual {v2, v1, p2, p3}, Lz0/d;->update([BII)V

    invoke-virtual {v2, p2}, Lz0/d;->update(B)V

    array-length p3, p1

    invoke-virtual {v2, p1, p2, p3}, Lz0/d;->update([BII)V

    array-length p3, p0

    invoke-virtual {v2, p0, p2, p3}, Lz0/d;->update([BII)V

    invoke-virtual {v2, v0, p2}, Lz0/d;->doFinal([BI)I

    new-instance p3, Le1/o0;

    array-length v3, v0

    invoke-direct {p3, v0, p2, v3}, Le1/o0;-><init>([BII)V

    invoke-virtual {v2, p3}, Lz0/d;->init(Lorg/bouncycastle/crypto/g;)V

    array-length p3, v1

    invoke-virtual {v2, v1, p2, p3}, Lz0/d;->update([BII)V

    invoke-virtual {v2, v1, p2}, Lz0/d;->doFinal([BI)I

    array-length p3, v1

    invoke-virtual {v2, v1, p2, p3}, Lz0/d;->update([BII)V

    invoke-virtual {v2, v5}, Lz0/d;->update(B)V

    array-length p3, p1

    invoke-virtual {v2, p1, p2, p3}, Lz0/d;->update([BII)V

    array-length p1, p0

    invoke-virtual {v2, p0, p2, p1}, Lz0/d;->update([BII)V

    invoke-virtual {v2, v0, p2}, Lz0/d;->doFinal([BI)I

    new-instance p0, Le1/o0;

    array-length p1, v0

    invoke-direct {p0, v0, p2, p1}, Le1/o0;-><init>([BII)V

    invoke-virtual {v2, p0}, Lz0/d;->init(Lorg/bouncycastle/crypto/g;)V

    array-length p0, v1

    invoke-virtual {v2, v1, p2, p0}, Lz0/d;->update([BII)V

    invoke-virtual {v2, v1, p2}, Lz0/d;->doFinal([BI)I

    return-void
.end method

.method public e([BILv3/k;)[B
    .registers 11

    iget-object v0, p0, Li1/g;->d:Ljava/lang/Object;

    check-cast v0, Lorg/bouncycastle/crypto/z;

    iget-object v1, p0, Li1/g;->a:Ljava/lang/Object;

    check-cast v1, Lv3/m;

    iget v2, v1, Lv3/m;->a:I

    array-length v3, p1

    if-ne v3, v2, :cond_ad

    invoke-virtual {p3}, Lv3/k;->a()[B

    iget v1, v1, Lv3/m;->b:I

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    if-gt p2, v1, :cond_a5

    if-nez p2, :cond_19

    return-object p1

    :cond_19
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p0, p1, v1, p3}, Li1/g;->e([BILv3/k;)[B

    move-result-object p1

    new-instance v1, Lv3/i;

    const/4 v4, 0x1

    invoke-direct {v1, v4}, Lv3/i;-><init>(I)V

    iget v4, p3, Lv3/n;->a:I

    iput v4, v1, Lv3/n;->c:I

    iget-wide v4, p3, Lv3/n;->b:J

    iput-wide v4, v1, Lv3/n;->b:J

    iget v4, p3, Lv3/k;->e:I

    iput v4, v1, Lv3/i;->e:I

    iget p3, p3, Lv3/k;->f:I

    iput p3, v1, Lv3/i;->f:I

    sub-int/2addr p2, v3

    iput p2, v1, Lv3/i;->g:I

    const/4 p2, 0x0

    iput p2, v1, Lv3/n;->d:I

    new-instance p3, Lv3/k;

    invoke-direct {p3, v1}, Lv3/k;-><init>(Lv3/i;)V

    iget-object v1, p0, Li1/g;->c:Ljava/lang/Object;

    check-cast v1, [B

    invoke-virtual {p3}, Lv3/k;->a()[B

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lorg/bouncycastle/crypto/z;->a([B[B)[B

    move-result-object v1

    new-instance v4, Lv3/i;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lv3/i;-><init>(I)V

    iget v5, p3, Lv3/n;->a:I

    iput v5, v4, Lv3/n;->c:I

    iget-wide v5, p3, Lv3/n;->b:J

    iput-wide v5, v4, Lv3/n;->b:J

    iget v5, p3, Lv3/k;->e:I

    iput v5, v4, Lv3/i;->e:I

    iget v5, p3, Lv3/k;->f:I

    iput v5, v4, Lv3/i;->f:I

    iget p3, p3, Lv3/k;->g:I

    iput p3, v4, Lv3/i;->g:I

    iput v3, v4, Lv3/n;->d:I

    new-instance p3, Lv3/k;

    invoke-direct {p3, v4}, Lv3/k;-><init>(Lv3/i;)V

    iget-object p0, p0, Li1/g;->c:Ljava/lang/Object;

    check-cast p0, [B

    invoke-virtual {p3}, Lv3/k;->a()[B

    move-result-object p3

    invoke-virtual {v0, p0, p3}, Lorg/bouncycastle/crypto/z;->a([B[B)[B

    move-result-object p0

    new-array p3, v2, [B

    move v3, p2

    :goto_7c
    if-ge v3, v2, :cond_89

    aget-byte v4, p1, v3

    aget-byte v5, p0, v3

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p3, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_7c

    :cond_89
    array-length p0, v1

    iget p1, v0, Lorg/bouncycastle/crypto/z;->g:I

    if-ne p0, p1, :cond_9d

    if-ne v2, p1, :cond_95

    invoke-virtual {v0, v1, p2, p3}, Lorg/bouncycastle/crypto/z;->b([BI[B)[B

    move-result-object p0

    return-object p0

    :cond_95
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "wrong in length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "wrong key length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "max chain length must not be greater than w"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_ad
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "startHash needs to be "

    const-string p2, "bytes"

    invoke-static {p1, p2, v2}, Lb/b;->g(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public f(Lv3/k;)Lb1/a;
    .registers 10

    iget-object v0, p0, Li1/g;->a:Ljava/lang/Object;

    check-cast v0, Lv3/m;

    iget v1, v0, Lv3/m;->c:I

    new-array v1, v1, [[B

    const/4 v2, 0x0

    :goto_9
    iget v3, v0, Lv3/m;->c:I

    if-ge v2, v3, :cond_5a

    new-instance v4, Lv3/i;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lv3/i;-><init>(I)V

    iget v5, p1, Lv3/n;->a:I

    iput v5, v4, Lv3/n;->c:I

    iget-wide v5, p1, Lv3/n;->b:J

    iput-wide v5, v4, Lv3/n;->b:J

    iget v5, p1, Lv3/k;->e:I

    iput v5, v4, Lv3/i;->e:I

    iput v2, v4, Lv3/i;->f:I

    iget v5, p1, Lv3/k;->g:I

    iput v5, v4, Lv3/i;->g:I

    iget p1, p1, Lv3/n;->d:I

    iput p1, v4, Lv3/n;->d:I

    new-instance p1, Lv3/k;

    invoke-direct {p1, v4}, Lv3/k;-><init>(Lv3/i;)V

    if-ltz v2, :cond_52

    if-ge v2, v3, :cond_52

    iget-object v3, p0, Li1/g;->d:Ljava/lang/Object;

    check-cast v3, Lorg/bouncycastle/crypto/z;

    iget-object v4, p0, Li1/g;->b:Ljava/lang/Object;

    check-cast v4, [B

    int-to-long v5, v2

    const/16 v7, 0x20

    invoke-static {v7, v5, v6}, Ls2/b;->W(IJ)[B

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/bouncycastle/crypto/z;->a([B[B)[B

    move-result-object v3

    iget v4, v0, Lv3/m;->b:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4, p1}, Li1/g;->e([BILv3/k;)[B

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_52
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "index out of bounds"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5a
    new-instance p0, Lb1/a;

    invoke-direct {p0, v0, v1}, Lb1/a;-><init>(Lv3/m;[[B)V

    return-object p0
.end method

.method public g([BLv3/k;)[B
    .registers 6

    new-instance v0, Lv3/i;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lv3/i;-><init>(I)V

    iget v1, p2, Lv3/n;->a:I

    iput v1, v0, Lv3/n;->c:I

    iget-wide v1, p2, Lv3/n;->b:J

    iput-wide v1, v0, Lv3/n;->b:J

    iget p2, p2, Lv3/k;->e:I

    iput p2, v0, Lv3/i;->e:I

    new-instance p2, Lv3/k;

    invoke-direct {p2, v0}, Lv3/k;-><init>(Lv3/i;)V

    iget-object p0, p0, Li1/g;->d:Ljava/lang/Object;

    check-cast p0, Lorg/bouncycastle/crypto/z;

    invoke-virtual {p2}, Lv3/k;->a()[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/crypto/z;->a([B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public h([B[B)V
    .registers 5

    array-length v0, p1

    iget-object v1, p0, Li1/g;->a:Ljava/lang/Object;

    check-cast v1, Lv3/m;

    iget v1, v1, Lv3/m;->a:I

    if-ne v0, v1, :cond_23

    if-eqz p2, :cond_1b

    array-length v0, p2

    if-ne v0, v1, :cond_13

    iput-object p1, p0, Li1/g;->b:Ljava/lang/Object;

    iput-object p2, p0, Li1/g;->c:Ljava/lang/Object;

    return-void

    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "size of publicSeed needs to be equal to size of digest"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1b
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "publicSeed == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_23
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "size of secretKeySeed needs to be equal to size of digest"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public i([BBB)V
    .registers 7

    iget-object p0, p0, Li1/g;->a:Ljava/lang/Object;

    check-cast p0, Ls0/g0;

    invoke-virtual {p0}, Ls0/n;->reset()V

    array-length v0, p1

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p1

    aput-byte p2, v0, v1

    array-length p2, p1

    add-int/lit8 p2, p2, 0x1

    aput-byte p3, v0, p2

    array-length p1, p1

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, v0, v2, p1}, Ls0/n;->f([BII)V

    return-void
.end method
