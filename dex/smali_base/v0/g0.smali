.class public final Lv0/g0;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/d;


# instance fields
.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:Z

.field public l:Z


# direct methods
.method public static a(I[B)I
    .registers 5

    add-int/lit8 v0, p0, 0x1

    aget-byte v1, p1, p0

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v2, p0, 0x2

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p0, p0, 0x3

    aget-byte v1, p1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    aget-byte p0, p1, p0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method public static d([BII)V
    .registers 6

    add-int/lit8 v0, p2, 0x1

    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p0, p2

    add-int/lit8 v1, p2, 0x2

    ushr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    add-int/lit8 p2, p2, 0x3

    ushr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    int-to-byte p1, p1

    aput-byte p1, p0, p2

    return-void
.end method


# virtual methods
.method public final b(II[B[B)I
    .registers 13

    iget-boolean v0, p0, Lv0/g0;->k:Z

    if-eqz v0, :cond_9c

    add-int/lit8 v0, p1, 0x8

    array-length v1, p3

    if-gt v0, v1, :cond_94

    add-int/lit8 v0, p2, 0x8

    array-length v1, p4

    if-gt v0, v1, :cond_8c

    iget-boolean v0, p0, Lv0/g0;->l:Z

    const v1, 0x61c88647

    const/16 v2, 0x20

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz v0, :cond_52

    invoke-static {p1, p3}, Lv0/g0;->a(I[B)I

    move-result v0

    add-int/lit8 p1, p1, 0x4

    invoke-static {p1, p3}, Lv0/g0;->a(I[B)I

    move-result p1

    move p3, v3

    :goto_25
    if-eq v3, v2, :cond_49

    sub-int/2addr p3, v1

    shl-int/lit8 v5, p1, 0x4

    iget v6, p0, Lv0/g0;->g:I

    add-int/2addr v5, v6

    add-int v6, p1, p3

    xor-int/2addr v5, v6

    ushr-int/lit8 v6, p1, 0x5

    iget v7, p0, Lv0/g0;->h:I

    add-int/2addr v6, v7

    xor-int/2addr v5, v6

    add-int/2addr v0, v5

    shl-int/lit8 v5, v0, 0x4

    iget v6, p0, Lv0/g0;->i:I

    add-int/2addr v5, v6

    add-int v6, v0, p3

    xor-int/2addr v5, v6

    ushr-int/lit8 v6, v0, 0x5

    iget v7, p0, Lv0/g0;->j:I

    add-int/2addr v6, v7

    xor-int/2addr v5, v6

    add-int/2addr p1, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    :cond_49
    invoke-static {p4, v0, p2}, Lv0/g0;->d([BII)V

    add-int/lit8 p2, p2, 0x4

    invoke-static {p4, p1, p2}, Lv0/g0;->d([BII)V

    return v4

    :cond_52
    invoke-static {p1, p3}, Lv0/g0;->a(I[B)I

    move-result v0

    add-int/lit8 p1, p1, 0x4

    invoke-static {p1, p3}, Lv0/g0;->a(I[B)I

    move-result p1

    const p3, -0x3910c8e0

    :goto_5f
    if-eq v3, v2, :cond_83

    shl-int/lit8 v5, v0, 0x4

    iget v6, p0, Lv0/g0;->i:I

    add-int/2addr v5, v6

    add-int v6, v0, p3

    xor-int/2addr v5, v6

    ushr-int/lit8 v6, v0, 0x5

    iget v7, p0, Lv0/g0;->j:I

    add-int/2addr v6, v7

    xor-int/2addr v5, v6

    sub-int/2addr p1, v5

    shl-int/lit8 v5, p1, 0x4

    iget v6, p0, Lv0/g0;->g:I

    add-int/2addr v5, v6

    add-int v6, p1, p3

    xor-int/2addr v5, v6

    ushr-int/lit8 v6, p1, 0x5

    iget v7, p0, Lv0/g0;->h:I

    add-int/2addr v6, v7

    xor-int/2addr v5, v6

    sub-int/2addr v0, v5

    add-int/2addr p3, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_5f

    :cond_83
    invoke-static {p4, v0, p2}, Lv0/g0;->d([BII)V

    add-int/lit8 p2, p2, 0x4

    invoke-static {p4, p1, p2}, Lv0/g0;->d([BII)V

    return v4

    :cond_8c
    new-instance p0, Lorg/bouncycastle/crypto/d0;

    const-string p1, "output buffer too short"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_94
    new-instance p0, Lorg/bouncycastle/crypto/q;

    const-string p1, "input buffer too short"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "TEA not initialised"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c()I
    .registers 1

    const/16 p0, 0x8

    return p0
.end method

.method public final getAlgorithmName()Ljava/lang/String;
    .registers 1

    const-string p0, "TEA"

    return-object p0
.end method

.method public final init(ZLorg/bouncycastle/crypto/g;)V
    .registers 5

    instance-of v0, p2, Le1/o0;

    if-eqz v0, :cond_51

    iput-boolean p1, p0, Lv0/g0;->l:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lv0/g0;->k:Z

    move-object p1, p2

    check-cast p1, Le1/o0;

    iget-object p1, p1, Le1/o0;->c:[B

    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_49

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lv0/g0;->a(I[B)I

    move-result v0

    iput v0, p0, Lv0/g0;->g:I

    const/4 v0, 0x4

    invoke-static {v0, p1}, Lv0/g0;->a(I[B)I

    move-result v0

    iput v0, p0, Lv0/g0;->h:I

    const/16 v0, 0x8

    invoke-static {v0, p1}, Lv0/g0;->a(I[B)I

    move-result v0

    iput v0, p0, Lv0/g0;->i:I

    const/16 v0, 0xc

    invoke-static {v0, p1}, Lv0/g0;->a(I[B)I

    move-result p1

    iput p1, p0, Lv0/g0;->j:I

    instance-of p0, p2, Lorg/bouncycastle/crypto/j;

    if-nez p0, :cond_41

    sget-object p0, Lorg/bouncycastle/crypto/o;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/crypto/l;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_41
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "params should not be CryptoServicePurpose"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_49
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Key size must be 128 bits."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_51
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid parameter passed to TEA init - "

    invoke-static {p1, p2}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->c(Ljava/lang/String;Lorg/bouncycastle/crypto/g;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final reset()V
    .registers 1

    return-void
.end method
