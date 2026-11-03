.class public final Lv0/w;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/d;


# instance fields
.field public final synthetic g:I

.field public h:I

.field public i:Z

.field public j:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .registers 2

    iput p1, p0, Lv0/w;->g:I

    packed-switch p1, :pswitch_data_14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0xc

    iput p1, p0, Lv0/w;->h:I

    const/4 p1, 0x0

    iput-object p1, p0, Lv0/w;->j:Ljava/lang/Object;

    return-void

    :pswitch_10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_10
    .end packed-switch
.end method

.method public static a(I[B)J
    .registers 7

    const-wide/16 v0, 0x0

    const/4 v2, 0x7

    :goto_3
    if-ltz v2, :cond_13

    const/16 v3, 0x8

    shl-long/2addr v0, v3

    add-int v3, v2, p0

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_13
    return-wide v0
.end method

.method public static d(I[B)I
    .registers 4

    aget-byte v0, p1, p0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p0, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p0, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p0, p0, 0x3

    aget-byte p0, p1, p0

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method private final e()V
    .registers 1

    return-void
.end method

.method private final f()V
    .registers 1

    return-void
.end method

.method public static g(JJ)J
    .registers 8

    const-wide/16 v0, 0x3f

    and-long/2addr p2, v0

    long-to-int v0, p2

    shl-long v0, p0, v0

    const-wide/16 v2, 0x40

    sub-long/2addr v2, p2

    long-to-int p2, v2

    ushr-long/2addr p0, p2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static h(II)I
    .registers 3

    and-int/lit8 p1, p1, 0x1f

    shl-int v0, p0, p1

    rsub-int/lit8 p1, p1, 0x20

    ushr-int/2addr p0, p1

    or-int/2addr p0, v0

    return p0
.end method

.method public static j(IJ[B)V
    .registers 8

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x8

    if-ge v0, v1, :cond_f

    add-int v2, v0, p0

    long-to-int v3, p1

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    ushr-long/2addr p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    return-void
.end method

.method public static k([BII)V
    .registers 5

    int-to-byte v0, p1

    aput-byte v0, p0, p2

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, p2, 0x2

    shr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 p2, p2, 0x3

    shr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    aput-byte p1, p0, p2

    return-void
.end method


# virtual methods
.method public final b(II[B[B)I
    .registers 26

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    iget v5, v0, Lv0/w;->g:I

    packed-switch v5, :pswitch_data_14a

    iget-boolean v5, v0, Lv0/w;->i:Z

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_5b

    invoke-static {v1, v3}, Lv0/w;->a(I[B)J

    move-result-wide v8

    iget-object v5, v0, Lv0/w;->j:Ljava/lang/Object;

    check-cast v5, [J

    aget-wide v10, v5, v7

    add-long/2addr v8, v10

    add-int/lit8 v1, v1, 0x8

    invoke-static {v1, v3}, Lv0/w;->a(I[B)J

    move-result-wide v10

    iget-object v1, v0, Lv0/w;->j:Ljava/lang/Object;

    check-cast v1, [J

    aget-wide v12, v1, v6

    add-long/2addr v10, v12

    move v1, v6

    :goto_2e
    iget v3, v0, Lv0/w;->h:I

    if-gt v1, v3, :cond_52

    xor-long v7, v8, v10

    invoke-static {v7, v8, v10, v11}, Lv0/w;->g(JJ)J

    move-result-wide v7

    iget-object v3, v0, Lv0/w;->j:Ljava/lang/Object;

    check-cast v3, [J

    mul-int/lit8 v5, v1, 0x2

    aget-wide v12, v3, v5

    add-long v8, v7, v12

    xor-long/2addr v10, v8

    invoke-static {v10, v11, v8, v9}, Lv0/w;->g(JJ)J

    move-result-wide v10

    iget-object v3, v0, Lv0/w;->j:Ljava/lang/Object;

    check-cast v3, [J

    add-int/2addr v5, v6

    aget-wide v12, v3, v5

    add-long/2addr v10, v12

    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    :cond_52
    invoke-static {v2, v8, v9, v4}, Lv0/w;->j(IJ[B)V

    add-int/lit8 v0, v2, 0x8

    invoke-static {v0, v10, v11, v4}, Lv0/w;->j(IJ[B)V

    goto :goto_b3

    :cond_5b
    invoke-static {v1, v3}, Lv0/w;->a(I[B)J

    move-result-wide v8

    add-int/lit8 v1, v1, 0x8

    invoke-static {v1, v3}, Lv0/w;->a(I[B)J

    move-result-wide v10

    iget v1, v0, Lv0/w;->h:I

    :goto_67
    if-lt v1, v6, :cond_9b

    iget-object v3, v0, Lv0/w;->j:Ljava/lang/Object;

    check-cast v3, [J

    mul-int/lit8 v5, v1, 0x2

    add-int/lit8 v12, v5, 0x1

    aget-wide v12, v3, v12

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x3f

    and-long v14, v8, v12

    move/from16 v16, v6

    long-to-int v6, v14

    ushr-long v17, v10, v6

    const-wide/16 v19, 0x40

    sub-long v14, v19, v14

    long-to-int v6, v14

    shl-long/2addr v10, v6

    or-long v10, v17, v10

    xor-long/2addr v10, v8

    aget-wide v5, v3, v5

    sub-long/2addr v8, v5

    and-long v5, v10, v12

    long-to-int v3, v5

    ushr-long v12, v8, v3

    sub-long v5, v19, v5

    long-to-int v3, v5

    shl-long v5, v8, v3

    or-long/2addr v5, v12

    xor-long v8, v5, v10

    add-int/lit8 v1, v1, -0x1

    move/from16 v6, v16

    goto :goto_67

    :cond_9b
    move/from16 v16, v6

    iget-object v1, v0, Lv0/w;->j:Ljava/lang/Object;

    check-cast v1, [J

    aget-wide v5, v1, v7

    sub-long/2addr v8, v5

    invoke-static {v2, v8, v9, v4}, Lv0/w;->j(IJ[B)V

    iget-object v0, v0, Lv0/w;->j:Ljava/lang/Object;

    check-cast v0, [J

    aget-wide v0, v0, v16

    sub-long/2addr v10, v0

    add-int/lit8 v0, v2, 0x8

    invoke-static {v0, v10, v11, v4}, Lv0/w;->j(IJ[B)V

    :goto_b3
    const/16 v0, 0x10

    return v0

    :pswitch_b6
    iget-boolean v5, v0, Lv0/w;->i:Z

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_100

    invoke-static {v1, v3}, Lv0/w;->d(I[B)I

    move-result v5

    iget-object v8, v0, Lv0/w;->j:Ljava/lang/Object;

    check-cast v8, [I

    aget v7, v8, v7

    add-int/2addr v5, v7

    add-int/lit8 v1, v1, 0x4

    invoke-static {v1, v3}, Lv0/w;->d(I[B)I

    move-result v1

    iget-object v3, v0, Lv0/w;->j:Ljava/lang/Object;

    check-cast v3, [I

    aget v3, v3, v6

    add-int/2addr v1, v3

    move v3, v6

    :goto_d5
    iget v7, v0, Lv0/w;->h:I

    if-gt v3, v7, :cond_f7

    xor-int/2addr v5, v1

    invoke-static {v5, v1}, Lv0/w;->h(II)I

    move-result v5

    iget-object v7, v0, Lv0/w;->j:Ljava/lang/Object;

    check-cast v7, [I

    mul-int/lit8 v8, v3, 0x2

    aget v7, v7, v8

    add-int/2addr v5, v7

    xor-int/2addr v1, v5

    invoke-static {v1, v5}, Lv0/w;->h(II)I

    move-result v1

    iget-object v7, v0, Lv0/w;->j:Ljava/lang/Object;

    check-cast v7, [I

    add-int/2addr v8, v6

    aget v7, v7, v8

    add-int/2addr v1, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_d5

    :cond_f7
    invoke-static {v4, v5, v2}, Lv0/w;->k([BII)V

    add-int/lit8 v0, v2, 0x4

    invoke-static {v4, v1, v0}, Lv0/w;->k([BII)V

    goto :goto_147

    :cond_100
    invoke-static {v1, v3}, Lv0/w;->d(I[B)I

    move-result v5

    add-int/lit8 v1, v1, 0x4

    invoke-static {v1, v3}, Lv0/w;->d(I[B)I

    move-result v1

    iget v3, v0, Lv0/w;->h:I

    :goto_10c
    if-lt v3, v6, :cond_131

    iget-object v8, v0, Lv0/w;->j:Ljava/lang/Object;

    check-cast v8, [I

    mul-int/lit8 v9, v3, 0x2

    add-int/lit8 v10, v9, 0x1

    aget v10, v8, v10

    sub-int/2addr v1, v10

    and-int/lit8 v10, v5, 0x1f

    ushr-int v11, v1, v10

    rsub-int/lit8 v10, v10, 0x20

    shl-int/2addr v1, v10

    or-int/2addr v1, v11

    xor-int/2addr v1, v5

    aget v8, v8, v9

    sub-int/2addr v5, v8

    and-int/lit8 v8, v1, 0x1f

    ushr-int v9, v5, v8

    rsub-int/lit8 v8, v8, 0x20

    shl-int/2addr v5, v8

    or-int/2addr v5, v9

    xor-int/2addr v5, v1

    add-int/lit8 v3, v3, -0x1

    goto :goto_10c

    :cond_131
    iget-object v3, v0, Lv0/w;->j:Ljava/lang/Object;

    check-cast v3, [I

    aget v3, v3, v7

    sub-int/2addr v5, v3

    invoke-static {v4, v5, v2}, Lv0/w;->k([BII)V

    iget-object v0, v0, Lv0/w;->j:Ljava/lang/Object;

    check-cast v0, [I

    aget v0, v0, v6

    sub-int/2addr v1, v0

    add-int/lit8 v0, v2, 0x4

    invoke-static {v4, v1, v0}, Lv0/w;->k([BII)V

    :goto_147
    const/16 v0, 0x8

    return v0

    :pswitch_data_14a
    .packed-switch 0x0
        :pswitch_b6
    .end packed-switch
.end method

.method public final c()I
    .registers 1

    iget p0, p0, Lv0/w;->g:I

    packed-switch p0, :pswitch_data_c

    const/16 p0, 0x10

    return p0

    :pswitch_8
    const/16 p0, 0x8

    return p0

    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_8
    .end packed-switch
.end method

.method public final getAlgorithmName()Ljava/lang/String;
    .registers 1

    iget p0, p0, Lv0/w;->g:I

    packed-switch p0, :pswitch_data_c

    const-string p0, "RC5-64"

    return-object p0

    :pswitch_8
    const-string p0, "RC5-32"

    return-object p0

    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_8
    .end packed-switch
.end method

.method public i([B)V
    .registers 13

    array-length v0, p1

    const/4 v1, 0x3

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x4

    new-array v2, v0, [I

    const/4 v3, 0x0

    move v4, v3

    :goto_9
    array-length v5, p1

    if-eq v4, v5, :cond_1f

    div-int/lit8 v5, v4, 0x4

    aget v6, v2, v5

    aget-byte v7, p1, v4

    and-int/lit16 v7, v7, 0xff

    rem-int/lit8 v8, v4, 0x4

    mul-int/lit8 v8, v8, 0x8

    shl-int/2addr v7, v8

    add-int/2addr v6, v7

    aput v6, v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_1f
    iget p1, p0, Lv0/w;->h:I

    const/4 v4, 0x1

    add-int/2addr p1, v4

    mul-int/lit8 p1, p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Lv0/w;->j:Ljava/lang/Object;

    const v5, -0x481eae9d

    aput v5, p1, v3

    move p1, v4

    :goto_2f
    iget-object v5, p0, Lv0/w;->j:Ljava/lang/Object;

    check-cast v5, [I

    array-length v6, v5

    if-ge p1, v6, :cond_43

    add-int/lit8 v6, p1, -0x1

    aget v6, v5, v6

    const v7, -0x61c88647

    add-int/2addr v6, v7

    aput v6, v5, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2f

    :cond_43
    array-length p1, v5

    if-le v0, p1, :cond_49

    mul-int/lit8 p1, v0, 0x3

    goto :goto_4b

    :cond_49
    array-length p1, v5

    mul-int/2addr p1, v1

    :goto_4b
    move v5, v3

    move v6, v5

    move v7, v6

    move v8, v7

    :goto_4f
    if-ge v3, p1, :cond_76

    iget-object v9, p0, Lv0/w;->j:Ljava/lang/Object;

    check-cast v9, [I

    aget v10, v9, v5

    add-int/2addr v10, v6

    add-int/2addr v10, v7

    invoke-static {v10, v1}, Lv0/w;->h(II)I

    move-result v6

    aput v6, v9, v5

    aget v9, v2, v8

    add-int/2addr v9, v6

    add-int/2addr v9, v7

    add-int/2addr v7, v6

    invoke-static {v9, v7}, Lv0/w;->h(II)I

    move-result v7

    aput v7, v2, v8

    add-int/2addr v5, v4

    iget-object v9, p0, Lv0/w;->j:Ljava/lang/Object;

    check-cast v9, [I

    array-length v9, v9

    rem-int/2addr v5, v9

    add-int/2addr v8, v4

    rem-int/2addr v8, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_4f

    :cond_76
    return-void
.end method

.method public final init(ZLorg/bouncycastle/crypto/g;)V
    .registers 16

    iget v0, p0, Lv0/w;->g:I

    packed-switch v0, :pswitch_data_fc

    instance-of v0, p2, Le1/x0;

    if-eqz v0, :cond_ac

    move-object v0, p2

    check-cast v0, Le1/x0;

    iput-boolean p1, p0, Lv0/w;->i:Z

    iget p1, v0, Le1/x0;->d:I

    iput p1, p0, Lv0/w;->h:I

    iget-object p1, v0, Le1/x0;->c:[B

    array-length v0, p1

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    new-array v1, v0, [J

    const/4 v2, 0x0

    move v3, v2

    :goto_1d
    array-length v4, p1

    if-eq v3, v4, :cond_34

    div-int/lit8 v4, v3, 0x8

    aget-wide v5, v1, v4

    aget-byte v7, p1, v3

    and-int/lit16 v7, v7, 0xff

    int-to-long v7, v7

    rem-int/lit8 v9, v3, 0x8

    mul-int/lit8 v9, v9, 0x8

    shl-long/2addr v7, v9

    add-long/2addr v5, v7

    aput-wide v5, v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :cond_34
    iget p1, p0, Lv0/w;->h:I

    const/4 v3, 0x1

    add-int/2addr p1, v3

    mul-int/lit8 p1, p1, 0x2

    new-array p1, p1, [J

    iput-object p1, p0, Lv0/w;->j:Ljava/lang/Object;

    const-wide v4, -0x481eae9d7512d595L    # -1.590398847350152E-39

    aput-wide v4, p1, v2

    move p1, v3

    :goto_46
    iget-object v4, p0, Lv0/w;->j:Ljava/lang/Object;

    check-cast v4, [J

    array-length v5, v4

    if-ge p1, v5, :cond_5c

    add-int/lit8 v5, p1, -0x1

    aget-wide v5, v4, v5

    const-wide v7, -0x61c8864680b583ebL

    add-long/2addr v5, v7

    aput-wide v5, v4, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_46

    :cond_5c
    array-length p1, v4

    if-le v0, p1, :cond_62

    mul-int/lit8 p1, v0, 0x3

    goto :goto_65

    :cond_62
    array-length p1, v4

    mul-int/lit8 p1, p1, 0x3

    :goto_65
    const-wide/16 v4, 0x0

    move-wide v6, v4

    move-wide v8, v6

    move v4, v2

    move v5, v4

    :goto_6b
    if-ge v2, p1, :cond_94

    iget-object v10, p0, Lv0/w;->j:Ljava/lang/Object;

    check-cast v10, [J

    aget-wide v11, v10, v4

    add-long/2addr v11, v6

    add-long/2addr v11, v8

    const-wide/16 v6, 0x3

    invoke-static {v11, v12, v6, v7}, Lv0/w;->g(JJ)J

    move-result-wide v6

    aput-wide v6, v10, v4

    aget-wide v10, v1, v5

    add-long/2addr v10, v6

    add-long/2addr v10, v8

    add-long/2addr v8, v6

    invoke-static {v10, v11, v8, v9}, Lv0/w;->g(JJ)J

    move-result-wide v8

    aput-wide v8, v1, v5

    add-int/2addr v4, v3

    iget-object v10, p0, Lv0/w;->j:Ljava/lang/Object;

    check-cast v10, [J

    array-length v10, v10

    rem-int/2addr v4, v10

    add-int/2addr v5, v3

    rem-int/2addr v5, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_6b

    :cond_94
    instance-of p0, p2, Lorg/bouncycastle/crypto/j;

    if-nez p0, :cond_a4

    sget-object p0, Lorg/bouncycastle/crypto/o;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/crypto/l;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_a4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "params should not be CryptoServicePurpose"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_ac
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid parameter passed to RC564 init - "

    invoke-static {p1, p2}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->c(Ljava/lang/String;Lorg/bouncycastle/crypto/g;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_b8
    instance-of v0, p2, Le1/x0;

    if-eqz v0, :cond_c9

    move-object v0, p2

    check-cast v0, Le1/x0;

    iget v1, v0, Le1/x0;->d:I

    iput v1, p0, Lv0/w;->h:I

    iget-object v0, v0, Le1/x0;->c:[B

    invoke-virtual {p0, v0}, Lv0/w;->i([B)V

    goto :goto_d5

    :cond_c9
    instance-of v0, p2, Le1/o0;

    if-eqz v0, :cond_ef

    move-object v0, p2

    check-cast v0, Le1/o0;

    iget-object v0, v0, Le1/o0;->c:[B

    invoke-virtual {p0, v0}, Lv0/w;->i([B)V

    :goto_d5
    iput-boolean p1, p0, Lv0/w;->i:Z

    instance-of p0, p2, Lorg/bouncycastle/crypto/j;

    if-nez p0, :cond_e7

    sget-object p0, Lorg/bouncycastle/crypto/o;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/crypto/l;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_e7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "params should not be CryptoServicePurpose"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_ef
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid parameter passed to RC532 init - "

    invoke-static {p1, p2}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->c(Ljava/lang/String;Lorg/bouncycastle/crypto/g;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_fc
    .packed-switch 0x0
        :pswitch_b8
    .end packed-switch
.end method

.method public final reset()V
    .registers 1

    iget p0, p0, Lv0/w;->g:I

    return-void
.end method
