.class public final Ln2/t0;
.super Lk2/i;


# instance fields
.field public final l:[J


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;)V
    .registers 4

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lk2/b0;-><init>(I)V

    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_1b

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x199

    if-gt v0, v1, :cond_1b

    invoke-static {v1, p1}, Ls2/b;->v(ILjava/math/BigInteger;)[J

    move-result-object p1

    iput-object p1, p0, Ln2/t0;->l:[J

    return-void

    :cond_1b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "x value invalid for SecT409FieldElement"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>([J)V
    .registers 3

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lk2/b0;-><init>(I)V

    iput-object p1, p0, Ln2/t0;->l:[J

    return-void
.end method


# virtual methods
.method public final B()Lk2/b0;
    .registers 1

    return-object p0
.end method

.method public final E()Lk2/b0;
    .registers 31

    move-object/from16 v0, p0

    iget-object v0, v0, Ln2/t0;->l:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    invoke-static {v2, v3}, Lq4/k;->c1(J)J

    move-result-wide v2

    const/4 v4, 0x1

    aget-wide v5, v0, v4

    invoke-static {v5, v6}, Lq4/k;->c1(J)J

    move-result-wide v5

    const-wide v7, 0xffffffffL

    and-long v9, v2, v7

    const/16 v11, 0x20

    shl-long v12, v5, v11

    or-long/2addr v9, v12

    ushr-long/2addr v2, v11

    const-wide v12, -0x100000000L

    and-long/2addr v5, v12

    or-long/2addr v2, v5

    const/4 v5, 0x2

    aget-wide v14, v0, v5

    invoke-static {v14, v15}, Lq4/k;->c1(J)J

    move-result-wide v14

    const/4 v6, 0x3

    aget-wide v16, v0, v6

    invoke-static/range {v16 .. v17}, Lq4/k;->c1(J)J

    move-result-wide v16

    and-long v18, v14, v7

    shl-long v20, v16, v11

    or-long v18, v18, v20

    ushr-long/2addr v14, v11

    and-long v16, v16, v12

    or-long v14, v14, v16

    const/16 v16, 0x4

    aget-wide v20, v0, v16

    invoke-static/range {v20 .. v21}, Lq4/k;->c1(J)J

    move-result-wide v20

    const/16 v17, 0x5

    aget-wide v22, v0, v17

    invoke-static/range {v22 .. v23}, Lq4/k;->c1(J)J

    move-result-wide v22

    and-long v24, v20, v7

    shl-long v26, v22, v11

    or-long v24, v24, v26

    ushr-long v20, v20, v11

    and-long v12, v22, v12

    or-long v12, v20, v12

    const/16 v20, 0x6

    aget-wide v21, v0, v20

    invoke-static/range {v21 .. v22}, Lq4/k;->c1(J)J

    move-result-wide v21

    and-long v7, v21, v7

    ushr-long v26, v21, v11

    const/16 v0, 0x2c

    shl-long v28, v2, v0

    xor-long v9, v9, v28

    shl-long v28, v14, v0

    xor-long v18, v18, v28

    const/16 v11, 0x14

    ushr-long v28, v2, v11

    xor-long v18, v18, v28

    shl-long v28, v12, v0

    xor-long v23, v24, v28

    ushr-long v28, v14, v11

    xor-long v23, v23, v28

    shl-long v28, v26, v0

    xor-long v7, v7, v28

    ushr-long v28, v12, v11

    xor-long v7, v7, v28

    const/16 v0, 0xd

    shl-long v28, v2, v0

    xor-long v7, v7, v28

    const/16 v11, 0x34

    ushr-long v21, v21, v11

    shl-long v28, v14, v0

    xor-long v21, v21, v28

    const/16 v11, 0x33

    ushr-long/2addr v2, v11

    xor-long v2, v21, v2

    shl-long v21, v12, v0

    ushr-long/2addr v14, v11

    xor-long v14, v21, v14

    shl-long v21, v26, v0

    ushr-long v11, v12, v11

    xor-long v11, v21, v11

    const/4 v0, 0x7

    new-array v0, v0, [J

    aput-wide v9, v0, v1

    aput-wide v18, v0, v4

    aput-wide v23, v0, v5

    aput-wide v7, v0, v6

    aput-wide v2, v0, v16

    aput-wide v14, v0, v17

    aput-wide v11, v0, v20

    new-instance v1, Ln2/t0;

    invoke-direct {v1, v0}, Ln2/t0;-><init>([J)V

    return-object v1
.end method

.method public final F()Lk2/b0;
    .registers 3

    const/4 v0, 0x7

    new-array v0, v0, [J

    const/16 v1, 0xd

    new-array v1, v1, [J

    iget-object p0, p0, Ln2/t0;->l:[J

    invoke-static {p0, v1}, Ln2/b;->X([J[J)V

    invoke-static {v1, v0}, Ln2/b;->O0([J[J)V

    new-instance p0, Ln2/t0;

    invoke-direct {p0, v0}, Ln2/t0;-><init>([J)V

    return-object p0
.end method

.method public final G(Lk2/b0;Lk2/b0;)Lk2/b0;
    .registers 11

    check-cast p1, Ln2/t0;

    iget-object p1, p1, Ln2/t0;->l:[J

    check-cast p2, Ln2/t0;

    iget-object p2, p2, Ln2/t0;->l:[J

    const/16 v0, 0xd

    new-array v1, v0, [J

    new-array v2, v0, [J

    iget-object p0, p0, Ln2/t0;->l:[J

    invoke-static {p0, v2}, Ln2/b;->X([J[J)V

    const/4 p0, 0x0

    move v3, p0

    :goto_15
    if-ge v3, v0, :cond_21

    aget-wide v4, v1, v3

    aget-wide v6, v2, v3

    xor-long/2addr v4, v6

    aput-wide v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_21
    const/16 v2, 0xe

    new-array v2, v2, [J

    invoke-static {p1, p2, v2}, Ln2/b;->H([J[J[J)V

    :goto_28
    if-ge p0, v0, :cond_34

    aget-wide p1, v1, p0

    aget-wide v3, v2, p0

    xor-long/2addr p1, v3

    aput-wide p1, v1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_28

    :cond_34
    const/4 p0, 0x7

    new-array p0, p0, [J

    invoke-static {v1, p0}, Ln2/b;->O0([J[J)V

    new-instance p1, Ln2/t0;

    invoke-direct {p1, p0}, Ln2/t0;-><init>([J)V

    return-object p1
.end method

.method public final H(I)Lk2/b0;
    .registers 3

    const/4 v0, 0x1

    if-ge p1, v0, :cond_4

    return-object p0

    :cond_4
    const/4 v0, 0x7

    new-array v0, v0, [J

    iget-object p0, p0, Ln2/t0;->l:[J

    invoke-static {p1, p0, v0}, Ln2/b;->D1(I[J[J)V

    new-instance p0, Ln2/t0;

    invoke-direct {p0, v0}, Ln2/t0;-><init>([J)V

    return-object p0
.end method

.method public final K()Z
    .registers 6

    iget-object p0, p0, Ln2/t0;->l:[J

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const-wide/16 v3, 0x1

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    return v0
.end method

.method public final L()Ljava/math/BigInteger;
    .registers 7

    const/16 v0, 0x38

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_5
    const/4 v2, 0x7

    if-ge v1, v2, :cond_1c

    iget-object v2, p0, Ln2/t0;->l:[J

    aget-wide v2, v2, v1

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_19

    rsub-int/lit8 v4, v1, 0x6

    shl-int/lit8 v4, v4, 0x3

    invoke-static {v4, v2, v3, v0}, Lm4/d;->E(IJ[B)V

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1c
    new-instance p0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object p0
.end method

.method public final M()Lk2/b0;
    .registers 15

    const/4 v0, 0x7

    new-array v0, v0, [J

    const/16 v1, 0xd

    new-array v1, v1, [J

    iget-object p0, p0, Ln2/t0;->l:[J

    const/4 v2, 0x0

    aget-wide v3, p0, v2

    aput-wide v3, v0, v2

    const/4 v3, 0x1

    aget-wide v4, p0, v3

    aput-wide v4, v0, v3

    const/4 v4, 0x2

    aget-wide v5, p0, v4

    aput-wide v5, v0, v4

    const/4 v5, 0x3

    aget-wide v6, p0, v5

    aput-wide v6, v0, v5

    const/4 v6, 0x4

    aget-wide v7, p0, v6

    aput-wide v7, v0, v6

    const/4 v7, 0x5

    aget-wide v8, p0, v7

    aput-wide v8, v0, v7

    const/4 v8, 0x6

    aget-wide v9, p0, v8

    aput-wide v9, v0, v8

    move v9, v3

    :goto_2d
    const/16 v10, 0x199

    if-ge v9, v10, :cond_71

    invoke-static {v0, v1}, Ln2/b;->X([J[J)V

    invoke-static {v1, v0}, Ln2/b;->O0([J[J)V

    invoke-static {v0, v1}, Ln2/b;->X([J[J)V

    invoke-static {v1, v0}, Ln2/b;->O0([J[J)V

    aget-wide v10, v0, v2

    aget-wide v12, p0, v2

    xor-long/2addr v10, v12

    aput-wide v10, v0, v2

    aget-wide v10, v0, v3

    aget-wide v12, p0, v3

    xor-long/2addr v10, v12

    aput-wide v10, v0, v3

    aget-wide v10, v0, v4

    aget-wide v12, p0, v4

    xor-long/2addr v10, v12

    aput-wide v10, v0, v4

    aget-wide v10, v0, v5

    aget-wide v12, p0, v5

    xor-long/2addr v10, v12

    aput-wide v10, v0, v5

    aget-wide v10, v0, v6

    aget-wide v12, p0, v6

    xor-long/2addr v10, v12

    aput-wide v10, v0, v6

    aget-wide v10, v0, v7

    aget-wide v12, p0, v7

    xor-long/2addr v10, v12

    aput-wide v10, v0, v7

    aget-wide v10, v0, v8

    aget-wide v12, p0, v8

    xor-long/2addr v10, v12

    aput-wide v10, v0, v8

    add-int/lit8 v9, v9, 0x2

    goto :goto_2d

    :cond_71
    new-instance p0, Ln2/t0;

    invoke-direct {p0, v0}, Ln2/t0;-><init>([J)V

    return-object p0
.end method

.method public final N()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public final O()I
    .registers 3

    iget-object p0, p0, Ln2/t0;->l:[J

    const/4 v0, 0x0

    aget-wide v0, p0, v0

    long-to-int p0, v0

    and-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final a(Lk2/b0;)Lk2/b0;
    .registers 25

    move-object/from16 v0, p1

    check-cast v0, Ln2/t0;

    iget-object v0, v0, Ln2/t0;->l:[J

    move-object/from16 v1, p0

    iget-object v1, v1, Ln2/t0;->l:[J

    const/4 v2, 0x0

    aget-wide v3, v1, v2

    aget-wide v5, v0, v2

    xor-long/2addr v3, v5

    const/4 v5, 0x1

    aget-wide v6, v1, v5

    aget-wide v8, v0, v5

    xor-long/2addr v6, v8

    const/4 v8, 0x2

    aget-wide v9, v1, v8

    aget-wide v11, v0, v8

    xor-long/2addr v9, v11

    const/4 v11, 0x3

    aget-wide v12, v1, v11

    aget-wide v14, v0, v11

    xor-long/2addr v12, v14

    const/4 v14, 0x4

    aget-wide v15, v1, v14

    aget-wide v17, v0, v14

    xor-long v15, v15, v17

    const/16 v17, 0x5

    aget-wide v18, v1, v17

    aget-wide v20, v0, v17

    xor-long v18, v18, v20

    const/16 v20, 0x6

    aget-wide v21, v1, v20

    aget-wide v0, v0, v20

    xor-long v0, v21, v0

    move/from16 p0, v2

    const/4 v2, 0x7

    new-array v2, v2, [J

    aput-wide v3, v2, p0

    aput-wide v6, v2, v5

    aput-wide v9, v2, v8

    aput-wide v12, v2, v11

    aput-wide v15, v2, v14

    aput-wide v18, v2, v17

    aput-wide v0, v2, v20

    new-instance v0, Ln2/t0;

    invoke-direct {v0, v2}, Ln2/t0;-><init>([J)V

    return-object v0
.end method

.method public final b()Lk2/b0;
    .registers 23

    move-object/from16 v0, p0

    iget-object v0, v0, Ln2/t0;->l:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x1

    xor-long/2addr v2, v4

    const/4 v4, 0x1

    aget-wide v5, v0, v4

    const/4 v7, 0x2

    aget-wide v8, v0, v7

    const/4 v10, 0x3

    aget-wide v11, v0, v10

    const/4 v13, 0x4

    aget-wide v14, v0, v13

    const/16 v16, 0x5

    aget-wide v17, v0, v16

    const/16 v19, 0x6

    aget-wide v20, v0, v19

    const/4 v0, 0x7

    new-array v0, v0, [J

    aput-wide v2, v0, v1

    aput-wide v5, v0, v4

    aput-wide v8, v0, v7

    aput-wide v11, v0, v10

    aput-wide v14, v0, v13

    aput-wide v17, v0, v16

    aput-wide v20, v0, v19

    new-instance v1, Ln2/t0;

    invoke-direct {v1, v0}, Ln2/t0;-><init>([J)V

    return-object v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Ln2/t0;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Ln2/t0;

    iget-object p1, p1, Ln2/t0;->l:[J

    const/4 v1, 0x6

    :goto_f
    if-ltz v1, :cond_1f

    iget-object v3, p0, Ln2/t0;->l:[J

    aget-wide v3, v3, v1

    aget-wide v5, p1, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1c

    return v2

    :cond_1c
    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    :cond_1f
    return v0
.end method

.method public final f(Lk2/b0;)Lk2/b0;
    .registers 2

    invoke-virtual {p1}, Lk2/b0;->q()Lk2/b0;

    move-result-object p1

    invoke-virtual {p0, p1}, Ln2/t0;->x(Lk2/b0;)Lk2/b0;

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .registers 2

    iget-object p0, p0, Ln2/t0;->l:[J

    const/4 v0, 0x7

    invoke-static {p0, v0}, Lm4/d;->v([JI)I

    move-result p0

    const v0, 0x3e68e7

    xor-int/2addr p0, v0

    return p0
.end method

.method public final k()I
    .registers 1

    const/16 p0, 0x199

    return p0
.end method

.method public final q()Lk2/b0;
    .registers 9

    const/4 v0, 0x7

    new-array v1, v0, [J

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_72

    iget-object v3, p0, Ln2/t0;->l:[J

    aget-wide v4, v3, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_6f

    new-array p0, v0, [J

    new-array v2, v0, [J

    new-array v0, v0, [J

    const/16 v4, 0xd

    new-array v4, v4, [J

    invoke-static {v3, v4}, Ln2/b;->X([J[J)V

    invoke-static {v4, p0}, Ln2/b;->O0([J[J)V

    const/4 v3, 0x1

    invoke-static {v3, p0, v2}, Ln2/b;->D1(I[J[J)V

    invoke-static {p0, v2, p0}, Ln2/b;->r0([J[J[J)V

    invoke-static {v3, v2, v2}, Ln2/b;->D1(I[J[J)V

    invoke-static {p0, v2, p0}, Ln2/b;->r0([J[J[J)V

    const/4 v3, 0x3

    invoke-static {v3, p0, v2}, Ln2/b;->D1(I[J[J)V

    invoke-static {p0, v2, p0}, Ln2/b;->r0([J[J[J)V

    const/4 v3, 0x6

    invoke-static {v3, p0, v2}, Ln2/b;->D1(I[J[J)V

    invoke-static {p0, v2, p0}, Ln2/b;->r0([J[J[J)V

    const/16 v3, 0xc

    invoke-static {v3, p0, v2}, Ln2/b;->D1(I[J[J)V

    invoke-static {p0, v2, v0}, Ln2/b;->r0([J[J[J)V

    const/16 v3, 0x18

    invoke-static {v3, v0, p0}, Ln2/b;->D1(I[J[J)V

    invoke-static {v3, p0, v2}, Ln2/b;->D1(I[J[J)V

    invoke-static {p0, v2, p0}, Ln2/b;->r0([J[J[J)V

    const/16 v3, 0x30

    invoke-static {v3, p0, v2}, Ln2/b;->D1(I[J[J)V

    invoke-static {p0, v2, p0}, Ln2/b;->r0([J[J[J)V

    const/16 v3, 0x60

    invoke-static {v3, p0, v2}, Ln2/b;->D1(I[J[J)V

    invoke-static {p0, v2, p0}, Ln2/b;->r0([J[J[J)V

    const/16 v3, 0xc0

    invoke-static {v3, p0, v2}, Ln2/b;->D1(I[J[J)V

    invoke-static {p0, v2, p0}, Ln2/b;->r0([J[J[J)V

    invoke-static {p0, v0, v1}, Ln2/b;->r0([J[J[J)V

    new-instance p0, Ln2/t0;

    invoke-direct {p0, v1}, Ln2/t0;-><init>([J)V

    return-object p0

    :cond_6f
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_72
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public final s()Z
    .registers 8

    iget-object p0, p0, Ln2/t0;->l:[J

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_c

    goto :goto_19

    :cond_c
    const/4 v1, 0x1

    move v2, v1

    :goto_e
    const/4 v3, 0x7

    if-ge v2, v3, :cond_1d

    aget-wide v3, p0, v2

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1a

    :goto_19
    return v0

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_1d
    return v1
.end method

.method public final t()Z
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/4 v2, 0x7

    if-ge v1, v2, :cond_13

    iget-object v2, p0, Ln2/t0;->l:[J

    aget-wide v2, v2, v1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_10

    return v0

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_13
    const/4 p0, 0x1

    return p0
.end method

.method public final x(Lk2/b0;)Lk2/b0;
    .registers 3

    const/4 v0, 0x7

    new-array v0, v0, [J

    check-cast p1, Ln2/t0;

    iget-object p1, p1, Ln2/t0;->l:[J

    iget-object p0, p0, Ln2/t0;->l:[J

    invoke-static {p0, p1, v0}, Ln2/b;->r0([J[J[J)V

    new-instance p0, Ln2/t0;

    invoke-direct {p0, v0}, Ln2/t0;-><init>([J)V

    return-object p0
.end method

.method public final y(Lk2/b0;Lk2/b0;Lk2/b0;)Lk2/b0;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ln2/t0;->z(Lk2/b0;Lk2/b0;Lk2/b0;)Lk2/b0;

    move-result-object p0

    return-object p0
.end method

.method public final z(Lk2/b0;Lk2/b0;Lk2/b0;)Lk2/b0;
    .registers 12

    check-cast p1, Ln2/t0;

    iget-object p1, p1, Ln2/t0;->l:[J

    check-cast p2, Ln2/t0;

    iget-object p2, p2, Ln2/t0;->l:[J

    check-cast p3, Ln2/t0;

    iget-object p3, p3, Ln2/t0;->l:[J

    const/16 v0, 0xd

    new-array v1, v0, [J

    const/16 v2, 0xe

    new-array v3, v2, [J

    iget-object p0, p0, Ln2/t0;->l:[J

    invoke-static {p0, p1, v3}, Ln2/b;->H([J[J[J)V

    const/4 p0, 0x0

    move p1, p0

    :goto_1b
    if-ge p1, v0, :cond_27

    aget-wide v4, v1, p1

    aget-wide v6, v3, p1

    xor-long/2addr v4, v6

    aput-wide v4, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1b

    :cond_27
    new-array p1, v2, [J

    invoke-static {p2, p3, p1}, Ln2/b;->H([J[J[J)V

    :goto_2c
    if-ge p0, v0, :cond_38

    aget-wide p2, v1, p0

    aget-wide v2, p1, p0

    xor-long/2addr p2, v2

    aput-wide p2, v1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_2c

    :cond_38
    const/4 p0, 0x7

    new-array p0, p0, [J

    invoke-static {v1, p0}, Ln2/b;->O0([J[J)V

    new-instance p1, Ln2/t0;

    invoke-direct {p1, p0}, Ln2/t0;-><init>([J)V

    return-object p1
.end method
