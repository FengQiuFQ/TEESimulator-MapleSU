.class public Lz0/h;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/b0;


# instance fields
.field public final g:I

.field public final h:I

.field public i:J

.field public j:J

.field public k:J

.field public l:J

.field public m:J

.field public n:J

.field public o:J

.field public p:I

.field public q:I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lz0/h;->o:J

    const/4 v0, 0x0

    iput v0, p0, Lz0/h;->p:I

    iput v0, p0, Lz0/h;->q:I

    const/4 v0, 0x2

    iput v0, p0, Lz0/h;->g:I

    const/4 v0, 0x4

    iput v0, p0, Lz0/h;->h:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lz0/h;->o:J

    const/4 p1, 0x0

    iput p1, p0, Lz0/h;->p:I

    iput p1, p0, Lz0/h;->q:I

    const/4 p1, 0x4

    iput p1, p0, Lz0/h;->g:I

    const/16 p1, 0x8

    iput p1, p0, Lz0/h;->h:I

    return-void
.end method

.method public static d(IJ)J
    .registers 5

    shl-long v0, p1, p0

    neg-int p0, p0

    ushr-long p0, p1, p0

    or-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public final a(I)V
    .registers 13

    iget-wide v0, p0, Lz0/h;->k:J

    iget-wide v2, p0, Lz0/h;->l:J

    iget-wide v4, p0, Lz0/h;->m:J

    iget-wide v6, p0, Lz0/h;->n:J

    const/4 v8, 0x0

    :goto_9
    if-ge v8, p1, :cond_38

    add-long/2addr v0, v2

    add-long/2addr v4, v6

    const/16 v9, 0xd

    invoke-static {v9, v2, v3}, Lz0/h;->d(IJ)J

    move-result-wide v2

    const/16 v9, 0x10

    invoke-static {v9, v6, v7}, Lz0/h;->d(IJ)J

    move-result-wide v6

    xor-long/2addr v2, v0

    xor-long/2addr v6, v4

    const/16 v9, 0x20

    invoke-static {v9, v0, v1}, Lz0/h;->d(IJ)J

    move-result-wide v0

    add-long/2addr v4, v2

    add-long/2addr v0, v6

    const/16 v10, 0x11

    invoke-static {v10, v2, v3}, Lz0/h;->d(IJ)J

    move-result-wide v2

    const/16 v10, 0x15

    invoke-static {v10, v6, v7}, Lz0/h;->d(IJ)J

    move-result-wide v6

    xor-long/2addr v2, v4

    xor-long/2addr v6, v0

    invoke-static {v9, v4, v5}, Lz0/h;->d(IJ)J

    move-result-wide v4

    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_38
    iput-wide v0, p0, Lz0/h;->k:J

    iput-wide v2, p0, Lz0/h;->l:J

    iput-wide v4, p0, Lz0/h;->m:J

    iput-wide v6, p0, Lz0/h;->n:J

    return-void
.end method

.method public b()J
    .registers 8

    iget-wide v0, p0, Lz0/h;->o:J

    iget v2, p0, Lz0/h;->p:I

    rsub-int/lit8 v3, v2, 0x7

    shl-int/lit8 v3, v3, 0x3

    ushr-long/2addr v0, v3

    const/16 v3, 0x8

    ushr-long/2addr v0, v3

    iget v3, p0, Lz0/h;->q:I

    shl-int/lit8 v3, v3, 0x3

    add-int/2addr v3, v2

    int-to-long v2, v3

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    const/16 v6, 0x38

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    iput-wide v0, p0, Lz0/h;->o:J

    invoke-virtual {p0}, Lz0/h;->c()V

    iget-wide v0, p0, Lz0/h;->m:J

    xor-long/2addr v0, v4

    iput-wide v0, p0, Lz0/h;->m:J

    iget v0, p0, Lz0/h;->h:I

    invoke-virtual {p0, v0}, Lz0/h;->a(I)V

    iget-wide v0, p0, Lz0/h;->k:J

    iget-wide v2, p0, Lz0/h;->l:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lz0/h;->m:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lz0/h;->n:J

    xor-long/2addr v0, v2

    invoke-virtual {p0}, Lz0/h;->reset()V

    return-wide v0
.end method

.method public final c()V
    .registers 5

    iget v0, p0, Lz0/h;->q:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lz0/h;->q:I

    iget-wide v0, p0, Lz0/h;->n:J

    iget-wide v2, p0, Lz0/h;->o:J

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lz0/h;->n:J

    iget v0, p0, Lz0/h;->g:I

    invoke-virtual {p0, v0}, Lz0/h;->a(I)V

    iget-wide v0, p0, Lz0/h;->k:J

    iget-wide v2, p0, Lz0/h;->o:J

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lz0/h;->k:J

    return-void
.end method

