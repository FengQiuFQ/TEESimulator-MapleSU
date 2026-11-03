.class public final Ls0/f;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/w;
.implements Lm4/e;


# static fields
.field public static final z:[B


# instance fields
.field public final g:Lorg/bouncycastle/crypto/j;

.field public final h:[B

.field public final i:[B

.field public final j:[B

.field public final k:[B

.field public final l:[[B

.field public final m:[B

.field public n:I

.field public o:J

.field public final p:Lv0/p;

.field public q:[B

.field public final r:[B

.field public final s:[B

.field public final t:[S

.field public final u:[S

.field public final v:[B

.field public final w:[B

.field public x:[B

.field public final y:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Ls0/f;->z:[B

    return-void

    :array_a
    .array-data 1
        0x0t
        -0x1t
        0x0t
        -0x1t
        0x0t
        -0x1t
        0x0t
        -0x1t
        -0x1t
        0x0t
        -0x1t
        0x0t
        -0x1t
        0x0t
        -0x1t
        0x0t
        0x0t
        -0x1t
        -0x1t
        0x0t
        -0x1t
        0x0t
        0x0t
        -0x1t
        -0x1t
        0x0t
        0x0t
        0x0t
        -0x1t
        -0x1t
        0x0t
        -0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    sget-object v0, Lorg/bouncycastle/crypto/j;->d:Lorg/bouncycastle/crypto/j;

    invoke-direct {p0, v0}, Ls0/f;-><init>(Lorg/bouncycastle/crypto/j;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/j;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v1, v0, [B

    iput-object v1, p0, Ls0/f;->h:[B

    new-array v1, v0, [B

    iput-object v1, p0, Ls0/f;->i:[B

    new-array v1, v0, [B

    iput-object v1, p0, Ls0/f;->j:[B

    new-array v1, v0, [B

    iput-object v1, p0, Ls0/f;->k:[B

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x1

    aput v0, v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    aput v4, v1, v3

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    iput-object v1, p0, Ls0/f;->l:[[B

    new-array v1, v0, [B

    iput-object v1, p0, Ls0/f;->m:[B

    new-instance v1, Lv0/p;

    invoke-direct {v1}, Lv0/p;-><init>()V

    iput-object v1, p0, Ls0/f;->p:Lv0/p;

    new-array v3, v0, [B

    iput-object v3, p0, Ls0/f;->r:[B

    const/16 v3, 0x8

    new-array v3, v3, [B

    iput-object v3, p0, Ls0/f;->s:[B

    const/16 v3, 0x10

    new-array v4, v3, [S

    iput-object v4, p0, Ls0/f;->t:[S

    new-array v3, v3, [S

    iput-object v3, p0, Ls0/f;->u:[S

    new-array v3, v0, [B

    iput-object v3, p0, Ls0/f;->v:[B

    new-array v3, v0, [B

    iput-object v3, p0, Ls0/f;->w:[B

    new-array v3, v0, [B

    iput-object v3, p0, Ls0/f;->x:[B

    new-array v0, v0, [B

    iput-object v0, p0, Ls0/f;->y:[B

    iput-object p1, p0, Ls0/f;->g:Lorg/bouncycastle/crypto/j;

    invoke-static {p0}, Ls0/o0;->a(Lorg/bouncycastle/crypto/v;)Lr0/a;

    invoke-static {}, Lorg/bouncycastle/crypto/o;->a()V

    const-string p1, "D-A"

    invoke-static {p1}, Lv0/p;->f(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Ls0/f;->q:[B

    new-instance v0, Le1/u0;

    const/4 v3, 0x0

    invoke-direct {v0, v3, p1}, Le1/u0;-><init>(Lorg/bouncycastle/crypto/g;[B)V

    invoke-virtual {v1, v2, v0}, Lv0/p;->init(ZLorg/bouncycastle/crypto/g;)V

    invoke-virtual {p0}, Ls0/f;->reset()V

    return-void
.end method

.method public constructor <init>(Ls0/f;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v1, v0, [B

    iput-object v1, p0, Ls0/f;->h:[B

    new-array v1, v0, [B

    iput-object v1, p0, Ls0/f;->i:[B

    new-array v1, v0, [B

    iput-object v1, p0, Ls0/f;->j:[B

    new-array v1, v0, [B

    iput-object v1, p0, Ls0/f;->k:[B

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x1

    aput v0, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x4

    aput v3, v1, v2

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    iput-object v1, p0, Ls0/f;->l:[[B

    new-array v1, v0, [B

    iput-object v1, p0, Ls0/f;->m:[B

    new-instance v1, Lv0/p;

    invoke-direct {v1}, Lv0/p;-><init>()V

    iput-object v1, p0, Ls0/f;->p:Lv0/p;

    new-array v1, v0, [B

    iput-object v1, p0, Ls0/f;->r:[B

    const/16 v1, 0x8

    new-array v1, v1, [B

    iput-object v1, p0, Ls0/f;->s:[B

    const/16 v1, 0x10

    new-array v2, v1, [S

    iput-object v2, p0, Ls0/f;->t:[S

    new-array v1, v1, [S

    iput-object v1, p0, Ls0/f;->u:[S

    new-array v1, v0, [B

    iput-object v1, p0, Ls0/f;->v:[B

    new-array v1, v0, [B

    iput-object v1, p0, Ls0/f;->w:[B

    new-array v1, v0, [B

    iput-object v1, p0, Ls0/f;->x:[B

    new-array v0, v0, [B

    iput-object v0, p0, Ls0/f;->y:[B

    iget-object v0, p1, Ls0/f;->g:Lorg/bouncycastle/crypto/j;

    iput-object v0, p0, Ls0/f;->g:Lorg/bouncycastle/crypto/j;

    invoke-static {p0}, Ls0/o0;->a(Lorg/bouncycastle/crypto/v;)Lr0/a;

    invoke-static {}, Lorg/bouncycastle/crypto/o;->a()V

    invoke-virtual {p0, p1}, Ls0/f;->c(Lm4/e;)V

    return-void
.end method

.method public constructor <init>([B)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v1, v0, [B

    iput-object v1, p0, Ls0/f;->h:[B

    new-array v1, v0, [B

    iput-object v1, p0, Ls0/f;->i:[B

    new-array v1, v0, [B

    iput-object v1, p0, Ls0/f;->j:[B

    new-array v1, v0, [B

    iput-object v1, p0, Ls0/f;->k:[B

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x1

    aput v0, v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    aput v4, v1, v3

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    iput-object v1, p0, Ls0/f;->l:[[B

    new-array v1, v0, [B

    iput-object v1, p0, Ls0/f;->m:[B

    new-instance v1, Lv0/p;

    invoke-direct {v1}, Lv0/p;-><init>()V

    iput-object v1, p0, Ls0/f;->p:Lv0/p;

    new-array v3, v0, [B

    iput-object v3, p0, Ls0/f;->r:[B

    const/16 v3, 0x8

    new-array v3, v3, [B

    iput-object v3, p0, Ls0/f;->s:[B

    const/16 v3, 0x10

    new-array v4, v3, [S

    iput-object v4, p0, Ls0/f;->t:[S

    new-array v3, v3, [S

    iput-object v3, p0, Ls0/f;->u:[S

    new-array v3, v0, [B

    iput-object v3, p0, Ls0/f;->v:[B

    new-array v3, v0, [B

    iput-object v3, p0, Ls0/f;->w:[B

    new-array v3, v0, [B

    iput-object v3, p0, Ls0/f;->x:[B

    new-array v0, v0, [B

    iput-object v0, p0, Ls0/f;->y:[B

    sget-object v0, Lorg/bouncycastle/crypto/j;->d:Lorg/bouncycastle/crypto/j;

    iput-object v0, p0, Ls0/f;->g:Lorg/bouncycastle/crypto/j;

    invoke-static {p0}, Ls0/o0;->a(Lorg/bouncycastle/crypto/v;)Lr0/a;

    invoke-static {}, Lorg/bouncycastle/crypto/o;->a()V

    invoke-static {p1}, Lm4/d;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Ls0/f;->q:[B

    new-instance v0, Le1/u0;

    const/4 v3, 0x0

    invoke-direct {v0, v3, p1}, Le1/u0;-><init>(Lorg/bouncycastle/crypto/g;[B)V

    invoke-virtual {v1, v2, v0}, Lv0/p;->init(ZLorg/bouncycastle/crypto/g;)V

    invoke-virtual {p0}, Ls0/f;->reset()V

    return-void
.end method


# virtual methods
.method public final a()Lm4/e;
    .registers 2

    new-instance v0, Ls0/f;

    invoke-direct {v0, p0}, Ls0/f;-><init>(Ls0/f;)V

    return-object v0
.end method

.method public final c(Lm4/e;)V
    .registers 8

    check-cast p1, Ls0/f;

    iget-object v0, p1, Ls0/f;->q:[B

    iput-object v0, p0, Ls0/f;->q:[B

    new-instance v1, Le1/u0;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Le1/u0;-><init>(Lorg/bouncycastle/crypto/g;[B)V

    iget-object v0, p0, Ls0/f;->p:Lv0/p;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lv0/p;->init(ZLorg/bouncycastle/crypto/g;)V

    invoke-virtual {p0}, Ls0/f;->reset()V

    iget-object v0, p1, Ls0/f;->h:[B

    iget-object v1, p0, Ls0/f;->h:[B

    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Ls0/f;->i:[B

    iget-object v1, p0, Ls0/f;->i:[B

    array-length v3, v0

    invoke-static {v0, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Ls0/f;->j:[B

    iget-object v1, p0, Ls0/f;->j:[B

    array-length v3, v0

    invoke-static {v0, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Ls0/f;->k:[B

    iget-object v1, p0, Ls0/f;->k:[B

    array-length v3, v0

    invoke-static {v0, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Ls0/f;->l:[[B

    aget-object v1, v0, v2

    iget-object v3, p0, Ls0/f;->l:[[B

    aget-object v2, v3, v2

    array-length v5, v1

    invoke-static {v1, v4, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x2

    aget-object v2, v0, v1

    aget-object v1, v3, v1

    array-length v5, v2

    invoke-static {v2, v4, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x3

    aget-object v0, v0, v1

    aget-object v1, v3, v1

    array-length v2, v0

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Ls0/f;->m:[B

    iget-object v1, p0, Ls0/f;->m:[B

    array-length v2, v0

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Ls0/f;->n:I

    iput v0, p0, Ls0/f;->n:I

    iget-wide v0, p1, Ls0/f;->o:J

    iput-wide v0, p0, Ls0/f;->o:J

    return-void
.end method

.method public final d([B)V
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Ls0/f;->s:[B

    const/16 v3, 0x8

    if-ge v1, v3, :cond_15

    aget-byte v3, p1, v1

    add-int/lit8 v4, v1, 0x8

    aget-byte v4, p1, v4

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_15
    const/16 p0, 0x18

    invoke-static {p1, v3, p1, v0, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v2, v0, p1, p0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final doFinal([BI)I
    .registers 7

    iget-wide v0, p0, Ls0/f;->o:J

    const-wide/16 v2, 0x8

    mul-long/2addr v0, v2

    const/4 v2, 0x0

    iget-object v3, p0, Ls0/f;->i:[B

    invoke-static {v2, v0, v1, v3}, Lm4/d;->F(IJ[B)V

    :goto_b
    iget v0, p0, Ls0/f;->n:I

    if-eqz v0, :cond_13

    invoke-virtual {p0, v2}, Ls0/f;->update(B)V

    goto :goto_b

    :cond_13
    invoke-virtual {p0, v3}, Ls0/f;->g([B)V

    iget-object v0, p0, Ls0/f;->k:[B

    invoke-virtual {p0, v0}, Ls0/f;->g([B)V

    iget-object v0, p0, Ls0/f;->h:[B

    array-length v1, v0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Ls0/f;->reset()V

    const/16 p0, 0x20

    return p0
.end method

.method public final e([B)[B
    .registers 7

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Ls0/f;->r:[B

    const/16 v2, 0x8

    if-ge v0, v2, :cond_28

    mul-int/lit8 v2, v0, 0x4

    aget-byte v3, p1, v0

    aput-byte v3, v1, v2

    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v4, v0, 0x8

    aget-byte v4, p1, v4

    aput-byte v4, v1, v3

    add-int/lit8 v3, v2, 0x2

    add-int/lit8 v4, v0, 0x10

    aget-byte v4, p1, v4

    aput-byte v4, v1, v3

    add-int/lit8 v2, v2, 0x3

    add-int/lit8 v3, v0, 0x18

    aget-byte v3, p1, v3

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_28
    return-object v1
.end method

.method public final f([B)V
    .registers 9

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    array-length v2, p1

    const/4 v3, 0x2

    div-int/2addr v2, v3

    iget-object v4, p0, Ls0/f;->t:[S

    if-ge v1, v2, :cond_20

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v2, 0x1

    aget-byte v3, p1, v3

    shl-int/lit8 v3, v3, 0x8

    const v5, 0xff00

    and-int/2addr v3, v5

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v3

    int-to-short v2, v2

    aput-short v2, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_20
    aget-short v1, v4, v0

    const/4 v2, 0x1

    aget-short v5, v4, v2

    xor-int/2addr v1, v5

    aget-short v5, v4, v3

    xor-int/2addr v1, v5

    const/4 v5, 0x3

    aget-short v5, v4, v5

    xor-int/2addr v1, v5

    const/16 v5, 0xc

    aget-short v5, v4, v5

    xor-int/2addr v1, v5

    const/16 v5, 0xf

    aget-short v6, v4, v5

    xor-int/2addr v1, v6

    int-to-short v1, v1

    iget-object p0, p0, Ls0/f;->u:[S

    aput-short v1, p0, v5

    invoke-static {v4, v2, p0, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_3f
    array-length v1, p1

    div-int/2addr v1, v3

    if-ge v0, v1, :cond_54

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    aget-short v4, p0, v0

    shr-int/lit8 v5, v4, 0x8

    int-to-byte v5, v5

    aput-byte v5, p1, v2

    int-to-byte v2, v4

    aput-byte v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    :cond_54
    return-void
.end method

.method public final g([B)V
    .registers 14

    const/4 v0, 0x0

    iget-object v1, p0, Ls0/f;->j:[B

    const/16 v2, 0x20

    invoke-static {p1, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Ls0/f;->h:[B

    iget-object v3, p0, Ls0/f;->w:[B

    invoke-static {p1, v0, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Ls0/f;->x:[B

    invoke-static {v1, v0, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v4, v0

    :goto_15
    iget-object v5, p0, Ls0/f;->y:[B

    if-ge v4, v2, :cond_26

    aget-byte v6, v3, v4

    iget-object v7, p0, Ls0/f;->x:[B

    aget-byte v7, v7, v4

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    :cond_26
    invoke-virtual {p0, v5}, Ls0/f;->e([B)[B

    move-result-object v4

    new-instance v6, Le1/o0;

    invoke-direct {v6, v4}, Le1/o0;-><init>([B)V

    iget-object v4, p0, Ls0/f;->p:Lv0/p;

    const/4 v7, 0x1

    invoke-virtual {v4, v7, v6}, Lv0/p;->init(ZLorg/bouncycastle/crypto/g;)V

    iget-object v6, p0, Ls0/f;->v:[B

    invoke-virtual {v4, v0, v0, p1, v6}, Lv0/p;->b(II[B[B)I

    move v8, v7

    :goto_3b
    const/4 v9, 0x4

    if-ge v8, v9, :cond_81

    invoke-virtual {p0, v3}, Ls0/f;->d([B)V

    move v9, v0

    :goto_42
    if-ge v9, v2, :cond_53

    aget-byte v10, v3, v9

    iget-object v11, p0, Ls0/f;->l:[[B

    aget-object v11, v11, v8

    aget-byte v11, v11, v9

    xor-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, v3, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_42

    :cond_53
    iget-object v9, p0, Ls0/f;->x:[B

    invoke-virtual {p0, v9}, Ls0/f;->d([B)V

    invoke-virtual {p0, v9}, Ls0/f;->d([B)V

    iput-object v9, p0, Ls0/f;->x:[B

    move v9, v0

    :goto_5e
    if-ge v9, v2, :cond_6d

    aget-byte v10, v3, v9

    iget-object v11, p0, Ls0/f;->x:[B

    aget-byte v11, v11, v9

    xor-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, v5, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_5e

    :cond_6d
    invoke-virtual {p0, v5}, Ls0/f;->e([B)[B

    move-result-object v9

    mul-int/lit8 v10, v8, 0x8

    new-instance v11, Le1/o0;

    invoke-direct {v11, v9}, Le1/o0;-><init>([B)V

    invoke-virtual {v4, v7, v11}, Lv0/p;->init(ZLorg/bouncycastle/crypto/g;)V

    invoke-virtual {v4, v10, v10, p1, v6}, Lv0/p;->b(II[B[B)I

    add-int/lit8 v8, v8, 0x1

    goto :goto_3b

    :cond_81
    move v3, v0

    :goto_82
    const/16 v4, 0xc

    if-ge v3, v4, :cond_8c

    invoke-virtual {p0, v6}, Ls0/f;->f([B)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_82

    :cond_8c
    move v3, v0

    :goto_8d
    if-ge v3, v2, :cond_9a

    aget-byte v4, v6, v3

    aget-byte v5, v1, v3

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_8d

    :cond_9a
    invoke-virtual {p0, v6}, Ls0/f;->f([B)V

    move v1, v0

    :goto_9e
    if-ge v1, v2, :cond_ab

    aget-byte v3, p1, v1

    aget-byte v4, v6, v1

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9e

    :cond_ab
    move v1, v0

    :goto_ac
    const/16 v2, 0x3d

    if-ge v1, v2, :cond_b6

    invoke-virtual {p0, v6}, Ls0/f;->f([B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_ac

    :cond_b6
    array-length p0, p1

    invoke-static {v6, v0, p1, v0, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final getAlgorithmName()Ljava/lang/String;
    .registers 1

    const-string p0, "GOST3411"

    return-object p0
.end method

.method public final getByteLength()I
    .registers 1

    const/16 p0, 0x20

    return p0
.end method

.method public final getDigestSize()I
    .registers 1

    const/16 p0, 0x20

    return p0
.end method

.method public final h([B)V
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Ls0/f;->k:[B

    array-length v3, v2

    if-eq v0, v3, :cond_19

    aget-byte v3, v2, v0

    and-int/lit16 v3, v3, 0xff

    aget-byte v4, p1, v0

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    add-int/2addr v3, v1

    int-to-byte v1, v3

    aput-byte v1, v2, v0

    ushr-int/lit8 v1, v3, 0x8

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_19
    return-void
.end method

.method public final reset()V
    .registers 6

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ls0/f;->o:J

    const/4 v0, 0x0

    iput v0, p0, Ls0/f;->n:I

    move v1, v0

    :goto_8
    iget-object v2, p0, Ls0/f;->h:[B

    array-length v3, v2

    if-ge v1, v3, :cond_12

    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_12
    move v1, v0

    :goto_13
    iget-object v2, p0, Ls0/f;->i:[B

    array-length v3, v2

    if-ge v1, v3, :cond_1d

    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_1d
    move v1, v0

    :goto_1e
    iget-object v2, p0, Ls0/f;->j:[B

    array-length v3, v2

    if-ge v1, v3, :cond_28

    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_28
    move v1, v0

    :goto_29
    iget-object v2, p0, Ls0/f;->l:[[B

    const/4 v3, 0x1

    aget-object v3, v2, v3

    array-length v4, v3

    if-ge v1, v4, :cond_36

    aput-byte v0, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    :cond_36
    move v1, v0

    :goto_37
    const/4 v3, 0x3

    aget-object v3, v2, v3

    array-length v4, v3

    if-ge v1, v4, :cond_42

    aput-byte v0, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    :cond_42
    move v1, v0

    :goto_43
    iget-object v3, p0, Ls0/f;->k:[B

    array-length v4, v3

    if-ge v1, v4, :cond_4d

    aput-byte v0, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_43

    :cond_4d
    move v1, v0

    :goto_4e
    iget-object v3, p0, Ls0/f;->m:[B

    array-length v4, v3

    if-ge v1, v4, :cond_58

    aput-byte v0, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4e

    :cond_58
    const/4 p0, 0x2

    aget-object p0, v2, p0

    const/16 v1, 0x20

    sget-object v2, Ls0/f;->z:[B

    invoke-static {v2, v0, p0, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final update(B)V
    .registers 6

    iget v0, p0, Ls0/f;->n:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ls0/f;->n:I

    iget-object v2, p0, Ls0/f;->m:[B

    aput-byte p1, v2, v0

    array-length p1, v2

    if-ne v1, p1, :cond_16

    invoke-virtual {p0, v2}, Ls0/f;->h([B)V

    invoke-virtual {p0, v2}, Ls0/f;->g([B)V

    const/4 p1, 0x0

    iput p1, p0, Ls0/f;->n:I

    :cond_16
    iget-wide v0, p0, Ls0/f;->o:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Ls0/f;->o:J

    return-void
.end method

.method public final update([BII)V
    .registers 9

    :goto_0
    iget v0, p0, Ls0/f;->n:I

    if-eqz v0, :cond_10

    if-lez p3, :cond_10

    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Ls0/f;->update(B)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_10
    :goto_10
    iget-object v0, p0, Ls0/f;->m:[B

    array-length v1, v0

    if-lt p3, v1, :cond_2c

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v0}, Ls0/f;->h([B)V

    invoke-virtual {p0, v0}, Ls0/f;->g([B)V

    array-length v1, v0

    add-int/2addr p2, v1

    array-length v1, v0

    sub-int/2addr p3, v1

    iget-wide v1, p0, Ls0/f;->o:J

    array-length v0, v0

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Ls0/f;->o:J

    goto :goto_10

    :cond_2c
    :goto_2c
    if-lez p3, :cond_38

    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Ls0/f;->update(B)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_2c

    :cond_38
    return-void
.end method
