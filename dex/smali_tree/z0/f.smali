.class public final Lz0/f;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/b0;


# instance fields
.field public A:I

.field public B:I

.field public final g:Lorg/bouncycastle/crypto/d;

.field public final h:[B

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public final v:[B

.field public w:I

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lz0/f;->h:[B

    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lz0/f;->v:[B

    const/4 v0, 0x0

    iput v0, p0, Lz0/f;->w:I

    const/4 v0, 0x0

    iput-object v0, p0, Lz0/f;->g:Lorg/bouncycastle/crypto/d;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/d;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lz0/f;->h:[B

    const/16 v0, 0x10

    new-array v1, v0, [B

    iput-object v1, p0, Lz0/f;->v:[B

    const/4 v1, 0x0

    iput v1, p0, Lz0/f;->w:I

    invoke-interface {p1}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v1

    if-ne v1, v0, :cond_1a

    iput-object p1, p0, Lz0/f;->g:Lorg/bouncycastle/crypto/d;

    return-void

    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Poly1305 requires a 128 bit block cipher."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final a(II)J
    .registers 6

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long p0, p1

    mul-long/2addr v0, p0

    return-wide v0
.end method


# virtual methods
.method public final b()V
    .registers 21

    move-object/from16 v0, p0

    iget v1, v0, Lz0/f;->w:I

    const/4 v2, 0x0

    iget-object v3, v0, Lz0/f;->v:[B

    const/16 v4, 0x10

    if-ge v1, v4, :cond_16

    const/4 v5, 0x1

    aput-byte v5, v3, v1

    add-int/2addr v1, v5

    :goto_f
    if-ge v1, v4, :cond_16

    aput-byte v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_16
    invoke-static {v2, v3}, Lm4/d;->z(I[B)I

    move-result v1

    int-to-long v1, v1

    const-wide v5, 0xffffffffL

    and-long v7, v1, v5

    const/4 v9, 0x4

    invoke-static {v9, v3}, Lm4/d;->z(I[B)I

    move-result v9

    int-to-long v9, v9

    and-long/2addr v9, v5

    const/16 v11, 0x8

    invoke-static {v11, v3}, Lm4/d;->z(I[B)I

    move-result v12

    int-to-long v12, v12

    and-long/2addr v12, v5

    const/16 v14, 0xc

    invoke-static {v14, v3}, Lm4/d;->z(I[B)I

    move-result v3

    int-to-long v14, v3

    and-long/2addr v5, v14

    iget v3, v0, Lz0/f;->x:I

    int-to-long v14, v3

    const-wide/32 v16, 0x3ffffff

    and-long v1, v1, v16

    add-long/2addr v14, v1

    long-to-int v1, v14

    iput v1, v0, Lz0/f;->x:I

    iget v2, v0, Lz0/f;->y:I

    int-to-long v2, v2

    const/16 v14, 0x20

    shl-long v18, v9, v14

    or-long v7, v18, v7

    const/16 v15, 0x1a

    ushr-long/2addr v7, v15

    and-long v7, v7, v16

    add-long/2addr v2, v7

    long-to-int v2, v2

    iput v2, v0, Lz0/f;->y:I

    iget v2, v0, Lz0/f;->z:I

    int-to-long v2, v2

    shl-long v7, v12, v14

    or-long/2addr v7, v9

    const/16 v9, 0x14

    ushr-long/2addr v7, v9

    and-long v7, v7, v16

    add-long/2addr v2, v7

    long-to-int v2, v2

    iput v2, v0, Lz0/f;->z:I

    iget v2, v0, Lz0/f;->A:I

    int-to-long v2, v2

    shl-long v7, v5, v14

    or-long/2addr v7, v12

    const/16 v9, 0xe

    ushr-long/2addr v7, v9

    and-long v7, v7, v16

    add-long/2addr v2, v7

    long-to-int v2, v2

    iput v2, v0, Lz0/f;->A:I

    iget v2, v0, Lz0/f;->B:I

    int-to-long v2, v2

    ushr-long/2addr v5, v11

    add-long/2addr v2, v5

    long-to-int v2, v2

    iput v2, v0, Lz0/f;->B:I

    iget v3, v0, Lz0/f;->w:I

    if-ne v3, v4, :cond_86

    const/high16 v3, 0x1000000

    add-int/2addr v2, v3

    iput v2, v0, Lz0/f;->B:I

    :cond_86
    iget v2, v0, Lz0/f;->i:I

    invoke-static {v1, v2}, Lz0/f;->a(II)J

    move-result-wide v1

    iget v3, v0, Lz0/f;->y:I

    iget v4, v0, Lz0/f;->q:I

    invoke-static {v3, v4}, Lz0/f;->a(II)J

    move-result-wide v3

    add-long/2addr v3, v1

    iget v1, v0, Lz0/f;->z:I

    iget v2, v0, Lz0/f;->p:I

    invoke-static {v1, v2}, Lz0/f;->a(II)J

    move-result-wide v1

    add-long/2addr v1, v3

    iget v3, v0, Lz0/f;->A:I

    iget v4, v0, Lz0/f;->o:I

    invoke-static {v3, v4}, Lz0/f;->a(II)J

    move-result-wide v3

    add-long/2addr v3, v1

    iget v1, v0, Lz0/f;->B:I

    iget v2, v0, Lz0/f;->n:I

    invoke-static {v1, v2}, Lz0/f;->a(II)J

    move-result-wide v1

    add-long/2addr v1, v3

    iget v3, v0, Lz0/f;->x:I

    iget v4, v0, Lz0/f;->j:I

    invoke-static {v3, v4}, Lz0/f;->a(II)J

    move-result-wide v3

    iget v5, v0, Lz0/f;->y:I

    iget v6, v0, Lz0/f;->i:I

    invoke-static {v5, v6}, Lz0/f;->a(II)J

    move-result-wide v5

    add-long/2addr v5, v3

    iget v3, v0, Lz0/f;->z:I

    iget v4, v0, Lz0/f;->q:I

    invoke-static {v3, v4}, Lz0/f;->a(II)J

    move-result-wide v3

    add-long/2addr v3, v5

    iget v5, v0, Lz0/f;->A:I

    iget v6, v0, Lz0/f;->p:I

    invoke-static {v5, v6}, Lz0/f;->a(II)J

    move-result-wide v5

    add-long/2addr v5, v3

    iget v3, v0, Lz0/f;->B:I

    iget v4, v0, Lz0/f;->o:I

    invoke-static {v3, v4}, Lz0/f;->a(II)J

    move-result-wide v3

    add-long/2addr v3, v5

    iget v5, v0, Lz0/f;->x:I

    iget v6, v0, Lz0/f;->k:I

    invoke-static {v5, v6}, Lz0/f;->a(II)J

    move-result-wide v5

    iget v7, v0, Lz0/f;->y:I

    iget v8, v0, Lz0/f;->j:I

    invoke-static {v7, v8}, Lz0/f;->a(II)J

    move-result-wide v7

    add-long/2addr v7, v5

    iget v5, v0, Lz0/f;->z:I

    iget v6, v0, Lz0/f;->i:I

    invoke-static {v5, v6}, Lz0/f;->a(II)J

    move-result-wide v5

    add-long/2addr v5, v7

    iget v7, v0, Lz0/f;->A:I

    iget v8, v0, Lz0/f;->q:I

    invoke-static {v7, v8}, Lz0/f;->a(II)J

    move-result-wide v7

    add-long/2addr v7, v5

    iget v5, v0, Lz0/f;->B:I

    iget v6, v0, Lz0/f;->p:I

    invoke-static {v5, v6}, Lz0/f;->a(II)J

    move-result-wide v5

    add-long/2addr v5, v7

    iget v7, v0, Lz0/f;->x:I

    iget v8, v0, Lz0/f;->l:I

    invoke-static {v7, v8}, Lz0/f;->a(II)J

    move-result-wide v7

    iget v9, v0, Lz0/f;->y:I

    iget v10, v0, Lz0/f;->k:I

    invoke-static {v9, v10}, Lz0/f;->a(II)J

    move-result-wide v9

    add-long/2addr v9, v7

    iget v7, v0, Lz0/f;->z:I

    iget v8, v0, Lz0/f;->j:I

    invoke-static {v7, v8}, Lz0/f;->a(II)J

    move-result-wide v7

    add-long/2addr v7, v9

    iget v9, v0, Lz0/f;->A:I

    iget v10, v0, Lz0/f;->i:I

    invoke-static {v9, v10}, Lz0/f;->a(II)J

    move-result-wide v9

    add-long/2addr v9, v7

    iget v7, v0, Lz0/f;->B:I

    iget v8, v0, Lz0/f;->q:I

    invoke-static {v7, v8}, Lz0/f;->a(II)J

    move-result-wide v7

    add-long/2addr v7, v9

    iget v9, v0, Lz0/f;->x:I

    iget v10, v0, Lz0/f;->m:I

    invoke-static {v9, v10}, Lz0/f;->a(II)J

    move-result-wide v9

    iget v11, v0, Lz0/f;->y:I

    iget v12, v0, Lz0/f;->l:I

    invoke-static {v11, v12}, Lz0/f;->a(II)J

    move-result-wide v11

    add-long/2addr v11, v9

    iget v9, v0, Lz0/f;->z:I

    iget v10, v0, Lz0/f;->k:I

    invoke-static {v9, v10}, Lz0/f;->a(II)J

    move-result-wide v9

    add-long/2addr v9, v11

    iget v11, v0, Lz0/f;->A:I

    iget v12, v0, Lz0/f;->j:I

    invoke-static {v11, v12}, Lz0/f;->a(II)J

    move-result-wide v11

    add-long/2addr v11, v9

    iget v9, v0, Lz0/f;->B:I

    iget v10, v0, Lz0/f;->i:I

    invoke-static {v9, v10}, Lz0/f;->a(II)J

    move-result-wide v9

    add-long/2addr v9, v11

    long-to-int v11, v1

    const v12, 0x3ffffff

    and-int/2addr v11, v12

    ushr-long/2addr v1, v15

    add-long/2addr v3, v1

    long-to-int v1, v3

    and-int/2addr v1, v12

    ushr-long v2, v3, v15

    add-long/2addr v5, v2

    long-to-int v2, v5

    and-int/2addr v2, v12

    iput v2, v0, Lz0/f;->z:I

    ushr-long v2, v5, v15

    add-long/2addr v7, v2

    long-to-int v2, v7

    and-int/2addr v2, v12

    iput v2, v0, Lz0/f;->A:I

    ushr-long v2, v7, v15

    add-long/2addr v9, v2

    long-to-int v2, v9

    and-int/2addr v2, v12

    iput v2, v0, Lz0/f;->B:I

    ushr-long v2, v9, v15

    long-to-int v2, v2

    mul-int/lit8 v2, v2, 0x5

    add-int/2addr v2, v11

    ushr-int/lit8 v3, v2, 0x1a

    add-int/2addr v1, v3

    iput v1, v0, Lz0/f;->y:I

    and-int v1, v2, v12

    iput v1, v0, Lz0/f;->x:I

    return-void
.end method

.method public final doFinal([BI)I
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    array-length v2, v1

    const/16 v3, 0x10

    if-gt v3, v2, :cond_c9

    iget v2, v0, Lz0/f;->w:I

    if-lez v2, :cond_10

    invoke-virtual {v0}, Lz0/f;->b()V

    :cond_10
    iget v2, v0, Lz0/f;->y:I

    iget v4, v0, Lz0/f;->x:I

    ushr-int/lit8 v5, v4, 0x1a

    add-int/2addr v2, v5

    const v5, 0x3ffffff

    and-int/2addr v4, v5

    iget v6, v0, Lz0/f;->z:I

    ushr-int/lit8 v7, v2, 0x1a

    add-int/2addr v6, v7

    and-int/2addr v2, v5

    iget v7, v0, Lz0/f;->A:I

    ushr-int/lit8 v8, v6, 0x1a

    add-int/2addr v7, v8

    and-int/2addr v6, v5

    iget v8, v0, Lz0/f;->B:I

    ushr-int/lit8 v9, v7, 0x1a

    add-int/2addr v8, v9

    and-int/2addr v7, v5

    ushr-int/lit8 v9, v8, 0x1a

    mul-int/lit8 v9, v9, 0x5

    add-int/2addr v9, v4

    and-int v4, v8, v5

    ushr-int/lit8 v8, v9, 0x1a

    add-int/2addr v2, v8

    and-int v8, v9, v5

    add-int/lit8 v9, v8, 0x5

    ushr-int/lit8 v10, v9, 0x1a

    and-int/2addr v9, v5

    add-int/2addr v10, v2

    ushr-int/lit8 v11, v10, 0x1a

    and-int/2addr v10, v5

    add-int/2addr v11, v6

    ushr-int/lit8 v12, v11, 0x1a

    and-int/2addr v11, v5

    add-int/2addr v12, v7

    ushr-int/lit8 v13, v12, 0x1a

    and-int/2addr v5, v12

    add-int/2addr v13, v4

    const/high16 v12, 0x4000000

    sub-int/2addr v13, v12

    ushr-int/lit8 v12, v13, 0x1f

    add-int/lit8 v12, v12, -0x1

    not-int v14, v12

    and-int/2addr v8, v14

    and-int/2addr v9, v12

    or-int/2addr v8, v9

    iput v8, v0, Lz0/f;->x:I

    and-int/2addr v2, v14

    and-int v9, v10, v12

    or-int/2addr v2, v9

    iput v2, v0, Lz0/f;->y:I

    and-int/2addr v6, v14

    and-int v9, v11, v12

    or-int/2addr v6, v9

    iput v6, v0, Lz0/f;->z:I

    and-int/2addr v7, v14

    and-int/2addr v5, v12

    or-int/2addr v5, v7

    iput v5, v0, Lz0/f;->A:I

    and-int/2addr v4, v14

    and-int v7, v13, v12

    or-int/2addr v4, v7

    iput v4, v0, Lz0/f;->B:I

    shl-int/lit8 v7, v2, 0x1a

    or-int/2addr v7, v8

    int-to-long v7, v7

    const-wide v9, 0xffffffffL

    and-long/2addr v7, v9

    iget v11, v0, Lz0/f;->r:I

    int-to-long v11, v11

    and-long/2addr v11, v9

    add-long/2addr v7, v11

    ushr-int/lit8 v2, v2, 0x6

    shl-int/lit8 v11, v6, 0x14

    or-int/2addr v2, v11

    int-to-long v11, v2

    and-long/2addr v11, v9

    iget v2, v0, Lz0/f;->s:I

    int-to-long v13, v2

    and-long/2addr v13, v9

    add-long/2addr v11, v13

    const/16 v2, 0xc

    ushr-int/2addr v6, v2

    shl-int/lit8 v13, v5, 0xe

    or-int/2addr v6, v13

    int-to-long v13, v6

    and-long/2addr v13, v9

    iget v6, v0, Lz0/f;->t:I

    move/from16 p2, v3

    move v15, v4

    int-to-long v3, v6

    and-long/2addr v3, v9

    add-long/2addr v13, v3

    ushr-int/lit8 v3, v5, 0x12

    const/16 v4, 0x8

    shl-int/lit8 v5, v15, 0x8

    or-int/2addr v3, v5

    int-to-long v5, v3

    and-long/2addr v5, v9

    iget v3, v0, Lz0/f;->u:I

    move-wide v15, v9

    int-to-long v9, v3

    and-long/2addr v9, v15

    add-long/2addr v5, v9

    long-to-int v3, v7

    const/4 v9, 0x0

    invoke-static {v1, v3, v9}, Lm4/d;->x([BII)V

    const/16 v3, 0x20

    ushr-long/2addr v7, v3

    add-long/2addr v11, v7

    long-to-int v7, v11

    const/4 v8, 0x4

    invoke-static {v1, v7, v8}, Lm4/d;->x([BII)V

    ushr-long v7, v11, v3

    add-long/2addr v13, v7

    long-to-int v7, v13

    invoke-static {v1, v7, v4}, Lm4/d;->x([BII)V

    ushr-long v3, v13, v3

    add-long/2addr v5, v3

    long-to-int v3, v5

    invoke-static {v1, v3, v2}, Lm4/d;->x([BII)V

    invoke-virtual {v0}, Lz0/f;->reset()V

    return p2

    :cond_c9
    new-instance v0, Lorg/bouncycastle/crypto/d0;

    const-string v1, "Output buffer is too short."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getAlgorithmName()Ljava/lang/String;
    .registers 3

    iget-object p0, p0, Lz0/f;->g:Lorg/bouncycastle/crypto/d;

    if-nez p0, :cond_7

    const-string p0, "Poly1305"

    return-object p0

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Poly1305-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/bouncycastle/crypto/d;->getAlgorithmName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getMacSize()I
    .registers 1

    const/16 p0, 0x10

    return p0
.end method

.method public final init(Lorg/bouncycastle/crypto/g;)V
    .registers 13

    iget-object v0, p0, Lz0/f;->g:Lorg/bouncycastle/crypto/d;

    if-eqz v0, :cond_17

    instance-of v1, p1, Le1/s0;

    if-eqz v1, :cond_f

    check-cast p1, Le1/s0;

    iget-object v1, p1, Le1/s0;->c:[B

    iget-object p1, p1, Le1/s0;->d:Lorg/bouncycastle/crypto/g;

    goto :goto_18

    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Poly1305 requires an IV when used with a block cipher."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_17
    const/4 v1, 0x0

    :goto_18
    instance-of v2, p1, Le1/o0;

    if-eqz v2, :cond_c8

    check-cast p1, Le1/o0;

    iget-object p1, p1, Le1/o0;->c:[B

    array-length v2, p1

    const/16 v3, 0x20

    if-ne v2, v3, :cond_c0

    const/16 v2, 0x10

    if-eqz v0, :cond_37

    if-eqz v1, :cond_2f

    array-length v3, v1

    if-ne v3, v2, :cond_2f

    goto :goto_37

    :cond_2f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Poly1305 requires a 128 bit IV."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_37
    :goto_37
    const/4 v3, 0x0

    invoke-static {v3, p1}, Lm4/d;->z(I[B)I

    move-result v4

    const/4 v5, 0x4

    invoke-static {v5, p1}, Lm4/d;->z(I[B)I

    move-result v5

    const/16 v6, 0x8

    invoke-static {v6, p1}, Lm4/d;->z(I[B)I

    move-result v7

    const/16 v8, 0xc

    invoke-static {v8, p1}, Lm4/d;->z(I[B)I

    move-result v9

    const v10, 0x3ffffff

    and-int/2addr v10, v4

    iput v10, p0, Lz0/f;->i:I

    ushr-int/lit8 v4, v4, 0x1a

    shl-int/lit8 v10, v5, 0x6

    or-int/2addr v4, v10

    const v10, 0x3ffff03

    and-int/2addr v4, v10

    iput v4, p0, Lz0/f;->j:I

    ushr-int/lit8 v5, v5, 0x14

    shl-int/lit8 v10, v7, 0xc

    or-int/2addr v5, v10

    const v10, 0x3ffc0ff

    and-int/2addr v5, v10

    iput v5, p0, Lz0/f;->k:I

    ushr-int/lit8 v7, v7, 0xe

    shl-int/lit8 v10, v9, 0x12

    or-int/2addr v7, v10

    const v10, 0x3f03fff

    and-int/2addr v7, v10

    iput v7, p0, Lz0/f;->l:I

    ushr-int/lit8 v6, v9, 0x8

    const v9, 0xfffff

    and-int/2addr v6, v9

    iput v6, p0, Lz0/f;->m:I

    mul-int/lit8 v4, v4, 0x5

    iput v4, p0, Lz0/f;->n:I

    mul-int/lit8 v5, v5, 0x5

    iput v5, p0, Lz0/f;->o:I

    mul-int/lit8 v7, v7, 0x5

    iput v7, p0, Lz0/f;->p:I

    mul-int/lit8 v6, v6, 0x5

    iput v6, p0, Lz0/f;->q:I

    if-nez v0, :cond_8f

    goto :goto_9f

    :cond_8f
    new-array v4, v2, [B

    new-instance v5, Le1/o0;

    invoke-direct {v5, p1, v2, v2}, Le1/o0;-><init>([BII)V

    const/4 p1, 0x1

    invoke-interface {v0, p1, v5}, Lorg/bouncycastle/crypto/d;->init(ZLorg/bouncycastle/crypto/g;)V

    invoke-interface {v0, v3, v3, v1, v4}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    move v2, v3

    move-object p1, v4

    :goto_9f
    invoke-static {v2, p1}, Lm4/d;->z(I[B)I

    move-result v0

    iput v0, p0, Lz0/f;->r:I

    add-int/lit8 v0, v2, 0x4

    invoke-static {v0, p1}, Lm4/d;->z(I[B)I

    move-result v0

    iput v0, p0, Lz0/f;->s:I

    add-int/lit8 v0, v2, 0x8

    invoke-static {v0, p1}, Lm4/d;->z(I[B)I

    move-result v0

    iput v0, p0, Lz0/f;->t:I

    add-int/2addr v2, v8

    invoke-static {v2, p1}, Lm4/d;->z(I[B)I

    move-result p1

    iput p1, p0, Lz0/f;->u:I

    invoke-virtual {p0}, Lz0/f;->reset()V

    return-void

    :cond_c0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Poly1305 key must be 256 bits."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Poly1305 requires a key."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final reset()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lz0/f;->w:I

    iput v0, p0, Lz0/f;->B:I

    iput v0, p0, Lz0/f;->A:I

    iput v0, p0, Lz0/f;->z:I

    iput v0, p0, Lz0/f;->y:I

    iput v0, p0, Lz0/f;->x:I

    return-void
.end method

.method public final update(B)V
    .registers 4

    iget-object v0, p0, Lz0/f;->h:[B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const/4 p1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lz0/f;->update([BII)V

    return-void
.end method

.method public final update([BII)V
    .registers 10

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-le p3, v1, :cond_28

    iget v2, p0, Lz0/f;->w:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_f

    invoke-virtual {p0}, Lz0/f;->b()V

    iput v0, p0, Lz0/f;->w:I

    :cond_f
    sub-int v2, p3, v1

    iget v4, p0, Lz0/f;->w:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int v3, v1, p2

    iget-object v4, p0, Lz0/f;->v:[B

    iget v5, p0, Lz0/f;->w:I

    invoke-static {p1, v3, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v2

    iget v3, p0, Lz0/f;->w:I

    add-int/2addr v3, v2

    iput v3, p0, Lz0/f;->w:I

    goto :goto_2

    :cond_28
    return-void
.end method
