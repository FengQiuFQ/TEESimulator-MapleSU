.class public final Lx0/q;
.super Lorg/bouncycastle/crypto/e0;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/v;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx0/q;->a:Ljava/lang/Object;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/v;->getDigestSize()I

    move-result v0

    iput v0, p0, Lx0/q;->b:I

    check-cast p1, Lorg/bouncycastle/crypto/w;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/w;->getByteLength()I

    move-result p1

    iput p1, p0, Lx0/q;->c:I

    return-void
.end method


# virtual methods
.method public final generateDerivedKey(II)[B
    .registers 21

    move-object/from16 v0, p0

    move/from16 v1, p2

    iget v2, v0, Lx0/q;->c:I

    new-array v3, v2, [B

    new-array v4, v1, [B

    const/4 v5, 0x0

    move v6, v5

    :goto_c
    if-eq v6, v2, :cond_16

    move/from16 v7, p1

    int-to-byte v8, v7

    aput-byte v8, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    :cond_16
    iget-object v6, v0, Lorg/bouncycastle/crypto/e0;->salt:[B

    const/4 v7, 0x1

    if-eqz v6, :cond_34

    array-length v8, v6

    if-eqz v8, :cond_34

    array-length v6, v6

    add-int/2addr v6, v2

    sub-int/2addr v6, v7

    div-int/2addr v6, v2

    mul-int/2addr v6, v2

    new-array v8, v6, [B

    move v9, v5

    :goto_26
    if-eq v9, v6, :cond_36

    iget-object v10, v0, Lorg/bouncycastle/crypto/e0;->salt:[B

    array-length v11, v10

    rem-int v11, v9, v11

    aget-byte v10, v10, v11

    aput-byte v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_26

    :cond_34
    new-array v8, v5, [B

    :cond_36
    iget-object v6, v0, Lorg/bouncycastle/crypto/e0;->password:[B

    if-eqz v6, :cond_53

    array-length v9, v6

    if-eqz v9, :cond_53

    array-length v6, v6

    add-int/2addr v6, v2

    sub-int/2addr v6, v7

    div-int/2addr v6, v2

    mul-int/2addr v6, v2

    new-array v9, v6, [B

    move v10, v5

    :goto_45
    if-eq v10, v6, :cond_55

    iget-object v11, v0, Lorg/bouncycastle/crypto/e0;->password:[B

    array-length v12, v11

    rem-int v12, v10, v12

    aget-byte v11, v11, v12

    aput-byte v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_45

    :cond_53
    new-array v9, v5, [B

    :cond_55
    array-length v6, v8

    array-length v10, v9

    add-int/2addr v6, v10

    new-array v10, v6, [B

    array-length v11, v8

    invoke-static {v8, v5, v10, v5, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v8, v8

    array-length v11, v9

    invoke-static {v9, v5, v10, v8, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v8, v2, [B

    iget v9, v0, Lx0/q;->b:I

    add-int v11, v1, v9

    sub-int/2addr v11, v7

    div-int/2addr v11, v9

    new-array v12, v9, [B

    move v13, v7

    :goto_6e
    if-gt v13, v11, :cond_f4

    iget-object v14, v0, Lx0/q;->a:Ljava/lang/Object;

    invoke-interface {v14, v3, v5, v2}, Lorg/bouncycastle/crypto/v;->update([BII)V

    invoke-interface {v14, v10, v5, v6}, Lorg/bouncycastle/crypto/v;->update([BII)V

    invoke-interface {v14, v12, v5}, Lorg/bouncycastle/crypto/v;->doFinal([BI)I

    move/from16 p1, v7

    move/from16 v15, p1

    :goto_7f
    iget v7, v0, Lorg/bouncycastle/crypto/e0;->iterationCount:I

    if-ge v15, v7, :cond_8c

    invoke-interface {v14, v12, v5, v9}, Lorg/bouncycastle/crypto/v;->update([BII)V

    invoke-interface {v14, v12, v5}, Lorg/bouncycastle/crypto/v;->doFinal([BI)I

    add-int/lit8 v15, v15, 0x1

    goto :goto_7f

    :cond_8c
    move v7, v5

    :goto_8d
    if-eq v7, v2, :cond_98

    rem-int v14, v7, v9

    aget-byte v14, v12, v14

    aput-byte v14, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_8d

    :cond_98
    move v7, v5

    :goto_99
    div-int v14, v6, v2

    if-eq v7, v14, :cond_d8

    mul-int v14, v7, v2

    add-int/lit8 v15, v2, -0x1

    aget-byte v15, v8, v15

    and-int/lit16 v15, v15, 0xff

    add-int v16, v14, v2

    add-int/lit8 v16, v16, -0x1

    aget-byte v5, v10, v16

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v15, v5

    add-int/lit8 v15, v15, 0x1

    int-to-byte v5, v15

    aput-byte v5, v10, v16

    ushr-int/lit8 v5, v15, 0x8

    add-int/lit8 v15, v2, -0x2

    :goto_b7
    if-ltz v15, :cond_d2

    aget-byte v0, v8, v15

    and-int/lit16 v0, v0, 0xff

    add-int v16, v14, v15

    move/from16 v17, v0

    aget-byte v0, v10, v16

    and-int/lit16 v0, v0, 0xff

    add-int v0, v17, v0

    add-int/2addr v0, v5

    int-to-byte v5, v0

    aput-byte v5, v10, v16

    ushr-int/lit8 v5, v0, 0x8

    add-int/lit8 v15, v15, -0x1

    move-object/from16 v0, p0

    goto :goto_b7

    :cond_d2
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    const/4 v5, 0x0

    goto :goto_99

    :cond_d8
    if-ne v13, v11, :cond_e4

    add-int/lit8 v0, v13, -0x1

    mul-int/2addr v0, v9

    sub-int v5, v1, v0

    const/4 v7, 0x0

    invoke-static {v12, v7, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_eb

    :cond_e4
    const/4 v7, 0x0

    add-int/lit8 v0, v13, -0x1

    mul-int/2addr v0, v9

    invoke-static {v12, v7, v4, v0, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_eb
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    move v5, v7

    move/from16 v7, p1

    goto/16 :goto_6e

    :cond_f4
    return-object v4
.end method

.method public final generateDerivedMacParameters(I)Lorg/bouncycastle/crypto/g;
    .registers 4

    div-int/lit8 p1, p1, 0x8

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lx0/q;->generateDerivedKey(II)[B

    move-result-object p0

    new-instance v0, Le1/o0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Le1/o0;-><init>([BII)V

    return-object v0
.end method

.method public final generateDerivedParameters(I)Lorg/bouncycastle/crypto/g;
    .registers 4

    div-int/lit8 p1, p1, 0x8

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lx0/q;->generateDerivedKey(II)[B

    move-result-object p0

    new-instance v0, Le1/o0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Le1/o0;-><init>([BII)V

    return-object v0
.end method

.method public final generateDerivedParameters(II)Lorg/bouncycastle/crypto/g;
    .registers 7

    div-int/lit8 p1, p1, 0x8

    div-int/lit8 p2, p2, 0x8

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lx0/q;->generateDerivedKey(II)[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1, p2}, Lx0/q;->generateDerivedKey(II)[B

    move-result-object p0

    new-instance v1, Le1/s0;

    new-instance v2, Le1/o0;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, p1}, Le1/o0;-><init>([BII)V

    invoke-direct {v1, v2, p0, v3, p2}, Le1/s0;-><init>(Lorg/bouncycastle/crypto/g;[BII)V

    return-object v1
.end method
