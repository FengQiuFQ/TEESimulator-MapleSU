.class public final Ln2/o0;
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

    const/16 v1, 0xef

    if-gt v0, v1, :cond_1b

    invoke-static {v1, p1}, Ls2/b;->v(ILjava/math/BigInteger;)[J

    move-result-object p1

    iput-object p1, p0, Ln2/o0;->l:[J

    return-void

    :cond_1b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "x value invalid for SecT239FieldElement"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>([J)V
    .registers 3

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lk2/b0;-><init>(I)V

    iput-object p1, p0, Ln2/o0;->l:[J

    return-void
.end method


# virtual methods
.method public final B()Lk2/b0;
    .registers 1

    return-object p0
.end method

.method public final E()Lk2/b0;
    .registers 30

    const/4 v0, 0x4

    new-array v1, v0, [J

    move-object/from16 v2, p0

    iget-object v2, v2, Ln2/o0;->l:[J

    const/4 v3, 0x0

    aget-wide v4, v2, v3

    invoke-static {v4, v5}, Lq4/k;->c1(J)J

    move-result-wide v4

    const/4 v6, 0x1

    aget-wide v7, v2, v6

    invoke-static {v7, v8}, Lq4/k;->c1(J)J

    move-result-wide v7

    const-wide v9, 0xffffffffL

    and-long v11, v4, v9

    const/16 v13, 0x20

    shl-long v14, v7, v13

    or-long/2addr v11, v14

    ushr-long/2addr v4, v13

    const-wide v14, -0x100000000L

    and-long/2addr v7, v14

    or-long/2addr v4, v7

    const/4 v7, 0x2

    aget-wide v16, v2, v7

    invoke-static/range {v16 .. v17}, Lq4/k;->c1(J)J

    move-result-wide v16

    const/4 v8, 0x3

    aget-wide v18, v2, v8

    invoke-static/range {v18 .. v19}, Lq4/k;->c1(J)J

    move-result-wide v18

    and-long v8, v16, v9

    shl-long v20, v18, v13

    or-long v8, v8, v20

    ushr-long v16, v16, v13

    and-long v13, v18, v14

    or-long v13, v16, v13

    const/16 v2, 0x31

    ushr-long v15, v13, v2

    ushr-long v17, v4, v2

    const/16 v2, 0xf

    shl-long v19, v13, v2

    or-long v17, v17, v19

    shl-long v19, v4, v2

    xor-long v13, v13, v19

    const/16 v2, 0x8

    new-array v2, v2, [J

    const/16 v10, 0x27

    move/from16 v19, v0

    const/16 v0, 0x78

    filled-new-array {v10, v0}, [I

    move-result-object v0

    move v10, v3

    :goto_62
    if-ge v10, v7, :cond_b2

    aget v20, v0, v10

    ushr-int/lit8 v21, v20, 0x6

    move/from16 p0, v3

    and-int/lit8 v3, v20, 0x3f

    aget-wide v22, v2, v21

    shl-long v24, v4, v3

    xor-long v22, v22, v24

    aput-wide v22, v2, v21

    add-int/lit8 v20, v21, 0x1

    aget-wide v22, v2, v20

    shl-long v24, v13, v3

    move/from16 v26, v6

    neg-int v6, v3

    ushr-long v27, v4, v6

    or-long v24, v24, v27

    xor-long v22, v22, v24

    aput-wide v22, v2, v20

    add-int/lit8 v20, v21, 0x2

    aget-wide v22, v2, v20

    shl-long v24, v17, v3

    ushr-long v27, v13, v6

    or-long v24, v24, v27

    xor-long v22, v22, v24

    aput-wide v22, v2, v20

    add-int/lit8 v20, v21, 0x3

    aget-wide v22, v2, v20

    shl-long v24, v15, v3

    ushr-long v27, v17, v6

    or-long v24, v24, v27

    xor-long v22, v22, v24

    aput-wide v22, v2, v20

    add-int/lit8 v21, v21, 0x4

    aget-wide v22, v2, v21

    ushr-long v24, v15, v6

    xor-long v22, v22, v24

    aput-wide v22, v2, v21

    add-int/lit8 v10, v10, 0x1

    move/from16 v3, p0

    move/from16 v6, v26

    goto :goto_62

    :cond_b2
    move/from16 p0, v3

    move/from16 v26, v6

    invoke-static {v2, v1}, Ln2/b;->M0([J[J)V

    aget-wide v2, v1, p0

    xor-long/2addr v2, v11

    aput-wide v2, v1, p0

    aget-wide v2, v1, v26

    xor-long/2addr v2, v8

    aput-wide v2, v1, v26

    new-instance v0, Ln2/o0;

    invoke-direct {v0, v1}, Ln2/o0;-><init>([J)V

    return-object v0
.end method

.method public final F()Lk2/b0;
    .registers 2

    const/4 v0, 0x4

    new-array v0, v0, [J

    iget-object p0, p0, Ln2/o0;->l:[J

    invoke-static {p0, v0}, Ln2/b;->i1([J[J)V

    new-instance p0, Ln2/o0;

    invoke-direct {p0, v0}, Ln2/o0;-><init>([J)V

    return-object p0
.end method

.method public final G(Lk2/b0;Lk2/b0;)Lk2/b0;
    .registers 7

    check-cast p1, Ln2/o0;

    iget-object p1, p1, Ln2/o0;->l:[J

    check-cast p2, Ln2/o0;

    iget-object p2, p2, Ln2/o0;->l:[J

    const/16 v0, 0x8

    new-array v1, v0, [J

    new-array v2, v0, [J

    const/4 v3, 0x4

    iget-object p0, p0, Ln2/o0;->l:[J

    invoke-static {v3, p0, v2}, Lq4/k;->R(I[J[J)V

    invoke-static {v1, v2, v1}, Ln2/b;->n([J[J[J)V

    new-array p0, v0, [J

    invoke-static {p1, p2, p0}, Ln2/b;->G([J[J[J)V

    invoke-static {v1, p0, v1}, Ln2/b;->n([J[J[J)V

    new-array p0, v3, [J

    invoke-static {v1, p0}, Ln2/b;->M0([J[J)V

    new-instance p1, Ln2/o0;

    invoke-direct {p1, p0}, Ln2/o0;-><init>([J)V

    return-object p1
.end method

.method public final H(I)Lk2/b0;
    .registers 3

    const/4 v0, 0x1

    if-ge p1, v0, :cond_4

    return-object p0

    :cond_4
    const/4 v0, 0x4

    new-array v0, v0, [J

    iget-object p0, p0, Ln2/o0;->l:[J

    invoke-static {p1, p0, v0}, Ln2/b;->C1(I[J[J)V

    new-instance p0, Ln2/o0;

    invoke-direct {p0, v0}, Ln2/o0;-><init>([J)V

    return-object p0
.end method

.method public final K()Z
    .registers 6

    iget-object p0, p0, Ln2/o0;->l:[J

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
    .registers 1

    iget-object p0, p0, Ln2/o0;->l:[J

    invoke-static {p0}, Lq4/k;->Y0([J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public final M()Lk2/b0;
    .registers 11

    const/4 v0, 0x4

    new-array v1, v0, [J

    const/16 v2, 0x8

    new-array v2, v2, [J

    iget-object p0, p0, Ln2/o0;->l:[J

    invoke-static {p0, v1}, Lq4/k;->D([J[J)V

    const/4 v3, 0x1

    move v4, v3

    :goto_e
    const/16 v5, 0xef

    if-ge v4, v5, :cond_40

    invoke-static {v0, v1, v2}, Lq4/k;->R(I[J[J)V

    invoke-static {v2, v1}, Ln2/b;->M0([J[J)V

    invoke-static {v0, v1, v2}, Lq4/k;->R(I[J[J)V

    invoke-static {v2, v1}, Ln2/b;->M0([J[J)V

    const/4 v5, 0x0

    aget-wide v6, v1, v5

    aget-wide v8, p0, v5

    xor-long/2addr v6, v8

    aput-wide v6, v1, v5

    aget-wide v5, v1, v3

    aget-wide v7, p0, v3

    xor-long/2addr v5, v7

    aput-wide v5, v1, v3

    const/4 v5, 0x2

    aget-wide v6, v1, v5

    aget-wide v8, p0, v5

    xor-long/2addr v6, v8

    aput-wide v6, v1, v5

    const/4 v5, 0x3

    aget-wide v6, v1, v5

    aget-wide v8, p0, v5

    xor-long/2addr v6, v8

    aput-wide v6, v1, v5

    add-int/lit8 v4, v4, 0x2

    goto :goto_e

    :cond_40
    new-instance p0, Ln2/o0;

    invoke-direct {p0, v1}, Ln2/o0;-><init>([J)V

    return-object p0
.end method

.method public final N()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public final O()I
    .registers 7

    const/4 v0, 0x0

    iget-object p0, p0, Ln2/o0;->l:[J

    aget-wide v0, p0, v0

    const/4 v2, 0x1

    aget-wide v3, p0, v2

    const/16 v5, 0x11

    ushr-long/2addr v3, v5

    xor-long/2addr v0, v3

    const/4 v3, 0x2

    aget-wide v3, p0, v3

    const/16 p0, 0x22

    ushr-long/2addr v3, p0

    xor-long/2addr v0, v3

    long-to-int p0, v0

    and-int/2addr p0, v2

    return p0
.end method

.method public final a(Lk2/b0;)Lk2/b0;
    .registers 14

    check-cast p1, Ln2/o0;

    iget-object p1, p1, Ln2/o0;->l:[J

    iget-object p0, p0, Ln2/o0;->l:[J

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    const/4 v3, 0x1

    aget-wide v4, p0, v3

    aget-wide v6, p1, v3

    xor-long/2addr v4, v6

    const/4 v6, 0x2

    aget-wide v7, p0, v6

    aget-wide v9, p1, v6

    xor-long/2addr v7, v9

    const/4 v9, 0x3

    aget-wide v10, p0, v9

    aget-wide p0, p1, v9

    xor-long/2addr p0, v10

    const/4 v10, 0x4

    new-array v10, v10, [J

    aput-wide v1, v10, v0

    aput-wide v4, v10, v3

    aput-wide v7, v10, v6

    aput-wide p0, v10, v9

    new-instance p0, Ln2/o0;

    invoke-direct {p0, v10}, Ln2/o0;-><init>([J)V

    return-object p0
.end method

.method public final b()Lk2/b0;
    .registers 13

    iget-object p0, p0, Ln2/o0;->l:[J

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const-wide/16 v3, 0x1

    xor-long/2addr v1, v3

    const/4 v3, 0x1

    aget-wide v4, p0, v3

    const/4 v6, 0x2

    aget-wide v7, p0, v6

    const/4 v9, 0x3

    aget-wide v10, p0, v9

    const/4 p0, 0x4

    new-array p0, p0, [J

    aput-wide v1, p0, v0

    aput-wide v4, p0, v3

    aput-wide v7, p0, v6

    aput-wide v10, p0, v9

    new-instance v0, Ln2/o0;

    invoke-direct {v0, p0}, Ln2/o0;-><init>([J)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    instance-of v0, p1, Ln2/o0;

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    check-cast p1, Ln2/o0;

    iget-object p0, p0, Ln2/o0;->l:[J

    iget-object p1, p1, Ln2/o0;->l:[J

    invoke-static {p0, p1}, Lq4/k;->N([J[J)Z

    move-result p0

    return p0
.end method

.method public final f(Lk2/b0;)Lk2/b0;
    .registers 2

    invoke-virtual {p1}, Lk2/b0;->q()Lk2/b0;

    move-result-object p1

    invoke-virtual {p0, p1}, Ln2/o0;->x(Lk2/b0;)Lk2/b0;

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .registers 2

    iget-object p0, p0, Ln2/o0;->l:[J

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lm4/d;->v([JI)I

    move-result p0

    const v0, 0x16caffe

    xor-int/2addr p0, v0

    return p0
.end method

.method public final k()I
    .registers 1

    const/16 p0, 0xef

    return p0
.end method

.method public final q()Lk2/b0;
    .registers 5

    const/4 v0, 0x4

    new-array v1, v0, [J

    iget-object p0, p0, Ln2/o0;->l:[J

    invoke-static {p0}, Lq4/k;->v0([J)Z

    move-result v2

    if-nez v2, :cond_6a

    new-array v2, v0, [J

    new-array v0, v0, [J

    invoke-static {p0, v2}, Ln2/b;->i1([J[J)V

    invoke-static {v2, p0, v2}, Ln2/b;->q0([J[J[J)V

    invoke-static {v2, v2}, Ln2/b;->i1([J[J)V

    invoke-static {v2, p0, v2}, Ln2/b;->q0([J[J[J)V

    const/4 v3, 0x3

    invoke-static {v3, v2, v0}, Ln2/b;->C1(I[J[J)V

    invoke-static {v0, v2, v0}, Ln2/b;->q0([J[J[J)V

    invoke-static {v0, v0}, Ln2/b;->i1([J[J)V

    invoke-static {v0, p0, v0}, Ln2/b;->q0([J[J[J)V

    const/4 v3, 0x7

    invoke-static {v3, v0, v2}, Ln2/b;->C1(I[J[J)V

    invoke-static {v2, v0, v2}, Ln2/b;->q0([J[J[J)V

    const/16 v3, 0xe

    invoke-static {v3, v2, v0}, Ln2/b;->C1(I[J[J)V

    invoke-static {v0, v2, v0}, Ln2/b;->q0([J[J[J)V

    invoke-static {v0, v0}, Ln2/b;->i1([J[J)V

    invoke-static {v0, p0, v0}, Ln2/b;->q0([J[J[J)V

    const/16 v3, 0x1d

    invoke-static {v3, v0, v2}, Ln2/b;->C1(I[J[J)V

    invoke-static {v2, v0, v2}, Ln2/b;->q0([J[J[J)V

    invoke-static {v2, v2}, Ln2/b;->i1([J[J)V

    invoke-static {v2, p0, v2}, Ln2/b;->q0([J[J[J)V

    const/16 v3, 0x3b

    invoke-static {v3, v2, v0}, Ln2/b;->C1(I[J[J)V

    invoke-static {v0, v2, v0}, Ln2/b;->q0([J[J[J)V

    invoke-static {v0, v0}, Ln2/b;->i1([J[J)V

    invoke-static {v0, p0, v0}, Ln2/b;->q0([J[J[J)V

    const/16 p0, 0x77

    invoke-static {p0, v0, v2}, Ln2/b;->C1(I[J[J)V

    invoke-static {v2, v0, v2}, Ln2/b;->q0([J[J[J)V

    invoke-static {v2, v1}, Ln2/b;->i1([J[J)V

    new-instance p0, Ln2/o0;

    invoke-direct {p0, v1}, Ln2/o0;-><init>([J)V

    return-object p0

    :cond_6a
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public final s()Z
    .registers 1

    iget-object p0, p0, Ln2/o0;->l:[J

    invoke-static {p0}, Lq4/k;->q0([J)Z

    move-result p0

    return p0
.end method

.method public final t()Z
    .registers 1

    iget-object p0, p0, Ln2/o0;->l:[J

    invoke-static {p0}, Lq4/k;->v0([J)Z

    move-result p0

    return p0
.end method

.method public final x(Lk2/b0;)Lk2/b0;
    .registers 3

    const/4 v0, 0x4

    new-array v0, v0, [J

    check-cast p1, Ln2/o0;

    iget-object p1, p1, Ln2/o0;->l:[J

    iget-object p0, p0, Ln2/o0;->l:[J

    invoke-static {p0, p1, v0}, Ln2/b;->q0([J[J[J)V

    new-instance p0, Ln2/o0;

    invoke-direct {p0, v0}, Ln2/o0;-><init>([J)V

    return-object p0
.end method

.method public final y(Lk2/b0;Lk2/b0;Lk2/b0;)Lk2/b0;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ln2/o0;->z(Lk2/b0;Lk2/b0;Lk2/b0;)Lk2/b0;

    move-result-object p0

    return-object p0
.end method

.method public final z(Lk2/b0;Lk2/b0;Lk2/b0;)Lk2/b0;
    .registers 7

    check-cast p1, Ln2/o0;

    iget-object p1, p1, Ln2/o0;->l:[J

    check-cast p2, Ln2/o0;

    iget-object p2, p2, Ln2/o0;->l:[J

    check-cast p3, Ln2/o0;

    iget-object p3, p3, Ln2/o0;->l:[J

    const/16 v0, 0x8

    new-array v1, v0, [J

    new-array v2, v0, [J

    iget-object p0, p0, Ln2/o0;->l:[J

    invoke-static {p0, p1, v2}, Ln2/b;->G([J[J[J)V

    invoke-static {v1, v2, v1}, Ln2/b;->n([J[J[J)V

    new-array p0, v0, [J

    invoke-static {p2, p3, p0}, Ln2/b;->G([J[J[J)V

    invoke-static {v1, p0, v1}, Ln2/b;->n([J[J[J)V

    const/4 p0, 0x4

    new-array p0, p0, [J

    invoke-static {v1, p0}, Ln2/b;->M0([J[J)V

    new-instance p1, Ln2/o0;

    invoke-direct {p1, p0}, Ln2/o0;-><init>([J)V

    return-object p1
.end method
