.class public final Lv0/q;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/o0;


# instance fields
.field public final synthetic g:I

.field public h:[B

.field public i:[B

.field public j:[B

.field public k:[I

.field public l:[I

.field public m:I

.field public n:I

.field public o:Z


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lv0/q;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(II)I
    .registers 2

    sub-int/2addr p0, p1

    and-int/lit16 p0, p0, 0x1ff

    return p0
.end method

.method public static j(II)I
    .registers 3

    ushr-int v0, p0, p1

    neg-int p1, p1

    shl-int/2addr p0, p1

    or-int/2addr p0, v0

    return p0
.end method

.method public static k(II)I
    .registers 3

    ushr-int v0, p0, p1

    neg-int p1, p1

    shl-int/2addr p0, p1

    or-int/2addr p0, v0

    return p0
.end method

.method public static l(I[I)V
    .registers 5

    const/4 v0, 0x1

    aget v1, p1, v0

    const/4 v2, 0x0

    aput v1, p1, v2

    const/4 v1, 0x2

    aget v2, p1, v1

    aput v2, p1, v0

    const/4 v0, 0x3

    aget v2, p1, v0

    aput v2, p1, v1

    aput p0, p1, v0

    return-void
.end method

.method public static m(I[I)V
    .registers 5

    const/4 v0, 0x1

    aget v1, p1, v0

    const/4 v2, 0x0

    aput v1, p1, v2

    const/4 v1, 0x2

    aget v2, p1, v1

    aput v2, p1, v0

    const/4 v0, 0x3

    aget v2, p1, v0

    aput v2, p1, v1

    const/4 v1, 0x4

    aget v2, p1, v1

    aput v2, p1, v0

    aput p0, p1, v1

    return-void
.end method


# virtual methods
.method public b()I
    .registers 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lv0/q;->l:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    ushr-int/lit8 v4, v3, 0x2

    const/4 v5, 0x1

    aget v6, v1, v5

    shl-int/lit8 v7, v6, 0x1e

    or-int/2addr v4, v7

    ushr-int/lit8 v7, v3, 0xc

    shl-int/lit8 v8, v6, 0x14

    or-int/2addr v7, v8

    ushr-int/lit8 v3, v3, 0xf

    shl-int/lit8 v8, v6, 0x11

    or-int/2addr v3, v8

    ushr-int/lit8 v8, v6, 0x4

    const/4 v9, 0x2

    aget v10, v1, v9

    shl-int/lit8 v11, v10, 0x1c

    or-int/2addr v8, v11

    ushr-int/lit8 v6, v6, 0xd

    shl-int/lit8 v11, v10, 0x13

    or-int/2addr v6, v11

    ushr-int/lit8 v11, v10, 0x9

    const/4 v12, 0x3

    aget v1, v1, v12

    shl-int/lit8 v13, v1, 0x17

    or-int/2addr v11, v13

    ushr-int/lit8 v13, v10, 0x19

    shl-int/lit8 v14, v1, 0x7

    or-int/2addr v13, v14

    ushr-int/lit8 v14, v10, 0x1f

    shl-int/2addr v1, v5

    or-int/2addr v1, v14

    iget-object v0, v0, Lv0/q;->k:[I

    aget v2, v0, v2

    ushr-int/lit8 v14, v2, 0x8

    aget v15, v0, v5

    shl-int/lit8 v16, v15, 0x18

    or-int v14, v14, v16

    ushr-int/lit8 v16, v2, 0xd

    shl-int/lit8 v17, v15, 0x13

    or-int v16, v16, v17

    ushr-int/lit8 v2, v2, 0x14

    shl-int/lit8 v17, v15, 0xc

    or-int v2, v2, v17

    ushr-int/lit8 v17, v15, 0xa

    aget v9, v0, v9

    shl-int/lit8 v18, v9, 0x16

    or-int v17, v17, v18

    ushr-int/lit8 v15, v15, 0x1c

    shl-int/lit8 v18, v9, 0x4

    or-int v15, v15, v18

    ushr-int/lit8 v18, v9, 0xf

    aget v0, v0, v12

    shl-int/lit8 v12, v0, 0x11

    or-int v12, v18, v12

    ushr-int/lit8 v18, v9, 0x1d

    shl-int/lit8 v19, v0, 0x3

    or-int v18, v18, v19

    ushr-int/lit8 v9, v9, 0x1f

    shl-int/2addr v0, v5

    or-int/2addr v0, v9

    and-int v5, v7, v14

    and-int v2, v16, v2

    xor-int/2addr v2, v5

    and-int v5, v1, v17

    xor-int/2addr v2, v5

    and-int v5, v15, v12

    xor-int/2addr v2, v5

    and-int/2addr v1, v7

    and-int/2addr v0, v1

    xor-int/2addr v0, v2

    xor-int v0, v0, v18

    xor-int/2addr v0, v4

    xor-int/2addr v0, v3

    xor-int/2addr v0, v8

    xor-int/2addr v0, v6

    xor-int/2addr v0, v10

    xor-int/2addr v0, v11

    xor-int/2addr v0, v13

    return v0
.end method

.method public c()I
    .registers 16

    iget-object v0, p0, Lv0/q;->l:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    ushr-int/lit8 v3, v2, 0x1

    const/4 v4, 0x1

    aget v5, v0, v4

    shl-int/lit8 v6, v5, 0xf

    or-int/2addr v3, v6

    ushr-int/lit8 v6, v2, 0x2

    shl-int/lit8 v7, v5, 0xe

    or-int/2addr v6, v7

    ushr-int/lit8 v7, v2, 0x4

    shl-int/lit8 v8, v5, 0xc

    or-int/2addr v7, v8

    ushr-int/lit8 v2, v2, 0xa

    shl-int/lit8 v8, v5, 0x6

    or-int/2addr v2, v8

    ushr-int/lit8 v5, v5, 0xf

    const/4 v8, 0x2

    aget v9, v0, v8

    shl-int/lit8 v10, v9, 0x1

    or-int/2addr v5, v10

    ushr-int/lit8 v9, v9, 0xb

    const/4 v10, 0x3

    aget v11, v0, v10

    shl-int/lit8 v12, v11, 0x5

    or-int/2addr v9, v12

    ushr-int/lit8 v12, v11, 0x8

    const/4 v13, 0x4

    aget v0, v0, v13

    shl-int/lit8 v14, v0, 0x8

    or-int/2addr v12, v14

    ushr-int/lit8 v11, v11, 0xf

    shl-int/2addr v0, v4

    or-int/2addr v0, v11

    iget-object p0, p0, Lv0/q;->k:[I

    aget v1, p0, v1

    ushr-int/2addr v1, v10

    aget v4, p0, v4

    shl-int/lit8 v11, v4, 0xd

    or-int/2addr v1, v11

    ushr-int/lit8 v4, v4, 0x9

    aget v11, p0, v8

    shl-int/lit8 v14, v11, 0x7

    or-int/2addr v4, v14

    ushr-int/lit8 v11, v11, 0xe

    aget v10, p0, v10

    shl-int/lit8 v8, v10, 0x2

    or-int/2addr v8, v11

    aget p0, p0, v13

    xor-int v10, v4, v0

    and-int v11, v1, p0

    xor-int/2addr v10, v11

    and-int v11, v8, p0

    xor-int/2addr v10, v11

    and-int v13, p0, v0

    xor-int/2addr v10, v13

    and-int v13, v1, v4

    and-int/2addr v13, v8

    xor-int/2addr v10, v13

    and-int/2addr v1, v8

    and-int/2addr p0, v1

    xor-int/2addr p0, v10

    and-int/2addr v1, v0

    xor-int/2addr p0, v1

    and-int v1, v4, v8

    and-int/2addr v1, v0

    xor-int/2addr p0, v1

    and-int/2addr v0, v11

    xor-int/2addr p0, v0

    xor-int/2addr p0, v3

    xor-int/2addr p0, v6

    xor-int/2addr p0, v7

    xor-int/2addr p0, v2

    xor-int/2addr p0, v5

    xor-int/2addr p0, v9

    xor-int/2addr p0, v12

    const v0, 0xffff

    and-int/2addr p0, v0

    return p0
.end method

.method public d()I
    .registers 7

    iget-object p0, p0, Lv0/q;->k:[I

    const/4 v0, 0x0

    aget v0, p0, v0

    ushr-int/lit8 v1, v0, 0x7

    const/4 v2, 0x1

    aget v2, p0, v2

    shl-int/lit8 v3, v2, 0x19

    or-int/2addr v1, v3

    ushr-int/lit8 v2, v2, 0x6

    const/4 v3, 0x2

    aget v3, p0, v3

    shl-int/lit8 v4, v3, 0x1a

    or-int/2addr v2, v4

    ushr-int/lit8 v4, v3, 0x6

    const/4 v5, 0x3

    aget p0, p0, v5

    shl-int/lit8 v5, p0, 0x1a

    or-int/2addr v4, v5

    ushr-int/lit8 v3, v3, 0x11

    shl-int/lit8 v5, p0, 0xf

    or-int/2addr v3, v5

    xor-int/2addr v0, v1

    xor-int/2addr v0, v2

    xor-int/2addr v0, v4

    xor-int/2addr v0, v3

    xor-int/2addr p0, v0

    return p0
.end method

.method public e()I
    .registers 9

    iget-object p0, p0, Lv0/q;->k:[I

    const/4 v0, 0x0

    aget v0, p0, v0

    ushr-int/lit8 v1, v0, 0xd

    const/4 v2, 0x1

    aget v2, p0, v2

    shl-int/lit8 v3, v2, 0x3

    or-int/2addr v1, v3

    ushr-int/lit8 v2, v2, 0x7

    const/4 v3, 0x2

    aget v4, p0, v3

    shl-int/lit8 v5, v4, 0x9

    or-int/2addr v2, v5

    ushr-int/lit8 v4, v4, 0x6

    const/4 v5, 0x3

    aget v5, p0, v5

    shl-int/lit8 v6, v5, 0xa

    or-int/2addr v4, v6

    ushr-int/lit8 v6, v5, 0x3

    const/4 v7, 0x4

    aget p0, p0, v7

    shl-int/lit8 v7, p0, 0xd

    or-int/2addr v6, v7

    ushr-int/lit8 v5, v5, 0xe

    shl-int/2addr p0, v3

    or-int/2addr p0, v5

    xor-int/2addr v0, v1

    xor-int/2addr v0, v2

    xor-int/2addr v0, v4

    xor-int/2addr v0, v6

    xor-int/2addr p0, v0

    const v0, 0xffff

    and-int/2addr p0, v0

    return p0
.end method

.method public f()I
    .registers 21

    move-object/from16 v0, p0

    iget-object v0, v0, Lv0/q;->l:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    ushr-int/lit8 v2, v1, 0x3

    const/4 v3, 0x1

    aget v3, v0, v3

    shl-int/lit8 v4, v3, 0x1d

    or-int/2addr v2, v4

    ushr-int/lit8 v4, v1, 0xb

    shl-int/lit8 v5, v3, 0x15

    or-int/2addr v4, v5

    ushr-int/lit8 v5, v1, 0xd

    shl-int/lit8 v6, v3, 0x13

    or-int/2addr v5, v6

    ushr-int/lit8 v6, v1, 0x11

    shl-int/lit8 v7, v3, 0xf

    or-int/2addr v6, v7

    ushr-int/lit8 v7, v1, 0x12

    shl-int/lit8 v8, v3, 0xe

    or-int/2addr v7, v8

    ushr-int/lit8 v8, v1, 0x1a

    shl-int/lit8 v9, v3, 0x6

    or-int/2addr v8, v9

    ushr-int/lit8 v9, v1, 0x1b

    shl-int/lit8 v10, v3, 0x5

    or-int/2addr v9, v10

    ushr-int/lit8 v10, v3, 0x8

    const/4 v11, 0x2

    aget v11, v0, v11

    shl-int/lit8 v12, v11, 0x18

    or-int/2addr v10, v12

    ushr-int/lit8 v12, v3, 0x10

    shl-int/lit8 v13, v11, 0x10

    or-int/2addr v12, v13

    ushr-int/lit8 v13, v3, 0x18

    shl-int/lit8 v14, v11, 0x8

    or-int/2addr v13, v14

    ushr-int/lit8 v14, v3, 0x1b

    shl-int/lit8 v15, v11, 0x5

    or-int/2addr v14, v15

    ushr-int/lit8 v3, v3, 0x1d

    shl-int/lit8 v15, v11, 0x3

    or-int/2addr v3, v15

    ushr-int/lit8 v15, v11, 0x1

    const/16 v16, 0x3

    aget v0, v0, v16

    shl-int/lit8 v16, v0, 0x1f

    or-int v15, v15, v16

    ushr-int/lit8 v16, v11, 0x3

    shl-int/lit8 v17, v0, 0x1d

    or-int v16, v16, v17

    ushr-int/lit8 v17, v11, 0x4

    shl-int/lit8 v18, v0, 0x1c

    or-int v17, v17, v18

    ushr-int/lit8 v18, v11, 0x14

    shl-int/lit8 v19, v0, 0xc

    or-int v18, v18, v19

    ushr-int/lit8 v11, v11, 0x1b

    shl-int/lit8 v19, v0, 0x5

    or-int v11, v11, v19

    xor-int/2addr v1, v8

    xor-int/2addr v1, v13

    xor-int/2addr v1, v11

    xor-int/2addr v0, v1

    and-int v1, v2, v16

    xor-int/2addr v0, v1

    and-int v1, v4, v5

    xor-int/2addr v0, v1

    and-int v1, v6, v7

    xor-int/2addr v0, v1

    and-int v1, v9, v14

    xor-int/2addr v0, v1

    and-int v1, v10, v12

    xor-int/2addr v0, v1

    and-int v1, v3, v15

    xor-int/2addr v0, v1

    and-int v1, v17, v18

    xor-int/2addr v0, v1

    return v0
.end method

.method public g()I
    .registers 16

    iget-object p0, p0, Lv0/q;->l:[I

    const/4 v0, 0x0

    aget v0, p0, v0

    ushr-int/lit8 v1, v0, 0x9

    const/4 v2, 0x1

    aget v3, p0, v2

    shl-int/lit8 v4, v3, 0x7

    or-int/2addr v1, v4

    ushr-int/lit8 v4, v0, 0xe

    shl-int/lit8 v5, v3, 0x2

    or-int/2addr v4, v5

    ushr-int/lit8 v5, v0, 0xf

    shl-int/lit8 v6, v3, 0x1

    or-int/2addr v5, v6

    ushr-int/lit8 v6, v3, 0x5

    const/4 v7, 0x2

    aget v7, p0, v7

    shl-int/lit8 v8, v7, 0xb

    or-int/2addr v6, v8

    ushr-int/lit8 v3, v3, 0xc

    shl-int/lit8 v8, v7, 0x4

    or-int/2addr v3, v8

    ushr-int/lit8 v8, v7, 0x1

    const/4 v9, 0x3

    aget v9, p0, v9

    shl-int/lit8 v10, v9, 0xf

    or-int/2addr v8, v10

    ushr-int/lit8 v10, v7, 0x5

    shl-int/lit8 v11, v9, 0xb

    or-int/2addr v10, v11

    ushr-int/lit8 v7, v7, 0xd

    shl-int/lit8 v11, v9, 0x3

    or-int/2addr v7, v11

    ushr-int/lit8 v11, v9, 0x4

    const/4 v12, 0x4

    aget p0, p0, v12

    shl-int/lit8 v12, p0, 0xc

    or-int/2addr v11, v12

    ushr-int/lit8 v12, v9, 0xc

    shl-int/lit8 v13, p0, 0x4

    or-int/2addr v12, v13

    ushr-int/lit8 v13, v9, 0xe

    shl-int/lit8 v14, p0, 0x2

    or-int/2addr v13, v14

    ushr-int/lit8 v9, v9, 0xf

    shl-int/2addr p0, v2

    or-int/2addr p0, v9

    xor-int v2, v13, v12

    xor-int/2addr v2, v11

    xor-int/2addr v2, v7

    xor-int/2addr v2, v10

    xor-int/2addr v2, v8

    xor-int/2addr v2, v3

    xor-int/2addr v2, v6

    xor-int/2addr v2, v4

    xor-int/2addr v2, v1

    xor-int/2addr v0, v2

    and-int v2, p0, v12

    xor-int/2addr v0, v2

    and-int v4, v10, v8

    xor-int/2addr v0, v4

    and-int v4, v5, v1

    xor-int/2addr v0, v4

    and-int v4, v12, v11

    and-int v9, v4, v7

    xor-int/2addr v0, v9

    and-int v9, v8, v3

    and-int/2addr v9, v6

    xor-int/2addr v0, v9

    and-int/2addr p0, v7

    and-int/2addr p0, v3

    and-int/2addr p0, v1

    xor-int/2addr p0, v0

    and-int v0, v4, v10

    and-int/2addr v0, v8

    xor-int/2addr p0, v0

    and-int v0, v2, v6

    and-int/2addr v0, v5

    xor-int/2addr p0, v0

    and-int v0, v2, v11

    and-int/2addr v0, v7

    and-int/2addr v0, v10

    xor-int/2addr p0, v0

    and-int v0, v9, v5

    and-int/2addr v0, v1

    xor-int/2addr p0, v0

    and-int v0, v11, v7

    and-int/2addr v0, v10

    and-int/2addr v0, v8

    and-int/2addr v0, v3

    and-int/2addr v0, v6

    xor-int/2addr p0, v0

    const v0, 0xffff

    and-int/2addr p0, v0

    return p0
.end method

.method public final getAlgorithmName()Ljava/lang/String;
    .registers 1

    iget p0, p0, Lv0/q;->g:I

    packed-switch p0, :pswitch_data_12

    const-string p0, "HC-256"

    return-object p0

    :pswitch_8
    const-string p0, "HC-128"

    return-object p0

    :pswitch_b
    const-string p0, "Grain v1"

    return-object p0

    :pswitch_e
    const-string p0, "Grain-128"

    return-object p0

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method public h()V
    .registers 14

    iget-object v0, p0, Lv0/q;->l:[I

    iget-object v1, p0, Lv0/q;->k:[I

    iget-object v2, p0, Lv0/q;->h:[B

    array-length v2, v2

    const/16 v3, 0x10

    if-ne v2, v3, :cond_c0

    iget-object v2, p0, Lv0/q;->i:[B

    array-length v2, v2

    if-ne v2, v3, :cond_b8

    const/4 v2, 0x0

    iput v2, p0, Lv0/q;->n:I

    iput v2, p0, Lv0/q;->m:I

    const/16 v4, 0x500

    new-array v5, v4, [I

    move v6, v2

    :goto_1a
    const/16 v7, 0x8

    if-ge v6, v3, :cond_33

    shr-int/lit8 v8, v6, 0x2

    aget v9, v5, v8

    iget-object v10, p0, Lv0/q;->h:[B

    aget-byte v10, v10, v6

    and-int/lit16 v10, v10, 0xff

    and-int/lit8 v11, v6, 0x3

    mul-int/2addr v11, v7

    shl-int v7, v10, v11

    or-int/2addr v7, v9

    aput v7, v5, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    :cond_33
    const/4 v6, 0x4

    invoke-static {v5, v2, v5, v6, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v8, v2

    :goto_38
    iget-object v9, p0, Lv0/q;->i:[B

    array-length v10, v9

    if-ge v8, v10, :cond_52

    if-ge v8, v3, :cond_52

    shr-int/lit8 v10, v8, 0x2

    add-int/2addr v10, v7

    aget v11, v5, v10

    aget-byte v9, v9, v8

    and-int/lit16 v9, v9, 0xff

    and-int/lit8 v12, v8, 0x3

    mul-int/2addr v12, v7

    shl-int/2addr v9, v12

    or-int/2addr v9, v11

    aput v9, v5, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_38

    :cond_52
    const/16 v8, 0xc

    invoke-static {v5, v7, v5, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_57
    if-ge v3, v4, :cond_91

    add-int/lit8 v6, v3, -0x2

    aget v6, v5, v6

    const/16 v7, 0x11

    invoke-static {v6, v7}, Lv0/q;->j(II)I

    move-result v7

    const/16 v8, 0x13

    invoke-static {v6, v8}, Lv0/q;->j(II)I

    move-result v8

    xor-int/2addr v7, v8

    ushr-int/lit8 v6, v6, 0xa

    xor-int/2addr v6, v7

    add-int/lit8 v7, v3, -0x7

    aget v7, v5, v7

    add-int/2addr v6, v7

    add-int/lit8 v7, v3, -0xf

    aget v7, v5, v7

    const/4 v8, 0x7

    invoke-static {v7, v8}, Lv0/q;->j(II)I

    move-result v8

    const/16 v9, 0x12

    invoke-static {v7, v9}, Lv0/q;->j(II)I

    move-result v9

    xor-int/2addr v8, v9

    ushr-int/lit8 v7, v7, 0x3

    xor-int/2addr v7, v8

    add-int/2addr v6, v7

    add-int/lit8 v7, v3, -0x10

    aget v7, v5, v7

    add-int/2addr v6, v7

    add-int/2addr v6, v3

    aput v6, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_57

    :cond_91
    const/16 v3, 0x100

    const/16 v4, 0x200

    invoke-static {v5, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v3, 0x300

    invoke-static {v5, v3, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v3, v2

    :goto_9e
    if-ge v3, v4, :cond_a9

    invoke-virtual {p0}, Lv0/q;->n()I

    move-result v5

    aput v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_9e

    :cond_a9
    move v1, v2

    :goto_aa
    if-ge v1, v4, :cond_b5

    invoke-virtual {p0}, Lv0/q;->n()I

    move-result v3

    aput v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_aa

    :cond_b5
    iput v2, p0, Lv0/q;->m:I

    return-void

    :cond_b8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The IV must be 128 bits long"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The key must be 128 bits long"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public i()V
    .registers 11

    iget-object v0, p0, Lv0/q;->h:[B

    array-length v1, v0

    const/16 v2, 0x10

    const/16 v3, 0x20

    if-eq v1, v3, :cond_15

    array-length v1, v0

    if-ne v1, v2, :cond_d

    goto :goto_15

    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The key must be 128/256 bits long"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    :goto_15
    iget-object v1, p0, Lv0/q;->i:[B

    array-length v1, v1

    if-lt v1, v2, :cond_d4

    array-length v1, v0

    const/4 v4, 0x0

    if-eq v1, v3, :cond_2c

    new-array v1, v3, [B

    array-length v5, v0

    invoke-static {v0, v4, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lv0/q;->h:[B

    array-length v5, v0

    invoke-static {v0, v4, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lv0/q;->h:[B

    :cond_2c
    iget-object v0, p0, Lv0/q;->i:[B

    array-length v1, v0

    if-ge v1, v3, :cond_42

    new-array v1, v3, [B

    array-length v5, v0

    invoke-static {v0, v4, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lv0/q;->i:[B

    array-length v5, v0

    array-length v6, v0

    rsub-int/lit8 v6, v6, 0x20

    invoke-static {v0, v4, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lv0/q;->i:[B

    :cond_42
    iput v4, p0, Lv0/q;->n:I

    iput v4, p0, Lv0/q;->m:I

    const/16 v0, 0xa00

    new-array v1, v0, [I

    move v5, v4

    :goto_4b
    if-ge v5, v3, :cond_62

    shr-int/lit8 v6, v5, 0x2

    aget v7, v1, v6

    iget-object v8, p0, Lv0/q;->h:[B

    aget-byte v8, v8, v5

    and-int/lit16 v8, v8, 0xff

    and-int/lit8 v9, v5, 0x3

    mul-int/lit8 v9, v9, 0x8

    shl-int/2addr v8, v9

    or-int/2addr v7, v8

    aput v7, v1, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_4b

    :cond_62
    move v5, v4

    :goto_63
    if-ge v5, v3, :cond_7c

    shr-int/lit8 v6, v5, 0x2

    add-int/lit8 v6, v6, 0x8

    aget v7, v1, v6

    iget-object v8, p0, Lv0/q;->i:[B

    aget-byte v8, v8, v5

    and-int/lit16 v8, v8, 0xff

    and-int/lit8 v9, v5, 0x3

    mul-int/lit8 v9, v9, 0x8

    shl-int/2addr v8, v9

    or-int/2addr v7, v8

    aput v7, v1, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_63

    :cond_7c
    :goto_7c
    if-ge v2, v0, :cond_b6

    add-int/lit8 v3, v2, -0x2

    aget v3, v1, v3

    add-int/lit8 v5, v2, -0xf

    aget v5, v1, v5

    const/16 v6, 0x11

    invoke-static {v3, v6}, Lv0/q;->k(II)I

    move-result v6

    const/16 v7, 0x13

    invoke-static {v3, v7}, Lv0/q;->k(II)I

    move-result v7

    xor-int/2addr v6, v7

    ushr-int/lit8 v3, v3, 0xa

    xor-int/2addr v3, v6

    add-int/lit8 v6, v2, -0x7

    aget v6, v1, v6

    add-int/2addr v3, v6

    const/4 v6, 0x7

    invoke-static {v5, v6}, Lv0/q;->k(II)I

    move-result v6

    const/16 v7, 0x12

    invoke-static {v5, v7}, Lv0/q;->k(II)I

    move-result v7

    xor-int/2addr v6, v7

    ushr-int/lit8 v5, v5, 0x3

    xor-int/2addr v5, v6

    add-int/2addr v3, v5

    add-int/lit8 v5, v2, -0x10

    aget v5, v1, v5

    add-int/2addr v3, v5

    add-int/2addr v3, v2

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7c

    :cond_b6
    const/16 v0, 0x200

    iget-object v2, p0, Lv0/q;->k:[I

    const/16 v3, 0x400

    invoke-static {v1, v0, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0x600

    iget-object v2, p0, Lv0/q;->l:[I

    invoke-static {v1, v0, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v4

    :goto_c7
    const/16 v1, 0x1000

    if-ge v0, v1, :cond_d1

    invoke-virtual {p0}, Lv0/q;->o()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_c7

    :cond_d1
    iput v4, p0, Lv0/q;->m:I

    return-void

    :cond_d4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The IV must be at least 128 bits long"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final init(ZLorg/bouncycastle/crypto/g;)V
    .registers 7

    iget p1, p0, Lv0/q;->g:I

    packed-switch p1, :pswitch_data_192

    instance-of p1, p2, Le1/s0;

    if-eqz p1, :cond_13

    move-object p1, p2

    check-cast p1, Le1/s0;

    iget-object v0, p1, Le1/s0;->c:[B

    iput-object v0, p0, Lv0/q;->i:[B

    iget-object p1, p1, Le1/s0;->d:Lorg/bouncycastle/crypto/g;

    goto :goto_19

    :cond_13
    const/4 p1, 0x0

    new-array p1, p1, [B

    iput-object p1, p0, Lv0/q;->i:[B

    move-object p1, p2

    :goto_19
    instance-of v0, p1, Le1/o0;

    if-eqz v0, :cond_44

    check-cast p1, Le1/o0;

    iget-object p1, p1, Le1/o0;->c:[B

    iput-object p1, p0, Lv0/q;->h:[B

    invoke-virtual {p0}, Lv0/q;->i()V

    iget-object p1, p0, Lv0/q;->h:[B

    array-length p1, p1

    instance-of p1, p2, Lorg/bouncycastle/crypto/j;

    if-nez p1, :cond_3c

    sget-object p1, Lorg/bouncycastle/crypto/o;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/crypto/l;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lv0/q;->o:Z

    return-void

    :cond_3c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "params should not be CryptoServicePurpose"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_44
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid parameter passed to HC256 init - "

    invoke-static {p1, p2}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->c(Ljava/lang/String;Lorg/bouncycastle/crypto/g;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_50
    instance-of p1, p2, Le1/s0;

    if-eqz p1, :cond_91

    move-object p1, p2

    check-cast p1, Le1/s0;

    iget-object v0, p1, Le1/s0;->c:[B

    iput-object v0, p0, Lv0/q;->i:[B

    iget-object p1, p1, Le1/s0;->d:Lorg/bouncycastle/crypto/g;

    instance-of v0, p1, Le1/o0;

    if-eqz v0, :cond_85

    check-cast p1, Le1/o0;

    iget-object p1, p1, Le1/o0;->c:[B

    iput-object p1, p0, Lv0/q;->h:[B

    invoke-virtual {p0}, Lv0/q;->h()V

    instance-of p1, p2, Lorg/bouncycastle/crypto/j;

    if-nez p1, :cond_7d

    sget-object p1, Lorg/bouncycastle/crypto/o;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/crypto/l;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lv0/q;->o:Z

    return-void

    :cond_7d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "params should not be CryptoServicePurpose"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_85
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid parameter passed to HC128 init - "

    invoke-static {p1, p2}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->c(Ljava/lang/String;Lorg/bouncycastle/crypto/g;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_91
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "no IV passed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_99
    instance-of p1, p2, Le1/s0;

    if-eqz p1, :cond_10e

    move-object p1, p2

    check-cast p1, Le1/s0;

    iget-object v0, p1, Le1/s0;->c:[B

    if-eqz v0, :cond_106

    array-length v1, v0

    const/16 v2, 0x8

    if-ne v1, v2, :cond_106

    iget-object p1, p1, Le1/s0;->d:Lorg/bouncycastle/crypto/g;

    instance-of v1, p1, Le1/o0;

    if-eqz v1, :cond_fe

    check-cast p1, Le1/o0;

    iget-object p1, p1, Le1/o0;->c:[B

    array-length v1, p1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_f6

    array-length v1, p1

    new-array v1, v1, [B

    iput-object v1, p0, Lv0/q;->i:[B

    array-length v2, p1

    new-array v2, v2, [B

    iput-object v2, p0, Lv0/q;->h:[B

    const/4 v2, 0x5

    new-array v3, v2, [I

    iput-object v3, p0, Lv0/q;->k:[I

    new-array v2, v2, [I

    iput-object v2, p0, Lv0/q;->l:[I

    const/4 v2, 0x2

    new-array v2, v2, [B

    iput-object v2, p0, Lv0/q;->j:[B

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lv0/q;->h:[B

    array-length v1, p1

    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    instance-of p1, p2, Lorg/bouncycastle/crypto/j;

    if-nez p1, :cond_ee

    sget-object p1, Lorg/bouncycastle/crypto/o;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/crypto/l;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lv0/q;->reset()V

    return-void

    :cond_ee
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "params should not be CryptoServicePurpose"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Grain v1 key must be 80 bits long"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_fe
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Grain v1 init parameters must include a key"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_106
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Grain v1 requires exactly 8 bytes of IV"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Grain v1 init parameters must include an IV"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_116
    instance-of p1, p2, Le1/s0;

    if-eqz p1, :cond_18a

    move-object p1, p2

    check-cast p1, Le1/s0;

    iget-object v0, p1, Le1/s0;->c:[B

    if-eqz v0, :cond_182

    array-length v1, v0

    const/16 v2, 0xc

    if-ne v1, v2, :cond_182

    iget-object p1, p1, Le1/s0;->d:Lorg/bouncycastle/crypto/g;

    instance-of v1, p1, Le1/o0;

    if-eqz v1, :cond_17a

    check-cast p1, Le1/o0;

    iget-object p1, p1, Le1/o0;->c:[B

    array-length v1, p1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_172

    instance-of p2, p2, Lorg/bouncycastle/crypto/j;

    if-nez p2, :cond_16a

    sget-object p2, Lorg/bouncycastle/crypto/o;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/bouncycastle/crypto/l;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length p2, p1

    new-array p2, p2, [B

    iput-object p2, p0, Lv0/q;->i:[B

    array-length v1, p1

    new-array v1, v1, [B

    iput-object v1, p0, Lv0/q;->h:[B

    const/4 v1, 0x4

    new-array v2, v1, [I

    iput-object v2, p0, Lv0/q;->k:[I

    new-array v2, v1, [I

    iput-object v2, p0, Lv0/q;->l:[I

    new-array v1, v1, [B

    iput-object v1, p0, Lv0/q;->j:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p2, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p2, p0, Lv0/q;->h:[B

    array-length v0, p1

    invoke-static {p1, v2, p2, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Lv0/q;->reset()V

    return-void

    :cond_16a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "params should not be CryptoServicePurpose"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_172
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Grain-128 key must be 128 bits long"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_17a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Grain-128 init parameters must include a key"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_182
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Grain-128 requires exactly 12 bytes of IV"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_18a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Grain-128 Init parameters must include an IV"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_192
    .packed-switch 0x0
        :pswitch_116
        :pswitch_99
        :pswitch_50
    .end packed-switch
.end method

.method public n()I
    .registers 10

    iget-object v0, p0, Lv0/q;->l:[I

    iget-object v1, p0, Lv0/q;->k:[I

    iget v2, p0, Lv0/q;->m:I

    and-int/lit16 v3, v2, 0x1ff

    const/16 v4, 0x200

    const/16 v5, 0xc

    const/4 v6, 0x3

    const/16 v7, 0xa

    const/16 v8, 0x1ff

    if-ge v2, v4, :cond_53

    aget v2, v1, v3

    invoke-static {v3, v6}, Lv0/q;->a(II)I

    move-result v4

    aget v4, v1, v4

    invoke-static {v3, v7}, Lv0/q;->a(II)I

    move-result v6

    aget v6, v1, v6

    invoke-static {v3, v8}, Lv0/q;->a(II)I

    move-result v8

    aget v8, v1, v8

    invoke-static {v4, v7}, Lv0/q;->j(II)I

    move-result v4

    const/16 v7, 0x17

    invoke-static {v8, v7}, Lv0/q;->j(II)I

    move-result v7

    xor-int/2addr v4, v7

    const/16 v7, 0x8

    invoke-static {v6, v7}, Lv0/q;->j(II)I

    move-result v6

    add-int/2addr v6, v4

    add-int/2addr v6, v2

    aput v6, v1, v3

    invoke-static {v3, v5}, Lv0/q;->a(II)I

    move-result v2

    aget v2, v1, v2

    and-int/lit16 v4, v2, 0xff

    aget v4, v0, v4

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    add-int/lit16 v2, v2, 0x100

    aget v0, v0, v2

    add-int/2addr v4, v0

    aget v0, v1, v3

    :goto_51
    xor-int/2addr v0, v4

    goto :goto_91

    :cond_53
    aget v2, v0, v3

    invoke-static {v3, v6}, Lv0/q;->a(II)I

    move-result v4

    aget v4, v0, v4

    invoke-static {v3, v7}, Lv0/q;->a(II)I

    move-result v6

    aget v6, v0, v6

    invoke-static {v3, v8}, Lv0/q;->a(II)I

    move-result v7

    aget v7, v0, v7

    shl-int/lit8 v8, v4, 0xa

    ushr-int/lit8 v4, v4, -0xa

    or-int/2addr v4, v8

    shl-int/lit8 v8, v7, 0x17

    ushr-int/lit8 v7, v7, -0x17

    or-int/2addr v7, v8

    xor-int/2addr v4, v7

    shl-int/lit8 v7, v6, 0x8

    ushr-int/lit8 v6, v6, -0x8

    or-int/2addr v6, v7

    add-int/2addr v6, v4

    add-int/2addr v6, v2

    aput v6, v0, v3

    invoke-static {v3, v5}, Lv0/q;->a(II)I

    move-result v2

    aget v2, v0, v2

    and-int/lit16 v4, v2, 0xff

    aget v4, v1, v4

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    add-int/lit16 v2, v2, 0x100

    aget v1, v1, v2

    add-int/2addr v4, v1

    aget v0, v0, v3

    goto :goto_51

    :goto_91
    iget v1, p0, Lv0/q;->m:I

    add-int/lit8 v1, v1, 0x1

    and-int/lit16 v1, v1, 0x3ff

    iput v1, p0, Lv0/q;->m:I

    return v0
.end method

.method public o()I
    .registers 10

    iget-object v0, p0, Lv0/q;->l:[I

    iget-object v1, p0, Lv0/q;->k:[I

    iget v2, p0, Lv0/q;->m:I

    and-int/lit16 v3, v2, 0x3ff

    const/16 v4, 0x400

    const/16 v5, 0x17

    const/16 v6, 0xa

    if-ge v2, v4, :cond_60

    add-int/lit8 v2, v3, -0x3

    and-int/lit16 v2, v2, 0x3ff

    aget v2, v1, v2

    add-int/lit16 v4, v3, -0x3ff

    and-int/lit16 v4, v4, 0x3ff

    aget v4, v1, v4

    aget v7, v1, v3

    add-int/lit8 v8, v3, -0xa

    and-int/lit16 v8, v8, 0x3ff

    aget v8, v1, v8

    invoke-static {v2, v6}, Lv0/q;->k(II)I

    move-result v6

    invoke-static {v4, v5}, Lv0/q;->k(II)I

    move-result v5

    xor-int/2addr v5, v6

    add-int/2addr v8, v5

    xor-int/2addr v2, v4

    and-int/lit16 v2, v2, 0x3ff

    aget v2, v0, v2

    add-int/2addr v8, v2

    add-int/2addr v8, v7

    aput v8, v1, v3

    add-int/lit8 v2, v3, -0xc

    and-int/lit16 v2, v2, 0x3ff

    aget v2, v1, v2

    and-int/lit16 v4, v2, 0xff

    aget v4, v0, v4

    shr-int/lit8 v5, v2, 0x8

    and-int/lit16 v5, v5, 0xff

    add-int/lit16 v5, v5, 0x100

    aget v5, v0, v5

    add-int/2addr v4, v5

    shr-int/lit8 v5, v2, 0x10

    and-int/lit16 v5, v5, 0xff

    add-int/lit16 v5, v5, 0x200

    aget v5, v0, v5

    add-int/2addr v4, v5

    shr-int/lit8 v2, v2, 0x18

    and-int/lit16 v2, v2, 0xff

    add-int/lit16 v2, v2, 0x300

    aget v0, v0, v2

    add-int/2addr v4, v0

    aget v0, v1, v3

    :goto_5e
    xor-int/2addr v0, v4

    goto :goto_af

    :cond_60
    add-int/lit8 v2, v3, -0x3

    and-int/lit16 v2, v2, 0x3ff

    aget v2, v0, v2

    add-int/lit16 v4, v3, -0x3ff

    and-int/lit16 v4, v4, 0x3ff

    aget v4, v0, v4

    aget v7, v0, v3

    add-int/lit8 v8, v3, -0xa

    and-int/lit16 v8, v8, 0x3ff

    aget v8, v0, v8

    invoke-static {v2, v6}, Lv0/q;->k(II)I

    move-result v6

    invoke-static {v4, v5}, Lv0/q;->k(II)I

    move-result v5

    xor-int/2addr v5, v6

    add-int/2addr v8, v5

    xor-int/2addr v2, v4

    and-int/lit16 v2, v2, 0x3ff

    aget v2, v1, v2

    add-int/2addr v8, v2

    add-int/2addr v8, v7

    aput v8, v0, v3

    add-int/lit8 v2, v3, -0xc

    and-int/lit16 v2, v2, 0x3ff

    aget v2, v0, v2

    and-int/lit16 v4, v2, 0xff

    aget v4, v1, v4

    shr-int/lit8 v5, v2, 0x8

    and-int/lit16 v5, v5, 0xff

    add-int/lit16 v5, v5, 0x100

    aget v5, v1, v5

    add-int/2addr v4, v5

    shr-int/lit8 v5, v2, 0x10

    and-int/lit16 v5, v5, 0xff

    add-int/lit16 v5, v5, 0x200

    aget v5, v1, v5

    add-int/2addr v4, v5

    shr-int/lit8 v2, v2, 0x18

    and-int/lit16 v2, v2, 0xff

    add-int/lit16 v2, v2, 0x300

    aget v1, v1, v2

    add-int/2addr v4, v1

    aget v0, v0, v3

    goto :goto_5e

    :goto_af
    iget v1, p0, Lv0/q;->m:I

    add-int/lit8 v1, v1, 0x1

    and-int/lit16 v1, v1, 0x7ff

    iput v1, p0, Lv0/q;->m:I

    return v0
.end method

.method public final processBytes([BII[BI)I
    .registers 16

    iget v0, p0, Lv0/q;->g:I

    packed-switch v0, :pswitch_data_1c8

    iget-boolean v0, p0, Lv0/q;->o:Z

    if-eqz v0, :cond_64

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_5c

    add-int v0, p5, p3

    array-length v1, p4

    if-gt v0, v1, :cond_54

    const/4 v0, 0x0

    move v1, v0

    :goto_15
    if-ge v1, p3, :cond_53

    add-int v2, p5, v1

    add-int v3, p2, v1

    aget-byte v3, p1, v3

    iget-object v4, p0, Lv0/q;->j:[B

    iget v5, p0, Lv0/q;->n:I

    const/4 v6, 0x1

    const/4 v7, 0x3

    if-nez v5, :cond_44

    invoke-virtual {p0}, Lv0/q;->o()I

    move-result v5

    and-int/lit16 v8, v5, 0xff

    int-to-byte v8, v8

    aput-byte v8, v4, v0

    shr-int/lit8 v8, v5, 0x8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v4, v6

    shr-int/lit8 v8, v5, 0x10

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    const/4 v9, 0x2

    aput-byte v8, v4, v9

    shr-int/lit8 v5, v5, 0x18

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v4, v7

    :cond_44
    iget v5, p0, Lv0/q;->n:I

    aget-byte v4, v4, v5

    add-int/2addr v5, v6

    and-int/2addr v5, v7

    iput v5, p0, Lv0/q;->n:I

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p4, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_53
    return p3

    :cond_54
    new-instance p0, Lorg/bouncycastle/crypto/d0;

    const-string p1, "output buffer too short"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5c
    new-instance p0, Lorg/bouncycastle/crypto/q;

    const-string p1, "input buffer too short"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_64
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "HC-256 not initialised"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_6c
    iget-boolean v0, p0, Lv0/q;->o:Z

    if-eqz v0, :cond_cb

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_c3

    add-int v0, p5, p3

    array-length v1, p4

    if-gt v0, v1, :cond_bb

    const/4 v0, 0x0

    move v1, v0

    :goto_7c
    if-ge v1, p3, :cond_ba

    add-int v2, p5, v1

    add-int v3, p2, v1

    aget-byte v3, p1, v3

    iget-object v4, p0, Lv0/q;->j:[B

    iget v5, p0, Lv0/q;->n:I

    const/4 v6, 0x1

    const/4 v7, 0x3

    if-nez v5, :cond_ab

    invoke-virtual {p0}, Lv0/q;->n()I

    move-result v5

    and-int/lit16 v8, v5, 0xff

    int-to-byte v8, v8

    aput-byte v8, v4, v0

    shr-int/lit8 v8, v5, 0x8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v4, v6

    shr-int/lit8 v8, v5, 0x10

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    const/4 v9, 0x2

    aput-byte v8, v4, v9

    shr-int/lit8 v5, v5, 0x18

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v4, v7

    :cond_ab
    iget v5, p0, Lv0/q;->n:I

    aget-byte v4, v4, v5

    add-int/2addr v5, v6

    and-int/2addr v5, v7

    iput v5, p0, Lv0/q;->n:I

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p4, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_7c

    :cond_ba
    return p3

    :cond_bb
    new-instance p0, Lorg/bouncycastle/crypto/d0;

    const-string p1, "output buffer too short"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c3
    new-instance p0, Lorg/bouncycastle/crypto/q;

    const-string p1, "input buffer too short"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_cb
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "HC-128 not initialised"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_d3
    iget-boolean v0, p0, Lv0/q;->o:Z

    if-eqz v0, :cond_13f

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_137

    add-int v0, p5, p3

    array-length v1, p4

    if-gt v0, v1, :cond_12f

    const/4 v0, 0x0

    move v1, v0

    :goto_e3
    if-ge v1, p3, :cond_12e

    add-int v2, p5, v1

    add-int v3, p2, v1

    aget-byte v3, p1, v3

    iget v4, p0, Lv0/q;->n:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_11d

    invoke-virtual {p0}, Lv0/q;->c()I

    move-result v4

    iput v4, p0, Lv0/q;->m:I

    iget-object v6, p0, Lv0/q;->j:[B

    int-to-byte v7, v4

    aput-byte v7, v6, v0

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v6, v5

    iget-object v4, p0, Lv0/q;->l:[I

    invoke-virtual {p0}, Lv0/q;->g()I

    move-result v5

    iget-object v6, p0, Lv0/q;->k:[I

    aget v6, v6, v0

    xor-int/2addr v5, v6

    invoke-static {v5, v4}, Lv0/q;->m(I[I)V

    iput-object v4, p0, Lv0/q;->l:[I

    iget-object v4, p0, Lv0/q;->k:[I

    invoke-virtual {p0}, Lv0/q;->e()I

    move-result v5

    invoke-static {v5, v4}, Lv0/q;->m(I[I)V

    iput-object v4, p0, Lv0/q;->k:[I

    iput v0, p0, Lv0/q;->n:I

    :cond_11d
    iget-object v4, p0, Lv0/q;->j:[B

    iget v5, p0, Lv0/q;->n:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lv0/q;->n:I

    aget-byte v4, v4, v5

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p4, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_e3

    :cond_12e
    return p3

    :cond_12f
    new-instance p0, Lorg/bouncycastle/crypto/d0;

    const-string p1, "output buffer too short"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_137
    new-instance p0, Lorg/bouncycastle/crypto/q;

    const-string p1, "input buffer too short"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_13f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Grain v1 not initialised"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_147
    iget-boolean v0, p0, Lv0/q;->o:Z

    if-eqz v0, :cond_1bf

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_1b7

    add-int v0, p5, p3

    array-length v1, p4

    if-gt v0, v1, :cond_1af

    const/4 v0, 0x0

    move v1, v0

    :goto_157
    if-ge v1, p3, :cond_1ae

    add-int v2, p5, v1

    add-int v3, p2, v1

    aget-byte v3, p1, v3

    iget v4, p0, Lv0/q;->n:I

    const/4 v5, 0x3

    if-le v4, v5, :cond_19d

    invoke-virtual {p0}, Lv0/q;->b()I

    move-result v4

    iput v4, p0, Lv0/q;->m:I

    iget-object v6, p0, Lv0/q;->j:[B

    int-to-byte v7, v4

    aput-byte v7, v6, v0

    shr-int/lit8 v7, v4, 0x8

    int-to-byte v7, v7

    const/4 v8, 0x1

    aput-byte v7, v6, v8

    shr-int/lit8 v7, v4, 0x10

    int-to-byte v7, v7

    const/4 v8, 0x2

    aput-byte v7, v6, v8

    shr-int/lit8 v4, v4, 0x18

    int-to-byte v4, v4

    aput-byte v4, v6, v5

    iget-object v4, p0, Lv0/q;->l:[I

    invoke-virtual {p0}, Lv0/q;->f()I

    move-result v5

    iget-object v6, p0, Lv0/q;->k:[I

    aget v6, v6, v0

    xor-int/2addr v5, v6

    invoke-static {v5, v4}, Lv0/q;->l(I[I)V

    iput-object v4, p0, Lv0/q;->l:[I

    iget-object v4, p0, Lv0/q;->k:[I

    invoke-virtual {p0}, Lv0/q;->d()I

    move-result v5

    invoke-static {v5, v4}, Lv0/q;->l(I[I)V

    iput-object v4, p0, Lv0/q;->k:[I

    iput v0, p0, Lv0/q;->n:I

    :cond_19d
    iget-object v4, p0, Lv0/q;->j:[B

    iget v5, p0, Lv0/q;->n:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lv0/q;->n:I

    aget-byte v4, v4, v5

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p4, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_157

    :cond_1ae
    return p3

    :cond_1af
    new-instance p0, Lorg/bouncycastle/crypto/d0;

    const-string p1, "output buffer too short"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1b7
    new-instance p0, Lorg/bouncycastle/crypto/q;

    const-string p1, "input buffer too short"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1bf
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Grain-128 not initialised"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_1c8
    .packed-switch 0x0
        :pswitch_147
        :pswitch_d3
        :pswitch_6c
    .end packed-switch
.end method

.method public final reset()V
    .registers 15

    iget v0, p0, Lv0/q;->g:I

    packed-switch v0, :pswitch_data_11a

    invoke-virtual {p0}, Lv0/q;->i()V

    return-void

    :pswitch_9
    invoke-virtual {p0}, Lv0/q;->h()V

    return-void

    :pswitch_d
    const/4 v0, 0x2

    iput v0, p0, Lv0/q;->n:I

    iget-object v1, p0, Lv0/q;->h:[B

    iget-object v2, p0, Lv0/q;->i:[B

    const/16 v3, 0x8

    const/4 v4, -0x1

    aput-byte v4, v2, v3

    const/16 v5, 0x9

    aput-byte v4, v2, v5

    iput-object v1, p0, Lv0/q;->h:[B

    iput-object v2, p0, Lv0/q;->i:[B

    const/4 v1, 0x0

    move v2, v1

    move v4, v2

    :goto_24
    iget-object v5, p0, Lv0/q;->l:[I

    array-length v6, v5

    if-ge v2, v6, :cond_4e

    iget-object v6, p0, Lv0/q;->h:[B

    add-int/lit8 v7, v4, 0x1

    aget-byte v8, v6, v7

    shl-int/2addr v8, v3

    aget-byte v6, v6, v4

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v6, v8

    const v8, 0xffff

    and-int/2addr v6, v8

    aput v6, v5, v2

    iget-object v5, p0, Lv0/q;->k:[I

    iget-object v6, p0, Lv0/q;->i:[B

    aget-byte v7, v6, v7

    shl-int/2addr v7, v3

    aget-byte v6, v6, v4

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v6, v7

    and-int/2addr v6, v8

    aput v6, v5, v2

    add-int/2addr v4, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    :cond_4e
    move v0, v1

    :goto_4f
    const/16 v2, 0xa

    if-ge v0, v2, :cond_7d

    invoke-virtual {p0}, Lv0/q;->c()I

    move-result v2

    iput v2, p0, Lv0/q;->m:I

    iget-object v2, p0, Lv0/q;->l:[I

    invoke-virtual {p0}, Lv0/q;->g()I

    move-result v3

    iget-object v4, p0, Lv0/q;->k:[I

    aget v4, v4, v1

    xor-int/2addr v3, v4

    iget v4, p0, Lv0/q;->m:I

    xor-int/2addr v3, v4

    invoke-static {v3, v2}, Lv0/q;->m(I[I)V

    iput-object v2, p0, Lv0/q;->l:[I

    iget-object v2, p0, Lv0/q;->k:[I

    invoke-virtual {p0}, Lv0/q;->e()I

    move-result v3

    iget v4, p0, Lv0/q;->m:I

    xor-int/2addr v3, v4

    invoke-static {v3, v2}, Lv0/q;->m(I[I)V

    iput-object v2, p0, Lv0/q;->k:[I

    add-int/lit8 v0, v0, 0x1

    goto :goto_4f

    :cond_7d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lv0/q;->o:Z

    return-void

    :pswitch_81
    const/4 v0, 0x4

    iput v0, p0, Lv0/q;->n:I

    iget-object v1, p0, Lv0/q;->h:[B

    iget-object v2, p0, Lv0/q;->i:[B

    const/16 v3, 0xc

    const/4 v4, -0x1

    aput-byte v4, v2, v3

    const/16 v3, 0xd

    aput-byte v4, v2, v3

    const/16 v3, 0xe

    aput-byte v4, v2, v3

    const/16 v3, 0xf

    aput-byte v4, v2, v3

    iput-object v1, p0, Lv0/q;->h:[B

    iput-object v2, p0, Lv0/q;->i:[B

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_a0
    iget-object v4, p0, Lv0/q;->l:[I

    array-length v5, v4

    const/16 v6, 0x8

    if-ge v2, v5, :cond_e9

    iget-object v5, p0, Lv0/q;->h:[B

    add-int/lit8 v7, v3, 0x3

    aget-byte v8, v5, v7

    shl-int/lit8 v8, v8, 0x18

    add-int/lit8 v9, v3, 0x2

    aget-byte v10, v5, v9

    shl-int/lit8 v10, v10, 0x10

    const/high16 v11, 0xff0000

    and-int/2addr v10, v11

    or-int/2addr v8, v10

    add-int/lit8 v10, v3, 0x1

    aget-byte v12, v5, v10

    shl-int/2addr v12, v6

    const v13, 0xff00

    and-int/2addr v12, v13

    or-int/2addr v8, v12

    aget-byte v5, v5, v3

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v5, v8

    aput v5, v4, v2

    iget-object v4, p0, Lv0/q;->k:[I

    iget-object v5, p0, Lv0/q;->i:[B

    aget-byte v7, v5, v7

    shl-int/lit8 v7, v7, 0x18

    aget-byte v8, v5, v9

    shl-int/lit8 v8, v8, 0x10

    and-int/2addr v8, v11

    or-int/2addr v7, v8

    aget-byte v8, v5, v10

    shl-int/lit8 v6, v8, 0x8

    and-int/2addr v6, v13

    or-int/2addr v6, v7

    aget-byte v5, v5, v3

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v5, v6

    aput v5, v4, v2

    add-int/2addr v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_a0

    :cond_e9
    move v0, v1

    :goto_ea
    if-ge v0, v6, :cond_116

    invoke-virtual {p0}, Lv0/q;->b()I

    move-result v2

    iput v2, p0, Lv0/q;->m:I

    iget-object v2, p0, Lv0/q;->l:[I

    invoke-virtual {p0}, Lv0/q;->f()I

    move-result v3

    iget-object v4, p0, Lv0/q;->k:[I

    aget v4, v4, v1

    xor-int/2addr v3, v4

    iget v4, p0, Lv0/q;->m:I

    xor-int/2addr v3, v4

    invoke-static {v3, v2}, Lv0/q;->l(I[I)V

    iput-object v2, p0, Lv0/q;->l:[I

    iget-object v2, p0, Lv0/q;->k:[I

    invoke-virtual {p0}, Lv0/q;->d()I

    move-result v3

    iget v4, p0, Lv0/q;->m:I

    xor-int/2addr v3, v4

    invoke-static {v3, v2}, Lv0/q;->l(I[I)V

    iput-object v2, p0, Lv0/q;->k:[I

    add-int/lit8 v0, v0, 0x1

    goto :goto_ea

    :cond_116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lv0/q;->o:Z

    return-void

    :pswitch_data_11a
    .packed-switch 0x0
        :pswitch_81
        :pswitch_d
        :pswitch_9
    .end packed-switch
.end method
