.class public final Lv3/u;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/b0;


# instance fields
.field public g:[B

.field public h:[B

.field public i:I

.field public j:I

.field public final k:Ljava/lang/Object;

.field public l:Ljava/lang/Object;

.field public m:Ljava/lang/Object;

.field public n:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lv0/l;ILa3/e;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    rem-int/lit8 v0, p2, 0x8

    if-nez v0, :cond_21

    new-instance v0, La1/c;

    invoke-direct {v0, p1}, La1/c;-><init>(Lorg/bouncycastle/crypto/d;)V

    iput-object v0, p0, Lv3/u;->k:Ljava/lang/Object;

    iput-object p3, p0, Lv3/u;->l:Ljava/lang/Object;

    const/16 p1, 0x8

    div-int/2addr p2, p1

    iput p2, p0, Lv3/u;->j:I

    new-array p2, p1, [B

    iput-object p2, p0, Lv3/u;->g:[B

    new-array p1, p1, [B

    iput-object p1, p0, Lv3/u;->h:[B

    const/4 p1, 0x0

    iput p1, p0, Lv3/u;->i:I

    return-void

    :cond_21
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "MAC size must be multiple of 8"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lv3/t;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lv3/u;->i:I

    const/4 v0, -0x1

    iput v0, p0, Lv3/u;->j:I

    const/4 v0, 0x0

    iput-object v0, p0, Lv3/u;->g:[B

    iput-object v0, p0, Lv3/u;->h:[B

    iput-object v0, p0, Lv3/u;->l:Ljava/lang/Object;

    iput-object v0, p0, Lv3/u;->m:Ljava/lang/Object;

    iput-object v0, p0, Lv3/u;->n:Ljava/lang/Object;

    iput-object p1, p0, Lv3/u;->k:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .registers 10

    iget p2, p0, Lv3/u;->j:I

    iget-object v0, p0, Lv3/u;->h:[B

    iget-object v1, p0, Lv3/u;->g:[B

    iget-object v2, p0, Lv3/u;->k:Ljava/lang/Object;

    check-cast v2, La1/c;

    iget-object v3, v2, La1/c;->k:Lorg/bouncycastle/crypto/d;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v3

    iget-object v4, p0, Lv3/u;->l:Ljava/lang/Object;

    check-cast v4, Ld1/a;

    const/4 v5, 0x0

    if-nez v4, :cond_22

    :goto_17
    iget v4, p0, Lv3/u;->i:I

    if-ge v4, v3, :cond_30

    aput-byte v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lv3/u;->i:I

    goto :goto_17

    :cond_22
    iget v6, p0, Lv3/u;->i:I

    if-ne v6, v3, :cond_2b

    invoke-virtual {v2, v5, v5, v0, v1}, La1/c;->b(II[B[B)I

    iput v5, p0, Lv3/u;->i:I

    :cond_2b
    iget v3, p0, Lv3/u;->i:I

    invoke-interface {v4, v3, v0}, Ld1/a;->k(I[B)I

    :cond_30
    invoke-virtual {v2, v5, v5, v0, v1}, La1/c;->b(II[B[B)I

    new-instance v0, Lv0/l;

    invoke-direct {v0}, Lv0/l;-><init>()V

    iget-object v2, p0, Lv3/u;->m:Ljava/lang/Object;

    check-cast v2, Le1/o0;

    invoke-virtual {v0, v5, v2}, Lv0/l;->init(ZLorg/bouncycastle/crypto/g;)V

    invoke-virtual {v0, v5, v5, v1, v1}, Lv0/l;->b(II[B[B)I

    iget-object v2, p0, Lv3/u;->n:Ljava/lang/Object;

    check-cast v2, Le1/o0;

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Lv0/l;->init(ZLorg/bouncycastle/crypto/g;)V

    invoke-virtual {v0, v5, v5, v1, v1}, Lv0/l;->b(II[B[B)I

    invoke-static {v1, v5, p1, v5, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Lv3/u;->reset()V

    return p2
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 1

    const-string p0, "ISO9797Alg3"

    return-object p0
.end method

.method public getMacSize()I
    .registers 1

    iget p0, p0, Lv3/u;->j:I

    return p0
.end method

.method public init(Lorg/bouncycastle/crypto/g;)V
    .registers 9

    iget-object v0, p0, Lv3/u;->k:Ljava/lang/Object;

    check-cast v0, La1/c;

    invoke-virtual {p0}, Lv3/u;->reset()V

    instance-of v1, p1, Le1/o0;

    if-nez v1, :cond_18

    instance-of v2, p1, Le1/s0;

    if-eqz v2, :cond_10

    goto :goto_18

    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "params must be an instance of KeyParameter or ParametersWithIV"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_18
    :goto_18
    if-eqz v1, :cond_1e

    move-object v1, p1

    check-cast v1, Le1/o0;

    goto :goto_25

    :cond_1e
    move-object v1, p1

    check-cast v1, Le1/s0;

    iget-object v1, v1, Le1/s0;->d:Lorg/bouncycastle/crypto/g;

    check-cast v1, Le1/o0;

    :goto_25
    iget-object v1, v1, Le1/o0;->c:[B

    array-length v2, v1

    const/4 v3, 0x0

    const/16 v4, 0x10

    const/16 v5, 0x8

    if-ne v2, v4, :cond_3e

    new-instance v2, Le1/o0;

    invoke-direct {v2, v1, v3, v5}, Le1/o0;-><init>([BII)V

    new-instance v3, Le1/o0;

    invoke-direct {v3, v1, v5, v5}, Le1/o0;-><init>([BII)V

    iput-object v3, p0, Lv3/u;->m:Ljava/lang/Object;

    iput-object v2, p0, Lv3/u;->n:Ljava/lang/Object;

    goto :goto_56

    :cond_3e
    array-length v2, v1

    const/16 v6, 0x18

    if-ne v2, v6, :cond_6c

    new-instance v2, Le1/o0;

    invoke-direct {v2, v1, v3, v5}, Le1/o0;-><init>([BII)V

    new-instance v3, Le1/o0;

    invoke-direct {v3, v1, v5, v5}, Le1/o0;-><init>([BII)V

    iput-object v3, p0, Lv3/u;->m:Ljava/lang/Object;

    new-instance v3, Le1/o0;

    invoke-direct {v3, v1, v4, v5}, Le1/o0;-><init>([BII)V

    iput-object v3, p0, Lv3/u;->n:Ljava/lang/Object;

    :goto_56
    instance-of p0, p1, Le1/s0;

    const/4 v1, 0x1

    if-eqz p0, :cond_68

    new-instance p0, Le1/s0;

    check-cast p1, Le1/s0;

    iget-object p1, p1, Le1/s0;->c:[B

    invoke-direct {p0, v2, p1}, Le1/s0;-><init>(Lorg/bouncycastle/crypto/g;[B)V

    invoke-virtual {v0, v1, p0}, La1/c;->init(ZLorg/bouncycastle/crypto/g;)V

    return-void

    :cond_68
    invoke-virtual {v0, v1, v2}, La1/c;->init(ZLorg/bouncycastle/crypto/g;)V

    return-void

    :cond_6c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Key must be either 112 or 168 bit long"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public reset()V
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lv3/u;->h:[B

    array-length v3, v2

    if-ge v1, v3, :cond_c

    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_c
    iput v0, p0, Lv3/u;->i:I

    iget-object p0, p0, Lv3/u;->k:Ljava/lang/Object;

    check-cast p0, La1/c;

    invoke-virtual {p0}, La1/c;->reset()V

    return-void
.end method

.method public update(B)V
    .registers 6

    iget v0, p0, Lv3/u;->i:I

    iget-object v1, p0, Lv3/u;->h:[B

    array-length v2, v1

    if-ne v0, v2, :cond_13

    iget-object v0, p0, Lv3/u;->k:Ljava/lang/Object;

    check-cast v0, La1/c;

    iget-object v2, p0, Lv3/u;->g:[B

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, La1/c;->b(II[B[B)I

    iput v3, p0, Lv3/u;->i:I

    :cond_13
    iget v0, p0, Lv3/u;->i:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lv3/u;->i:I

    aput-byte p1, v1, v0

    return-void
.end method

.method public update([BII)V
    .registers 10

    iget-object v0, p0, Lv3/u;->g:[B

    iget-object v1, p0, Lv3/u;->h:[B

    iget-object v2, p0, Lv3/u;->k:Ljava/lang/Object;

    check-cast v2, La1/c;

    if-ltz p3, :cond_34

    iget-object v3, v2, La1/c;->k:Lorg/bouncycastle/crypto/d;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v3

    iget v4, p0, Lv3/u;->i:I

    sub-int v5, v3, v4

    if-le p3, v5, :cond_29

    invoke-static {p1, p2, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v4, v1, v0}, La1/c;->b(II[B[B)I

    iput v4, p0, Lv3/u;->i:I

    sub-int/2addr p3, v5

    add-int/2addr p2, v5

    :goto_21
    if-le p3, v3, :cond_29

    invoke-virtual {v2, p2, v4, p1, v0}, La1/c;->b(II[B[B)I

    sub-int/2addr p3, v3

    add-int/2addr p2, v3

    goto :goto_21

    :cond_29
    iget v0, p0, Lv3/u;->i:I

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lv3/u;->i:I

    add-int/2addr p1, p3

    iput p1, p0, Lv3/u;->i:I

    return-void

    :cond_34
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t have a negative input length!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
