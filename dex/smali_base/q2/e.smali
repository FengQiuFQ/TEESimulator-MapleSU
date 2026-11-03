.class public final Lq2/e;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/d;


# instance fields
.field public g:[I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lq2/e;->g:[I

    sget-object p0, Lorg/bouncycastle/crypto/o;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/crypto/l;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public synthetic constructor <init>([I)V
    .registers 2

    iput-object p1, p0, Lq2/e;->g:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)I
    .registers 2

    rsub-int/lit8 p0, p0, 0x0

    const v0, 0xffff

    and-int/2addr p0, v0

    return p0
.end method

.method public static d(I[B)I
    .registers 4

    aget-byte v0, p1, p0

    shl-int/lit8 v0, v0, 0x8

    const v1, 0xff00

    and-int/2addr v0, v1

    add-int/lit8 p0, p0, 0x1

    aget-byte p0, p1, p0

    and-int/lit16 p0, p0, 0xff

    add-int/2addr v0, p0

    return v0
.end method

.method public static e([B)[I
    .registers 7

    const/16 v0, 0x34

    new-array v1, v0, [I

    array-length v2, p0

    const/4 v3, 0x0

    const/16 v4, 0x10

    if-ge v2, v4, :cond_13

    new-array v2, v4, [B

    array-length v5, p0

    sub-int/2addr v4, v5

    array-length v5, p0

    invoke-static {p0, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v2

    :cond_13
    :goto_13
    const/16 v2, 0x8

    if-ge v3, v2, :cond_22

    mul-int/lit8 v2, v3, 0x2

    invoke-static {v2, p0}, Lq2/e;->d(I[B)I

    move-result v2

    aput v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_22
    :goto_22
    if-ge v2, v0, :cond_69

    and-int/lit8 p0, v2, 0x7

    const v3, 0xffff

    const/4 v4, 0x6

    if-ge p0, v4, :cond_3f

    add-int/lit8 p0, v2, -0x7

    aget p0, v1, p0

    and-int/lit8 p0, p0, 0x7f

    shl-int/lit8 p0, p0, 0x9

    add-int/lit8 v4, v2, -0x6

    aget v4, v1, v4

    shr-int/lit8 v4, v4, 0x7

    or-int/2addr p0, v4

    and-int/2addr p0, v3

    aput p0, v1, v2

    goto :goto_66

    :cond_3f
    if-ne p0, v4, :cond_54

    add-int/lit8 p0, v2, -0x7

    aget p0, v1, p0

    and-int/lit8 p0, p0, 0x7f

    shl-int/lit8 p0, p0, 0x9

    add-int/lit8 v4, v2, -0xe

    aget v4, v1, v4

    shr-int/lit8 v4, v4, 0x7

    or-int/2addr p0, v4

    and-int/2addr p0, v3

    aput p0, v1, v2

    goto :goto_66

    :cond_54
    add-int/lit8 p0, v2, -0xf

    aget p0, v1, p0

    and-int/lit8 p0, p0, 0x7f

    shl-int/lit8 p0, p0, 0x9

    add-int/lit8 v4, v2, -0xe

    aget v4, v1, v4

    shr-int/lit8 v4, v4, 0x7

    or-int/2addr p0, v4

    and-int/2addr p0, v3

    aput p0, v1, v2

    :goto_66
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :cond_69
    return-object v1
.end method

.method public static f(II)I
    .registers 4

    const v0, 0xffff

    const v1, 0x10001

    if-nez p0, :cond_a

    sub-int/2addr v1, p1

    goto :goto_1b

    :cond_a
    if-nez p1, :cond_e

    sub-int/2addr v1, p0

    goto :goto_1b

    :cond_e
    mul-int/2addr p0, p1

    and-int p1, p0, v0

    ushr-int/lit8 p0, p0, 0x10

    sub-int v1, p1, p0

    if-ge p1, p0, :cond_19

    const/4 p0, 0x1

    goto :goto_1a

    :cond_19
    const/4 p0, 0x0

    :goto_1a
    add-int/2addr v1, p0

    :goto_1b
    and-int p0, v1, v0

    return p0
.end method

.method public static g(I)I
    .registers 7

    const/4 v0, 0x2

    if-ge p0, v0, :cond_4

    return p0

    :cond_4
    const v0, 0x10001

    div-int v1, v0, p0

    rem-int/2addr v0, p0

    const/4 v2, 0x1

    move v3, v2

    :goto_c
    const v4, 0xffff

    if-eq v0, v2, :cond_23

    div-int v5, p0, v0

    rem-int/2addr p0, v0

    mul-int/2addr v5, v1

    add-int/2addr v5, v3

    and-int v3, v5, v4

    if-ne p0, v2, :cond_1b

    return v3

    :cond_1b
    div-int v5, v0, p0

    rem-int/2addr v0, p0

    mul-int/2addr v5, v3

    add-int/2addr v5, v1

    and-int v1, v5, v4

    goto :goto_c

    :cond_23
    sub-int/2addr v2, v1

    and-int p0, v2, v4

    return p0
.end method

.method public static h([BII)V
    .registers 4

    ushr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    aput-byte v0, p0, p2

    add-int/lit8 p2, p2, 0x1

    int-to-byte p1, p1

    aput-byte p1, p0, p2

    return-void
.end method


# virtual methods
.method public b(II[B[B)I
    .registers 15

    iget-object p0, p0, Lq2/e;->g:[I

    if-eqz p0, :cond_aa

    add-int/lit8 v0, p1, 0x8

    array-length v1, p3

    if-gt v0, v1, :cond_a2

    add-int/lit8 v0, p2, 0x8

    array-length v1, p4

    if-gt v0, v1, :cond_9a

    invoke-static {p1, p3}, Lq2/e;->d(I[B)I

    move-result v0

    add-int/lit8 v1, p1, 0x2

    invoke-static {v1, p3}, Lq2/e;->d(I[B)I

    move-result v1

    add-int/lit8 v2, p1, 0x4

    invoke-static {v2, p3}, Lq2/e;->d(I[B)I

    move-result v2

    add-int/lit8 p1, p1, 0x6

    invoke-static {p1, p3}, Lq2/e;->d(I[B)I

    move-result p1

    const/4 p3, 0x0

    move v3, v2

    move v2, v1

    move v1, v0

    move v0, p3

    :goto_29
    const/16 v4, 0x8

    if-ge p3, v4, :cond_6f

    add-int/lit8 v4, v0, 0x1

    aget v5, p0, v0

    invoke-static {v1, v5}, Lq2/e;->f(II)I

    move-result v1

    add-int/lit8 v5, v0, 0x2

    aget v4, p0, v4

    add-int/2addr v2, v4

    const v4, 0xffff

    and-int/2addr v2, v4

    add-int/lit8 v6, v0, 0x3

    aget v5, p0, v5

    add-int/2addr v3, v5

    and-int/2addr v3, v4

    add-int/lit8 v5, v0, 0x4

    aget v6, p0, v6

    invoke-static {p1, v6}, Lq2/e;->f(II)I

    move-result p1

    xor-int v6, v3, v1

    xor-int v7, v2, p1

    add-int/lit8 v8, v0, 0x5

    aget v5, p0, v5

    invoke-static {v6, v5}, Lq2/e;->f(II)I

    move-result v5

    add-int/2addr v7, v5

    and-int v6, v7, v4

    add-int/lit8 v0, v0, 0x6

    aget v7, p0, v8

    invoke-static {v6, v7}, Lq2/e;->f(II)I

    move-result v6

    add-int/2addr v5, v6

    and-int/2addr v4, v5

    xor-int/2addr v1, v6

    xor-int/2addr p1, v4

    xor-int/2addr v3, v6

    xor-int/2addr v2, v4

    add-int/lit8 p3, p3, 0x1

    move v9, v3

    move v3, v2

    move v2, v9

    goto :goto_29

    :cond_6f
    add-int/lit8 p3, v0, 0x1

    aget v5, p0, v0

    invoke-static {v1, v5}, Lq2/e;->f(II)I

    move-result v1

    invoke-static {p4, v1, p2}, Lq2/e;->h([BII)V

    add-int/lit8 v1, v0, 0x2

    aget p3, p0, p3

    add-int/2addr v3, p3

    add-int/lit8 p3, p2, 0x2

    invoke-static {p4, v3, p3}, Lq2/e;->h([BII)V

    add-int/lit8 v0, v0, 0x3

    aget p3, p0, v1

    add-int/2addr v2, p3

    add-int/lit8 p3, p2, 0x4

    invoke-static {p4, v2, p3}, Lq2/e;->h([BII)V

    aget p0, p0, v0

    invoke-static {p1, p0}, Lq2/e;->f(II)I

    move-result p0

    add-int/lit8 p2, p2, 0x6

    invoke-static {p4, p0, p2}, Lq2/e;->h([BII)V

    return v4

    :cond_9a
    new-instance p0, Lorg/bouncycastle/crypto/d0;

    const-string p1, "output buffer too short"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a2
    new-instance p0, Lorg/bouncycastle/crypto/q;

    const-string p1, "input buffer too short"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_aa
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "IDEA engine not initialised"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public c()I
    .registers 1

    const/16 p0, 0x8

    return p0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 1

    const-string p0, "IDEA"

    return-object p0
.end method

.method public init(ZLorg/bouncycastle/crypto/g;)V
    .registers 12

    instance-of v0, p2, Le1/o0;

    if-eqz v0, :cond_e6

    move-object v0, p2

    check-cast v0, Le1/o0;

    iget-object v0, v0, Le1/o0;->c:[B

    if-eqz p1, :cond_11

    invoke-static {v0}, Lq2/e;->e([B)[I

    move-result-object p1

    goto/16 :goto_cc

    :cond_11
    invoke-static {v0}, Lq2/e;->e([B)[I

    move-result-object p1

    const/16 v0, 0x34

    new-array v0, v0, [I

    const/4 v1, 0x0

    aget v1, p1, v1

    invoke-static {v1}, Lq2/e;->g(I)I

    move-result v1

    const/4 v2, 0x1

    aget v3, p1, v2

    invoke-static {v3}, Lq2/e;->a(I)I

    move-result v3

    const/4 v4, 0x2

    aget v4, p1, v4

    invoke-static {v4}, Lq2/e;->a(I)I

    move-result v4

    const/4 v5, 0x3

    aget v5, p1, v5

    invoke-static {v5}, Lq2/e;->g(I)I

    move-result v5

    const/16 v6, 0x33

    aput v5, v0, v6

    const/16 v5, 0x32

    aput v4, v0, v5

    const/16 v4, 0x31

    aput v3, v0, v4

    const/16 v3, 0x30

    aput v1, v0, v3

    const/4 v1, 0x4

    :goto_46
    const/16 v4, 0x8

    if-ge v2, v4, :cond_8d

    add-int/lit8 v4, v1, 0x1

    aget v5, p1, v1

    add-int/lit8 v6, v1, 0x2

    aget v4, p1, v4

    add-int/lit8 v7, v3, -0x1

    aput v4, v0, v7

    add-int/lit8 v4, v3, -0x2

    aput v5, v0, v4

    add-int/lit8 v4, v1, 0x3

    aget v5, p1, v6

    invoke-static {v5}, Lq2/e;->g(I)I

    move-result v5

    add-int/lit8 v6, v1, 0x4

    aget v4, p1, v4

    invoke-static {v4}, Lq2/e;->a(I)I

    move-result v4

    add-int/lit8 v7, v1, 0x5

    aget v6, p1, v6

    invoke-static {v6}, Lq2/e;->a(I)I

    move-result v6

    add-int/lit8 v1, v1, 0x6

    aget v7, p1, v7

    invoke-static {v7}, Lq2/e;->g(I)I

    move-result v7

    add-int/lit8 v8, v3, -0x3

    aput v7, v0, v8

    add-int/lit8 v7, v3, -0x4

    aput v4, v0, v7

    add-int/lit8 v4, v3, -0x5

    aput v6, v0, v4

    add-int/lit8 v3, v3, -0x6

    aput v5, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    :cond_8d
    add-int/lit8 v2, v1, 0x1

    aget v4, p1, v1

    add-int/lit8 v5, v1, 0x2

    aget v2, p1, v2

    add-int/lit8 v6, v3, -0x1

    aput v2, v0, v6

    add-int/lit8 v2, v3, -0x2

    aput v4, v0, v2

    add-int/lit8 v2, v1, 0x3

    aget v4, p1, v5

    invoke-static {v4}, Lq2/e;->g(I)I

    move-result v4

    add-int/lit8 v5, v1, 0x4

    aget v2, p1, v2

    invoke-static {v2}, Lq2/e;->a(I)I

    move-result v2

    add-int/lit8 v1, v1, 0x5

    aget v5, p1, v5

    invoke-static {v5}, Lq2/e;->a(I)I

    move-result v5

    aget p1, p1, v1

    invoke-static {p1}, Lq2/e;->g(I)I

    move-result p1

    add-int/lit8 v1, v3, -0x3

    aput p1, v0, v1

    add-int/lit8 p1, v3, -0x4

    aput v5, v0, p1

    add-int/lit8 p1, v3, -0x5

    aput v2, v0, p1

    add-int/lit8 v3, v3, -0x6

    aput v4, v0, v3

    move-object p1, v0

    :goto_cc
    iput-object p1, p0, Lq2/e;->g:[I

    instance-of p0, p2, Lorg/bouncycastle/crypto/j;

    if-nez p0, :cond_de

    sget-object p0, Lorg/bouncycastle/crypto/o;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/crypto/l;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_de
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "params should not be CryptoServicePurpose"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid parameter passed to IDEA init - "

    invoke-static {p1, p2}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->c(Ljava/lang/String;Lorg/bouncycastle/crypto/g;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public reset()V
    .registers 1

    return-void
.end method
