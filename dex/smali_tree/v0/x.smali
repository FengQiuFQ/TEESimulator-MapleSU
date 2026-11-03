.class public Lv0/x;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/p0;
.implements Lorg/bouncycastle/crypto/d;


# static fields
.field public static final m:[B


# instance fields
.field public final synthetic g:I

.field public h:Z

.field public i:Z

.field public j:Ljava/lang/Object;

.field public k:Ljava/lang/Object;

.field public l:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lv0/x;->m:[B

    return-void

    :array_a
    .array-data 1
        -0x5at
        -0x5at
        -0x5at
        -0x5at
        -0x5at
        -0x5at
        -0x5at
        -0x5at
    .end array-data
.end method

.method public synthetic constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    iput v0, p0, Lv0/x;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/d;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lv0/x;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lv0/x;->k:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lv0/x;->l:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lv0/x;->i:Z

    iput-object p1, p0, Lv0/x;->j:Ljava/lang/Object;

    iput-boolean v0, p0, Lv0/x;->h:Z

    return-void
.end method

.method public static e(I[B)I
    .registers 5

    add-int/lit8 v0, p0, 0x1

    aget-byte v1, p1, p0

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v2, p0, 0x2

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p0, p0, 0x3

    aget-byte v1, p1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    aget-byte p0, p1, p0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method public static f([BII)V
    .registers 6

    add-int/lit8 v0, p2, 0x1

    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p0, p2

    add-int/lit8 v1, p2, 0x2

    ushr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    add-int/lit8 p2, p2, 0x3

    ushr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    int-to-byte p1, p1

    aput-byte p1, p0, p2

    return-void
.end method


# virtual methods
.method public a(I[B)[B
    .registers 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lv0/x;->j:Ljava/lang/Object;

    check-cast v3, Lorg/bouncycastle/crypto/d;

    iget-object v4, v0, Lv0/x;->k:Ljava/lang/Object;

    check-cast v4, [B

    iget-boolean v5, v0, Lv0/x;->i:Z

    if-nez v5, :cond_104

    const/16 v5, 0x10

    if-lt v1, v5, :cond_fc

    div-int/lit8 v5, v1, 0x8

    mul-int/lit8 v6, v5, 0x8

    if-ne v6, v1, :cond_f4

    iget-boolean v6, v0, Lv0/x;->h:Z

    const/4 v7, 0x1

    xor-int/2addr v6, v7

    iget-object v0, v0, Lv0/x;->l:Ljava/lang/Object;

    check-cast v0, Le1/o0;

    invoke-interface {v3, v6, v0}, Lorg/bouncycastle/crypto/d;->init(ZLorg/bouncycastle/crypto/g;)V

    array-length v0, v4

    sub-int v0, v1, v0

    new-array v0, v0, [B

    array-length v6, v4

    new-array v6, v6, [B

    array-length v8, v4

    const/16 v9, 0x8

    add-int/2addr v8, v9

    new-array v8, v8, [B

    sub-int/2addr v5, v7

    const/4 v10, 0x0

    if-ne v5, v7, :cond_47

    invoke-interface {v3, v10, v10, v2, v8}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    array-length v12, v4

    invoke-static {v8, v10, v6, v10, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v12, v4

    invoke-static {v8, v12, v0, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_44
    move/from16 v17, v7

    goto :goto_91

    :cond_47
    array-length v12, v4

    invoke-static {v2, v10, v6, v10, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v12, v4

    array-length v13, v4

    sub-int v13, v1, v13

    invoke-static {v2, v12, v0, v10, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v12, 0x5

    :goto_53
    if-ltz v12, :cond_44

    move v13, v5

    :goto_56
    if-lt v13, v7, :cond_8c

    array-length v14, v4

    invoke-static {v6, v10, v8, v10, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v14, v13, -0x1

    mul-int/2addr v14, v9

    array-length v15, v4

    invoke-static {v0, v14, v8, v15, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    mul-int v15, v5, v12

    add-int/2addr v15, v13

    move/from16 v16, v7

    :goto_68
    if-eqz v15, :cond_7e

    int-to-byte v11, v15

    move/from16 v17, v7

    array-length v7, v4

    sub-int v7, v7, v16

    aget-byte v18, v8, v7

    xor-int v11, v18, v11

    int-to-byte v11, v11

    aput-byte v11, v8, v7

    ushr-int/lit8 v15, v15, 0x8

    add-int/lit8 v16, v16, 0x1

    move/from16 v7, v17

    goto :goto_68

    :cond_7e
    move/from16 v17, v7

    invoke-interface {v3, v10, v10, v8, v8}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    invoke-static {v8, v10, v6, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v8, v9, v0, v14, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v13, v13, -0x1

    goto :goto_56

    :cond_8c
    move/from16 v17, v7

    add-int/lit8 v12, v12, -0x1

    goto :goto_53

    :goto_91
    const-string v7, "checksum failed"

    move/from16 v11, v17

    if-eq v5, v11, :cond_a4

    invoke-static {v6, v4}, Lm4/d;->o([B[B)Z

    move-result v1

    if-eqz v1, :cond_9e

    goto :goto_f3

    :cond_9e
    new-instance v0, Lorg/bouncycastle/crypto/x;

    invoke-direct {v0, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a4
    invoke-static {v6, v4}, Lm4/d;->o([B[B)Z

    move-result v11

    if-nez v11, :cond_f3

    array-length v11, v4

    invoke-static {v2, v10, v6, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v11, v4

    array-length v12, v4

    sub-int/2addr v1, v12

    invoke-static {v2, v11, v0, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v11, 0x5

    :goto_b5
    if-ltz v11, :cond_e6

    array-length v1, v4

    invoke-static {v6, v10, v8, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v4

    invoke-static {v0, v10, v8, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    mul-int v1, v5, v11

    const/16 v17, 0x1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    :goto_c6
    if-eqz v1, :cond_d8

    int-to-byte v12, v1

    array-length v13, v4

    sub-int/2addr v13, v2

    aget-byte v14, v8, v13

    xor-int/2addr v12, v14

    int-to-byte v12, v12

    aput-byte v12, v8, v13

    ushr-int/lit8 v1, v1, 0x8

    const/16 v17, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_c6

    :cond_d8
    const/16 v17, 0x1

    invoke-interface {v3, v10, v10, v8, v8}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    invoke-static {v8, v10, v6, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v8, v9, v0, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v11, v11, -0x1

    goto :goto_b5

    :cond_e6
    invoke-static {v6, v4}, Lm4/d;->o([B[B)Z

    move-result v1

    if-eqz v1, :cond_ed

    goto :goto_f3

    :cond_ed
    new-instance v0, Lorg/bouncycastle/crypto/x;

    invoke-direct {v0, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f3
    :goto_f3
    return-object v0

    :cond_f4
    new-instance v0, Lorg/bouncycastle/crypto/x;

    const-string v1, "unwrap data must be a multiple of 8 bytes"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_fc
    new-instance v0, Lorg/bouncycastle/crypto/x;

    const-string v1, "unwrap data too short"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_104
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not set for unwrapping"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(II[B[B)I
    .registers 10

    iget-object v0, p0, Lv0/x;->l:Ljava/lang/Object;

    check-cast v0, [I

    iget-object v1, p0, Lv0/x;->k:Ljava/lang/Object;

    check-cast v1, [I

    iget-boolean v2, p0, Lv0/x;->h:Z

    if-eqz v2, :cond_89

    add-int/lit8 v2, p1, 0x8

    array-length v3, p3

    if-gt v2, v3, :cond_81

    add-int/lit8 v2, p2, 0x8

    array-length v3, p4

    if-gt v2, v3, :cond_79

    iget-boolean p0, p0, Lv0/x;->i:Z

    const/16 v2, 0x8

    if-eqz p0, :cond_4b

    invoke-static {p1, p3}, Lv0/x;->e(I[B)I

    move-result p0

    add-int/lit8 p1, p1, 0x4

    invoke-static {p1, p3}, Lv0/x;->e(I[B)I

    move-result p1

    const/4 p3, 0x0

    :goto_27
    const/16 v3, 0x20

    if-ge p3, v3, :cond_42

    shl-int/lit8 v3, p1, 0x4

    ushr-int/lit8 v4, p1, 0x5

    xor-int/2addr v3, v4

    add-int/2addr v3, p1

    aget v4, v1, p3

    xor-int/2addr v3, v4

    add-int/2addr p0, v3

    shl-int/lit8 v3, p0, 0x4

    ushr-int/lit8 v4, p0, 0x5

    xor-int/2addr v3, v4

    add-int/2addr v3, p0

    aget v4, v0, p3

    xor-int/2addr v3, v4

    add-int/2addr p1, v3

    add-int/lit8 p3, p3, 0x1

    goto :goto_27

    :cond_42
    invoke-static {p4, p0, p2}, Lv0/x;->f([BII)V

    add-int/lit8 p2, p2, 0x4

    invoke-static {p4, p1, p2}, Lv0/x;->f([BII)V

    return v2

    :cond_4b
    invoke-static {p1, p3}, Lv0/x;->e(I[B)I

    move-result p0

    add-int/lit8 p1, p1, 0x4

    invoke-static {p1, p3}, Lv0/x;->e(I[B)I

    move-result p1

    const/16 p3, 0x1f

    :goto_57
    if-ltz p3, :cond_70

    shl-int/lit8 v3, p0, 0x4

    ushr-int/lit8 v4, p0, 0x5

    xor-int/2addr v3, v4

    add-int/2addr v3, p0

    aget v4, v0, p3

    xor-int/2addr v3, v4

    sub-int/2addr p1, v3

    shl-int/lit8 v3, p1, 0x4

    ushr-int/lit8 v4, p1, 0x5

    xor-int/2addr v3, v4

    add-int/2addr v3, p1

    aget v4, v1, p3

    xor-int/2addr v3, v4

    sub-int/2addr p0, v3

    add-int/lit8 p3, p3, -0x1

    goto :goto_57

    :cond_70
    invoke-static {p4, p0, p2}, Lv0/x;->f([BII)V

    add-int/lit8 p2, p2, 0x4

    invoke-static {p4, p1, p2}, Lv0/x;->f([BII)V

    return v2

    :cond_79
    new-instance p0, Lorg/bouncycastle/crypto/d0;

    const-string p1, "output buffer too short"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_81
    new-instance p0, Lorg/bouncycastle/crypto/q;

    const-string p1, "input buffer too short"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_89
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "XTEA not initialised"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public c()I
    .registers 1

    const/16 p0, 0x8

    return p0
.end method

.method public d(I[B)[B
    .registers 16

    iget-object v0, p0, Lv0/x;->j:Ljava/lang/Object;

    check-cast v0, Lorg/bouncycastle/crypto/d;

    iget-object v1, p0, Lv0/x;->k:Ljava/lang/Object;

    check-cast v1, [B

    iget-boolean v2, p0, Lv0/x;->i:Z

    if-eqz v2, :cond_7b

    const/16 v2, 0x8

    if-lt p1, v2, :cond_73

    div-int/lit8 v3, p1, 0x8

    mul-int/lit8 v4, v3, 0x8

    if-ne v4, p1, :cond_6b

    iget-boolean v4, p0, Lv0/x;->h:Z

    iget-object p0, p0, Lv0/x;->l:Ljava/lang/Object;

    check-cast p0, Le1/o0;

    invoke-interface {v0, v4, p0}, Lorg/bouncycastle/crypto/d;->init(ZLorg/bouncycastle/crypto/g;)V

    array-length p0, v1

    add-int/2addr p0, p1

    new-array p0, p0, [B

    array-length v4, v1

    const/4 v5, 0x0

    invoke-static {v1, v5, p0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v1

    invoke-static {p2, v5, p0, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x1

    if-ne v3, p1, :cond_33

    invoke-interface {v0, v5, v5, p0, p0}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    return-object p0

    :cond_33
    array-length p2, v1

    add-int/2addr p2, v2

    new-array p2, p2, [B

    move v4, v5

    :goto_38
    const/4 v6, 0x6

    if-eq v4, v6, :cond_6a

    move v6, p1

    :goto_3c
    if-gt v6, v3, :cond_67

    array-length v7, v1

    invoke-static {p0, v5, p2, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    mul-int/lit8 v7, v6, 0x8

    array-length v8, v1

    invoke-static {p0, v7, p2, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {v0, v5, v5, p2, p2}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    mul-int v8, v3, v4

    add-int/2addr v8, v6

    move v9, p1

    :goto_4f
    if-eqz v8, :cond_5e

    int-to-byte v10, v8

    array-length v11, v1

    sub-int/2addr v11, v9

    aget-byte v12, p2, v11

    xor-int/2addr v10, v12

    int-to-byte v10, v10

    aput-byte v10, p2, v11

    ushr-int/lit8 v8, v8, 0x8

    add-int/2addr v9, p1

    goto :goto_4f

    :cond_5e
    invoke-static {p2, v5, p0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p2, v2, p0, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3c

    :cond_67
    add-int/lit8 v4, v4, 0x1

    goto :goto_38

    :cond_6a
    return-object p0

    :cond_6b
    new-instance p0, Lorg/bouncycastle/crypto/q;

    const-string p1, "wrap data must be a multiple of 8 bytes"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_73
    new-instance p0, Lorg/bouncycastle/crypto/q;

    const-string p1, "wrap data must be at least 8 bytes"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "not set for wrapping"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getAlgorithmName()Ljava/lang/String;
    .registers 2

    iget v0, p0, Lv0/x;->g:I

    packed-switch v0, :pswitch_data_12

    const-string p0, "XTEA"

    return-object p0

    :pswitch_8
    iget-object p0, p0, Lv0/x;->j:Ljava/lang/Object;

    check-cast p0, Lorg/bouncycastle/crypto/d;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/d;->getAlgorithmName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_8
    .end packed-switch
.end method

.method public final init(ZLorg/bouncycastle/crypto/g;)V
    .registers 9

    iget v0, p0, Lv0/x;->g:I

    packed-switch v0, :pswitch_data_ba

    instance-of v0, p2, Le1/o0;

    if-eqz v0, :cond_70

    iput-boolean p1, p0, Lv0/x;->i:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lv0/x;->h:Z

    move-object p1, p2

    check-cast p1, Le1/o0;

    iget-object p1, p1, Le1/o0;->c:[B

    iget-object v0, p0, Lv0/x;->j:Ljava/lang/Object;

    check-cast v0, [I

    array-length v1, p1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_68

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_1f
    const/4 v4, 0x4

    if-ge v2, v4, :cond_2c

    invoke-static {v3, p1}, Lv0/x;->e(I[B)I

    move-result v5

    aput v5, v0, v2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v3, v4

    goto :goto_1f

    :cond_2c
    move p1, v1

    :goto_2d
    const/16 v2, 0x20

    if-ge v1, v2, :cond_50

    iget-object v2, p0, Lv0/x;->k:Ljava/lang/Object;

    check-cast v2, [I

    and-int/lit8 v3, p1, 0x3

    aget v3, v0, v3

    add-int/2addr v3, p1

    aput v3, v2, v1

    const v2, 0x61c88647

    sub-int/2addr p1, v2

    iget-object v2, p0, Lv0/x;->l:Ljava/lang/Object;

    check-cast v2, [I

    ushr-int/lit8 v3, p1, 0xb

    and-int/lit8 v3, v3, 0x3

    aget v3, v0, v3

    add-int/2addr v3, p1

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    :cond_50
    instance-of p0, p2, Lorg/bouncycastle/crypto/j;

    if-nez p0, :cond_60

    sget-object p0, Lorg/bouncycastle/crypto/o;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/crypto/l;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_60
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "params should not be CryptoServicePurpose"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_68
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Key size must be 128 bits."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_70
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid parameter passed to TEA init - "

    invoke-static {p1, p2}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->c(Ljava/lang/String;Lorg/bouncycastle/crypto/g;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_7c
    iget-object v0, p0, Lv0/x;->k:Ljava/lang/Object;

    check-cast v0, [B

    iput-boolean p1, p0, Lv0/x;->i:Z

    instance-of p1, p2, Le1/t0;

    if-eqz p1, :cond_8a

    check-cast p2, Le1/t0;

    iget-object p2, p2, Le1/t0;->d:Lorg/bouncycastle/crypto/g;

    :cond_8a
    instance-of p1, p2, Le1/o0;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_9b

    check-cast p2, Le1/o0;

    iput-object p2, p0, Lv0/x;->l:Ljava/lang/Object;

    sget-object p0, Lv0/x;->m:[B

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_b8

    :cond_9b
    instance-of p1, p2, Le1/s0;

    if-eqz p1, :cond_b8

    check-cast p2, Le1/s0;

    iget-object p1, p2, Le1/s0;->c:[B

    array-length v3, p1

    if-ne v3, v1, :cond_b0

    iget-object p2, p2, Le1/s0;->d:Lorg/bouncycastle/crypto/g;

    check-cast p2, Le1/o0;

    iput-object p2, p0, Lv0/x;->l:Ljava/lang/Object;

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_b8

    :cond_b0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "IV not equal to 8"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b8
    :goto_b8
    return-void

    nop

    :pswitch_data_ba
    .packed-switch 0x0
        :pswitch_7c
    .end packed-switch
.end method

.method public reset()V
    .registers 1

    return-void
.end method
