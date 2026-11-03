.class public final Ln2/q0;
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

    const/16 v1, 0x11b

    if-gt v0, v1, :cond_1b

    invoke-static {v1, p1}, Ls2/b;->v(ILjava/math/BigInteger;)[J

    move-result-object p1

    iput-object p1, p0, Ln2/q0;->l:[J

    return-void

    :cond_1b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "x value invalid for SecT283FieldElement"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>([J)V
    .registers 3

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lk2/b0;-><init>(I)V

    iput-object p1, p0, Ln2/q0;->l:[J

    return-void
.end method


# virtual methods
.method public final B()Lk2/b0;
    .registers 1

    return-object p0
.end method

.method public final E()Lk2/b0;
    .registers 23

    const/4 v0, 0x5

    new-array v1, v0, [J

    new-array v0, v0, [J

    move-object/from16 v2, p0

    iget-object v2, v2, Ln2/q0;->l:[J

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

    aput-wide v4, v0, v3

    const/4 v4, 0x2

    aget-wide v7, v2, v4

    invoke-static {v7, v8}, Lq4/k;->c1(J)J

    move-result-wide v7

    const/4 v5, 0x3

    aget-wide v16, v2, v5

    invoke-static/range {v16 .. v17}, Lq4/k;->c1(J)J

    move-result-wide v16

    and-long v18, v7, v9

    shl-long v20, v16, v13

    or-long v18, v18, v20

    ushr-long/2addr v7, v13

    and-long v14, v16, v14

    or-long/2addr v7, v14

    aput-wide v7, v0, v6

    const/4 v5, 0x4

    aget-wide v7, v2, v5

    invoke-static {v7, v8}, Lq4/k;->c1(J)J

    move-result-wide v7

    and-long/2addr v9, v7

    ushr-long/2addr v7, v13

    aput-wide v7, v0, v4

    sget-object v2, Ln2/b;->G:[J

    invoke-static {v0, v2, v1}, Ln2/b;->g0([J[J[J)V

    aget-wide v7, v1, v3

    xor-long/2addr v7, v11

    aput-wide v7, v1, v3

    aget-wide v2, v1, v6

    xor-long v2, v2, v18

    aput-wide v2, v1, v6

    aget-wide v2, v1, v4

    xor-long/2addr v2, v9

    aput-wide v2, v1, v4

    new-instance v0, Ln2/q0;

    invoke-direct {v0, v1}, Ln2/q0;-><init>([J)V

    return-object v0
.end method

.method public final F()Lk2/b0;
    .registers 2

    const/4 v0, 0x5

    new-array v0, v0, [J

    iget-object p0, p0, Ln2/q0;->l:[J

    invoke-static {p0, v0}, Ln2/b;->c1([J[J)V

    new-instance p0, Ln2/q0;

    invoke-direct {p0, v0}, Ln2/q0;-><init>([J)V

    return-object p0
.end method

.method public final G(Lk2/b0;Lk2/b0;)Lk2/b0;
    .registers 5

    check-cast p1, Ln2/q0;

    iget-object p1, p1, Ln2/q0;->l:[J

    check-cast p2, Ln2/q0;

    iget-object p2, p2, Ln2/q0;->l:[J

    const/16 v0, 0x9

    new-array v1, v0, [J

    new-array v0, v0, [J

    iget-object p0, p0, Ln2/q0;->l:[J

    invoke-static {p0, v0}, Ln2/b;->U([J[J)V

    invoke-static {v1, v0, v1}, Ln2/b;->i([J[J[J)V

    const/16 p0, 0xa

    new-array p0, p0, [J

    invoke-static {p1, p2, p0}, Ln2/b;->B([J[J[J)V

    invoke-static {v1, p0, v1}, Ln2/b;->i([J[J[J)V

    const/4 p0, 0x5

    new-array p0, p0, [J

    invoke-static {v1, p0}, Ln2/b;->C0([J[J)V

    new-instance p1, Ln2/q0;

    invoke-direct {p1, p0}, Ln2/q0;-><init>([J)V

    return-object p1
.end method

.method public final H(I)Lk2/b0;
    .registers 3

    const/4 v0, 0x1

    if-ge p1, v0, :cond_4

    return-object p0

    :cond_4
    const/4 v0, 0x5

    new-array v0, v0, [J

    iget-object p0, p0, Ln2/q0;->l:[J

    invoke-static {p1, p0, v0}, Ln2/b;->u1(I[J[J)V

    new-instance p0, Ln2/q0;

    invoke-direct {p0, v0}, Ln2/q0;-><init>([J)V

    return-object p0
.end method

.method public final K()Z
    .registers 6

    iget-object p0, p0, Ln2/q0;->l:[J

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

    const/16 v0, 0x28

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_5
    const/4 v2, 0x5

    if-ge v1, v2, :cond_1c

    iget-object v2, p0, Ln2/q0;->l:[J

    aget-wide v2, v2, v1

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_19

    rsub-int/lit8 v4, v1, 0x4

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
    .registers 13

    const/4 v0, 0x5

    new-array v0, v0, [J

    const/16 v1, 0x9

    new-array v1, v1, [J

    iget-object p0, p0, Ln2/q0;->l:[J

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

    move v7, v3

    :goto_23
    const/16 v8, 0x11b

    if-ge v7, v8, :cond_59

    invoke-static {v0, v1}, Ln2/b;->U([J[J)V

    invoke-static {v1, v0}, Ln2/b;->C0([J[J)V

    invoke-static {v0, v1}, Ln2/b;->U([J[J)V

    invoke-static {v1, v0}, Ln2/b;->C0([J[J)V

    aget-wide v8, v0, v2

    aget-wide v10, p0, v2

    xor-long/2addr v8, v10

    aput-wide v8, v0, v2

    aget-wide v8, v0, v3

    aget-wide v10, p0, v3

    xor-long/2addr v8, v10

    aput-wide v8, v0, v3

    aget-wide v8, v0, v4

    aget-wide v10, p0, v4

    xor-long/2addr v8, v10

    aput-wide v8, v0, v4

    aget-wide v8, v0, v5

    aget-wide v10, p0, v5

    xor-long/2addr v8, v10

    aput-wide v8, v0, v5

    aget-wide v8, v0, v6

    aget-wide v10, p0, v6

    xor-long/2addr v8, v10

    aput-wide v8, v0, v6

    add-int/lit8 v7, v7, 0x2

    goto :goto_23

    :cond_59
    new-instance p0, Ln2/q0;

    invoke-direct {p0, v0}, Ln2/q0;-><init>([J)V

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

    iget-object p0, p0, Ln2/q0;->l:[J

    aget-wide v0, p0, v0

    const/4 v2, 0x4

    aget-wide v2, p0, v2

    const/16 p0, 0xf

    ushr-long/2addr v2, p0

    xor-long/2addr v0, v2

    long-to-int p0, v0

    and-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final a(Lk2/b0;)Lk2/b0;
    .registers 19

    move-object/from16 v0, p1

    check-cast v0, Ln2/q0;

    iget-object v0, v0, Ln2/q0;->l:[J

    move-object/from16 v1, p0

    iget-object v1, v1, Ln2/q0;->l:[J

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

    aget-wide v0, v0, v14

    xor-long/2addr v0, v15

    const/4 v15, 0x5

    new-array v15, v15, [J

    aput-wide v3, v15, v2

    aput-wide v6, v15, v5

    aput-wide v9, v15, v8

    aput-wide v12, v15, v11

    aput-wide v0, v15, v14

    new-instance v0, Ln2/q0;

    invoke-direct {v0, v15}, Ln2/q0;-><init>([J)V

    return-object v0
.end method

.method public final b()Lk2/b0;
    .registers 16

    iget-object p0, p0, Ln2/q0;->l:[J

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

    const/4 v12, 0x4

    aget-wide v13, p0, v12

    const/4 p0, 0x5

    new-array p0, p0, [J

    aput-wide v1, p0, v0

    aput-wide v4, p0, v3

    aput-wide v7, p0, v6

    aput-wide v10, p0, v9

    aput-wide v13, p0, v12

    new-instance v0, Ln2/q0;

    invoke-direct {v0, p0}, Ln2/q0;-><init>([J)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Ln2/q0;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Ln2/q0;

    iget-object p1, p1, Ln2/q0;->l:[J

    const/4 v1, 0x4

    :goto_f
    if-ltz v1, :cond_1f

    iget-object v3, p0, Ln2/q0;->l:[J

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

    invoke-virtual {p0, p1}, Ln2/q0;->x(Lk2/b0;)Lk2/b0;

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .registers 2

    iget-object p0, p0, Ln2/q0;->l:[J

    const/4 v0, 0x5

    invoke-static {p0, v0}, Lm4/d;->v([JI)I

    move-result p0

    const v0, 0x2b33ab

    xor-int/2addr p0, v0

    return p0
.end method

.method public final k()I
    .registers 1

    const/16 p0, 0x11b

    return p0
.end method

.method public final q()Lk2/b0;
    .registers 9

    const/4 v0, 0x5

    new-array v1, v0, [J

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_6e

    iget-object v3, p0, Ln2/q0;->l:[J

    aget-wide v4, v3, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_6b

    new-array p0, v0, [J

    new-array v0, v0, [J

    invoke-static {v3, p0}, Ln2/b;->c1([J[J)V

    invoke-static {p0, v3, p0}, Ln2/b;->g0([J[J[J)V

    const/4 v2, 0x2

    invoke-static {v2, p0, v0}, Ln2/b;->u1(I[J[J)V

    invoke-static {v0, p0, v0}, Ln2/b;->g0([J[J[J)V

    const/4 v2, 0x4

    invoke-static {v2, v0, p0}, Ln2/b;->u1(I[J[J)V

    invoke-static {p0, v0, p0}, Ln2/b;->g0([J[J[J)V

    const/16 v2, 0x8

    invoke-static {v2, p0, v0}, Ln2/b;->u1(I[J[J)V

    invoke-static {v0, p0, v0}, Ln2/b;->g0([J[J[J)V

    invoke-static {v0, v0}, Ln2/b;->c1([J[J)V

    invoke-static {v0, v3, v0}, Ln2/b;->g0([J[J[J)V

    const/16 v2, 0x11

    invoke-static {v2, v0, p0}, Ln2/b;->u1(I[J[J)V

    invoke-static {p0, v0, p0}, Ln2/b;->g0([J[J[J)V

    invoke-static {p0, p0}, Ln2/b;->c1([J[J)V

    invoke-static {p0, v3, p0}, Ln2/b;->g0([J[J[J)V

    const/16 v2, 0x23

    invoke-static {v2, p0, v0}, Ln2/b;->u1(I[J[J)V

    invoke-static {v0, p0, v0}, Ln2/b;->g0([J[J[J)V

    const/16 v2, 0x46

    invoke-static {v2, v0, p0}, Ln2/b;->u1(I[J[J)V

    invoke-static {p0, v0, p0}, Ln2/b;->g0([J[J[J)V

    invoke-static {p0, p0}, Ln2/b;->c1([J[J)V

    invoke-static {p0, v3, p0}, Ln2/b;->g0([J[J[J)V

    const/16 v2, 0x8d

    invoke-static {v2, p0, v0}, Ln2/b;->u1(I[J[J)V

    invoke-static {v0, p0, v0}, Ln2/b;->g0([J[J[J)V

    invoke-static {v0, v1}, Ln2/b;->c1([J[J)V

    new-instance p0, Ln2/q0;

    invoke-direct {p0, v1}, Ln2/q0;-><init>([J)V

    return-object p0

    :cond_6b
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6e
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public final s()Z
    .registers 8

    iget-object p0, p0, Ln2/q0;->l:[J

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
    const/4 v3, 0x5

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
    const/4 v2, 0x5

    if-ge v1, v2, :cond_13

    iget-object v2, p0, Ln2/q0;->l:[J

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

    const/4 v0, 0x5

    new-array v0, v0, [J

    check-cast p1, Ln2/q0;

    iget-object p1, p1, Ln2/q0;->l:[J

    iget-object p0, p0, Ln2/q0;->l:[J

    invoke-static {p0, p1, v0}, Ln2/b;->g0([J[J[J)V

    new-instance p0, Ln2/q0;

    invoke-direct {p0, v0}, Ln2/q0;-><init>([J)V

    return-object p0
.end method

.method public final y(Lk2/b0;Lk2/b0;Lk2/b0;)Lk2/b0;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ln2/q0;->z(Lk2/b0;Lk2/b0;Lk2/b0;)Lk2/b0;

    move-result-object p0

    return-object p0
.end method

.method public final z(Lk2/b0;Lk2/b0;Lk2/b0;)Lk2/b0;
    .registers 7

    check-cast p1, Ln2/q0;

    iget-object p1, p1, Ln2/q0;->l:[J

    check-cast p2, Ln2/q0;

    iget-object p2, p2, Ln2/q0;->l:[J

    check-cast p3, Ln2/q0;

    iget-object p3, p3, Ln2/q0;->l:[J

    const/16 v0, 0x9

    new-array v0, v0, [J

    const/16 v1, 0xa

    new-array v2, v1, [J

    iget-object p0, p0, Ln2/q0;->l:[J

    invoke-static {p0, p1, v2}, Ln2/b;->B([J[J[J)V

    invoke-static {v0, v2, v0}, Ln2/b;->i([J[J[J)V

    new-array p0, v1, [J

    invoke-static {p2, p3, p0}, Ln2/b;->B([J[J[J)V

    invoke-static {v0, p0, v0}, Ln2/b;->i([J[J[J)V

    const/4 p0, 0x5

    new-array p0, p0, [J

    invoke-static {v0, p0}, Ln2/b;->C0([J[J)V

    new-instance p1, Ln2/q0;

    invoke-direct {p1, p0}, Ln2/q0;-><init>([J)V

    return-object p1
.end method
