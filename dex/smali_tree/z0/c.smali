.class public final Lz0/c;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/b0;


# instance fields
.field public g:I

.field public h:[B

.field public final i:[B

.field public j:Z

.field public k:[I

.field public l:[B

.field public final m:[B


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz0/c;->j:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lz0/c;->k:[I

    iput-object v0, p0, Lz0/c;->l:[B

    const/16 v0, 0x80

    new-array v0, v0, [B

    fill-array-data v0, :array_22

    iput-object v0, p0, Lz0/c;->m:[B

    const/16 v0, 0x8

    new-array v1, v0, [B

    iput-object v1, p0, Lz0/c;->i:[B

    new-array v0, v0, [B

    iput-object v0, p0, Lz0/c;->h:[B

    const/4 v0, 0x0

    iput v0, p0, Lz0/c;->g:I

    return-void

    :array_22
    .array-data 1
        0x9t
        0x6t
        0x3t
        0x2t
        0x8t
        0xbt
        0x1t
        0x7t
        0xat
        0x4t
        0xet
        0xft
        0xct
        0x0t
        0xdt
        0x5t
        0x3t
        0x7t
        0xet
        0x9t
        0x8t
        0xat
        0xft
        0x0t
        0x5t
        0x2t
        0x6t
        0xct
        0xbt
        0x4t
        0xdt
        0x1t
        0xet
        0x4t
        0x6t
        0x2t
        0xbt
        0x3t
        0xdt
        0x8t
        0xct
        0xft
        0x5t
        0xat
        0x0t
        0x7t
        0x1t
        0x9t
        0xet
        0x7t
        0xat
        0xct
        0xdt
        0x1t
        0x3t
        0x9t
        0x0t
        0x2t
        0xbt
        0x4t
        0xft
        0x8t
        0x5t
        0x6t
        0xbt
        0x5t
        0x1t
        0x9t
        0x8t
        0xdt
        0xft
        0x0t
        0xet
        0x4t
        0x2t
        0x3t
        0xct
        0x7t
        0xat
        0x6t
        0x3t
        0xat
        0xdt
        0xct
        0x1t
        0x2t
        0x0t
        0xbt
        0x7t
        0x5t
        0x9t
        0x4t
        0x8t
        0xft
        0xet
        0x6t
        0x1t
        0xdt
        0x2t
        0x9t
        0x7t
        0xat
        0x6t
        0x0t
        0x8t
        0xct
        0x4t
        0x5t
        0xft
        0x3t
        0xbt
        0xet
        0xbt
        0xat
        0xft
        0x5t
        0x0t
        0xct
        0xet
        0x8t
        0x6t
        0x2t
        0x3t
        0x9t
        0x1t
        0x7t
        0xdt
        0x4t
    .end array-data
.end method

.method public static a(I[B[B[B)V
    .registers 7

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x8

    if-ge v0, v1, :cond_12

    add-int v1, p0, v0

    aget-byte v1, p1, v1

    aget-byte v2, p2, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_12
    return-void
.end method


# virtual methods
.method public final b([I[B[B)V
    .registers 15

    const/4 v0, 0x0

    invoke-static {v0, p2}, Lm4/d;->z(I[B)I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v2, p2}, Lm4/d;->z(I[B)I

    move-result p2

    move v3, v0

    :goto_b
    const/4 v4, 0x2

    if-ge v3, v4, :cond_77

    move v4, v0

    :goto_f
    const/16 v5, 0x8

    if-ge v4, v5, :cond_74

    aget v6, p1, v4

    add-int/2addr v6, v1

    and-int/lit8 v7, v6, 0xf

    iget-object v8, p0, Lz0/c;->m:[B

    aget-byte v7, v8, v7

    shr-int/lit8 v9, v6, 0x4

    and-int/lit8 v9, v9, 0xf

    add-int/lit8 v9, v9, 0x10

    aget-byte v9, v8, v9

    shl-int/2addr v9, v2

    add-int/2addr v7, v9

    shr-int/lit8 v9, v6, 0x8

    and-int/lit8 v9, v9, 0xf

    add-int/lit8 v9, v9, 0x20

    aget-byte v9, v8, v9

    shl-int/lit8 v5, v9, 0x8

    add-int/2addr v7, v5

    shr-int/lit8 v5, v6, 0xc

    and-int/lit8 v5, v5, 0xf

    add-int/lit8 v5, v5, 0x30

    aget-byte v5, v8, v5

    shl-int/lit8 v5, v5, 0xc

    add-int/2addr v7, v5

    shr-int/lit8 v5, v6, 0x10

    and-int/lit8 v5, v5, 0xf

    add-int/lit8 v5, v5, 0x40

    aget-byte v5, v8, v5

    shl-int/lit8 v5, v5, 0x10

    add-int/2addr v7, v5

    shr-int/lit8 v5, v6, 0x14

    and-int/lit8 v5, v5, 0xf

    add-int/lit8 v5, v5, 0x50

    aget-byte v5, v8, v5

    shl-int/lit8 v5, v5, 0x14

    add-int/2addr v7, v5

    shr-int/lit8 v5, v6, 0x18

    and-int/lit8 v5, v5, 0xf

    add-int/lit8 v5, v5, 0x60

    aget-byte v5, v8, v5

    shl-int/lit8 v5, v5, 0x18

    add-int/2addr v7, v5

    shr-int/lit8 v5, v6, 0x1c

    and-int/lit8 v5, v5, 0xf

    add-int/lit8 v5, v5, 0x70

    aget-byte v5, v8, v5

    shl-int/lit8 v5, v5, 0x1c

    add-int/2addr v7, v5

    shl-int/lit8 v5, v7, 0xb

    ushr-int/lit8 v6, v7, 0x15

    or-int/2addr v5, v6

    xor-int/2addr p2, v5

    add-int/lit8 v4, v4, 0x1

    move v10, v1

    move v1, p2

    move p2, v10

    goto :goto_f

    :cond_74
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_77
    invoke-static {p3, v1, v0}, Lm4/d;->x([BII)V

    invoke-static {p3, p2, v2}, Lm4/d;->x([BII)V

    return-void
.end method

.method public final c(Lorg/bouncycastle/crypto/g;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    :cond_3
    instance-of v0, p1, Le1/u0;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    check-cast p1, Le1/u0;

    iget-object v0, p1, Le1/u0;->d:[B

    iget-object v2, p0, Lz0/c;->m:[B

    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p1, Le1/u0;->c:Lorg/bouncycastle/crypto/g;

    goto :goto_51

    :cond_15
    instance-of v0, p1, Le1/o0;

    if-eqz v0, :cond_3f

    check-cast p1, Le1/o0;

    iget-object p1, p1, Le1/o0;->c:[B

    array-length v0, p1

    const/16 v2, 0x20

    if-ne v0, v2, :cond_37

    const/16 v0, 0x8

    new-array v2, v0, [I

    :goto_26
    if-eq v1, v0, :cond_33

    mul-int/lit8 v3, v1, 0x4

    invoke-static {v3, p1}, Lm4/d;->z(I[B)I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    :cond_33
    iput-object v2, p0, Lz0/c;->k:[I

    const/4 p1, 0x0

    goto :goto_51

    :cond_37
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Key length invalid. Key needs to be 32 byte - 256 bit!!!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3f
    instance-of v0, p1, Le1/s0;

    if-eqz v0, :cond_55

    check-cast p1, Le1/s0;

    iget-object v0, p1, Le1/s0;->c:[B

    iget-object v2, p0, Lz0/c;->i:[B

    array-length v3, v2

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lz0/c;->l:[B

    iget-object p1, p1, Le1/s0;->d:Lorg/bouncycastle/crypto/g;

    :goto_51
    invoke-virtual {p0, p1}, Lz0/c;->c(Lorg/bouncycastle/crypto/g;)V

    return-void

    :cond_55
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid parameter passed to GOST28147 init - "

    invoke-static {v0, p1}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->c(Ljava/lang/String;Lorg/bouncycastle/crypto/g;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final doFinal([BI)I
    .registers 8

    :goto_0
    iget v0, p0, Lz0/c;->g:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ge v0, v1, :cond_10

    iget-object v1, p0, Lz0/c;->h:[B

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lz0/c;->g:I

    goto :goto_0

    :cond_10
    iget-object v0, p0, Lz0/c;->h:[B

    array-length v1, v0

    new-array v1, v1, [B

    iget-boolean v3, p0, Lz0/c;->j:Z

    iget-object v4, p0, Lz0/c;->i:[B

    if-eqz v3, :cond_22

    iput-boolean v2, p0, Lz0/c;->j:Z

    array-length v3, v4

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_25

    :cond_22
    invoke-static {v2, v0, v4, v1}, Lz0/c;->a(I[B[B[B)V

    :goto_25
    iget-object v0, p0, Lz0/c;->k:[I

    invoke-virtual {p0, v0, v1, v4}, Lz0/c;->b([I[B[B)V

    array-length v0, v4

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x4

    sub-int/2addr v0, v1

    invoke-static {v4, v0, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Lz0/c;->reset()V

    return v1
.end method

.method public final getAlgorithmName()Ljava/lang/String;
    .registers 1

    const-string p0, "GOST28147Mac"

    return-object p0
.end method

.method public final getMacSize()I
    .registers 1

    const/4 p0, 0x4

    return p0
.end method

.method public final init(Lorg/bouncycastle/crypto/g;)V
    .registers 3

    invoke-virtual {p0}, Lz0/c;->reset()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lz0/c;->h:[B

    const/4 v0, 0x0

    iput-object v0, p0, Lz0/c;->l:[B

    invoke-virtual {p0, p1}, Lz0/c;->c(Lorg/bouncycastle/crypto/g;)V

    instance-of p0, p1, Lorg/bouncycastle/crypto/j;

    if-nez p0, :cond_1f

    sget-object p0, Lorg/bouncycastle/crypto/o;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/crypto/l;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_1f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "params should not be CryptoServicePurpose"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final reset()V
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lz0/c;->h:[B

    array-length v3, v2

    if-ge v1, v3, :cond_c

    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_c
    iput v0, p0, Lz0/c;->g:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz0/c;->j:Z

    return-void
.end method

.method public final update(B)V
    .registers 7

    iget v0, p0, Lz0/c;->g:I

    iget-object v1, p0, Lz0/c;->h:[B

    array-length v2, v1

    if-ne v0, v2, :cond_2a

    array-length v0, v1

    new-array v0, v0, [B

    iget-boolean v2, p0, Lz0/c;->j:Z

    iget-object v3, p0, Lz0/c;->i:[B

    const/4 v4, 0x0

    if-eqz v2, :cond_20

    iput-boolean v4, p0, Lz0/c;->j:Z

    iget-object v2, p0, Lz0/c;->l:[B

    if-eqz v2, :cond_1b

    invoke-static {v4, v1, v2, v0}, Lz0/c;->a(I[B[B[B)V

    goto :goto_23

    :cond_1b
    array-length v2, v3

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_23

    :cond_20
    invoke-static {v4, v1, v3, v0}, Lz0/c;->a(I[B[B[B)V

    :goto_23
    iget-object v1, p0, Lz0/c;->k:[I

    invoke-virtual {p0, v1, v0, v3}, Lz0/c;->b([I[B[B)V

    iput v4, p0, Lz0/c;->g:I

    :cond_2a
    iget-object v0, p0, Lz0/c;->h:[B

    iget v1, p0, Lz0/c;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lz0/c;->g:I

    aput-byte p1, v0, v1

    return-void
.end method

.method public final update([BII)V
    .registers 10

    if-ltz p3, :cond_52

    iget v0, p0, Lz0/c;->g:I

    rsub-int/lit8 v1, v0, 0x8

    if-le p3, v1, :cond_45

    iget-object v2, p0, Lz0/c;->h:[B

    invoke-static {p1, p2, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lz0/c;->h:[B

    array-length v2, v0

    new-array v2, v2, [B

    iget-boolean v3, p0, Lz0/c;->j:Z

    iget-object v4, p0, Lz0/c;->i:[B

    const/4 v5, 0x0

    if-eqz v3, :cond_28

    iput-boolean v5, p0, Lz0/c;->j:Z

    iget-object v3, p0, Lz0/c;->l:[B

    if-eqz v3, :cond_23

    invoke-static {v5, v0, v3, v2}, Lz0/c;->a(I[B[B[B)V

    goto :goto_2b

    :cond_23
    array-length v3, v4

    invoke-static {v0, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2b

    :cond_28
    invoke-static {v5, v0, v4, v2}, Lz0/c;->a(I[B[B[B)V

    :goto_2b
    iget-object v0, p0, Lz0/c;->k:[I

    invoke-virtual {p0, v0, v2, v4}, Lz0/c;->b([I[B[B)V

    iput v5, p0, Lz0/c;->g:I

    sub-int/2addr p3, v1

    add-int/2addr p2, v1

    :goto_34
    const/16 v0, 0x8

    if-le p3, v0, :cond_45

    invoke-static {p2, p1, v4, v2}, Lz0/c;->a(I[B[B[B)V

    iget-object v0, p0, Lz0/c;->k:[I

    invoke-virtual {p0, v0, v2, v4}, Lz0/c;->b([I[B[B)V

    add-int/lit8 p3, p3, -0x8

    add-int/lit8 p2, p2, 0x8

    goto :goto_34

    :cond_45
    iget-object v0, p0, Lz0/c;->h:[B

    iget v1, p0, Lz0/c;->g:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lz0/c;->g:I

    add-int/2addr p1, p3

    iput p1, p0, Lz0/c;->g:I

    return-void

    :cond_52
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t have a negative input length!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
