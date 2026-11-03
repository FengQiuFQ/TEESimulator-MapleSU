.class public final Lv0/j;
.super Lv0/c0;


# virtual methods
.method public final init(ZLorg/bouncycastle/crypto/g;)V
    .registers 15

    instance-of v0, p2, Le1/t0;

    if-eqz v0, :cond_8

    check-cast p2, Le1/t0;

    iget-object p2, p2, Le1/t0;->d:Lorg/bouncycastle/crypto/g;

    :cond_8
    check-cast p2, Le1/v0;

    iget-object v0, p2, Le1/v0;->d:Lorg/bouncycastle/crypto/g;

    iget-object p2, p2, Le1/v0;->c:[B

    instance-of v1, v0, Le1/u0;

    if-eqz v1, :cond_1b

    check-cast v0, Le1/u0;

    iget-object v1, v0, Le1/u0;->c:Lorg/bouncycastle/crypto/g;

    check-cast v1, Le1/o0;

    iget-object v0, v0, Le1/u0;->d:[B

    goto :goto_1f

    :cond_1b
    move-object v1, v0

    check-cast v1, Le1/o0;

    const/4 v0, 0x0

    :goto_1f
    new-instance v2, Le1/o0;

    iget-object v1, v1, Le1/o0;->c:[B

    const/4 v3, 0x0

    move v4, v3

    :goto_25
    const/16 v5, 0x8

    if-eq v4, v5, :cond_79

    move v6, v3

    move v7, v6

    move v8, v7

    :goto_2c
    const/4 v9, 0x1

    if-eq v6, v5, :cond_41

    mul-int/lit8 v10, v6, 0x4

    invoke-static {v10, v1}, Lm4/d;->z(I[B)I

    move-result v10

    aget-byte v11, p2, v4

    shl-int/2addr v9, v6

    and-int/2addr v9, v11

    if-eqz v9, :cond_3d

    add-int/2addr v7, v10

    goto :goto_3e

    :cond_3d
    add-int/2addr v8, v10

    :goto_3e
    add-int/lit8 v6, v6, 0x1

    goto :goto_2c

    :cond_41
    new-array v6, v5, [B

    invoke-static {v6, v7, v3}, Lm4/d;->x([BII)V

    const/4 v7, 0x4

    invoke-static {v6, v8, v7}, Lm4/d;->x([BII)V

    new-instance v7, La1/n;

    new-instance v8, Lv0/p;

    invoke-direct {v8}, Lv0/p;-><init>()V

    invoke-direct {v7, v8}, La1/n;-><init>(Lorg/bouncycastle/crypto/d;)V

    new-instance v8, Le1/s0;

    new-instance v10, Le1/u0;

    new-instance v11, Le1/o0;

    invoke-direct {v11, v1}, Le1/o0;-><init>([B)V

    invoke-direct {v10, v11, v0}, Le1/u0;-><init>(Lorg/bouncycastle/crypto/g;[B)V

    invoke-direct {v8, v10, v6, v3, v5}, Le1/s0;-><init>(Lorg/bouncycastle/crypto/g;[BII)V

    invoke-virtual {v7, v9, v8}, La1/n;->init(ZLorg/bouncycastle/crypto/g;)V

    invoke-virtual {v7, v3, v3, v1, v1}, La1/n;->b(II[B[B)I

    invoke-virtual {v7, v5, v5, v1, v1}, La1/n;->b(II[B[B)I

    const/16 v5, 0x10

    invoke-virtual {v7, v5, v5, v1, v1}, La1/n;->b(II[B[B)I

    const/16 v5, 0x18

    invoke-virtual {v7, v5, v5, v1, v1}, La1/n;->b(II[B[B)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    :cond_79
    invoke-direct {v2, v1}, Le1/o0;-><init>([B)V

    if-eqz v0, :cond_8c

    new-instance v1, Le1/v0;

    new-instance v3, Le1/u0;

    invoke-direct {v3, v2, v0}, Le1/u0;-><init>(Lorg/bouncycastle/crypto/g;[B)V

    invoke-direct {v1, v3, p2}, Le1/v0;-><init>(Lorg/bouncycastle/crypto/g;[B)V

    invoke-super {p0, p1, v1}, Lv0/c0;->init(ZLorg/bouncycastle/crypto/g;)V

    return-void

    :cond_8c
    new-instance v0, Le1/v0;

    invoke-direct {v0, v2, p2}, Le1/v0;-><init>(Lorg/bouncycastle/crypto/g;[B)V

    invoke-super {p0, p1, v0}, Lv0/c0;->init(ZLorg/bouncycastle/crypto/g;)V

    return-void
.end method
