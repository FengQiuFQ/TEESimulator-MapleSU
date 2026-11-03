.class public final Lx0/n;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/t;


# instance fields
.field public final g:Lz0/d;

.field public final h:I

.field public i:[B

.field public j:[B

.field public k:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/v;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lz0/d;

    invoke-direct {v0, p1}, Lz0/d;-><init>(Lorg/bouncycastle/crypto/v;)V

    iput-object v0, p0, Lx0/n;->g:Lz0/d;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/v;->getDigestSize()I

    move-result p1

    iput p1, p0, Lx0/n;->h:I

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 6

    iget v0, p0, Lx0/n;->k:I

    iget v1, p0, Lx0/n;->h:I

    div-int v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x100

    if-ge v2, v3, :cond_26

    const/4 v3, 0x0

    iget-object v4, p0, Lx0/n;->g:Lz0/d;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lx0/n;->j:[B

    invoke-virtual {v4, v0, v3, v1}, Lz0/d;->update([BII)V

    :cond_16
    iget-object v0, p0, Lx0/n;->i:[B

    array-length v1, v0

    invoke-virtual {v4, v0, v3, v1}, Lz0/d;->update([BII)V

    int-to-byte v0, v2

    invoke-virtual {v4, v0}, Lz0/d;->update(B)V

    iget-object p0, p0, Lx0/n;->j:[B

    invoke-virtual {v4, p0, v3}, Lz0/d;->doFinal([BI)I

    return-void

    :cond_26
    new-instance p0, Lorg/bouncycastle/crypto/q;

    const-string v0, "HKDF cannot generate more than 255 blocks of HashLen size"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final generateBytes([BII)I
    .registers 9

    iget p2, p0, Lx0/n;->k:I

    add-int v0, p2, p3

    iget v1, p0, Lx0/n;->h:I

    mul-int/lit16 v2, v1, 0xff

    if-gt v0, v2, :cond_3d

    rem-int/2addr p2, v1

    if-nez p2, :cond_10

    invoke-virtual {p0}, Lx0/n;->a()V

    :cond_10
    iget p2, p0, Lx0/n;->k:I

    rem-int/2addr p2, v1

    sub-int v0, v1, p2

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v2, p0, Lx0/n;->j:[B

    const/4 v3, 0x0

    invoke-static {v2, p2, p1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p2, p0, Lx0/n;->k:I

    add-int/2addr p2, v0

    iput p2, p0, Lx0/n;->k:I

    sub-int p2, p3, v0

    :goto_26
    if-lez p2, :cond_3c

    invoke-virtual {p0}, Lx0/n;->a()V

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v4, p0, Lx0/n;->j:[B

    invoke-static {v4, v3, p1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v4, p0, Lx0/n;->k:I

    add-int/2addr v4, v2

    iput v4, p0, Lx0/n;->k:I

    sub-int/2addr p2, v2

    add-int/2addr v0, v2

    goto :goto_26

    :cond_3c
    return p3

    :cond_3d
    new-instance p0, Lorg/bouncycastle/crypto/q;

    const-string p1, "HKDF may only be used for 255 * HashLen bytes of output"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final init(Lorg/bouncycastle/crypto/u;)V
    .registers 10

    instance-of v0, p1, Le1/l0;

    if-eqz v0, :cond_4d

    check-cast p1, Le1/l0;

    iget-object v0, p1, Le1/l0;->a:[B

    new-instance v1, Le1/o0;

    iget-object v2, p1, Le1/l0;->b:[B

    invoke-static {v2}, Lm4/d;->e([B)[B

    move-result-object v2

    invoke-static {v0}, Lm4/d;->e([B)[B

    move-result-object v0

    iget v3, p0, Lx0/n;->h:I

    const/4 v4, 0x0

    iget-object v5, p0, Lx0/n;->g:Lz0/d;

    if-nez v2, :cond_26

    new-instance v2, Le1/o0;

    new-array v6, v3, [B

    invoke-direct {v2, v6, v4, v3}, Le1/o0;-><init>([BII)V

    invoke-virtual {v5, v2}, Lz0/d;->init(Lorg/bouncycastle/crypto/g;)V

    goto :goto_2f

    :cond_26
    new-instance v6, Le1/o0;

    array-length v7, v2

    invoke-direct {v6, v2, v4, v7}, Le1/o0;-><init>([BII)V

    invoke-virtual {v5, v6}, Lz0/d;->init(Lorg/bouncycastle/crypto/g;)V

    :goto_2f
    array-length v2, v0

    invoke-virtual {v5, v0, v4, v2}, Lz0/d;->update([BII)V

    new-array v0, v3, [B

    invoke-virtual {v5, v0, v4}, Lz0/d;->doFinal([BI)I

    invoke-direct {v1, v0, v4, v3}, Le1/o0;-><init>([BII)V

    invoke-virtual {v5, v1}, Lz0/d;->init(Lorg/bouncycastle/crypto/g;)V

    iget-object p1, p1, Le1/l0;->c:[B

    invoke-static {p1}, Lm4/d;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Lx0/n;->i:[B

    iput v4, p0, Lx0/n;->k:I

    new-array p1, v3, [B

    iput-object p1, p0, Lx0/n;->j:[B

    return-void

    :cond_4d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "HKDF parameters required for HKDFBytesGenerator"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
