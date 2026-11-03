.class public final La1/r;
.super Lorg/bouncycastle/crypto/n0;


# instance fields
.field public final h:[B

.field public final i:[B

.field public final j:[B

.field public k:I

.field public final l:I

.field public final m:Lorg/bouncycastle/crypto/d;

.field public n:Z

.field public o:I

.field public p:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/d;)V
    .registers 4

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/n0;-><init>(Lorg/bouncycastle/crypto/d;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, La1/r;->n:Z

    iput-object p1, p0, La1/r;->m:Lorg/bouncycastle/crypto/d;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v0

    iput v0, p0, La1/r;->l:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2b

    invoke-interface {p1}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, La1/r;->h:[B

    invoke-interface {p1}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, La1/r;->i:[B

    invoke-interface {p1}, Lorg/bouncycastle/crypto/d;->c()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, La1/r;->j:[B

    return-void

    :cond_2b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "GCTR only for 64 bit block ciphers"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static e(I[B)I
    .registers 5

    add-int/lit8 v0, p0, 0x3

    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x18

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    add-int/lit8 v1, p0, 0x2

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 v1, p0, 0x1

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    add-int/2addr v0, v1

    aget-byte p0, p1, p0

    and-int/lit16 p0, p0, 0xff

    add-int/2addr v0, p0

    return v0
.end method

.method public static f([BII)V
    .registers 5

    add-int/lit8 v0, p2, 0x3

    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, p2, 0x2

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, p2, 0x1

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    int-to-byte p1, p1

    aput-byte p1, p0, p2

    return-void
.end method


# virtual methods
.method public final b(II[B[B)I
    .registers 11

    iget v3, p0, La1/r;->l:I

    move-object v0, p0

    move v2, p1

    move v5, p2

    move-object v1, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/n0;->processBytes([BII[BI)I

    iget p0, v0, La1/r;->l:I

    return p0
.end method

.method public final c()I
    .registers 1

    iget p0, p0, La1/r;->l:I

    return p0
.end method

.method public final d(B)B
    .registers 11

    iget v0, p0, La1/r;->k:I

    iget-object v1, p0, La1/r;->j:[B

    iget-object v2, p0, La1/r;->i:[B

    const/4 v3, 0x0

    if-nez v0, :cond_47

    iget-boolean v0, p0, La1/r;->n:Z

    const/4 v4, 0x4

    iget-object v5, p0, La1/r;->m:Lorg/bouncycastle/crypto/d;

    if-eqz v0, :cond_21

    iput-boolean v3, p0, La1/r;->n:Z

    invoke-interface {v5, v3, v3, v2, v1}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    invoke-static {v3, v1}, La1/r;->e(I[B)I

    move-result v0

    iput v0, p0, La1/r;->o:I

    invoke-static {v4, v1}, La1/r;->e(I[B)I

    move-result v0

    iput v0, p0, La1/r;->p:I

    :cond_21
    iget v0, p0, La1/r;->o:I

    const v6, 0x1010101

    add-int/2addr v0, v6

    iput v0, p0, La1/r;->o:I

    iget v6, p0, La1/r;->p:I

    const v7, 0x1010104

    add-int v8, v6, v7

    iput v8, p0, La1/r;->p:I

    if-ge v8, v7, :cond_3c

    if-lez v8, :cond_3c

    const v7, 0x1010105

    add-int/2addr v6, v7

    iput v6, p0, La1/r;->p:I

    :cond_3c
    invoke-static {v2, v0, v3}, La1/r;->f([BII)V

    iget v0, p0, La1/r;->p:I

    invoke-static {v2, v0, v4}, La1/r;->f([BII)V

    invoke-interface {v5, v3, v3, v2, v1}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    :cond_47
    iget v0, p0, La1/r;->k:I

    add-int/lit8 v4, v0, 0x1

    iput v4, p0, La1/r;->k:I

    aget-byte v0, v1, v0

    xor-int/2addr p1, v0

    int-to-byte p1, p1

    iget v0, p0, La1/r;->l:I

    if-ne v4, v0, :cond_61

    iput v3, p0, La1/r;->k:I

    array-length p0, v2

    sub-int/2addr p0, v0

    invoke-static {v2, v0, v2, v3, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, v2

    sub-int/2addr p0, v0

    invoke-static {v1, v3, v2, p0, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_61
    return p1
.end method

.method public final getAlgorithmName()Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, La1/r;->m:Lorg/bouncycastle/crypto/d;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/d;->getAlgorithmName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/GCTR"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final init(ZLorg/bouncycastle/crypto/g;)V
    .registers 10

    const/4 p1, 0x1

    iput-boolean p1, p0, La1/r;->n:Z

    const/4 v0, 0x0

    iput v0, p0, La1/r;->o:I

    iput v0, p0, La1/r;->p:I

    instance-of v1, p2, Le1/s0;

    iget-object v2, p0, La1/r;->m:Lorg/bouncycastle/crypto/d;

    if-eqz v1, :cond_39

    check-cast p2, Le1/s0;

    iget-object v1, p2, Le1/s0;->c:[B

    array-length v3, v1

    iget-object v4, p0, La1/r;->h:[B

    array-length v5, v4

    if-ge v3, v5, :cond_2a

    array-length v3, v4

    array-length v5, v1

    sub-int/2addr v3, v5

    array-length v5, v1

    invoke-static {v1, v0, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v3, v0

    :goto_20
    array-length v5, v4

    array-length v6, v1

    sub-int/2addr v5, v6

    if-ge v3, v5, :cond_2e

    aput-byte v0, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    :cond_2a
    array-length v3, v4

    invoke-static {v1, v0, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2e
    invoke-virtual {p0}, La1/r;->reset()V

    iget-object p0, p2, Le1/s0;->d:Lorg/bouncycastle/crypto/g;

    if-eqz p0, :cond_41

    invoke-interface {v2, p1, p0}, Lorg/bouncycastle/crypto/d;->init(ZLorg/bouncycastle/crypto/g;)V

    return-void

    :cond_39
    invoke-virtual {p0}, La1/r;->reset()V

    if-eqz p2, :cond_41

    invoke-interface {v2, p1, p2}, Lorg/bouncycastle/crypto/d;->init(ZLorg/bouncycastle/crypto/g;)V

    :cond_41
    return-void
.end method

.method public final reset()V
    .registers 5

    const/4 v0, 0x1

    iput-boolean v0, p0, La1/r;->n:Z

    const/4 v0, 0x0

    iput v0, p0, La1/r;->o:I

    iput v0, p0, La1/r;->p:I

    iget-object v1, p0, La1/r;->i:[B

    iget-object v2, p0, La1/r;->h:[B

    array-length v3, v2

    invoke-static {v2, v0, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, La1/r;->k:I

    iget-object p0, p0, La1/r;->m:Lorg/bouncycastle/crypto/d;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/d;->reset()V

    return-void
.end method
