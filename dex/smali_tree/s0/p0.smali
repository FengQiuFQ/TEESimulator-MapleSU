.class public final Ls0/p0;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/w;
.implements Lm4/e;


# static fields
.field public static final q:[I

.field public static final r:[J

.field public static final s:[J

.field public static final t:[J

.field public static final u:[J

.field public static final v:[J

.field public static final w:[J

.field public static final x:[J

.field public static final y:[J

.field public static final z:[S


# instance fields
.field public final g:[J

.field public final h:Lorg/bouncycastle/crypto/j;

.field public final i:[B

.field public j:I

.field public final k:[S

.field public final l:[J

.field public final m:[J

.field public final n:[J

.field public final o:[J

.field public final p:[J


# direct methods
.method static constructor <clinit>()V
    .registers 14

    const/16 v0, 0x100

    new-array v1, v0, [I

    fill-array-data v1, :array_112

    sput-object v1, Ls0/p0;->q:[I

    new-array v1, v0, [J

    sput-object v1, Ls0/p0;->r:[J

    new-array v1, v0, [J

    sput-object v1, Ls0/p0;->s:[J

    new-array v1, v0, [J

    sput-object v1, Ls0/p0;->t:[J

    new-array v1, v0, [J

    sput-object v1, Ls0/p0;->u:[J

    new-array v1, v0, [J

    sput-object v1, Ls0/p0;->v:[J

    new-array v1, v0, [J

    sput-object v1, Ls0/p0;->w:[J

    new-array v1, v0, [J

    sput-object v1, Ls0/p0;->x:[J

    new-array v1, v0, [J

    sput-object v1, Ls0/p0;->y:[J

    const/16 v1, 0x20

    new-array v1, v1, [S

    sput-object v1, Ls0/p0;->z:[S

    const/16 v2, 0x1f

    const/16 v3, 0x8

    aput-short v3, v1, v2

    const/4 v1, 0x0

    :goto_36
    if-ge v1, v0, :cond_110

    sget-object v2, Ls0/p0;->q:[I

    aget v3, v2, v1

    shl-int/lit8 v2, v3, 0x1

    ushr-int/lit8 v4, v3, 0x7

    neg-int v4, v4

    and-int/lit16 v4, v4, 0x11d

    xor-int/2addr v4, v2

    shl-int/lit8 v2, v4, 0x1

    ushr-int/lit8 v5, v4, 0x7

    neg-int v5, v5

    and-int/lit16 v5, v5, 0x11d

    xor-int/2addr v5, v2

    xor-int v6, v5, v3

    shl-int/lit8 v2, v5, 0x1

    ushr-int/lit8 v7, v5, 0x7

    neg-int v7, v7

    and-int/lit16 v7, v7, 0x11d

    xor-int/2addr v7, v2

    xor-int v8, v7, v3

    sget-object v2, Ls0/p0;->r:[J

    move v9, v4

    move v4, v3

    move v10, v6

    move v6, v3

    move v13, v10

    move v10, v8

    move v8, v13

    invoke-static/range {v3 .. v10}, Ls0/p0;->d(IIIIIIII)J

    move-result-wide v11

    move v4, v5

    move v5, v7

    move v6, v10

    move v10, v8

    aput-wide v11, v2, v1

    sget-object v2, Ls0/p0;->s:[J

    move v5, v3

    move v8, v7

    move v7, v3

    move v13, v4

    move v4, v3

    move v3, v6

    move v6, v13

    move v13, v10

    move v10, v9

    move v9, v13

    invoke-static/range {v3 .. v10}, Ls0/p0;->d(IIIIIIII)J

    move-result-wide v11

    move v5, v6

    move v6, v3

    move v3, v4

    move v4, v5

    move v5, v10

    move v10, v9

    move v9, v5

    move v5, v8

    aput-wide v11, v2, v1

    sget-object v2, Ls0/p0;->t:[J

    move v7, v6

    move v6, v3

    move v8, v3

    move v13, v5

    move v5, v3

    move v3, v9

    move v9, v13

    move v13, v7

    move v7, v4

    move v4, v13

    invoke-static/range {v3 .. v10}, Ls0/p0;->d(IIIIIIII)J

    move-result-wide v11

    move v6, v9

    move v9, v3

    move v3, v5

    move v5, v6

    move v6, v4

    move v4, v7

    aput-wide v11, v2, v1

    sget-object v2, Ls0/p0;->u:[J

    move v7, v3

    move v8, v9

    move v9, v3

    move v13, v6

    move v6, v3

    move v3, v10

    move v10, v5

    move v5, v13

    move v13, v8

    move v8, v4

    move v4, v13

    invoke-static/range {v3 .. v10}, Ls0/p0;->d(IIIIIIII)J

    move-result-wide v11

    move v9, v10

    move v10, v3

    move v3, v6

    move v6, v5

    move v5, v9

    move v9, v4

    move v4, v8

    aput-wide v11, v2, v1

    sget-object v2, Ls0/p0;->v:[J

    move v8, v3

    move v7, v10

    move v10, v3

    move v13, v7

    move v7, v3

    move v3, v5

    move v5, v9

    move v9, v4

    move v4, v13

    invoke-static/range {v3 .. v10}, Ls0/p0;->d(IIIIIIII)J

    move-result-wide v10

    move v13, v5

    move v5, v3

    move v3, v7

    move v7, v4

    move v4, v9

    move v9, v13

    aput-wide v10, v2, v1

    sget-object v2, Ls0/p0;->w:[J

    move v8, v3

    move v10, v9

    move v9, v3

    move v13, v10

    move v10, v4

    move v4, v5

    move v5, v7

    move v7, v6

    move v6, v13

    invoke-static/range {v3 .. v10}, Ls0/p0;->d(IIIIIIII)J

    move-result-wide v8

    move v13, v5

    move v5, v4

    move v4, v10

    move v10, v6

    move v6, v7

    move v7, v13

    aput-wide v8, v2, v1

    sget-object v2, Ls0/p0;->x:[J

    move v9, v3

    move v8, v10

    move v10, v3

    move v13, v4

    move v4, v3

    move v3, v13

    move v13, v8

    move v8, v6

    move v6, v7

    move v7, v13

    invoke-static/range {v3 .. v10}, Ls0/p0;->d(IIIIIIII)J

    move-result-wide v9

    move v13, v4

    move v4, v3

    move v3, v13

    move v13, v7

    move v7, v6

    move v6, v8

    move v8, v13

    aput-wide v9, v2, v1

    sget-object v2, Ls0/p0;->y:[J

    move v9, v5

    move v5, v3

    move v10, v3

    move v13, v9

    move v9, v6

    move v6, v13

    invoke-static/range {v3 .. v10}, Ls0/p0;->d(IIIIIIII)J

    move-result-wide v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_36

    :cond_110
    return-void

    nop

    :array_112
    .array-data 4
        0x18
        0x23
        0xc6
        0xe8
        0x87
        0xb8
        0x1
        0x4f
        0x36
        0xa6
        0xd2
        0xf5
        0x79
        0x6f
        0x91
        0x52
        0x60
        0xbc
        0x9b
        0x8e
        0xa3
        0xc
        0x7b
        0x35
        0x1d
        0xe0
        0xd7
        0xc2
        0x2e
        0x4b
        0xfe
        0x57
        0x15
        0x77
        0x37
        0xe5
        0x9f
        0xf0
        0x4a
        0xda
        0x58
        0xc9
        0x29
        0xa
        0xb1
        0xa0
        0x6b
        0x85
        0xbd
        0x5d
        0x10
        0xf4
        0xcb
        0x3e
        0x5
        0x67
        0xe4
        0x27
        0x41
        0x8b
        0xa7
        0x7d
        0x95
        0xd8
        0xfb
        0xee
        0x7c
        0x66
        0xdd
        0x17
        0x47
        0x9e
        0xca
        0x2d
        0xbf
        0x7
        0xad
        0x5a
        0x83
        0x33
        0x63
        0x2
        0xaa
        0x71
        0xc8
        0x19
        0x49
        0xd9
        0xf2
        0xe3
        0x5b
        0x88
        0x9a
        0x26
        0x32
        0xb0
        0xe9
        0xf
        0xd5
        0x80
        0xbe
        0xcd
        0x34
        0x48
        0xff
        0x7a
        0x90
        0x5f
        0x20
        0x68
        0x1a
        0xae
        0xb4
        0x54
        0x93
        0x22
        0x64
        0xf1
        0x73
        0x12
        0x40
        0x8
        0xc3
        0xec
        0xdb
        0xa1
        0x8d
        0x3d
        0x97
        0x0
        0xcf
        0x2b
        0x76
        0x82
        0xd6
        0x1b
        0xb5
        0xaf
        0x6a
        0x50
        0x45
        0xf3
        0x30
        0xef
        0x3f
        0x55
        0xa2
        0xea
        0x65
        0xba
        0x2f
        0xc0
        0xde
        0x1c
        0xfd
        0x4d
        0x92
        0x75
        0x6
        0x8a
        0xb2
        0xe6
        0xe
        0x1f
        0x62
        0xd4
        0xa8
        0x96
        0xf9
        0xc5
        0x25
        0x59
        0x84
        0x72
        0x39
        0x4c
        0x5e
        0x78
        0x38
        0x8c
        0xd1
        0xa5
        0xe2
        0x61
        0xb3
        0x21
        0x9c
        0x1e
        0x43
        0xc7
        0xfc
        0x4
        0x51
        0x99
        0x6d
        0xd
        0xfa
        0xdf
        0x7e
        0x24
        0x3b
        0xab
        0xce
        0x11
        0x8f
        0x4e
        0xb7
        0xeb
        0x3c
        0x81
        0x94
        0xf7
        0xb9
        0x13
        0x2c
        0xd3
        0xe7
        0x6e
        0xc4
        0x3
        0x56
        0x44
        0x7f
        0xa9
        0x2a
        0xbb
        0xc1
        0x53
        0xdc
        0xb
        0x9d
        0x6c
        0x31
        0x74
        0xf6
        0x46
        0xac
        0x89
        0x14
        0xe1
        0x16
        0x3a
        0x69
        0x9
        0x70
        0xb6
        0xd0
        0xed
        0xcc
        0x42
        0x98
        0xa4
        0x28
        0x5c
        0xf8
        0x86
    .end array-data
.end method

.method public constructor <init>()V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xb

    new-array v0, v0, [J

    iput-object v0, p0, Ls0/p0;->g:[J

    const/16 v1, 0x40

    new-array v1, v1, [B

    iput-object v1, p0, Ls0/p0;->i:[B

    const/4 v1, 0x0

    iput v1, p0, Ls0/p0;->j:I

    const/16 v2, 0x20

    new-array v2, v2, [S

    iput-object v2, p0, Ls0/p0;->k:[S

    const/16 v2, 0x8

    new-array v3, v2, [J

    iput-object v3, p0, Ls0/p0;->l:[J

    new-array v3, v2, [J

    iput-object v3, p0, Ls0/p0;->m:[J

    new-array v3, v2, [J

    iput-object v3, p0, Ls0/p0;->n:[J

    new-array v3, v2, [J

    iput-object v3, p0, Ls0/p0;->o:[J

    new-array v3, v2, [J

    iput-object v3, p0, Ls0/p0;->p:[J

    const-wide/16 v3, 0x0

    aput-wide v3, v0, v1

    const/4 v0, 0x1

    :goto_33
    const/16 v1, 0xa

    if-gt v0, v1, :cond_99

    add-int/lit8 v1, v0, -0x1

    mul-int/2addr v1, v2

    iget-object v3, p0, Ls0/p0;->g:[J

    sget-object v4, Ls0/p0;->r:[J

    aget-wide v4, v4, v1

    const-wide/high16 v6, -0x100000000000000L

    and-long/2addr v4, v6

    add-int/lit8 v6, v1, 0x1

    sget-object v7, Ls0/p0;->s:[J

    aget-wide v6, v7, v6

    const-wide/high16 v8, 0xff000000000000L

    and-long/2addr v6, v8

    xor-long/2addr v4, v6

    add-int/lit8 v6, v1, 0x2

    sget-object v7, Ls0/p0;->t:[J

    aget-wide v6, v7, v6

    const-wide v8, 0xff0000000000L

    and-long/2addr v6, v8

    xor-long/2addr v4, v6

    add-int/lit8 v6, v1, 0x3

    sget-object v7, Ls0/p0;->u:[J

    aget-wide v6, v7, v6

    const-wide v8, 0xff00000000L

    and-long/2addr v6, v8

    xor-long/2addr v4, v6

    add-int/lit8 v6, v1, 0x4

    sget-object v7, Ls0/p0;->v:[J

    aget-wide v6, v7, v6

    const-wide v8, 0xff000000L

    and-long/2addr v6, v8

    xor-long/2addr v4, v6

    add-int/lit8 v6, v1, 0x5

    sget-object v7, Ls0/p0;->w:[J

    aget-wide v6, v7, v6

    const-wide/32 v8, 0xff0000

    and-long/2addr v6, v8

    xor-long/2addr v4, v6

    add-int/lit8 v6, v1, 0x6

    sget-object v7, Ls0/p0;->x:[J

    aget-wide v6, v7, v6

    const-wide/32 v8, 0xff00

    and-long/2addr v6, v8

    xor-long/2addr v4, v6

    add-int/lit8 v1, v1, 0x7

    sget-object v6, Ls0/p0;->y:[J

    aget-wide v6, v6, v1

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    xor-long/2addr v4, v6

    aput-wide v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    :cond_99
    sget-object v0, Lorg/bouncycastle/crypto/j;->d:Lorg/bouncycastle/crypto/j;

    iput-object v0, p0, Ls0/p0;->h:Lorg/bouncycastle/crypto/j;

    invoke-static {p0}, Ls0/o0;->a(Lorg/bouncycastle/crypto/v;)Lr0/a;

    invoke-static {}, Lorg/bouncycastle/crypto/o;->a()V

    return-void
.end method

.method public constructor <init>(Ls0/p0;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xb

    new-array v0, v0, [J

    iput-object v0, p0, Ls0/p0;->g:[J

    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Ls0/p0;->i:[B

    const/4 v0, 0x0

    iput v0, p0, Ls0/p0;->j:I

    const/16 v0, 0x20

    new-array v0, v0, [S

    iput-object v0, p0, Ls0/p0;->k:[S

    const/16 v0, 0x8

    new-array v1, v0, [J

    iput-object v1, p0, Ls0/p0;->l:[J

    new-array v1, v0, [J

    iput-object v1, p0, Ls0/p0;->m:[J

    new-array v1, v0, [J

    iput-object v1, p0, Ls0/p0;->n:[J

    new-array v1, v0, [J

    iput-object v1, p0, Ls0/p0;->o:[J

    new-array v0, v0, [J

    iput-object v0, p0, Ls0/p0;->p:[J

    iget-object v0, p1, Ls0/p0;->h:Lorg/bouncycastle/crypto/j;

    iput-object v0, p0, Ls0/p0;->h:Lorg/bouncycastle/crypto/j;

    invoke-virtual {p0, p1}, Ls0/p0;->c(Lm4/e;)V

    invoke-static {p0}, Ls0/o0;->a(Lorg/bouncycastle/crypto/v;)Lr0/a;

    invoke-static {}, Lorg/bouncycastle/crypto/o;->a()V

    return-void
.end method

.method public static d(IIIIIIII)J
    .registers 11

    int-to-long v0, p0

    const/16 p0, 0x38

    shl-long/2addr v0, p0

    int-to-long p0, p1

    const/16 v2, 0x30

    shl-long/2addr p0, v2

    xor-long/2addr p0, v0

    int-to-long v0, p2

    const/16 p2, 0x28

    shl-long/2addr v0, p2

    xor-long/2addr p0, v0

    int-to-long p2, p3

    const/16 v0, 0x20

    shl-long/2addr p2, v0

    xor-long/2addr p0, p2

    int-to-long p2, p4

    const/16 p4, 0x18

    shl-long/2addr p2, p4

    xor-long/2addr p0, p2

    int-to-long p2, p5

    const/16 p4, 0x10

    shl-long/2addr p2, p4

    xor-long/2addr p0, p2

    int-to-long p2, p6

    const/16 p4, 0x8

    shl-long/2addr p2, p4

    xor-long/2addr p0, p2

    int-to-long p2, p7

    xor-long/2addr p0, p2

    return-wide p0
.end method


# virtual methods
.method public final a()Lm4/e;
    .registers 2

    new-instance v0, Ls0/p0;

    invoke-direct {v0, p0}, Ls0/p0;-><init>(Ls0/p0;)V

    return-object v0
.end method

.method public final c(Lm4/e;)V
    .registers 6

    check-cast p1, Ls0/p0;

    iget-object v0, p1, Ls0/p0;->g:[J

    iget-object v1, p0, Ls0/p0;->g:[J

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Ls0/p0;->i:[B

    iget-object v1, p0, Ls0/p0;->i:[B

    array-length v2, v1

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Ls0/p0;->j:I

    iput v0, p0, Ls0/p0;->j:I

    iget-object v0, p1, Ls0/p0;->k:[S

    iget-object v1, p0, Ls0/p0;->k:[S

    array-length v2, v1

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Ls0/p0;->l:[J

    iget-object v1, p0, Ls0/p0;->l:[J

    array-length v2, v1

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Ls0/p0;->m:[J

    iget-object v1, p0, Ls0/p0;->m:[J

    array-length v2, v1

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Ls0/p0;->n:[J

    iget-object v1, p0, Ls0/p0;->n:[J

    array-length v2, v1

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Ls0/p0;->o:[J

    iget-object v1, p0, Ls0/p0;->o:[J

    array-length v2, v1

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p1, Ls0/p0;->p:[J

    iget-object p0, p0, Ls0/p0;->p:[J

    array-length v0, p0

    invoke-static {p1, v3, p0, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final doFinal([BI)I
    .registers 9

    const/16 v0, 0x20

    new-array v1, v0, [B

    const/4 v2, 0x0

    move v3, v2

    :goto_6
    if-ge v3, v0, :cond_14

    iget-object v4, p0, Ls0/p0;->k:[S

    aget-short v4, v4, v3

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_14
    iget v3, p0, Ls0/p0;->j:I

    iget-object v4, p0, Ls0/p0;->i:[B

    aget-byte v5, v4, v3

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ls0/p0;->j:I

    array-length v5, v4

    if-ne v3, v5, :cond_29

    invoke-virtual {p0}, Ls0/p0;->e()V

    :cond_29
    iget v3, p0, Ls0/p0;->j:I

    if-le v3, v0, :cond_35

    :goto_2d
    iget v3, p0, Ls0/p0;->j:I

    if-eqz v3, :cond_35

    invoke-virtual {p0, v2}, Ls0/p0;->update(B)V

    goto :goto_2d

    :cond_35
    :goto_35
    iget v3, p0, Ls0/p0;->j:I

    if-gt v3, v0, :cond_3d

    invoke-virtual {p0, v2}, Ls0/p0;->update(B)V

    goto :goto_35

    :cond_3d
    invoke-static {v1, v2, v4, v0, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Ls0/p0;->e()V

    :goto_43
    iget-object v0, p0, Ls0/p0;->l:[J

    array-length v1, v0

    if-ge v2, v1, :cond_52

    aget-wide v0, v0, v2

    invoke-static {p2, v0, v1, p1}, Lm4/d;->E(IJ[B)V

    add-int/lit8 p2, p2, 0x8

    add-int/lit8 v2, v2, 0x1

    goto :goto_43

    :cond_52
    invoke-virtual {p0}, Ls0/p0;->reset()V

    const/16 p0, 0x40

    return p0
.end method

.method public final e()V
    .registers 32

    move-object/from16 v0, p0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_5
    iget-object v4, v0, Ls0/p0;->o:[J

    array-length v5, v4

    const/16 v6, 0x8

    iget-object v7, v0, Ls0/p0;->i:[B

    if-ge v2, v5, :cond_18

    invoke-static {v3, v7}, Lm4/d;->c(I[B)J

    move-result-wide v7

    aput-wide v7, v4, v2

    add-int/2addr v3, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_18
    move v2, v1

    :goto_19
    iget-object v3, v0, Ls0/p0;->l:[J

    iget-object v5, v0, Ls0/p0;->p:[J

    iget-object v8, v0, Ls0/p0;->m:[J

    if-ge v2, v6, :cond_2e

    aget-wide v9, v4, v2

    aget-wide v11, v3, v2

    aput-wide v11, v8, v2

    xor-long v8, v9, v11

    aput-wide v8, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_2e
    const/4 v2, 0x1

    :goto_2f
    const/16 v9, 0xa

    if-gt v2, v9, :cond_195

    move v9, v1

    :goto_34
    sget-object v10, Ls0/p0;->y:[J

    sget-object v11, Ls0/p0;->x:[J

    sget-object v13, Ls0/p0;->w:[J

    sget-object v15, Ls0/p0;->v:[J

    const/16 v16, 0x20

    sget-object v17, Ls0/p0;->u:[J

    const/16 v18, 0x28

    sget-object v19, Ls0/p0;->t:[J

    const/16 v20, 0x30

    sget-object v21, Ls0/p0;->s:[J

    const/16 v22, 0x38

    sget-object v23, Ls0/p0;->r:[J

    const/16 v24, 0x10

    iget-object v12, v0, Ls0/p0;->n:[J

    if-ge v9, v6, :cond_e1

    const-wide/16 v25, 0x0

    aput-wide v25, v12, v9

    and-int/lit8 v25, v9, 0x7

    aget-wide v25, v8, v25

    move-object/from16 v28, v15

    const/16 v27, 0x18

    ushr-long v14, v25, v22

    long-to-int v14, v14

    and-int/lit16 v14, v14, 0xff

    aget-wide v14, v23, v14

    aput-wide v14, v12, v9

    add-int/lit8 v22, v9, -0x1

    and-int/lit8 v22, v22, 0x7

    aget-wide v22, v8, v22

    move/from16 v26, v6

    move-object/from16 v25, v7

    ushr-long v6, v22, v20

    long-to-int v6, v6

    and-int/lit16 v6, v6, 0xff

    aget-wide v6, v21, v6

    xor-long/2addr v6, v14

    aput-wide v6, v12, v9

    add-int/lit8 v14, v9, -0x2

    and-int/lit8 v14, v14, 0x7

    aget-wide v14, v8, v14

    ushr-long v14, v14, v18

    long-to-int v14, v14

    and-int/lit16 v14, v14, 0xff

    aget-wide v14, v19, v14

    xor-long/2addr v6, v14

    aput-wide v6, v12, v9

    add-int/lit8 v14, v9, -0x3

    and-int/lit8 v14, v14, 0x7

    aget-wide v14, v8, v14

    ushr-long v14, v14, v16

    long-to-int v14, v14

    and-int/lit16 v14, v14, 0xff

    aget-wide v14, v17, v14

    xor-long/2addr v6, v14

    aput-wide v6, v12, v9

    add-int/lit8 v14, v9, -0x4

    and-int/lit8 v14, v14, 0x7

    aget-wide v14, v8, v14

    ushr-long v14, v14, v27

    long-to-int v14, v14

    and-int/lit16 v14, v14, 0xff

    aget-wide v14, v28, v14

    xor-long/2addr v6, v14

    aput-wide v6, v12, v9

    add-int/lit8 v14, v9, -0x5

    and-int/lit8 v14, v14, 0x7

    aget-wide v14, v8, v14

    ushr-long v14, v14, v24

    long-to-int v14, v14

    and-int/lit16 v14, v14, 0xff

    aget-wide v13, v13, v14

    xor-long/2addr v6, v13

    aput-wide v6, v12, v9

    add-int/lit8 v13, v9, -0x6

    and-int/lit8 v13, v13, 0x7

    aget-wide v13, v8, v13

    ushr-long v13, v13, v26

    long-to-int v13, v13

    and-int/lit16 v13, v13, 0xff

    aget-wide v13, v11, v13

    xor-long/2addr v6, v13

    aput-wide v6, v12, v9

    add-int/lit8 v11, v9, -0x7

    and-int/lit8 v11, v11, 0x7

    aget-wide v13, v8, v11

    long-to-int v11, v13

    and-int/lit16 v11, v11, 0xff

    aget-wide v10, v10, v11

    xor-long/2addr v6, v10

    aput-wide v6, v12, v9

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v7, v25

    move/from16 v6, v26

    goto/16 :goto_34

    :cond_e1
    move/from16 v26, v6

    move-object/from16 v25, v7

    move-object/from16 v28, v15

    const/16 v27, 0x18

    array-length v6, v8

    invoke-static {v12, v1, v8, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-wide v6, v8, v1

    iget-object v9, v0, Ls0/p0;->g:[J

    aget-wide v14, v9, v2

    xor-long/2addr v6, v14

    aput-wide v6, v8, v1

    move v6, v1

    move/from16 v7, v26

    :goto_f9
    if-ge v6, v7, :cond_186

    aget-wide v14, v8, v6

    aput-wide v14, v12, v6

    and-int/lit8 v7, v6, 0x7

    aget-wide v29, v5, v7

    move v9, v2

    ushr-long v1, v29, v22

    long-to-int v1, v1

    and-int/lit16 v1, v1, 0xff

    aget-wide v1, v23, v1

    xor-long/2addr v1, v14

    aput-wide v1, v12, v6

    add-int/lit8 v14, v6, -0x1

    and-int/lit8 v14, v14, 0x7

    aget-wide v14, v5, v14

    ushr-long v14, v14, v20

    long-to-int v14, v14

    and-int/lit16 v14, v14, 0xff

    aget-wide v14, v21, v14

    xor-long/2addr v1, v14

    aput-wide v1, v12, v6

    add-int/lit8 v14, v6, -0x2

    and-int/lit8 v14, v14, 0x7

    aget-wide v14, v5, v14

    ushr-long v14, v14, v18

    long-to-int v14, v14

    and-int/lit16 v14, v14, 0xff

    aget-wide v14, v19, v14

    xor-long/2addr v1, v14

    aput-wide v1, v12, v6

    add-int/lit8 v14, v6, -0x3

    and-int/lit8 v14, v14, 0x7

    aget-wide v14, v5, v14

    ushr-long v14, v14, v16

    long-to-int v14, v14

    and-int/lit16 v14, v14, 0xff

    aget-wide v14, v17, v14

    xor-long/2addr v1, v14

    aput-wide v1, v12, v6

    add-int/lit8 v14, v6, -0x4

    and-int/lit8 v14, v14, 0x7

    aget-wide v14, v5, v14

    ushr-long v14, v14, v27

    long-to-int v14, v14

    and-int/lit16 v14, v14, 0xff

    aget-wide v14, v28, v14

    xor-long/2addr v1, v14

    aput-wide v1, v12, v6

    add-int/lit8 v14, v6, -0x5

    and-int/lit8 v14, v14, 0x7

    aget-wide v14, v5, v14

    ushr-long v14, v14, v24

    long-to-int v14, v14

    and-int/lit16 v14, v14, 0xff

    aget-wide v14, v13, v14

    xor-long/2addr v1, v14

    aput-wide v1, v12, v6

    add-int/lit8 v14, v6, -0x6

    and-int/lit8 v14, v14, 0x7

    aget-wide v14, v5, v14

    const/16 v26, 0x8

    ushr-long v14, v14, v26

    long-to-int v14, v14

    and-int/lit16 v14, v14, 0xff

    aget-wide v14, v11, v14

    xor-long/2addr v1, v14

    aput-wide v1, v12, v6

    add-int/lit8 v14, v6, -0x7

    and-int/lit8 v14, v14, 0x7

    aget-wide v14, v5, v14

    long-to-int v14, v14

    and-int/lit16 v14, v14, 0xff

    aget-wide v14, v10, v14

    xor-long/2addr v1, v14

    aput-wide v1, v12, v6

    add-int/lit8 v6, v6, 0x1

    move v2, v9

    const/4 v1, 0x0

    const/16 v7, 0x8

    goto/16 :goto_f9

    :cond_186
    move v9, v2

    array-length v1, v5

    const/4 v7, 0x0

    invoke-static {v12, v7, v5, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v9, 0x1

    move-object/from16 v7, v25

    const/4 v1, 0x0

    const/16 v6, 0x8

    goto/16 :goto_2f

    :cond_195
    move-object/from16 v25, v7

    move v2, v6

    const/4 v1, 0x0

    :goto_199
    if-ge v1, v2, :cond_1a8

    aget-wide v8, v3, v1

    aget-wide v10, v5, v1

    aget-wide v12, v4, v1

    xor-long/2addr v10, v12

    xor-long/2addr v8, v10

    aput-wide v8, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_199

    :cond_1a8
    const/4 v7, 0x0

    iput v7, v0, Ls0/p0;->j:I

    move-object/from16 v0, v25

    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([BB)V

    return-void
.end method

.method public final getAlgorithmName()Ljava/lang/String;
    .registers 1

    const-string p0, "Whirlpool"

    return-object p0
.end method

.method public final getByteLength()I
    .registers 1

    const/16 p0, 0x40

    return p0
.end method

.method public final getDigestSize()I
    .registers 1

    const/16 p0, 0x40

    return p0
.end method

.method public final reset()V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Ls0/p0;->j:I

    iget-object v1, p0, Ls0/p0;->k:[S

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([SS)V

    iget-object v1, p0, Ls0/p0;->i:[B

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([BB)V

    iget-object v0, p0, Ls0/p0;->l:[J

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    iget-object v0, p0, Ls0/p0;->m:[J

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    iget-object v0, p0, Ls0/p0;->n:[J

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    iget-object v0, p0, Ls0/p0;->o:[J

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    iget-object p0, p0, Ls0/p0;->p:[J

    invoke-static {p0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    return-void
.end method

.method public final update(B)V
    .registers 5

    iget v0, p0, Ls0/p0;->j:I

    iget-object v1, p0, Ls0/p0;->i:[B

    aput-byte p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ls0/p0;->j:I

    array-length p1, v1

    if-ne v0, p1, :cond_10

    invoke-virtual {p0}, Ls0/p0;->e()V

    :cond_10
    iget-object p0, p0, Ls0/p0;->k:[S

    array-length p1, p0

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x0

    :goto_16
    if-ltz p1, :cond_2c

    aget-short v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    sget-object v2, Ls0/p0;->z:[S

    aget-short v2, v2, p1

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    ushr-int/lit8 v0, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-short v1, v1

    aput-short v1, p0, p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_16

    :cond_2c
    return-void
.end method

.method public final update([BII)V
    .registers 5

    :goto_0
    if-lez p3, :cond_c

    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Ls0/p0;->update(B)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_c
    return-void
.end method
