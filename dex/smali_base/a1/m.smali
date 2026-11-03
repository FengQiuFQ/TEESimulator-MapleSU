.class public final La1/m;
.super Lorg/bouncycastle/crypto/n0;


# instance fields
.field public final synthetic h:I

.field public i:I

.field public j:I

.field public k:[B

.field public l:[B

.field public m:[B

.field public n:Lv0/f;

.field public o:I

.field public p:Z


# direct methods
.method public synthetic constructor <init>(Lorg/bouncycastle/crypto/d;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, La1/m;->h:I

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/n0;-><init>(Lorg/bouncycastle/crypto/d;)V

    return-void
.end method

.method public constructor <init>(Lv0/f;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, La1/m;->h:I

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/n0;-><init>(Lorg/bouncycastle/crypto/d;)V

    iput v0, p0, La1/m;->o:I

    iput-object p1, p0, La1/m;->n:Lv0/f;

    const/16 p1, 0x10

    iput p1, p0, La1/m;->j:I

    iput p1, p0, La1/m;->i:I

    new-array p1, p1, [B

    iput-object p1, p0, La1/m;->k:[B

    return-void
.end method


# virtual methods
.method public final b(II[B[B)I
    .registers 16

    iget v0, p0, La1/m;->h:I

    packed-switch v0, :pswitch_data_24

    iget v4, p0, La1/m;->j:I

    move-object v1, p0

    move v3, p1

    move v6, p2

    move-object v2, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/n0;->processBytes([BII[BI)I

    iget p0, v1, La1/m;->j:I

    return p0

    :pswitch_12
    move-object v1, p0

    move v3, p1

    move v6, p2

    move-object v2, p3

    move-object v5, p4

    iget v8, v1, La1/m;->i:I

    move v7, v3

    move-object v9, v5

    move v10, v6

    move-object v5, v1

    move-object v6, v2

    invoke-virtual/range {v5 .. v10}, Lorg/bouncycastle/crypto/n0;->processBytes([BII[BI)I

    iget p0, v1, La1/m;->i:I

    return p0

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_12
    .end packed-switch
.end method

.method public final c()I
    .registers 2

    iget v0, p0, La1/m;->h:I

    packed-switch v0, :pswitch_data_c

    iget p0, p0, La1/m;->j:I

    return p0

    :pswitch_8
    iget p0, p0, La1/m;->i:I

    return p0

    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_8
    .end packed-switch
.end method

.method public final d(B)B
    .registers 8

    iget v0, p0, La1/m;->h:I

    packed-switch v0, :pswitch_data_76

    iget v0, p0, La1/m;->j:I

    iget-object v1, p0, La1/m;->m:[B

    iget v2, p0, La1/m;->o:I

    const/4 v3, 0x0

    if-nez v2, :cond_19

    iget-object v2, p0, La1/m;->k:[B

    invoke-static {v0, v2}, Lm4/d;->p(I[B)[B

    move-result-object v2

    iget-object v4, p0, La1/m;->n:Lv0/f;

    invoke-virtual {v4, v3, v3, v2, v1}, Lv0/f;->b(II[B[B)I

    :cond_19
    iget v2, p0, La1/m;->o:I

    aget-byte v4, v1, v2

    xor-int/2addr p1, v4

    int-to-byte p1, p1

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, La1/m;->o:I

    if-ne v2, v0, :cond_40

    iput v3, p0, La1/m;->o:I

    iget-object v2, p0, La1/m;->k:[B

    iget v4, p0, La1/m;->i:I

    sub-int/2addr v4, v0

    new-array v0, v4, [B

    array-length v5, v2

    sub-int/2addr v5, v4

    invoke-static {v2, v5, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, La1/m;->k:[B

    invoke-static {v0, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, La1/m;->k:[B

    iget p0, p0, La1/m;->i:I

    sub-int/2addr p0, v4

    invoke-static {v1, v3, v0, v4, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_40
    return p1

    :pswitch_41
    iget v0, p0, La1/m;->i:I

    iget v1, p0, La1/m;->o:I

    const/4 v2, 0x0

    if-nez v1, :cond_58

    iget-object v1, p0, La1/m;->k:[B

    array-length v3, v1

    new-array v3, v3, [B

    iget-object v4, p0, La1/m;->n:Lv0/f;

    invoke-virtual {v4, v2, v2, v1, v3}, Lv0/f;->b(II[B[B)I

    invoke-static {v0, v3}, Lm4/d;->p(I[B)[B

    move-result-object v1

    iput-object v1, p0, La1/m;->m:[B

    :cond_58
    iget-object v1, p0, La1/m;->m:[B

    iget v3, p0, La1/m;->o:I

    aget-byte v1, v1, v3

    xor-int/2addr p1, v1

    int-to-byte p1, p1

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, La1/m;->o:I

    if-ne v3, v0, :cond_74

    iput v2, p0, La1/m;->o:I

    iget-object p0, p0, La1/m;->k:[B

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-byte v1, p0, v0

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    :cond_74
    return p1

    nop

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_41
    .end packed-switch
.end method

.method public final getAlgorithmName()Ljava/lang/String;
    .registers 2

    iget v0, p0, La1/m;->h:I

    packed-switch v0, :pswitch_data_16

    iget-object p0, p0, La1/m;->n:Lv0/f;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "GOST3412_2015/OFB"

    return-object p0

    :pswitch_d
    iget-object p0, p0, La1/m;->n:Lv0/f;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "GOST3412_2015/GCTR"

    return-object p0

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_d
    .end packed-switch
.end method

.method public final init(ZLorg/bouncycastle/crypto/g;)V
    .registers 9

    iget p1, p0, La1/m;->h:I

    packed-switch p1, :pswitch_data_b4

    iget-object p1, p0, La1/m;->n:Lv0/f;

    iget v0, p0, La1/m;->j:I

    instance-of v1, p2, Le1/s0;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3a

    check-cast p2, Le1/s0;

    iget-object v1, p2, Le1/s0;->c:[B

    array-length v4, v1

    if-lt v4, v0, :cond_32

    array-length v0, v1

    iput v0, p0, La1/m;->i:I

    new-array v4, v0, [B

    iput-object v4, p0, La1/m;->k:[B

    new-array v0, v0, [B

    iput-object v0, p0, La1/m;->l:[B

    invoke-static {v1}, Lm4/d;->e([B)[B

    move-result-object v0

    iput-object v0, p0, La1/m;->l:[B

    iget-object v1, p0, La1/m;->k:[B

    array-length v4, v0

    invoke-static {v0, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p2, p2, Le1/s0;->d:Lorg/bouncycastle/crypto/g;

    if-eqz p2, :cond_4f

    goto :goto_4c

    :cond_32
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parameter m must blockSize <= m"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3a
    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, La1/m;->i:I

    new-array v1, v0, [B

    iput-object v1, p0, La1/m;->k:[B

    new-array v0, v0, [B

    iput-object v0, p0, La1/m;->l:[B

    array-length v4, v0

    invoke-static {v0, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz p2, :cond_4f

    :goto_4c
    invoke-virtual {p1, v2, p2}, Lv0/f;->init(ZLorg/bouncycastle/crypto/g;)V

    :cond_4f
    iput-boolean v2, p0, La1/m;->p:Z

    return-void

    :pswitch_52
    iget p1, p0, La1/m;->i:I

    iget-object v0, p0, La1/m;->n:Lv0/f;

    iget v1, p0, La1/m;->j:I

    instance-of v2, p2, Le1/s0;

    const/4 v3, 0x1

    if-eqz v2, :cond_9d

    check-cast p2, Le1/s0;

    div-int/lit8 v2, v1, 0x2

    new-array v2, v2, [B

    iput-object v2, p0, La1/m;->l:[B

    new-array v2, v1, [B

    iput-object v2, p0, La1/m;->k:[B

    new-array p1, p1, [B

    iput-object p1, p0, La1/m;->m:[B

    iget-object p1, p2, Le1/s0;->c:[B

    invoke-static {p1}, Lm4/d;->e([B)[B

    move-result-object p1

    iput-object p1, p0, La1/m;->l:[B

    array-length v2, p1

    div-int/lit8 v4, v1, 0x2

    if-ne v2, v4, :cond_95

    iget-object v2, p0, La1/m;->k:[B

    array-length v4, p1

    const/4 v5, 0x0

    invoke-static {p1, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, La1/m;->l:[B

    array-length p1, p1

    :goto_84
    if-ge p1, v1, :cond_8d

    iget-object v2, p0, La1/m;->k:[B

    aput-byte v5, v2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_84

    :cond_8d
    iget-object p1, p2, Le1/s0;->d:Lorg/bouncycastle/crypto/g;

    if-eqz p1, :cond_b0

    invoke-virtual {v0, v3, p1}, Lv0/f;->init(ZLorg/bouncycastle/crypto/g;)V

    goto :goto_b0

    :cond_95
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parameter IV length must be == blockSize/2"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9d
    div-int/lit8 v2, v1, 0x2

    new-array v2, v2, [B

    iput-object v2, p0, La1/m;->l:[B

    new-array v1, v1, [B

    iput-object v1, p0, La1/m;->k:[B

    new-array p1, p1, [B

    iput-object p1, p0, La1/m;->m:[B

    if-eqz p2, :cond_b0

    invoke-virtual {v0, v3, p2}, Lv0/f;->init(ZLorg/bouncycastle/crypto/g;)V

    :cond_b0
    :goto_b0
    iput-boolean v3, p0, La1/m;->p:Z

    return-void

    nop

    :pswitch_data_b4
    .packed-switch 0x0
        :pswitch_52
    .end packed-switch
.end method

.method public final reset()V
    .registers 5

    iget v0, p0, La1/m;->h:I

    packed-switch v0, :pswitch_data_42

    iget-boolean v0, p0, La1/m;->p:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, La1/m;->l:[B

    iget-object v1, p0, La1/m;->k:[B

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, La1/m;->m:[B

    invoke-static {v0}, Lm4/d;->d([B)V

    iput v3, p0, La1/m;->o:I

    iget-object p0, p0, La1/m;->n:Lv0/f;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1e
    return-void

    :pswitch_1f
    iget-boolean v0, p0, La1/m;->p:Z

    if-eqz v0, :cond_41

    iget-object v0, p0, La1/m;->l:[B

    iget-object v1, p0, La1/m;->k:[B

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, La1/m;->l:[B

    array-length v0, v0

    :goto_2f
    iget v1, p0, La1/m;->j:I

    if-ge v0, v1, :cond_3a

    iget-object v1, p0, La1/m;->k:[B

    aput-byte v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    :cond_3a
    iput v3, p0, La1/m;->o:I

    iget-object p0, p0, La1/m;->n:Lv0/f;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_41
    return-void

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_1f
    .end packed-switch
.end method
