.class public final Ls0/j0;
.super Ljava/lang/Object;


# instance fields
.field public a:[B

.field public b:I

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;


# virtual methods
.method public a([J)V
    .registers 8

    iget v0, p0, Ls0/j0;->b:I

    :goto_2
    iget-object v1, p0, Ls0/j0;->a:[B

    array-length v2, v1

    if-ge v0, v2, :cond_d

    const/4 v2, 0x0

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_d
    iget-object v0, p0, Ls0/j0;->c:Ljava/lang/Object;

    check-cast v0, Ls0/k0;

    iget-object v0, v0, Ls0/k0;->a:[J

    const/4 v1, 0x1

    aget-wide v2, v0, v1

    const-wide/high16 v4, -0x8000000000000000L

    or-long/2addr v2, v4

    aput-wide v2, v0, v1

    invoke-virtual {p0, p1}, Ls0/j0;->c([J)V

    return-void
.end method

.method public b([BI[B)V
    .registers 10

    iget-object v0, p0, Ls0/j0;->d:Ljava/lang/Object;

    check-cast v0, [B

    iget-object v1, p0, Ls0/j0;->c:Ljava/lang/Object;

    check-cast v1, [B

    iget v2, p0, Ls0/j0;->b:I

    add-int v3, p2, v2

    array-length v4, p1

    if-gt v3, v4, :cond_3d

    array-length v3, p3

    if-gt v2, v3, :cond_35

    iget-object p0, p0, Ls0/j0;->e:Ljava/lang/Object;

    check-cast p0, Lorg/bouncycastle/crypto/d;

    const/4 v3, 0x0

    invoke-interface {p0, v3, v3, v1, v0}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    move p0, v3

    :goto_1b
    if-ge p0, v2, :cond_2a

    aget-byte v4, v0, p0

    add-int v5, p2, p0

    aget-byte v5, p1, v5

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_1b

    :cond_2a
    array-length p0, v1

    sub-int/2addr p0, v2

    invoke-static {v1, v2, v1, v3, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, v1

    sub-int/2addr p0, v2

    invoke-static {p3, v3, v1, p0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_35
    new-instance p0, Lorg/bouncycastle/crypto/d0;

    const-string p1, "output buffer too short"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3d
    new-instance p0, Lorg/bouncycastle/crypto/q;

    const-string p1, "input buffer too short"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public c([J)V
    .registers 8

    iget-object v0, p0, Ls0/j0;->e:Ljava/lang/Object;

    check-cast v0, Ls0/l0;

    iget-object v1, v0, Ls0/l0;->g:Lv0/i0;

    iget-object v0, v0, Ls0/l0;->i:[J

    iget-object v2, p0, Ls0/j0;->c:Ljava/lang/Object;

    check-cast v2, Ls0/k0;

    iget-object v2, v2, Ls0/k0;->a:[J

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v0, v2}, Lv0/i0;->a(Z[J[J)V

    iget-object v0, p0, Ls0/j0;->a:[B

    iget-object v2, p0, Ls0/j0;->d:Ljava/lang/Object;

    check-cast v2, [J

    const/4 v3, 0x0

    invoke-static {v3, v0, v2}, Lm4/d;->D(I[B[J)V

    iget-object v0, p0, Ls0/j0;->d:Ljava/lang/Object;

    check-cast v0, [J

    invoke-virtual {v1, v0, p1}, Lv0/i0;->d([J[J)V

    :goto_23
    array-length v0, p1

    if-ge v3, v0, :cond_34

    aget-wide v0, p1, v3

    iget-object v2, p0, Ls0/j0;->d:Ljava/lang/Object;

    check-cast v2, [J

    aget-wide v4, v2, v3

    xor-long/2addr v0, v4

    aput-wide v0, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    :cond_34
    return-void
.end method

.method public d([BII[J)V
    .registers 24

    move-object/from16 v0, p0

    move/from16 v1, p3

    iget-object v2, v0, Ls0/j0;->c:Ljava/lang/Object;

    check-cast v2, Ls0/k0;

    const/4 v3, 0x0

    move v4, v3

    :cond_a
    :goto_a
    if-le v1, v4, :cond_ad

    iget v5, v0, Ls0/j0;->b:I

    iget-object v6, v0, Ls0/j0;->a:[B

    array-length v6, v6

    const/4 v7, 0x1

    if-ne v5, v6, :cond_28

    move-object/from16 v5, p4

    invoke-virtual {v0, v5}, Ls0/j0;->c([J)V

    iget-object v6, v2, Ls0/k0;->a:[J

    aget-wide v8, v6, v7

    const-wide v10, -0x4000000000000001L    # -1.9999999999999998

    and-long/2addr v8, v10

    aput-wide v8, v6, v7

    iput v3, v0, Ls0/j0;->b:I

    goto :goto_2a

    :cond_28
    move-object/from16 v5, p4

    :goto_2a
    sub-int v6, v1, v4

    iget-object v8, v0, Ls0/j0;->a:[B

    array-length v8, v8

    iget v9, v0, Ls0/j0;->b:I

    sub-int/2addr v8, v9

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int v8, p2, v4

    iget-object v9, v0, Ls0/j0;->a:[B

    iget v10, v0, Ls0/j0;->b:I

    move-object/from16 v11, p1

    invoke-static {v11, v8, v9, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v6

    iget v8, v0, Ls0/j0;->b:I

    add-int/2addr v8, v6

    iput v8, v0, Ls0/j0;->b:I

    iget-boolean v8, v2, Ls0/k0;->b:Z

    if-eqz v8, :cond_98

    const/4 v8, 0x3

    new-array v9, v8, [J

    iget-object v10, v2, Ls0/k0;->a:[J

    aget-wide v12, v10, v3

    const-wide v14, 0xffffffffL

    and-long/2addr v12, v14

    aput-wide v12, v9, v3

    aget-wide v12, v10, v3

    const/16 v16, 0x20

    ushr-long v12, v12, v16

    and-long/2addr v12, v14

    aput-wide v12, v9, v7

    aget-wide v12, v10, v7

    and-long/2addr v12, v14

    const/4 v10, 0x2

    aput-wide v12, v9, v10

    int-to-long v12, v6

    move v6, v3

    :goto_6b
    if-ge v6, v8, :cond_78

    aget-wide v17, v9, v6

    add-long v12, v12, v17

    aput-wide v12, v9, v6

    ushr-long v12, v12, v16

    add-int/lit8 v6, v6, 0x1

    goto :goto_6b

    :cond_78
    iget-object v6, v2, Ls0/k0;->a:[J

    aget-wide v12, v9, v7

    and-long/2addr v12, v14

    shl-long v12, v12, v16

    aget-wide v16, v9, v3

    and-long v16, v16, v14

    or-long v12, v12, v16

    aput-wide v12, v6, v3

    aget-wide v12, v6, v7

    const-wide v16, -0x100000000L

    and-long v12, v12, v16

    aget-wide v8, v9, v10

    and-long/2addr v8, v14

    or-long/2addr v8, v12

    aput-wide v8, v6, v7

    goto/16 :goto_a

    :cond_98
    iget-object v8, v2, Ls0/k0;->a:[J

    aget-wide v9, v8, v3

    int-to-long v12, v6

    add-long/2addr v9, v12

    aput-wide v9, v8, v3

    const-wide v12, 0x7fffffff80000000L

    cmp-long v6, v9, v12

    if-lez v6, :cond_a

    iput-boolean v7, v2, Ls0/k0;->b:Z

    goto/16 :goto_a

    :cond_ad
    return-void
.end method
