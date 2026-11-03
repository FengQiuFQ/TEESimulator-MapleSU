.class public final La1/g;
.super Lorg/bouncycastle/crypto/n0;


# instance fields
.field public final h:[B

.field public final i:[B

.field public final j:[B

.field public final k:[B

.field public final l:I

.field public final m:Lorg/bouncycastle/crypto/d;

.field public n:Z

.field public o:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/d;I)V
    .registers 5

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/n0;-><init>(Lorg/bouncycastle/crypto/d;)V

    const/4 v0, 0x0

    iput-object v0, p0, La1/g;->m:Lorg/bouncycastle/crypto/d;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v0

    const/16 v1, 0x8

    mul-int/2addr v0, v1

    if-gt p2, v0, :cond_37

    if-lt p2, v1, :cond_37

    rem-int/lit8 v0, p2, 0x8

    if-nez v0, :cond_37

    iput-object p1, p0, La1/g;->m:Lorg/bouncycastle/crypto/d;

    div-int/2addr p2, v1

    iput p2, p0, La1/g;->l:I

    invoke-interface {p1}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, La1/g;->h:[B

    invoke-interface {p1}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, La1/g;->i:[B

    invoke-interface {p1}, Lorg/bouncycastle/crypto/d;->c()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, La1/g;->j:[B

    new-array p1, p2, [B

    iput-object p1, p0, La1/g;->k:[B

    return-void

    :cond_37
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "CFB"

    const-string v0, " not supported"

    invoke-static {p1, v0, p2}, Lb/b;->g(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final b(II[B[B)I
    .registers 11

    iget v3, p0, La1/g;->l:I

    move-object v0, p0

    move v2, p1

    move v5, p2

    move-object v1, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/n0;->processBytes([BII[BI)I

    iget p0, v0, La1/g;->l:I

    return p0
.end method

.method public final c()I
    .registers 1

    iget p0, p0, La1/g;->l:I

    return p0
.end method

.method public final d(B)B
    .registers 9

    iget-boolean v0, p0, La1/g;->n:Z

    iget-object v1, p0, La1/g;->m:Lorg/bouncycastle/crypto/d;

    const/4 v2, 0x0

    iget-object v3, p0, La1/g;->i:[B

    iget-object v4, p0, La1/g;->j:[B

    iget-object v5, p0, La1/g;->k:[B

    iget v6, p0, La1/g;->l:I

    if-eqz v0, :cond_31

    iget v0, p0, La1/g;->o:I

    if-nez v0, :cond_16

    invoke-interface {v1, v2, v2, v3, v4}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    :cond_16
    iget v0, p0, La1/g;->o:I

    aget-byte v1, v4, v0

    xor-int/2addr p1, v1

    int-to-byte p1, p1

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, La1/g;->o:I

    aput-byte p1, v5, v0

    if-ne v1, v6, :cond_30

    iput v2, p0, La1/g;->o:I

    array-length p0, v3

    sub-int/2addr p0, v6

    invoke-static {v3, v6, v3, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, v3

    sub-int/2addr p0, v6

    invoke-static {v5, v2, v3, p0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_30
    return p1

    :cond_31
    iget v0, p0, La1/g;->o:I

    if-nez v0, :cond_38

    invoke-interface {v1, v2, v2, v3, v4}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    :cond_38
    iget v0, p0, La1/g;->o:I

    aput-byte p1, v5, v0

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, La1/g;->o:I

    aget-byte v0, v4, v0

    xor-int/2addr p1, v0

    int-to-byte p1, p1

    if-ne v1, v6, :cond_52

    iput v2, p0, La1/g;->o:I

    array-length p0, v3

    sub-int/2addr p0, v6

    invoke-static {v3, v6, v3, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, v3

    sub-int/2addr p0, v6

    invoke-static {v5, v2, v3, p0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_52
    return p1
.end method

.method public final getAlgorithmName()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, La1/g;->m:Lorg/bouncycastle/crypto/d;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/d;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/CFB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, La1/g;->l:I

    mul-int/lit8 p0, p0, 0x8

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final init(ZLorg/bouncycastle/crypto/g;)V
    .registers 10

    iput-boolean p1, p0, La1/g;->n:Z

    instance-of p1, p2, Le1/s0;

    iget-object v0, p0, La1/g;->m:Lorg/bouncycastle/crypto/d;

    const/4 v1, 0x1

    if-eqz p1, :cond_35

    check-cast p2, Le1/s0;

    iget-object p1, p2, Le1/s0;->c:[B

    array-length v2, p1

    iget-object v3, p0, La1/g;->h:[B

    array-length v4, v3

    const/4 v5, 0x0

    if-ge v2, v4, :cond_26

    array-length v2, v3

    array-length v4, p1

    sub-int/2addr v2, v4

    array-length v4, p1

    invoke-static {p1, v5, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v2, v5

    :goto_1c
    array-length v4, v3

    array-length v6, p1

    sub-int/2addr v4, v6

    if-ge v2, v4, :cond_2a

    aput-byte v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_26
    array-length v2, v3

    invoke-static {p1, v5, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2a
    invoke-virtual {p0}, La1/g;->reset()V

    iget-object p0, p2, Le1/s0;->d:Lorg/bouncycastle/crypto/g;

    if-eqz p0, :cond_3d

    invoke-interface {v0, v1, p0}, Lorg/bouncycastle/crypto/d;->init(ZLorg/bouncycastle/crypto/g;)V

    return-void

    :cond_35
    invoke-virtual {p0}, La1/g;->reset()V

    if-eqz p2, :cond_3d

    invoke-interface {v0, v1, p2}, Lorg/bouncycastle/crypto/d;->init(ZLorg/bouncycastle/crypto/g;)V

    :cond_3d
    return-void
.end method

.method public final reset()V
    .registers 5

    iget-object v0, p0, La1/g;->i:[B

    iget-object v1, p0, La1/g;->h:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, La1/g;->k:[B

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([BB)V

    iput v3, p0, La1/g;->o:I

    iget-object p0, p0, La1/g;->m:Lorg/bouncycastle/crypto/d;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/d;->reset()V

    return-void
.end method
