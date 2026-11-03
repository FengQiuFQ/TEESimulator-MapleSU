.class public final Lv0/l0;
.super Lv0/k0;


# virtual methods
.method public final a([B[B)V
    .registers 11

    const/4 v0, 0x0

    iput-byte v0, p0, Lv0/k0;->i:B

    const/16 v1, 0x100

    new-array v2, v1, [B

    iput-object v2, p0, Lv0/k0;->h:[B

    move v2, v0

    :goto_a
    if-ge v2, v1, :cond_14

    iget-object v3, p0, Lv0/k0;->h:[B

    int-to-byte v4, v2

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_14
    move v1, v0

    :goto_15
    const/16 v2, 0x300

    if-ge v1, v2, :cond_3b

    iget-object v2, p0, Lv0/k0;->h:[B

    iget-byte v3, p0, Lv0/k0;->i:B

    and-int/lit16 v4, v1, 0xff

    aget-byte v5, v2, v4

    add-int/2addr v3, v5

    array-length v6, p1

    rem-int v6, v1, v6

    aget-byte v6, p1, v6

    add-int/2addr v3, v6

    and-int/lit16 v3, v3, 0xff

    aget-byte v3, v2, v3

    iput-byte v3, p0, Lv0/k0;->i:B

    and-int/lit16 v6, v3, 0xff

    aget-byte v6, v2, v6

    aput-byte v6, v2, v4

    and-int/lit16 v3, v3, 0xff

    aput-byte v5, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_3b
    move v1, v0

    :goto_3c
    if-ge v1, v2, :cond_60

    iget-object v3, p0, Lv0/k0;->h:[B

    iget-byte v4, p0, Lv0/k0;->i:B

    and-int/lit16 v5, v1, 0xff

    aget-byte v6, v3, v5

    add-int/2addr v4, v6

    array-length v7, p2

    rem-int v7, v1, v7

    aget-byte v7, p2, v7

    add-int/2addr v4, v7

    and-int/lit16 v4, v4, 0xff

    aget-byte v4, v3, v4

    iput-byte v4, p0, Lv0/k0;->i:B

    and-int/lit16 v7, v4, 0xff

    aget-byte v7, v3, v7

    aput-byte v7, v3, v5

    and-int/lit16 v4, v4, 0xff

    aput-byte v6, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    :cond_60
    move p2, v0

    :goto_61
    if-ge p2, v2, :cond_85

    iget-object v1, p0, Lv0/k0;->h:[B

    iget-byte v3, p0, Lv0/k0;->i:B

    and-int/lit16 v4, p2, 0xff

    aget-byte v5, v1, v4

    add-int/2addr v3, v5

    array-length v6, p1

    rem-int v6, p2, v6

    aget-byte v6, p1, v6

    add-int/2addr v3, v6

    and-int/lit16 v3, v3, 0xff

    aget-byte v3, v1, v3

    iput-byte v3, p0, Lv0/k0;->i:B

    and-int/lit16 v6, v3, 0xff

    aget-byte v6, v1, v6

    aput-byte v6, v1, v4

    and-int/lit16 v3, v3, 0xff

    aput-byte v5, v1, v3

    add-int/lit8 p2, p2, 0x1

    goto :goto_61

    :cond_85
    iput-byte v0, p0, Lv0/k0;->g:B

    return-void
.end method

.method public final getAlgorithmName()Ljava/lang/String;
    .registers 1

    const-string p0, "VMPC-KSA3"

    return-object p0
.end method
