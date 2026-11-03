.class public final Lv0/f0;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/d;


# static fields
.field public static final l:[S


# instance fields
.field public g:[I

.field public h:[I

.field public i:[I

.field public j:[I

.field public k:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x100

    new-array v0, v0, [S

    fill-array-data v0, :array_a

    sput-object v0, Lv0/f0;->l:[S

    return-void

    :array_a
    .array-data 2
        0xa3s
        0xd7s
        0x9s
        0x83s
        0xf8s
        0x48s
        0xf6s
        0xf4s
        0xb3s
        0x21s
        0x15s
        0x78s
        0x99s
        0xb1s
        0xafs
        0xf9s
        0xe7s
        0x2ds
        0x4ds
        0x8as
        0xces
        0x4cs
        0xcas
        0x2es
        0x52s
        0x95s
        0xd9s
        0x1es
        0x4es
        0x38s
        0x44s
        0x28s
        0xas
        0xdfs
        0x2s
        0xa0s
        0x17s
        0xf1s
        0x60s
        0x68s
        0x12s
        0xb7s
        0x7as
        0xc3s
        0xe9s
        0xfas
        0x3ds
        0x53s
        0x96s
        0x84s
        0x6bs
        0xbas
        0xf2s
        0x63s
        0x9as
        0x19s
        0x7cs
        0xaes
        0xe5s
        0xf5s
        0xf7s
        0x16s
        0x6as
        0xa2s
        0x39s
        0xb6s
        0x7bs
        0xfs
        0xc1s
        0x93s
        0x81s
        0x1bs
        0xees
        0xb4s
        0x1as
        0xeas
        0xd0s
        0x91s
        0x2fs
        0xb8s
        0x55s
        0xb9s
        0xdas
        0x85s
        0x3fs
        0x41s
        0xbfs
        0xe0s
        0x5as
        0x58s
        0x80s
        0x5fs
        0x66s
        0xbs
        0xd8s
        0x90s
        0x35s
        0xd5s
        0xc0s
        0xa7s
        0x33s
        0x6s
        0x65s
        0x69s
        0x45s
        0x0s
        0x94s
        0x56s
        0x6ds
        0x98s
        0x9bs
        0x76s
        0x97s
        0xfcs
        0xb2s
        0xc2s
        0xb0s
        0xfes
        0xdbs
        0x20s
        0xe1s
        0xebs
        0xd6s
        0xe4s
        0xdds
        0x47s
        0x4as
        0x1ds
        0x42s
        0xeds
        0x9es
        0x6es
        0x49s
        0x3cs
        0xcds
        0x43s
        0x27s
        0xd2s
        0x7s
        0xd4s
        0xdes
        0xc7s
        0x67s
        0x18s
        0x89s
        0xcbs
        0x30s
        0x1fs
        0x8ds
        0xc6s
        0x8fs
        0xaas
        0xc8s
        0x74s
        0xdcs
        0xc9s
        0x5ds
        0x5cs
        0x31s
        0xa4s
        0x70s
        0x88s
        0x61s
        0x2cs
        0x9fs
        0xds
        0x2bs
        0x87s
        0x50s
        0x82s
        0x54s
        0x64s
        0x26s
        0x7ds
        0x3s
        0x40s
        0x34s
        0x4bs
        0x1cs
        0x73s
        0xd1s
        0xc4s
        0xfds
        0x3bs
        0xccs
        0xfbs
        0x7fs
        0xabs
        0xe6s
        0x3es
        0x5bs
        0xa5s
        0xads
        0x4s
        0x23s
        0x9cs
        0x14s
        0x51s
        0x22s
        0xf0s
        0x29s
        0x79s
        0x71s
        0x7es
        0xffs
        0x8cs
        0xes
        0xe2s
        0xcs
        0xefs
        0xbcs
        0x72s
        0x75s
        0x6fs
        0x37s
        0xa1s
        0xecs
        0xd3s
        0x8es
        0x62s
        0x8bs
        0x86s
        0x10s
        0xe8s
        0x8s
        0x77s
        0x11s
        0xbes
        0x92s
        0x4fs
        0x24s
        0xc5s
        0x32s
        0x36s
        0x9ds
        0xcfs
        0xf3s
        0xa6s
        0xbbs
        0xacs
        0x5es
        0x6cs
        0xa9s
        0x13s
        0x57s
        0x25s
        0xb5s
        0xe3s
        0xbds
        0xa8s
        0x3as
        0x1s
        0x5s
        0x59s
        0x2as
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p0, Lorg/bouncycastle/crypto/o;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/crypto/l;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final a(II)I
    .registers 6

    shr-int/lit8 v0, p2, 0x8

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 p2, p2, 0xff

    iget-object v1, p0, Lv0/f0;->g:[I

    aget v1, v1, p1

    xor-int/2addr v1, p2

    sget-object v2, Lv0/f0;->l:[S

    aget-short v1, v2, v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lv0/f0;->h:[I

    aget v1, v1, p1

    xor-int/2addr v1, v0

    aget-short v1, v2, v1

    xor-int/2addr p2, v1

    iget-object v1, p0, Lv0/f0;->i:[I

    aget v1, v1, p1

    xor-int/2addr v1, p2

    aget-short v1, v2, v1

    xor-int/2addr v0, v1

    iget-object p0, p0, Lv0/f0;->j:[I

    aget p0, p0, p1

    xor-int/2addr p0, v0

    aget-short p0, v2, p0

    xor-int/2addr p0, p2

    shl-int/lit8 p1, v0, 0x8

    add-int/2addr p1, p0

    return p1
.end method

.method public final b(II[B[B)I
    .registers 15

    iget-object v0, p0, Lv0/f0;->h:[I

    if-eqz v0, :cond_140

    add-int/lit8 v0, p1, 0x8

    array-length v1, p3

    if-gt v0, v1, :cond_138

    add-int/lit8 v0, p2, 0x8

    array-length v1, p4

    if-gt v0, v1, :cond_130

    iget-boolean v0, p0, Lv0/f0;->k:Z

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/16 v3, 0x8

    if-eqz v0, :cond_a1

    aget-byte v0, p3, p1

    shl-int/2addr v0, v3

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p3, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v0, v4

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p3, v4

    shl-int/2addr v4, v3

    add-int/lit8 v5, p1, 0x3

    aget-byte v5, p3, v5

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v4, v5

    add-int/lit8 v5, p1, 0x4

    aget-byte v5, p3, v5

    shl-int/2addr v5, v3

    add-int/lit8 v6, p1, 0x5

    aget-byte v6, p3, v6

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v5, v6

    add-int/lit8 v6, p1, 0x6

    aget-byte v6, p3, v6

    shl-int/2addr v6, v3

    add-int/lit8 p1, p1, 0x7

    aget-byte p1, p3, p1

    and-int/lit16 p1, p1, 0xff

    add-int/2addr v6, p1

    move p1, v1

    move p3, p1

    :goto_46
    if-ge p1, v2, :cond_71

    move v7, v1

    :goto_49
    if-ge v7, v3, :cond_5b

    invoke-virtual {p0, p3, v0}, Lv0/f0;->a(II)I

    move-result v0

    xor-int/2addr v6, v0

    add-int/lit8 p3, p3, 0x1

    xor-int/2addr v6, p3

    add-int/lit8 v7, v7, 0x1

    move v9, v4

    move v4, v0

    move v0, v6

    move v6, v5

    move v5, v9

    goto :goto_49

    :cond_5b
    move v7, v1

    :goto_5c
    if-ge v7, v3, :cond_6e

    xor-int/2addr v4, v0

    add-int/lit8 v8, p3, 0x1

    xor-int/2addr v4, v8

    invoke-virtual {p0, p3, v0}, Lv0/f0;->a(II)I

    move-result p3

    add-int/lit8 v7, v7, 0x1

    move v0, v6

    move v6, v5

    move v5, v4

    move v4, p3

    move p3, v8

    goto :goto_5c

    :cond_6e
    add-int/lit8 p1, p1, 0x1

    goto :goto_46

    :cond_71
    shr-int/lit8 p0, v0, 0x8

    int-to-byte p0, p0

    aput-byte p0, p4, p2

    add-int/lit8 p0, p2, 0x1

    int-to-byte p1, v0

    aput-byte p1, p4, p0

    add-int/lit8 p0, p2, 0x2

    shr-int/lit8 p1, v4, 0x8

    int-to-byte p1, p1

    aput-byte p1, p4, p0

    add-int/lit8 p0, p2, 0x3

    int-to-byte p1, v4

    aput-byte p1, p4, p0

    add-int/lit8 p0, p2, 0x4

    shr-int/lit8 p1, v5, 0x8

    int-to-byte p1, p1

    aput-byte p1, p4, p0

    add-int/lit8 p0, p2, 0x5

    int-to-byte p1, v5

    aput-byte p1, p4, p0

    add-int/lit8 p0, p2, 0x6

    shr-int/lit8 p1, v6, 0x8

    int-to-byte p1, p1

    aput-byte p1, p4, p0

    add-int/lit8 p2, p2, 0x7

    int-to-byte p0, v6

    aput-byte p0, p4, p2

    goto/16 :goto_12f

    :cond_a1
    aget-byte v0, p3, p1

    shl-int/2addr v0, v3

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p3, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v0, v4

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p3, v4

    shl-int/2addr v4, v3

    add-int/lit8 v5, p1, 0x3

    aget-byte v5, p3, v5

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v4, v5

    add-int/lit8 v5, p1, 0x4

    aget-byte v5, p3, v5

    shl-int/2addr v5, v3

    add-int/lit8 v6, p1, 0x5

    aget-byte v6, p3, v6

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v5, v6

    add-int/lit8 v6, p1, 0x6

    aget-byte v6, p3, v6

    shl-int/2addr v6, v3

    add-int/lit8 p1, p1, 0x7

    aget-byte p1, p3, p1

    and-int/lit16 p1, p1, 0xff

    add-int/2addr v6, p1

    const/16 p1, 0x1f

    move p3, v1

    :goto_d2
    if-ge p3, v2, :cond_101

    move v7, v1

    :goto_d5
    if-ge v7, v3, :cond_e9

    invoke-virtual {p0, p1, v4}, Lv0/f0;->d(II)I

    move-result v4

    xor-int/2addr v5, v4

    add-int/lit8 v8, p1, 0x1

    xor-int/2addr v5, v8

    add-int/lit8 p1, p1, -0x1

    add-int/lit8 v7, v7, 0x1

    move v9, v6

    move v6, v0

    move v0, v4

    move v4, v5

    move v5, v9

    goto :goto_d5

    :cond_e9
    move v7, v1

    :goto_ea
    if-ge v7, v3, :cond_fe

    xor-int/2addr v0, v4

    add-int/lit8 v8, p1, 0x1

    xor-int/2addr v0, v8

    invoke-virtual {p0, p1, v4}, Lv0/f0;->d(II)I

    move-result v4

    add-int/lit8 p1, p1, -0x1

    add-int/lit8 v7, v7, 0x1

    move v9, v6

    move v6, v0

    move v0, v4

    move v4, v5

    move v5, v9

    goto :goto_ea

    :cond_fe
    add-int/lit8 p3, p3, 0x1

    goto :goto_d2

    :cond_101
    shr-int/lit8 p0, v0, 0x8

    int-to-byte p0, p0

    aput-byte p0, p4, p2

    add-int/lit8 p0, p2, 0x1

    int-to-byte p1, v0

    aput-byte p1, p4, p0

    add-int/lit8 p0, p2, 0x2

    shr-int/lit8 p1, v4, 0x8

    int-to-byte p1, p1

    aput-byte p1, p4, p0

    add-int/lit8 p0, p2, 0x3

    int-to-byte p1, v4

    aput-byte p1, p4, p0

    add-int/lit8 p0, p2, 0x4

    shr-int/lit8 p1, v5, 0x8

    int-to-byte p1, p1

    aput-byte p1, p4, p0

    add-int/lit8 p0, p2, 0x5

    int-to-byte p1, v5

    aput-byte p1, p4, p0

    add-int/lit8 p0, p2, 0x6

    shr-int/lit8 p1, v6, 0x8

    int-to-byte p1, p1

    aput-byte p1, p4, p0

    add-int/lit8 p2, p2, 0x7

    int-to-byte p0, v6

    aput-byte p0, p4, p2

    :goto_12f
    return v3

    :cond_130
    new-instance p0, Lorg/bouncycastle/crypto/d0;

    const-string p1, "output buffer too short"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_138
    new-instance p0, Lorg/bouncycastle/crypto/q;

    const-string p1, "input buffer too short"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_140
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "SKIPJACK engine not initialised"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c()I
    .registers 1

    const/16 p0, 0x8

    return p0
.end method

.method public final d(II)I
    .registers 6

    and-int/lit16 v0, p2, 0xff

    shr-int/lit8 p2, p2, 0x8

    and-int/lit16 p2, p2, 0xff

    iget-object v1, p0, Lv0/f0;->j:[I

    aget v1, v1, p1

    xor-int/2addr v1, p2

    sget-object v2, Lv0/f0;->l:[S

    aget-short v1, v2, v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lv0/f0;->i:[I

    aget v1, v1, p1

    xor-int/2addr v1, v0

    aget-short v1, v2, v1

    xor-int/2addr p2, v1

    iget-object v1, p0, Lv0/f0;->h:[I

    aget v1, v1, p1

    xor-int/2addr v1, p2

    aget-short v1, v2, v1

    xor-int/2addr v0, v1

    iget-object p0, p0, Lv0/f0;->g:[I

    aget p0, p0, p1

    xor-int/2addr p0, v0

    aget-short p0, v2, p0

    xor-int/2addr p0, p2

    shl-int/lit8 p0, p0, 0x8

    add-int/2addr p0, v0

    return p0
.end method

.method public final getAlgorithmName()Ljava/lang/String;
    .registers 1

    const-string p0, "SKIPJACK"

    return-object p0
.end method

.method public final init(ZLorg/bouncycastle/crypto/g;)V
    .registers 8

    instance-of v0, p2, Le1/o0;

    if-eqz v0, :cond_6b

    move-object v0, p2

    check-cast v0, Le1/o0;

    iget-object v0, v0, Le1/o0;->c:[B

    iput-boolean p1, p0, Lv0/f0;->k:Z

    const/16 p1, 0x20

    new-array v1, p1, [I

    iput-object v1, p0, Lv0/f0;->g:[I

    new-array v1, p1, [I

    iput-object v1, p0, Lv0/f0;->h:[I

    new-array v1, p1, [I

    iput-object v1, p0, Lv0/f0;->i:[I

    new-array v1, p1, [I

    iput-object v1, p0, Lv0/f0;->j:[I

    const/4 v1, 0x0

    :goto_1e
    if-ge v1, p1, :cond_53

    iget-object v2, p0, Lv0/f0;->g:[I

    mul-int/lit8 v3, v1, 0x4

    rem-int/lit8 v4, v3, 0xa

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v2, v1

    iget-object v2, p0, Lv0/f0;->h:[I

    add-int/lit8 v4, v3, 0x1

    rem-int/lit8 v4, v4, 0xa

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v2, v1

    iget-object v2, p0, Lv0/f0;->i:[I

    add-int/lit8 v4, v3, 0x2

    rem-int/lit8 v4, v4, 0xa

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v2, v1

    iget-object v2, p0, Lv0/f0;->j:[I

    add-int/lit8 v3, v3, 0x3

    rem-int/lit8 v3, v3, 0xa

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_53
    instance-of p0, p2, Lorg/bouncycastle/crypto/j;

    if-nez p0, :cond_63

    sget-object p0, Lorg/bouncycastle/crypto/o;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/crypto/l;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_63
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "params should not be CryptoServicePurpose"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid parameter passed to SKIPJACK init - "

    invoke-static {p1, p2}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->c(Ljava/lang/String;Lorg/bouncycastle/crypto/g;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final reset()V
    .registers 1

    return-void
.end method
