.class public final Lj3/a;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/security/SecureRandom;

.field public final b:Lj3/c;

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:I

.field public final m:I

.field public final n:I

.field public final o:I

.field public final p:Li1/g;


# direct methods
.method public constructor <init>(I)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lj3/a;->c:I

    const/16 v0, 0x80

    const/4 v1, 0x3

    const/16 v2, 0x20

    const/4 v3, 0x2

    if-eq p1, v3, :cond_38

    if-eq p1, v1, :cond_2d

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1f

    iput v3, p0, Lj3/a;->g:I

    const/16 v0, 0xa0

    iput v0, p0, Lj3/a;->e:I

    mul-int/lit16 v0, p1, 0x160

    iput v0, p0, Lj3/a;->f:I

    iput v2, p0, Lj3/a;->o:I

    goto :goto_3b

    :cond_1f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "K: "

    const-string v1, " is not supported for Crystals Kyber"

    invoke-static {v0, v1, p1}, Lb/b;->g(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2d
    iput v3, p0, Lj3/a;->g:I

    :goto_2f
    iput v0, p0, Lj3/a;->e:I

    mul-int/lit16 v0, p1, 0x140

    iput v0, p0, Lj3/a;->f:I

    iput v2, p0, Lj3/a;->o:I

    goto :goto_3b

    :cond_38
    iput v1, p0, Lj3/a;->g:I

    goto :goto_2f

    :goto_3b
    mul-int/lit16 p1, p1, 0x180

    iput p1, p0, Lj3/a;->d:I

    add-int/lit8 v0, p1, 0x20

    iput v0, p0, Lj3/a;->h:I

    iput p1, p0, Lj3/a;->i:I

    iget v1, p0, Lj3/a;->f:I

    iget v2, p0, Lj3/a;->e:I

    add-int/2addr v1, v2

    iput v1, p0, Lj3/a;->j:I

    iput v0, p0, Lj3/a;->k:I

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x40

    iput p1, p0, Lj3/a;->l:I

    iput v1, p0, Lj3/a;->m:I

    iput v1, p0, Lj3/a;->n:I

    new-instance p1, Li1/g;

    invoke-direct {p1}, Li1/g;-><init>()V

    iput-object p1, p0, Lj3/a;->p:Li1/g;

    new-instance p1, Lj3/c;

    invoke-direct {p1, p0}, Lj3/c;-><init>(Lj3/a;)V

    iput-object p1, p0, Lj3/a;->b:Lj3/c;

    return-void
.end method


# virtual methods
.method public final a([B)Z
    .registers 13

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    :goto_4
    iget v4, p0, Lj3/a;->c:I

    if-ge v2, v4, :cond_3e

    mul-int/lit16 v4, v2, 0x180

    move v6, v0

    move v5, v1

    :goto_c
    const/16 v7, 0x80

    if-ge v5, v7, :cond_3a

    mul-int/lit8 v7, v5, 0x3

    add-int/2addr v7, v4

    aget-byte v8, p1, v7

    and-int/lit16 v8, v8, 0xff

    add-int/lit8 v9, v7, 0x1

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    add-int/lit8 v7, v7, 0x2

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v10, v9, 0x8

    or-int/2addr v8, v10

    and-int/lit16 v8, v8, 0xfff

    int-to-short v8, v8

    shr-int/lit8 v9, v9, 0x4

    shl-int/lit8 v7, v7, 0x4

    or-int/2addr v7, v9

    and-int/lit16 v7, v7, 0xfff

    int-to-short v7, v7

    add-int/lit16 v8, v8, -0xd01

    and-int/2addr v6, v8

    add-int/lit16 v7, v7, -0xd01

    and-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_3a
    and-int/2addr v3, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_3e
    if-gez v3, :cond_42

    const/4 p0, 0x1

    return p0

    :cond_42
    return v1
.end method

.method public final b([B[B)[[B
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Lj3/j;

    iget-object v3, v0, Lj3/a;->b:Lj3/c;

    iget-object v4, v3, Lj3/c;->a:Lj3/a;

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5}, Lj3/j;-><init>(Lj3/a;I)V

    new-instance v5, Lj3/j;

    const/4 v6, 0x1

    invoke-direct {v5, v4, v6}, Lj3/j;-><init>(Lj3/a;I)V

    new-instance v6, Lj3/j;

    const/4 v7, 0x1

    invoke-direct {v6, v4, v7}, Lj3/j;-><init>(Lj3/a;I)V

    const/16 v7, 0x40

    new-array v7, v7, [B

    iget-object v8, v3, Lj3/c;->h:Li1/g;

    iget v9, v3, Lj3/c;->b:I

    int-to-byte v10, v9

    array-length v11, v1

    add-int/lit8 v12, v11, 0x1

    new-array v12, v12, [B

    const/4 v13, 0x0

    invoke-static {v1, v13, v12, v13, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-byte v10, v12, v11

    iget-object v8, v8, Li1/g;->b:Ljava/lang/Object;

    check-cast v8, Ls0/d0;

    array-length v10, v12

    invoke-virtual {v8, v12, v13, v10}, Ls0/n;->f([BII)V

    invoke-virtual {v8, v7, v13}, Ls0/d0;->doFinal([BI)I

    const/16 v8, 0x20

    new-array v10, v8, [B

    new-array v11, v8, [B

    invoke-static {v7, v13, v10, v13, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v7, v8, v11, v13, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v7, v9, [Lj3/j;

    move v12, v13

    :goto_48
    if-ge v12, v9, :cond_55

    new-instance v14, Lj3/j;

    const/4 v15, 0x1

    invoke-direct {v14, v4, v15}, Lj3/j;-><init>(Lj3/a;I)V

    aput-object v14, v7, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_48

    :cond_55
    invoke-virtual {v3, v7, v10, v13}, Lj3/c;->b([Lj3/j;[BZ)V

    move v12, v13

    move v14, v12

    :goto_5a
    if-ge v12, v9, :cond_6b

    iget-object v15, v2, Lj3/j;->d:Ljava/lang/Object;

    check-cast v15, [Lj3/j;

    aget-object v15, v15, v12

    invoke-virtual {v15, v11, v14}, Lj3/j;->e([BB)V

    add-int/lit8 v14, v14, 0x1

    int-to-byte v14, v14

    add-int/lit8 v12, v12, 0x1

    goto :goto_5a

    :cond_6b
    move v12, v13

    :goto_6c
    const/16 v16, 0x1

    if-ge v12, v9, :cond_7f

    iget-object v15, v6, Lj3/j;->d:Ljava/lang/Object;

    check-cast v15, [Lj3/j;

    aget-object v15, v15, v12

    invoke-virtual {v15, v11, v14}, Lj3/j;->e([BB)V

    add-int/lit8 v14, v14, 0x1

    int-to-byte v14, v14

    add-int/lit8 v12, v12, 0x1

    goto :goto_6c

    :cond_7f
    invoke-virtual {v2}, Lj3/j;->h()V

    invoke-virtual {v6}, Lj3/j;->h()V

    move v11, v13

    :goto_86
    if-ge v11, v9, :cond_bd

    iget-object v12, v5, Lj3/j;->d:Ljava/lang/Object;

    check-cast v12, [Lj3/j;

    aget-object v12, v12, v11

    aget-object v14, v7, v11

    invoke-static {v12, v14, v2, v4}, Lj3/j;->f(Lj3/j;Lj3/j;Lj3/j;Lj3/a;)V

    iget-object v12, v5, Lj3/j;->d:Ljava/lang/Object;

    check-cast v12, [Lj3/j;

    aget-object v12, v12, v11

    move v14, v13

    :goto_9a
    const/16 v15, 0x100

    if-ge v14, v15, :cond_b5

    iget-object v15, v12, Lj3/j;->d:Ljava/lang/Object;

    check-cast v15, [S

    aget-short v15, v15, v14

    mul-int/lit16 v15, v15, 0x549

    invoke-static {v15}, Lj3/i;->c(I)S

    move-result v15

    iget-object v8, v12, Lj3/j;->d:Ljava/lang/Object;

    check-cast v8, [S

    aput-short v15, v8, v14

    add-int/lit8 v14, v14, 0x1

    const/16 v8, 0x20

    goto :goto_9a

    :cond_b5
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v11, v11, 0x1

    const/16 v8, 0x20

    goto :goto_86

    :cond_bd
    move v4, v13

    :goto_be
    iget v7, v5, Lj3/j;->b:I

    if-ge v4, v7, :cond_d4

    iget-object v7, v5, Lj3/j;->d:Ljava/lang/Object;

    check-cast v7, [Lj3/j;

    aget-object v7, v7, v4

    iget-object v8, v6, Lj3/j;->d:Ljava/lang/Object;

    check-cast v8, [Lj3/j;

    aget-object v8, v8, v4

    invoke-virtual {v7, v8}, Lj3/j;->a(Lj3/j;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_be

    :cond_d4
    move v4, v13

    :goto_d5
    iget v6, v5, Lj3/j;->b:I

    if-ge v4, v6, :cond_e5

    iget-object v6, v5, Lj3/j;->d:Ljava/lang/Object;

    check-cast v6, [Lj3/j;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Lj3/j;->i()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_d5

    :cond_e5
    iget v4, v3, Lj3/c;->c:I

    new-array v4, v4, [B

    invoke-virtual {v5}, Lj3/j;->j()[B

    move-result-object v5

    iget v3, v3, Lj3/c;->d:I

    invoke-static {v5, v13, v4, v13, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v5, 0x20

    invoke-static {v10, v13, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v2}, Lj3/j;->j()[B

    move-result-object v2

    filled-new-array {v4, v2}, [[B

    move-result-object v2

    iget v3, v0, Lj3/a;->i:I

    new-array v8, v3, [B

    aget-object v4, v2, v16

    invoke-static {v4, v13, v8, v13, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v9, v5, [B

    aget-object v3, v2, v13

    iget-object v4, v0, Lj3/a;->p:Li1/g;

    iget-object v4, v4, Li1/g;->c:Ljava/lang/Object;

    check-cast v4, Ls0/d0;

    array-length v5, v3

    invoke-virtual {v4, v3, v13, v5}, Ls0/n;->f([BII)V

    invoke-virtual {v4, v9, v13}, Ls0/d0;->doFinal([BI)I

    iget v0, v0, Lj3/a;->h:I

    new-array v3, v0, [B

    aget-object v2, v2, v13

    invoke-static {v2, v13, v3, v13, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v0, -0x20

    invoke-static {v3, v13, v2}, Lm4/d;->q([BII)[B

    move-result-object v6

    invoke-static {v3, v2, v0}, Lm4/d;->q([BII)[B

    move-result-object v7

    invoke-static/range {p1 .. p2}, Lm4/d;->j([B[B)[B

    move-result-object v11

    move-object/from16 v10, p2

    filled-new-array/range {v6 .. v11}, [[B

    move-result-object v0

    return-object v0
.end method
