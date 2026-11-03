.class public final Ln4/b;
.super Ljava/lang/Object;


# instance fields
.field public final synthetic a:I

.field public final b:[B

.field public final c:[B


# direct methods
.method public constructor <init>(I)V
    .registers 6

    iput p1, p0, Ln4/b;->a:I

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    packed-switch p1, :pswitch_data_86

    const/16 p1, 0x40

    new-array p1, p1, [B

    fill-array-data p1, :array_8c

    iput-object p1, p0, Ln4/b;->b:[B

    const/16 p1, 0x80

    new-array v1, p1, [B

    iput-object v1, p0, Ln4/b;->c:[B

    move v2, v0

    :goto_19
    if-ge v2, p1, :cond_21

    const/4 v3, -0x1

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_21
    :goto_21
    iget-object p1, p0, Ln4/b;->b:[B

    array-length v2, p1

    if-ge v0, v2, :cond_2e

    aget-byte p1, p1, v0

    int-to-byte v2, v0

    aput-byte v2, v1, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_2e
    return-void

    :pswitch_2f
    const/16 p1, 0x10

    new-array p1, p1, [B

    fill-array-data p1, :array_b0

    iput-object p1, p0, Ln4/b;->b:[B

    const/16 p1, 0x80

    new-array p1, p1, [B

    iput-object p1, p0, Ln4/b;->c:[B

    move v1, v0

    :goto_3f
    array-length v2, p1

    if-ge v1, v2, :cond_48

    const/4 v2, -0x1

    aput-byte v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3f

    :cond_48
    :goto_48
    iget-object v1, p0, Ln4/b;->b:[B

    array-length v2, v1

    if-ge v0, v2, :cond_55

    aget-byte v1, v1, v0

    int-to-byte v2, v0

    aput-byte v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_48

    :cond_55
    const/16 p0, 0x61

    aget-byte p0, p1, p0

    const/16 v0, 0x41

    aput-byte p0, p1, v0

    const/16 p0, 0x62

    aget-byte p0, p1, p0

    const/16 v0, 0x42

    aput-byte p0, p1, v0

    const/16 p0, 0x63

    aget-byte p0, p1, p0

    const/16 v0, 0x43

    aput-byte p0, p1, v0

    const/16 p0, 0x64

    aget-byte p0, p1, p0

    const/16 v0, 0x44

    aput-byte p0, p1, v0

    const/16 p0, 0x65

    aget-byte p0, p1, p0

    const/16 v0, 0x45

    aput-byte p0, p1, v0

    const/16 p0, 0x66

    aget-byte p0, p1, p0

    const/16 v0, 0x46

    aput-byte p0, p1, v0

    return-void

    :pswitch_data_86
    .packed-switch 0x1
        :pswitch_2f
    .end packed-switch

    :array_8c
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    :array_b0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method

.method public synthetic constructor <init>([BI[B)V
    .registers 4

    iput p2, p0, Ln4/b;->a:I

    iput-object p1, p0, Ln4/b;->b:[B

    iput-object p3, p0, Ln4/b;->c:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(C)Z
    .registers 2

    const/16 v0, 0xa

    if-eq p0, v0, :cond_13

    const/16 v0, 0xd

    if-eq p0, v0, :cond_13

    const/16 v0, 0x9

    if-eq p0, v0, :cond_13

    const/16 v0, 0x20

    if-ne p0, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method public static e(C)Z
    .registers 2

    const/16 v0, 0xa

    if-eq p0, v0, :cond_13

    const/16 v0, 0xd

    if-eq p0, v0, :cond_13

    const/16 v0, 0x9

    if-eq p0, v0, :cond_13

    const/16 v0, 0x20

    if-ne p0, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method public static f(IILjava/lang/String;)I
    .registers 4

    :goto_0
    if-ge p0, p1, :cond_f

    invoke-virtual {p2, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ln4/b;->d(C)Z

    move-result v0

    if-eqz v0, :cond_f

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_f
    return p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)I
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget v3, v0, Ln4/b;->a:I

    packed-switch v3, :pswitch_data_1ce

    const/16 v3, 0x24

    new-array v4, v3, [B

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    :goto_13
    if-lez v5, :cond_25

    add-int/lit8 v6, v5, -0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ln4/b;->e(C)Z

    move-result v6

    if-nez v6, :cond_22

    goto :goto_25

    :cond_22
    add-int/lit8 v5, v5, -0x1

    goto :goto_13

    :cond_25
    :goto_25
    const/4 v6, 0x0

    move v7, v6

    move v8, v7

    move v9, v8

    :goto_29
    if-ge v7, v5, :cond_7b

    :goto_2b
    if-ge v7, v5, :cond_3a

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ln4/b;->e(C)Z

    move-result v10

    if-eqz v10, :cond_3a

    add-int/lit8 v7, v7, 0x1

    goto :goto_2b

    :cond_3a
    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    iget-object v11, v0, Ln4/b;->c:[B

    aget-byte v7, v11, v7

    :goto_44
    if-ge v10, v5, :cond_53

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Ln4/b;->e(C)Z

    move-result v12

    if-eqz v12, :cond_53

    add-int/lit8 v10, v10, 0x1

    goto :goto_44

    :cond_53
    add-int/lit8 v12, v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    aget-byte v10, v11, v10

    or-int v11, v7, v10

    if-ltz v11, :cond_73

    add-int/lit8 v11, v8, 0x1

    shl-int/lit8 v7, v7, 0x4

    or-int/2addr v7, v10

    int-to-byte v7, v7

    aput-byte v7, v4, v8

    if-ne v11, v3, :cond_6e

    invoke-virtual {v2, v4}, Ljava/io/OutputStream;->write([B)V

    move v8, v6

    goto :goto_6f

    :cond_6e
    move v8, v11

    :goto_6f
    add-int/lit8 v9, v9, 0x1

    move v7, v12

    goto :goto_29

    :cond_73
    new-instance v0, Ljava/io/IOException;

    const-string v1, "invalid characters encountered in Hex string"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7b
    if-lez v8, :cond_80

    invoke-virtual {v2, v4, v6, v8}, Ljava/io/OutputStream;->write([BII)V

    :cond_80
    return v9

    :pswitch_81
    const/16 v3, 0x36

    new-array v4, v3, [B

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    :goto_89
    if-lez v5, :cond_9b

    add-int/lit8 v6, v5, -0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ln4/b;->d(C)Z

    move-result v6

    if-nez v6, :cond_98

    goto :goto_9b

    :cond_98
    add-int/lit8 v5, v5, -0x1

    goto :goto_89

    :cond_9b
    :goto_9b
    const/4 v6, 0x0

    if-nez v5, :cond_a0

    goto/16 :goto_1c7

    :cond_a0
    move v7, v5

    move v8, v6

    :goto_a2
    const/4 v9, 0x4

    if-lez v7, :cond_b8

    if-eq v8, v9, :cond_b8

    add-int/lit8 v9, v7, -0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ln4/b;->d(C)Z

    move-result v9

    if-nez v9, :cond_b5

    add-int/lit8 v8, v8, 0x1

    :cond_b5
    add-int/lit8 v7, v7, -0x1

    goto :goto_a2

    :cond_b8
    invoke-static {v6, v7, v1}, Ln4/b;->f(IILjava/lang/String;)I

    move-result v8

    move v10, v6

    move v11, v10

    :goto_be
    iget-object v12, v0, Ln4/b;->c:[B

    if-ge v8, v7, :cond_12b

    add-int/lit8 v13, v8, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    aget-byte v8, v12, v8

    invoke-static {v13, v7, v1}, Ln4/b;->f(IILjava/lang/String;)I

    move-result v13

    add-int/lit8 v14, v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    aget-byte v13, v12, v13

    invoke-static {v14, v7, v1}, Ln4/b;->f(IILjava/lang/String;)I

    move-result v14

    add-int/lit8 v15, v14, 0x1

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    aget-byte v14, v12, v14

    invoke-static {v15, v7, v1}, Ln4/b;->f(IILjava/lang/String;)I

    move-result v15

    move/from16 v16, v9

    add-int/lit8 v9, v15, 0x1

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    aget-byte v12, v12, v15

    or-int v15, v8, v13

    or-int/2addr v15, v14

    or-int/2addr v15, v12

    if-ltz v15, :cond_123

    add-int/lit8 v15, v10, 0x1

    shl-int/lit8 v8, v8, 0x2

    shr-int/lit8 v17, v13, 0x4

    or-int v8, v8, v17

    int-to-byte v8, v8

    aput-byte v8, v4, v10

    add-int/lit8 v8, v10, 0x2

    shl-int/lit8 v13, v13, 0x4

    shr-int/lit8 v17, v14, 0x2

    or-int v13, v13, v17

    int-to-byte v13, v13

    aput-byte v13, v4, v15

    add-int/lit8 v10, v10, 0x3

    shl-int/lit8 v13, v14, 0x6

    or-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, v4, v8

    add-int/lit8 v11, v11, 0x3

    if-ne v10, v3, :cond_11c

    invoke-virtual {v2, v4}, Ljava/io/OutputStream;->write([B)V

    move v10, v6

    :cond_11c
    invoke-static {v9, v7, v1}, Ln4/b;->f(IILjava/lang/String;)I

    move-result v8

    move/from16 v9, v16

    goto :goto_be

    :cond_123
    new-instance v0, Ljava/io/IOException;

    const-string v1, "invalid characters encountered in base64 data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12b
    move/from16 v16, v9

    if-lez v10, :cond_132

    invoke-virtual {v2, v4, v6, v10}, Ljava/io/OutputStream;->write([BII)V

    :cond_132
    invoke-static {v8, v5, v1}, Ln4/b;->f(IILjava/lang/String;)I

    move-result v0

    add-int/lit8 v3, v0, 0x1

    invoke-static {v3, v5, v1}, Ln4/b;->f(IILjava/lang/String;)I

    move-result v3

    add-int/lit8 v4, v3, 0x1

    invoke-static {v4, v5, v1}, Ln4/b;->f(IILjava/lang/String;)I

    move-result v4

    add-int/lit8 v6, v4, 0x1

    invoke-static {v6, v5, v1}, Ln4/b;->f(IILjava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v5, 0x2

    const-string v6, "invalid characters encountered at end of base64 data"

    const/16 v7, 0x3d

    if-ne v4, v7, :cond_17e

    if-ne v1, v7, :cond_178

    aget-byte v0, v12, v0

    aget-byte v1, v12, v3

    or-int v3, v0, v1

    if-ltz v3, :cond_172

    shl-int/2addr v0, v5

    shr-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write(I)V

    const/4 v5, 0x1

    goto :goto_1c5

    :cond_172
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_178
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17e
    if-ne v1, v7, :cond_1a1

    aget-byte v0, v12, v0

    aget-byte v1, v12, v3

    aget-byte v3, v12, v4

    or-int v4, v0, v1

    or-int/2addr v4, v3

    if-ltz v4, :cond_19b

    shl-int/2addr v0, v5

    shr-int/lit8 v4, v1, 0x4

    or-int/2addr v0, v4

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v0, v1, 0x4

    shr-int/lit8 v1, v3, 0x2

    or-int/2addr v0, v1

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1c5

    :cond_19b
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a1
    aget-byte v0, v12, v0

    aget-byte v3, v12, v3

    aget-byte v4, v12, v4

    aget-byte v1, v12, v1

    or-int v7, v0, v3

    or-int/2addr v7, v4

    or-int/2addr v7, v1

    if-ltz v7, :cond_1c8

    shl-int/2addr v0, v5

    shr-int/lit8 v5, v3, 0x4

    or-int/2addr v0, v5

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v0, v3, 0x4

    shr-int/lit8 v3, v4, 0x2

    or-int/2addr v0, v3

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v0, v4, 0x6

    or-int/2addr v0, v1

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write(I)V

    const/4 v5, 0x3

    :goto_1c5
    add-int v6, v11, v5

    :goto_1c7
    return v6

    :cond_1c8
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_1ce
    .packed-switch 0x0
        :pswitch_81
    .end packed-switch
.end method

.method public b(IILjava/lang/String;)[B
    .registers 9

    if-eqz p3, :cond_4e

    if-ltz p1, :cond_46

    if-ltz p2, :cond_46

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p2

    if-gt p1, v0, :cond_46

    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_3e

    ushr-int/lit8 p2, p2, 0x1

    new-array v0, p2, [B

    const/4 v1, 0x0

    :goto_16
    if-ge v1, p2, :cond_3d

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p3, p1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iget-object v4, p0, Ln4/b;->c:[B

    aget-byte v3, v4, v3

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aget-byte v2, v4, v2

    shl-int/lit8 v3, v3, 0x4

    or-int/2addr v2, v3

    if-ltz v2, :cond_35

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_35
    new-instance p0, Ljava/io/IOException;

    const-string p1, "invalid characters encountered in Hex string"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3d
    return-object v0

    :cond_3e
    new-instance p0, Ljava/io/IOException;

    const-string p1, "a hexadecimal encoding must have an even number of characters"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_46
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "invalid offset and/or length specified"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4e
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'str\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public c([BIILjava/io/ByteArrayOutputStream;)I
    .registers 24

    const/4 v0, 0x0

    if-gez p3, :cond_4

    return v0

    :cond_4
    const/16 v1, 0x48

    new-array v1, v1, [B

    move/from16 v2, p3

    move v3, v0

    :goto_b
    const/4 v4, 0x2

    if-lez v2, :cond_c2

    const/16 v5, 0x36

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int v6, v3, v5

    add-int/lit8 v7, v6, -0x2

    move-object/from16 v8, p0

    move v10, v0

    move v9, v3

    :goto_1c
    iget-object v11, v8, Ln4/b;->b:[B

    if-ge v9, v7, :cond_5d

    add-int/lit8 v12, v9, 0x1

    aget-byte v13, p1, v9

    add-int/lit8 v14, v9, 0x2

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    add-int/lit8 v9, v9, 0x3

    aget-byte v14, p1, v14

    and-int/lit16 v15, v14, 0xff

    add-int/lit8 v16, v10, 0x1

    ushr-int/lit8 v17, v13, 0x2

    and-int/lit8 v17, v17, 0x3f

    aget-byte v17, v11, v17

    aput-byte v17, v1, v10

    add-int/lit8 v17, v10, 0x2

    shl-int/lit8 v13, v13, 0x4

    ushr-int/lit8 v18, v12, 0x4

    or-int v13, v13, v18

    and-int/lit8 v13, v13, 0x3f

    aget-byte v13, v11, v13

    aput-byte v13, v1, v16

    add-int/lit8 v13, v10, 0x3

    shl-int/2addr v12, v4

    ushr-int/lit8 v15, v15, 0x6

    or-int/2addr v12, v15

    and-int/lit8 v12, v12, 0x3f

    aget-byte v12, v11, v12

    aput-byte v12, v1, v17

    add-int/lit8 v10, v10, 0x4

    and-int/lit8 v12, v14, 0x3f

    aget-byte v11, v11, v12

    aput-byte v11, v1, v13

    goto :goto_1c

    :cond_5d
    sub-int v3, v9, v3

    sub-int v3, v5, v3

    const/16 v7, 0x3d

    const/4 v12, 0x1

    if-eq v3, v12, :cond_9a

    if-eq v3, v4, :cond_6b

    :goto_68
    move-object/from16 v3, p4

    goto :goto_bb

    :cond_6b
    add-int/lit8 v3, v9, 0x1

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v12, v10, 0x1

    ushr-int/lit8 v13, v9, 0x2

    and-int/lit8 v13, v13, 0x3f

    aget-byte v13, v11, v13

    aput-byte v13, v1, v10

    add-int/lit8 v13, v10, 0x2

    shl-int/lit8 v9, v9, 0x4

    ushr-int/lit8 v14, v3, 0x4

    or-int/2addr v9, v14

    and-int/lit8 v9, v9, 0x3f

    aget-byte v9, v11, v9

    aput-byte v9, v1, v12

    add-int/lit8 v9, v10, 0x3

    shl-int/2addr v3, v4

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v11, v3

    aput-byte v3, v1, v13

    add-int/lit8 v10, v10, 0x4

    aput-byte v7, v1, v9

    goto :goto_68

    :cond_9a
    aget-byte v3, p1, v9

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v10, 0x1

    ushr-int/lit8 v9, v3, 0x2

    and-int/lit8 v9, v9, 0x3f

    aget-byte v9, v11, v9

    aput-byte v9, v1, v10

    add-int/lit8 v9, v10, 0x2

    shl-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v11, v3

    aput-byte v3, v1, v4

    add-int/lit8 v3, v10, 0x3

    aput-byte v7, v1, v9

    add-int/lit8 v10, v10, 0x4

    aput-byte v7, v1, v3

    goto :goto_68

    :goto_bb
    invoke-virtual {v3, v1, v0, v10}, Ljava/io/OutputStream;->write([BII)V

    sub-int/2addr v2, v5

    move v3, v6

    goto/16 :goto_b

    :cond_c2
    add-int/lit8 v0, p3, 0x2

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    return v0
.end method
