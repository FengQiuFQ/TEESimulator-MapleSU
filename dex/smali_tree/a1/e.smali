.class public final La1/e;
.super Ljava/lang/Object;

# interfaces
.implements La1/f;


# instance fields
.field public a:Lorg/bouncycastle/crypto/d;

.field public b:I

.field public c:Z

.field public d:[B

.field public e:[B

.field public f:I

.field public g:Lorg/bouncycastle/crypto/g;

.field public h:[B

.field public i:La1/d;

.field public j:La1/d;


# direct methods
.method public static d(IZ)I
    .registers 2

    if-eqz p1, :cond_17

    const/16 p1, 0x20

    if-lt p0, p1, :cond_f

    const/16 p1, 0x80

    if-gt p0, p1, :cond_f

    and-int/lit8 p1, p0, 0xf

    if-nez p1, :cond_f

    goto :goto_17

    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "tag length in octets must be one of {4,6,8,10,12,14,16}"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_17
    :goto_17
    ushr-int/lit8 p0, p0, 0x3

    return p0
.end method

.method public static e(Lorg/bouncycastle/crypto/d;)La1/e;
    .registers 5

    new-instance v0, La1/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, La1/d;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, La1/d;-><init>(BI)V

    iput-object v1, v0, La1/e;->i:La1/d;

    new-instance v1, La1/d;

    invoke-direct {v1, v3, v2}, La1/d;-><init>(BI)V

    iput-object v1, v0, La1/e;->j:La1/d;

    iput-object p0, v0, La1/e;->a:Lorg/bouncycastle/crypto/d;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/d;->c()I

    move-result p0

    iput p0, v0, La1/e;->b:I

    new-array v1, p0, [B

    iput-object v1, v0, La1/e;->h:[B

    const/16 v1, 0x10

    if-ne p0, v1, :cond_26

    return-object v0

    :cond_26
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "cipher required with a block size of 16."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a([BII)V
    .registers 4

    iget-object p0, p0, La1/e;->i:La1/d;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method public final b()[B
    .registers 4

    iget v0, p0, La1/e;->f:I

    new-array v1, v0, [B

    iget-object p0, p0, La1/e;->h:[B

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public final c(II[B[B)V
    .registers 16

    iget-object v0, p0, La1/e;->i:La1/d;

    new-instance v1, Lz0/a;

    iget-object v2, p0, La1/e;->a:Lorg/bouncycastle/crypto/d;

    iget v3, p0, La1/e;->f:I

    mul-int/lit8 v3, v3, 0x8

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lz0/a;-><init>(Lorg/bouncycastle/crypto/d;ILa3/e;)V

    iget-object v2, p0, La1/e;->g:Lorg/bouncycastle/crypto/g;

    invoke-virtual {v1, v2}, Lz0/a;->init(Lorg/bouncycastle/crypto/g;)V

    const/16 v2, 0x10

    new-array v3, v2, [B

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    iget-object v5, p0, La1/e;->e:[B

    const/4 v6, 0x0

    if-nez v5, :cond_22

    move v5, v6

    goto :goto_23

    :cond_22
    array-length v5, v5

    :goto_23
    add-int/2addr v4, v5

    if-lez v4, :cond_2d

    aget-byte v4, v3, v6

    or-int/lit8 v4, v4, 0x40

    int-to-byte v4, v4

    aput-byte v4, v3, v6

    :cond_2d
    aget-byte v4, v3, v6

    iget v5, v1, Lz0/a;->l:I

    const/4 v7, 0x2

    sub-int/2addr v5, v7

    div-int/2addr v5, v7

    and-int/lit8 v5, v5, 0x7

    shl-int/lit8 v5, v5, 0x3

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v6

    iget-object v5, p0, La1/e;->d:[B

    array-length v8, v5

    rsub-int/lit8 v8, v8, 0xe

    and-int/lit8 v8, v8, 0x7

    or-int/2addr v4, v8

    int-to-byte v4, v4

    aput-byte v4, v3, v6

    array-length v4, v5

    const/4 v8, 0x1

    invoke-static {v5, v6, v3, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v4, p2

    move v5, v8

    :goto_4e
    if-lez v4, :cond_5b

    rsub-int/lit8 v9, v5, 0x10

    and-int/lit16 v10, v4, 0xff

    int-to-byte v10, v10

    aput-byte v10, v3, v9

    ushr-int/lit8 v4, v4, 0x8

    add-int/2addr v5, v8

    goto :goto_4e

    :cond_5b
    invoke-virtual {v1, v3, v6, v2}, Lz0/a;->update([BII)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    iget-object v4, p0, La1/e;->e:[B

    if-nez v4, :cond_68

    move v4, v6

    goto :goto_69

    :cond_68
    array-length v4, v4

    :goto_69
    add-int/2addr v3, v4

    if-lez v3, :cond_cc

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    iget-object v4, p0, La1/e;->e:[B

    if-nez v4, :cond_76

    move v4, v6

    goto :goto_77

    :cond_76
    array-length v4, v4

    :goto_77
    add-int/2addr v3, v4

    const v4, 0xff00

    if-ge v3, v4, :cond_88

    shr-int/lit8 v4, v3, 0x8

    int-to-byte v4, v4

    invoke-virtual {v1, v4}, Lz0/a;->update(B)V

    int-to-byte v4, v3

    invoke-virtual {v1, v4}, Lz0/a;->update(B)V

    goto :goto_a7

    :cond_88
    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Lz0/a;->update(B)V

    const/4 v4, -0x2

    invoke-virtual {v1, v4}, Lz0/a;->update(B)V

    shr-int/lit8 v4, v3, 0x18

    int-to-byte v4, v4

    invoke-virtual {v1, v4}, Lz0/a;->update(B)V

    shr-int/lit8 v4, v3, 0x10

    int-to-byte v4, v4

    invoke-virtual {v1, v4}, Lz0/a;->update(B)V

    shr-int/lit8 v4, v3, 0x8

    int-to-byte v4, v4

    invoke-virtual {v1, v4}, Lz0/a;->update(B)V

    int-to-byte v4, v3

    invoke-virtual {v1, v4}, Lz0/a;->update(B)V

    const/4 v7, 0x6

    :goto_a7
    iget-object p0, p0, La1/e;->e:[B

    if-eqz p0, :cond_af

    array-length v4, p0

    invoke-virtual {v1, p0, v6, v4}, Lz0/a;->update([BII)V

    :cond_af
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p0

    if-lez p0, :cond_c0

    invoke-virtual {v0}, La1/d;->d()[B

    move-result-object p0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    invoke-virtual {v1, p0, v6, v0}, Lz0/a;->update([BII)V

    :cond_c0
    add-int/2addr v7, v3

    rem-int/2addr v7, v2

    if-eqz v7, :cond_cc

    :goto_c4
    if-eq v7, v2, :cond_cc

    invoke-virtual {v1, v6}, Lz0/a;->update(B)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_c4

    :cond_cc
    invoke-virtual {v1, p3, p1, p2}, Lz0/a;->update([BII)V

    invoke-virtual {v1, p4, v6}, Lz0/a;->doFinal([BI)I

    return-void
.end method

.method public final doFinal([BI)I
    .registers 15

    iget-object v0, p0, La1/e;->a:Lorg/bouncycastle/crypto/d;

    iget-object v1, p0, La1/e;->j:La1/d;

    invoke-virtual {v1}, La1/d;->d()[B

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    iget-object v4, p0, La1/e;->h:[B

    iget v5, p0, La1/e;->b:I

    iget-object v6, p0, La1/e;->g:Lorg/bouncycastle/crypto/g;

    if-eqz v6, :cond_f2

    iget-object v6, p0, La1/e;->d:[B

    array-length v7, v6

    rsub-int/lit8 v8, v7, 0xf

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-ge v8, v9, :cond_37

    mul-int/lit8 v8, v8, 0x8

    shl-int v8, v11, v8

    iget-boolean v9, p0, La1/e;->c:Z

    if-nez v9, :cond_29

    const/16 v9, 0x10

    goto :goto_2a

    :cond_29
    move v9, v10

    :goto_2a
    sub-int v9, v3, v9

    if-ge v9, v8, :cond_2f

    goto :goto_37

    :cond_2f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "CCM packet too large for choice of q"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_37
    :goto_37
    new-array v8, v5, [B

    rsub-int/lit8 v7, v7, 0xe

    and-int/lit8 v7, v7, 0x7

    int-to-byte v7, v7

    aput-byte v7, v8, v10

    array-length v7, v6

    invoke-static {v6, v10, v8, v11, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v6, La1/w;

    invoke-direct {v6, v0}, La1/w;-><init>(Lorg/bouncycastle/crypto/d;)V

    iget-boolean v7, p0, La1/e;->c:Z

    new-instance v9, Le1/s0;

    iget-object v11, p0, La1/e;->g:Lorg/bouncycastle/crypto/g;

    invoke-direct {v9, v11, v8, v10, v5}, Le1/s0;-><init>(Lorg/bouncycastle/crypto/g;[BII)V

    invoke-virtual {v6, v7, v9}, La1/w;->init(ZLorg/bouncycastle/crypto/g;)V

    iget-boolean v7, p0, La1/e;->c:Z

    const-string v8, "Output buffer too short."

    if-eqz v7, :cond_91

    iget v7, p0, La1/e;->f:I

    add-int/2addr v7, v3

    array-length v9, p1

    add-int v11, v7, p2

    if-lt v9, v11, :cond_8b

    invoke-virtual {p0, v10, v3, v2, v4}, La1/e;->c(II[B[B)V

    new-array v8, v5, [B

    invoke-virtual {v6, v10, v10, v4, v8}, La1/w;->b(II[B[B)I

    move v9, p2

    move v4, v10

    :goto_6d
    sub-int v11, v3, v5

    if-ge v4, v11, :cond_77

    invoke-virtual {v6, v4, v9, v2, p1}, La1/w;->b(II[B[B)I

    add-int/2addr v9, v5

    add-int/2addr v4, v5

    goto :goto_6d

    :cond_77
    new-array v5, v5, [B

    sub-int v11, v3, v4

    invoke-static {v2, v4, v5, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v6, v10, v10, v5, v5}, La1/w;->b(II[B[B)I

    invoke-static {v5, v10, p1, v9, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v3

    iget v2, p0, La1/e;->f:I

    invoke-static {v8, v10, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_d0

    :cond_8b
    new-instance p0, Lorg/bouncycastle/crypto/d0;

    invoke-direct {p0, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_91
    iget v7, p0, La1/e;->f:I

    if-lt v3, v7, :cond_ea

    sub-int/2addr v3, v7

    array-length v9, p1

    add-int v11, v3, p2

    if-lt v9, v11, :cond_e4

    invoke-static {v2, v3, v4, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v6, v10, v10, v4, v4}, La1/w;->b(II[B[B)I

    iget v7, p0, La1/e;->f:I

    :goto_a3
    array-length v8, v4

    if-eq v7, v8, :cond_ab

    aput-byte v10, v4, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_a3

    :cond_ab
    move v8, p2

    move v7, v10

    :goto_ad
    sub-int v9, v3, v5

    if-ge v7, v9, :cond_b7

    invoke-virtual {v6, v7, v8, v2, p1}, La1/w;->b(II[B[B)I

    add-int/2addr v8, v5

    add-int/2addr v7, v5

    goto :goto_ad

    :cond_b7
    new-array v9, v5, [B

    sub-int v11, v3, v7

    invoke-static {v2, v7, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v6, v10, v10, v9, v9}, La1/w;->b(II[B[B)I

    invoke-static {v9, v10, p1, v8, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v2, v5, [B

    invoke-virtual {p0, p2, v3, p1, v2}, La1/e;->c(II[B[B)V

    invoke-static {v4, v2}, Lm4/d;->o([B[B)Z

    move-result p1

    if-eqz p1, :cond_dc

    move v7, v3

    :goto_d0
    invoke-interface {v0}, Lorg/bouncycastle/crypto/d;->reset()V

    iget-object p0, p0, La1/e;->i:La1/d;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->reset()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    return v7

    :cond_dc
    new-instance p0, Lorg/bouncycastle/crypto/x;

    const-string p1, "mac check in CCM failed"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e4
    new-instance p0, Lorg/bouncycastle/crypto/d0;

    invoke-direct {p0, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_ea
    new-instance p0, Lorg/bouncycastle/crypto/x;

    const-string p1, "data too short"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "CCM cipher unitialized."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getAlgorithmName()Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, La1/e;->a:Lorg/bouncycastle/crypto/d;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/d;->getAlgorithmName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/CCM"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getOutputSize(I)I
    .registers 3

    iget-object v0, p0, La1/e;->j:La1/d;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    add-int/2addr v0, p1

    iget-boolean p1, p0, La1/e;->c:Z

    iget p0, p0, La1/e;->f:I

    if-eqz p1, :cond_f

    add-int/2addr v0, p0

    return v0

    :cond_f
    if-ge v0, p0, :cond_13

    const/4 p0, 0x0

    return p0

    :cond_13
    sub-int/2addr v0, p0

    return v0
.end method

.method public final getUnderlyingCipher()Lorg/bouncycastle/crypto/d;
    .registers 1

    iget-object p0, p0, La1/e;->a:Lorg/bouncycastle/crypto/d;

    return-object p0
.end method

.method public final getUpdateOutputSize(I)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public final init(ZLorg/bouncycastle/crypto/g;)V
    .registers 4

    iput-boolean p1, p0, La1/e;->c:Z

    instance-of v0, p2, Le1/a;

    if-eqz v0, :cond_23

    check-cast p2, Le1/a;

    iget-object v0, p2, Le1/a;->d:[B

    invoke-static {v0}, Lm4/d;->e([B)[B

    move-result-object v0

    iput-object v0, p0, La1/e;->d:[B

    iget-object v0, p2, Le1/a;->c:[B

    invoke-static {v0}, Lm4/d;->e([B)[B

    move-result-object v0

    iput-object v0, p0, La1/e;->e:[B

    iget v0, p2, Le1/a;->x:I

    invoke-static {v0, p1}, La1/e;->d(IZ)I

    move-result p1

    iput p1, p0, La1/e;->f:I

    iget-object p1, p2, Le1/a;->q:Le1/o0;

    goto :goto_3a

    :cond_23
    instance-of v0, p2, Le1/s0;

    if-eqz v0, :cond_63

    check-cast p2, Le1/s0;

    iget-object v0, p2, Le1/s0;->c:[B

    iput-object v0, p0, La1/e;->d:[B

    const/4 v0, 0x0

    iput-object v0, p0, La1/e;->e:[B

    const/16 v0, 0x40

    invoke-static {v0, p1}, La1/e;->d(IZ)I

    move-result p1

    iput p1, p0, La1/e;->f:I

    iget-object p1, p2, Le1/s0;->d:Lorg/bouncycastle/crypto/g;

    :goto_3a
    if-eqz p1, :cond_3e

    iput-object p1, p0, La1/e;->g:Lorg/bouncycastle/crypto/g;

    :cond_3e
    iget-object p1, p0, La1/e;->d:[B

    if-eqz p1, :cond_5b

    array-length p2, p1

    const/4 v0, 0x7

    if-lt p2, v0, :cond_5b

    array-length p1, p1

    const/16 p2, 0xd

    if-gt p1, p2, :cond_5b

    iget-object p1, p0, La1/e;->a:Lorg/bouncycastle/crypto/d;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/d;->reset()V

    iget-object p1, p0, La1/e;->i:La1/d;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-object p0, p0, La1/e;->j:La1/d;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->reset()V

    return-void

    :cond_5b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "nonce must have length from 7 to 13 octets"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_63
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid parameters passed to CCM: "

    invoke-static {p1, p2}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->c(Ljava/lang/String;Lorg/bouncycastle/crypto/g;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final processByte(B[BI)I
    .registers 4

    iget-object p0, p0, La1/e;->j:La1/d;

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    const/4 p0, 0x0

    return p0
.end method

.method public final processBytes([BII[BI)I
    .registers 6

    array-length p4, p1

    add-int p5, p2, p3

    if-lt p4, p5, :cond_c

    iget-object p0, p0, La1/e;->j:La1/d;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    const/4 p0, 0x0

    return p0

    :cond_c
    new-instance p0, Lorg/bouncycastle/crypto/q;

    const-string p1, "Input buffer too short"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
