.class public final Lj3/j;
.super Ljava/lang/Object;


# instance fields
.field public final synthetic a:I

.field public final b:I

.field public final c:I

.field public d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lj3/a;I)V
    .registers 6

    iput p2, p0, Lj3/j;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    packed-switch p2, :pswitch_data_3e

    const/16 p2, 0x100

    new-array p2, p2, [S

    iput-object p2, p0, Lj3/j;->d:Ljava/lang/Object;

    iget p2, p1, Lj3/a;->e:I

    iput p2, p0, Lj3/j;->b:I

    iget p2, p1, Lj3/a;->g:I

    iput p2, p0, Lj3/j;->c:I

    iget-object p1, p1, Lj3/a;->p:Li1/g;

    iput-object p1, p0, Lj3/j;->e:Ljava/lang/Object;

    return-void

    :pswitch_1b
    iput-object p1, p0, Lj3/j;->e:Ljava/lang/Object;

    iget p2, p1, Lj3/a;->c:I

    iput p2, p0, Lj3/j;->b:I

    iget v0, p1, Lj3/a;->d:I

    iput v0, p0, Lj3/j;->c:I

    new-array p2, p2, [Lj3/j;

    iput-object p2, p0, Lj3/j;->d:Ljava/lang/Object;

    const/4 p2, 0x0

    :goto_2a
    iget v0, p0, Lj3/j;->b:I

    if-ge p2, v0, :cond_3d

    iget-object v0, p0, Lj3/j;->d:Ljava/lang/Object;

    check-cast v0, [Lj3/j;

    new-instance v1, Lj3/j;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lj3/j;-><init>(Lj3/a;I)V

    aput-object v1, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_2a

    :cond_3d
    return-void

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_1b
    .end packed-switch
.end method

.method public static b(Lj3/j;Lj3/j;Lj3/j;)V
    .registers 22

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x0

    :goto_5
    const/16 v3, 0x40

    if-ge v2, v3, :cond_4b

    mul-int/lit8 v5, v2, 0x4

    iget-object v3, v0, Lj3/j;->d:Ljava/lang/Object;

    check-cast v3, [S

    aget-short v6, v3, v5

    add-int/lit8 v4, v5, 0x1

    aget-short v7, v3, v4

    iget-object v3, v1, Lj3/j;->d:Ljava/lang/Object;

    check-cast v3, [S

    aget-short v8, v3, v5

    aget-short v9, v3, v4

    add-int/lit8 v3, v2, 0x40

    sget-object v11, Lj3/i;->a:[S

    aget-short v10, v11, v3

    move-object/from16 v4, p0

    invoke-static/range {v4 .. v10}, Lj3/i;->a(Lj3/j;ISSSSS)V

    add-int/lit8 v13, v5, 0x2

    iget-object v4, v0, Lj3/j;->d:Ljava/lang/Object;

    check-cast v4, [S

    aget-short v14, v4, v13

    add-int/lit8 v5, v5, 0x3

    aget-short v15, v4, v5

    iget-object v4, v1, Lj3/j;->d:Ljava/lang/Object;

    check-cast v4, [S

    aget-short v16, v4, v13

    aget-short v17, v4, v5

    aget-short v3, v11, v3

    mul-int/lit8 v3, v3, -0x1

    int-to-short v3, v3

    move-object/from16 v12, p0

    move/from16 v18, v3

    invoke-static/range {v12 .. v18}, Lj3/i;->a(Lj3/j;ISSSSS)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_4b
    return-void
.end method

.method public static f(Lj3/j;Lj3/j;Lj3/j;Lj3/a;)V
    .registers 8

    new-instance v0, Lj3/j;

    const/4 v1, 0x0

    invoke-direct {v0, p3, v1}, Lj3/j;-><init>(Lj3/a;I)V

    iget-object v1, p1, Lj3/j;->d:Ljava/lang/Object;

    check-cast v1, [Lj3/j;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object p2, p2, Lj3/j;->d:Ljava/lang/Object;

    check-cast p2, [Lj3/j;

    aget-object v2, p2, v2

    invoke-static {p0, v1, v2}, Lj3/j;->b(Lj3/j;Lj3/j;Lj3/j;)V

    const/4 v1, 0x1

    :goto_17
    iget v2, p3, Lj3/a;->c:I

    if-ge v1, v2, :cond_2c

    iget-object v2, p1, Lj3/j;->d:Ljava/lang/Object;

    check-cast v2, [Lj3/j;

    aget-object v2, v2, v1

    aget-object v3, p2, v1

    invoke-static {v0, v2, v3}, Lj3/j;->b(Lj3/j;Lj3/j;Lj3/j;)V

    invoke-virtual {p0, v0}, Lj3/j;->a(Lj3/j;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_2c
    invoke-virtual {p0}, Lj3/j;->i()V

    return-void
.end method


# virtual methods
.method public a(Lj3/j;)V
    .registers 6

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x100

    if-ge v0, v1, :cond_18

    iget-object v1, p0, Lj3/j;->d:Ljava/lang/Object;

    check-cast v1, [S

    aget-short v2, v1, v0

    iget-object v3, p1, Lj3/j;->d:Ljava/lang/Object;

    check-cast v3, [S

    aget-short v3, v3, v0

    add-int/2addr v2, v3

    int-to-short v2, v2

    aput-short v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_18
    return-void
.end method

.method public c()V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x100

    if-ge v0, v1, :cond_19

    iget-object v1, p0, Lj3/j;->d:Ljava/lang/Object;

    check-cast v1, [S

    aget-short v2, v1, v0

    add-int/lit16 v2, v2, -0xd01

    int-to-short v2, v2

    shr-int/lit8 v3, v2, 0xf

    and-int/lit16 v3, v3, 0xd01

    add-int/2addr v2, v3

    int-to-short v2, v2

    aput-short v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_19
    return-void
.end method

.method public d([B)V
    .registers 13

    const/4 v0, 0x0

    move v1, v0

    :cond_2
    iget v2, p0, Lj3/j;->b:I

    if-ge v1, v2, :cond_4d

    iget-object v2, p0, Lj3/j;->d:Ljava/lang/Object;

    check-cast v2, [Lj3/j;

    aget-object v2, v2, v1

    mul-int/lit16 v3, v1, 0x180

    add-int/lit8 v1, v1, 0x1

    mul-int/lit16 v4, v1, 0x180

    invoke-static {p1, v3, v4}, Lm4/d;->q([BII)[B

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v4, v0

    :goto_1a
    const/16 v5, 0x80

    if-ge v4, v5, :cond_2

    mul-int/lit8 v5, v4, 0x3

    aget-byte v6, v3, v5

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, v5, 0x1

    aget-byte v7, v3, v7

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v5, v5, 0x2

    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    iget-object v8, v2, Lj3/j;->d:Ljava/lang/Object;

    check-cast v8, [S

    mul-int/lit8 v9, v4, 0x2

    shl-int/lit8 v10, v7, 0x8

    or-int/2addr v6, v10

    and-int/lit16 v6, v6, 0xfff

    int-to-short v6, v6

    aput-short v6, v8, v9

    add-int/lit8 v9, v9, 0x1

    shr-int/lit8 v6, v7, 0x4

    shl-int/lit8 v5, v5, 0x4

    or-int/2addr v5, v6

    and-int/lit16 v5, v5, 0xfff

    int-to-short v5, v5

    aput-short v5, v8, v9

    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    :cond_4d
    return-void
.end method

.method public e([BB)V
    .registers 11

    iget v0, p0, Lj3/j;->c:I

    mul-int/lit16 v1, v0, 0x100

    div-int/lit8 v1, v1, 0x4

    new-array v2, v1, [B

    iget-object v3, p0, Lj3/j;->e:Ljava/lang/Object;

    check-cast v3, Li1/g;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v4, p1

    add-int/lit8 v4, v4, 0x1

    new-array v5, v4, [B

    array-length v6, p1

    const/4 v7, 0x0

    invoke-static {p1, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p1

    aput-byte p2, v5, p1

    iget-object p1, v3, Li1/g;->d:Ljava/lang/Object;

    check-cast p1, Ls0/g0;

    invoke-virtual {p1, v5, v7, v4}, Ls0/n;->f([BII)V

    invoke-virtual {p1, v2, v7, v1}, Ls0/g0;->b([BII)I

    invoke-static {p0, v2, v0}, Lj3/i;->b(Lj3/j;[BI)V

    return-void
.end method

.method public g()V
    .registers 15

    iget-object v0, p0, Lj3/j;->d:Ljava/lang/Object;

    check-cast v0, [S

    const/16 v1, 0x100

    new-array v2, v1, [S

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x2

    move v4, v3

    :goto_e
    const/16 v5, 0x80

    sget-object v6, Lj3/i;->b:[S

    if-gt v0, v5, :cond_4e

    move v5, v3

    :goto_15
    if-ge v5, v1, :cond_4b

    add-int/lit8 v7, v4, 0x1

    aget-short v4, v6, v4

    move v8, v5

    :goto_1c
    add-int v9, v5, v0

    if-ge v8, v9, :cond_47

    aget-short v9, v2, v8

    add-int v10, v8, v0

    aget-short v11, v2, v10

    add-int/2addr v11, v9

    int-to-short v11, v11

    const-wide/16 v12, 0x4ebf

    long-to-int v12, v12

    int-to-short v12, v12

    mul-int/2addr v12, v11

    shr-int/lit8 v12, v12, 0x1a

    int-to-short v12, v12

    mul-int/lit16 v12, v12, 0xd01

    int-to-short v12, v12

    sub-int/2addr v11, v12

    int-to-short v11, v11

    aput-short v11, v2, v8

    aget-short v11, v2, v10

    sub-int/2addr v9, v11

    int-to-short v9, v9

    aput-short v9, v2, v10

    mul-int/2addr v9, v4

    invoke-static {v9}, Lj3/i;->c(I)S

    move-result v9

    aput-short v9, v2, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_1c

    :cond_47
    add-int v5, v8, v0

    move v4, v7

    goto :goto_15

    :cond_4b
    shl-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_4e
    :goto_4e
    if-ge v3, v1, :cond_60

    aget-short v0, v2, v3

    const/16 v4, 0x7f

    aget-short v4, v6, v4

    mul-int/2addr v0, v4

    invoke-static {v0}, Lj3/i;->c(I)S

    move-result v0

    aput-short v0, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4e

    :cond_60
    iput-object v2, p0, Lj3/j;->d:Ljava/lang/Object;

    return-void
.end method

.method public h()V
    .registers 14

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget v2, p0, Lj3/j;->b:I

    if-ge v1, v2, :cond_52

    iget-object v2, p0, Lj3/j;->d:Ljava/lang/Object;

    check-cast v2, [Lj3/j;

    aget-object v2, v2, v1

    iget-object v3, v2, Lj3/j;->d:Ljava/lang/Object;

    check-cast v3, [S

    const/16 v4, 0x100

    new-array v5, v4, [S

    invoke-static {v3, v0, v5, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x1

    const/16 v6, 0x80

    :goto_1a
    const/4 v7, 0x2

    if-lt v6, v7, :cond_4a

    move v7, v0

    :goto_1e
    if-ge v7, v4, :cond_47

    add-int/lit8 v8, v3, 0x1

    sget-object v9, Lj3/i;->a:[S

    aget-short v3, v9, v3

    move v9, v7

    :goto_27
    add-int v10, v7, v6

    if-ge v9, v10, :cond_43

    add-int v10, v9, v6

    aget-short v11, v5, v10

    mul-int/2addr v11, v3

    invoke-static {v11}, Lj3/i;->c(I)S

    move-result v11

    aget-short v12, v5, v9

    sub-int/2addr v12, v11

    int-to-short v12, v12

    aput-short v12, v5, v10

    aget-short v10, v5, v9

    add-int/2addr v10, v11

    int-to-short v10, v10

    aput-short v10, v5, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_27

    :cond_43
    add-int v7, v9, v6

    move v3, v8

    goto :goto_1e

    :cond_47
    shr-int/lit8 v6, v6, 0x1

    goto :goto_1a

    :cond_4a
    iput-object v5, v2, Lj3/j;->d:Ljava/lang/Object;

    invoke-virtual {v2}, Lj3/j;->i()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_52
    return-void
.end method

.method public i()V
    .registers 6

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x100

    if-ge v0, v1, :cond_1d

    iget-object v1, p0, Lj3/j;->d:Ljava/lang/Object;

    check-cast v1, [S

    aget-short v2, v1, v0

    const-wide/16 v3, 0x4ebf

    long-to-int v3, v3

    int-to-short v3, v3

    mul-int/2addr v3, v2

    shr-int/lit8 v3, v3, 0x1a

    int-to-short v3, v3

    mul-int/lit16 v3, v3, 0xd01

    int-to-short v3, v3

    sub-int/2addr v2, v3

    int-to-short v2, v2

    aput-short v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1d
    return-void
.end method

.method public j()[B
    .registers 13

    iget v0, p0, Lj3/j;->c:I

    new-array v0, v0, [B

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    iget v3, p0, Lj3/j;->b:I

    if-ge v2, v3, :cond_49

    iget-object v3, p0, Lj3/j;->d:Ljava/lang/Object;

    check-cast v3, [Lj3/j;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lj3/j;->c()V

    const/16 v4, 0x180

    new-array v5, v4, [B

    move v6, v1

    :goto_18
    const/16 v7, 0x80

    if-ge v6, v7, :cond_41

    iget-object v7, v3, Lj3/j;->d:Ljava/lang/Object;

    check-cast v7, [S

    mul-int/lit8 v8, v6, 0x2

    aget-short v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    aget-short v7, v7, v8

    mul-int/lit8 v8, v6, 0x3

    int-to-byte v10, v9

    aput-byte v10, v5, v8

    add-int/lit8 v10, v8, 0x1

    shr-int/lit8 v9, v9, 0x8

    shl-int/lit8 v11, v7, 0x4

    or-int/2addr v9, v11

    int-to-byte v9, v9

    aput-byte v9, v5, v10

    add-int/lit8 v8, v8, 0x2

    shr-int/lit8 v7, v7, 0x4

    int-to-byte v7, v7

    aput-byte v7, v5, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_18

    :cond_41
    mul-int/lit16 v3, v2, 0x180

    invoke-static {v5, v1, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_49
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    iget v0, p0, Lj3/j;->a:I

    packed-switch v0, :pswitch_data_64

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_d
    iget v2, p0, Lj3/j;->b:I

    if-ge v1, v2, :cond_2a

    iget-object v3, p0, Lj3/j;->d:Ljava/lang/Object;

    check-cast v3, [Lj3/j;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lj3/j;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_27

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_2a
    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_34
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_3c
    iget-object v2, p0, Lj3/j;->d:Ljava/lang/Object;

    check-cast v2, [S

    array-length v3, v2

    if-ge v1, v3, :cond_59

    aget-short v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lj3/j;->d:Ljava/lang/Object;

    check-cast v2, [S

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_56

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_56
    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    :cond_59
    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_34
    .end packed-switch
.end method
