.class public final Ln2/l0;
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

    const/16 v1, 0xe9

    if-gt v0, v1, :cond_1b

    invoke-static {v1, p1}, Ls2/b;->v(ILjava/math/BigInteger;)[J

    move-result-object p1

    iput-object p1, p0, Ln2/l0;->l:[J

    return-void

    :cond_1b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "x value invalid for SecT233FieldElement"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>([J)V
    .registers 3

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lk2/b0;-><init>(I)V

    iput-object p1, p0, Ln2/l0;->l:[J

    return-void
.end method


# virtual methods
.method public final B()Lk2/b0;
    .registers 1

    return-object p0
.end method

.method public final E()Lk2/b0;
    .registers 27

    const/4 v0, 0x4

    new-array v0, v0, [J

    move-object/from16 v1, p0

    iget-object v1, v1, Ln2/l0;->l:[J

    const/4 v2, 0x0

    aget-wide v3, v1, v2

    invoke-static {v3, v4}, Lq4/k;->c1(J)J

    move-result-wide v3

    const/4 v5, 0x1

    aget-wide v6, v1, v5

    invoke-static {v6, v7}, Lq4/k;->c1(J)J

    move-result-wide v6

    const-wide v8, 0xffffffffL

    and-long v10, v3, v8

    const/16 v12, 0x20

    shl-long v13, v6, v12

    or-long/2addr v10, v13

    ushr-long/2addr v3, v12

    const-wide v13, -0x100000000L

    and-long/2addr v6, v13

    or-long/2addr v3, v6

    const/4 v6, 0x2

    aget-wide v6, v1, v6

    invoke-static {v6, v7}, Lq4/k;->c1(J)J

    move-result-wide v6

    const/4 v15, 0x3

    aget-wide v16, v1, v15

    invoke-static/range {v16 .. v17}, Lq4/k;->c1(J)J

    move-result-wide v16

    and-long/2addr v8, v6

    shl-long v18, v16, v12

    or-long v8, v8, v18

    ushr-long/2addr v6, v12

    and-long v13, v16, v13

    or-long/2addr v6, v13

    const/16 v1, 0x1b

    ushr-long v13, v6, v1

    ushr-long v16, v3, v1

    const/16 v1, 0x25

    shl-long v18, v6, v1

    or-long v16, v16, v18

    xor-long v6, v6, v16

    shl-long v16, v3, v1

    xor-long v3, v3, v16

    const/16 v1, 0x8

    new-array v1, v1, [J

    move/from16 p0, v2

    const/16 v2, 0x75

    move/from16 v16, v5

    const/16 v5, 0xbf

    filled-new-array {v12, v2, v5}, [I

    move-result-object v2

    move/from16 v5, p0

    :goto_64
    if-ge v5, v15, :cond_a2

    aget v12, v2, v5

    ushr-int/lit8 v17, v12, 0x6

    and-int/lit8 v12, v12, 0x3f

    aget-wide v18, v1, v17

    shl-long v20, v3, v12

    xor-long v18, v18, v20

    aput-wide v18, v1, v17

    add-int/lit8 v18, v17, 0x1

    aget-wide v19, v1, v18

    shl-long v21, v6, v12

    move/from16 v23, v15

    neg-int v15, v12

    ushr-long v24, v3, v15

    or-long v21, v21, v24

    xor-long v19, v19, v21

    aput-wide v19, v1, v18

    add-int/lit8 v18, v17, 0x2

    aget-wide v19, v1, v18

    shl-long v21, v13, v12

    ushr-long v24, v6, v15

    or-long v21, v21, v24

    xor-long v19, v19, v21

    aput-wide v19, v1, v18

    add-int/lit8 v17, v17, 0x3

    aget-wide v18, v1, v17

    ushr-long v20, v13, v15

    xor-long v18, v18, v20

    aput-wide v18, v1, v17

    add-int/lit8 v5, v5, 0x1

    move/from16 v15, v23

    goto :goto_64

    :cond_a2
    invoke-static {v1, v0}, Ln2/b;->K0([J[J)V

    aget-wide v1, v0, p0

    xor-long/2addr v1, v10

    aput-wide v1, v0, p0

    aget-wide v1, v0, v16

    xor-long/2addr v1, v8

    aput-wide v1, v0, v16

    new-instance v1, Ln2/l0;

    invoke-direct {v1, v0}, Ln2/l0;-><init>([J)V

    return-object v1
.end method

.method public final F()Lk2/b0;
    .registers 2

    const/4 v0, 0x4

    new-array v0, v0, [J

    iget-object p0, p0, Ln2/l0;->l:[J

    invoke-static {p0, v0}, Ln2/b;->g1([J[J)V

    new-instance p0, Ln2/l0;

    invoke-direct {p0, v0}, Ln2/l0;-><init>([J)V

    return-object p0
.end method

.method public final G(Lk2/b0;Lk2/b0;)Lk2/b0;
    .registers 7

    check-cast p1, Ln2/l0;

    iget-object p1, p1, Ln2/l0;->l:[J

    check-cast p2, Ln2/l0;

    iget-object p2, p2, Ln2/l0;->l:[J

    const/16 v0, 0x8

    new-array v1, v0, [J

    new-array v2, v0, [J

    const/4 v3, 0x4

    iget-object p0, p0, Ln2/l0;->l:[J

    invoke-static {v3, p0, v2}, Lq4/k;->R(I[J[J)V

    invoke-static {v1, v2, v1}, Ln2/b;->m([J[J[J)V

    new-array p0, v0, [J

    invoke-static {p1, p2, p0}, Ln2/b;->F([J[J[J)V

    invoke-static {v1, p0, v1}, Ln2/b;->m([J[J[J)V

    new-array p0, v3, [J

    invoke-static {v1, p0}, Ln2/b;->K0([J[J)V

    new-instance p1, Ln2/l0;

    invoke-direct {p1, p0}, Ln2/l0;-><init>([J)V

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

    iget-object p0, p0, Ln2/l0;->l:[J

    invoke-static {p1, p0, v0}, Ln2/b;->B1(I[J[J)V

    new-instance p0, Ln2/l0;

    invoke-direct {p0, v0}, Ln2/l0;-><init>([J)V

    return-object p0
.end method

.method public final K()Z
    .registers 6

    iget-object p0, p0, Ln2/l0;->l:[J

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

    iget-object p0, p0, Ln2/l0;->l:[J

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

    iget-object p0, p0, Ln2/l0;->l:[J

    invoke-static {p0, v1}, Lq4/k;->D([J[J)V

    const/4 v3, 0x1

    move v4, v3

    :goto_e
    const/16 v5, 0xe9

    if-ge v4, v5, :cond_40

    invoke-static {v0, v1, v2}, Lq4/k;->R(I[J[J)V

    invoke-static {v2, v1}, Ln2/b;->K0([J[J)V

    invoke-static {v0, v1, v2}, Lq4/k;->R(I[J[J)V

    invoke-static {v2, v1}, Ln2/b;->K0([J[J)V

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
    new-instance p0, Ln2/l0;

    invoke-direct {p0, v1}, Ln2/l0;-><init>([J)V

    return-object p0
.end method

.method public final N()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public final O()I
    .registers 5

    const/4 v0, 0x0

    iget-object p0, p0, Ln2/l0;->l:[J

    aget-wide v0, p0, v0

    const/4 v2, 0x2

    aget-wide v2, p0, v2

    const/16 p0, 0x1f

    ushr-long/2addr v2, p0

    xor-long/2addr v0, v2

    long-to-int p0, v0

    and-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final a(Lk2/b0;)Lk2/b0;
    .registers 14

    check-cast p1, Ln2/l0;

    iget-object p1, p1, Ln2/l0;->l:[J

    iget-object p0, p0, Ln2/l0;->l:[J

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

    new-instance p0, Ln2/l0;

    invoke-direct {p0, v10}, Ln2/l0;-><init>([J)V

    return-object p0
.end method

.method public final b()Lk2/b0;
    .registers 13

    iget-object p0, p0, Ln2/l0;->l:[J

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

    new-instance v0, Ln2/l0;

    invoke-direct {v0, p0}, Ln2/l0;-><init>([J)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    instance-of v0, p1, Ln2/l0;

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    check-cast p1, Ln2/l0;

    iget-object p0, p0, Ln2/l0;->l:[J

    iget-object p1, p1, Ln2/l0;->l:[J

    invoke-static {p0, p1}, Lq4/k;->N([J[J)Z

    move-result p0

    return p0
.end method

.method public final f(Lk2/b0;)Lk2/b0;
    .registers 2

    invoke-virtual {p1}, Lk2/b0;->q()Lk2/b0;

    move-result-object p1

    invoke-virtual {p0, p1}, Ln2/l0;->x(Lk2/b0;)Lk2/b0;

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .registers 2

    iget-object p0, p0, Ln2/l0;->l:[J

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lm4/d;->v([JI)I

    move-result p0

    const v0, 0x238dda

    xor-int/2addr p0, v0

    return p0
.end method

.method public final k()I
    .registers 1

    const/16 p0, 0xe9

    return p0
.end method

.method public final q()Lk2/b0;
    .registers 5

    const/4 v0, 0x4

    new-array v1, v0, [J

    iget-object p0, p0, Ln2/l0;->l:[J

    invoke-static {p0}, Lq4/k;->v0([J)Z

    move-result v2

    if-nez v2, :cond_5e

    new-array v2, v0, [J

    new-array v0, v0, [J

    invoke-static {p0, v2}, Ln2/b;->g1([J[J)V

    invoke-static {v2, p0, v2}, Ln2/b;->p0([J[J[J)V

    invoke-static {v2, v2}, Ln2/b;->g1([J[J)V

    invoke-static {v2, p0, v2}, Ln2/b;->p0([J[J[J)V

    const/4 v3, 0x3

    invoke-static {v3, v2, v0}, Ln2/b;->B1(I[J[J)V

    invoke-static {v0, v2, v0}, Ln2/b;->p0([J[J[J)V

    invoke-static {v0, v0}, Ln2/b;->g1([J[J)V

    invoke-static {v0, p0, v0}, Ln2/b;->p0([J[J[J)V

    const/4 v3, 0x7

    invoke-static {v3, v0, v2}, Ln2/b;->B1(I[J[J)V

    invoke-static {v2, v0, v2}, Ln2/b;->p0([J[J[J)V

    const/16 v3, 0xe

    invoke-static {v3, v2, v0}, Ln2/b;->B1(I[J[J)V

    invoke-static {v0, v2, v0}, Ln2/b;->p0([J[J[J)V

    invoke-static {v0, v0}, Ln2/b;->g1([J[J)V

    invoke-static {v0, p0, v0}, Ln2/b;->p0([J[J[J)V

    const/16 p0, 0x1d

    invoke-static {p0, v0, v2}, Ln2/b;->B1(I[J[J)V

    invoke-static {v2, v0, v2}, Ln2/b;->p0([J[J[J)V

    const/16 p0, 0x3a

    invoke-static {p0, v2, v0}, Ln2/b;->B1(I[J[J)V

    invoke-static {v0, v2, v0}, Ln2/b;->p0([J[J[J)V

    const/16 p0, 0x74

    invoke-static {p0, v0, v2}, Ln2/b;->B1(I[J[J)V

    invoke-static {v2, v0, v2}, Ln2/b;->p0([J[J[J)V

    invoke-static {v2, v1}, Ln2/b;->g1([J[J)V

    new-instance p0, Ln2/l0;

    invoke-direct {p0, v1}, Ln2/l0;-><init>([J)V

    return-object p0

    :cond_5e
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public final s()Z
    .registers 1

    iget-object p0, p0, Ln2/l0;->l:[J

    invoke-static {p0}, Lq4/k;->q0([J)Z

    move-result p0

    return p0
.end method

.method public final t()Z
    .registers 1

    iget-object p0, p0, Ln2/l0;->l:[J

    invoke-static {p0}, Lq4/k;->v0([J)Z

    move-result p0

    return p0
.end method

.method public final x(Lk2/b0;)Lk2/b0;
    .registers 3

    const/4 v0, 0x4

    new-array v0, v0, [J

    check-cast p1, Ln2/l0;

    iget-object p1, p1, Ln2/l0;->l:[J

    iget-object p0, p0, Ln2/l0;->l:[J

    invoke-static {p0, p1, v0}, Ln2/b;->p0([J[J[J)V

    new-instance p0, Ln2/l0;

    invoke-direct {p0, v0}, Ln2/l0;-><init>([J)V

    return-object p0
.end method

.method public final y(Lk2/b0;Lk2/b0;Lk2/b0;)Lk2/b0;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ln2/l0;->z(Lk2/b0;Lk2/b0;Lk2/b0;)Lk2/b0;

    move-result-object p0

    return-object p0
.end method

.method public final z(Lk2/b0;Lk2/b0;Lk2/b0;)Lk2/b0;
    .registers 7

    check-cast p1, Ln2/l0;

    iget-object p1, p1, Ln2/l0;->l:[J

    check-cast p2, Ln2/l0;

    iget-object p2, p2, Ln2/l0;->l:[J

    check-cast p3, Ln2/l0;

    iget-object p3, p3, Ln2/l0;->l:[J

    const/16 v0, 0x8

    new-array v1, v0, [J

    new-array v2, v0, [J

    iget-object p0, p0, Ln2/l0;->l:[J

    invoke-static {p0, p1, v2}, Ln2/b;->F([J[J[J)V

    invoke-static {v1, v2, v1}, Ln2/b;->m([J[J[J)V

    new-array p0, v0, [J

    invoke-static {p2, p3, p0}, Ln2/b;->F([J[J[J)V

    invoke-static {v1, p0, v1}, Ln2/b;->m([J[J[J)V

    const/4 p0, 0x4

    new-array p0, p0, [J

    invoke-static {v1, p0}, Ln2/b;->K0([J[J)V

    new-instance p1, Ln2/l0;

    invoke-direct {p1, p0}, Ln2/l0;-><init>([J)V

    return-object p1
.end method
