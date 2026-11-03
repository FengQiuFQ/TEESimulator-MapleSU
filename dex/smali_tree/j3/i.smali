.class public abstract Lj3/i;
.super Ljava/lang/Object;


# static fields
.field public static final a:[S

.field public static final b:[S


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x80

    new-array v1, v0, [S

    fill-array-data v1, :array_12

    sput-object v1, Lj3/i;->a:[S

    new-array v0, v0, [S

    fill-array-data v0, :array_96

    sput-object v0, Lj3/i;->b:[S

    return-void

    nop

    :array_12
    .array-data 2
        0x8eds
        0xa0bs
        0xb9as
        0x714s
        0x5d5s
        0x58es
        0x11fs
        0xcas
        0xc56s
        0x26es
        0x629s
        0xb6s
        0x3c2s
        0x84fs
        0x73fs
        0x5bcs
        0x23ds
        0x7d4s
        0x108s
        0x17fs
        0x9c4s
        0x5b2s
        0x6bfs
        0xc7fs
        0xa58s
        0x3f9s
        0x2dcs
        0x260s
        0x6fbs
        0x19bs
        0xc34s
        0x6des
        0x4c7s
        0x28cs
        0xad9s
        0x3f7s
        0x7f4s
        0x5d3s
        0xbe7s
        0x6f9s
        0x204s
        0xcf9s
        0xbc1s
        0xa67s
        0x6afs
        0x877s
        0x7es
        0x5bds
        0x9acs
        0xca7s
        0xbf2s
        0x33es
        0x6bs
        0x774s
        0xc0as
        0x94as
        0xb73s
        0x3c1s
        0x71ds
        0xa2cs
        0x1c0s
        0x8d8s
        0x2a5s
        0x806s
        0x8b2s
        0x1aes
        0x22bs
        0x34bs
        0x81es
        0x367s
        0x60es
        0x69s
        0x1a6s
        0x24bs
        0xb1s
        0xc16s
        0xbdes
        0xb35s
        0x626s
        0x675s
        0xc0bs
        0x30as
        0x487s
        0xc6es
        0x9f8s
        0x5cbs
        0xaa7s
        0x45fs
        0x6cbs
        0x284s
        0x999s
        0x15ds
        0x1a2s
        0x149s
        0xc65s
        0xcb6s
        0x331s
        0x449s
        0x25bs
        0x262s
        0x52as
        0x7fcs
        0x748s
        0x180s
        0x842s
        0xc79s
        0x4c2s
        0x7cas
        0x997s
        0xdcs
        0x85es
        0x686s
        0x860s
        0x707s
        0x803s
        0x31as
        0x71bs
        0x9abs
        0x99bs
        0x1des
        0xc95s
        0xbcds
        0x3e4s
        0x3dfs
        0x3bes
        0x74ds
        0x5f2s
        0x65cs
    .end array-data

    :array_96
    .array-data 2
        0x6a5s
        0x70fs
        0x5b4s
        0x943s
        0x922s
        0x91ds
        0x134s
        0x6cs
        0xb23s
        0x366s
        0x356s
        0x5e6s
        0x9e7s
        0x4fes
        0x5fas
        0x4a1s
        0x67bs
        0x4a3s
        0xc25s
        0x36as
        0x537s
        0x83fs
        0x88s
        0x4bfs
        0xb81s
        0x5b9s
        0x505s
        0x7d7s
        0xa9fs
        0xaa6s
        0x8b8s
        0x9d0s
        0x4bs
        0x9cs
        0xbb8s
        0xb5fs
        0xba4s
        0x368s
        0xa7ds
        0x636s
        0x8a2s
        0x25as
        0x736s
        0x309s
        0x93s
        0x87as
        0x9f7s
        0xf6s
        0x68cs
        0x6dbs
        0x1ccs
        0x123s
        0xebs
        0xc50s
        0xab6s
        0xb5bs
        0xc98s
        0x6f3s
        0x99as
        0x4e3s
        0x9b6s
        0xad6s
        0xb53s
        0x44fs
        0x4fbs
        0xa5cs
        0x429s
        0xb41s
        0x2d5s
        0x5e4s
        0x940s
        0x18es
        0x3b7s
        0xf7s
        0x58ds
        0xc96s
        0x9c3s
        0x10fs
        0x5as
        0x355s
        0x744s
        0xc83s
        0x48as
        0x652s
        0x29as
        0x140s
        0x8s
        0xafds
        0x608s
        0x11as
        0x72es
        0x50ds
        0x90as
        0x228s
        0xa75s
        0x83as
        0x623s
        0xcds
        0xb66s
        0x606s
        0xaa1s
        0xa25s
        0x908s
        0x2a9s
        0x82s
        0x642s
        0x74fs
        0x33ds
        0xb82s
        0xbf9s
        0x52ds
        0xac4s
        0x745s
        0x5c2s
        0x4b2s
        0x93fs
        0xc4bs
        0x6d8s
        0xa93s
        0xabs
        0xc37s
        0xbe2s
        0x773s
        0x72cs
        0x5eds
        0x167s
        0x2f6s
        0x5a1s
    .end array-data
.end method

.method public static a(Lj3/j;ISSSSS)V
    .registers 8

    mul-int v0, p3, p5

    invoke-static {v0}, Lj3/i;->c(I)S

    move-result v0

    mul-int/2addr v0, p6

    invoke-static {v0}, Lj3/i;->c(I)S

    move-result p6

    mul-int v0, p2, p4

    invoke-static {v0}, Lj3/i;->c(I)S

    move-result v0

    add-int/2addr v0, p6

    int-to-short p6, v0

    iget-object v0, p0, Lj3/j;->d:Ljava/lang/Object;

    check-cast v0, [S

    aput-short p6, v0, p1

    mul-int/2addr p2, p5

    invoke-static {p2}, Lj3/i;->c(I)S

    move-result p2

    mul-int/2addr p3, p4

    invoke-static {p3}, Lj3/i;->c(I)S

    move-result p3

    add-int/2addr p3, p2

    int-to-short p2, p3

    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lj3/j;->d:Ljava/lang/Object;

    check-cast p0, [S

    aput-short p2, p0, p1

    return-void
.end method

.method public static b(Lj3/j;[BI)V
    .registers 21

    move-object/from16 v0, p0

    move/from16 v1, p2

    const/16 v2, 0x10

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x3

    if-eq v1, v6, :cond_62

    move v7, v4

    :goto_e
    const/16 v8, 0x20

    if-ge v7, v8, :cond_b2

    mul-int/lit8 v8, v7, 0x4

    aget-byte v9, p1, v8

    and-int/lit16 v9, v9, 0xff

    int-to-long v9, v9

    add-int/lit8 v11, v8, 0x1

    aget-byte v11, p1, v11

    and-int/lit16 v11, v11, 0xff

    int-to-long v11, v11

    shl-long/2addr v11, v3

    or-long/2addr v9, v11

    add-int/lit8 v11, v8, 0x2

    aget-byte v11, p1, v11

    and-int/lit16 v11, v11, 0xff

    int-to-long v11, v11

    shl-long/2addr v11, v2

    or-long/2addr v9, v11

    add-int/2addr v8, v6

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v11, v8

    const/16 v8, 0x18

    shl-long/2addr v11, v8

    or-long v8, v9, v11

    const-wide/32 v10, 0x55555555

    and-long v12, v8, v10

    shr-long/2addr v8, v5

    and-long/2addr v8, v10

    add-long/2addr v12, v8

    move v8, v4

    :goto_3f
    if-ge v8, v3, :cond_5f

    mul-int/lit8 v9, v8, 0x4

    shr-long v10, v12, v9

    const-wide/16 v14, 0x3

    and-long/2addr v10, v14

    long-to-int v10, v10

    int-to-short v10, v10

    add-int/2addr v9, v1

    shr-long v16, v12, v9

    and-long v14, v16, v14

    long-to-int v9, v14

    int-to-short v9, v9

    mul-int/lit8 v11, v7, 0x8

    add-int/2addr v11, v8

    sub-int/2addr v10, v9

    int-to-short v9, v10

    iget-object v10, v0, Lj3/j;->d:Ljava/lang/Object;

    check-cast v10, [S

    aput-short v9, v10, v11

    add-int/lit8 v8, v8, 0x1

    goto :goto_3f

    :cond_5f
    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    :cond_62
    move v1, v4

    :goto_63
    const/16 v7, 0x40

    if-ge v1, v7, :cond_b2

    mul-int/lit8 v7, v1, 0x3

    aget-byte v8, p1, v7

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    add-int/lit8 v10, v7, 0x1

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    int-to-long v10, v10

    shl-long/2addr v10, v3

    or-long/2addr v8, v10

    const/4 v10, 0x2

    add-int/2addr v7, v10

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    int-to-long v11, v7

    shl-long/2addr v11, v2

    or-long v7, v8, v11

    const-wide/32 v11, 0x249249

    and-long v13, v7, v11

    shr-long v15, v7, v5

    and-long/2addr v15, v11

    add-long/2addr v13, v15

    shr-long/2addr v7, v10

    and-long/2addr v7, v11

    add-long/2addr v13, v7

    move v7, v4

    :goto_8e
    const/4 v8, 0x4

    if-ge v7, v8, :cond_af

    mul-int/lit8 v8, v7, 0x6

    shr-long v9, v13, v8

    const-wide/16 v11, 0x7

    and-long/2addr v9, v11

    long-to-int v9, v9

    int-to-short v9, v9

    add-int/2addr v8, v6

    shr-long v15, v13, v8

    and-long v10, v15, v11

    long-to-int v8, v10

    int-to-short v8, v8

    mul-int/lit8 v10, v1, 0x4

    add-int/2addr v10, v7

    sub-int/2addr v9, v8

    int-to-short v8, v9

    iget-object v9, v0, Lj3/j;->d:Ljava/lang/Object;

    check-cast v9, [S

    aput-short v8, v9, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_8e

    :cond_af
    add-int/lit8 v1, v1, 0x1

    goto :goto_63

    :cond_b2
    return-void
.end method

.method public static c(I)S
    .registers 2

    const v0, 0xf301

    mul-int/2addr v0, p0

    int-to-short v0, v0

    mul-int/lit16 v0, v0, 0xd01

    sub-int/2addr p0, v0

    shr-int/lit8 p0, p0, 0x10

    int-to-short p0, p0

    return p0
.end method
