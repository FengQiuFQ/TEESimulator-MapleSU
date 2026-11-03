.class public final Lc1/a;
.super Ljava/lang/Object;


# instance fields
.field public final synthetic a:I

.field public b:[[J


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lc1/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([J)V
    .registers 38

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lc1/a;->a:I

    packed-switch v2, :pswitch_data_168

    const/4 v2, 0x4

    new-array v2, v2, [J

    iget-object v3, v0, Lc1/a;->b:[[J

    const/4 v4, 0x3

    aget-wide v5, v1, v4

    const/16 v7, 0x38

    ushr-long/2addr v5, v7

    long-to-int v5, v5

    and-int/lit16 v5, v5, 0xff

    aget-object v3, v3, v5

    invoke-static {v3, v2}, Lt4/d;->x([J[J)V

    const/16 v3, 0x1e

    :goto_1e
    if-ltz v3, :cond_6f

    const/4 v5, 0x0

    aget-wide v8, v2, v5

    const/4 v6, 0x1

    aget-wide v10, v2, v6

    const/4 v12, 0x2

    aget-wide v13, v2, v12

    aget-wide v15, v2, v4

    ushr-long v17, v15, v7

    const/16 v19, 0x8

    shl-long v20, v8, v19

    xor-long v20, v20, v17

    shl-long v22, v17, v12

    xor-long v20, v20, v22

    const/16 v22, 0x5

    shl-long v22, v17, v22

    xor-long v20, v20, v22

    const/16 v22, 0xa

    shl-long v17, v17, v22

    xor-long v17, v20, v17

    aput-wide v17, v2, v5

    shl-long v17, v10, v19

    ushr-long/2addr v8, v7

    or-long v8, v17, v8

    aput-wide v8, v2, v6

    shl-long v5, v13, v19

    ushr-long v8, v10, v7

    or-long/2addr v5, v8

    aput-wide v5, v2, v12

    shl-long v5, v15, v19

    ushr-long v8, v13, v7

    or-long/2addr v5, v8

    aput-wide v5, v2, v4

    iget-object v5, v0, Lc1/a;->b:[[J

    ushr-int/lit8 v6, v3, 0x3

    aget-wide v8, v1, v6

    and-int/lit8 v6, v3, 0x7

    shl-int/2addr v6, v4

    ushr-long/2addr v8, v6

    long-to-int v6, v8

    and-int/lit16 v6, v6, 0xff

    aget-object v5, v5, v6

    invoke-static {v5, v2, v2}, Lt4/d;->h([J[J[J)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_1e

    :cond_6f
    invoke-static {v2, v1}, Lt4/d;->x([J[J)V

    return-void

    :pswitch_73
    const/4 v2, 0x2

    new-array v3, v2, [J

    iget-object v4, v0, Lc1/a;->b:[[J

    const/4 v5, 0x1

    aget-wide v6, v1, v5

    const/16 v8, 0x38

    ushr-long/2addr v6, v8

    long-to-int v6, v6

    and-int/lit16 v6, v6, 0xff

    aget-object v4, v4, v6

    const/4 v6, 0x0

    aget-wide v9, v4, v6

    aput-wide v9, v3, v6

    aget-wide v9, v4, v5

    aput-wide v9, v3, v5

    const/16 v4, 0xe

    :goto_8e
    if-ltz v4, :cond_cc

    aget-wide v9, v3, v6

    aget-wide v11, v3, v5

    ushr-long v13, v11, v8

    const/16 v7, 0x8

    shl-long v15, v9, v7

    xor-long/2addr v15, v13

    shl-long v17, v13, v5

    xor-long v15, v15, v17

    shl-long v17, v13, v2

    xor-long v15, v15, v17

    const/16 v17, 0x7

    shl-long v13, v13, v17

    xor-long/2addr v13, v15

    aput-wide v13, v3, v6

    shl-long/2addr v11, v7

    ushr-long/2addr v9, v8

    or-long/2addr v9, v11

    aput-wide v9, v3, v5

    iget-object v7, v0, Lc1/a;->b:[[J

    ushr-int/lit8 v11, v4, 0x3

    aget-wide v11, v1, v11

    and-int/lit8 v15, v4, 0x7

    shl-int/lit8 v15, v15, 0x3

    ushr-long/2addr v11, v15

    long-to-int v11, v11

    and-int/lit16 v11, v11, 0xff

    aget-object v7, v7, v11

    aget-wide v11, v7, v6

    xor-long/2addr v11, v13

    aput-wide v11, v3, v6

    aget-wide v11, v7, v5

    xor-long/2addr v9, v11

    aput-wide v9, v3, v5

    add-int/lit8 v4, v4, -0x1

    goto :goto_8e

    :cond_cc
    aget-wide v7, v3, v6

    aput-wide v7, v1, v6

    aget-wide v2, v3, v5

    aput-wide v2, v1, v5

    return-void

    :pswitch_d5
    const/16 v2, 0x8

    new-array v3, v2, [J

    iget-object v4, v0, Lc1/a;->b:[[J

    const/4 v5, 0x7

    aget-wide v6, v1, v5

    const/16 v8, 0x38

    ushr-long/2addr v6, v8

    long-to-int v6, v6

    and-int/lit16 v6, v6, 0xff

    aget-object v4, v4, v6

    invoke-static {v4, v3}, Lq4/k;->z([J[J)V

    const/16 v4, 0x3e

    :goto_eb
    if-ltz v4, :cond_163

    const/4 v6, 0x0

    aget-wide v9, v3, v6

    const/4 v7, 0x1

    aget-wide v11, v3, v7

    const/4 v13, 0x2

    aget-wide v14, v3, v13

    const/16 v16, 0x3

    aget-wide v17, v3, v16

    const/16 v19, 0x4

    aget-wide v20, v3, v19

    const/16 v22, 0x5

    aget-wide v23, v3, v22

    const/16 v25, 0x6

    aget-wide v26, v3, v25

    aget-wide v28, v3, v5

    ushr-long v30, v28, v8

    shl-long v32, v9, v2

    xor-long v32, v32, v30

    shl-long v34, v30, v13

    xor-long v32, v32, v34

    shl-long v34, v30, v22

    xor-long v32, v32, v34

    shl-long v30, v30, v2

    xor-long v30, v32, v30

    aput-wide v30, v3, v6

    shl-long v30, v11, v2

    ushr-long/2addr v9, v8

    or-long v9, v30, v9

    aput-wide v9, v3, v7

    shl-long v6, v14, v2

    ushr-long v9, v11, v8

    or-long/2addr v6, v9

    aput-wide v6, v3, v13

    shl-long v6, v17, v2

    ushr-long v9, v14, v8

    or-long/2addr v6, v9

    aput-wide v6, v3, v16

    shl-long v6, v20, v2

    ushr-long v9, v17, v8

    or-long/2addr v6, v9

    aput-wide v6, v3, v19

    shl-long v6, v23, v2

    ushr-long v9, v20, v8

    or-long/2addr v6, v9

    aput-wide v6, v3, v22

    shl-long v6, v26, v2

    ushr-long v9, v23, v8

    or-long/2addr v6, v9

    aput-wide v6, v3, v25

    shl-long v6, v28, v2

    ushr-long v9, v26, v8

    or-long/2addr v6, v9

    aput-wide v6, v3, v5

    iget-object v6, v0, Lc1/a;->b:[[J

    ushr-int/lit8 v7, v4, 0x3

    aget-wide v9, v1, v7

    and-int/lit8 v7, v4, 0x7

    shl-int/lit8 v7, v7, 0x3

    ushr-long/2addr v9, v7

    long-to-int v7, v9

    and-int/lit16 v7, v7, 0xff

    aget-object v6, v6, v7

    invoke-static {v6, v3, v3}, Lq4/k;->c([J[J[J)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_eb

    :cond_163
    invoke-static {v3, v1}, Lq4/k;->z([J[J)V

    return-void

    nop

    :pswitch_data_168
    .packed-switch 0x0
        :pswitch_d5
        :pswitch_73
    .end packed-switch
.end method
