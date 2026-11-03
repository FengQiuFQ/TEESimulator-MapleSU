.class public final Lz0/i;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/b0;


# instance fields
.field public g:B

.field public h:B

.field public i:[B

.field public j:B

.field public k:[B

.field public l:[B

.field public m:[B

.field public n:B

.field public o:B

.field public p:B

.field public q:B


# virtual methods
.method public final doFinal([BI)I
    .registers 16

    const/4 p2, 0x1

    move v0, p2

    :goto_2
    const/16 v1, 0x19

    if-ge v0, v1, :cond_84

    iget-object v1, p0, Lz0/i;->i:[B

    iget-byte v2, p0, Lz0/i;->j:B

    iget-byte v3, p0, Lz0/i;->h:B

    and-int/lit16 v4, v3, 0xff

    aget-byte v5, v1, v4

    add-int/2addr v2, v5

    and-int/lit16 v2, v2, 0xff

    aget-byte v2, v1, v2

    iput-byte v2, p0, Lz0/i;->j:B

    iget-byte v5, p0, Lz0/i;->q:B

    iget-byte v6, p0, Lz0/i;->p:B

    add-int/2addr v5, v6

    add-int/2addr v5, v0

    and-int/lit16 v5, v5, 0xff

    aget-byte v5, v1, v5

    iput-byte v5, p0, Lz0/i;->q:B

    iget-byte v7, p0, Lz0/i;->o:B

    add-int/2addr v6, v7

    add-int/2addr v6, v0

    and-int/lit16 v6, v6, 0xff

    aget-byte v6, v1, v6

    iput-byte v6, p0, Lz0/i;->p:B

    iget-byte v8, p0, Lz0/i;->n:B

    add-int/2addr v7, v8

    add-int/2addr v7, v0

    and-int/lit16 v7, v7, 0xff

    aget-byte v7, v1, v7

    iput-byte v7, p0, Lz0/i;->o:B

    add-int/2addr v8, v2

    add-int/2addr v8, v0

    and-int/lit16 v8, v8, 0xff

    aget-byte v8, v1, v8

    iput-byte v8, p0, Lz0/i;->n:B

    iget-object v9, p0, Lz0/i;->k:[B

    iget-byte v10, p0, Lz0/i;->g:B

    and-int/lit8 v11, v10, 0x1f

    aget-byte v12, v9, v11

    xor-int/2addr v8, v12

    int-to-byte v8, v8

    aput-byte v8, v9, v11

    add-int/lit8 v8, v10, 0x1

    and-int/lit8 v8, v8, 0x1f

    aget-byte v11, v9, v8

    xor-int/2addr v7, v11

    int-to-byte v7, v7

    aput-byte v7, v9, v8

    add-int/lit8 v7, v10, 0x2

    and-int/lit8 v7, v7, 0x1f

    aget-byte v8, v9, v7

    xor-int/2addr v6, v8

    int-to-byte v6, v6

    aput-byte v6, v9, v7

    add-int/lit8 v6, v10, 0x3

    and-int/lit8 v6, v6, 0x1f

    aget-byte v7, v9, v6

    xor-int/2addr v5, v7

    int-to-byte v5, v5

    aput-byte v5, v9, v6

    add-int/lit8 v10, v10, 0x4

    and-int/lit8 v5, v10, 0x1f

    int-to-byte v5, v5

    iput-byte v5, p0, Lz0/i;->g:B

    aget-byte v5, v1, v4

    and-int/lit16 v2, v2, 0xff

    aget-byte v6, v1, v2

    aput-byte v6, v1, v4

    aput-byte v5, v1, v2

    add-int/2addr v3, p2

    and-int/lit16 v1, v3, 0xff

    int-to-byte v1, v1

    iput-byte v1, p0, Lz0/i;->h:B

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_84
    const/4 v0, 0x0

    move v1, v0

    :goto_86
    const/16 v2, 0x300

    if-ge v1, v2, :cond_ab

    iget-object v2, p0, Lz0/i;->i:[B

    iget-byte v3, p0, Lz0/i;->j:B

    and-int/lit16 v4, v1, 0xff

    aget-byte v5, v2, v4

    add-int/2addr v3, v5

    iget-object v6, p0, Lz0/i;->k:[B

    and-int/lit8 v7, v1, 0x1f

    aget-byte v6, v6, v7

    add-int/2addr v3, v6

    and-int/lit16 v3, v3, 0xff

    aget-byte v3, v2, v3

    iput-byte v3, p0, Lz0/i;->j:B

    and-int/lit16 v3, v3, 0xff

    aget-byte v6, v2, v3

    aput-byte v6, v2, v4

    aput-byte v5, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_86

    :cond_ab
    const/16 v1, 0x14

    new-array v2, v1, [B

    move v3, v0

    :goto_b0
    if-ge v3, v1, :cond_db

    iget-object v4, p0, Lz0/i;->i:[B

    iget-byte v5, p0, Lz0/i;->j:B

    and-int/lit16 v6, v3, 0xff

    aget-byte v7, v4, v6

    add-int/2addr v5, v7

    and-int/lit16 v5, v5, 0xff

    aget-byte v5, v4, v5

    iput-byte v5, p0, Lz0/i;->j:B

    and-int/lit16 v5, v5, 0xff

    aget-byte v7, v4, v5

    and-int/lit16 v7, v7, 0xff

    aget-byte v7, v4, v7

    add-int/2addr v7, p2

    and-int/lit16 v7, v7, 0xff

    aget-byte v7, v4, v7

    aput-byte v7, v2, v3

    aget-byte v7, v4, v6

    aget-byte v8, v4, v5

    aput-byte v8, v4, v6

    aput-byte v7, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_b0

    :cond_db
    invoke-static {v2, v0, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Lz0/i;->reset()V

    return v1
.end method

.method public final getAlgorithmName()Ljava/lang/String;
    .registers 1

    const-string p0, "VMPC-MAC"

    return-object p0
.end method

.method public final getMacSize()I
    .registers 1

    const/16 p0, 0x14

    return p0
.end method

.method public final init(Lorg/bouncycastle/crypto/g;)V
    .registers 5

    instance-of v0, p1, Le1/s0;

    if-eqz v0, :cond_36

    check-cast p1, Le1/s0;

    iget-object v0, p1, Le1/s0;->d:Lorg/bouncycastle/crypto/g;

    move-object v1, v0

    check-cast v1, Le1/o0;

    instance-of v0, v0, Le1/o0;

    if-eqz v0, :cond_2e

    iget-object p1, p1, Le1/s0;->c:[B

    iput-object p1, p0, Lz0/i;->l:[B

    if-eqz p1, :cond_26

    array-length v0, p1

    const/4 v2, 0x1

    if-lt v0, v2, :cond_26

    array-length p1, p1

    const/16 v0, 0x300

    if-gt p1, v0, :cond_26

    iget-object p1, v1, Le1/o0;->c:[B

    iput-object p1, p0, Lz0/i;->m:[B

    invoke-virtual {p0}, Lz0/i;->reset()V

    return-void

    :cond_26
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "VMPC-MAC requires 1 to 768 bytes of IV"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "VMPC-MAC Init parameters must include a key"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_36
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "VMPC-MAC Init parameters must include an IV"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final reset()V
    .registers 10

    iget-object v0, p0, Lz0/i;->m:[B

    iget-object v1, p0, Lz0/i;->l:[B

    const/4 v2, 0x0

    iput-byte v2, p0, Lz0/i;->j:B

    const/16 v3, 0x100

    new-array v4, v3, [B

    iput-object v4, p0, Lz0/i;->i:[B

    move v4, v2

    :goto_e
    if-ge v4, v3, :cond_18

    iget-object v5, p0, Lz0/i;->i:[B

    int-to-byte v6, v4

    aput-byte v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_18
    move v3, v2

    :goto_19
    const/16 v4, 0x300

    if-ge v3, v4, :cond_3d

    iget-object v4, p0, Lz0/i;->i:[B

    iget-byte v5, p0, Lz0/i;->j:B

    and-int/lit16 v6, v3, 0xff

    aget-byte v7, v4, v6

    add-int/2addr v5, v7

    array-length v8, v0

    rem-int v8, v3, v8

    aget-byte v8, v0, v8

    add-int/2addr v5, v8

    and-int/lit16 v5, v5, 0xff

    aget-byte v5, v4, v5

    iput-byte v5, p0, Lz0/i;->j:B

    and-int/lit16 v5, v5, 0xff

    aget-byte v8, v4, v5

    aput-byte v8, v4, v6

    aput-byte v7, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_3d
    move v0, v2

    :goto_3e
    if-ge v0, v4, :cond_60

    iget-object v3, p0, Lz0/i;->i:[B

    iget-byte v5, p0, Lz0/i;->j:B

    and-int/lit16 v6, v0, 0xff

    aget-byte v7, v3, v6

    add-int/2addr v5, v7

    array-length v8, v1

    rem-int v8, v0, v8

    aget-byte v8, v1, v8

    add-int/2addr v5, v8

    and-int/lit16 v5, v5, 0xff

    aget-byte v5, v3, v5

    iput-byte v5, p0, Lz0/i;->j:B

    and-int/lit16 v5, v5, 0xff

    aget-byte v8, v3, v5

    aput-byte v8, v3, v6

    aput-byte v7, v3, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    :cond_60
    iput-byte v2, p0, Lz0/i;->h:B

    iput-byte v2, p0, Lz0/i;->q:B

    iput-byte v2, p0, Lz0/i;->p:B

    iput-byte v2, p0, Lz0/i;->o:B

    iput-byte v2, p0, Lz0/i;->n:B

    iput-byte v2, p0, Lz0/i;->g:B

    const/16 v0, 0x20

    new-array v1, v0, [B

    iput-object v1, p0, Lz0/i;->k:[B

    move v1, v2

    :goto_73
    if-ge v1, v0, :cond_7c

    iget-object v3, p0, Lz0/i;->k:[B

    aput-byte v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_73

    :cond_7c
    return-void
.end method

.method public final update(B)V
    .registers 12

    iget-object v0, p0, Lz0/i;->i:[B

    iget-byte v1, p0, Lz0/i;->j:B

    iget-byte v2, p0, Lz0/i;->h:B

    and-int/lit16 v3, v2, 0xff

    aget-byte v3, v0, v3

    add-int/2addr v1, v3

    and-int/lit16 v1, v1, 0xff

    aget-byte v1, v0, v1

    iput-byte v1, p0, Lz0/i;->j:B

    and-int/lit16 v3, v1, 0xff

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    aget-byte v3, v0, v3

    add-int/lit8 v3, v3, 0x1

    and-int/lit16 v3, v3, 0xff

    aget-byte v3, v0, v3

    xor-int/2addr p1, v3

    int-to-byte p1, p1

    iget-byte v3, p0, Lz0/i;->q:B

    iget-byte v4, p0, Lz0/i;->p:B

    add-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    aget-byte v3, v0, v3

    iput-byte v3, p0, Lz0/i;->q:B

    iget-byte v5, p0, Lz0/i;->o:B

    add-int/2addr v4, v5

    and-int/lit16 v4, v4, 0xff

    aget-byte v4, v0, v4

    iput-byte v4, p0, Lz0/i;->p:B

    iget-byte v6, p0, Lz0/i;->n:B

    add-int/2addr v5, v6

    and-int/lit16 v5, v5, 0xff

    aget-byte v5, v0, v5

    iput-byte v5, p0, Lz0/i;->o:B

    add-int/2addr v6, v1

    add-int/2addr v6, p1

    and-int/lit16 p1, v6, 0xff

    aget-byte p1, v0, p1

    iput-byte p1, p0, Lz0/i;->n:B

    iget-object v6, p0, Lz0/i;->k:[B

    iget-byte v7, p0, Lz0/i;->g:B

    and-int/lit8 v8, v7, 0x1f

    and-int/lit8 v9, v7, 0x1f

    aget-byte v9, v6, v9

    xor-int/2addr p1, v9

    int-to-byte p1, p1

    aput-byte p1, v6, v8

    add-int/lit8 p1, v7, 0x1

    and-int/lit8 p1, p1, 0x1f

    add-int/lit8 v8, v7, 0x1

    and-int/lit8 v8, v8, 0x1f

    aget-byte v8, v6, v8

    xor-int/2addr v5, v8

    int-to-byte v5, v5

    aput-byte v5, v6, p1

    add-int/lit8 p1, v7, 0x2

    and-int/lit8 p1, p1, 0x1f

    add-int/lit8 v5, v7, 0x2

    and-int/lit8 v5, v5, 0x1f

    aget-byte v5, v6, v5

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v6, p1

    add-int/lit8 p1, v7, 0x3

    and-int/lit8 p1, p1, 0x1f

    add-int/lit8 v4, v7, 0x3

    and-int/lit8 v4, v4, 0x1f

    aget-byte v4, v6, v4

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v6, p1

    add-int/lit8 v7, v7, 0x4

    and-int/lit8 p1, v7, 0x1f

    int-to-byte p1, p1

    iput-byte p1, p0, Lz0/i;->g:B

    and-int/lit16 p1, v2, 0xff

    aget-byte p1, v0, p1

    and-int/lit16 v3, v2, 0xff

    and-int/lit16 v4, v1, 0xff

    aget-byte v4, v0, v4

    aput-byte v4, v0, v3

    and-int/lit16 v1, v1, 0xff

    aput-byte p1, v0, v1

    add-int/lit8 v2, v2, 0x1

    and-int/lit16 p1, v2, 0xff

    int-to-byte p1, p1

    iput-byte p1, p0, Lz0/i;->h:B

    return-void
.end method

.method public final update([BII)V
    .registers 6

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_13

    const/4 v0, 0x0

    :goto_6
    if-ge v0, p3, :cond_12

    add-int v1, p2, v0

    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lz0/i;->update(B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_12
    return-void

    :cond_13
    new-instance p0, Lorg/bouncycastle/crypto/q;

    const-string p1, "input buffer too short"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