.method public doFinal([BI)I
    .registers 5

    const/4 p2, 0x0

    invoke-virtual {p0}, Lz0/h;->b()J

    move-result-wide v0

    invoke-static {p2, v0, v1, p1}, Lm4/d;->F(IJ[B)V

    const/16 p0, 0x8

    return p0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SipHash-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lz0/h;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lz0/h;->h:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMacSize()I
    .registers 1

    const/16 p0, 0x8

    return p0
.end method

.method public final init(Lorg/bouncycastle/crypto/g;)V
    .registers 4

    instance-of v0, p1, Le1/o0;

    if-eqz v0, :cond_28

    check-cast p1, Le1/o0;

    iget-object p1, p1, Le1/o0;->c:[B

    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_20

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lm4/d;->C(I[B)J

    move-result-wide v0

    iput-wide v0, p0, Lz0/h;->i:J

    const/16 v0, 0x8

    invoke-static {v0, p1}, Lm4/d;->C(I[B)J

    move-result-wide v0

    iput-wide v0, p0, Lz0/h;->j:J

    invoke-virtual {p0}, Lz0/h;->reset()V

    return-void

    :cond_20
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'params\' must be a 128-bit key"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_28
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'params\' must be an instance of KeyParameter"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public reset()V
    .registers 7

    iget-wide v0, p0, Lz0/h;->i:J

    const-wide v2, 0x736f6d6570736575L    # 1.0986868386607877E248

    xor-long/2addr v2, v0

    iput-wide v2, p0, Lz0/h;->k:J

    iget-wide v2, p0, Lz0/h;->j:J

    const-wide v4, 0x646f72616e646f6dL    # 6.222199573468475E175

    xor-long/2addr v4, v2

    iput-wide v4, p0, Lz0/h;->l:J

    const-wide v4, 0x6c7967656e657261L    # 3.4208747916531402E214

    xor-long/2addr v0, v4

    iput-wide v0, p0, Lz0/h;->m:J

    const-wide v0, 0x7465646279746573L    # 4.901176695720602E252

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lz0/h;->n:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lz0/h;->o:J

    const/4 v0, 0x0

    iput v0, p0, Lz0/h;->p:I

    iput v0, p0, Lz0/h;->q:I

    return-void
.end method

.method public final update(B)V
    .registers 9

    iget-wide v0, p0, Lz0/h;->o:J

    const/16 v2, 0x8

    ushr-long/2addr v0, v2

    int-to-long v3, p1

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    const/16 p1, 0x38

    shl-long/2addr v3, p1

    or-long/2addr v0, v3

    iput-wide v0, p0, Lz0/h;->o:J

    iget p1, p0, Lz0/h;->p:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lz0/h;->p:I

    if-ne p1, v2, :cond_1d

    invoke-virtual {p0}, Lz0/h;->c()V

    const/4 p1, 0x0

    iput p1, p0, Lz0/h;->p:I

    :cond_1d
    return-void
.end method

.method public final update([BII)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    and-int/lit8 v3, v2, -0x8

    iget v4, v0, Lz0/h;->p:I

    const/16 v5, 0x38

    const-wide/16 v6, 0xff

    const/16 v8, 0x8

    const/4 v9, 0x0

    if-nez v4, :cond_3c

    :goto_13
    if-ge v9, v3, :cond_23

    add-int v4, p2, v9

    invoke-static {v4, v1}, Lm4/d;->C(I[B)J

    move-result-wide v10

    iput-wide v10, v0, Lz0/h;->o:J

    invoke-virtual {v0}, Lz0/h;->c()V

    add-int/lit8 v9, v9, 0x8

    goto :goto_13

    :cond_23
    :goto_23
    if-ge v9, v2, :cond_37

    iget-wide v10, v0, Lz0/h;->o:J

    ushr-long/2addr v10, v8

    iput-wide v10, v0, Lz0/h;->o:J

    add-int v4, p2, v9

    aget-byte v4, v1, v4

    int-to-long v12, v4

    and-long/2addr v12, v6

    shl-long/2addr v12, v5

    or-long/2addr v10, v12

    iput-wide v10, v0, Lz0/h;->o:J

    add-int/lit8 v9, v9, 0x1

    goto :goto_23

    :cond_37
    sub-int v1, v2, v3

    iput v1, v0, Lz0/h;->p:I

    return-void

    :cond_3c
    shl-int/lit8 v4, v4, 0x3

    move v10, v9

    :goto_3f
    if-ge v10, v3, :cond_5e

    add-int v11, p2, v10

    invoke-static {v11, v1}, Lm4/d;->C(I[B)J

    move-result-wide v11

    shl-long v13, v11, v4

    move v15, v5

    move-wide/from16 v16, v6

    iget-wide v5, v0, Lz0/h;->o:J

    neg-int v7, v4

    ushr-long/2addr v5, v7

    or-long/2addr v5, v13

    iput-wide v5, v0, Lz0/h;->o:J

    invoke-virtual {v0}, Lz0/h;->c()V

    iput-wide v11, v0, Lz0/h;->o:J

    add-int/lit8 v10, v10, 0x8

    move v5, v15

    move-wide/from16 v6, v16

    goto :goto_3f

    :cond_5e
    move v15, v5

    move-wide/from16 v16, v6

    :goto_61
    if-ge v10, v2, :cond_83

    iget-wide v3, v0, Lz0/h;->o:J

    ushr-long/2addr v3, v8

    iput-wide v3, v0, Lz0/h;->o:J

    add-int v5, p2, v10

    aget-byte v5, v1, v5

    int-to-long v5, v5

    and-long v5, v5, v16

    shl-long/2addr v5, v15

    or-long/2addr v3, v5

    iput-wide v3, v0, Lz0/h;->o:J

    iget v3, v0, Lz0/h;->p:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lz0/h;->p:I

    if-ne v3, v8, :cond_80

    invoke-virtual {v0}, Lz0/h;->c()V

    iput v9, v0, Lz0/h;->p:I

    :cond_80
    add-int/lit8 v10, v10, 0x1

    goto :goto_61

    :cond_83
    return-void
.end method
