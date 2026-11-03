.class public final Ls0/c;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/w;
.implements Lm4/e;
.implements Lorg/bouncycastle/crypto/q0;


# static fields
.field public static final w:[B

.field public static final x:[I


# instance fields
.field public final g:[B

.field public final h:[I

.field public final i:[I

.field public final j:[I

.field public final k:[I

.field public final l:[B

.field public final m:Ljava/util/Stack;

.field public final n:I

.field public o:Z

.field public p:J

.field public q:I

.field public r:I

.field public s:I

.field public t:J

.field public u:I

.field public v:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_14

    sput-object v0, Ls0/c;->w:[B

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_20

    sput-object v0, Ls0/c;->x:[I

    return-void

    nop

    :array_14
    .array-data 1
        0x2t
        0x6t
        0x3t
        0xat
        0x7t
        0x0t
        0x4t
        0xdt
        0x1t
        0xbt
        0xct
        0x5t
        0x9t
        0xet
        0xft
        0x8t
    .end array-data

    :array_20
    .array-data 4
        0x6a09e667
        -0x4498517b
        0x3c6ef372
        -0x5ab00ac6
        0x510e527f
        -0x64fa9774
        0x1f83d9ab
        0x5be0cd19
    .end array-data
.end method

.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Ls0/c;->g:[B

    const/16 v0, 0x8

    new-array v1, v0, [I

    iput-object v1, p0, Ls0/c;->h:[I

    new-array v2, v0, [I

    iput-object v2, p0, Ls0/c;->i:[I

    const/16 v2, 0x10

    new-array v3, v2, [I

    iput-object v3, p0, Ls0/c;->j:[I

    new-array v3, v2, [I

    iput-object v3, p0, Ls0/c;->k:[I

    new-array v2, v2, [B

    iput-object v2, p0, Ls0/c;->l:[B

    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    iput-object v2, p0, Ls0/c;->m:Ljava/util/Stack;

    const/16 v2, 0x20

    iput v2, p0, Ls0/c;->n:I

    invoke-static {p0}, Ls0/o0;->a(Lorg/bouncycastle/crypto/v;)Lr0/a;

    invoke-static {}, Lorg/bouncycastle/crypto/o;->a()V

    invoke-virtual {p0}, Ls0/c;->reset()V

    sget-object v2, Ls0/c;->x:[I

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v3, p0, Ls0/c;->q:I

    return-void
.end method

.method public constructor <init>(Ls0/c;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Ls0/c;->g:[B

    const/16 v0, 0x8

    new-array v1, v0, [I

    iput-object v1, p0, Ls0/c;->h:[I

    new-array v0, v0, [I

    iput-object v0, p0, Ls0/c;->i:[I

    const/16 v0, 0x10

    new-array v1, v0, [I

    iput-object v1, p0, Ls0/c;->j:[I

    new-array v1, v0, [I

    iput-object v1, p0, Ls0/c;->k:[I

    new-array v0, v0, [B

    iput-object v0, p0, Ls0/c;->l:[B

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Ls0/c;->m:Ljava/util/Stack;

    iget v0, p1, Ls0/c;->n:I

    iput v0, p0, Ls0/c;->n:I

    invoke-virtual {p0, p1}, Ls0/c;->c(Lm4/e;)V

    return-void
.end method


# virtual methods
.method public final a()Lm4/e;
    .registers 2

    new-instance v0, Ls0/c;

    invoke-direct {v0, p0}, Ls0/c;-><init>(Ls0/c;)V

    return-object v0
.end method

.method public final b([BII)I
    .registers 15

    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_be

    iget-boolean v0, p0, Ls0/c;->o:Z

    iget-object v1, p0, Ls0/c;->i:[I

    const/16 v2, 0x8

    const/4 v3, 0x0

    iget-object v4, p0, Ls0/c;->g:[B

    if-nez v0, :cond_41

    iget v0, p0, Ls0/c;->v:I

    const/4 v5, 0x1

    invoke-virtual {p0, v0, v5}, Ls0/c;->f(IZ)V

    iget-object v0, p0, Ls0/c;->k:[I

    invoke-static {v3, v4, v0}, Lm4/d;->A(I[B[I)V

    invoke-virtual {p0}, Ls0/c;->d()V

    :goto_1d
    iget-object v5, p0, Ls0/c;->m:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_41

    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    invoke-static {v6, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v1, v3, v0, v2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Ls0/c;->g()V

    invoke-virtual {v5}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3d

    invoke-virtual {p0}, Ls0/c;->j()V

    :cond_3d
    invoke-virtual {p0}, Ls0/c;->d()V

    goto :goto_1d

    :cond_41
    if-ltz p3, :cond_b6

    iget-wide v5, p0, Ls0/c;->p:J

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-ltz v0, :cond_50

    int-to-long v7, p3

    cmp-long v0, v7, v5

    if-gtz v0, :cond_b6

    :cond_50
    iget v0, p0, Ls0/c;->v:I

    const/16 v5, 0x40

    if-ge v0, v5, :cond_6a

    rsub-int/lit8 v0, v0, 0x40

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v6, p0, Ls0/c;->v:I

    invoke-static {v4, v6, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v6, p0, Ls0/c;->v:I

    add-int/2addr v6, v0

    iput v6, p0, Ls0/c;->v:I

    add-int/2addr p2, v0

    sub-int v0, p3, v0

    goto :goto_6b

    :cond_6a
    move v0, p3

    :goto_6b
    if-lez v0, :cond_ac

    iget-wide v6, p0, Ls0/c;->t:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, p0, Ls0/c;->t:J

    iget-object v6, p0, Ls0/c;->j:[I

    invoke-static {v1, v3, v6, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v7, Ls0/c;->x:[I

    const/4 v8, 0x4

    invoke-static {v7, v3, v6, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-wide v7, p0, Ls0/c;->t:J

    long-to-int v9, v7

    const/16 v10, 0xc

    aput v9, v6, v10

    const/16 v9, 0x20

    shr-long/2addr v7, v9

    long-to-int v7, v7

    const/16 v8, 0xd

    aput v7, v6, v8

    const/16 v7, 0xe

    iget v8, p0, Ls0/c;->s:I

    aput v8, v6, v7

    const/16 v7, 0xf

    iget v8, p0, Ls0/c;->r:I

    aput v8, v6, v7

    invoke-virtual {p0}, Ls0/c;->d()V

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v4, v3, p1, p2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v7, p0, Ls0/c;->v:I

    add-int/2addr v7, v6

    iput v7, p0, Ls0/c;->v:I

    add-int/2addr p2, v6

    sub-int/2addr v0, v6

    goto :goto_6b

    :cond_ac
    iget-wide p1, p0, Ls0/c;->p:J

    int-to-long v0, p3

    sub-long/2addr p1, v0

    iput-wide p1, p0, Ls0/c;->p:J

    invoke-virtual {p0}, Ls0/c;->reset()V

    return p3

    :cond_b6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Insufficient bytes remaining"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_be
    new-instance p0, Lorg/bouncycastle/crypto/d0;

    const-string p1, "output buffer too short"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c(Lm4/e;)V
    .registers 6

    check-cast p1, Ls0/c;

    iget-wide v0, p1, Ls0/c;->t:J

    iput-wide v0, p0, Ls0/c;->t:J

    iget v0, p1, Ls0/c;->u:I

    iput v0, p0, Ls0/c;->u:I

    iget v0, p1, Ls0/c;->q:I

    iput v0, p0, Ls0/c;->q:I

    iget-boolean v0, p1, Ls0/c;->o:Z

    iput-boolean v0, p0, Ls0/c;->o:Z

    iget-wide v0, p1, Ls0/c;->p:J

    iput-wide v0, p0, Ls0/c;->p:J

    iget v0, p1, Ls0/c;->r:I

    iput v0, p0, Ls0/c;->r:I

    iget v0, p1, Ls0/c;->s:I

    iput v0, p0, Ls0/c;->s:I

    iget-object v0, p1, Ls0/c;->i:[I

    iget-object v1, p0, Ls0/c;->i:[I

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Ls0/c;->h:[I

    iget-object v1, p0, Ls0/c;->h:[I

    array-length v2, v1

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Ls0/c;->k:[I

    iget-object v1, p0, Ls0/c;->k:[I

    array-length v2, v1

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Ls0/c;->m:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    iget-object v1, p1, Ls0/c;->m:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_42
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    invoke-static {v2}, Lm4/d;->f([I)[I

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_42

    :cond_56
    iget-object v0, p1, Ls0/c;->g:[B

    iget-object v1, p0, Ls0/c;->g:[B

    array-length v2, v1

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p1, Ls0/c;->v:I

    iput p1, p0, Ls0/c;->v:I

    return-void
.end method

.method public final d()V
    .registers 9

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Ls0/c;->l:[B

    array-length v3, v2

    if-ge v1, v3, :cond_d

    aput-byte v1, v2, v1

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    goto :goto_2

    :cond_d
    move v1, v0

    :goto_e
    const/4 v3, 0x6

    invoke-virtual {p0}, Ls0/c;->i()V

    if-ge v1, v3, :cond_27

    move v3, v0

    :goto_15
    array-length v4, v2

    if-ge v3, v4, :cond_24

    sget-object v4, Ls0/c;->w:[B

    aget-byte v5, v2, v3

    aget-byte v4, v4, v5

    aput-byte v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    goto :goto_15

    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_27
    iget-boolean v1, p0, Ls0/c;->o:Z

    iget-object v2, p0, Ls0/c;->i:[I

    iget-object v3, p0, Ls0/c;->j:[I

    const/16 v4, 0x8

    if-eqz v1, :cond_4f

    move v1, v0

    :goto_32
    if-ge v1, v4, :cond_47

    aget v5, v3, v1

    add-int/lit8 v6, v1, 0x8

    aget v7, v3, v6

    xor-int/2addr v5, v7

    aput v5, v3, v1

    aget v5, v3, v6

    aget v7, v2, v1

    xor-int/2addr v5, v7

    aput v5, v3, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    :cond_47
    iget-object v1, p0, Ls0/c;->g:[B

    invoke-static {v1, v3}, Lm4/d;->y([B[I)V

    iput v0, p0, Ls0/c;->v:I

    return-void

    :cond_4f
    :goto_4f
    if-ge v0, v4, :cond_5d

    aget p0, v3, v0

    add-int/lit8 v1, v0, 0x8

    aget v1, v3, v1

    xor-int/2addr p0, v1

    aput p0, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4f

    :cond_5d
    return-void
.end method

.method public final doFinal([BI)I
    .registers 4

    iget v0, p0, Ls0/c;->n:I

    invoke-virtual {p0, p1, p2, v0}, Ls0/c;->b([BII)I

    return v0
.end method

.method public final e(I[B)V
    .registers 13

    const/16 v0, 0x40

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ls0/c;->f(IZ)V

    iget-object v0, p0, Ls0/c;->k:[I

    invoke-static {p1, p2, v0}, Lm4/d;->A(I[B[I)V

    invoke-virtual {p0}, Ls0/c;->d()V

    iget p1, p0, Ls0/c;->u:I

    if-nez p1, :cond_4b

    iget-wide p1, p0, Ls0/c;->t:J

    :goto_14
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    iget-object v3, p0, Ls0/c;->i:[I

    iget-object v4, p0, Ls0/c;->m:Ljava/util/Stack;

    const/16 v5, 0x8

    if-lez v2, :cond_3e

    const-wide/16 v6, 0x1

    and-long v8, p1, v6

    cmp-long v2, v8, v6

    if-nez v2, :cond_29

    goto :goto_3e

    :cond_29
    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    invoke-static {v2, v1, v0, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v3, v1, v0, v5, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Ls0/c;->g()V

    invoke-virtual {p0}, Ls0/c;->d()V

    const/4 v2, 0x1

    shr-long/2addr p1, v2

    goto :goto_14

    :cond_3e
    :goto_3e
    new-array p0, v5, [I

    array-length p1, v3

    invoke-static {p1, v5}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v3, v1, p0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v4, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4b
    return-void
.end method

.method public final f(IZ)V
    .registers 13

    iget v0, p0, Ls0/c;->u:I

    if-nez v0, :cond_7

    iget-object v0, p0, Ls0/c;->h:[I

    goto :goto_9

    :cond_7
    iget-object v0, p0, Ls0/c;->i:[I

    :goto_9
    const/4 v1, 0x0

    iget-object v2, p0, Ls0/c;->j:[I

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v0, Ls0/c;->x:[I

    const/4 v4, 0x4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-wide v3, p0, Ls0/c;->t:J

    long-to-int v0, v3

    const/16 v5, 0xc

    aput v0, v2, v5

    const/16 v0, 0x20

    shr-long v5, v3, v0

    long-to-int v0, v5

    const/16 v5, 0xd

    aput v0, v2, v5

    const/16 v0, 0xe

    aput p1, v2, v0

    iget v0, p0, Ls0/c;->q:I

    iget v5, p0, Ls0/c;->u:I

    if-nez v5, :cond_33

    const/4 v6, 0x1

    goto :goto_34

    :cond_33
    move v6, v1

    :goto_34
    add-int/2addr v0, v6

    const/4 v6, 0x2

    if-eqz p2, :cond_3a

    move v7, v6

    goto :goto_3b

    :cond_3a
    move v7, v1

    :goto_3b
    add-int/2addr v0, v7

    const/16 v7, 0xf

    aput v0, v2, v7

    add-int/2addr v5, p1

    iput v5, p0, Ls0/c;->u:I

    const/16 p1, 0x400

    if-lt v5, p1, :cond_52

    const-wide/16 v8, 0x1

    add-long/2addr v3, v8

    iput-wide v3, p0, Ls0/c;->t:J

    iput v1, p0, Ls0/c;->u:I

    or-int/lit8 p1, v0, 0x2

    aput p1, v2, v7

    :cond_52
    if-eqz p2, :cond_5f

    iget-object p1, p0, Ls0/c;->m:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5f

    invoke-virtual {p0}, Ls0/c;->j()V

    :cond_5f
    return-void
.end method

.method public final g()V
    .registers 6

    iget-object v0, p0, Ls0/c;->h:[I

    const/4 v1, 0x0

    iget-object v2, p0, Ls0/c;->j:[I

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v0, Ls0/c;->x:[I

    const/4 v4, 0x4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0xc

    aput v1, v2, v0

    const/16 v0, 0xd

    aput v1, v2, v0

    const/16 v0, 0xe

    const/16 v1, 0x40

    aput v1, v2, v0

    iget p0, p0, Ls0/c;->q:I

    or-int/2addr p0, v4

    const/16 v0, 0xf

    aput p0, v2, v0

    return-void
.end method

.method public final getAlgorithmName()Ljava/lang/String;
    .registers 1

    const-string p0, "BLAKE3"

    return-object p0
.end method

.method public final getByteLength()I
    .registers 1

    const/16 p0, 0x40

    return p0
.end method

.method public final getDigestSize()I
    .registers 1

    iget p0, p0, Ls0/c;->n:I

    return p0
.end method

.method public final h(IIIII)V
    .registers 11

    shl-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Ls0/c;->j:[I

    aget v1, v0, p2

    aget v2, v0, p3

    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Ls0/c;->l:[B

    aget-byte p1, v4, p1

    iget-object p0, p0, Ls0/c;->k:[I

    aget p1, p0, p1

    add-int/2addr v2, p1

    add-int/2addr v2, v1

    aput v2, v0, p2

    aget p1, v0, p5

    xor-int/2addr p1, v2

    const/16 v1, 0x10

    invoke-static {p1, v1}, Ljava/lang/Integer;->rotateRight(II)I

    move-result p1

    aput p1, v0, p5

    aget v1, v0, p4

    add-int/2addr v1, p1

    aput v1, v0, p4

    aget p1, v0, p3

    xor-int/2addr p1, v1

    const/16 v1, 0xc

    invoke-static {p1, v1}, Ljava/lang/Integer;->rotateRight(II)I

    move-result p1

    aput p1, v0, p3

    aget v1, v0, p2

    aget-byte v2, v4, v3

    aget p0, p0, v2

    add-int/2addr p1, p0

    add-int/2addr p1, v1

    aput p1, v0, p2

    aget p0, v0, p5

    xor-int/2addr p0, p1

    const/16 p1, 0x8

    invoke-static {p0, p1}, Ljava/lang/Integer;->rotateRight(II)I

    move-result p0

    aput p0, v0, p5

    aget p1, v0, p4

    add-int/2addr p1, p0

    aput p1, v0, p4

    aget p0, v0, p3

    xor-int/2addr p0, p1

    const/4 p1, 0x7

    invoke-static {p0, p1}, Ljava/lang/Integer;->rotateRight(II)I

    move-result p0

    aput p0, v0, p3

    return-void
.end method

.method public final i()V
    .registers 13

    const/16 v4, 0x8

    const/16 v5, 0xc

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ls0/c;->h(IIIII)V

    move-object v6, v0

    const/16 v10, 0x9

    const/16 v11, 0xd

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x5

    invoke-virtual/range {v6 .. v11}, Ls0/c;->h(IIIII)V

    const/16 v10, 0xa

    const/16 v11, 0xe

    const/4 v7, 0x2

    const/4 v8, 0x2

    const/4 v9, 0x6

    invoke-virtual/range {v6 .. v11}, Ls0/c;->h(IIIII)V

    const/16 v10, 0xb

    const/16 v11, 0xf

    const/4 v7, 0x3

    const/4 v8, 0x3

    const/4 v9, 0x7

    invoke-virtual/range {v6 .. v11}, Ls0/c;->h(IIIII)V

    const/16 v10, 0xa

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v9, 0x5

    invoke-virtual/range {v6 .. v11}, Ls0/c;->h(IIIII)V

    const/16 v10, 0xb

    const/16 v11, 0xc

    const/4 v7, 0x5

    const/4 v8, 0x1

    const/4 v9, 0x6

    invoke-virtual/range {v6 .. v11}, Ls0/c;->h(IIIII)V

    const/16 v10, 0x8

    const/16 v11, 0xd

    const/4 v7, 0x6

    const/4 v8, 0x2

    const/4 v9, 0x7

    invoke-virtual/range {v6 .. v11}, Ls0/c;->h(IIIII)V

    const/16 v10, 0x9

    const/16 v11, 0xe

    const/4 v7, 0x7

    const/4 v8, 0x3

    const/4 v9, 0x4

    invoke-virtual/range {v6 .. v11}, Ls0/c;->h(IIIII)V

    return-void
.end method

.method public final j()V
    .registers 5

    iget-object v0, p0, Ls0/c;->j:[I

    const/16 v1, 0xf

    aget v2, v0, v1

    const/16 v3, 0x8

    or-int/2addr v2, v3

    aput v2, v0, v1

    iput v2, p0, Ls0/c;->r:I

    const/16 v1, 0xe

    aget v1, v0, v1

    iput v1, p0, Ls0/c;->s:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Ls0/c;->t:J

    const/4 v1, 0x1

    iput-boolean v1, p0, Ls0/c;->o:Z

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Ls0/c;->p:J

    const/4 v1, 0x0

    iget-object p0, p0, Ls0/c;->i:[I

    invoke-static {v0, v1, p0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final reset()V
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ls0/c;->t:J

    const/4 v0, 0x0

    iput v0, p0, Ls0/c;->u:I

    iput v0, p0, Ls0/c;->v:I

    iput-boolean v0, p0, Ls0/c;->o:Z

    iget-object p0, p0, Ls0/c;->g:[B

    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([BB)V

    return-void
.end method

.method public final update(B)V
    .registers 5

    iget-boolean v0, p0, Ls0/c;->o:Z

    if-nez v0, :cond_1e

    iget-object v0, p0, Ls0/c;->g:[B

    array-length v1, v0

    iget v2, p0, Ls0/c;->v:I

    sub-int/2addr v1, v2

    if-nez v1, :cond_15

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ls0/c;->e(I[B)V

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    iput v1, p0, Ls0/c;->v:I

    :cond_15
    iget v1, p0, Ls0/c;->v:I

    aput-byte p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ls0/c;->v:I

    return-void

    :cond_1e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Already outputting"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final update([BII)V
    .registers 8

    if-eqz p1, :cond_4a

    if-nez p3, :cond_5

    goto :goto_4a

    :cond_5
    iget-boolean v0, p0, Ls0/c;->o:Z

    if-nez v0, :cond_42

    iget v0, p0, Ls0/c;->v:I

    iget-object v1, p0, Ls0/c;->g:[B

    const/4 v2, 0x0

    if-eqz v0, :cond_29

    rsub-int/lit8 v3, v0, 0x40

    if-lt v3, p3, :cond_1d

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Ls0/c;->v:I

    add-int/2addr p1, p3

    iput p1, p0, Ls0/c;->v:I

    return-void

    :cond_1d
    invoke-static {p1, p2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v2, v1}, Ls0/c;->e(I[B)V

    iput v2, p0, Ls0/c;->v:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([BB)V

    goto :goto_2a

    :cond_29
    move v3, v2

    :goto_2a
    add-int v0, p2, p3

    add-int/lit8 v0, v0, -0x40

    add-int/2addr v3, p2

    :goto_2f
    if-ge v3, v0, :cond_37

    invoke-virtual {p0, v3, p1}, Ls0/c;->e(I[B)V

    add-int/lit8 v3, v3, 0x40

    goto :goto_2f

    :cond_37
    sub-int/2addr p3, v3

    add-int/2addr p3, p2

    invoke-static {p1, v3, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Ls0/c;->v:I

    add-int/2addr p1, p3

    iput p1, p0, Ls0/c;->v:I

    return-void

    :cond_42
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Already outputting"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4a
    :goto_4a
    return-void
.end method
