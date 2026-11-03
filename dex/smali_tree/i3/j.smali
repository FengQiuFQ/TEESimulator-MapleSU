.class public final Li3/j;
.super Ljava/lang/Object;


# instance fields
.field public final synthetic a:I

.field public final b:[Lg1/d;


# direct methods
.method public constructor <init>(Li3/b;I)V
    .registers 6

    iput p2, p0, Li3/j;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    packed-switch p2, :pswitch_data_34

    iget p2, p1, Li3/b;->f:I

    new-array v0, p2, [Lg1/d;

    iput-object v0, p0, Li3/j;->b:[Lg1/d;

    const/4 v0, 0x0

    :goto_f
    if-ge v0, p2, :cond_1d

    iget-object v1, p0, Li3/j;->b:[Lg1/d;

    new-instance v2, Lg1/d;

    invoke-direct {v2, p1}, Lg1/d;-><init>(Li3/b;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1d
    return-void

    :pswitch_1e
    iget p2, p1, Li3/b;->g:I

    new-array v0, p2, [Lg1/d;

    iput-object v0, p0, Li3/j;->b:[Lg1/d;

    const/4 v0, 0x0

    :goto_25
    if-ge v0, p2, :cond_33

    iget-object v1, p0, Li3/j;->b:[Lg1/d;

    new-instance v2, Lg1/d;

    invoke-direct {v2, p1}, Lg1/d;-><init>(Li3/b;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    :cond_33
    return-void

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_1e
    .end packed-switch
.end method


# virtual methods
.method public a(Li3/j;)V
    .registers 10

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Li3/j;->b:[Lg1/d;

    array-length v3, v2

    if-ge v1, v3, :cond_2a

    aget-object v2, v2, v1

    iget-object v3, p1, Li3/j;->b:[Lg1/d;

    aget-object v3, v3, v1

    move v4, v0

    :goto_e
    const/16 v5, 0x100

    if-ge v4, v5, :cond_24

    iget-object v5, v2, Lg1/d;->j:Ljava/lang/Object;

    check-cast v5, [I

    aget v6, v5, v4

    iget-object v7, v3, Lg1/d;->j:Ljava/lang/Object;

    check-cast v7, [I

    aget v7, v7, v4

    add-int/2addr v6, v7

    aput v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_24
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2a
    return-void
.end method

.method public b()V
    .registers 9

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Li3/j;->b:[Lg1/d;

    array-length v3, v2

    if-ge v1, v3, :cond_26

    aget-object v2, v2, v1

    move v3, v0

    :goto_a
    const/16 v4, 0x100

    if-ge v3, v4, :cond_20

    iget-object v4, v2, Lg1/d;->j:Ljava/lang/Object;

    check-cast v4, [I

    aget v5, v4, v3

    shr-int/lit8 v6, v5, 0x1f

    const v7, 0x7fe001

    and-int/2addr v6, v7

    add-int/2addr v5, v6

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_20
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_26
    return-void
.end method

.method public c(Li3/j;)V
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Li3/j;->b:[Lg1/d;

    array-length v3, v2

    if-ge v1, v3, :cond_1d

    aget-object v2, v2, v1

    iget-object v3, p1, Li3/j;->b:[Lg1/d;

    aget-object v3, v3, v1

    iget-object v2, v2, Lg1/d;->j:Ljava/lang/Object;

    check-cast v2, [I

    iget-object v3, v3, Lg1/d;->j:Ljava/lang/Object;

    check-cast v3, [I

    const/16 v4, 0x100

    invoke-static {v2, v0, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1d
    return-void
.end method

.method public d()V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Li3/j;->b:[Lg1/d;

    array-length v2, v1

    if-ge v0, v2, :cond_e

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lg1/d;->h()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_e
    return-void
.end method

.method public e(Li3/b;[BI)V
    .registers 16

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Li3/j;->b:[Lg1/d;

    array-length v3, v2

    if-ge v1, v3, :cond_78

    aget-object v2, v2, v1

    iget v3, p1, Li3/b;->d:I

    mul-int/2addr v3, v1

    add-int/2addr v3, p3

    iget-object v4, v2, Lg1/d;->h:Ljava/lang/Object;

    check-cast v4, Li3/b;

    iget v4, v4, Li3/b;->l:I

    const v5, 0x17400

    if-ne v4, v5, :cond_54

    move v4, v0

    :goto_19
    const/16 v5, 0x40

    if-ge v4, v5, :cond_75

    mul-int/lit8 v5, v4, 0x3

    add-int/2addr v5, v3

    mul-int/lit8 v6, v4, 0x4

    iget-object v7, v2, Lg1/d;->j:Ljava/lang/Object;

    check-cast v7, [I

    aget v8, v7, v6

    int-to-byte v8, v8

    add-int/lit8 v9, v6, 0x1

    aget v9, v7, v9

    shl-int/lit8 v10, v9, 0x6

    or-int/2addr v8, v10

    int-to-byte v8, v8

    aput-byte v8, p2, v5

    add-int/lit8 v8, v5, 0x1

    shr-int/lit8 v9, v9, 0x2

    int-to-byte v9, v9

    add-int/lit8 v10, v6, 0x2

    aget v10, v7, v10

    shl-int/lit8 v11, v10, 0x4

    or-int/2addr v9, v11

    int-to-byte v9, v9

    aput-byte v9, p2, v8

    add-int/lit8 v5, v5, 0x2

    shr-int/lit8 v8, v10, 0x4

    int-to-byte v8, v8

    add-int/lit8 v6, v6, 0x3

    aget v6, v7, v6

    shl-int/lit8 v6, v6, 0x2

    or-int/2addr v6, v8

    int-to-byte v6, v6

    aput-byte v6, p2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    :cond_54
    const v5, 0x3ff00

    if-ne v4, v5, :cond_75

    move v4, v0

    :goto_5a
    const/16 v5, 0x80

    if-ge v4, v5, :cond_75

    add-int v5, v3, v4

    mul-int/lit8 v6, v4, 0x2

    iget-object v7, v2, Lg1/d;->j:Ljava/lang/Object;

    check-cast v7, [I

    aget v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    aget v6, v7, v6

    shl-int/lit8 v6, v6, 0x4

    or-int/2addr v6, v8

    int-to-byte v6, v6

    aput-byte v6, p2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_5a

    :cond_75
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_78
    return-void
.end method

.method public f(Lg1/d;Li3/j;)V
    .registers 6

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Li3/j;->b:[Lg1/d;

    array-length v2, v1

    if-ge v0, v2, :cond_12

    aget-object v1, v1, v0

    iget-object v2, p2, Li3/j;->b:[Lg1/d;

    aget-object v2, v2, v0

    invoke-virtual {v1, p1, v2}, Lg1/d;->i(Lg1/d;Lg1/d;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_12
    return-void
.end method

.method public final g()V
    .registers 4

    iget v0, p0, Li3/j;->a:I

    packed-switch v0, :pswitch_data_24

    const/4 v0, 0x0

    :goto_6
    iget-object v1, p0, Li3/j;->b:[Lg1/d;

    array-length v2, v1

    if-ge v0, v2, :cond_13

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lg1/d;->l()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_13
    return-void

    :pswitch_14
    const/4 v0, 0x0

    :goto_15
    iget-object v1, p0, Li3/j;->b:[Lg1/d;

    array-length v2, v1

    if-ge v0, v2, :cond_22

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lg1/d;->l()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_22
    return-void

    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_14
    .end packed-switch
.end method

.method public h(Li3/j;)V
    .registers 10

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Li3/j;->b:[Lg1/d;

    array-length v3, v2

    if-ge v1, v3, :cond_2d

    aget-object v2, v2, v1

    iget-object v3, p1, Li3/j;->b:[Lg1/d;

    aget-object v3, v3, v1

    iget-object v2, v2, Lg1/d;->j:Ljava/lang/Object;

    check-cast v2, [I

    iget-object v3, v3, Lg1/d;->j:Ljava/lang/Object;

    check-cast v3, [I

    move v4, v0

    :goto_16
    const/16 v5, 0x100

    if-ge v4, v5, :cond_2a

    aget v5, v2, v4

    add-int/lit16 v6, v5, 0xfff

    and-int/lit16 v7, v6, -0x2000

    sub-int/2addr v5, v7

    shr-int/lit8 v6, v6, 0xd

    aput v6, v2, v4

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2d
    return-void
.end method

.method public i()V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Li3/j;->b:[Lg1/d;

    array-length v2, v1

    if-ge v0, v2, :cond_e

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lg1/d;->m()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_e
    return-void
.end method

.method public j(Li3/j;)V
    .registers 10

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Li3/j;->b:[Lg1/d;

    array-length v3, v2

    if-ge v1, v3, :cond_2a

    aget-object v2, v2, v1

    iget-object v3, p1, Li3/j;->b:[Lg1/d;

    aget-object v3, v3, v1

    move v4, v0

    :goto_e
    const/16 v5, 0x100

    if-ge v4, v5, :cond_24

    iget-object v5, v2, Lg1/d;->j:Ljava/lang/Object;

    check-cast v5, [I

    aget v6, v5, v4

    iget-object v7, v3, Lg1/d;->j:Ljava/lang/Object;

    check-cast v7, [I

    aget v7, v7, v4

    sub-int/2addr v6, v7

    aput v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_24
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2a
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    iget v0, p0, Li3/j;->a:I

    packed-switch v0, :pswitch_data_80

    const-string v0, "\n["

    const/4 v1, 0x0

    :goto_8
    iget-object v2, p0, Li3/j;->b:[Lg1/d;

    array-length v3, v2

    if-ge v1, v3, :cond_3e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Inner Matrix "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v2, v1

    invoke-virtual {v0}, Lg1/d;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_35

    goto :goto_3b

    :cond_35
    const-string v2, ",\n"

    invoke-static {v0, v2}, Lb/b;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_3e
    const-string p0, "]"

    invoke-static {v0, p0}, Lb/b;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_45
    const-string v0, "["

    const/4 v1, 0x0

    :goto_48
    iget-object v2, p0, Li3/j;->b:[Lg1/d;

    array-length v3, v2

    if-ge v1, v3, :cond_79

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v2, v1

    invoke-virtual {v0}, Lg1/d;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_70

    goto :goto_76

    :cond_70
    const-string v2, ",\n"

    invoke-static {v0, v2}, Lb/b;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_76
    add-int/lit8 v1, v1, 0x1

    goto :goto_48

    :cond_79
    const-string p0, "]"

    invoke-static {v0, p0}, Lb/b;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_45
    .end packed-switch
.end method
