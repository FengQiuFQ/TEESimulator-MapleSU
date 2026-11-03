.class public final La1/x;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/d;


# instance fields
.field public g:[B

.field public h:[B

.field public i:[B

.field public j:Lorg/bouncycastle/crypto/d;

.field public k:I

.field public l:I

.field public m:Z


# virtual methods
.method public final a(BI)B
    .registers 3

    iget-object p0, p0, La1/x;->i:[B

    aget-byte p0, p0, p2

    xor-int/2addr p0, p1

    int-to-byte p0, p0

    return p0
.end method

.method public final b(II[B[B)I
    .registers 16

    iget v0, p0, La1/x;->l:I

    iget-object v1, p0, La1/x;->h:[B

    iget-object v2, p0, La1/x;->j:Lorg/bouncycastle/crypto/d;

    iget-object v3, p0, La1/x;->i:[B

    iget-boolean v4, p0, La1/x;->m:Z

    const-string v5, "input buffer too short"

    const-string v6, "output buffer too short"

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v4, :cond_be

    add-int v4, p1, v0

    array-length v10, p3

    if-gt v4, v10, :cond_b8

    add-int v4, p2, v0

    array-length v5, p4

    if-gt v4, v5, :cond_b2

    iget v4, p0, La1/x;->k:I

    if-le v4, v0, :cond_55

    add-int/lit8 v4, v0, -0x2

    aget-byte v5, p3, p1

    invoke-virtual {p0, v5, v4}, La1/x;->a(BI)B

    move-result v5

    aput-byte v5, p4, p2

    aput-byte v5, v1, v4

    add-int/lit8 v4, v0, -0x1

    add-int/lit8 v5, p2, 0x1

    add-int/lit8 v6, p1, 0x1

    aget-byte v6, p3, v6

    invoke-virtual {p0, v6, v4}, La1/x;->a(BI)B

    move-result v6

    aput-byte v6, p4, v5

    aput-byte v6, v1, v4

    invoke-interface {v2, v7, v7, v1, v3}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    :goto_40
    if-ge v8, v0, :cond_b1

    add-int/lit8 v2, v8, -0x2

    add-int v3, p2, v8

    add-int v4, p1, v8

    aget-byte v4, p3, v4

    invoke-virtual {p0, v4, v2}, La1/x;->a(BI)B

    move-result v4

    aput-byte v4, p4, v3

    aput-byte v4, v1, v2

    add-int/lit8 v8, v8, 0x1

    goto :goto_40

    :cond_55
    if-nez v4, :cond_73

    invoke-interface {v2, v7, v7, v1, v3}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    :goto_5a
    if-ge v7, v0, :cond_6d

    add-int v2, p2, v7

    add-int v3, p1, v7

    aget-byte v3, p3, v3

    invoke-virtual {p0, v3, v7}, La1/x;->a(BI)B

    move-result v3

    aput-byte v3, p4, v2

    aput-byte v3, v1, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_5a

    :cond_6d
    iget p1, p0, La1/x;->k:I

    add-int/2addr p1, v0

    iput p1, p0, La1/x;->k:I

    return v0

    :cond_73
    if-ne v4, v0, :cond_b1

    invoke-interface {v2, v7, v7, v1, v3}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    aget-byte v4, p3, p1

    invoke-virtual {p0, v4, v7}, La1/x;->a(BI)B

    move-result v4

    aput-byte v4, p4, p2

    add-int/lit8 v4, p2, 0x1

    add-int/lit8 v5, p1, 0x1

    aget-byte v5, p3, v5

    invoke-virtual {p0, v5, v9}, La1/x;->a(BI)B

    move-result v5

    aput-byte v5, p4, v4

    add-int/lit8 v4, v0, -0x2

    invoke-static {v1, v8, v1, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p4, p2, v1, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {v2, v7, v7, v1, v3}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    :goto_97
    if-ge v8, v0, :cond_ac

    add-int/lit8 v2, v8, -0x2

    add-int v3, p2, v8

    add-int v4, p1, v8

    aget-byte v4, p3, v4

    invoke-virtual {p0, v4, v2}, La1/x;->a(BI)B

    move-result v4

    aput-byte v4, p4, v3

    aput-byte v4, v1, v2

    add-int/lit8 v8, v8, 0x1

    goto :goto_97

    :cond_ac
    iget p1, p0, La1/x;->k:I

    add-int/2addr p1, v0

    iput p1, p0, La1/x;->k:I

    :cond_b1
    return v0

    :cond_b2
    new-instance p0, Lorg/bouncycastle/crypto/d0;

    invoke-direct {p0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b8
    new-instance p0, Lorg/bouncycastle/crypto/q;

    invoke-direct {p0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_be
    add-int v4, p1, v0

    array-length v10, p3

    if-gt v4, v10, :cond_168

    add-int v4, p2, v0

    array-length v5, p4

    if-gt v4, v5, :cond_162

    iget v4, p0, La1/x;->k:I

    if-le v4, v0, :cond_100

    aget-byte v4, p3, p1

    add-int/lit8 v5, v0, -0x2

    aput-byte v4, v1, v5

    invoke-virtual {p0, v4, v5}, La1/x;->a(BI)B

    move-result v4

    aput-byte v4, p4, p2

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p3, v4

    add-int/lit8 v5, v0, -0x1

    aput-byte v4, v1, v5

    add-int/lit8 v6, p2, 0x1

    invoke-virtual {p0, v4, v5}, La1/x;->a(BI)B

    move-result v4

    aput-byte v4, p4, v6

    invoke-interface {v2, v7, v7, v1, v3}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    :goto_eb
    if-ge v8, v0, :cond_161

    add-int v2, p1, v8

    aget-byte v2, p3, v2

    add-int/lit8 v3, v8, -0x2

    aput-byte v2, v1, v3

    add-int v4, p2, v8

    invoke-virtual {p0, v2, v3}, La1/x;->a(BI)B

    move-result v2

    aput-byte v2, p4, v4

    add-int/lit8 v8, v8, 0x1

    goto :goto_eb

    :cond_100
    if-nez v4, :cond_120

    invoke-interface {v2, v7, v7, v1, v3}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    :goto_105
    if-ge v7, v0, :cond_11a

    add-int v2, p1, v7

    aget-byte v3, p3, v2

    aput-byte v3, v1, v7

    add-int v3, p2, v7

    aget-byte v2, p3, v2

    invoke-virtual {p0, v2, v7}, La1/x;->a(BI)B

    move-result v2

    aput-byte v2, p4, v3

    add-int/lit8 v7, v7, 0x1

    goto :goto_105

    :cond_11a
    iget p1, p0, La1/x;->k:I

    add-int/2addr p1, v0

    iput p1, p0, La1/x;->k:I

    return v0

    :cond_120
    if-ne v4, v0, :cond_161

    invoke-interface {v2, v7, v7, v1, v3}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    aget-byte v4, p3, p1

    add-int/lit8 v5, p1, 0x1

    aget-byte v5, p3, v5

    invoke-virtual {p0, v4, v7}, La1/x;->a(BI)B

    move-result v6

    aput-byte v6, p4, p2

    add-int/lit8 v6, p2, 0x1

    invoke-virtual {p0, v5, v9}, La1/x;->a(BI)B

    move-result v9

    aput-byte v9, p4, v6

    add-int/lit8 v6, v0, -0x2

    invoke-static {v1, v8, v1, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-byte v4, v1, v6

    add-int/lit8 v4, v0, -0x1

    aput-byte v5, v1, v4

    invoke-interface {v2, v7, v7, v1, v3}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    :goto_147
    if-ge v8, v0, :cond_15c

    add-int v2, p1, v8

    aget-byte v2, p3, v2

    add-int/lit8 v3, v8, -0x2

    aput-byte v2, v1, v3

    add-int v4, p2, v8

    invoke-virtual {p0, v2, v3}, La1/x;->a(BI)B

    move-result v2

    aput-byte v2, p4, v4

    add-int/lit8 v8, v8, 0x1

    goto :goto_147

    :cond_15c
    iget p1, p0, La1/x;->k:I

    add-int/2addr p1, v0

    iput p1, p0, La1/x;->k:I

    :cond_161
    return v0

    :cond_162
    new-instance p0, Lorg/bouncycastle/crypto/d0;

    invoke-direct {p0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_168
    new-instance p0, Lorg/bouncycastle/crypto/q;

    invoke-direct {p0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c()I
    .registers 1

    iget-object p0, p0, La1/x;->j:Lorg/bouncycastle/crypto/d;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/d;->c()I

    move-result p0

    return p0
.end method

.method public final getAlgorithmName()Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, La1/x;->j:Lorg/bouncycastle/crypto/d;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/d;->getAlgorithmName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/OpenPGPCFB"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final init(ZLorg/bouncycastle/crypto/g;)V
    .registers 3

    iput-boolean p1, p0, La1/x;->m:Z

    invoke-virtual {p0}, La1/x;->reset()V

    iget-object p0, p0, La1/x;->j:Lorg/bouncycastle/crypto/d;

    const/4 p1, 0x1

    invoke-interface {p0, p1, p2}, Lorg/bouncycastle/crypto/d;->init(ZLorg/bouncycastle/crypto/g;)V

    return-void
.end method

.method public final reset()V
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, La1/x;->k:I

    iget-object v1, p0, La1/x;->g:[B

    iget-object v2, p0, La1/x;->h:[B

    array-length v3, v2

    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p0, p0, La1/x;->j:Lorg/bouncycastle/crypto/d;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/d;->reset()V

    return-void
.end method
