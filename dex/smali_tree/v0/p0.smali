.class public Lv0/p0;
.super Lv0/n0;


# static fields
.field public static final r:[B

.field public static final s:[B

.field public static final t:[B

.field public static final u:[B


# instance fields
.field public q:[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x10

    new-array v1, v0, [B

    fill-array-data v1, :array_20

    sput-object v1, Lv0/p0;->r:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_2c

    sput-object v1, Lv0/p0;->s:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_38

    sput-object v1, Lv0/p0;->t:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_44

    sput-object v0, Lv0/p0;->u:[B

    return-void

    nop

    :array_20
    .array-data 1
        0x22t
        0x2ft
        0x24t
        0x2at
        0x6dt
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x52t
        0x10t
        0x30t
    .end array-data

    :array_2c
    .array-data 1
        0x22t
        0x2ft
        0x25t
        0x2at
        0x6dt
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x52t
        0x10t
        0x30t
    .end array-data

    :array_38
    .array-data 1
        0x23t
        0x2ft
        0x24t
        0x2at
        0x6dt
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x52t
        0x10t
        0x30t
    .end array-data

    :array_44
    .array-data 1
        0x23t
        0x2ft
        0x25t
        0x2at
        0x6dt
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x52t
        0x10t
        0x30t
    .end array-data
.end method

.method public static o(BBBB)I
    .registers 4

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x17

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p0, p1

    and-int/lit16 p1, p2, 0xff

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    and-int/lit16 p1, p3, 0xff

    or-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public a()Lm4/e;
    .registers 2

    new-instance v0, Lv0/p0;

    invoke-direct {v0, p0}, Lv0/n0;-><init>(Lv0/n0;)V

    return-object v0
.end method

.method public final c(Lm4/e;)V
    .registers 3

    move-object v0, p1

    check-cast v0, Lv0/p0;

    invoke-super {p0, p1}, Lv0/n0;->c(Lm4/e;)V

    iget-object p1, v0, Lv0/p0;->q:[B

    iput-object p1, p0, Lv0/p0;->q:[B

    return-void
.end method

.method public final getAlgorithmName()Ljava/lang/String;
    .registers 1

    const-string p0, "Zuc-256"

    return-object p0
.end method

.method public final l()I
    .registers 1

    const/16 p0, 0x271

    return p0
.end method

.method public final n([I[B[B)V
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    if-eqz v1, :cond_19b

    array-length v3, v1

    const/16 v4, 0x20

    if-ne v3, v4, :cond_19b

    if-eqz v2, :cond_193

    array-length v3, v2

    const/16 v4, 0x19

    if-ne v3, v4, :cond_193

    const/4 v3, 0x0

    aget-byte v5, v1, v3

    iget-object v6, v0, Lv0/p0;->q:[B

    aget-byte v6, v6, v3

    const/16 v7, 0x15

    aget-byte v8, v1, v7

    const/16 v9, 0x10

    aget-byte v10, v1, v9

    invoke-static {v5, v6, v8, v10}, Lv0/p0;->o(BBBB)I

    move-result v5

    aput v5, p1, v3

    const/4 v5, 0x1

    aget-byte v6, v1, v5

    iget-object v8, v0, Lv0/p0;->q:[B

    aget-byte v8, v8, v5

    const/16 v10, 0x16

    aget-byte v11, v1, v10

    const/16 v12, 0x11

    aget-byte v13, v1, v12

    invoke-static {v6, v8, v11, v13}, Lv0/p0;->o(BBBB)I

    move-result v6

    aput v6, p1, v5

    const/4 v6, 0x2

    aget-byte v8, v1, v6

    iget-object v11, v0, Lv0/p0;->q:[B

    aget-byte v11, v11, v6

    const/16 v13, 0x17

    aget-byte v14, v1, v13

    const/16 v15, 0x12

    move/from16 v16, v3

    aget-byte v3, v1, v15

    invoke-static {v8, v11, v14, v3}, Lv0/p0;->o(BBBB)I

    move-result v3

    aput v3, p1, v6

    const/4 v3, 0x3

    aget-byte v8, v1, v3

    iget-object v11, v0, Lv0/p0;->q:[B

    aget-byte v11, v11, v3

    const/16 v14, 0x18

    move/from16 v17, v3

    aget-byte v3, v1, v14

    const/16 v18, 0x13

    move/from16 v19, v4

    aget-byte v4, v1, v18

    invoke-static {v8, v11, v3, v4}, Lv0/p0;->o(BBBB)I

    move-result v3

    aput v3, p1, v17

    const/4 v3, 0x4

    aget-byte v4, v1, v3

    iget-object v8, v0, Lv0/p0;->q:[B

    aget-byte v8, v8, v3

    aget-byte v11, v1, v19

    const/16 v19, 0x14

    move/from16 v20, v3

    aget-byte v3, v1, v19

    invoke-static {v4, v8, v11, v3}, Lv0/p0;->o(BBBB)I

    move-result v3

    aput v3, p1, v20

    aget-byte v3, v2, v16

    iget-object v4, v0, Lv0/p0;->q:[B

    const/4 v8, 0x5

    aget-byte v4, v4, v8

    aget-byte v11, v2, v12

    and-int/lit8 v11, v11, 0x3f

    or-int/2addr v4, v11

    int-to-byte v4, v4

    aget-byte v11, v1, v8

    const/16 v12, 0x1a

    aget-byte v12, v1, v12

    invoke-static {v3, v4, v11, v12}, Lv0/p0;->o(BBBB)I

    move-result v3

    aput v3, p1, v8

    aget-byte v3, v2, v5

    iget-object v4, v0, Lv0/p0;->q:[B

    const/4 v5, 0x6

    aget-byte v4, v4, v5

    aget-byte v11, v2, v15

    and-int/lit8 v11, v11, 0x3f

    or-int/2addr v4, v11

    int-to-byte v4, v4

    aget-byte v11, v1, v5

    const/16 v12, 0x1b

    aget-byte v12, v1, v12

    invoke-static {v3, v4, v11, v12}, Lv0/p0;->o(BBBB)I

    move-result v3

    aput v3, p1, v5

    const/16 v3, 0xa

    aget-byte v4, v2, v3

    iget-object v11, v0, Lv0/p0;->q:[B

    const/4 v12, 0x7

    aget-byte v11, v11, v12

    aget-byte v15, v2, v18

    and-int/lit8 v15, v15, 0x3f

    or-int/2addr v11, v15

    int-to-byte v11, v11

    aget-byte v15, v1, v12

    aget-byte v6, v2, v6

    invoke-static {v4, v11, v15, v6}, Lv0/p0;->o(BBBB)I

    move-result v4

    aput v4, p1, v12

    const/16 v4, 0x8

    aget-byte v6, v1, v4

    iget-object v11, v0, Lv0/p0;->q:[B

    aget-byte v11, v11, v4

    aget-byte v15, v2, v19

    and-int/lit8 v15, v15, 0x3f

    or-int/2addr v11, v15

    int-to-byte v11, v11

    aget-byte v15, v2, v17

    const/16 v16, 0xb

    move/from16 v17, v3

    aget-byte v3, v2, v16

    invoke-static {v6, v11, v15, v3}, Lv0/p0;->o(BBBB)I

    move-result v3

    aput v3, p1, v4

    const/16 v3, 0x9

    aget-byte v6, v1, v3

    iget-object v11, v0, Lv0/p0;->q:[B

    aget-byte v11, v11, v3

    aget-byte v7, v2, v7

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v7, v11

    int-to-byte v7, v7

    const/16 v11, 0xc

    aget-byte v15, v2, v11

    move/from16 v18, v3

    aget-byte v3, v2, v20

    invoke-static {v6, v7, v15, v3}, Lv0/p0;->o(BBBB)I

    move-result v3

    aput v3, p1, v18

    aget-byte v3, v2, v8

    iget-object v6, v0, Lv0/p0;->q:[B

    aget-byte v6, v6, v17

    aget-byte v7, v2, v10

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aget-byte v7, v1, v17

    const/16 v8, 0x1c

    aget-byte v8, v1, v8

    invoke-static {v3, v6, v7, v8}, Lv0/p0;->o(BBBB)I

    move-result v3

    aput v3, p1, v17

    aget-byte v3, v1, v16

    iget-object v6, v0, Lv0/p0;->q:[B

    aget-byte v6, v6, v16

    aget-byte v7, v2, v13

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aget-byte v5, v2, v5

    const/16 v7, 0xd

    aget-byte v8, v2, v7

    invoke-static {v3, v6, v5, v8}, Lv0/p0;->o(BBBB)I

    move-result v3

    aput v3, p1, v16

    aget-byte v3, v1, v11

    iget-object v5, v0, Lv0/p0;->q:[B

    aget-byte v5, v5, v11

    aget-byte v6, v2, v14

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aget-byte v6, v2, v12

    const/16 v8, 0xe

    aget-byte v10, v2, v8

    invoke-static {v3, v5, v6, v10}, Lv0/p0;->o(BBBB)I

    move-result v3

    aput v3, p1, v11

    aget-byte v3, v1, v7

    iget-object v5, v0, Lv0/p0;->q:[B

    aget-byte v5, v5, v7

    const/16 v6, 0xf

    aget-byte v10, v2, v6

    aget-byte v4, v2, v4

    invoke-static {v3, v5, v10, v4}, Lv0/p0;->o(BBBB)I

    move-result v3

    aput v3, p1, v7

    aget-byte v3, v1, v8

    iget-object v4, v0, Lv0/p0;->q:[B

    aget-byte v4, v4, v8

    const/16 v5, 0x1f

    aget-byte v7, v1, v5

    ushr-int/lit8 v7, v7, 0x4

    and-int/2addr v7, v6

    or-int/2addr v4, v7

    int-to-byte v4, v4

    aget-byte v7, v2, v9

    aget-byte v2, v2, v18

    invoke-static {v3, v4, v7, v2}, Lv0/p0;->o(BBBB)I

    move-result v2

    aput v2, p1, v8

    aget-byte v2, v1, v6

    iget-object v0, v0, Lv0/p0;->q:[B

    aget-byte v0, v0, v6

    aget-byte v3, v1, v5

    and-int/2addr v3, v6

    or-int/2addr v0, v3

    int-to-byte v0, v0

    const/16 v3, 0x1e

    aget-byte v3, v1, v3

    const/16 v4, 0x1d

    aget-byte v1, v1, v4

    invoke-static {v2, v0, v3, v1}, Lv0/p0;->o(BBBB)I

    move-result v0

    aput v0, p1, v6

    return-void

    :cond_193
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "An IV of 25 bytes is needed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A key of 32 bytes is needed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
