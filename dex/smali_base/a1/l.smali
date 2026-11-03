.class public final La1/l;
.super Lorg/bouncycastle/crypto/n0;


# instance fields
.field public final h:I

.field public i:I

.field public final j:I

.field public k:[B

.field public l:[B

.field public final m:Lv0/f;

.field public n:Z

.field public o:Z

.field public p:[B

.field public final q:[B

.field public r:I


# direct methods
.method public constructor <init>(Lv0/f;I)V
    .registers 4

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/n0;-><init>(Lorg/bouncycastle/crypto/d;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, La1/l;->o:Z

    const/16 v0, 0x80

    if-ltz p2, :cond_1b

    if-gt p2, v0, :cond_1b

    const/16 v0, 0x10

    iput v0, p0, La1/l;->j:I

    iput-object p1, p0, La1/l;->m:Lv0/f;

    div-int/lit8 p2, p2, 0x8

    iput p2, p0, La1/l;->h:I

    new-array p1, p2, [B

    iput-object p1, p0, La1/l;->q:[B

    return-void

    :cond_1b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parameter bitBlockSize must be in range 0 < bitBlockSize <= "

    invoke-static {v0, p1}, Lb/b;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final b(II[B[B)I
    .registers 11

    iget v3, p0, La1/l;->h:I

    move-object v0, p0

    move v2, p1

    move v5, p2

    move-object v1, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/n0;->processBytes([BII[BI)I

    iget p0, v0, La1/l;->h:I

    return p0
.end method

.method public final c()I
    .registers 1

    iget p0, p0, La1/l;->h:I

    return p0
.end method

.method public final d(B)B
    .registers 8

    iget v0, p0, La1/l;->r:I

    iget v1, p0, La1/l;->h:I

    const/4 v2, 0x0

    if-nez v0, :cond_1d

    iget-object v0, p0, La1/l;->k:[B

    iget v3, p0, La1/l;->j:I

    invoke-static {v3, v0}, Lm4/d;->p(I[B)[B

    move-result-object v0

    array-length v3, v0

    new-array v3, v3, [B

    iget-object v4, p0, La1/l;->m:Lv0/f;

    invoke-virtual {v4, v2, v2, v0, v3}, Lv0/f;->b(II[B[B)I

    invoke-static {v1, v3}, Lm4/d;->p(I[B)[B

    move-result-object v0

    iput-object v0, p0, La1/l;->p:[B

    :cond_1d
    iget-object v0, p0, La1/l;->p:[B

    iget v3, p0, La1/l;->r:I

    aget-byte v0, v0, v3

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, La1/l;->r:I

    iget-boolean v5, p0, La1/l;->n:Z

    if-eqz v5, :cond_2e

    move p1, v0

    :cond_2e
    iget-object v5, p0, La1/l;->q:[B

    aput-byte p1, v5, v3

    if-ne v4, v1, :cond_4f

    iput v2, p0, La1/l;->r:I

    iget-object p1, p0, La1/l;->k:[B

    iget v3, p0, La1/l;->i:I

    sub-int/2addr v3, v1

    new-array v1, v3, [B

    array-length v4, p1

    sub-int/2addr v4, v3

    invoke-static {p1, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, La1/l;->k:[B

    invoke-static {v1, v2, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, La1/l;->k:[B

    iget p0, p0, La1/l;->i:I

    sub-int/2addr p0, v3

    invoke-static {v5, v2, p1, v3, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4f
    return v0
.end method

.method public final getAlgorithmName()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GOST3412_2015/CFB"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, La1/l;->m:Lv0/f;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p0, p0, La1/l;->j:I

    mul-int/lit8 p0, p0, 0x8

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final init(ZLorg/bouncycastle/crypto/g;)V
    .registers 8

    iput-boolean p1, p0, La1/l;->n:Z

    instance-of p1, p2, Le1/s0;

    iget-object v0, p0, La1/l;->m:Lv0/f;

    iget v1, p0, La1/l;->j:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_3a

    check-cast p2, Le1/s0;

    iget-object p1, p2, Le1/s0;->c:[B

    array-length v4, p1

    if-lt v4, v1, :cond_32

    array-length v1, p1

    iput v1, p0, La1/l;->i:I

    new-array v4, v1, [B

    iput-object v4, p0, La1/l;->k:[B

    new-array v1, v1, [B

    iput-object v1, p0, La1/l;->l:[B

    invoke-static {p1}, Lm4/d;->e([B)[B

    move-result-object p1

    iput-object p1, p0, La1/l;->l:[B

    iget-object v1, p0, La1/l;->k:[B

    array-length v4, p1

    invoke-static {p1, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p2, Le1/s0;->d:Lorg/bouncycastle/crypto/g;

    if-eqz p1, :cond_4f

    invoke-virtual {v0, v2, p1}, Lv0/f;->init(ZLorg/bouncycastle/crypto/g;)V

    goto :goto_4f

    :cond_32
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parameter m must blockSize <= m"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3a
    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, La1/l;->i:I

    new-array p1, v1, [B

    iput-object p1, p0, La1/l;->k:[B

    new-array v1, v1, [B

    iput-object v1, p0, La1/l;->l:[B

    array-length v4, v1

    invoke-static {v1, v3, p1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz p2, :cond_4f

    invoke-virtual {v0, v2, p2}, Lv0/f;->init(ZLorg/bouncycastle/crypto/g;)V

    :cond_4f
    :goto_4f
    iput-boolean v2, p0, La1/l;->o:Z

    return-void
.end method

.method public final reset()V
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, La1/l;->r:I

    iget-object v1, p0, La1/l;->q:[B

    invoke-static {v1}, Lm4/d;->d([B)V

    iget-object v1, p0, La1/l;->p:[B

    invoke-static {v1}, Lm4/d;->d([B)V

    iget-boolean v1, p0, La1/l;->o:Z

    if-eqz v1, :cond_1e

    iget-object v1, p0, La1/l;->l:[B

    iget-object v2, p0, La1/l;->k:[B

    array-length v3, v1

    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p0, p0, La1/l;->m:Lv0/f;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1e
    return-void
.end method
