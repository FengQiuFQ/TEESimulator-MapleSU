.class public final La1/t;
.super Lorg/bouncycastle/crypto/n0;


# instance fields
.field public final h:[B

.field public final i:[B

.field public final j:[B

.field public k:I

.field public l:Z

.field public final m:Lorg/bouncycastle/crypto/d;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/d;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/n0;-><init>(Lorg/bouncycastle/crypto/d;)V

    iput-object p1, p0, La1/t;->m:Lorg/bouncycastle/crypto/d;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, La1/t;->h:[B

    invoke-interface {p1}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, La1/t;->i:[B

    invoke-interface {p1}, Lorg/bouncycastle/crypto/d;->c()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, La1/t;->j:[B

    return-void
.end method


# virtual methods
.method public final b(II[B[B)I
    .registers 14

    array-length v0, p3

    sub-int/2addr v0, p1

    iget-object v1, p0, La1/t;->m:Lorg/bouncycastle/crypto/d;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v2

    if-lt v0, v2, :cond_2b

    array-length v0, p4

    sub-int/2addr v0, p2

    invoke-interface {v1}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v2

    if-lt v0, v2, :cond_23

    invoke-interface {v1}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v6

    move-object v3, p0

    move v5, p1

    move v8, p2

    move-object v4, p3

    move-object v7, p4

    invoke-virtual/range {v3 .. v8}, Lorg/bouncycastle/crypto/n0;->processBytes([BII[BI)I

    invoke-interface {v1}, Lorg/bouncycastle/crypto/d;->c()I

    move-result p0

    return p0

    :cond_23
    new-instance p0, Lorg/bouncycastle/crypto/d0;

    const-string p1, "output buffer too short"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2b
    new-instance p0, Lorg/bouncycastle/crypto/q;

    const-string p1, "input buffer too short"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c()I
    .registers 1

    iget-object p0, p0, La1/t;->m:Lorg/bouncycastle/crypto/d;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/d;->c()I

    move-result p0

    return p0
.end method

.method public final d(B)B
    .registers 8

    iget v0, p0, La1/t;->k:I

    iget-object v1, p0, La1/t;->i:[B

    iget-object v2, p0, La1/t;->j:[B

    const/4 v3, 0x0

    if-nez v0, :cond_2b

    move v0, v3

    :goto_a
    array-length v4, v1

    if-ge v0, v4, :cond_1b

    add-int/lit8 v4, v0, 0x1

    aget-byte v5, v1, v0

    add-int/lit8 v5, v5, 0x1

    int-to-byte v5, v5

    aput-byte v5, v1, v0

    if-eqz v5, :cond_19

    goto :goto_1b

    :cond_19
    move v0, v4

    goto :goto_a

    :cond_1b
    :goto_1b
    iget-object v0, p0, La1/t;->m:Lorg/bouncycastle/crypto/d;

    invoke-interface {v0, v3, v3, v1, v2}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    iget v0, p0, La1/t;->k:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, La1/t;->k:I

    aget-byte p0, v2, v0

    xor-int/2addr p0, p1

    int-to-byte p0, p0

    return p0

    :cond_2b
    add-int/lit8 v4, v0, 0x1

    iput v4, p0, La1/t;->k:I

    aget-byte v0, v2, v0

    xor-int/2addr p1, v0

    int-to-byte p1, p1

    array-length v0, v1

    if-ne v4, v0, :cond_38

    iput v3, p0, La1/t;->k:I

    :cond_38
    return p1
.end method

.method public final getAlgorithmName()Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, La1/t;->m:Lorg/bouncycastle/crypto/d;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/d;->getAlgorithmName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/KCTR"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final init(ZLorg/bouncycastle/crypto/g;)V
    .registers 8

    const/4 p1, 0x1

    iput-boolean p1, p0, La1/t;->l:Z

    instance-of v0, p2, Le1/s0;

    if-eqz v0, :cond_25

    check-cast p2, Le1/s0;

    iget-object v0, p2, Le1/s0;->c:[B

    iget-object v1, p0, La1/t;->h:[B

    array-length v2, v1

    array-length v3, v0

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([BB)V

    array-length v4, v0

    invoke-static {v0, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p2, p2, Le1/s0;->d:Lorg/bouncycastle/crypto/g;

    if-eqz p2, :cond_21

    iget-object v0, p0, La1/t;->m:Lorg/bouncycastle/crypto/d;

    invoke-interface {v0, p1, p2}, Lorg/bouncycastle/crypto/d;->init(ZLorg/bouncycastle/crypto/g;)V

    :cond_21
    invoke-virtual {p0}, La1/t;->reset()V

    return-void

    :cond_25
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid parameter passed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final reset()V
    .registers 5

    iget-boolean v0, p0, La1/t;->l:Z

    iget-object v1, p0, La1/t;->m:Lorg/bouncycastle/crypto/d;

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    iget-object v0, p0, La1/t;->h:[B

    iget-object v3, p0, La1/t;->i:[B

    invoke-interface {v1, v2, v2, v0, v3}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    :cond_e
    invoke-interface {v1}, Lorg/bouncycastle/crypto/d;->reset()V

    iput v2, p0, La1/t;->k:I

    return-void
.end method
