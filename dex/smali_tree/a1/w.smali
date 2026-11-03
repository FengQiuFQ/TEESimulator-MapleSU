.class public final La1/w;
.super Lorg/bouncycastle/crypto/n0;


# instance fields
.field public final synthetic h:I

.field public final i:Lorg/bouncycastle/crypto/d;

.field public j:I

.field public k:[B

.field public final l:[B

.field public final m:[B

.field public n:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/d;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, La1/w;->h:I

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/n0;-><init>(Lorg/bouncycastle/crypto/d;)V

    iput-object p1, p0, La1/w;->i:Lorg/bouncycastle/crypto/d;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/d;->c()I

    move-result p1

    iput p1, p0, La1/w;->j:I

    new-array v0, p1, [B

    iput-object v0, p0, La1/w;->k:[B

    new-array v0, p1, [B

    iput-object v0, p0, La1/w;->l:[B

    new-array p1, p1, [B

    iput-object p1, p0, La1/w;->m:[B

    const/4 p1, 0x0

    iput p1, p0, La1/w;->n:I

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/d;I)V
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, La1/w;->h:I

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/n0;-><init>(Lorg/bouncycastle/crypto/d;)V

    invoke-interface {p1}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v0

    const/16 v1, 0x8

    mul-int/2addr v0, v1

    if-gt p2, v0, :cond_33

    if-lt p2, v1, :cond_33

    rem-int/lit8 v0, p2, 0x8

    if-nez v0, :cond_33

    iput-object p1, p0, La1/w;->i:Lorg/bouncycastle/crypto/d;

    div-int/2addr p2, v1

    iput p2, p0, La1/w;->n:I

    invoke-interface {p1}, Lorg/bouncycastle/crypto/d;->c()I

    move-result p2

    new-array p2, p2, [B

    iput-object p2, p0, La1/w;->k:[B

    invoke-interface {p1}, Lorg/bouncycastle/crypto/d;->c()I

    move-result p2

    new-array p2, p2, [B

    iput-object p2, p0, La1/w;->l:[B

    invoke-interface {p1}, Lorg/bouncycastle/crypto/d;->c()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, La1/w;->m:[B

    return-void

    :cond_33
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "0FB"

    const-string v0, " not supported"

    invoke-static {p1, v0, p2}, Lb/b;->g(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final b(II[B[B)I
    .registers 14

    iget v1, p0, La1/w;->h:I

    packed-switch v1, :pswitch_data_5c

    iget v6, p0, La1/w;->j:I

    iget v1, p0, La1/w;->n:I

    if-eqz v1, :cond_16

    iget v3, p0, La1/w;->j:I

    move-object v0, p0

    move v2, p1

    move v5, p2

    move-object v1, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, La1/w;->processBytes([BII[BI)I

    goto :goto_3e

    :cond_16
    add-int v2, p1, v6

    array-length v3, p3

    if-gt v2, v3, :cond_47

    add-int v2, p2, v6

    array-length v3, p4

    if-gt v2, v3, :cond_3f

    iget-object v2, p0, La1/w;->i:Lorg/bouncycastle/crypto/d;

    iget-object v3, p0, La1/w;->l:[B

    const/4 v5, 0x0

    iget-object v7, p0, La1/w;->m:[B

    invoke-interface {v2, v5, v5, v3, v7}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    :goto_2a
    if-ge v5, v6, :cond_3b

    add-int v2, p2, v5

    add-int v3, p1, v5

    aget-byte v3, p3, v3

    aget-byte v8, v7, v5

    xor-int/2addr v3, v8

    int-to-byte v3, v3

    aput-byte v3, p4, v2

    add-int/lit8 v5, v5, 0x1

    goto :goto_2a

    :cond_3b
    invoke-virtual {p0}, La1/w;->f()V

    :goto_3e
    return v6

    :cond_3f
    new-instance v0, Lorg/bouncycastle/crypto/d0;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_47
    new-instance v0, Lorg/bouncycastle/crypto/q;

    const-string v1, "input buffer too small"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_4f
    iget v3, p0, La1/w;->n:I

    move-object v0, p0

    move v2, p1

    move v5, p2

    move-object v1, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/n0;->processBytes([BII[BI)I

    iget v0, p0, La1/w;->n:I

    return v0

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_4f
    .end packed-switch
.end method

.method public final c()I
    .registers 2

    iget v0, p0, La1/w;->h:I

    packed-switch v0, :pswitch_data_10

    iget-object p0, p0, La1/w;->i:Lorg/bouncycastle/crypto/d;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/d;->c()I

    move-result p0

    return p0

    :pswitch_c
    iget p0, p0, La1/w;->n:I

    return p0

    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_c
    .end packed-switch
.end method

.method public final d(B)B
    .registers 8

    iget v0, p0, La1/w;->h:I

    packed-switch v0, :pswitch_data_5c

    iget v0, p0, La1/w;->n:I

    iget-object v1, p0, La1/w;->l:[B

    iget-object v2, p0, La1/w;->m:[B

    const/4 v3, 0x0

    if-nez v0, :cond_21

    invoke-virtual {p0}, La1/w;->e()V

    iget-object v0, p0, La1/w;->i:Lorg/bouncycastle/crypto/d;

    invoke-interface {v0, v3, v3, v1, v2}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    iget v0, p0, La1/w;->n:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, La1/w;->n:I

    aget-byte p0, v2, v0

    xor-int/2addr p0, p1

    int-to-byte p0, p0

    goto :goto_32

    :cond_21
    add-int/lit8 v4, v0, 0x1

    iput v4, p0, La1/w;->n:I

    aget-byte v0, v2, v0

    xor-int/2addr p1, v0

    int-to-byte p1, p1

    array-length v0, v1

    if-ne v4, v0, :cond_31

    iput v3, p0, La1/w;->n:I

    invoke-virtual {p0}, La1/w;->f()V

    :cond_31
    move p0, p1

    :goto_32
    return p0

    :pswitch_33
    iget v0, p0, La1/w;->n:I

    iget v1, p0, La1/w;->j:I

    iget-object v2, p0, La1/w;->m:[B

    iget-object v3, p0, La1/w;->l:[B

    const/4 v4, 0x0

    if-nez v1, :cond_43

    iget-object v1, p0, La1/w;->i:Lorg/bouncycastle/crypto/d;

    invoke-interface {v1, v4, v4, v3, v2}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    :cond_43
    iget v1, p0, La1/w;->j:I

    add-int/lit8 v5, v1, 0x1

    iput v5, p0, La1/w;->j:I

    aget-byte v1, v2, v1

    xor-int/2addr p1, v1

    int-to-byte p1, p1

    if-ne v5, v0, :cond_5b

    iput v4, p0, La1/w;->j:I

    array-length p0, v3

    sub-int/2addr p0, v0

    invoke-static {v3, v0, v3, v4, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, v3

    sub-int/2addr p0, v0

    invoke-static {v2, v4, v3, p0, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5b
    return p1

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_33
    .end packed-switch
.end method

.method public e()V
    .registers 4

    iget-object v0, p0, La1/w;->k:[B

    array-length v1, v0

    iget v2, p0, La1/w;->j:I

    if-ge v1, v2, :cond_1e

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    iget-object p0, p0, La1/w;->l:[B

    aget-byte p0, p0, v1

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-byte v0, v0, v1

    if-ne p0, v0, :cond_16

    goto :goto_1e

    :cond_16
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Counter in CTR/SIC mode out of range."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1e
    :goto_1e
    return-void
.end method

.method public f()V
    .registers 3

    iget-object p0, p0, La1/w;->l:[B

    array-length v0, p0

    :cond_3
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_10

    aget-byte v1, p0, v0

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    if-eqz v1, :cond_3

    :cond_10
    return-void
.end method

.method public final getAlgorithmName()Ljava/lang/String;
    .registers 3

    iget v0, p0, La1/w;->h:I

    packed-switch v0, :pswitch_data_3c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, La1/w;->i:Lorg/bouncycastle/crypto/d;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/d;->getAlgorithmName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/SIC"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, La1/w;->i:Lorg/bouncycastle/crypto/d;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/d;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/OFB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, La1/w;->n:I

    mul-int/lit8 p0, p0, 0x8

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_1d
    .end packed-switch
.end method

.method public final init(ZLorg/bouncycastle/crypto/g;)V
    .registers 10

    iget p1, p0, La1/w;->h:I

    packed-switch p1, :pswitch_data_a8

    iget p1, p0, La1/w;->j:I

    instance-of v0, p2, Le1/s0;

    if-eqz v0, :cond_64

    check-cast p2, Le1/s0;

    iget-object v0, p2, Le1/s0;->c:[B

    invoke-static {v0}, Lm4/d;->e([B)[B

    move-result-object v0

    iput-object v0, p0, La1/w;->k:[B

    array-length v1, v0

    const-string v2, " bytes."

    if-lt p1, v1, :cond_4d

    div-int/lit8 v1, p1, 0x2

    const/16 v3, 0x8

    if-le v3, v1, :cond_22

    div-int/lit8 v3, p1, 0x2

    :cond_22
    array-length v0, v0

    sub-int v0, p1, v0

    if-gt v0, v3, :cond_35

    iget-object p1, p2, Le1/s0;->d:Lorg/bouncycastle/crypto/g;

    if-eqz p1, :cond_31

    iget-object p2, p0, La1/w;->i:Lorg/bouncycastle/crypto/d;

    const/4 v0, 0x1

    invoke-interface {p2, v0, p1}, Lorg/bouncycastle/crypto/d;->init(ZLorg/bouncycastle/crypto/g;)V

    :cond_31
    invoke-virtual {p0}, La1/w;->reset()V

    return-void

    :cond_35
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "CTR/SIC mode requires IV of at least: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-int/2addr p1, v3

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "CTR/SIC mode requires IV no greater than: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_64
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "CTR/SIC mode requires ParametersWithIV"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_6c
    iget-object p1, p0, La1/w;->k:[B

    instance-of v0, p2, Le1/s0;

    iget-object v1, p0, La1/w;->i:Lorg/bouncycastle/crypto/d;

    const/4 v2, 0x1

    if-eqz v0, :cond_9f

    check-cast p2, Le1/s0;

    iget-object v0, p2, Le1/s0;->c:[B

    array-length v3, v0

    array-length v4, p1

    const/4 v5, 0x0

    if-ge v3, v4, :cond_90

    array-length v3, p1

    array-length v4, v0

    sub-int/2addr v3, v4

    array-length v4, v0

    invoke-static {v0, v5, p1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v3, v5

    :goto_86
    array-length v4, p1

    array-length v6, v0

    sub-int/2addr v4, v6

    if-ge v3, v4, :cond_94

    aput-byte v5, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_86

    :cond_90
    array-length v3, p1

    invoke-static {v0, v5, p1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_94
    invoke-virtual {p0}, La1/w;->reset()V

    iget-object p0, p2, Le1/s0;->d:Lorg/bouncycastle/crypto/g;

    if-eqz p0, :cond_a7

    invoke-interface {v1, v2, p0}, Lorg/bouncycastle/crypto/d;->init(ZLorg/bouncycastle/crypto/g;)V

    goto :goto_a7

    :cond_9f
    invoke-virtual {p0}, La1/w;->reset()V

    if-eqz p2, :cond_a7

    invoke-interface {v1, v2, p2}, Lorg/bouncycastle/crypto/d;->init(ZLorg/bouncycastle/crypto/g;)V

    :cond_a7
    :goto_a7
    return-void

    :pswitch_data_a8
    .packed-switch 0x0
        :pswitch_6c
    .end packed-switch
.end method

.method public processBytes([BII[BI)I
    .registers 13

    iget v0, p0, La1/w;->h:I

    packed-switch v0, :pswitch_data_62

    invoke-super/range {p0 .. p5}, Lorg/bouncycastle/crypto/n0;->processBytes([BII[BI)I

    return p3

    :pswitch_9
    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_5a

    add-int v0, p5, p3

    array-length v1, p4

    if-gt v0, v1, :cond_52

    const/4 v0, 0x0

    move v1, v0

    :goto_15
    if-ge v1, p3, :cond_51

    iget v2, p0, La1/w;->n:I

    iget-object v3, p0, La1/w;->l:[B

    iget-object v4, p0, La1/w;->m:[B

    if-nez v2, :cond_36

    invoke-virtual {p0}, La1/w;->e()V

    iget-object v2, p0, La1/w;->i:Lorg/bouncycastle/crypto/d;

    invoke-interface {v2, v0, v0, v3, v4}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    add-int v2, p2, v1

    aget-byte v2, p1, v2

    iget v3, p0, La1/w;->n:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, La1/w;->n:I

    aget-byte v3, v4, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    goto :goto_4a

    :cond_36
    add-int v5, p2, v1

    aget-byte v5, p1, v5

    add-int/lit8 v6, v2, 0x1

    iput v6, p0, La1/w;->n:I

    aget-byte v2, v4, v2

    xor-int/2addr v2, v5

    int-to-byte v2, v2

    array-length v3, v3

    if-ne v6, v3, :cond_4a

    iput v0, p0, La1/w;->n:I

    invoke-virtual {p0}, La1/w;->f()V

    :cond_4a
    :goto_4a
    add-int v3, p5, v1

    aput-byte v2, p4, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_51
    return p3

    :cond_52
    new-instance p0, Lorg/bouncycastle/crypto/d0;

    const-string p1, "output buffer too short"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5a
    new-instance p0, Lorg/bouncycastle/crypto/q;

    const-string p1, "input buffer too small"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_9
    .end packed-switch
.end method

.method public final reset()V
    .registers 5

    iget v0, p0, La1/w;->h:I

    packed-switch v0, :pswitch_data_2a

    iget-object v0, p0, La1/w;->l:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    iget-object v2, p0, La1/w;->k:[B

    array-length v3, v2

    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, La1/w;->i:Lorg/bouncycastle/crypto/d;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/d;->reset()V

    iput v1, p0, La1/w;->n:I

    return-void

    :pswitch_19
    iget-object v0, p0, La1/w;->k:[B

    iget-object v1, p0, La1/w;->l:[B

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v3, p0, La1/w;->j:I

    iget-object p0, p0, La1/w;->i:Lorg/bouncycastle/crypto/d;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/d;->reset()V

    return-void

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_19
    .end packed-switch
.end method
