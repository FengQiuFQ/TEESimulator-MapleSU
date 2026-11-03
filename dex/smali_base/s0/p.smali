.class public final Ls0/p;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/w;
.implements Lm4/e;


# static fields
.field public static final l:[B


# instance fields
.field public final g:Lorg/bouncycastle/crypto/j;

.field public final h:[B

.field public final i:[B

.field public j:I

.field public final k:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Ls0/p;->l:[B

    return-void

    :array_a
    .array-data 1
        0x29t
        0x2et
        0x43t
        -0x37t
        -0x5et
        -0x28t
        0x7ct
        0x1t
        0x3dt
        0x36t
        0x54t
        -0x5ft
        -0x14t
        -0x10t
        0x6t
        0x13t
        0x62t
        -0x59t
        0x5t
        -0xdt
        -0x40t
        -0x39t
        0x73t
        -0x74t
        -0x68t
        -0x6dt
        0x2bt
        -0x27t
        -0x44t
        0x4ct
        -0x7et
        -0x36t
        0x1et
        -0x65t
        0x57t
        0x3ct
        -0x3t
        -0x2ct
        -0x20t
        0x16t
        0x67t
        0x42t
        0x6ft
        0x18t
        -0x76t
        0x17t
        -0x1bt
        0x12t
        -0x42t
        0x4et
        -0x3ct
        -0x2at
        -0x26t
        -0x62t
        -0x22t
        0x49t
        -0x60t
        -0x5t
        -0xbt
        -0x72t
        -0x45t
        0x2ft
        -0x12t
        0x7at
        -0x57t
        0x68t
        0x79t
        -0x6ft
        0x15t
        -0x4et
        0x7t
        0x3ft
        -0x6ct
        -0x3et
        0x10t
        -0x77t
        0xbt
        0x22t
        0x5ft
        0x21t
        -0x80t
        0x7ft
        0x5dt
        -0x66t
        0x5at
        -0x70t
        0x32t
        0x27t
        0x35t
        0x3et
        -0x34t
        -0x19t
        -0x41t
        -0x9t
        -0x69t
        0x3t
        -0x1t
        0x19t
        0x30t
        -0x4dt
        0x48t
        -0x5bt
        -0x4bt
        -0x2ft
        -0x29t
        0x5et
        -0x6et
        0x2at
        -0x54t
        0x56t
        -0x56t
        -0x3at
        0x4ft
        -0x48t
        0x38t
        -0x2et
        -0x6at
        -0x5ct
        0x7dt
        -0x4at
        0x76t
        -0x4t
        0x6bt
        -0x1et
        -0x64t
        0x74t
        0x4t
        -0xft
        0x45t
        -0x63t
        0x70t
        0x59t
        0x64t
        0x71t
        -0x79t
        0x20t
        -0x7at
        0x5bt
        -0x31t
        0x65t
        -0x1at
        0x2dt
        -0x58t
        0x2t
        0x1bt
        0x60t
        0x25t
        -0x53t
        -0x52t
        -0x50t
        -0x47t
        -0xat
        0x1ct
        0x46t
        0x61t
        0x69t
        0x34t
        0x40t
        0x7et
        0xft
        0x55t
        0x47t
        -0x5dt
        0x23t
        -0x23t
        0x51t
        -0x51t
        0x3at
        -0x3dt
        0x5ct
        -0x7t
        -0x32t
        -0x46t
        -0x3bt
        -0x16t
        0x26t
        0x2ct
        0x53t
        0xdt
        0x6et
        -0x7bt
        0x28t
        -0x7ct
        0x9t
        -0x2dt
        -0x21t
        -0x33t
        -0xct
        0x41t
        -0x7ft
        0x4dt
        0x52t
        0x6at
        -0x24t
        0x37t
        -0x38t
        0x6ct
        -0x3ft
        -0x55t
        -0x6t
        0x24t
        -0x1ft
        0x7bt
        0x8t
        0xct
        -0x43t
        -0x4ft
        0x4at
        0x78t
        -0x78t
        -0x6bt
        -0x75t
        -0x1dt
        0x63t
        -0x18t
        0x6dt
        -0x17t
        -0x35t
        -0x2bt
        -0x2t
        0x3bt
        0x0t
        0x1dt
        0x39t
        -0xet
        -0x11t
        -0x49t
        0xet
        0x66t
        0x58t
        -0x30t
        -0x1ct
        -0x5at
        0x77t
        0x72t
        -0x8t
        -0x15t
        0x75t
        0x4bt
        0xat
        0x31t
        0x44t
        0x50t
        -0x4ct
        -0x71t
        -0x13t
        0x1ft
        0x1at
        -0x25t
        -0x67t
        -0x73t
        0x33t
        -0x61t
        0x11t
        -0x7dt
        0x14t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    sget-object v0, Lorg/bouncycastle/crypto/j;->d:Lorg/bouncycastle/crypto/j;

    invoke-direct {p0, v0}, Ls0/p;-><init>(Lorg/bouncycastle/crypto/j;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/j;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x30

    new-array v0, v0, [B

    iput-object v0, p0, Ls0/p;->h:[B

    const/16 v0, 0x10

    new-array v1, v0, [B

    iput-object v1, p0, Ls0/p;->i:[B

    new-array v0, v0, [B

    iput-object v0, p0, Ls0/p;->k:[B

    iput-object p1, p0, Ls0/p;->g:Lorg/bouncycastle/crypto/j;

    invoke-static {p0}, Ls0/o0;->a(Lorg/bouncycastle/crypto/v;)Lr0/a;

    invoke-static {}, Lorg/bouncycastle/crypto/o;->a()V

    invoke-virtual {p0}, Ls0/p;->reset()V

    return-void
.end method

.method public constructor <init>(Ls0/p;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x30

    new-array v0, v0, [B

    iput-object v0, p0, Ls0/p;->h:[B

    const/16 v0, 0x10

    new-array v1, v0, [B

    iput-object v1, p0, Ls0/p;->i:[B

    new-array v0, v0, [B

    iput-object v0, p0, Ls0/p;->k:[B

    iget-object v0, p1, Ls0/p;->g:Lorg/bouncycastle/crypto/j;

    iput-object v0, p0, Ls0/p;->g:Lorg/bouncycastle/crypto/j;

    invoke-static {p0}, Ls0/o0;->a(Lorg/bouncycastle/crypto/v;)Lr0/a;

    invoke-static {}, Lorg/bouncycastle/crypto/o;->a()V

    invoke-virtual {p0, p1}, Ls0/p;->d(Ls0/p;)V

    return-void
.end method


# virtual methods
.method public final a()Lm4/e;
    .registers 2

    new-instance v0, Ls0/p;

    invoke-direct {v0, p0}, Ls0/p;-><init>(Ls0/p;)V

    return-object v0
.end method

.method public final c(Lm4/e;)V
    .registers 2

    check-cast p1, Ls0/p;

    invoke-virtual {p0, p1}, Ls0/p;->d(Ls0/p;)V

    return-void
.end method

.method public final d(Ls0/p;)V
    .registers 6

    iget-object v0, p1, Ls0/p;->h:[B

    iget-object v1, p0, Ls0/p;->h:[B

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Ls0/p;->i:[B

    iget-object v1, p0, Ls0/p;->i:[B

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Ls0/p;->j:I

    iput v0, p0, Ls0/p;->j:I

    iget-object p1, p1, Ls0/p;->k:[B

    iget-object p0, p0, Ls0/p;->k:[B

    array-length v0, p1

    invoke-static {p1, v3, p0, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final doFinal([BI)I
    .registers 7

    iget-object v0, p0, Ls0/p;->i:[B

    array-length v1, v0

    iget v2, p0, Ls0/p;->j:I

    sub-int/2addr v1, v2

    int-to-byte v1, v1

    :goto_7
    array-length v3, v0

    if-ge v2, v3, :cond_f

    aput-byte v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_f
    invoke-virtual {p0, v0}, Ls0/p;->f([B)V

    invoke-virtual {p0, v0}, Ls0/p;->e([B)V

    iget-object v0, p0, Ls0/p;->k:[B

    invoke-virtual {p0, v0}, Ls0/p;->e([B)V

    iget-object v0, p0, Ls0/p;->h:[B

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Ls0/p;->reset()V

    return v2
.end method

.method public final e([B)V
    .registers 8

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Ls0/p;->h:[B

    const/16 v3, 0x10

    if-ge v1, v3, :cond_1b

    add-int/lit8 v3, v1, 0x10

    aget-byte v4, p1, v1

    aput-byte v4, v2, v3

    add-int/lit8 v3, v1, 0x20

    aget-byte v4, p1, v1

    aget-byte v5, v2, v1

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1b
    move p0, v0

    move p1, p0

    :goto_1d
    const/16 v1, 0x12

    if-ge p0, v1, :cond_3b

    move v1, v0

    :goto_22
    const/16 v3, 0x30

    if-ge v1, v3, :cond_35

    aget-byte v3, v2, v1

    sget-object v4, Ls0/p;->l:[B

    aget-byte p1, v4, p1

    xor-int/2addr p1, v3

    int-to-byte p1, p1

    aput-byte p1, v2, v1

    and-int/lit16 p1, p1, 0xff

    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    :cond_35
    add-int/2addr p1, p0

    rem-int/lit16 p1, p1, 0x100

    add-int/lit8 p0, p0, 0x1

    goto :goto_1d

    :cond_3b
    return-void
.end method

.method public final f([B)V
    .registers 6

    const/16 v0, 0xf

    iget-object p0, p0, Ls0/p;->k:[B

    aget-byte v0, p0, v0

    const/4 v1, 0x0

    :goto_7
    const/16 v2, 0x10

    if-ge v1, v2, :cond_1d

    aget-byte v2, p0, v1

    aget-byte v3, p1, v1

    xor-int/2addr v0, v3

    and-int/lit16 v0, v0, 0xff

    sget-object v3, Ls0/p;->l:[B

    aget-byte v0, v3, v0

    xor-int/2addr v0, v2

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1d
    return-void
.end method

.method public final getAlgorithmName()Ljava/lang/String;
    .registers 1

    const-string p0, "MD2"

    return-object p0
.end method

.method public final getByteLength()I
    .registers 1

    const/16 p0, 0x10

    return p0
.end method

.method public final getDigestSize()I
    .registers 1

    const/16 p0, 0x10

    return p0
.end method

.method public final reset()V
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Ls0/p;->h:[B

    array-length v3, v2

    if-eq v1, v3, :cond_c

    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_c
    iput v0, p0, Ls0/p;->j:I

    move v1, v0

    :goto_f
    iget-object v2, p0, Ls0/p;->i:[B

    array-length v3, v2

    if-eq v1, v3, :cond_19

    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_19
    move v1, v0

    :goto_1a
    iget-object v2, p0, Ls0/p;->k:[B

    array-length v3, v2

    if-eq v1, v3, :cond_24

    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_24
    return-void
.end method

.method public final update(B)V
    .registers 5

    iget v0, p0, Ls0/p;->j:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ls0/p;->j:I

    iget-object v2, p0, Ls0/p;->i:[B

    aput-byte p1, v2, v0

    const/16 p1, 0x10

    if-ne v1, p1, :cond_17

    invoke-virtual {p0, v2}, Ls0/p;->f([B)V

    invoke-virtual {p0, v2}, Ls0/p;->e([B)V

    const/4 p1, 0x0

    iput p1, p0, Ls0/p;->j:I

    :cond_17
    return-void
.end method

.method public final update([BII)V
    .registers 7

    :goto_0
    iget v0, p0, Ls0/p;->j:I

    if-eqz v0, :cond_10

    if-lez p3, :cond_10

    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Ls0/p;->update(B)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_10
    :goto_10
    const/16 v0, 0x10

    if-lt p3, v0, :cond_25

    const/4 v1, 0x0

    iget-object v2, p0, Ls0/p;->i:[B

    invoke-static {p1, p2, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v2}, Ls0/p;->f([B)V

    invoke-virtual {p0, v2}, Ls0/p;->e([B)V

    add-int/lit8 p3, p3, -0x10

    add-int/lit8 p2, p2, 0x10

    goto :goto_10

    :cond_25
    :goto_25
    if-lez p3, :cond_31

    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Ls0/p;->update(B)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_25

    :cond_31
    return-void
.end method
