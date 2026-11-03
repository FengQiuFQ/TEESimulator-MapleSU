.class public final Ll2/a;
.super Lk2/b0;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:I

.field public final synthetic n:Ljava/lang/Object;

.field public final synthetic o:Lk2/h;


# direct methods
.method public synthetic constructor <init>(Lk2/h;ILjava/lang/Object;I)V
    .registers 5

    iput p4, p0, Ll2/a;->l:I

    const/4 p4, 0x1

    invoke-direct {p0, p4}, Lk2/b0;-><init>(I)V

    iput p2, p0, Ll2/a;->m:I

    iput-object p3, p0, Ll2/a;->n:Ljava/lang/Object;

    iput-object p1, p0, Ll2/a;->o:Lk2/h;

    return-void
.end method


# virtual methods
.method public final m()I
    .registers 2

    iget v0, p0, Ll2/a;->l:I

    packed-switch v0, :pswitch_data_60

    iget p0, p0, Ll2/a;->m:I

    return p0

    :pswitch_8
    iget p0, p0, Ll2/a;->m:I

    return p0

    :pswitch_b
    iget p0, p0, Ll2/a;->m:I

    return p0

    :pswitch_e
    iget p0, p0, Ll2/a;->m:I

    return p0

    :pswitch_11
    iget p0, p0, Ll2/a;->m:I

    return p0

    :pswitch_14
    iget p0, p0, Ll2/a;->m:I

    return p0

    :pswitch_17
    iget p0, p0, Ll2/a;->m:I

    return p0

    :pswitch_1a
    iget p0, p0, Ll2/a;->m:I

    return p0

    :pswitch_1d
    iget p0, p0, Ll2/a;->m:I

    return p0

    :pswitch_20
    iget p0, p0, Ll2/a;->m:I

    return p0

    :pswitch_23
    iget p0, p0, Ll2/a;->m:I

    return p0

    :pswitch_26
    iget p0, p0, Ll2/a;->m:I

    return p0

    :pswitch_29
    iget p0, p0, Ll2/a;->m:I

    return p0

    :pswitch_2c
    iget p0, p0, Ll2/a;->m:I

    return p0

    :pswitch_2f
    iget p0, p0, Ll2/a;->m:I

    return p0

    :pswitch_32
    iget p0, p0, Ll2/a;->m:I

    return p0

    :pswitch_35
    iget p0, p0, Ll2/a;->m:I

    return p0

    :pswitch_38
    iget p0, p0, Ll2/a;->m:I

    return p0

    :pswitch_3b
    iget p0, p0, Ll2/a;->m:I

    return p0

    :pswitch_3e
    iget p0, p0, Ll2/a;->m:I

    return p0

    :pswitch_41
    iget p0, p0, Ll2/a;->m:I

    return p0

    :pswitch_44
    iget p0, p0, Ll2/a;->m:I

    return p0

    :pswitch_47
    iget p0, p0, Ll2/a;->m:I

    return p0

    :pswitch_4a
    iget p0, p0, Ll2/a;->m:I

    return p0

    :pswitch_4d
    iget p0, p0, Ll2/a;->m:I

    return p0

    :pswitch_50
    iget p0, p0, Ll2/a;->m:I

    return p0

    :pswitch_53
    iget p0, p0, Ll2/a;->m:I

    return p0

    :pswitch_56
    iget p0, p0, Ll2/a;->m:I

    return p0

    :pswitch_59
    iget p0, p0, Ll2/a;->m:I

    return p0

    :pswitch_5c
    iget p0, p0, Ll2/a;->m:I

    return p0

    nop

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_5c
        :pswitch_59
        :pswitch_56
        :pswitch_53
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method public final u(I)Lk2/p;
    .registers 16

    iget v0, p0, Ll2/a;->l:I

    packed-switch v0, :pswitch_data_950

    const/4 v0, 0x7

    new-array v1, v0, [J

    new-array v2, v0, [J

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_d
    iget v6, p0, Ll2/a;->m:I

    if-ge v4, v6, :cond_3c

    xor-int v6, v4, p1

    add-int/lit8 v6, v6, -0x1

    shr-int/lit8 v6, v6, 0x1f

    int-to-long v6, v6

    move v8, v3

    :goto_19
    if-ge v8, v0, :cond_37

    aget-wide v9, v1, v8

    iget-object v11, p0, Ll2/a;->n:Ljava/lang/Object;

    check-cast v11, [J

    add-int v12, v5, v8

    aget-wide v12, v11, v12

    and-long/2addr v12, v6

    xor-long/2addr v9, v12

    aput-wide v9, v1, v8

    aget-wide v9, v2, v8

    add-int/lit8 v12, v5, 0x7

    add-int/2addr v12, v8

    aget-wide v11, v11, v12

    and-long/2addr v11, v6

    xor-long/2addr v9, v11

    aput-wide v9, v2, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_19

    :cond_37
    add-int/lit8 v5, v5, 0xe

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_3c
    iget-object p0, p0, Ll2/a;->o:Lk2/h;

    move-object v4, p0

    check-cast v4, Ln2/v0;

    new-instance v5, Ln2/t0;

    invoke-direct {v5, v1}, Ln2/t0;-><init>([J)V

    new-instance v6, Ln2/t0;

    invoke-direct {v6, v2}, Ln2/t0;-><init>([J)V

    sget-object v7, Ln2/v0;->k:[Lk2/b0;

    new-instance v3, Lk2/n;

    const/16 v8, 0x10

    invoke-direct/range {v3 .. v8}, Lk2/n;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    return-object v3

    :pswitch_55
    const/4 v0, 0x7

    new-array v1, v0, [J

    new-array v2, v0, [J

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_5d
    iget v6, p0, Ll2/a;->m:I

    if-ge v4, v6, :cond_8c

    xor-int v6, v4, p1

    add-int/lit8 v6, v6, -0x1

    shr-int/lit8 v6, v6, 0x1f

    int-to-long v6, v6

    move v8, v3

    :goto_69
    if-ge v8, v0, :cond_87

    aget-wide v9, v1, v8

    iget-object v11, p0, Ll2/a;->n:Ljava/lang/Object;

    check-cast v11, [J

    add-int v12, v5, v8

    aget-wide v12, v11, v12

    and-long/2addr v12, v6

    xor-long/2addr v9, v12

    aput-wide v9, v1, v8

    aget-wide v9, v2, v8

    add-int/lit8 v12, v5, 0x7

    add-int/2addr v12, v8

    aget-wide v11, v11, v12

    and-long/2addr v11, v6

    xor-long/2addr v9, v11

    aput-wide v9, v2, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_69

    :cond_87
    add-int/lit8 v5, v5, 0xe

    add-int/lit8 v4, v4, 0x1

    goto :goto_5d

    :cond_8c
    iget-object p0, p0, Ll2/a;->o:Lk2/h;

    move-object v4, p0

    check-cast v4, Ln2/u0;

    new-instance v5, Ln2/t0;

    invoke-direct {v5, v1}, Ln2/t0;-><init>([J)V

    new-instance v6, Ln2/t0;

    invoke-direct {v6, v2}, Ln2/t0;-><init>([J)V

    sget-object v7, Ln2/u0;->k:[Lk2/b0;

    new-instance v3, Lk2/n;

    const/16 v8, 0xf

    invoke-direct/range {v3 .. v8}, Lk2/n;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    return-object v3

    :pswitch_a5
    const/4 v0, 0x5

    new-array v1, v0, [J

    new-array v2, v0, [J

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_ad
    iget v6, p0, Ll2/a;->m:I

    if-ge v4, v6, :cond_dc

    xor-int v6, v4, p1

    add-int/lit8 v6, v6, -0x1

    shr-int/lit8 v6, v6, 0x1f

    int-to-long v6, v6

    move v8, v3

    :goto_b9
    if-ge v8, v0, :cond_d7

    aget-wide v9, v1, v8

    iget-object v11, p0, Ll2/a;->n:Ljava/lang/Object;

    check-cast v11, [J

    add-int v12, v5, v8

    aget-wide v12, v11, v12

    and-long/2addr v12, v6

    xor-long/2addr v9, v12

    aput-wide v9, v1, v8

    aget-wide v9, v2, v8

    add-int/lit8 v12, v5, 0x5

    add-int/2addr v12, v8

    aget-wide v11, v11, v12

    and-long/2addr v11, v6

    xor-long/2addr v9, v11

    aput-wide v9, v2, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_b9

    :cond_d7
    add-int/lit8 v5, v5, 0xa

    add-int/lit8 v4, v4, 0x1

    goto :goto_ad

    :cond_dc
    iget-object p0, p0, Ll2/a;->o:Lk2/h;

    move-object v4, p0

    check-cast v4, Ln2/s0;

    new-instance v5, Ln2/q0;

    invoke-direct {v5, v1}, Ln2/q0;-><init>([J)V

    new-instance v6, Ln2/q0;

    invoke-direct {v6, v2}, Ln2/q0;-><init>([J)V

    sget-object v7, Ln2/s0;->k:[Lk2/b0;

    new-instance v3, Lk2/n;

    const/16 v8, 0xe

    invoke-direct/range {v3 .. v8}, Lk2/n;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    return-object v3

    :pswitch_f5
    const/4 v0, 0x5

    new-array v1, v0, [J

    new-array v2, v0, [J

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_fd
    iget v6, p0, Ll2/a;->m:I

    if-ge v4, v6, :cond_12c

    xor-int v6, v4, p1

    add-int/lit8 v6, v6, -0x1

    shr-int/lit8 v6, v6, 0x1f

    int-to-long v6, v6

    move v8, v3

    :goto_109
    if-ge v8, v0, :cond_127

    aget-wide v9, v1, v8

    iget-object v11, p0, Ll2/a;->n:Ljava/lang/Object;

    check-cast v11, [J

    add-int v12, v5, v8

    aget-wide v12, v11, v12

    and-long/2addr v12, v6

    xor-long/2addr v9, v12

    aput-wide v9, v1, v8

    aget-wide v9, v2, v8

    add-int/lit8 v12, v5, 0x5

    add-int/2addr v12, v8

    aget-wide v11, v11, v12

    and-long/2addr v11, v6

    xor-long/2addr v9, v11

    aput-wide v9, v2, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_109

    :cond_127
    add-int/lit8 v5, v5, 0xa

    add-int/lit8 v4, v4, 0x1

    goto :goto_fd

    :cond_12c
    iget-object p0, p0, Ll2/a;->o:Lk2/h;

    move-object v4, p0

    check-cast v4, Ln2/r0;

    new-instance v5, Ln2/q0;

    invoke-direct {v5, v1}, Ln2/q0;-><init>([J)V

    new-instance v6, Ln2/q0;

    invoke-direct {v6, v2}, Ln2/q0;-><init>([J)V

    sget-object v7, Ln2/r0;->k:[Lk2/b0;

    new-instance v3, Lk2/n;

    const/16 v8, 0xd

    invoke-direct/range {v3 .. v8}, Lk2/n;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    return-object v3

    :pswitch_145
    const/4 v0, 0x4

    new-array v1, v0, [J

    new-array v2, v0, [J

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_14d
    iget v6, p0, Ll2/a;->m:I

    if-ge v4, v6, :cond_17c

    xor-int v6, v4, p1

    add-int/lit8 v6, v6, -0x1

    shr-int/lit8 v6, v6, 0x1f

    int-to-long v6, v6

    move v8, v3

    :goto_159
    if-ge v8, v0, :cond_177

    aget-wide v9, v1, v8

    iget-object v11, p0, Ll2/a;->n:Ljava/lang/Object;

    check-cast v11, [J

    add-int v12, v5, v8

    aget-wide v12, v11, v12

    and-long/2addr v12, v6

    xor-long/2addr v9, v12

    aput-wide v9, v1, v8

    aget-wide v9, v2, v8

    add-int/lit8 v12, v5, 0x4

    add-int/2addr v12, v8

    aget-wide v11, v11, v12

    and-long/2addr v11, v6

    xor-long/2addr v9, v11

    aput-wide v9, v2, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_159

    :cond_177
    add-int/lit8 v5, v5, 0x8

    add-int/lit8 v4, v4, 0x1

    goto :goto_14d

    :cond_17c
    iget-object p0, p0, Ll2/a;->o:Lk2/h;

    move-object v4, p0

    check-cast v4, Ln2/p0;

    new-instance v5, Ln2/o0;

    invoke-direct {v5, v1}, Ln2/o0;-><init>([J)V

    new-instance v6, Ln2/o0;

    invoke-direct {v6, v2}, Ln2/o0;-><init>([J)V

    sget-object v7, Ln2/p0;->k:[Lk2/b0;

    new-instance v3, Lk2/n;

    const/16 v8, 0xc

    invoke-direct/range {v3 .. v8}, Lk2/n;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    return-object v3

    :pswitch_195
    const/4 v0, 0x4

    new-array v1, v0, [J

    new-array v2, v0, [J

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_19d
    iget v6, p0, Ll2/a;->m:I

    if-ge v4, v6, :cond_1cc

    xor-int v6, v4, p1

    add-int/lit8 v6, v6, -0x1

    shr-int/lit8 v6, v6, 0x1f

    int-to-long v6, v6

    move v8, v3

    :goto_1a9
    if-ge v8, v0, :cond_1c7

    aget-wide v9, v1, v8

    iget-object v11, p0, Ll2/a;->n:Ljava/lang/Object;

    check-cast v11, [J

    add-int v12, v5, v8

    aget-wide v12, v11, v12

    and-long/2addr v12, v6

    xor-long/2addr v9, v12

    aput-wide v9, v1, v8

    aget-wide v9, v2, v8

    add-int/lit8 v12, v5, 0x4

    add-int/2addr v12, v8

    aget-wide v11, v11, v12

    and-long/2addr v11, v6

    xor-long/2addr v9, v11

    aput-wide v9, v2, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1a9

    :cond_1c7
    add-int/lit8 v5, v5, 0x8

    add-int/lit8 v4, v4, 0x1

    goto :goto_19d

    :cond_1cc
    iget-object p0, p0, Ll2/a;->o:Lk2/h;

    move-object v4, p0

    check-cast v4, Ln2/n0;

    new-instance v5, Ln2/l0;

    invoke-direct {v5, v1}, Ln2/l0;-><init>([J)V

    new-instance v6, Ln2/l0;

    invoke-direct {v6, v2}, Ln2/l0;-><init>([J)V

    sget-object v7, Ln2/n0;->k:[Lk2/b0;

    new-instance v3, Lk2/n;

    const/16 v8, 0xb

    invoke-direct/range {v3 .. v8}, Lk2/n;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    return-object v3

    :pswitch_1e5
    const/4 v0, 0x4

    new-array v1, v0, [J

    new-array v2, v0, [J

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_1ed
    iget v6, p0, Ll2/a;->m:I

    if-ge v4, v6, :cond_21c

    xor-int v6, v4, p1

    add-int/lit8 v6, v6, -0x1

    shr-int/lit8 v6, v6, 0x1f

    int-to-long v6, v6

    move v8, v3

    :goto_1f9
    if-ge v8, v0, :cond_217

    aget-wide v9, v1, v8

    iget-object v11, p0, Ll2/a;->n:Ljava/lang/Object;

    check-cast v11, [J

    add-int v12, v5, v8

    aget-wide v12, v11, v12

    and-long/2addr v12, v6

    xor-long/2addr v9, v12

    aput-wide v9, v1, v8

    aget-wide v9, v2, v8

    add-int/lit8 v12, v5, 0x4

    add-int/2addr v12, v8

    aget-wide v11, v11, v12

    and-long/2addr v11, v6

    xor-long/2addr v9, v11

    aput-wide v9, v2, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1f9

    :cond_217
    add-int/lit8 v5, v5, 0x8

    add-int/lit8 v4, v4, 0x1

    goto :goto_1ed

    :cond_21c
    iget-object p0, p0, Ll2/a;->o:Lk2/h;

    move-object v4, p0

    check-cast v4, Ln2/m0;

    new-instance v5, Ln2/l0;

    invoke-direct {v5, v1}, Ln2/l0;-><init>([J)V

    new-instance v6, Ln2/l0;

    invoke-direct {v6, v2}, Ln2/l0;-><init>([J)V

    sget-object v7, Ln2/m0;->k:[Lk2/b0;

    new-instance v3, Lk2/n;

    const/16 v8, 0xa

    invoke-direct/range {v3 .. v8}, Lk2/n;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    return-object v3

    :pswitch_235
    const/4 v0, 0x4

    new-array v1, v0, [J

    new-array v2, v0, [J

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_23d
    iget v6, p0, Ll2/a;->m:I

    if-ge v4, v6, :cond_26c

    xor-int v6, v4, p1

    add-int/lit8 v6, v6, -0x1

    shr-int/lit8 v6, v6, 0x1f

    int-to-long v6, v6

    move v8, v3

    :goto_249
    if-ge v8, v0, :cond_267

    aget-wide v9, v1, v8

    iget-object v11, p0, Ll2/a;->n:Ljava/lang/Object;

    check-cast v11, [J

    add-int v12, v5, v8

    aget-wide v12, v11, v12

    and-long/2addr v12, v6

    xor-long/2addr v9, v12

    aput-wide v9, v1, v8

    aget-wide v9, v2, v8

    add-int/lit8 v12, v5, 0x4

    add-int/2addr v12, v8

    aget-wide v11, v11, v12

    and-long/2addr v11, v6

    xor-long/2addr v9, v11

    aput-wide v9, v2, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_249

    :cond_267
    add-int/lit8 v5, v5, 0x8

    add-int/lit8 v4, v4, 0x1

    goto :goto_23d

    :cond_26c
    iget-object p0, p0, Ll2/a;->o:Lk2/h;

    move-object v4, p0

    check-cast v4, Ln2/k0;

    new-instance v5, Ln2/i0;

    invoke-direct {v5, v1}, Ln2/i0;-><init>([J)V

    new-instance v6, Ln2/i0;

    invoke-direct {v6, v2}, Ln2/i0;-><init>([J)V

    sget-object v7, Ln2/k0;->k:[Lk2/b0;

    new-instance v3, Lk2/n;

    const/16 v8, 0x9

    invoke-direct/range {v3 .. v8}, Lk2/n;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    return-object v3

    :pswitch_285
    const/4 v0, 0x4

    new-array v1, v0, [J

    new-array v2, v0, [J

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_28d
    iget v6, p0, Ll2/a;->m:I

    if-ge v4, v6, :cond_2bc

    xor-int v6, v4, p1

    add-int/lit8 v6, v6, -0x1

    shr-int/lit8 v6, v6, 0x1f

    int-to-long v6, v6

    move v8, v3

    :goto_299
    if-ge v8, v0, :cond_2b7

    aget-wide v9, v1, v8

    iget-object v11, p0, Ll2/a;->n:Ljava/lang/Object;

    check-cast v11, [J

    add-int v12, v5, v8

    aget-wide v12, v11, v12

    and-long/2addr v12, v6

    xor-long/2addr v9, v12

    aput-wide v9, v1, v8

    aget-wide v9, v2, v8

    add-int/lit8 v12, v5, 0x4

    add-int/2addr v12, v8

    aget-wide v11, v11, v12

    and-long/2addr v11, v6

    xor-long/2addr v9, v11

    aput-wide v9, v2, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_299

    :cond_2b7
    add-int/lit8 v5, v5, 0x8

    add-int/lit8 v4, v4, 0x1

    goto :goto_28d

    :cond_2bc
    iget-object p0, p0, Ll2/a;->o:Lk2/h;

    move-object v4, p0

    check-cast v4, Ln2/j0;

    new-instance v5, Ln2/i0;

    invoke-direct {v5, v1}, Ln2/i0;-><init>([J)V

    new-instance v6, Ln2/i0;

    invoke-direct {v6, v2}, Ln2/i0;-><init>([J)V

    sget-object v7, Ln2/j0;->k:[Lk2/b0;

    new-instance v3, Lk2/n;

    const/16 v8, 0x8

    invoke-direct/range {v3 .. v8}, Lk2/n;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    return-object v3

    :pswitch_2d5
    const/4 v0, 0x3

    new-array v1, v0, [J

    new-array v2, v0, [J

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_2dd
    iget v6, p0, Ll2/a;->m:I

    if-ge v4, v6, :cond_30c

    xor-int v6, v4, p1

    add-int/lit8 v6, v6, -0x1

    shr-int/lit8 v6, v6, 0x1f

    int-to-long v6, v6

    move v8, v3

    :goto_2e9
    if-ge v8, v0, :cond_307

    aget-wide v9, v1, v8

    iget-object v11, p0, Ll2/a;->n:Ljava/lang/Object;

    check-cast v11, [J

    add-int v12, v5, v8

    aget-wide v12, v11, v12

    and-long/2addr v12, v6

    xor-long/2addr v9, v12

    aput-wide v9, v1, v8

    aget-wide v9, v2, v8

    add-int/lit8 v12, v5, 0x3

    add-int/2addr v12, v8

    aget-wide v11, v11, v12

    and-long/2addr v11, v6

    xor-long/2addr v9, v11

    aput-wide v9, v2, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2e9

    :cond_307
    add-int/lit8 v5, v5, 0x6

    add-int/lit8 v4, v4, 0x1

    goto :goto_2dd

    :cond_30c
    iget-object p0, p0, Ll2/a;->o:Lk2/h;

    move-object v4, p0

    check-cast v4, Ln2/h0;

    new-instance v5, Ln2/e0;

    invoke-direct {v5, v1}, Ln2/e0;-><init>([J)V

    new-instance v6, Ln2/e0;

    invoke-direct {v6, v2}, Ln2/e0;-><init>([J)V

    sget-object v7, Ln2/h0;->k:[Lk2/b0;

    new-instance v3, Lk2/n;

    const/4 v8, 0x7

    invoke-direct/range {v3 .. v8}, Lk2/n;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    return-object v3

    :pswitch_324
    const/4 v0, 0x3

    new-array v1, v0, [J

    new-array v2, v0, [J

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_32c
    iget v6, p0, Ll2/a;->m:I

    if-ge v4, v6, :cond_35b

    xor-int v6, v4, p1

    add-int/lit8 v6, v6, -0x1

    shr-int/lit8 v6, v6, 0x1f

    int-to-long v6, v6

    move v8, v3

    :goto_338
    if-ge v8, v0, :cond_356

    aget-wide v9, v1, v8

    iget-object v11, p0, Ll2/a;->n:Ljava/lang/Object;

    check-cast v11, [J

    add-int v12, v5, v8

    aget-wide v12, v11, v12

    and-long/2addr v12, v6

    xor-long/2addr v9, v12

    aput-wide v9, v1, v8

    aget-wide v9, v2, v8

    add-int/lit8 v12, v5, 0x3

    add-int/2addr v12, v8

    aget-wide v11, v11, v12

    and-long/2addr v11, v6

    xor-long/2addr v9, v11

    aput-wide v9, v2, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_338

    :cond_356
    add-int/lit8 v5, v5, 0x6

    add-int/lit8 v4, v4, 0x1

    goto :goto_32c

    :cond_35b
    iget-object p0, p0, Ll2/a;->o:Lk2/h;

    move-object v4, p0

    check-cast v4, Ln2/g0;

    new-instance v5, Ln2/e0;

    invoke-direct {v5, v1}, Ln2/e0;-><init>([J)V

    new-instance v6, Ln2/e0;

    invoke-direct {v6, v2}, Ln2/e0;-><init>([J)V

    sget-object v7, Ln2/g0;->k:[Lk2/b0;

    new-instance v3, Lk2/n;

    const/4 v8, 0x6

    invoke-direct/range {v3 .. v8}, Lk2/n;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    return-object v3

    :pswitch_373
    const/4 v0, 0x3

    new-array v1, v0, [J

    new-array v2, v0, [J

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_37b
    iget v6, p0, Ll2/a;->m:I

    if-ge v4, v6, :cond_3aa

    xor-int v6, v4, p1

    add-int/lit8 v6, v6, -0x1

    shr-int/lit8 v6, v6, 0x1f

    int-to-long v6, v6

    move v8, v3

    :goto_387
    if-ge v8, v0, :cond_3a5

    aget-wide v9, v1, v8

    iget-object v11, p0, Ll2/a;->n:Ljava/lang/Object;

    check-cast v11, [J

    add-int v12, v5, v8

    aget-wide v12, v11, v12

    and-long/2addr v12, v6

    xor-long/2addr v9, v12

    aput-wide v9, v1, v8

    aget-wide v9, v2, v8

    add-int/lit8 v12, v5, 0x3

    add-int/2addr v12, v8

    aget-wide v11, v11, v12

    and-long/2addr v11, v6

    xor-long/2addr v9, v11

    aput-wide v9, v2, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_387

    :cond_3a5
    add-int/lit8 v5, v5, 0x6

    add-int/lit8 v4, v4, 0x1

    goto :goto_37b

    :cond_3aa
    iget-object p0, p0, Ll2/a;->o:Lk2/h;

    move-object v4, p0

    check-cast v4, Ln2/f0;

    new-instance v5, Ln2/e0;

    invoke-direct {v5, v1}, Ln2/e0;-><init>([J)V

    new-instance v6, Ln2/e0;

    invoke-direct {v6, v2}, Ln2/e0;-><init>([J)V

    sget-object v7, Ln2/f0;->k:[Lk2/b0;

    new-instance v3, Lk2/n;

    const/4 v8, 0x5

    invoke-direct/range {v3 .. v8}, Lk2/n;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    return-object v3

    :pswitch_3c2
    const/4 v0, 0x3

    new-array v1, v0, [J

    new-array v2, v0, [J

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_3ca
    iget v6, p0, Ll2/a;->m:I

    if-ge v4, v6, :cond_3f9

    xor-int v6, v4, p1

    add-int/lit8 v6, v6, -0x1

    shr-int/lit8 v6, v6, 0x1f

    int-to-long v6, v6

    move v8, v3

    :goto_3d6
    if-ge v8, v0, :cond_3f4

    aget-wide v9, v1, v8

    iget-object v11, p0, Ll2/a;->n:Ljava/lang/Object;

    check-cast v11, [J

    add-int v12, v5, v8

    aget-wide v12, v11, v12

    and-long/2addr v12, v6

    xor-long/2addr v9, v12

    aput-wide v9, v1, v8

    aget-wide v9, v2, v8

    add-int/lit8 v12, v5, 0x3

    add-int/2addr v12, v8

    aget-wide v11, v11, v12

    and-long/2addr v11, v6

    xor-long/2addr v9, v11

    aput-wide v9, v2, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_3d6

    :cond_3f4
    add-int/lit8 v5, v5, 0x6

    add-int/lit8 v4, v4, 0x1

    goto :goto_3ca

    :cond_3f9
    iget-object p0, p0, Ll2/a;->o:Lk2/h;

    move-object v4, p0

    check-cast v4, Ln2/d0;

    new-instance v5, Ln2/b0;

    invoke-direct {v5, v1}, Ln2/b0;-><init>([J)V

    new-instance v6, Ln2/b0;

    invoke-direct {v6, v2}, Ln2/b0;-><init>([J)V

    sget-object v7, Ln2/d0;->k:[Lk2/b0;

    new-instance v3, Lk2/n;

    const/4 v8, 0x4

    invoke-direct/range {v3 .. v8}, Lk2/n;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    return-object v3

    :pswitch_411
    const/4 v0, 0x3

    new-array v1, v0, [J

    new-array v2, v0, [J

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_419
    iget v6, p0, Ll2/a;->m:I

    if-ge v4, v6, :cond_448

    xor-int v6, v4, p1

    add-int/lit8 v6, v6, -0x1

    shr-int/lit8 v6, v6, 0x1f

    int-to-long v6, v6

    move v8, v3

    :goto_425
    if-ge v8, v0, :cond_443

    aget-wide v9, v1, v8

    iget-object v11, p0, Ll2/a;->n:Ljava/lang/Object;

    check-cast v11, [J

    add-int v12, v5, v8

    aget-wide v12, v11, v12

    and-long/2addr v12, v6

    xor-long/2addr v9, v12

    aput-wide v9, v1, v8

    aget-wide v9, v2, v8

    add-int/lit8 v12, v5, 0x3

    add-int/2addr v12, v8

    aget-wide v11, v11, v12

    and-long/2addr v11, v6

    xor-long/2addr v9, v11

    aput-wide v9, v2, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_425

    :cond_443
    add-int/lit8 v5, v5, 0x6

    add-int/lit8 v4, v4, 0x1

    goto :goto_419

    :cond_448
    iget-object p0, p0, Ll2/a;->o:Lk2/h;

    move-object v4, p0

    check-cast v4, Ln2/c0;

    new-instance v5, Ln2/b0;

    invoke-direct {v5, v1}, Ln2/b0;-><init>([J)V

    new-instance v6, Ln2/b0;

    invoke-direct {v6, v2}, Ln2/b0;-><init>([J)V

    sget-object v7, Ln2/c0;->k:[Lk2/b0;

    new-instance v3, Lk2/n;

    const/4 v8, 0x3

    invoke-direct/range {v3 .. v8}, Lk2/n;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    return-object v3

    :pswitch_460
    const/4 v0, 0x2

    new-array v1, v0, [J

    new-array v2, v0, [J

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_468
    iget v6, p0, Ll2/a;->m:I

    if-ge v4, v6, :cond_497

    xor-int v6, v4, p1

    add-int/lit8 v6, v6, -0x1

    shr-int/lit8 v6, v6, 0x1f

    int-to-long v6, v6

    move v8, v3

    :goto_474
    if-ge v8, v0, :cond_492

    aget-wide v9, v1, v8

    iget-object v11, p0, Ll2/a;->n:Ljava/lang/Object;

    check-cast v11, [J

    add-int v12, v5, v8

    aget-wide v12, v11, v12

    and-long/2addr v12, v6

    xor-long/2addr v9, v12

    aput-wide v9, v1, v8

    aget-wide v9, v2, v8

    add-int/lit8 v12, v5, 0x2

    add-int/2addr v12, v8

    aget-wide v11, v11, v12

    and-long/2addr v11, v6

    xor-long/2addr v9, v11

    aput-wide v9, v2, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_474

    :cond_492
    add-int/lit8 v5, v5, 0x4

    add-int/lit8 v4, v4, 0x1

    goto :goto_468

    :cond_497
    iget-object p0, p0, Ll2/a;->o:Lk2/h;

    move-object v4, p0

    check-cast v4, Ln2/a0;

    new-instance v5, Ln2/y;

    invoke-direct {v5, v1}, Ln2/y;-><init>([J)V

    new-instance v6, Ln2/y;

    invoke-direct {v6, v2}, Ln2/y;-><init>([J)V

    sget-object v7, Ln2/a0;->k:[Lk2/b0;

    new-instance v3, Lk2/n;

    const/4 v8, 0x2

    invoke-direct/range {v3 .. v8}, Lk2/n;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    return-object v3

    :pswitch_4af
    const/4 v0, 0x2

    new-array v1, v0, [J

    new-array v2, v0, [J

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_4b7
    iget v6, p0, Ll2/a;->m:I

    if-ge v4, v6, :cond_4e6

    xor-int v6, v4, p1

    add-int/lit8 v6, v6, -0x1

    shr-int/lit8 v6, v6, 0x1f

    int-to-long v6, v6

    move v8, v3

    :goto_4c3
    if-ge v8, v0, :cond_4e1

    aget-wide v9, v1, v8

    iget-object v11, p0, Ll2/a;->n:Ljava/lang/Object;

    check-cast v11, [J

    add-int v12, v5, v8

    aget-wide v12, v11, v12

    and-long/2addr v12, v6

    xor-long/2addr v9, v12

    aput-wide v9, v1, v8

    aget-wide v9, v2, v8

    add-int/lit8 v12, v5, 0x2

    add-int/2addr v12, v8

    aget-wide v11, v11, v12

    and-long/2addr v11, v6

    xor-long/2addr v9, v11

    aput-wide v9, v2, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_4c3

    :cond_4e1
    add-int/lit8 v5, v5, 0x4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4b7

    :cond_4e6
    iget-object p0, p0, Ll2/a;->o:Lk2/h;

    move-object v4, p0

    check-cast v4, Ln2/z;

    new-instance v5, Ln2/y;

    invoke-direct {v5, v1}, Ln2/y;-><init>([J)V

    new-instance v6, Ln2/y;

    invoke-direct {v6, v2}, Ln2/y;-><init>([J)V

    sget-object v7, Ln2/z;->k:[Lk2/b0;

    new-instance v3, Lk2/n;

    const/4 v8, 0x1

    invoke-direct/range {v3 .. v8}, Lk2/n;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    return-object v3

    :pswitch_4fe
    const/16 v0, 0x11

    new-array v1, v0, [I

    new-array v2, v0, [I

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_507
    iget v6, p0, Ll2/a;->m:I

    if-ge v4, v6, :cond_535

    xor-int v6, v4, p1

    add-int/lit8 v6, v6, -0x1

    shr-int/lit8 v6, v6, 0x1f

    move v7, v3

    :goto_512
    if-ge v7, v0, :cond_530

    aget v8, v1, v7

    iget-object v9, p0, Ll2/a;->n:Ljava/lang/Object;

    check-cast v9, [I

    add-int v10, v5, v7

    aget v10, v9, v10

    and-int/2addr v10, v6

    xor-int/2addr v8, v10

    aput v8, v1, v7

    aget v8, v2, v7

    add-int/lit8 v10, v5, 0x11

    add-int/2addr v10, v7

    aget v9, v9, v10

    and-int/2addr v9, v6

    xor-int/2addr v8, v9

    aput v8, v2, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_512

    :cond_530
    add-int/lit8 v5, v5, 0x22

    add-int/lit8 v4, v4, 0x1

    goto :goto_507

    :cond_535
    iget-object p0, p0, Ll2/a;->o:Lk2/h;

    move-object v4, p0

    check-cast v4, Ln2/w;

    new-instance v5, Ln2/x;

    invoke-direct {v5, v1}, Ln2/x;-><init>([I)V

    new-instance v6, Ln2/x;

    invoke-direct {v6, v2}, Ln2/x;-><init>([I)V

    sget-object v7, Ln2/w;->k:[Lk2/b0;

    new-instance v3, Lk2/o;

    const/16 v8, 0xe

    invoke-direct/range {v3 .. v8}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    return-object v3

    :pswitch_54e
    const/16 v0, 0xc

    new-array v1, v0, [I

    new-array v2, v0, [I

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_557
    iget v6, p0, Ll2/a;->m:I

    if-ge v4, v6, :cond_585

    xor-int v6, v4, p1

    add-int/lit8 v6, v6, -0x1

    shr-int/lit8 v6, v6, 0x1f

    move v7, v3

    :goto_562
    if-ge v7, v0, :cond_580

    aget v8, v1, v7

    iget-object v9, p0, Ll2/a;->n:Ljava/lang/Object;

    check-cast v9, [I

    add-int v10, v5, v7

    aget v10, v9, v10

    and-int/2addr v10, v6

    xor-int/2addr v8, v10

    aput v8, v1, v7

    aget v8, v2, v7

    add-int/lit8 v10, v5, 0xc

    add-int/2addr v10, v7

    aget v9, v9, v10

    and-int/2addr v9, v6

    xor-int/2addr v8, v9

    aput v8, v2, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_562

    :cond_580
    add-int/lit8 v5, v5, 0x18

    add-int/lit8 v4, v4, 0x1

    goto :goto_557

    :cond_585
    iget-object p0, p0, Ll2/a;->o:Lk2/h;

    move-object v4, p0

    check-cast v4, Ln2/u;

    new-instance v5, Ln2/v;

    invoke-direct {v5, v1}, Ln2/v;-><init>([I)V

    new-instance v6, Ln2/v;

    invoke-direct {v6, v2}, Ln2/v;-><init>([I)V

    sget-object v7, Ln2/u;->k:[Lk2/b0;

    new-instance v3, Lk2/o;

    const/16 v8, 0xd

    invoke-direct/range {v3 .. v8}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    return-object v3

    :pswitch_59e
    const/16 v0, 0x8

    new-array v1, v0, [I

    new-array v2, v0, [I

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_5a7
    iget v6, p0, Ll2/a;->m:I

    if-ge v4, v6, :cond_5d5

    xor-int v6, v4, p1

    add-int/lit8 v6, v6, -0x1

    shr-int/lit8 v6, v6, 0x1f

    move v7, v3

    :goto_5b2
    if-ge v7, v0, :cond_5d0

    aget v8, v1, v7

    iget-object v9, p0, Ll2/a;->n:Ljava/lang/Object;

    check-cast v9, [I

    add-int v10, v5, v7

    aget v10, v9, v10

    and-int/2addr v10, v6

    xor-int/2addr v8, v10

    aput v8, v1, v7

    aget v8, v2, v7

    add-int/lit8 v10, v5, 0x8

    add-int/2addr v10, v7

    aget v9, v9, v10

    and-int/2addr v9, v6

    xor-int/2addr v8, v9

    aput v8, v2, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_5b2

    :cond_5d0
    add-int/lit8 v5, v5, 0x10

    add-int/lit8 v4, v4, 0x1

    goto :goto_5a7

    :cond_5d5
    iget-object p0, p0, Ll2/a;->o:Lk2/h;

    move-object v4, p0

    check-cast v4, Ln2/s;

    new-instance v5, Ln2/t;

    invoke-direct {v5, v1}, Ln2/t;-><init>([I)V

    new-instance v6, Ln2/t;

    invoke-direct {v6, v2}, Ln2/t;-><init>([I)V

    sget-object v7, Ln2/s;->k:[Lk2/b0;

    new-instance v3, Lk2/o;

    const/16 v8, 0xc

    invoke-direct/range {v3 .. v8}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    return-object v3

    :pswitch_5ee
    const/16 v0, 0x8

    new-array v1, v0, [I

    new-array v2, v0, [I

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_5f7
    iget v6, p0, Ll2/a;->m:I

    if-ge v4, v6, :cond_625

    xor-int v6, v4, p1

    add-int/lit8 v6, v6, -0x1

    shr-int/lit8 v6, v6, 0x1f

    move v7, v3

    :goto_602
    if-ge v7, v0, :cond_620

    aget v8, v1, v7

    iget-object v9, p0, Ll2/a;->n:Ljava/lang/Object;

    check-cast v9, [I

    add-int v10, v5, v7

    aget v10, v9, v10

    and-int/2addr v10, v6

    xor-int/2addr v8, v10

    aput v8, v1, v7

    aget v8, v2, v7

    add-int/lit8 v10, v5, 0x8

    add-int/2addr v10, v7

    aget v9, v9, v10

    and-int/2addr v9, v6

    xor-int/2addr v8, v9

    aput v8, v2, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_602

    :cond_620
    add-int/lit8 v5, v5, 0x10

    add-int/lit8 v4, v4, 0x1

    goto :goto_5f7

    :cond_625
    iget-object p0, p0, Ll2/a;->o:Lk2/h;

    move-object v4, p0

    check-cast v4, Ln2/q;

    new-instance v5, Ln2/r;

    invoke-direct {v5, v1}, Ln2/r;-><init>([I)V

    new-instance v6, Ln2/r;

    invoke-direct {v6, v2}, Ln2/r;-><init>([I)V

    sget-object v7, Ln2/q;->k:[Lk2/b0;

    new-instance v3, Lk2/o;

    const/16 v8, 0xb

    invoke-direct/range {v3 .. v8}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    return-object v3

    :pswitch_63e
    const/4 v0, 0x7

    new-array v1, v0, [I

    new-array v2, v0, [I

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_646
    iget v6, p0, Ll2/a;->m:I

    if-ge v4, v6, :cond_674

    xor-int v6, v4, p1

    add-int/lit8 v6, v6, -0x1

    shr-int/lit8 v6, v6, 0x1f

    move v7, v3

    :goto_651
    if-ge v7, v0, :cond_66f

    aget v8, v1, v7

    iget-object v9, p0, Ll2/a;->n:Ljava/lang/Object;

    check-cast v9, [I

    add-int v10, v5, v7

    aget v10, v9, v10

    and-int/2addr v10, v6

    xor-int/2addr v8, v10

    aput v8, v1, v7

    aget v8, v2, v7

    add-int/lit8 v10, v5, 0x7

    add-int/2addr v10, v7

    aget v9, v9, v10

    and-int/2addr v9, v6

    xor-int/2addr v8, v9

    aput v8, v2, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_651

    :cond_66f
    add-int/lit8 v5, v5, 0xe

    add-int/lit8 v4, v4, 0x1

    goto :goto_646

    :cond_674
    iget-object p0, p0, Ll2/a;->o:Lk2/h;

    move-object v4, p0

    check-cast v4, Ln2/o;

    new-instance v5, Ln2/p;

    invoke-direct {v5, v1}, Ln2/p;-><init>([I)V

    new-instance v6, Ln2/p;

    invoke-direct {v6, v2}, Ln2/p;-><init>([I)V

    sget-object v7, Ln2/o;->k:[Lk2/b0;

    new-instance v3, Lk2/o;

    const/16 v8, 0xa

    invoke-direct/range {v3 .. v8}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    return-object v3

    :pswitch_68d
    const/4 v0, 0x7

    new-array v1, v0, [I

    new-array v2, v0, [I

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_695
    iget v6, p0, Ll2/a;->m:I

    if-ge v4, v6, :cond_6c3

    xor-int v6, v4, p1

    add-int/lit8 v6, v6, -0x1

    shr-int/lit8 v6, v6, 0x1f

    move v7, v3

    :goto_6a0
    if-ge v7, v0, :cond_6be

    aget v8, v1, v7

    iget-object v9, p0, Ll2/a;->n:Ljava/lang/Object;

    check-cast v9, [I

    add-int v10, v5, v7

    aget v10, v9, v10

    and-int/2addr v10, v6

    xor-int/2addr v8, v10

    aput v8, v1, v7

    aget v8, v2, v7

    add-int/lit8 v10, v5, 0x7

    add-int/2addr v10, v7

    aget v9, v9, v10

    and-int/2addr v9, v6

    xor-int/2addr v8, v9

    aput v8, v2, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_6a0

    :cond_6be
    add-int/lit8 v5, v5, 0xe

    add-int/lit8 v4, v4, 0x1

    goto :goto_695

    :cond_6c3
    iget-object p0, p0, Ll2/a;->o:Lk2/h;

    move-object v4, p0

    check-cast v4, Ln2/m;

    new-instance v5, Ln2/n;

    invoke-direct {v5, v1}, Ln2/n;-><init>([I)V

    new-instance v6, Ln2/n;

    invoke-direct {v6, v2}, Ln2/n;-><init>([I)V

    sget-object v7, Ln2/m;->k:[Lk2/b0;

    new-instance v3, Lk2/o;

    const/16 v8, 0x9

    invoke-direct/range {v3 .. v8}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    return-object v3

    :pswitch_6dc
    const/4 v0, 0x6

    new-array v1, v0, [I

    new-array v2, v0, [I

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_6e4
    iget v6, p0, Ll2/a;->m:I

    if-ge v4, v6, :cond_712

    xor-int v6, v4, p1

    add-int/lit8 v6, v6, -0x1

    shr-int/lit8 v6, v6, 0x1f

    move v7, v3

    :goto_6ef
    if-ge v7, v0, :cond_70d

    aget v8, v1, v7

    iget-object v9, p0, Ll2/a;->n:Ljava/lang/Object;

    check-cast v9, [I

    add-int v10, v5, v7

    aget v10, v9, v10

    and-int/2addr v10, v6

    xor-int/2addr v8, v10

    aput v8, v1, v7

    aget v8, v2, v7

    add-int/lit8 v10, v5, 0x6

    add-int/2addr v10, v7

    aget v9, v9, v10

    and-int/2addr v9, v6

    xor-int/2addr v8, v9

    aput v8, v2, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_6ef

    :cond_70d
    add-int/lit8 v5, v5, 0xc

    add-int/lit8 v4, v4, 0x1

    goto :goto_6e4

    :cond_712
    iget-object p0, p0, Ll2/a;->o:Lk2/h;

    move-object v4, p0

    check-cast v4, Ln2/k;

    new-instance v5, Ln2/l;

    invoke-direct {v5, v1}, Ln2/l;-><init>([I)V

    new-instance v6, Ln2/l;

    invoke-direct {v6, v2}, Ln2/l;-><init>([I)V

    sget-object v7, Ln2/k;->k:[Lk2/b0;

    new-instance v3, Lk2/o;

    const/16 v8, 0x8

    invoke-direct/range {v3 .. v8}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    return-object v3

    :pswitch_72b
    const/4 v0, 0x6

    new-array v1, v0, [I

    new-array v2, v0, [I

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_733
    iget v6, p0, Ll2/a;->m:I

    if-ge v4, v6, :cond_761

    xor-int v6, v4, p1

    add-int/lit8 v6, v6, -0x1

    shr-int/lit8 v6, v6, 0x1f

    move v7, v3

    :goto_73e
    if-ge v7, v0, :cond_75c

    aget v8, v1, v7

    iget-object v9, p0, Ll2/a;->n:Ljava/lang/Object;

    check-cast v9, [I

    add-int v10, v5, v7

    aget v10, v9, v10

    and-int/2addr v10, v6

    xor-int/2addr v8, v10

    aput v8, v1, v7

    aget v8, v2, v7

    add-int/lit8 v10, v5, 0x6

    add-int/2addr v10, v7

    aget v9, v9, v10

    and-int/2addr v9, v6

    xor-int/2addr v8, v9

    aput v8, v2, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_73e

    :cond_75c
    add-int/lit8 v5, v5, 0xc

    add-int/lit8 v4, v4, 0x1

    goto :goto_733

    :cond_761
    iget-object p0, p0, Ll2/a;->o:Lk2/h;

    move-object v4, p0

    check-cast v4, Ln2/i;

    new-instance v5, Ln2/j;

    invoke-direct {v5, v1}, Ln2/j;-><init>([I)V

    new-instance v6, Ln2/j;

    invoke-direct {v6, v2}, Ln2/j;-><init>([I)V

    sget-object v7, Ln2/i;->k:[Lk2/b0;

    new-instance v3, Lk2/o;

    const/4 v8, 0x7

    invoke-direct/range {v3 .. v8}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    return-object v3

    :pswitch_779
    const/4 v0, 0x5

    new-array v1, v0, [I

    new-array v2, v0, [I

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_781
    iget v6, p0, Ll2/a;->m:I

    if-ge v4, v6, :cond_7af

    xor-int v6, v4, p1

    add-int/lit8 v6, v6, -0x1

    shr-int/lit8 v6, v6, 0x1f

    move v7, v3

    :goto_78c
    if-ge v7, v0, :cond_7aa

    aget v8, v1, v7

    iget-object v9, p0, Ll2/a;->n:Ljava/lang/Object;

    check-cast v9, [I

    add-int v10, v5, v7

    aget v10, v9, v10

    and-int/2addr v10, v6

    xor-int/2addr v8, v10

    aput v8, v1, v7

    aget v8, v2, v7

    add-int/lit8 v10, v5, 0x5

    add-int/2addr v10, v7

    aget v9, v9, v10

    and-int/2addr v9, v6

    xor-int/2addr v8, v9

    aput v8, v2, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_78c

    :cond_7aa
    add-int/lit8 v5, v5, 0xa

    add-int/lit8 v4, v4, 0x1

    goto :goto_781

    :cond_7af
    iget-object p0, p0, Ll2/a;->o:Lk2/h;

    move-object v4, p0

    check-cast v4, Ln2/g;

    new-instance v5, Ln2/h;

    invoke-direct {v5, v1}, Ln2/h;-><init>([I)V

    new-instance v6, Ln2/h;

    invoke-direct {v6, v2}, Ln2/h;-><init>([I)V

    sget-object v7, Ln2/g;->k:[Lk2/b0;

    new-instance v3, Lk2/o;

    const/4 v8, 0x6

    invoke-direct/range {v3 .. v8}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    return-object v3

    :pswitch_7c7
    const/4 v0, 0x5

    new-array v1, v0, [I

    new-array v2, v0, [I

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_7cf
    iget v6, p0, Ll2/a;->m:I

    if-ge v4, v6, :cond_7fd

    xor-int v6, v4, p1

    add-int/lit8 v6, v6, -0x1

    shr-int/lit8 v6, v6, 0x1f

    move v7, v3

    :goto_7da
    if-ge v7, v0, :cond_7f8

    aget v8, v1, v7

    iget-object v9, p0, Ll2/a;->n:Ljava/lang/Object;

    check-cast v9, [I

    add-int v10, v5, v7

    aget v10, v9, v10

    and-int/2addr v10, v6

    xor-int/2addr v8, v10

    aput v8, v1, v7

    aget v8, v2, v7

    add-int/lit8 v10, v5, 0x5

    add-int/2addr v10, v7

    aget v9, v9, v10

    and-int/2addr v9, v6

    xor-int/2addr v8, v9

    aput v8, v2, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_7da

    :cond_7f8
    add-int/lit8 v5, v5, 0xa

    add-int/lit8 v4, v4, 0x1

    goto :goto_7cf

    :cond_7fd
    iget-object p0, p0, Ll2/a;->o:Lk2/h;

    move-object v4, p0

    check-cast v4, Ln2/e;

    new-instance v5, Ln2/f;

    invoke-direct {v5, v1}, Ln2/f;-><init>([I)V

    new-instance v6, Ln2/f;

    invoke-direct {v6, v2}, Ln2/f;-><init>([I)V

    sget-object v7, Ln2/e;->k:[Lk2/b0;

    new-instance v3, Lk2/o;

    const/4 v8, 0x5

    invoke-direct/range {v3 .. v8}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    return-object v3

    :pswitch_815
    const/4 v0, 0x5

    new-array v1, v0, [I

    new-array v2, v0, [I

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_81d
    iget v6, p0, Ll2/a;->m:I

    if-ge v4, v6, :cond_84b

    xor-int v6, v4, p1

    add-int/lit8 v6, v6, -0x1

    shr-int/lit8 v6, v6, 0x1f

    move v7, v3

    :goto_828
    if-ge v7, v0, :cond_846

    aget v8, v1, v7

    iget-object v9, p0, Ll2/a;->n:Ljava/lang/Object;

    check-cast v9, [I

    add-int v10, v5, v7

    aget v10, v9, v10

    and-int/2addr v10, v6

    xor-int/2addr v8, v10

    aput v8, v1, v7

    aget v8, v2, v7

    add-int/lit8 v10, v5, 0x5

    add-int/2addr v10, v7

    aget v9, v9, v10

    and-int/2addr v9, v6

    xor-int/2addr v8, v9

    aput v8, v2, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_828

    :cond_846
    add-int/lit8 v5, v5, 0xa

    add-int/lit8 v4, v4, 0x1

    goto :goto_81d

    :cond_84b
    iget-object p0, p0, Ll2/a;->o:Lk2/h;

    move-object v4, p0

    check-cast v4, Ln2/d;

    new-instance v5, Ln2/h;

    invoke-direct {v5, v1}, Ln2/h;-><init>([I)V

    new-instance v6, Ln2/h;

    invoke-direct {v6, v2}, Ln2/h;-><init>([I)V

    sget-object v7, Ln2/d;->k:[Lk2/b0;

    new-instance v3, Lk2/o;

    const/4 v8, 0x4

    invoke-direct/range {v3 .. v8}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    return-object v3

    :pswitch_863
    const/4 v0, 0x4

    new-array v1, v0, [I

    new-array v2, v0, [I

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_86b
    iget v6, p0, Ll2/a;->m:I

    if-ge v4, v6, :cond_899

    xor-int v6, v4, p1

    add-int/lit8 v6, v6, -0x1

    shr-int/lit8 v6, v6, 0x1f

    move v7, v3

    :goto_876
    if-ge v7, v0, :cond_894

    aget v8, v1, v7

    iget-object v9, p0, Ll2/a;->n:Ljava/lang/Object;

    check-cast v9, [I

    add-int v10, v5, v7

    aget v10, v9, v10

    and-int/2addr v10, v6

    xor-int/2addr v8, v10

    aput v8, v1, v7

    aget v8, v2, v7

    add-int/lit8 v10, v5, 0x4

    add-int/2addr v10, v7

    aget v9, v9, v10

    and-int/2addr v9, v6

    xor-int/2addr v8, v9

    aput v8, v2, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_876

    :cond_894
    add-int/lit8 v5, v5, 0x8

    add-int/lit8 v4, v4, 0x1

    goto :goto_86b

    :cond_899
    iget-object p0, p0, Ll2/a;->o:Lk2/h;

    move-object v4, p0

    check-cast v4, Ln2/a;

    new-instance v5, Ln2/c;

    invoke-direct {v5, v1}, Ln2/c;-><init>([I)V

    new-instance v6, Ln2/c;

    invoke-direct {v6, v2}, Ln2/c;-><init>([I)V

    sget-object v7, Ln2/a;->k:[Lk2/b0;

    new-instance v3, Lk2/o;

    const/4 v8, 0x3

    invoke-direct/range {v3 .. v8}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    return-object v3

    :pswitch_8b1
    const/16 v0, 0x8

    new-array v1, v0, [I

    new-array v2, v0, [I

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_8ba
    iget v6, p0, Ll2/a;->m:I

    if-ge v4, v6, :cond_8e8

    xor-int v6, v4, p1

    add-int/lit8 v6, v6, -0x1

    shr-int/lit8 v6, v6, 0x1f

    move v7, v3

    :goto_8c5
    if-ge v7, v0, :cond_8e3

    aget v8, v1, v7

    iget-object v9, p0, Ll2/a;->n:Ljava/lang/Object;

    check-cast v9, [I

    add-int v10, v5, v7

    aget v10, v9, v10

    and-int/2addr v10, v6

    xor-int/2addr v8, v10

    aput v8, v1, v7

    aget v8, v2, v7

    add-int/lit8 v10, v5, 0x8

    add-int/2addr v10, v7

    aget v9, v9, v10

    and-int/2addr v9, v6

    xor-int/2addr v8, v9

    aput v8, v2, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_8c5

    :cond_8e3
    add-int/lit8 v5, v5, 0x10

    add-int/lit8 v4, v4, 0x1

    goto :goto_8ba

    :cond_8e8
    iget-object p0, p0, Ll2/a;->o:Lk2/h;

    move-object v4, p0

    check-cast v4, Lm2/a;

    new-instance v5, Lm2/c;

    invoke-direct {v5, v1}, Lm2/c;-><init>([I)V

    new-instance v6, Lm2/c;

    invoke-direct {v6, v2}, Lm2/c;-><init>([I)V

    sget-object v7, Lm2/a;->k:[Lk2/b0;

    new-instance v3, Lk2/o;

    const/4 v8, 0x2

    invoke-direct/range {v3 .. v8}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    return-object v3

    :pswitch_900
    const/16 v0, 0x8

    new-array v1, v0, [I

    new-array v2, v0, [I

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_909
    iget v6, p0, Ll2/a;->m:I

    if-ge v4, v6, :cond_937

    xor-int v6, v4, p1

    add-int/lit8 v6, v6, -0x1

    shr-int/lit8 v6, v6, 0x1f

    move v7, v3

    :goto_914
    if-ge v7, v0, :cond_932

    aget v8, v1, v7

    iget-object v9, p0, Ll2/a;->n:Ljava/lang/Object;

    check-cast v9, [I

    add-int v10, v5, v7

    aget v10, v9, v10

    and-int/2addr v10, v6

    xor-int/2addr v8, v10

    aput v8, v1, v7

    aget v8, v2, v7

    add-int/lit8 v10, v5, 0x8

    add-int/2addr v10, v7

    aget v9, v9, v10

    and-int/2addr v9, v6

    xor-int/2addr v8, v9

    aput v8, v2, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_914

    :cond_932
    add-int/lit8 v5, v5, 0x10

    add-int/lit8 v4, v4, 0x1

    goto :goto_909

    :cond_937
    iget-object p0, p0, Ll2/a;->o:Lk2/h;

    move-object v4, p0

    check-cast v4, Ll2/b;

    new-instance v5, Ll2/d;

    invoke-direct {v5, v1}, Ll2/d;-><init>([I)V

    new-instance v6, Ll2/d;

    invoke-direct {v6, v2}, Ll2/d;-><init>([I)V

    sget-object v7, Ll2/b;->m:[Lk2/b0;

    new-instance v3, Lk2/o;

    const/4 v8, 0x1

    invoke-direct/range {v3 .. v8}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    return-object v3

    nop

    :pswitch_data_950
    .packed-switch 0x0
        :pswitch_900
        :pswitch_8b1
        :pswitch_863
        :pswitch_815
        :pswitch_7c7
        :pswitch_779
        :pswitch_72b
        :pswitch_6dc
        :pswitch_68d
        :pswitch_63e
        :pswitch_5ee
        :pswitch_59e
        :pswitch_54e
        :pswitch_4fe
        :pswitch_4af
        :pswitch_460
        :pswitch_411
        :pswitch_3c2
        :pswitch_373
        :pswitch_324
        :pswitch_2d5
        :pswitch_285
        :pswitch_235
        :pswitch_1e5
        :pswitch_195
        :pswitch_145
        :pswitch_f5
        :pswitch_a5
        :pswitch_55
    .end packed-switch
.end method

.method public final v(I)Lk2/p;
    .registers 13

    iget v0, p0, Ll2/a;->l:I

    packed-switch v0, :pswitch_data_694

    const/4 v0, 0x7

    new-array v1, v0, [J

    new-array v2, v0, [J

    mul-int/lit8 p1, p1, 0xe

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v0, :cond_23

    iget-object v4, p0, Ll2/a;->n:Ljava/lang/Object;

    check-cast v4, [J

    add-int v5, p1, v3

    aget-wide v5, v4, v5

    aput-wide v5, v1, v3

    add-int/lit8 v5, p1, 0x7

    add-int/2addr v5, v3

    aget-wide v4, v4, v5

    aput-wide v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_23
    iget-object p0, p0, Ll2/a;->o:Lk2/h;

    move-object v4, p0

    check-cast v4, Ln2/v0;

    new-instance v5, Ln2/t0;

    invoke-direct {v5, v1}, Ln2/t0;-><init>([J)V

    new-instance v6, Ln2/t0;

    invoke-direct {v6, v2}, Ln2/t0;-><init>([J)V

    sget-object v7, Ln2/v0;->k:[Lk2/b0;

    new-instance v3, Lk2/n;

    const/16 v8, 0x10

    invoke-direct/range {v3 .. v8}, Lk2/n;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    return-object v3

    :pswitch_3c
    const/4 v0, 0x7

    new-array v1, v0, [J

    new-array v2, v0, [J

    mul-int/lit8 p1, p1, 0xe

    const/4 v3, 0x0

    :goto_44
    if-ge v3, v0, :cond_5a

    iget-object v4, p0, Ll2/a;->n:Ljava/lang/Object;

    check-cast v4, [J

    add-int v5, p1, v3

    aget-wide v5, v4, v5

    aput-wide v5, v1, v3

    add-int/lit8 v5, p1, 0x7

    add-int/2addr v5, v3

    aget-wide v4, v4, v5

    aput-wide v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_44

    :cond_5a
    iget-object p0, p0, Ll2/a;->o:Lk2/h;

    move-object v4, p0

    check-cast v4, Ln2/u0;

    new-instance v5, Ln2/t0;

    invoke-direct {v5, v1}, Ln2/t0;-><init>([J)V

    new-instance v6, Ln2/t0;

    invoke-direct {v6, v2}, Ln2/t0;-><init>([J)V

    sget-object v7, Ln2/u0;->k:[Lk2/b0;

    new-instance v3, Lk2/n;

    const/16 v8, 0xf

    invoke-direct/range {v3 .. v8}, Lk2/n;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    return-object v3

    :pswitch_73
    const/4 v0, 0x5

    new-array v1, v0, [J

    new-array v2, v0, [J

    mul-int/lit8 p1, p1, 0xa

    const/4 v3, 0x0

    :goto_7b
    if-ge v3, v0, :cond_91

    iget-object v4, p0, Ll2/a;->n:Ljava/lang/Object;

    check-cast v4, [J

    add-int v5, p1, v3

    aget-wide v5, v4, v5

    aput-wide v5, v1, v3

    add-int/lit8 v5, p1, 0x5

    add-int/2addr v5, v3

    aget-wide v4, v4, v5

    aput-wide v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_7b

    :cond_91
    iget-object p0, p0, Ll2/a;->o:Lk2/h;

    move-object v4, p0

    check-cast v4, Ln2/s0;

    new-instance v5, Ln2/q0;

    invoke-direct {v5, v1}, Ln2/q0;-><init>([J)V

    new-instance v6, Ln2/q0;

    invoke-direct {v6, v2}, Ln2/q0;-><init>([J)V

    sget-object v7, Ln2/s0;->k:[Lk2/b0;

    new-instance v3, Lk2/n;

    const/16 v8, 0xe

    invoke-direct/range {v3 .. v8}, Lk2/n;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    return-object v3

    :pswitch_aa
    const/4 v0, 0x5

    new-array v1, v0, [J

    new-array v2, v0, [J

    mul-int/lit8 p1, p1, 0xa

    const/4 v3, 0x0

    :goto_b2
    if-ge v3, v0, :cond_c8

    iget-object v4, p0, Ll2/a;->n:Ljava/lang/Object;

    check-cast v4, [J

    add-int v5, p1, v3

    aget-wide v5, v4, v5

    aput-wide v5, v1, v3

    add-int/lit8 v5, p1, 0x5

    add-int/2addr v5, v3

    aget-wide v4, v4, v5

    aput-wide v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_b2

    :cond_c8
    iget-object p0, p0, Ll2/a;->o:Lk2/h;

    move-object v4, p0

    check-cast v4, Ln2/r0;

    new-instance v5, Ln2/q0;

    invoke-direct {v5, v1}, Ln2/q0;-><init>([J)V

    new-instance v6, Ln2/q0;

    invoke-direct {v6, v2}, Ln2/q0;-><init>([J)V

    sget-object v7, Ln2/r0;->k:[Lk2/b0;

    new-instance v3, Lk2/n;

    const/16 v8, 0xd

    invoke-direct/range {v3 .. v8}, Lk2/n;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    return-object v3

    :pswitch_e1
    const/4 v0, 0x4

    new-array v1, v0, [J

    new-array v2, v0, [J

    mul-int/lit8 p1, p1, 0x8

    const/4 v3, 0x0

    :goto_e9
    if-ge v3, v0, :cond_ff

    iget-object v4, p0, Ll2/a;->n:Ljava/lang/Object;

    check-cast v4, [J

    add-int v5, p1, v3

    aget-wide v5, v4, v5

    aput-wide v5, v1, v3

    add-int/lit8 v5, p1, 0x4

    add-int/2addr v5, v3

    aget-wide v4, v4, v5

    aput-wide v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_e9

    :cond_ff
    iget-object p0, p0, Ll2/a;->o:Lk2/h;

    move-object v4, p0

    check-cast v4, Ln2/p0;

    new-instance v5, Ln2/o0;

    invoke-direct {v5, v1}, Ln2/o0;-><init>([J)V

    new-instance v6, Ln2/o0;

    invoke-direct {v6, v2}, Ln2/o0;-><init>([J)V

    sget-object v7, Ln2/p0;->k:[Lk2/b0;

    new-instance v3, Lk2/n;

    const/16 v8, 0xc

    invoke-direct/range {v3 .. v8}, Lk2/n;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    return-object v3

    :pswitch_118
    const/4 v0, 0x4

    new-array v1, v0, [J

    new-array v2, v0, [J

    mul-int/lit8 p1, p1, 0x8

    const/4 v3, 0x0

    :goto_120
    if-ge v3, v0, :cond_136

    iget-object v4, p0, Ll2/a;->n:Ljava/lang/Object;

    check-cast v4, [J

    add-int v5, p1, v3

    aget-wide v5, v4, v5

    aput-wide v5, v1, v3

    add-int/lit8 v5, p1, 0x4

    add-int/2addr v5, v3

    aget-wide v4, v4, v5

    aput-wide v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_120

    :cond_136
    iget-object p0, p0, Ll2/a;->o:Lk2/h;

    move-object v4, p0

    check-cast v4, Ln2/n0;

    new-instance v5, Ln2/l0;

    invoke-direct {v5, v1}, Ln2/l0;-><init>([J)V

    new-instance v6, Ln2/l0;

    invoke-direct {v6, v2}, Ln2/l0;-><init>([J)V

    sget-object v7, Ln2/n0;->k:[Lk2/b0;

    new-instance v3, Lk2/n;

    const/16 v8, 0xb

    invoke-direct/range {v3 .. v8}, Lk2/n;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    return-object v3

    :pswitch_14f
    const/4 v0, 0x4

    new-array v1, v0, [J

    new-array v2, v0, [J

    mul-int/lit8 p1, p1, 0x8

    const/4 v3, 0x0

    :goto_157
    if-ge v3, v0, :cond_16d

    iget-object v4, p0, Ll2/a;->n:Ljava/lang/Object;

    check-cast v4, [J

    add-int v5, p1, v3

    aget-wide v5, v4, v5

    aput-wide v5, v1, v3

    add-int/lit8 v5, p1, 0x4

    add-int/2addr v5, v3

    aget-wide v4, v4, v5

    aput-wide v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_157

    :cond_16d
    iget-object p0, p0, Ll2/a;->o:Lk2/h;

    move-object v4, p0

    check-cast v4, Ln2/m0;

    new-instance v5, Ln2/l0;

    invoke-direct {v5, v1}, Ln2/l0;-><init>([J)V

    new-instance v6, Ln2/l0;

    invoke-direct {v6, v2}, Ln2/l0;-><init>([J)V

    sget-object v7, Ln2/m0;->k:[Lk2/b0;

    new-instance v3, Lk2/n;

    const/16 v8, 0xa

    invoke-direct/range {v3 .. v8}, Lk2/n;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    return-object v3

    :pswitch_186
    const/4 v0, 0x4

    new-array v1, v0, [J

    new-array v2, v0, [J

    mul-int/lit8 p1, p1, 0x8

    const/4 v3, 0x0

    :goto_18e
    if-ge v3, v0, :cond_1aa

    aget-wide v4, v1, v3

    iget-object v6, p0, Ll2/a;->n:Ljava/lang/Object;

    check-cast v6, [J

    add-int v7, p1, v3

    aget-wide v7, v6, v7

    xor-long/2addr v4, v7

    aput-wide v4, v1, v3

    aget-wide v4, v2, v3

    add-int/lit8 v7, p1, 0x4

    add-int/2addr v7, v3

    aget-wide v6, v6, v7

    xor-long/2addr v4, v6

    aput-wide v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_18e

    :cond_1aa
    iget-object p0, p0, Ll2/a;->o:Lk2/h;

    move-object v4, p0

    check-cast v4, Ln2/k0;

    new-instance v5, Ln2/i0;

    invoke-direct {v5, v1}, Ln2/i0;-><init>([J)V

    new-instance v6, Ln2/i0;

    invoke-direct {v6, v2}, Ln2/i0;-><init>([J)V

    sget-object v7, Ln2/k0;->k:[Lk2/b0;

    new-instance v3, Lk2/n;

    const/16 v8, 0x9

    invoke-direct/range {v3 .. v8}, Lk2/n;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    return-object v3

    :pswitch_1c3
    const/4 v0, 0x4

    new-array v1, v0, [J

    new-array v2, v0, [J

    mul-int/lit8 p1, p1, 0x8

    const/4 v3, 0x0

    :goto_1cb
    if-ge v3, v0, :cond_1e1

    iget-object v4, p0, Ll2/a;->n:Ljava/lang/Object;

    check-cast v4, [J

    add-int v5, p1, v3

    aget-wide v5, v4, v5

    aput-wide v5, v1, v3

    add-int/lit8 v5, p1, 0x4

    add-int/2addr v5, v3

    aget-wide v4, v4, v5

    aput-wide v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1cb

    :cond_1e1
    iget-object p0, p0, Ll2/a;->o:Lk2/h;

    move-object v4, p0

    check-cast v4, Ln2/j0;

    new-instance v5, Ln2/i0;

    invoke-direct {v5, v1}, Ln2/i0;-><init>([J)V

    new-instance v6, Ln2/i0;

    invoke-direct {v6, v2}, Ln2/i0;-><init>([J)V

    sget-object v7, Ln2/j0;->k:[Lk2/b0;

    new-instance v3, Lk2/n;

    const/16 v8, 0x8

    invoke-direct/range {v3 .. v8}, Lk2/n;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    return-object v3

    :pswitch_1fa
    const/4 v0, 0x3

    new-array v1, v0, [J

    new-array v2, v0, [J

    mul-int/lit8 p1, p1, 0x6

    const/4 v3, 0x0

    :goto_202
    if-ge v3, v0, :cond_218

    iget-object v4, p0, Ll2/a;->n:Ljava/lang/Object;

    check-cast v4, [J

    add-int v5, p1, v3

    aget-wide v5, v4, v5

    aput-wide v5, v1, v3

    add-int/lit8 v5, p1, 0x3

    add-int/2addr v5, v3

    aget-wide v4, v4, v5

    aput-wide v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_202

    :cond_218
    iget-object p0, p0, Ll2/a;->o:Lk2/h;

    move-object v4, p0

    check-cast v4, Ln2/h0;

    new-instance v5, Ln2/e0;

    invoke-direct {v5, v1}, Ln2/e0;-><init>([J)V

    new-instance v6, Ln2/e0;

    invoke-direct {v6, v2}, Ln2/e0;-><init>([J)V

    sget-object v7, Ln2/h0;->k:[Lk2/b0;

    new-instance v3, Lk2/n;

    const/4 v8, 0x7

    invoke-direct/range {v3 .. v8}, Lk2/n;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    return-object v3

    :pswitch_230
    const/4 v0, 0x3

    new-array v1, v0, [J

    new-array v2, v0, [J

    mul-int/lit8 p1, p1, 0x6

    const/4 v3, 0x0

    :goto_238
    if-ge v3, v0, :cond_24e

    iget-object v4, p0, Ll2/a;->n:Ljava/lang/Object;

    check-cast v4, [J

    add-int v5, p1, v3

    aget-wide v5, v4, v5

    aput-wide v5, v1, v3

    add-int/lit8 v5, p1, 0x3

    add-int/2addr v5, v3

    aget-wide v4, v4, v5

    aput-wide v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_238

    :cond_24e
    iget-object p0, p0, Ll2/a;->o:Lk2/h;

    move-object v4, p0

    check-cast v4, Ln2/g0;

    new-instance v5, Ln2/e0;

    invoke-direct {v5, v1}, Ln2/e0;-><init>([J)V

    new-instance v6, Ln2/e0;

    invoke-direct {v6, v2}, Ln2/e0;-><init>([J)V

    sget-object v7, Ln2/g0;->k:[Lk2/b0;

    new-instance v3, Lk2/n;

    const/4 v8, 0x6

    invoke-direct/range {v3 .. v8}, Lk2/n;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    return-object v3

    :pswitch_266
    const/4 v0, 0x3

    new-array v1, v0, [J

    new-array v2, v0, [J

    mul-int/lit8 p1, p1, 0x6

    const/4 v3, 0x0

    :goto_26e
    if-ge v3, v0, :cond_284

    iget-object v4, p0, Ll2/a;->n:Ljava/lang/Object;

    check-cast v4, [J

    add-int v5, p1, v3

    aget-wide v5, v4, v5

    aput-wide v5, v1, v3

    add-int/lit8 v5, p1, 0x3

    add-int/2addr v5, v3

    aget-wide v4, v4, v5

    aput-wide v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_26e

    :cond_284
    iget-object p0, p0, Ll2/a;->o:Lk2/h;

    move-object v4, p0

    check-cast v4, Ln2/f0;

    new-instance v5, Ln2/e0;

    invoke-direct {v5, v1}, Ln2/e0;-><init>([J)V

    new-instance v6, Ln2/e0;

    invoke-direct {v6, v2}, Ln2/e0;-><init>([J)V

    sget-object v7, Ln2/f0;->k:[Lk2/b0;

    new-instance v3, Lk2/n;

    const/4 v8, 0x5

    invoke-direct/range {v3 .. v8}, Lk2/n;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    return-object v3

    :pswitch_29c
    const/4 v0, 0x3

    new-array v1, v0, [J

    new-array v2, v0, [J

    mul-int/lit8 p1, p1, 0x6

    const/4 v3, 0x0

    :goto_2a4
    if-ge v3, v0, :cond_2ba

    iget-object v4, p0, Ll2/a;->n:Ljava/lang/Object;

    check-cast v4, [J

    add-int v5, p1, v3

    aget-wide v5, v4, v5

    aput-wide v5, v1, v3

    add-int/lit8 v5, p1, 0x3

    add-int/2addr v5, v3

    aget-wide v4, v4, v5

    aput-wide v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2a4

    :cond_2ba
    iget-object p0, p0, Ll2/a;->o:Lk2/h;

    move-object v4, p0

    check-cast v4, Ln2/d0;

    new-instance v5, Ln2/b0;

    invoke-direct {v5, v1}, Ln2/b0;-><init>([J)V

    new-instance v6, Ln2/b0;

    invoke-direct {v6, v2}, Ln2/b0;-><init>([J)V

    sget-object v7, Ln2/d0;->k:[Lk2/b0;

    new-instance v3, Lk2/n;

    const/4 v8, 0x4

    invoke-direct/range {v3 .. v8}, Lk2/n;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    return-object v3

    :pswitch_2d2
    const/4 v0, 0x3

    new-array v1, v0, [J

    new-array v2, v0, [J

    mul-int/lit8 p1, p1, 0x6

    const/4 v3, 0x0

    :goto_2da
    if-ge v3, v0, :cond_2f0

    iget-object v4, p0, Ll2/a;->n:Ljava/lang/Object;

    check-cast v4, [J

    add-int v5, p1, v3

    aget-wide v5, v4, v5

    aput-wide v5, v1, v3

    add-int/lit8 v5, p1, 0x3

    add-int/2addr v5, v3

    aget-wide v4, v4, v5

    aput-wide v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2da

    :cond_2f0
    iget-object p0, p0, Ll2/a;->o:Lk2/h;

    move-object v4, p0

    check-cast v4, Ln2/c0;

    new-instance v5, Ln2/b0;

    invoke-direct {v5, v1}, Ln2/b0;-><init>([J)V

    new-instance v6, Ln2/b0;

    invoke-direct {v6, v2}, Ln2/b0;-><init>([J)V

    sget-object v7, Ln2/c0;->k:[Lk2/b0;

    new-instance v3, Lk2/n;

    const/4 v8, 0x3

    invoke-direct/range {v3 .. v8}, Lk2/n;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    return-object v3

    :pswitch_308
    const/4 v0, 0x2

    new-array v1, v0, [J

    new-array v2, v0, [J

    mul-int/lit8 p1, p1, 0x4

    const/4 v3, 0x0

    :goto_310
    if-ge v3, v0, :cond_326

    iget-object v4, p0, Ll2/a;->n:Ljava/lang/Object;

    check-cast v4, [J

    add-int v5, p1, v3

    aget-wide v5, v4, v5

    aput-wide v5, v1, v3

    add-int/lit8 v5, p1, 0x2

    add-int/2addr v5, v3

    aget-wide v4, v4, v5

    aput-wide v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_310

    :cond_326
    iget-object p0, p0, Ll2/a;->o:Lk2/h;

    move-object v4, p0

    check-cast v4, Ln2/a0;

    new-instance v5, Ln2/y;

    invoke-direct {v5, v1}, Ln2/y;-><init>([J)V

    new-instance v6, Ln2/y;

    invoke-direct {v6, v2}, Ln2/y;-><init>([J)V

    sget-object v7, Ln2/a0;->k:[Lk2/b0;

    new-instance v3, Lk2/n;

    const/4 v8, 0x2

    invoke-direct/range {v3 .. v8}, Lk2/n;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    return-object v3

    :pswitch_33e
    const/4 v0, 0x2

    new-array v1, v0, [J

    new-array v2, v0, [J

    mul-int/lit8 p1, p1, 0x4

    const/4 v3, 0x0

    :goto_346
    if-ge v3, v0, :cond_35c

    iget-object v4, p0, Ll2/a;->n:Ljava/lang/Object;

    check-cast v4, [J

    add-int v5, p1, v3

    aget-wide v5, v4, v5

    aput-wide v5, v1, v3

    add-int/lit8 v5, p1, 0x2

    add-int/2addr v5, v3

    aget-wide v4, v4, v5

    aput-wide v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_346

    :cond_35c
    iget-object p0, p0, Ll2/a;->o:Lk2/h;

    move-object v4, p0

    check-cast v4, Ln2/z;

    new-instance v5, Ln2/y;

    invoke-direct {v5, v1}, Ln2/y;-><init>([J)V

    new-instance v6, Ln2/y;

    invoke-direct {v6, v2}, Ln2/y;-><init>([J)V

    sget-object v7, Ln2/z;->k:[Lk2/b0;

    new-instance v3, Lk2/n;

    const/4 v8, 0x1

    invoke-direct/range {v3 .. v8}, Lk2/n;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    return-object v3

    :pswitch_374
    const/16 v0, 0x11

    new-array v1, v0, [I

    new-array v2, v0, [I

    mul-int/lit8 p1, p1, 0x22

    const/4 v3, 0x0

    :goto_37d
    if-ge v3, v0, :cond_399

    aget v4, v1, v3

    iget-object v5, p0, Ll2/a;->n:Ljava/lang/Object;

    check-cast v5, [I

    add-int v6, p1, v3

    aget v6, v5, v6

    xor-int/2addr v4, v6

    aput v4, v1, v3

    aget v4, v2, v3

    add-int/lit8 v6, p1, 0x11

    add-int/2addr v6, v3

    aget v5, v5, v6

    xor-int/2addr v4, v5

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_37d

    :cond_399
    iget-object p0, p0, Ll2/a;->o:Lk2/h;

    move-object v4, p0

    check-cast v4, Ln2/w;

    new-instance v5, Ln2/x;

    invoke-direct {v5, v1}, Ln2/x;-><init>([I)V

    new-instance v6, Ln2/x;

    invoke-direct {v6, v2}, Ln2/x;-><init>([I)V

    sget-object v7, Ln2/w;->k:[Lk2/b0;

    new-instance v3, Lk2/o;

    const/16 v8, 0xe

    invoke-direct/range {v3 .. v8}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    return-object v3

    :pswitch_3b2
    const/16 v0, 0xc

    new-array v1, v0, [I

    new-array v2, v0, [I

    mul-int/lit8 p1, p1, 0x18

    const/4 v3, 0x0

    :goto_3bb
    if-ge v3, v0, :cond_3d1

    iget-object v4, p0, Ll2/a;->n:Ljava/lang/Object;

    check-cast v4, [I

    add-int v5, p1, v3

    aget v5, v4, v5

    aput v5, v1, v3

    add-int/lit8 v5, p1, 0xc

    add-int/2addr v5, v3

    aget v4, v4, v5

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3bb

    :cond_3d1
    iget-object p0, p0, Ll2/a;->o:Lk2/h;

    move-object v4, p0

    check-cast v4, Ln2/u;

    new-instance v5, Ln2/v;

    invoke-direct {v5, v1}, Ln2/v;-><init>([I)V

    new-instance v6, Ln2/v;

    invoke-direct {v6, v2}, Ln2/v;-><init>([I)V

    sget-object v7, Ln2/u;->k:[Lk2/b0;

    new-instance v3, Lk2/o;

    const/16 v8, 0xd

    invoke-direct/range {v3 .. v8}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    return-object v3

    :pswitch_3ea
    const/16 v0, 0x8

    new-array v1, v0, [I

    new-array v2, v0, [I

    mul-int/lit8 p1, p1, 0x10

    const/4 v3, 0x0

    :goto_3f3
    if-ge v3, v0, :cond_409

    iget-object v4, p0, Ll2/a;->n:Ljava/lang/Object;

    check-cast v4, [I

    add-int v5, p1, v3

    aget v5, v4, v5

    aput v5, v1, v3

    add-int/lit8 v5, p1, 0x8

    add-int/2addr v5, v3

    aget v4, v4, v5

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3f3

    :cond_409
    iget-object p0, p0, Ll2/a;->o:Lk2/h;

    move-object v4, p0

    check-cast v4, Ln2/s;

    new-instance v5, Ln2/t;

    invoke-direct {v5, v1}, Ln2/t;-><init>([I)V

    new-instance v6, Ln2/t;

    invoke-direct {v6, v2}, Ln2/t;-><init>([I)V

    sget-object v7, Ln2/s;->k:[Lk2/b0;

    new-instance v3, Lk2/o;

    const/16 v8, 0xc

    invoke-direct/range {v3 .. v8}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    return-object v3

    :pswitch_422
    const/16 v0, 0x8

    new-array v1, v0, [I

    new-array v2, v0, [I

    mul-int/lit8 p1, p1, 0x10

    const/4 v3, 0x0

    :goto_42b
    if-ge v3, v0, :cond_441

    iget-object v4, p0, Ll2/a;->n:Ljava/lang/Object;

    check-cast v4, [I

    add-int v5, p1, v3

    aget v5, v4, v5

    aput v5, v1, v3

    add-int/lit8 v5, p1, 0x8

    add-int/2addr v5, v3

    aget v4, v4, v5

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_42b

    :cond_441
    iget-object p0, p0, Ll2/a;->o:Lk2/h;

    move-object v4, p0

    check-cast v4, Ln2/q;

    new-instance v5, Ln2/r;

    invoke-direct {v5, v1}, Ln2/r;-><init>([I)V

    new-instance v6, Ln2/r;

    invoke-direct {v6, v2}, Ln2/r;-><init>([I)V

    sget-object v7, Ln2/q;->k:[Lk2/b0;

    new-instance v3, Lk2/o;

    const/16 v8, 0xb

    invoke-direct/range {v3 .. v8}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    return-object v3

    :pswitch_45a
    const/4 v0, 0x7

    new-array v1, v0, [I

    new-array v2, v0, [I

    mul-int/lit8 p1, p1, 0xe

    const/4 v3, 0x0

    :goto_462
    if-ge v3, v0, :cond_478

    iget-object v4, p0, Ll2/a;->n:Ljava/lang/Object;

    check-cast v4, [I

    add-int v5, p1, v3

    aget v5, v4, v5

    aput v5, v1, v3

    add-int/lit8 v5, p1, 0x7

    add-int/2addr v5, v3

    aget v4, v4, v5

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_462

    :cond_478
    iget-object p0, p0, Ll2/a;->o:Lk2/h;

    move-object v4, p0

    check-cast v4, Ln2/o;

    new-instance v5, Ln2/p;

    invoke-direct {v5, v1}, Ln2/p;-><init>([I)V

    new-instance v6, Ln2/p;

    invoke-direct {v6, v2}, Ln2/p;-><init>([I)V

    sget-object v7, Ln2/o;->k:[Lk2/b0;

    new-instance v3, Lk2/o;

    const/16 v8, 0xa

    invoke-direct/range {v3 .. v8}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    return-object v3

    :pswitch_491
    const/4 v0, 0x7

    new-array v1, v0, [I

    new-array v2, v0, [I

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_499
    iget v6, p0, Ll2/a;->m:I

    if-ge v4, v6, :cond_4c7

    xor-int v6, v4, p1

    add-int/lit8 v6, v6, -0x1

    shr-int/lit8 v6, v6, 0x1f

    move v7, v3

    :goto_4a4
    if-ge v7, v0, :cond_4c2

    aget v8, v1, v7

    iget-object v9, p0, Ll2/a;->n:Ljava/lang/Object;

    check-cast v9, [I

    add-int v10, v5, v7

    aget v10, v9, v10

    and-int/2addr v10, v6

    xor-int/2addr v8, v10

    aput v8, v1, v7

    aget v8, v2, v7

    add-int/lit8 v10, v5, 0x7

    add-int/2addr v10, v7

    aget v9, v9, v10

    and-int/2addr v9, v6

    xor-int/2addr v8, v9

    aput v8, v2, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_4a4

    :cond_4c2
    add-int/lit8 v5, v5, 0xe

    add-int/lit8 v4, v4, 0x1

    goto :goto_499

    :cond_4c7
    iget-object p0, p0, Ll2/a;->o:Lk2/h;

    move-object v4, p0

    check-cast v4, Ln2/m;

    new-instance v5, Ln2/n;

    invoke-direct {v5, v1}, Ln2/n;-><init>([I)V

    new-instance v6, Ln2/n;

    invoke-direct {v6, v2}, Ln2/n;-><init>([I)V

    sget-object v7, Ln2/m;->k:[Lk2/b0;

    new-instance v3, Lk2/o;

    const/16 v8, 0x9

    invoke-direct/range {v3 .. v8}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    return-object v3

    :pswitch_4e0
    const/4 v0, 0x6

    new-array v1, v0, [I

    new-array v2, v0, [I

    mul-int/lit8 p1, p1, 0xc

    const/4 v3, 0x0

    :goto_4e8
    if-ge v3, v0, :cond_4fe

    iget-object v4, p0, Ll2/a;->n:Ljava/lang/Object;

    check-cast v4, [I

    add-int v5, p1, v3

    aget v5, v4, v5

    aput v5, v1, v3

    add-int/lit8 v5, p1, 0x6

    add-int/2addr v5, v3

    aget v4, v4, v5

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4e8

    :cond_4fe
    iget-object p0, p0, Ll2/a;->o:Lk2/h;

    move-object v4, p0

    check-cast v4, Ln2/k;

    new-instance v5, Ln2/l;

    invoke-direct {v5, v1}, Ln2/l;-><init>([I)V

    new-instance v6, Ln2/l;

    invoke-direct {v6, v2}, Ln2/l;-><init>([I)V

    sget-object v7, Ln2/k;->k:[Lk2/b0;

    new-instance v3, Lk2/o;

    const/16 v8, 0x8

    invoke-direct/range {v3 .. v8}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    return-object v3

    :pswitch_517
    const/4 v0, 0x6

    new-array v1, v0, [I

    new-array v2, v0, [I

    mul-int/lit8 p1, p1, 0xc

    const/4 v3, 0x0

    :goto_51f
    if-ge v3, v0, :cond_535

    iget-object v4, p0, Ll2/a;->n:Ljava/lang/Object;

    check-cast v4, [I

    add-int v5, p1, v3

    aget v5, v4, v5

    aput v5, v1, v3

    add-int/lit8 v5, p1, 0x6

    add-int/2addr v5, v3

    aget v4, v4, v5

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_51f

    :cond_535
    iget-object p0, p0, Ll2/a;->o:Lk2/h;

    move-object v4, p0

    check-cast v4, Ln2/i;

    new-instance v5, Ln2/j;

    invoke-direct {v5, v1}, Ln2/j;-><init>([I)V

    new-instance v6, Ln2/j;

    invoke-direct {v6, v2}, Ln2/j;-><init>([I)V

    sget-object v7, Ln2/i;->k:[Lk2/b0;

    new-instance v3, Lk2/o;

    const/4 v8, 0x7

    invoke-direct/range {v3 .. v8}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    return-object v3

    :pswitch_54d
    const/4 v0, 0x5

    new-array v1, v0, [I

    new-array v2, v0, [I

    mul-int/lit8 p1, p1, 0xa

    const/4 v3, 0x0

    :goto_555
    if-ge v3, v0, :cond_56b

    iget-object v4, p0, Ll2/a;->n:Ljava/lang/Object;

    check-cast v4, [I

    add-int v5, p1, v3

    aget v5, v4, v5

    aput v5, v1, v3

    add-int/lit8 v5, p1, 0x5

    add-int/2addr v5, v3

    aget v4, v4, v5

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_555

    :cond_56b
    iget-object p0, p0, Ll2/a;->o:Lk2/h;

    move-object v4, p0

    check-cast v4, Ln2/g;

    new-instance v5, Ln2/h;

    invoke-direct {v5, v1}, Ln2/h;-><init>([I)V

    new-instance v6, Ln2/h;

    invoke-direct {v6, v2}, Ln2/h;-><init>([I)V

    sget-object v7, Ln2/g;->k:[Lk2/b0;

    new-instance v3, Lk2/o;

    const/4 v8, 0x6

    invoke-direct/range {v3 .. v8}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    return-object v3

    :pswitch_583
    const/4 v0, 0x5

    new-array v1, v0, [I

    new-array v2, v0, [I

    mul-int/lit8 p1, p1, 0xa

    const/4 v3, 0x0

    :goto_58b
    if-ge v3, v0, :cond_5a1

    iget-object v4, p0, Ll2/a;->n:Ljava/lang/Object;

    check-cast v4, [I

    add-int v5, p1, v3

    aget v5, v4, v5

    aput v5, v1, v3

    add-int/lit8 v5, p1, 0x5

    add-int/2addr v5, v3

    aget v4, v4, v5

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_58b

    :cond_5a1
    iget-object p0, p0, Ll2/a;->o:Lk2/h;

    move-object v4, p0

    check-cast v4, Ln2/e;

    new-instance v5, Ln2/f;

    invoke-direct {v5, v1}, Ln2/f;-><init>([I)V

    new-instance v6, Ln2/f;

    invoke-direct {v6, v2}, Ln2/f;-><init>([I)V

    sget-object v7, Ln2/e;->k:[Lk2/b0;

    new-instance v3, Lk2/o;

    const/4 v8, 0x5

    invoke-direct/range {v3 .. v8}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    return-object v3

    :pswitch_5b9
    const/4 v0, 0x5

    new-array v1, v0, [I

    new-array v2, v0, [I

    mul-int/lit8 p1, p1, 0xa

    const/4 v3, 0x0

    :goto_5c1
    if-ge v3, v0, :cond_5d7

    iget-object v4, p0, Ll2/a;->n:Ljava/lang/Object;

    check-cast v4, [I

    add-int v5, p1, v3

    aget v5, v4, v5

    aput v5, v1, v3

    add-int/lit8 v5, p1, 0x5

    add-int/2addr v5, v3

    aget v4, v4, v5

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_5c1

    :cond_5d7
    iget-object p0, p0, Ll2/a;->o:Lk2/h;

    move-object v4, p0

    check-cast v4, Ln2/d;

    new-instance v5, Ln2/h;

    invoke-direct {v5, v1}, Ln2/h;-><init>([I)V

    new-instance v6, Ln2/h;

    invoke-direct {v6, v2}, Ln2/h;-><init>([I)V

    sget-object v7, Ln2/d;->k:[Lk2/b0;

    new-instance v3, Lk2/o;

    const/4 v8, 0x4

    invoke-direct/range {v3 .. v8}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    return-object v3

    :pswitch_5ef
    const/4 v0, 0x4

    new-array v1, v0, [I

    new-array v2, v0, [I

    mul-int/lit8 p1, p1, 0x8

    const/4 v3, 0x0

    :goto_5f7
    if-ge v3, v0, :cond_60d

    iget-object v4, p0, Ll2/a;->n:Ljava/lang/Object;

    check-cast v4, [I

    add-int v5, p1, v3

    aget v5, v4, v5

    aput v5, v1, v3

    add-int/lit8 v5, p1, 0x4

    add-int/2addr v5, v3

    aget v4, v4, v5

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_5f7

    :cond_60d
    iget-object p0, p0, Ll2/a;->o:Lk2/h;

    move-object v4, p0

    check-cast v4, Ln2/a;

    new-instance v5, Ln2/c;

    invoke-direct {v5, v1}, Ln2/c;-><init>([I)V

    new-instance v6, Ln2/c;

    invoke-direct {v6, v2}, Ln2/c;-><init>([I)V

    sget-object v7, Ln2/a;->k:[Lk2/b0;

    new-instance v3, Lk2/o;

    const/4 v8, 0x3

    invoke-direct/range {v3 .. v8}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    return-object v3

    :pswitch_625
    const/16 v0, 0x8

    new-array v1, v0, [I

    new-array v2, v0, [I

    mul-int/lit8 p1, p1, 0x10

    const/4 v3, 0x0

    :goto_62e
    if-ge v3, v0, :cond_644

    iget-object v4, p0, Ll2/a;->n:Ljava/lang/Object;

    check-cast v4, [I

    add-int v5, p1, v3

    aget v5, v4, v5

    aput v5, v1, v3

    add-int/lit8 v5, p1, 0x8

    add-int/2addr v5, v3

    aget v4, v4, v5

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_62e

    :cond_644
    iget-object p0, p0, Ll2/a;->o:Lk2/h;

    move-object v4, p0

    check-cast v4, Lm2/a;

    new-instance v5, Lm2/c;

    invoke-direct {v5, v1}, Lm2/c;-><init>([I)V

    new-instance v6, Lm2/c;

    invoke-direct {v6, v2}, Lm2/c;-><init>([I)V

    sget-object v7, Lm2/a;->k:[Lk2/b0;

    new-instance v3, Lk2/o;

    const/4 v8, 0x2

    invoke-direct/range {v3 .. v8}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    return-object v3

    :pswitch_65c
    const/16 v0, 0x8

    new-array v1, v0, [I

    new-array v2, v0, [I

    mul-int/lit8 p1, p1, 0x10

    const/4 v3, 0x0

    :goto_665
    if-ge v3, v0, :cond_67b

    iget-object v4, p0, Ll2/a;->n:Ljava/lang/Object;

    check-cast v4, [I

    add-int v5, p1, v3

    aget v5, v4, v5

    aput v5, v1, v3

    add-int/lit8 v5, p1, 0x8

    add-int/2addr v5, v3

    aget v4, v4, v5

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_665

    :cond_67b
    iget-object p0, p0, Ll2/a;->o:Lk2/h;

    move-object v4, p0

    check-cast v4, Ll2/b;

    new-instance v5, Ll2/d;

    invoke-direct {v5, v1}, Ll2/d;-><init>([I)V

    new-instance v6, Ll2/d;

    invoke-direct {v6, v2}, Ll2/d;-><init>([I)V

    sget-object v7, Ll2/b;->m:[Lk2/b0;

    new-instance v3, Lk2/o;

    const/4 v8, 0x1

    invoke-direct/range {v3 .. v8}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    return-object v3

    nop

    :pswitch_data_694
    .packed-switch 0x0
        :pswitch_65c
        :pswitch_625
        :pswitch_5ef
        :pswitch_5b9
        :pswitch_583
        :pswitch_54d
        :pswitch_517
        :pswitch_4e0
        :pswitch_491
        :pswitch_45a
        :pswitch_422
        :pswitch_3ea
        :pswitch_3b2
        :pswitch_374
        :pswitch_33e
        :pswitch_308
        :pswitch_2d2
        :pswitch_29c
        :pswitch_266
        :pswitch_230
        :pswitch_1fa
        :pswitch_1c3
        :pswitch_186
        :pswitch_14f
        :pswitch_118
        :pswitch_e1
        :pswitch_aa
        :pswitch_73
        :pswitch_3c
    .end packed-switch
.end method
