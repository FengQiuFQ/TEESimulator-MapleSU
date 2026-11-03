.class public Lorg/bouncycastle/jce/provider/BrokenKDF2BytesGenerator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/t;


# instance fields
.field private digest:Lorg/bouncycastle/crypto/v;

.field private iv:[B

.field private shared:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/v;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/BrokenKDF2BytesGenerator;->digest:Lorg/bouncycastle/crypto/v;

    return-void
.end method


# virtual methods
.method public generateBytes([BII)I
    .registers 12

    array-length v0, p1

    sub-int/2addr v0, p3

    if-lt v0, p2, :cond_86

    int-to-long v0, p3

    const-wide/16 v2, 0x8

    mul-long/2addr v0, v2

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/BrokenKDF2BytesGenerator;->digest:Lorg/bouncycastle/crypto/v;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/v;->getDigestSize()I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0x400000000L

    mul-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_7e

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/BrokenKDF2BytesGenerator;->digest:Lorg/bouncycastle/crypto/v;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/v;->getDigestSize()I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/BrokenKDF2BytesGenerator;->digest:Lorg/bouncycastle/crypto/v;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/v;->getDigestSize()I

    move-result v1

    new-array v2, v1, [B

    const/4 v3, 0x1

    :goto_2b
    if-gt v3, v0, :cond_78

    iget-object v4, p0, Lorg/bouncycastle/jce/provider/BrokenKDF2BytesGenerator;->digest:Lorg/bouncycastle/crypto/v;

    iget-object v5, p0, Lorg/bouncycastle/jce/provider/BrokenKDF2BytesGenerator;->shared:[B

    array-length v6, v5

    const/4 v7, 0x0

    invoke-interface {v4, v5, v7, v6}, Lorg/bouncycastle/crypto/v;->update([BII)V

    iget-object v4, p0, Lorg/bouncycastle/jce/provider/BrokenKDF2BytesGenerator;->digest:Lorg/bouncycastle/crypto/v;

    and-int/lit16 v5, v3, 0xff

    int-to-byte v5, v5

    invoke-interface {v4, v5}, Lorg/bouncycastle/crypto/v;->update(B)V

    iget-object v4, p0, Lorg/bouncycastle/jce/provider/BrokenKDF2BytesGenerator;->digest:Lorg/bouncycastle/crypto/v;

    shr-int/lit8 v5, v3, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    invoke-interface {v4, v5}, Lorg/bouncycastle/crypto/v;->update(B)V

    iget-object v4, p0, Lorg/bouncycastle/jce/provider/BrokenKDF2BytesGenerator;->digest:Lorg/bouncycastle/crypto/v;

    shr-int/lit8 v5, v3, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    invoke-interface {v4, v5}, Lorg/bouncycastle/crypto/v;->update(B)V

    iget-object v4, p0, Lorg/bouncycastle/jce/provider/BrokenKDF2BytesGenerator;->digest:Lorg/bouncycastle/crypto/v;

    shr-int/lit8 v5, v3, 0x18

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    invoke-interface {v4, v5}, Lorg/bouncycastle/crypto/v;->update(B)V

    iget-object v4, p0, Lorg/bouncycastle/jce/provider/BrokenKDF2BytesGenerator;->digest:Lorg/bouncycastle/crypto/v;

    iget-object v5, p0, Lorg/bouncycastle/jce/provider/BrokenKDF2BytesGenerator;->iv:[B

    array-length v6, v5

    invoke-interface {v4, v5, v7, v6}, Lorg/bouncycastle/crypto/v;->update([BII)V

    iget-object v4, p0, Lorg/bouncycastle/jce/provider/BrokenKDF2BytesGenerator;->digest:Lorg/bouncycastle/crypto/v;

    invoke-interface {v4, v2, v7}, Lorg/bouncycastle/crypto/v;->doFinal([BI)I

    sub-int v4, p3, p2

    if-le v4, v1, :cond_72

    invoke-static {v2, v7, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v1

    goto :goto_75

    :cond_72
    invoke-static {v2, v7, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_75
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    :cond_78
    iget-object p0, p0, Lorg/bouncycastle/jce/provider/BrokenKDF2BytesGenerator;->digest:Lorg/bouncycastle/crypto/v;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/v;->reset()V

    return p3

    :cond_7e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Output length too large"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_86
    new-instance p0, Lorg/bouncycastle/crypto/d0;

    const-string p1, "output buffer too small"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDigest()Lorg/bouncycastle/crypto/v;
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/BrokenKDF2BytesGenerator;->digest:Lorg/bouncycastle/crypto/v;

    return-object p0
.end method

.method public init(Lorg/bouncycastle/crypto/u;)V
    .registers 3

    instance-of v0, p1, Le1/n0;

    if-eqz v0, :cond_f

    check-cast p1, Le1/n0;

    iget-object v0, p1, Le1/n0;->b:[B

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenKDF2BytesGenerator;->shared:[B

    iget-object p1, p1, Le1/n0;->a:[B

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/BrokenKDF2BytesGenerator;->iv:[B

    return-void

    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "KDF parameters required for generator"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
