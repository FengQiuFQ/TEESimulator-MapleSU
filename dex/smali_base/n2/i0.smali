.class public final Ln2/i0;
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

    const/16 v1, 0xc1

    if-gt v0, v1, :cond_1b

    invoke-static {v1, p1}, Ls2/b;->v(ILjava/math/BigInteger;)[J

    move-result-object p1

    iput-object p1, p0, Ln2/i0;->l:[J

    return-void

    :cond_1b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "x value invalid for SecT193FieldElement"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>([J)V
    .registers 3

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lk2/b0;-><init>(I)V

    iput-object p1, p0, Ln2/i0;->l:[J

    return-void
.end method


# virtual methods
.method public final B()Lk2/b0;
    .registers 1

    return-object p0
.end method

.method public final E()Lk2/b0;
    .registers 19

    move-object/from16 v0, p0

    iget-object v0, v0, Ln2/i0;->l:[J

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

    aget-wide v12, v0, v5

    invoke-static {v12, v13}, Lq4/k;->c1(J)J

    move-result-wide v12

    and-long v6, v12, v7

    const/4 v8, 0x3

    aget-wide v14, v0, v8

    shl-long/2addr v14, v11

    xor-long/2addr v6, v14

    ushr-long v14, v12, v11

    const/16 v0, 0x8

    shl-long v16, v2, v0

    xor-long v9, v9, v16

    shl-long v16, v14, v0

    xor-long v6, v6, v16

    const/16 v0, 0x38

    ushr-long v16, v2, v0

    xor-long v6, v6, v16

    const/16 v0, 0x21

    shl-long v16, v2, v0

    xor-long v6, v6, v16

    shl-long/2addr v14, v0

    const/16 v0, 0x1f

    ushr-long/2addr v2, v0

    xor-long/2addr v2, v14

    const/16 v0, 0x3f

    ushr-long v11, v12, v0

    const/4 v0, 0x4

    new-array v0, v0, [J

    aput-wide v9, v0, v1

    aput-wide v6, v0, v4

    aput-wide v2, v0, v5

    aput-wide v11, v0, v8

    new-instance v1, Ln2/i0;

    invoke-direct {v1, v0}, Ln2/i0;-><init>([J)V

    return-object v1
.end method

.method public final F()Lk2/b0;
    .registers 3

    const/4 v0, 0x4

    new-array v0, v0, [J

    const/16 v1, 0x8

    new-array v1, v1, [J

    iget-object p0, p0, Ln2/i0;->l:[J

    invoke-static {p0, v1}, Ln2/b;->W([J[J)V

    invoke-static {v1, v0}, Ln2/b;->I0([J[J)V

    new-instance p0, Ln2/i0;

    invoke-direct {p0, v0}, Ln2/i0;-><init>([J)V

    return-object p0
.end method

.method public final G(Lk2/b0;Lk2/b0;)Lk2/b0;
    .registers 6

    check-cast p1, Ln2/i0;

    iget-object p1, p1, Ln2/i0;->l:[J

    check-cast p2, Ln2/i0;

    iget-object p2, p2, Ln2/i0;->l:[J

    const/16 v0, 0x8

    new-array v1, v0, [J

    new-array v2, v0, [J

    iget-object p0, p0, Ln2/i0;->l:[J

    invoke-static {p0, v2}, Ln2/b;->W([J[J)V

    invoke-static {v1, v2, v1}, Ln2/b;->l([J[J[J)V

    new-array p0, v0, [J

    invoke-static {p1, p2, p0}, Ln2/b;->E([J[J[J)V

    invoke-static {v1, p0, v1}, Ln2/b;->l([J[J[J)V

    const/4 p0, 0x4

    new-array p0, p0, [J

    invoke-static {v1, p0}, Ln2/b;->I0([J[J)V

    new-instance p1, Ln2/i0;

    invoke-direct {p1, p0}, Ln2/i0;-><init>([J)V

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

    iget-object p0, p0, Ln2/i0;->l:[J

    invoke-static {p1, p0, v0}, Ln2/b;->A1(I[J[J)V

    new-instance p0, Ln2/i0;

    invoke-direct {p0, v0}, Ln2/i0;-><init>([J)V

    return-object p0
.end method

.method public final K()Z
    .registers 6

    iget-object p0, p0, Ln2/i0;->l:[J

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

    iget-object p0, p0, Ln2/i0;->l:[J

    invoke-static {p0}, Lq4/k;->Y0([J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public final M()Lk2/b0;
    .registers 10

    const/4 v0, 0x4

    new-array v0, v0, [J

    const/16 v1, 0x8

    new-array v1, v1, [J

    iget-object p0, p0, Ln2/i0;->l:[J

    invoke-static {p0, v0}, Lq4/k;->D([J[J)V

    const/4 v2, 0x1

    move v3, v2

    :goto_e
    const/16 v4, 0xc1

    if-ge v3, v4, :cond_40

    invoke-static {v0, v1}, Ln2/b;->W([J[J)V

    invoke-static {v1, v0}, Ln2/b;->I0([J[J)V

    invoke-static {v0, v1}, Ln2/b;->W([J[J)V

    invoke-static {v1, v0}, Ln2/b;->I0([J[J)V

    const/4 v4, 0x0

    aget-wide v5, v0, v4

    aget-wide v7, p0, v4

    xor-long/2addr v5, v7

    aput-wide v5, v0, v4

    aget-wide v4, v0, v2

    aget-wide v6, p0, v2

    xor-long/2addr v4, v6

    aput-wide v4, v0, v2

    const/4 v4, 0x2

    aget-wide v5, v0, v4

    aget-wide v7, p0, v4

    xor-long/2addr v5, v7

    aput-wide v5, v0, v4

    const/4 v4, 0x3

    aget-wide v5, v0, v4

    aget-wide v7, p0, v4

    xor-long/2addr v5, v7

    aput-wide v5, v0, v4

    add-int/lit8 v3, v3, 0x2

    goto :goto_e

    :cond_40
    new-instance p0, Ln2/i0;

    invoke-direct {p0, v0}, Ln2/i0;-><init>([J)V

    return-object p0
.end method

.method public final N()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public final O()I
    .registers 3

    iget-object p0, p0, Ln2/i0;->l:[J

    const/4 v0, 0x0

    aget-wide v0, p0, v0

    long-to-int p0, v0

    and-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final a(Lk2/b0;)Lk2/b0;
    .registers 14

    check-cast p1, Ln2/i0;

    iget-object p1, p1, Ln2/i0;->l:[J

    iget-object p0, p0, Ln2/i0;->l:[J

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

    new-instance p0, Ln2/i0;

    invoke-direct {p0, v10}, Ln2/i0;-><init>([J)V

    return-object p0
.end method

.method public final b()Lk2/b0;
    .registers 13

    iget-object p0, p0, Ln2/i0;->l:[J

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

    new-instance v0, Ln2/i0;

    invoke-direct {v0, p0}, Ln2/i0;-><init>([J)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    instance-of v0, p1, Ln2/i0;

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    check-cast p1, Ln2/i0;

    iget-object p0, p0, Ln2/i0;->l:[J

    iget-object p1, p1, Ln2/i0;->l:[J

    invoke-static {p0, p1}, Lq4/k;->N([J[J)Z

    move-result p0

    return p0
.end method

.method public final f(Lk2/b0;)Lk2/b0;
    .registers 2

    invoke-virtual {p1}, Lk2/b0;->q()Lk2/b0;

    move-result-object p1

    invoke-virtual {p0, p1}, Ln2/i0;->x(Lk2/b0;)Lk2/b0;

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .registers 2

    iget-object p0, p0, Ln2/i0;->l:[J

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lm4/d;->v([JI)I

    move-result p0

    const v0, 0x1d731f

    xor-int/2addr p0, v0

    return p0
.end method

.method public final k()I
    .registers 1

    const/16 p0, 0xc1

    return p0
.end method

.method public final q()Lk2/b0;
    .registers 5

    const/4 v0, 0x4

    new-array v1, v0, [J

    iget-object p0, p0, Ln2/i0;->l:[J

    invoke-static {p0}, Lq4/k;->v0([J)Z

    move-result v2

    if-nez v2, :cond_5a

    new-array v2, v0, [J

    new-array v0, v0, [J

    const/16 v3, 0x8

    new-array v3, v3, [J

    invoke-static {p0, v3}, Ln2/b;->W([J[J)V

    invoke-static {v3, v2}, Ln2/b;->I0([J[J)V

    const/4 p0, 0x1

    invoke-static {p0, v2, v0}, Ln2/b;->A1(I[J[J)V

    invoke-static {v2, v0, v2}, Ln2/b;->n0([J[J[J)V

    invoke-static {p0, v0, v0}, Ln2/b;->A1(I[J[J)V

    invoke-static {v2, v0, v2}, Ln2/b;->n0([J[J[J)V

    const/4 p0, 0x3

    invoke-static {p0, v2, v0}, Ln2/b;->A1(I[J[J)V

    invoke-static {v2, v0, v2}, Ln2/b;->n0([J[J[J)V

    const/4 p0, 0x6

    invoke-static {p0, v2, v0}, Ln2/b;->A1(I[J[J)V

    invoke-static {v2, v0, v2}, Ln2/b;->n0([J[J[J)V

    const/16 p0, 0xc

    invoke-static {p0, v2, v0}, Ln2/b;->A1(I[J[J)V

    invoke-static {v2, v0, v2}, Ln2/b;->n0([J[J[J)V

    const/16 p0, 0x18

    invoke-static {p0, v2, v0}, Ln2/b;->A1(I[J[J)V

    invoke-static {v2, v0, v2}, Ln2/b;->n0([J[J[J)V

    const/16 p0, 0x30

    invoke-static {p0, v2, v0}, Ln2/b;->A1(I[J[J)V

    invoke-static {v2, v0, v2}, Ln2/b;->n0([J[J[J)V

    const/16 p0, 0x60

    invoke-static {p0, v2, v0}, Ln2/b;->A1(I[J[J)V

    invoke-static {v2, v0, v1}, Ln2/b;->n0([J[J[J)V

    new-instance p0, Ln2/i0;

    invoke-direct {p0, v1}, Ln2/i0;-><init>([J)V

    return-object p0

    :cond_5a
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public final s()Z
    .registers 1

    iget-object p0, p0, Ln2/i0;->l:[J

    invoke-static {p0}, Lq4/k;->q0([J)Z

    move-result p0

    return p0
.end method

.method public final t()Z
    .registers 1

    iget-object p0, p0, Ln2/i0;->l:[J

    invoke-static {p0}, Lq4/k;->v0([J)Z

    move-result p0

    return p0
.end method

.method public final x(Lk2/b0;)Lk2/b0;
    .registers 3

    const/4 v0, 0x4

    new-array v0, v0, [J

    check-cast p1, Ln2/i0;

    iget-object p1, p1, Ln2/i0;->l:[J

    iget-object p0, p0, Ln2/i0;->l:[J

    invoke-static {p0, p1, v0}, Ln2/b;->n0([J[J[J)V

    new-instance p0, Ln2/i0;

    invoke-direct {p0, v0}, Ln2/i0;-><init>([J)V

    return-object p0
.end method

.method public final y(Lk2/b0;Lk2/b0;Lk2/b0;)Lk2/b0;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ln2/i0;->z(Lk2/b0;Lk2/b0;Lk2/b0;)Lk2/b0;

    move-result-object p0

    return-object p0
.end method

.method public final z(Lk2/b0;Lk2/b0;Lk2/b0;)Lk2/b0;
    .registers 7

    check-cast p1, Ln2/i0;

    iget-object p1, p1, Ln2/i0;->l:[J

    check-cast p2, Ln2/i0;

    iget-object p2, p2, Ln2/i0;->l:[J

    check-cast p3, Ln2/i0;

    iget-object p3, p3, Ln2/i0;->l:[J

    const/16 v0, 0x8

    new-array v1, v0, [J

    new-array v2, v0, [J

    iget-object p0, p0, Ln2/i0;->l:[J

    invoke-static {p0, p1, v2}, Ln2/b;->E([J[J[J)V

    invoke-static {v1, v2, v1}, Ln2/b;->l([J[J[J)V

    new-array p0, v0, [J

    invoke-static {p2, p3, p0}, Ln2/b;->E([J[J[J)V

    invoke-static {v1, p0, v1}, Ln2/b;->l([J[J[J)V

    const/4 p0, 0x4

    new-array p0, p0, [J

    invoke-static {v1, p0}, Ln2/b;->I0([J[J)V

    new-instance p1, Ln2/i0;

    invoke-direct {p1, p0}, Ln2/i0;-><init>([J)V

    return-object p1
.end method
