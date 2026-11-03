.class public final Lv0/m0;
.super Lv0/d0;


# virtual methods
.method public final c()I
    .registers 1

    const/16 p0, 0x18

    return p0
.end method

.method public final g([B[B)V
    .registers 8

    if-eqz p1, :cond_75

    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_6d

    invoke-super {p0, p1, p2}, Lv0/d0;->g([B[B)V

    const/16 p1, 0x8

    iget-object p0, p0, Lv0/d0;->h:[I

    const/4 v0, 0x2

    invoke-static {p2, p1, p0, p1, v0}, Lm4/d;->B([BI[III)V

    array-length v1, p0

    new-array v1, v1, [I

    const/16 v2, 0x14

    invoke-static {v2, p0, v1}, Lv0/d0;->f(I[I[I)V

    const/4 v2, 0x0

    aget v3, v1, v2

    aget v2, p0, v2

    sub-int/2addr v3, v2

    const/4 v2, 0x1

    aput v3, p0, v2

    const/4 v2, 0x5

    aget v3, v1, v2

    aget v2, p0, v2

    sub-int/2addr v3, v2

    aput v3, p0, v0

    const/16 v2, 0xa

    aget v3, v1, v2

    aget v2, p0, v2

    sub-int/2addr v3, v2

    const/4 v2, 0x3

    aput v3, p0, v2

    const/16 v2, 0xf

    aget v3, v1, v2

    aget v2, p0, v2

    sub-int/2addr v3, v2

    const/4 v2, 0x4

    aput v3, p0, v2

    const/4 v2, 0x6

    aget v3, v1, v2

    aget v4, p0, v2

    sub-int/2addr v3, v4

    const/16 v4, 0xb

    aput v3, p0, v4

    const/4 v3, 0x7

    aget v4, v1, v3

    aget v3, p0, v3

    sub-int/2addr v4, v3

    const/16 v3, 0xc

    aput v4, p0, v3

    aget v3, v1, p1

    aget p1, p0, p1

    sub-int/2addr v3, p1

    const/16 p1, 0xd

    aput v3, p0, p1

    const/16 p1, 0x9

    aget v1, v1, p1

    aget p1, p0, p1

    sub-int/2addr v1, p1

    const/16 p1, 0xe

    aput v1, p0, p1

    const/16 p1, 0x10

    invoke-static {p2, p1, p0, v2, v0}, Lm4/d;->B([BI[III)V

    return-void

    :cond_6d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "XSalsa20 requires a 256 bit key"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_75
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "XSalsa20 doesn\'t support re-init with null key"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getAlgorithmName()Ljava/lang/String;
    .registers 1

    const-string p0, "XSalsa20"

    return-object p0
.end method
