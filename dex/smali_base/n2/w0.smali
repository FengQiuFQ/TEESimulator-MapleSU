.class public final Ln2/w0;
.super Lk2/i;


# instance fields
.field public l:[J


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

    const/16 v1, 0x23b

    if-gt v0, v1, :cond_1b

    invoke-static {v1, p1}, Ls2/b;->v(ILjava/math/BigInteger;)[J

    move-result-object p1

    iput-object p1, p0, Ln2/w0;->l:[J

    return-void

    :cond_1b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "x value invalid for SecT571FieldElement"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>([J)V
    .registers 3

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lk2/b0;-><init>(I)V

    iput-object p1, p0, Ln2/w0;->l:[J

    return-void
.end method


# virtual methods
.method public final B()Lk2/b0;
    .registers 1

    return-object p0
.end method

.method public final E()Lk2/b0;
    .registers 16

    const/16 v0, 0x9

    new-array v1, v0, [J

    iget-object p0, p0, Ln2/w0;->l:[J

    new-array v2, v0, [J

    new-array v0, v0, [J

    const/4 v3, 0x0

    move v4, v3

    :goto_c
    const-wide v5, 0xffffffffL

    const/16 v7, 0x20

    const/4 v8, 0x4

    if-ge v3, v8, :cond_3a

    add-int/lit8 v8, v4, 0x1

    aget-wide v9, p0, v4

    invoke-static {v9, v10}, Lq4/k;->c1(J)J

    move-result-wide v9

    add-int/lit8 v4, v4, 0x2

    aget-wide v11, p0, v8

    invoke-static {v11, v12}, Lq4/k;->c1(J)J

    move-result-wide v11

    and-long/2addr v5, v9

    shl-long v13, v11, v7

    or-long/2addr v5, v13

    aput-wide v5, v2, v3

    ushr-long v5, v9, v7

    const-wide v7, -0x100000000L

    and-long/2addr v7, v11

    or-long/2addr v5, v7

    aput-wide v5, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_3a
    aget-wide v3, p0, v4

    invoke-static {v3, v4}, Lq4/k;->c1(J)J

    move-result-wide v3

    and-long/2addr v5, v3

    aput-wide v5, v2, v8

    ushr-long/2addr v3, v7

    aput-wide v3, v0, v8

    sget-object p0, Ln2/b;->H:[J

    invoke-static {v0, p0, v1}, Ln2/b;->j0([J[J[J)V

    invoke-static {v1, v2, v1}, Ln2/b;->b([J[J[J)V

    new-instance p0, Ln2/w0;

    invoke-direct {p0, v1}, Ln2/w0;-><init>([J)V

    return-object p0
.end method

.method public final F()Lk2/b0;
    .registers 2

    const/16 v0, 0x9

    new-array v0, v0, [J

    iget-object p0, p0, Ln2/w0;->l:[J

    invoke-static {p0, v0}, Ln2/b;->e1([J[J)V

    new-instance p0, Ln2/w0;

    invoke-direct {p0, v0}, Ln2/w0;-><init>([J)V

    return-object p0
.end method

.method public final G(Lk2/b0;Lk2/b0;)Lk2/b0;
    .registers 5

    iget-object p0, p0, Ln2/w0;->l:[J

    check-cast p1, Ln2/w0;

    iget-object p1, p1, Ln2/w0;->l:[J

    check-cast p2, Ln2/w0;

    iget-object p2, p2, Ln2/w0;->l:[J

    const/16 v0, 0x12

    new-array v1, v0, [J

    new-array v0, v0, [J

    invoke-static {p0, v0}, Ln2/b;->V([J[J)V

    invoke-static {v1, v0, v1}, Ln2/b;->j([J[J[J)V

    invoke-static {p1, p2, v1}, Ln2/b;->t0([J[J[J)V

    const/16 p0, 0x9

    new-array p0, p0, [J

    invoke-static {v1, p0}, Ln2/b;->E0([J[J)V

    new-instance p1, Ln2/w0;

    invoke-direct {p1, p0}, Ln2/w0;-><init>([J)V

    return-object p1
.end method

.method public final H(I)Lk2/b0;
    .registers 3

    const/4 v0, 0x1

    if-ge p1, v0, :cond_4

    return-object p0

    :cond_4
    const/16 v0, 0x9

    new-array v0, v0, [J

    iget-object p0, p0, Ln2/w0;->l:[J

    invoke-static {p1, p0, v0}, Ln2/b;->w1(I[J[J)V

    new-instance p0, Ln2/w0;

    invoke-direct {p0, v0}, Ln2/w0;-><init>([J)V

    return-object p0
.end method

.method public final K()Z
    .registers 6

    iget-object p0, p0, Ln2/w0;->l:[J

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

    iget-object p0, p0, Ln2/w0;->l:[J

    const/16 v0, 0x48

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_7
    const/16 v2, 0x9

    if-ge v1, v2, :cond_1d

    aget-wide v2, p0, v1

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1a

    rsub-int/lit8 v4, v1, 0x8

    shl-int/lit8 v4, v4, 0x3

    invoke-static {v4, v2, v3, v0}, Lm4/d;->E(IJ[B)V

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1d
    new-instance p0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object p0
.end method

.method public final M()Lk2/b0;
    .registers 11

    const/16 v0, 0x9

    new-array v1, v0, [J

    iget-object p0, p0, Ln2/w0;->l:[J

    const/16 v2, 0x12

    new-array v2, v2, [J

    const/4 v3, 0x0

    aget-wide v4, p0, v3

    aput-wide v4, v1, v3

    const/4 v4, 0x1

    aget-wide v5, p0, v4

    aput-wide v5, v1, v4

    const/4 v5, 0x2

    aget-wide v6, p0, v5

    aput-wide v6, v1, v5

    const/4 v5, 0x3

    aget-wide v6, p0, v5

    aput-wide v6, v1, v5

    const/4 v5, 0x4

    aget-wide v6, p0, v5

    aput-wide v6, v1, v5

    const/4 v5, 0x5

    aget-wide v6, p0, v5

    aput-wide v6, v1, v5

    const/4 v5, 0x6

    aget-wide v6, p0, v5

    aput-wide v6, v1, v5

    const/4 v5, 0x7

    aget-wide v6, p0, v5

    aput-wide v6, v1, v5

    const/16 v5, 0x8

    aget-wide v6, p0, v5

    aput-wide v6, v1, v5

    :goto_38
    const/16 v5, 0x23b

    if-ge v4, v5, :cond_58

    invoke-static {v1, v2}, Ln2/b;->V([J[J)V

    invoke-static {v2, v1}, Ln2/b;->E0([J[J)V

    invoke-static {v1, v2}, Ln2/b;->V([J[J)V

    invoke-static {v2, v1}, Ln2/b;->E0([J[J)V

    move v5, v3

    :goto_49
    if-ge v5, v0, :cond_55

    aget-wide v6, v1, v5

    aget-wide v8, p0, v5

    xor-long/2addr v6, v8

    aput-wide v6, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_49

    :cond_55
    add-int/lit8 v4, v4, 0x2

    goto :goto_38

    :cond_58
    new-instance p0, Ln2/w0;

    invoke-direct {p0, v1}, Ln2/w0;-><init>([J)V

    return-object p0
.end method

.method public final N()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public final O()I
    .registers 7

    iget-object p0, p0, Ln2/w0;->l:[J

    const/4 v0, 0x0

    aget-wide v0, p0, v0

    const/16 v2, 0x8

    aget-wide v2, p0, v2

    const/16 p0, 0x31

    ushr-long v4, v2, p0

    xor-long/2addr v0, v4

    const/16 p0, 0x39

    ushr-long/2addr v2, p0

    xor-long/2addr v0, v2

    long-to-int p0, v0

    and-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final a(Lk2/b0;)Lk2/b0;
    .registers 3

    const/16 v0, 0x9

    new-array v0, v0, [J

    iget-object p0, p0, Ln2/w0;->l:[J

    check-cast p1, Ln2/w0;

    iget-object p1, p1, Ln2/w0;->l:[J

    invoke-static {p0, p1, v0}, Ln2/b;->b([J[J[J)V

    new-instance p0, Ln2/w0;

    invoke-direct {p0, v0}, Ln2/w0;-><init>([J)V

    return-object p0
.end method

.method public final b()Lk2/b0;
    .registers 8

    const/16 v0, 0x9

    new-array v1, v0, [J

    iget-object p0, p0, Ln2/w0;->l:[J

    const/4 v2, 0x0

    aget-wide v3, p0, v2

    const-wide/16 v5, 0x1

    xor-long/2addr v3, v5

    aput-wide v3, v1, v2

    const/4 v2, 0x1

    :goto_f
    if-ge v2, v0, :cond_18

    aget-wide v3, p0, v2

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_18
    new-instance p0, Ln2/w0;

    invoke-direct {p0, v1}, Ln2/w0;-><init>([J)V

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Ln2/w0;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Ln2/w0;

    iget-object p0, p0, Ln2/w0;->l:[J

    iget-object p1, p1, Ln2/w0;->l:[J

    const/16 v1, 0x8

    :goto_12
    if-ltz v1, :cond_20

    aget-wide v3, p0, v1

    aget-wide v5, p1, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1d

    return v2

    :cond_1d
    add-int/lit8 v1, v1, -0x1

    goto :goto_12

    :cond_20
    return v0
.end method

.method public final f(Lk2/b0;)Lk2/b0;
    .registers 2

    invoke-virtual {p1}, Lk2/b0;->q()Lk2/b0;

    move-result-object p1

    invoke-virtual {p0, p1}, Ln2/w0;->x(Lk2/b0;)Lk2/b0;

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .registers 2

    iget-object p0, p0, Ln2/w0;->l:[J

    const/16 v0, 0x9

    invoke-static {p0, v0}, Lm4/d;->v([JI)I

    move-result p0

    const v0, 0x5724cc

    xor-int/2addr p0, v0

    return p0
.end method

.method public final k()I
    .registers 1

    const/16 p0, 0x23b

    return p0
.end method

.method public final q()Lk2/b0;
    .registers 5

    const/16 v0, 0x9

    new-array v1, v0, [J

    iget-object p0, p0, Ln2/w0;->l:[J

    invoke-static {p0}, Ls2/a;->l([J)Z

    move-result v2

    if-nez v2, :cond_6d

    new-array v2, v0, [J

    new-array v3, v0, [J

    new-array v0, v0, [J

    invoke-static {p0, v0}, Ln2/b;->e1([J[J)V

    invoke-static {v0, v2}, Ln2/b;->e1([J[J)V

    invoke-static {v2, v3}, Ln2/b;->e1([J[J)V

    invoke-static {v2, v3, v2}, Ln2/b;->j0([J[J[J)V

    const/4 p0, 0x2

    invoke-static {p0, v2, v3}, Ln2/b;->w1(I[J[J)V

    invoke-static {v2, v3, v2}, Ln2/b;->j0([J[J[J)V

    invoke-static {v2, v0, v2}, Ln2/b;->j0([J[J[J)V

    const/4 p0, 0x5

    invoke-static {p0, v2, v3}, Ln2/b;->w1(I[J[J)V

    invoke-static {v2, v3, v2}, Ln2/b;->j0([J[J[J)V

    invoke-static {p0, v3, v3}, Ln2/b;->w1(I[J[J)V

    invoke-static {v2, v3, v2}, Ln2/b;->j0([J[J[J)V

    const/16 p0, 0xf

    invoke-static {p0, v2, v3}, Ln2/b;->w1(I[J[J)V

    invoke-static {v2, v3, v0}, Ln2/b;->j0([J[J[J)V

    const/16 p0, 0x1e

    invoke-static {p0, v0, v2}, Ln2/b;->w1(I[J[J)V

    invoke-static {p0, v2, v3}, Ln2/b;->w1(I[J[J)V

    invoke-static {v2, v3, v2}, Ln2/b;->j0([J[J[J)V

    const/16 p0, 0x3c

    invoke-static {p0, v2, v3}, Ln2/b;->w1(I[J[J)V

    invoke-static {v2, v3, v2}, Ln2/b;->j0([J[J[J)V

    invoke-static {p0, v3, v3}, Ln2/b;->w1(I[J[J)V

    invoke-static {v2, v3, v2}, Ln2/b;->j0([J[J[J)V

    const/16 p0, 0xb4

    invoke-static {p0, v2, v3}, Ln2/b;->w1(I[J[J)V

    invoke-static {v2, v3, v2}, Ln2/b;->j0([J[J[J)V

    invoke-static {p0, v3, v3}, Ln2/b;->w1(I[J[J)V

    invoke-static {v2, v3, v2}, Ln2/b;->j0([J[J[J)V

    invoke-static {v2, v0, v1}, Ln2/b;->j0([J[J[J)V

    new-instance p0, Ln2/w0;

    invoke-direct {p0, v1}, Ln2/w0;-><init>([J)V

    return-object p0

    :cond_6d
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public final s()Z
    .registers 8

    iget-object p0, p0, Ln2/w0;->l:[J

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_c

    goto :goto_1a

    :cond_c
    const/4 v1, 0x1

    move v2, v1

    :goto_e
    const/16 v3, 0x9

    if-ge v2, v3, :cond_1e

    aget-wide v3, p0, v2

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1b

    :goto_1a
    return v0

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_1e
    return v1
.end method

.method public final t()Z
    .registers 1

    iget-object p0, p0, Ln2/w0;->l:[J

    invoke-static {p0}, Ls2/a;->l([J)Z

    move-result p0

    return p0
.end method

.method public final x(Lk2/b0;)Lk2/b0;
    .registers 3

    const/16 v0, 0x9

    new-array v0, v0, [J

    iget-object p0, p0, Ln2/w0;->l:[J

    check-cast p1, Ln2/w0;

    iget-object p1, p1, Ln2/w0;->l:[J

    invoke-static {p0, p1, v0}, Ln2/b;->j0([J[J[J)V

    new-instance p0, Ln2/w0;

    invoke-direct {p0, v0}, Ln2/w0;-><init>([J)V

    return-object p0
.end method

.method public final y(Lk2/b0;Lk2/b0;Lk2/b0;)Lk2/b0;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ln2/w0;->z(Lk2/b0;Lk2/b0;Lk2/b0;)Lk2/b0;

    move-result-object p0

    return-object p0
.end method

.method public final z(Lk2/b0;Lk2/b0;Lk2/b0;)Lk2/b0;
    .registers 5

    iget-object p0, p0, Ln2/w0;->l:[J

    check-cast p1, Ln2/w0;

    iget-object p1, p1, Ln2/w0;->l:[J

    check-cast p2, Ln2/w0;

    iget-object p2, p2, Ln2/w0;->l:[J

    check-cast p3, Ln2/w0;

    iget-object p3, p3, Ln2/w0;->l:[J

    const/16 v0, 0x12

    new-array v0, v0, [J

    invoke-static {p0, p1, v0}, Ln2/b;->t0([J[J[J)V

    invoke-static {p2, p3, v0}, Ln2/b;->t0([J[J[J)V

    const/16 p0, 0x9

    new-array p0, p0, [J

    invoke-static {v0, p0}, Ln2/b;->E0([J[J)V

    new-instance p1, Ln2/w0;

    invoke-direct {p1, p0}, Ln2/w0;-><init>([J)V

    return-object p1
.end method
