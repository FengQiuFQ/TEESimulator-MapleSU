.class public final Lv0/g;
.super Lv0/f;


# instance fields
.field public final B:[I

.field public final C:[I

.field public final D:[I

.field public final E:[I

.field public final F:[I


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lv0/f;-><init>(I)V

    const/16 v0, 0x30

    new-array v1, v0, [I

    iput-object v1, p0, Lv0/g;->B:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lv0/g;->C:[I

    const/16 v0, 0xc0

    new-array v1, v0, [I

    iput-object v1, p0, Lv0/g;->D:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lv0/g;->E:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lv0/g;->F:[I

    return-void
.end method


# virtual methods
.method public final c()I
    .registers 1

    const/16 p0, 0x10

    return p0
.end method

.method public final getAlgorithmName()Ljava/lang/String;
    .registers 1

    const-string p0, "CAST6"

    return-object p0
.end method

.method public final q(II[B[B)I
    .registers 16

    invoke-static {p1, p3}, Lv0/f;->e(I[B)I

    move-result v0

    add-int/lit8 v1, p1, 0x4

    invoke-static {v1, p3}, Lv0/f;->e(I[B)I

    move-result v1

    add-int/lit8 v2, p1, 0x8

    invoke-static {v2, p3}, Lv0/f;->e(I[B)I

    move-result v2

    const/16 v3, 0xc

    add-int/2addr p1, v3

    invoke-static {p1, p3}, Lv0/f;->e(I[B)I

    move-result p1

    const/4 p3, 0x0

    move v4, p3

    :goto_19
    const/4 v5, 0x6

    const/4 v6, 0x3

    iget-object v7, p0, Lv0/g;->B:[I

    iget-object v8, p0, Lv0/g;->C:[I

    if-ge v4, v5, :cond_51

    rsub-int/lit8 v5, v4, 0xb

    mul-int/lit8 v5, v5, 0x4

    aget v9, v8, v5

    aget v10, v7, v5

    invoke-static {p1, v9, v10}, Lv0/f;->f(III)I

    move-result v9

    xor-int/2addr v2, v9

    add-int/lit8 v9, v5, 0x1

    aget v10, v8, v9

    aget v9, v7, v9

    invoke-static {v2, v10, v9}, Lv0/f;->g(III)I

    move-result v9

    xor-int/2addr v1, v9

    add-int/lit8 v9, v5, 0x2

    aget v10, v8, v9

    aget v9, v7, v9

    invoke-static {v1, v10, v9}, Lv0/f;->h(III)I

    move-result v9

    xor-int/2addr v0, v9

    add-int/2addr v5, v6

    aget v6, v8, v5

    aget v5, v7, v5

    invoke-static {v0, v6, v5}, Lv0/f;->f(III)I

    move-result v5

    xor-int/2addr p1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    :cond_51
    :goto_51
    if-ge v5, v3, :cond_84

    rsub-int/lit8 p0, v5, 0xb

    mul-int/lit8 p0, p0, 0x4

    add-int/lit8 v4, p0, 0x3

    aget v9, v8, v4

    aget v4, v7, v4

    invoke-static {v0, v9, v4}, Lv0/f;->f(III)I

    move-result v4

    xor-int/2addr p1, v4

    add-int/lit8 v4, p0, 0x2

    aget v9, v8, v4

    aget v4, v7, v4

    invoke-static {v1, v9, v4}, Lv0/f;->h(III)I

    move-result v4

    xor-int/2addr v0, v4

    add-int/lit8 v4, p0, 0x1

    aget v9, v8, v4

    aget v4, v7, v4

    invoke-static {v2, v9, v4}, Lv0/f;->g(III)I

    move-result v4

    xor-int/2addr v1, v4

    aget v4, v8, p0

    aget p0, v7, p0

    invoke-static {p1, v4, p0}, Lv0/f;->f(III)I

    move-result p0

    xor-int/2addr v2, p0

    add-int/lit8 v5, v5, 0x1

    goto :goto_51

    :cond_84
    filled-new-array {v0, v1, v2, p1}, [I

    move-result-object p0

    aget p1, p0, p3

    invoke-static {p4, p1, p2}, Lv0/f;->a([BII)V

    const/4 p1, 0x1

    aget p1, p0, p1

    add-int/lit8 p3, p2, 0x4

    invoke-static {p4, p1, p3}, Lv0/f;->a([BII)V

    const/4 p1, 0x2

    aget p1, p0, p1

    add-int/lit8 p3, p2, 0x8

    invoke-static {p4, p1, p3}, Lv0/f;->a([BII)V

    aget p0, p0, v6

    add-int/2addr p2, v3

    invoke-static {p4, p0, p2}, Lv0/f;->a([BII)V

    const/16 p0, 0x10

    return p0
.end method

.method public final r(II[B[B)I
    .registers 16

    invoke-static {p1, p3}, Lv0/f;->e(I[B)I

    move-result v0

    add-int/lit8 v1, p1, 0x4

    invoke-static {v1, p3}, Lv0/f;->e(I[B)I

    move-result v1

    add-int/lit8 v2, p1, 0x8

    invoke-static {v2, p3}, Lv0/f;->e(I[B)I

    move-result v2

    const/16 v3, 0xc

    add-int/2addr p1, v3

    invoke-static {p1, p3}, Lv0/f;->e(I[B)I

    move-result p1

    const/4 p3, 0x0

    move v4, p3

    :goto_19
    const/4 v5, 0x6

    const/4 v6, 0x3

    iget-object v7, p0, Lv0/g;->B:[I

    iget-object v8, p0, Lv0/g;->C:[I

    if-ge v4, v5, :cond_4f

    mul-int/lit8 v5, v4, 0x4

    aget v9, v8, v5

    aget v10, v7, v5

    invoke-static {p1, v9, v10}, Lv0/f;->f(III)I

    move-result v9

    xor-int/2addr v2, v9

    add-int/lit8 v9, v5, 0x1

    aget v10, v8, v9

    aget v9, v7, v9

    invoke-static {v2, v10, v9}, Lv0/f;->g(III)I

    move-result v9

    xor-int/2addr v1, v9

    add-int/lit8 v9, v5, 0x2

    aget v10, v8, v9

    aget v9, v7, v9

    invoke-static {v1, v10, v9}, Lv0/f;->h(III)I

    move-result v9

    xor-int/2addr v0, v9

    add-int/2addr v5, v6

    aget v6, v8, v5

    aget v5, v7, v5

    invoke-static {v0, v6, v5}, Lv0/f;->f(III)I

    move-result v5

    xor-int/2addr p1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    :cond_4f
    :goto_4f
    if-ge v5, v3, :cond_80

    mul-int/lit8 p0, v5, 0x4

    add-int/lit8 v4, p0, 0x3

    aget v9, v8, v4

    aget v4, v7, v4

    invoke-static {v0, v9, v4}, Lv0/f;->f(III)I

    move-result v4

    xor-int/2addr p1, v4

    add-int/lit8 v4, p0, 0x2

    aget v9, v8, v4

    aget v4, v7, v4

    invoke-static {v1, v9, v4}, Lv0/f;->h(III)I

    move-result v4

    xor-int/2addr v0, v4

    add-int/lit8 v4, p0, 0x1

    aget v9, v8, v4

    aget v4, v7, v4

    invoke-static {v2, v9, v4}, Lv0/f;->g(III)I

    move-result v4

    xor-int/2addr v1, v4

    aget v4, v8, p0

    aget p0, v7, p0

    invoke-static {p1, v4, p0}, Lv0/f;->f(III)I

    move-result p0

    xor-int/2addr v2, p0

    add-int/lit8 v5, v5, 0x1

    goto :goto_4f

    :cond_80
    filled-new-array {v0, v1, v2, p1}, [I

    move-result-object p0

    aget p1, p0, p3

    invoke-static {p4, p1, p2}, Lv0/f;->a([BII)V

    const/4 p1, 0x1

    aget p1, p0, p1

    add-int/lit8 p3, p2, 0x4

    invoke-static {p4, p1, p3}, Lv0/f;->a([BII)V

    const/4 p1, 0x2

    aget p1, p0, p1

    add-int/lit8 p3, p2, 0x8

    invoke-static {p4, p1, p3}, Lv0/f;->a([BII)V

    aget p0, p0, v6

    add-int/2addr p2, v3

    invoke-static {p4, p0, p2}, Lv0/f;->a([BII)V

    const/16 p0, 0x10

    return p0
.end method

.method public final reset()V
    .registers 1

    return-void
.end method

.method public final z([B)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const v2, 0x5a827999

    const/16 v3, 0x13

    const/4 v4, 0x0

    move v5, v4

    :goto_b
    const/16 v6, 0x18

    const/16 v7, 0x8

    iget-object v8, v0, Lv0/g;->D:[I

    iget-object v9, v0, Lv0/g;->E:[I

    if-ge v5, v6, :cond_2d

    move v6, v4

    :goto_16
    if-ge v6, v7, :cond_2a

    mul-int/lit8 v10, v5, 0x8

    add-int/2addr v10, v6

    aput v2, v9, v10

    const v11, 0x6ed9eba1

    add-int/2addr v2, v11

    aput v3, v8, v10

    add-int/lit8 v3, v3, 0x11

    and-int/lit8 v3, v3, 0x1f

    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    :cond_2a
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_2d
    const/16 v2, 0x40

    new-array v2, v2, [B

    array-length v3, v1

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v1, v4

    :goto_36
    iget-object v3, v0, Lv0/g;->F:[I

    if-ge v1, v7, :cond_45

    mul-int/lit8 v5, v1, 0x4

    invoke-static {v5, v2}, Lv0/f;->e(I[B)I

    move-result v5

    aput v5, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    :cond_45
    move v1, v4

    :goto_46
    const/16 v2, 0xc

    if-ge v1, v2, :cond_186

    mul-int/lit8 v2, v1, 0x2

    mul-int/lit8 v5, v1, 0x10

    const/4 v6, 0x6

    aget v10, v3, v6

    const/4 v11, 0x7

    aget v12, v3, v11

    aget v13, v9, v5

    aget v14, v8, v5

    invoke-static {v12, v13, v14}, Lv0/f;->f(III)I

    move-result v12

    xor-int/2addr v10, v12

    aput v10, v3, v6

    const/4 v12, 0x5

    aget v13, v3, v12

    add-int/lit8 v14, v5, 0x1

    aget v15, v9, v14

    aget v14, v8, v14

    invoke-static {v10, v15, v14}, Lv0/f;->g(III)I

    move-result v10

    xor-int/2addr v10, v13

    aput v10, v3, v12

    const/4 v13, 0x4

    aget v14, v3, v13

    add-int/lit8 v15, v5, 0x2

    move/from16 v16, v4

    aget v4, v9, v15

    aget v15, v8, v15

    invoke-static {v10, v4, v15}, Lv0/f;->h(III)I

    move-result v4

    xor-int/2addr v4, v14

    aput v4, v3, v13

    const/4 v10, 0x3

    aget v14, v3, v10

    add-int/lit8 v15, v5, 0x3

    move/from16 p1, v6

    aget v6, v9, v15

    aget v15, v8, v15

    invoke-static {v4, v6, v15}, Lv0/f;->f(III)I

    move-result v4

    xor-int/2addr v4, v14

    aput v4, v3, v10

    const/4 v6, 0x2

    aget v14, v3, v6

    add-int/lit8 v15, v5, 0x4

    move/from16 v17, v6

    aget v6, v9, v15

    aget v15, v8, v15

    invoke-static {v4, v6, v15}, Lv0/f;->g(III)I

    move-result v4

    xor-int/2addr v4, v14

    aput v4, v3, v17

    const/4 v6, 0x1

    aget v14, v3, v6

    add-int/lit8 v15, v5, 0x5

    move/from16 v18, v6

    aget v6, v9, v15

    aget v15, v8, v15

    invoke-static {v4, v6, v15}, Lv0/f;->h(III)I

    move-result v4

    xor-int/2addr v4, v14

    aput v4, v3, v18

    aget v6, v3, v16

    add-int/lit8 v14, v5, 0x6

    aget v15, v9, v14

    aget v14, v8, v14

    invoke-static {v4, v15, v14}, Lv0/f;->f(III)I

    move-result v4

    xor-int/2addr v4, v6

    aput v4, v3, v16

    aget v6, v3, v11

    add-int/2addr v5, v11

    aget v14, v9, v5

    aget v5, v8, v5

    invoke-static {v4, v14, v5}, Lv0/f;->g(III)I

    move-result v4

    xor-int/2addr v4, v6

    aput v4, v3, v11

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v2, v7

    aget v5, v3, p1

    aget v6, v9, v2

    aget v14, v8, v2

    invoke-static {v4, v6, v14}, Lv0/f;->f(III)I

    move-result v4

    xor-int/2addr v4, v5

    aput v4, v3, p1

    aget v5, v3, v12

    add-int/lit8 v6, v2, 0x1

    aget v14, v9, v6

    aget v6, v8, v6

    invoke-static {v4, v14, v6}, Lv0/f;->g(III)I

    move-result v4

    xor-int/2addr v4, v5

    aput v4, v3, v12

    aget v5, v3, v13

    add-int/lit8 v6, v2, 0x2

    aget v14, v9, v6

    aget v6, v8, v6

    invoke-static {v4, v14, v6}, Lv0/f;->h(III)I

    move-result v4

    xor-int/2addr v4, v5

    aput v4, v3, v13

    aget v5, v3, v10

    add-int/lit8 v6, v2, 0x3

    aget v14, v9, v6

    aget v6, v8, v6

    invoke-static {v4, v14, v6}, Lv0/f;->f(III)I

    move-result v4

    xor-int/2addr v4, v5

    aput v4, v3, v10

    aget v5, v3, v17

    add-int/lit8 v6, v2, 0x4

    aget v14, v9, v6

    aget v6, v8, v6

    invoke-static {v4, v14, v6}, Lv0/f;->g(III)I

    move-result v4

    xor-int/2addr v4, v5

    aput v4, v3, v17

    aget v5, v3, v18

    add-int/lit8 v6, v2, 0x5

    aget v14, v9, v6

    aget v6, v8, v6

    invoke-static {v4, v14, v6}, Lv0/f;->h(III)I

    move-result v4

    xor-int/2addr v4, v5

    aput v4, v3, v18

    aget v5, v3, v16

    add-int/lit8 v6, v2, 0x6

    aget v14, v9, v6

    aget v6, v8, v6

    invoke-static {v4, v14, v6}, Lv0/f;->f(III)I

    move-result v4

    xor-int/2addr v4, v5

    aput v4, v3, v16

    aget v5, v3, v11

    add-int/2addr v2, v11

    aget v6, v9, v2

    aget v2, v8, v2

    invoke-static {v4, v6, v2}, Lv0/f;->g(III)I

    move-result v2

    xor-int/2addr v2, v5

    aput v2, v3, v11

    mul-int/lit8 v2, v1, 0x4

    aget v4, v3, v16

    and-int/lit8 v4, v4, 0x1f

    iget-object v5, v0, Lv0/g;->B:[I

    aput v4, v5, v2

    add-int/lit8 v4, v2, 0x1

    aget v6, v3, v17

    and-int/lit8 v6, v6, 0x1f

    aput v6, v5, v4

    add-int/lit8 v6, v2, 0x2

    aget v13, v3, v13

    and-int/lit8 v13, v13, 0x1f

    aput v13, v5, v6

    add-int/lit8 v13, v2, 0x3

    aget v14, v3, p1

    and-int/lit8 v14, v14, 0x1f

    aput v14, v5, v13

    aget v5, v3, v11

    iget-object v11, v0, Lv0/g;->C:[I

    aput v5, v11, v2

    aget v2, v3, v12

    aput v2, v11, v4

    aget v2, v3, v10

    aput v2, v11, v6

    aget v2, v3, v18

    aput v2, v11, v13

    add-int/lit8 v1, v1, 0x1

    move/from16 v4, v16

    goto/16 :goto_46

    :cond_186
    return-void
.end method
