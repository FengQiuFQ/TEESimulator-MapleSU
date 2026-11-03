.class public final Lq3/f;
.super Lq3/h;


# instance fields
.field public final k:Lz0/d;

.field public final l:La2/r;

.field public final m:[B

.field public final n:Ljava/lang/Object;

.field public final o:[B

.field public final p:I

.field public final q:Ls0/b0;

.field public final r:[B

.field public s:Lm4/e;

.field public t:Lm4/e;


# direct methods
.method public constructor <init>(IIIII)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lq3/h;-><init>(IIIII)V

    new-instance p2, Ls0/b0;

    invoke-direct {p2}, Ls0/b0;-><init>()V

    iput-object p2, p0, Lq3/f;->q:Ls0/b0;

    const/16 p2, 0x20

    new-array p2, p2, [B

    iput-object p2, p0, Lq3/f;->r:[B

    const/16 p2, 0x10

    if-ne p1, p2, :cond_38

    new-instance p1, Ls0/b0;

    invoke-direct {p1}, Ls0/b0;-><init>()V

    iput-object p1, p0, Lq3/f;->n:Ljava/lang/Object;

    new-instance p1, Lz0/d;

    new-instance p2, Ls0/b0;

    invoke-direct {p2}, Ls0/b0;-><init>()V

    invoke-direct {p1, p2}, Lz0/d;-><init>(Lorg/bouncycastle/crypto/v;)V

    iput-object p1, p0, Lq3/f;->k:Lz0/d;

    new-instance p1, La2/r;

    new-instance p2, Ls0/b0;

    invoke-direct {p2}, Ls0/b0;-><init>()V

    invoke-direct {p1, p2}, La2/r;-><init>(Lorg/bouncycastle/crypto/v;)V

    iput-object p1, p0, Lq3/f;->l:La2/r;

    const/16 p1, 0x40

    :goto_35
    iput p1, p0, Lq3/f;->p:I

    goto :goto_5a

    :cond_38
    new-instance p1, Ls0/e0;

    invoke-direct {p1}, Ls0/e0;-><init>()V

    iput-object p1, p0, Lq3/f;->n:Ljava/lang/Object;

    new-instance p1, Lz0/d;

    new-instance p2, Ls0/e0;

    invoke-direct {p2}, Ls0/e0;-><init>()V

    invoke-direct {p1, p2}, Lz0/d;-><init>(Lorg/bouncycastle/crypto/v;)V

    iput-object p1, p0, Lq3/f;->k:Lz0/d;

    new-instance p1, La2/r;

    new-instance p2, Ls0/e0;

    invoke-direct {p2}, Ls0/e0;-><init>()V

    invoke-direct {p1, p2}, La2/r;-><init>(Lorg/bouncycastle/crypto/v;)V

    iput-object p1, p0, Lq3/f;->l:La2/r;

    const/16 p1, 0x80

    goto :goto_35

    :goto_5a
    iget-object p1, p0, Lq3/f;->k:Lz0/d;

    iget p1, p1, Lz0/d;->h:I

    new-array p1, p1, [B

    iput-object p1, p0, Lq3/f;->m:[B

    iget-object p1, p0, Lq3/f;->n:Ljava/lang/Object;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/v;->getDigestSize()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lq3/f;->o:[B

    return-void
.end method

.method public static h(Lb1/a;)[B
    .registers 5

    const/16 v0, 0x16

    new-array v0, v0, [B

    iget-object p0, p0, Lb1/a;->h:Ljava/lang/Object;

    check-cast p0, [B

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p0, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0x8

    invoke-static {p0, v1, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0x13

    const/16 v2, 0x9

    invoke-static {p0, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0xa

    const/16 v2, 0xc

    const/16 v3, 0x14

    invoke-static {p0, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method


# virtual methods
.method public final a(Lb1/a;[B[B)[B
    .registers 6

    invoke-static {p1}, Lq3/f;->h(Lb1/a;)[B

    move-result-object p1

    iget-object p2, p0, Lq3/f;->t:Lm4/e;

    iget-object v0, p0, Lq3/f;->q:Ls0/b0;

    invoke-interface {v0, p2}, Lm4/e;->c(Lm4/e;)V

    const/16 p2, 0x16

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Ls0/j;->update([BII)V

    array-length p1, p3

    invoke-virtual {v0, p3, v1, p1}, Ls0/j;->update([BII)V

    iget-object p1, p0, Lq3/f;->r:[B

    invoke-virtual {v0, p1, v1}, Ls0/b0;->doFinal([BI)I

    iget p0, p0, Lq3/h;->a:I

    invoke-static {p1, v1, p0}, Lm4/d;->q([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public final b(Lb1/a;[B[B[B)[B
    .registers 7

    invoke-static {p1}, Lq3/f;->h(Lb1/a;)[B

    move-result-object p1

    iget-object p2, p0, Lq3/f;->n:Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Lm4/e;

    iget-object v1, p0, Lq3/f;->s:Lm4/e;

    invoke-interface {v0, v1}, Lm4/e;->c(Lm4/e;)V

    const/16 v0, 0x16

    const/4 v1, 0x0

    invoke-interface {p2, p1, v1, v0}, Lorg/bouncycastle/crypto/v;->update([BII)V

    array-length p1, p3

    invoke-interface {p2, p3, v1, p1}, Lorg/bouncycastle/crypto/v;->update([BII)V

    array-length p1, p4

    invoke-interface {p2, p4, v1, p1}, Lorg/bouncycastle/crypto/v;->update([BII)V

    iget-object p1, p0, Lq3/f;->o:[B

    invoke-interface {p2, p1, v1}, Lorg/bouncycastle/crypto/v;->doFinal([BI)I

    iget p0, p0, Lq3/h;->a:I

    invoke-static {p1, v1, p0}, Lm4/d;->q([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public final c([B[B[B[B[B)Lq3/c;
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    iget v6, v0, Lq3/h;->g:I

    iget v7, v0, Lq3/h;->h:I

    mul-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x7

    const/16 v7, 0x8

    div-int/2addr v6, v7

    iget v8, v0, Lq3/h;->f:I

    iget v9, v0, Lq3/h;->i:I

    div-int v8, v9, v8

    sub-int/2addr v9, v8

    add-int/lit8 v10, v8, 0x7

    div-int/2addr v10, v7

    add-int/lit8 v11, v9, 0x7

    div-int/2addr v11, v7

    add-int v12, v6, v10

    add-int/2addr v12, v11

    new-array v13, v12, [B

    iget-object v14, v0, Lq3/f;->n:Ljava/lang/Object;

    invoke-interface {v14}, Lorg/bouncycastle/crypto/v;->getDigestSize()I

    move-result v15

    new-array v15, v15, [B

    array-length v7, v1

    move/from16 v16, v8

    const/4 v8, 0x0

    invoke-interface {v14, v1, v8, v7}, Lorg/bouncycastle/crypto/v;->update([BII)V

    array-length v7, v2

    invoke-interface {v14, v2, v8, v7}, Lorg/bouncycastle/crypto/v;->update([BII)V

    array-length v7, v3

    invoke-interface {v14, v3, v8, v7}, Lorg/bouncycastle/crypto/v;->update([BII)V

    if-eqz v4, :cond_45

    array-length v3, v4

    invoke-interface {v14, v4, v8, v3}, Lorg/bouncycastle/crypto/v;->update([BII)V

    :cond_45
    array-length v3, v5

    invoke-interface {v14, v5, v8, v3}, Lorg/bouncycastle/crypto/v;->update([BII)V

    invoke-interface {v14, v15, v8}, Lorg/bouncycastle/crypto/v;->doFinal([BI)I

    invoke-static {v1, v2, v15}, Lm4/d;->k([B[B[B)[B

    move-result-object v1

    new-array v2, v12, [B

    new-instance v3, Le1/p0;

    array-length v4, v1

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    new-array v5, v4, [B

    iput-object v5, v3, Le1/p0;->a:[B

    invoke-static {v1, v8, v5, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, v0, Lq3/f;->l:La2/r;

    invoke-virtual {v0, v3}, La2/r;->init(Lorg/bouncycastle/crypto/u;)V

    invoke-virtual {v0, v2, v8, v12}, La2/r;->generateBytes([BII)I

    invoke-static {v13, v12, v2}, Lm4/d;->M([BI[B)V

    const/16 v0, 0x8

    new-array v0, v0, [B

    rsub-int/lit8 v1, v11, 0x8

    invoke-static {v2, v6, v0, v1, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v8, v0}, Lm4/d;->c(I[B)J

    move-result-wide v0

    rsub-int/lit8 v3, v9, 0x40

    const-wide/16 v4, -0x1

    ushr-long v3, v4, v3

    and-long/2addr v0, v3

    const/4 v3, 0x4

    new-array v3, v3, [B

    add-int/2addr v11, v6

    rsub-int/lit8 v4, v10, 0x4

    invoke-static {v2, v11, v3, v4, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v8, v3}, Lm4/d;->b(I[B)I

    move-result v3

    rsub-int/lit8 v4, v16, 0x20

    const/4 v5, -0x1

    ushr-int v4, v5, v4

    and-int/2addr v3, v4

    new-instance v4, Lq3/c;

    invoke-static {v2, v8, v6}, Lm4/d;->q([BII)[B

    move-result-object v2

    invoke-direct {v4, v3, v0, v1, v2}, Lq3/c;-><init>(IJ[B)V

    return-object v4
.end method

.method public final d(Lb1/a;[B[B)[B
    .registers 7

    array-length p2, p3

    iget-object v0, p0, Lq3/f;->t:Lm4/e;

    iget-object v1, p0, Lq3/f;->q:Ls0/b0;

    invoke-interface {v1, v0}, Lm4/e;->c(Lm4/e;)V

    invoke-static {p1}, Lq3/f;->h(Lb1/a;)[B

    move-result-object p1

    const/16 v0, 0x16

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Ls0/j;->update([BII)V

    array-length p1, p3

    invoke-virtual {v1, p3, v2, p1}, Ls0/j;->update([BII)V

    iget-object p0, p0, Lq3/f;->r:[B

    invoke-virtual {v1, p0, v2}, Ls0/b0;->doFinal([BI)I

    invoke-static {p0, v2, p2}, Lm4/d;->q([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public final e([B[B[B[B)[B
    .registers 8

    new-instance v0, Le1/o0;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1}, Le1/o0;-><init>([BII)V

    iget-object p1, p0, Lq3/f;->k:Lz0/d;

    invoke-virtual {p1, v0}, Lz0/d;->init(Lorg/bouncycastle/crypto/g;)V

    array-length v0, p2

    invoke-virtual {p1, p2, v2, v0}, Lz0/d;->update([BII)V

    if-eqz p3, :cond_16

    array-length p2, p3

    invoke-virtual {p1, p3, v2, p2}, Lz0/d;->update([BII)V

    :cond_16
    array-length p2, p4

    invoke-virtual {p1, p4, v2, p2}, Lz0/d;->update([BII)V

    iget-object p2, p0, Lq3/f;->m:[B

    invoke-virtual {p1, p2, v2}, Lz0/d;->doFinal([BI)I

    iget p0, p0, Lq3/h;->a:I

    invoke-static {p2, v2, p0}, Lm4/d;->q([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public final f(Lb1/a;[B[B)[B
    .registers 6

    invoke-static {p1}, Lq3/f;->h(Lb1/a;)[B

    move-result-object p1

    iget-object p2, p0, Lq3/f;->n:Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Lm4/e;

    iget-object v1, p0, Lq3/f;->s:Lm4/e;

    invoke-interface {v0, v1}, Lm4/e;->c(Lm4/e;)V

    const/16 v0, 0x16

    const/4 v1, 0x0

    invoke-interface {p2, p1, v1, v0}, Lorg/bouncycastle/crypto/v;->update([BII)V

    array-length p1, p3

    invoke-interface {p2, p3, v1, p1}, Lorg/bouncycastle/crypto/v;->update([BII)V

    iget-object p1, p0, Lq3/f;->o:[B

    invoke-interface {p2, p1, v1}, Lorg/bouncycastle/crypto/v;->doFinal([BI)I

    iget p0, p0, Lq3/h;->a:I

    invoke-static {p1, v1, p0}, Lm4/d;->q([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public final g([B)V
    .registers 7

    iget v0, p0, Lq3/f;->p:I

    new-array v1, v0, [B

    array-length v2, p1

    iget-object v3, p0, Lq3/f;->n:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v3, p1, v4, v2}, Lorg/bouncycastle/crypto/v;->update([BII)V

    iget v2, p0, Lq3/h;->a:I

    sub-int/2addr v0, v2

    invoke-interface {v3, v1, v4, v0}, Lorg/bouncycastle/crypto/v;->update([BII)V

    move-object v0, v3

    check-cast v0, Lm4/e;

    invoke-interface {v0}, Lm4/e;->a()Lm4/e;

    move-result-object v0

    iput-object v0, p0, Lq3/f;->s:Lm4/e;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/v;->reset()V

    array-length v0, p1

    iget-object v2, p0, Lq3/f;->q:Ls0/b0;

    invoke-virtual {v2, p1, v4, v0}, Ls0/j;->update([BII)V

    array-length p1, p1

    rsub-int/lit8 p1, p1, 0x40

    invoke-virtual {v2, v1, v4, p1}, Ls0/j;->update([BII)V

    invoke-interface {v2}, Lm4/e;->a()Lm4/e;

    move-result-object p1

    iput-object p1, p0, Lq3/f;->t:Lm4/e;

    invoke-virtual {v2}, Ls0/b0;->reset()V

    return-void
.end method
