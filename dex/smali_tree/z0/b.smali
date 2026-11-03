.class public final Lz0/b;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/b0;


# instance fields
.field public final g:[B

.field public final h:[B

.field public final i:[B

.field public final j:[B

.field public k:I

.field public final l:La1/c;

.field public final m:I

.field public n:[B

.field public o:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/d;)V
    .registers 5

    invoke-interface {p1}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    rem-int/lit8 v1, v0, 0x8

    if-nez v1, :cond_96

    invoke-interface {p1}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    if-gt v0, v1, :cond_7c

    new-instance v1, La1/c;

    invoke-direct {v1, p1}, La1/c;-><init>(Lorg/bouncycastle/crypto/d;)V

    iput-object v1, p0, Lz0/b;->l:La1/c;

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lz0/b;->m:I

    invoke-interface {p1}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    const/16 v1, 0x87

    const/16 v2, 0x1b

    sparse-switch v0, :sswitch_data_9e

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unknown block size for CMAC: "

    invoke-static {v0, p1}, Lb/b;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :sswitch_39
    const v1, 0x86001

    goto :goto_58

    :sswitch_3d
    const v1, 0x80043

    goto :goto_58

    :sswitch_41
    const v1, 0xa0011

    goto :goto_58

    :sswitch_45
    const/16 v1, 0x125

    goto :goto_58

    :sswitch_48
    const/16 v1, 0x851

    goto :goto_58

    :sswitch_4b
    const/16 v1, 0x100d

    goto :goto_58

    :sswitch_4e
    move v1, v2

    goto :goto_58

    :sswitch_50
    const/16 v1, 0x425

    goto :goto_58

    :sswitch_53
    const/16 v1, 0x309

    goto :goto_58

    :sswitch_56
    const/16 v1, 0x2d

    :goto_58
    :sswitch_58
    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lm4/d;->w([BII)V

    iput-object v0, p0, Lz0/b;->g:[B

    invoke-interface {p1}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lz0/b;->i:[B

    invoke-interface {p1}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lz0/b;->j:[B

    invoke-interface {p1}, Lorg/bouncycastle/crypto/d;->c()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lz0/b;->h:[B

    iput v2, p0, Lz0/b;->k:I

    return-void

    :cond_7c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MAC size must be less or equal to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/bouncycastle/crypto/d;->c()I

    move-result p1

    mul-int/lit8 p1, p1, 0x8

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_96
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "MAC size must be multiple of 8"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :sswitch_data_9e
    .sparse-switch
        0x40 -> :sswitch_4e
        0x80 -> :sswitch_58
        0xa0 -> :sswitch_56
        0xc0 -> :sswitch_58
        0xe0 -> :sswitch_53
        0x100 -> :sswitch_50
        0x140 -> :sswitch_4e
        0x180 -> :sswitch_4b
        0x1c0 -> :sswitch_48
        0x200 -> :sswitch_45
        0x300 -> :sswitch_41
        0x400 -> :sswitch_3d
        0x800 -> :sswitch_39
    .end sparse-switch
.end method


# virtual methods
.method public final a([B)[B
    .registers 9

    array-length v0, p1

    new-array v0, v0, [B

    array-length v1, p1

    const/4 v2, 0x0

    :goto_5
    add-int/lit8 v1, v1, -0x1

    const/4 v3, 0x1

    if-ltz v1, :cond_18

    aget-byte v4, p1, v1

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v5, v4, 0x1

    or-int/2addr v2, v5

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    ushr-int/lit8 v2, v4, 0x7

    and-int/2addr v2, v3

    goto :goto_5

    :cond_18
    neg-int v1, v2

    and-int/lit16 v1, v1, 0xff

    array-length v2, p1

    const/4 v4, 0x3

    sub-int/2addr v2, v4

    aget-byte v5, v0, v2

    iget-object p0, p0, Lz0/b;->g:[B

    aget-byte v6, p0, v3

    and-int/2addr v6, v1

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v0, v2

    array-length v2, p1

    const/4 v5, 0x2

    sub-int/2addr v2, v5

    aget-byte v6, v0, v2

    aget-byte v5, p0, v5

    and-int/2addr v5, v1

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v0, v2

    array-length p1, p1

    sub-int/2addr p1, v3

    aget-byte v2, v0, p1

    aget-byte p0, p0, v4

    and-int/2addr p0, v1

    xor-int/2addr p0, v2

    int-to-byte p0, p0

    aput-byte p0, v0, p1

    return-object v0
.end method

.method public final doFinal([BI)I
    .registers 9

    iget-object p2, p0, Lz0/b;->l:La1/c;

    iget-object v0, p2, La1/c;->k:Lorg/bouncycastle/crypto/d;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v0

    iget v1, p0, Lz0/b;->k:I

    const/4 v2, 0x0

    iget-object v3, p0, Lz0/b;->j:[B

    if-ne v1, v0, :cond_12

    iget-object v0, p0, Lz0/b;->n:[B

    goto :goto_21

    :cond_12
    array-length v0, v3

    const/16 v0, -0x80

    aput-byte v0, v3, v1

    :goto_17
    add-int/lit8 v1, v1, 0x1

    array-length v0, v3

    if-ge v1, v0, :cond_1f

    aput-byte v2, v3, v1

    goto :goto_17

    :cond_1f
    iget-object v0, p0, Lz0/b;->o:[B

    :goto_21
    move v1, v2

    :goto_22
    iget-object v4, p0, Lz0/b;->i:[B

    array-length v5, v4

    if-ge v1, v5, :cond_32

    aget-byte v4, v3, v1

    aget-byte v5, v0, v1

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    :cond_32
    invoke-virtual {p2, v2, v2, v3, v4}, La1/c;->b(II[B[B)I

    iget p2, p0, Lz0/b;->m:I

    invoke-static {v4, v2, p1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Lz0/b;->reset()V

    return p2
.end method

.method public final getAlgorithmName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lz0/b;->l:La1/c;

    invoke-virtual {p0}, La1/c;->getAlgorithmName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getMacSize()I
    .registers 1

    iget p0, p0, Lz0/b;->m:I

    return p0
.end method

.method public final init(Lorg/bouncycastle/crypto/g;)V
    .registers 5

    if-eqz p1, :cond_f

    instance-of v0, p1, Le1/o0;

    if-eqz v0, :cond_7

    goto :goto_f

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "CMac mode only permits key to be set."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    :goto_f
    const/4 v0, 0x1

    iget-object v1, p0, Lz0/b;->l:La1/c;

    invoke-virtual {v1, v0, p1}, La1/c;->init(ZLorg/bouncycastle/crypto/g;)V

    iget-object p1, p0, Lz0/b;->h:[B

    array-length v0, p1

    new-array v0, v0, [B

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, p1, v0}, La1/c;->b(II[B[B)I

    invoke-virtual {p0, v0}, Lz0/b;->a([B)[B

    move-result-object p1

    iput-object p1, p0, Lz0/b;->n:[B

    invoke-virtual {p0, p1}, Lz0/b;->a([B)[B

    move-result-object p1

    iput-object p1, p0, Lz0/b;->o:[B

    invoke-virtual {p0}, Lz0/b;->reset()V

    return-void
.end method

.method public final reset()V
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lz0/b;->j:[B

    array-length v3, v2

    if-ge v1, v3, :cond_c

    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_c
    iput v0, p0, Lz0/b;->k:I

    iget-object p0, p0, Lz0/b;->l:La1/c;

    invoke-virtual {p0}, La1/c;->reset()V

    return-void
.end method

.method public final update(B)V
    .registers 6

    iget v0, p0, Lz0/b;->k:I

    iget-object v1, p0, Lz0/b;->j:[B

    array-length v2, v1

    if-ne v0, v2, :cond_11

    iget-object v0, p0, Lz0/b;->l:La1/c;

    iget-object v2, p0, Lz0/b;->i:[B

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, La1/c;->b(II[B[B)I

    iput v3, p0, Lz0/b;->k:I

    :cond_11
    iget v0, p0, Lz0/b;->k:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lz0/b;->k:I

    aput-byte p1, v1, v0

    return-void
.end method

.method public final update([BII)V
    .registers 10

    if-ltz p3, :cond_32

    iget-object v0, p0, Lz0/b;->l:La1/c;

    iget-object v1, v0, La1/c;->k:Lorg/bouncycastle/crypto/d;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v1

    iget v2, p0, Lz0/b;->k:I

    sub-int v3, v1, v2

    iget-object v4, p0, Lz0/b;->j:[B

    if-le p3, v3, :cond_27

    invoke-static {p1, p2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x0

    iget-object v5, p0, Lz0/b;->i:[B

    invoke-virtual {v0, v2, v2, v4, v5}, La1/c;->b(II[B[B)I

    iput v2, p0, Lz0/b;->k:I

    sub-int/2addr p3, v3

    add-int/2addr p2, v3

    :goto_1f
    if-le p3, v1, :cond_27

    invoke-virtual {v0, p2, v2, p1, v5}, La1/c;->b(II[B[B)I

    sub-int/2addr p3, v1

    add-int/2addr p2, v1

    goto :goto_1f

    :cond_27
    iget v0, p0, Lz0/b;->k:I

    invoke-static {p1, p2, v4, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lz0/b;->k:I

    add-int/2addr p1, p3

    iput p1, p0, Lz0/b;->k:I

    return-void

    :cond_32
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t have a negative input length!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
