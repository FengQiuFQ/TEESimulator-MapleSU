.class public final Lq0/a;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/t;
.implements Lorg/bouncycastle/crypto/b0;


# instance fields
.field public final g:I

.field public h:[B

.field public i:[B

.field public final j:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/v;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq0/a;->j:Ljava/lang/Object;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/v;->getDigestSize()I

    move-result p1

    iput p1, p0, Lq0/a;->g:I

    return-void
.end method

.method public constructor <init>(Ls0/o;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    new-array v1, v0, [B

    iput-object v1, p0, Lq0/a;->h:[B

    new-array v0, v0, [B

    iput-object v0, p0, Lq0/a;->i:[B

    iput-object p1, p0, Lq0/a;->j:Ljava/lang/Object;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/v;->getDigestSize()I

    move-result p1

    iput p1, p0, Lq0/a;->g:I

    return-void
.end method

.method public static a(I[B)V
    .registers 4

    ushr-int/lit8 v0, p0, 0x18

    int-to-byte v0, v0

    const/4 v1, 0x0

    aput-byte v0, p1, v1

    ushr-int/lit8 v0, p0, 0x10

    int-to-byte v0, v0

    const/4 v1, 0x1

    aput-byte v0, p1, v1

    ushr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    const/4 v1, 0x2

    aput-byte v0, p1, v1

    const/4 v0, 0x3

    int-to-byte p0, p0

    aput-byte p0, p1, v0

    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .registers 8

    iget p2, p0, Lq0/a;->g:I

    new-array v0, p2, [B

    iget-object v1, p0, Lq0/a;->j:Ljava/lang/Object;

    check-cast v1, Ls0/o;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/bouncycastle/crypto/v;->doFinal([BI)I

    iget-object v3, p0, Lq0/a;->i:[B

    array-length v4, v3

    invoke-virtual {v1, v3, v2, v4}, Ls0/o;->update([BII)V

    invoke-virtual {v1, v0, v2, p2}, Ls0/o;->update([BII)V

    invoke-interface {v1, p1, v2}, Lorg/bouncycastle/crypto/v;->doFinal([BI)I

    move-result p1

    invoke-virtual {p0}, Lq0/a;->reset()V

    return p1
.end method

.method public generateBytes([BII)I
    .registers 13

    if-lez p3, :cond_5f

    array-length p2, p1

    sub-int/2addr p2, p3

    if-ltz p2, :cond_57

    iget p2, p0, Lq0/a;->g:I

    new-array v0, p2, [B

    const/4 v1, 0x4

    new-array v2, v1, [B

    iget-object v3, p0, Lq0/a;->j:Ljava/lang/Object;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/v;->reset()V

    const/4 v4, 0x1

    const/4 v5, 0x0

    move v6, v5

    if-le p3, p2, :cond_3a

    :goto_17
    invoke-static {v4, v2}, Lq0/a;->a(I[B)V

    invoke-interface {v3, v2, v5, v1}, Lorg/bouncycastle/crypto/v;->update([BII)V

    iget-object v7, p0, Lq0/a;->h:[B

    array-length v8, v7

    invoke-interface {v3, v7, v5, v8}, Lorg/bouncycastle/crypto/v;->update([BII)V

    iget-object v7, p0, Lq0/a;->i:[B

    array-length v8, v7

    invoke-interface {v3, v7, v5, v8}, Lorg/bouncycastle/crypto/v;->update([BII)V

    invoke-interface {v3, v0, v5}, Lorg/bouncycastle/crypto/v;->doFinal([BI)I

    invoke-static {v0, v5, p1, v6, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v6, p2

    add-int/lit8 v7, v4, 0x1

    div-int v8, p3, p2

    if-lt v4, v8, :cond_38

    move v4, v7

    goto :goto_3a

    :cond_38
    move v4, v7

    goto :goto_17

    :cond_3a
    :goto_3a
    if-ge v6, p3, :cond_56

    invoke-static {v4, v2}, Lq0/a;->a(I[B)V

    invoke-interface {v3, v2, v5, v1}, Lorg/bouncycastle/crypto/v;->update([BII)V

    iget-object p2, p0, Lq0/a;->h:[B

    array-length v1, p2

    invoke-interface {v3, p2, v5, v1}, Lorg/bouncycastle/crypto/v;->update([BII)V

    iget-object p0, p0, Lq0/a;->i:[B

    array-length p2, p0

    invoke-interface {v3, p0, v5, p2}, Lorg/bouncycastle/crypto/v;->update([BII)V

    invoke-interface {v3, v0, v5}, Lorg/bouncycastle/crypto/v;->doFinal([BI)I

    sub-int p0, p3, v6

    invoke-static {v0, v5, p1, v6, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_56
    return p3

    :cond_57
    new-instance p0, Lorg/bouncycastle/crypto/d0;

    const-string p1, "output buffer too small"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "len must be > 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lq0/a;->j:Ljava/lang/Object;

    check-cast p0, Ls0/o;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/v;->getAlgorithmName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/HMAC"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMacSize()I
    .registers 1

    iget p0, p0, Lq0/a;->g:I

    return p0
.end method

.method public init(Lorg/bouncycastle/crypto/g;)V
    .registers 7

    iget-object v0, p0, Lq0/a;->h:[B

    iget-object v1, p0, Lq0/a;->j:Ljava/lang/Object;

    check-cast v1, Ls0/o;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/v;->reset()V

    check-cast p1, Le1/o0;

    iget-object p1, p1, Le1/o0;->c:[B

    array-length v2, p1

    const/16 v3, 0x40

    const/4 v4, 0x0

    if-le v2, v3, :cond_24

    array-length v2, p1

    invoke-virtual {v1, p1, v4, v2}, Ls0/o;->update([BII)V

    invoke-interface {v1, v0, v4}, Lorg/bouncycastle/crypto/v;->doFinal([BI)I

    iget p1, p0, Lq0/a;->g:I

    :goto_1c
    array-length v2, v0

    if-ge p1, v2, :cond_31

    aput-byte v4, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1c

    :cond_24
    array-length v2, p1

    invoke-static {p1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p1

    :goto_29
    array-length v2, v0

    if-ge p1, v2, :cond_31

    aput-byte v4, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_29

    :cond_31
    array-length p1, v0

    new-array p1, p1, [B

    iput-object p1, p0, Lq0/a;->i:[B

    array-length v2, v0

    invoke-static {v0, v4, p1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move p1, v4

    :goto_3b
    array-length v2, v0

    if-ge p1, v2, :cond_48

    aget-byte v2, v0, p1

    xor-int/lit8 v2, v2, 0x36

    int-to-byte v2, v2

    aput-byte v2, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_3b

    :cond_48
    move p1, v4

    :goto_49
    iget-object v2, p0, Lq0/a;->i:[B

    array-length v3, v2

    if-ge p1, v3, :cond_58

    aget-byte v3, v2, p1

    xor-int/lit8 v3, v3, 0x5c

    int-to-byte v3, v3

    aput-byte v3, v2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_49

    :cond_58
    array-length p0, v0

    invoke-virtual {v1, v0, v4, p0}, Ls0/o;->update([BII)V

    return-void
.end method

.method public init(Lorg/bouncycastle/crypto/u;)V
    .registers 3

    instance-of v0, p1, Le1/n0;

    if-eqz v0, :cond_f

    check-cast p1, Le1/n0;

    iget-object v0, p1, Le1/n0;->b:[B

    iput-object v0, p0, Lq0/a;->h:[B

    iget-object p1, p1, Le1/n0;->a:[B

    iput-object p1, p0, Lq0/a;->i:[B

    return-void

    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "KDF parameters required for generator"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public reset()V
    .registers 4

    iget-object v0, p0, Lq0/a;->j:Ljava/lang/Object;

    check-cast v0, Ls0/o;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/v;->reset()V

    iget-object p0, p0, Lq0/a;->h:[B

    const/4 v1, 0x0

    array-length v2, p0

    invoke-virtual {v0, p0, v1, v2}, Ls0/o;->update([BII)V

    return-void
.end method

.method public update(B)V
    .registers 2

    iget-object p0, p0, Lq0/a;->j:Ljava/lang/Object;

    check-cast p0, Ls0/o;

    invoke-virtual {p0, p1}, Ls0/o;->update(B)V

    return-void
.end method

.method public update([BII)V
    .registers 4

    iget-object p0, p0, Lq0/a;->j:Ljava/lang/Object;

    check-cast p0, Ls0/o;

    invoke-virtual {p0, p1, p2, p3}, Ls0/o;->update([BII)V

    return-void
.end method
