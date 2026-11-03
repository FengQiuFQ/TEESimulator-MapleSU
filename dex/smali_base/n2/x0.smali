.class public final Ln2/x0;
.super Lk2/b0;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:I

.field public final synthetic n:[J

.field public final synthetic o:Lk2/c;


# direct methods
.method public synthetic constructor <init>(Lk2/c;I[JI)V
    .registers 5

    iput p4, p0, Ln2/x0;->l:I

    const/4 p4, 0x1

    invoke-direct {p0, p4}, Lk2/b0;-><init>(I)V

    iput p2, p0, Ln2/x0;->m:I

    iput-object p3, p0, Ln2/x0;->n:[J

    iput-object p1, p0, Ln2/x0;->o:Lk2/c;

    return-void
.end method


# virtual methods
.method public final m()I
    .registers 2

    iget v0, p0, Ln2/x0;->l:I

    packed-switch v0, :pswitch_data_c

    iget p0, p0, Ln2/x0;->m:I

    return p0

    :pswitch_8
    iget p0, p0, Ln2/x0;->m:I

    return p0

    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_8
    .end packed-switch
.end method

.method public final u(I)Lk2/p;
    .registers 18

    move-object/from16 v0, p0

    iget v1, v0, Ln2/x0;->l:I

    packed-switch v1, :pswitch_data_a6

    const/16 v1, 0x9

    new-array v2, v1, [J

    new-array v3, v1, [J

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_10
    iget v7, v0, Ln2/x0;->m:I

    if-ge v5, v7, :cond_3d

    xor-int v7, v5, p1

    add-int/lit8 v7, v7, -0x1

    shr-int/lit8 v7, v7, 0x1f

    int-to-long v7, v7

    move v9, v4

    :goto_1c
    if-ge v9, v1, :cond_38

    aget-wide v10, v2, v9

    add-int v12, v6, v9

    iget-object v13, v0, Ln2/x0;->n:[J

    aget-wide v14, v13, v12

    and-long/2addr v14, v7

    xor-long/2addr v10, v14

    aput-wide v10, v2, v9

    aget-wide v10, v3, v9

    add-int/lit8 v12, v6, 0x9

    add-int/2addr v12, v9

    aget-wide v12, v13, v12

    and-long/2addr v12, v7

    xor-long/2addr v10, v12

    aput-wide v10, v3, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1c

    :cond_38
    add-int/lit8 v6, v6, 0x12

    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    :cond_3d
    iget-object v0, v0, Ln2/x0;->o:Lk2/c;

    move-object v5, v0

    check-cast v5, Ln2/z0;

    new-instance v6, Ln2/w0;

    invoke-direct {v6, v2}, Ln2/w0;-><init>([J)V

    new-instance v7, Ln2/w0;

    invoke-direct {v7, v3}, Ln2/w0;-><init>([J)V

    sget-object v8, Ln2/z0;->k:[Lk2/b0;

    new-instance v4, Lk2/n;

    const/16 v9, 0x12

    invoke-direct/range {v4 .. v9}, Lk2/n;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    return-object v4

    :pswitch_56
    const/16 v1, 0x9

    new-array v2, v1, [J

    new-array v3, v1, [J

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_5f
    iget v7, v0, Ln2/x0;->m:I

    if-ge v5, v7, :cond_8c

    xor-int v7, v5, p1

    add-int/lit8 v7, v7, -0x1

    shr-int/lit8 v7, v7, 0x1f

    int-to-long v7, v7

    move v9, v4

    :goto_6b
    if-ge v9, v1, :cond_87

    aget-wide v10, v2, v9

    add-int v12, v6, v9

    iget-object v13, v0, Ln2/x0;->n:[J

    aget-wide v14, v13, v12

    and-long/2addr v14, v7

    xor-long/2addr v10, v14

    aput-wide v10, v2, v9

    aget-wide v10, v3, v9

    add-int/lit8 v12, v6, 0x9

    add-int/2addr v12, v9

    aget-wide v12, v13, v12

    and-long/2addr v12, v7

    xor-long/2addr v10, v12

    aput-wide v10, v3, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_6b

    :cond_87
    add-int/lit8 v6, v6, 0x12

    add-int/lit8 v5, v5, 0x1

    goto :goto_5f

    :cond_8c
    iget-object v0, v0, Ln2/x0;->o:Lk2/c;

    move-object v5, v0

    check-cast v5, Ln2/y0;

    new-instance v6, Ln2/w0;

    invoke-direct {v6, v2}, Ln2/w0;-><init>([J)V

    new-instance v7, Ln2/w0;

    invoke-direct {v7, v3}, Ln2/w0;-><init>([J)V

    sget-object v8, Ln2/y0;->k:[Lk2/b0;

    new-instance v4, Lk2/n;

    const/16 v9, 0x11

    invoke-direct/range {v4 .. v9}, Lk2/n;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    return-object v4

    nop

    :pswitch_data_a6
    .packed-switch 0x0
        :pswitch_56
    .end packed-switch
.end method

.method public final v(I)Lk2/p;
    .registers 11

    iget v0, p0, Ln2/x0;->l:I

    packed-switch v0, :pswitch_data_72

    const/16 v0, 0x9

    new-array v1, v0, [J

    new-array v2, v0, [J

    mul-int/lit8 p1, p1, 0x12

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v0, :cond_22

    add-int v4, p1, v3

    iget-object v5, p0, Ln2/x0;->n:[J

    aget-wide v6, v5, v4

    aput-wide v6, v1, v3

    add-int/lit8 v4, p1, 0x9

    add-int/2addr v4, v3

    aget-wide v4, v5, v4

    aput-wide v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_22
    iget-object p0, p0, Ln2/x0;->o:Lk2/c;

    move-object v4, p0

    check-cast v4, Ln2/z0;

    new-instance v5, Ln2/w0;

    invoke-direct {v5, v1}, Ln2/w0;-><init>([J)V

    new-instance v6, Ln2/w0;

    invoke-direct {v6, v2}, Ln2/w0;-><init>([J)V

    sget-object v7, Ln2/z0;->k:[Lk2/b0;

    new-instance v3, Lk2/n;

    const/16 v8, 0x12

    invoke-direct/range {v3 .. v8}, Lk2/n;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    return-object v3

    :pswitch_3b
    const/16 v0, 0x9

    new-array v1, v0, [J

    new-array v2, v0, [J

    mul-int/lit8 p1, p1, 0x12

    const/4 v3, 0x0

    :goto_44
    if-ge v3, v0, :cond_58

    add-int v4, p1, v3

    iget-object v5, p0, Ln2/x0;->n:[J

    aget-wide v6, v5, v4

    aput-wide v6, v1, v3

    add-int/lit8 v4, p1, 0x9

    add-int/2addr v4, v3

    aget-wide v4, v5, v4

    aput-wide v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_44

    :cond_58
    iget-object p0, p0, Ln2/x0;->o:Lk2/c;

    move-object v4, p0

    check-cast v4, Ln2/y0;

    new-instance v5, Ln2/w0;

    invoke-direct {v5, v1}, Ln2/w0;-><init>([J)V

    new-instance v6, Ln2/w0;

    invoke-direct {v6, v2}, Ln2/w0;-><init>([J)V

    sget-object v7, Ln2/y0;->k:[Lk2/b0;

    new-instance v3, Lk2/n;

    const/16 v8, 0x11

    invoke-direct/range {v3 .. v8}, Lk2/n;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    return-object v3

    nop

    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_3b
    .end packed-switch
.end method
