.class public final Ln2/y;
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

    const/16 v1, 0x71

    if-gt v0, v1, :cond_1b

    invoke-static {v1, p1}, Ls2/b;->v(ILjava/math/BigInteger;)[J

    move-result-object p1

    iput-object p1, p0, Ln2/y;->l:[J

    return-void

    :cond_1b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "x value invalid for SecT113FieldElement"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>([J)V
    .registers 3

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lk2/b0;-><init>(I)V

    iput-object p1, p0, Ln2/y;->l:[J

    return-void
.end method


# virtual methods
.method public final B()Lk2/b0;
    .registers 1

    return-object p0
.end method

.method public final E()Lk2/b0;
    .registers 11

    iget-object p0, p0, Ln2/y;->l:[J

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    invoke-static {v1, v2}, Lq4/k;->c1(J)J

    move-result-wide v1

    const/4 v3, 0x1

    aget-wide v4, p0, v3

    invoke-static {v4, v5}, Lq4/k;->c1(J)J

    move-result-wide v4

    const-wide v6, 0xffffffffL

    and-long/2addr v6, v1

    const/16 p0, 0x20

    shl-long v8, v4, p0

    or-long/2addr v6, v8

    ushr-long/2addr v1, p0

    const-wide v8, -0x100000000L

    and-long/2addr v4, v8

    or-long/2addr v1, v4

    const/16 p0, 0x39

    shl-long v4, v1, p0

    xor-long/2addr v4, v6

    const/4 p0, 0x5

    shl-long v6, v1, p0

    xor-long/2addr v4, v6

    const/4 p0, 0x7

    ushr-long v6, v1, p0

    const/16 p0, 0x3b

    ushr-long/2addr v1, p0

    xor-long/2addr v1, v6

    const/4 p0, 0x2

    new-array p0, p0, [J

    aput-wide v4, p0, v0

    aput-wide v1, p0, v3

    new-instance v0, Ln2/y;

    invoke-direct {v0, p0}, Ln2/y;-><init>([J)V

    return-object v0
.end method

.method public final F()Lk2/b0;
    .registers 4

    const/4 v0, 0x2

    new-array v1, v0, [J

    const/4 v2, 0x4

    new-array v2, v2, [J

    iget-object p0, p0, Ln2/y;->l:[J

    invoke-static {v0, p0, v2}, Lq4/k;->R(I[J[J)V

    invoke-static {v2, v1}, Ln2/b;->G0([J[J)V

    new-instance p0, Ln2/y;

    invoke-direct {p0, v1}, Ln2/y;-><init>([J)V

    return-object p0
.end method

.method public final G(Lk2/b0;Lk2/b0;)Lk2/b0;
    .registers 6

    check-cast p1, Ln2/y;

    iget-object p1, p1, Ln2/y;->l:[J

    check-cast p2, Ln2/y;

    iget-object p2, p2, Ln2/y;->l:[J

    const/4 v0, 0x4

    new-array v1, v0, [J

    new-array v0, v0, [J

    const/4 v2, 0x2

    iget-object p0, p0, Ln2/y;->l:[J

    invoke-static {v2, p0, v0}, Lq4/k;->R(I[J[J)V

    invoke-static {v1, v0, v1}, Ln2/b;->k([J[J[J)V

    const/16 p0, 0x8

    new-array p0, p0, [J

    invoke-static {p1, p2, p0}, Ln2/b;->D([J[J[J)V

    invoke-static {v1, p0, v1}, Ln2/b;->k([J[J[J)V

    new-array p0, v2, [J

    invoke-static {v1, p0}, Ln2/b;->G0([J[J)V

    new-instance p1, Ln2/y;

    invoke-direct {p1, p0}, Ln2/y;-><init>([J)V

    return-object p1
.end method

.method public final H(I)Lk2/b0;
    .registers 3

    const/4 v0, 0x1

    if-ge p1, v0, :cond_4

    return-object p0

    :cond_4
    const/4 v0, 0x2

    new-array v0, v0, [J

    iget-object p0, p0, Ln2/y;->l:[J

    invoke-static {p1, p0, v0}, Ln2/b;->y1(I[J[J)V

    new-instance p0, Ln2/y;

    invoke-direct {p0, v0}, Ln2/y;-><init>([J)V

    return-object p0
.end method

.method public final K()Z
    .registers 6

    iget-object p0, p0, Ln2/y;->l:[J

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

    const/16 v0, 0x10

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_5
    const/4 v2, 0x2

    if-ge v1, v2, :cond_1c

    iget-object v2, p0, Ln2/y;->l:[J

    aget-wide v2, v2, v1

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_19

    rsub-int/lit8 v4, v1, 0x1

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
    .registers 11

    const/4 v0, 0x2

    new-array v1, v0, [J

    const/4 v2, 0x4

    new-array v2, v2, [J

    iget-object p0, p0, Ln2/y;->l:[J

    const/4 v3, 0x0

    aget-wide v4, p0, v3

    aput-wide v4, v1, v3

    const/4 v4, 0x1

    aget-wide v5, p0, v4

    aput-wide v5, v1, v4

    move v5, v4

    :goto_13
    const/16 v6, 0x71

    if-ge v5, v6, :cond_34

    invoke-static {v0, v1, v2}, Lq4/k;->R(I[J[J)V

    invoke-static {v2, v1}, Ln2/b;->G0([J[J)V

    invoke-static {v0, v1, v2}, Lq4/k;->R(I[J[J)V

    invoke-static {v2, v1}, Ln2/b;->G0([J[J)V

    aget-wide v6, v1, v3

    aget-wide v8, p0, v3

    xor-long/2addr v6, v8

    aput-wide v6, v1, v3

    aget-wide v6, v1, v4

    aget-wide v8, p0, v4

    xor-long/2addr v6, v8

    aput-wide v6, v1, v4

    add-int/lit8 v5, v5, 0x2

    goto :goto_13

    :cond_34
    new-instance p0, Ln2/y;

    invoke-direct {p0, v1}, Ln2/y;-><init>([J)V

    return-object p0
.end method

.method public final O()I
    .registers 3

    iget-object p0, p0, Ln2/y;->l:[J

    const/4 v0, 0x0

    aget-wide v0, p0, v0

    long-to-int p0, v0

    and-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final a(Lk2/b0;)Lk2/b0;
    .registers 8

    check-cast p1, Ln2/y;

    iget-object p1, p1, Ln2/y;->l:[J

    iget-object p0, p0, Ln2/y;->l:[J

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    const/4 v3, 0x1

    aget-wide v4, p0, v3

    aget-wide p0, p1, v3

    xor-long/2addr p0, v4

    const/4 v4, 0x2

    new-array v4, v4, [J

    aput-wide v1, v4, v0

    aput-wide p0, v4, v3

    new-instance p0, Ln2/y;

    invoke-direct {p0, v4}, Ln2/y;-><init>([J)V

    return-object p0
.end method

.method public final b()Lk2/b0;
    .registers 7

    iget-object p0, p0, Ln2/y;->l:[J

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const-wide/16 v3, 0x1

    xor-long/2addr v1, v3

    const/4 v3, 0x1

    aget-wide v4, p0, v3

    const/4 p0, 0x2

    new-array p0, p0, [J

    aput-wide v1, p0, v0

    aput-wide v4, p0, v3

    new-instance v0, Ln2/y;

    invoke-direct {v0, p0}, Ln2/y;-><init>([J)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Ln2/y;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Ln2/y;

    iget-object p1, p1, Ln2/y;->l:[J

    move v1, v0

    :goto_f
    if-ltz v1, :cond_1f

    iget-object v3, p0, Ln2/y;->l:[J

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

    invoke-virtual {p0, p1}, Ln2/y;->x(Lk2/b0;)Lk2/b0;

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .registers 2

    iget-object p0, p0, Ln2/y;->l:[J

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lm4/d;->v([JI)I

    move-result p0

    const v0, 0x1b971

    xor-int/2addr p0, v0

    return p0
.end method

.method public final k()I
    .registers 1

    const/16 p0, 0x71

    return p0
.end method

.method public final q()Lk2/b0;
    .registers 9

    const/4 v0, 0x2

    new-array v1, v0, [J

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_6d

    iget-object v3, p0, Ln2/y;->l:[J

    aget-wide v4, v3, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_6a

    new-array p0, v0, [J

    new-array v2, v0, [J

    const/4 v4, 0x4

    new-array v5, v4, [J

    invoke-static {v0, v3, v5}, Lq4/k;->R(I[J[J)V

    invoke-static {v5, p0}, Ln2/b;->G0([J[J)V

    invoke-static {p0, v3, p0}, Ln2/b;->l0([J[J[J)V

    new-array v5, v4, [J

    invoke-static {v0, p0, v5}, Lq4/k;->R(I[J[J)V

    invoke-static {v5, p0}, Ln2/b;->G0([J[J)V

    invoke-static {p0, v3, p0}, Ln2/b;->l0([J[J[J)V

    const/4 v5, 0x3

    invoke-static {v5, p0, v2}, Ln2/b;->y1(I[J[J)V

    invoke-static {v2, p0, v2}, Ln2/b;->l0([J[J[J)V

    new-array v5, v4, [J

    invoke-static {v0, v2, v5}, Lq4/k;->R(I[J[J)V

    invoke-static {v5, v2}, Ln2/b;->G0([J[J)V

    invoke-static {v2, v3, v2}, Ln2/b;->l0([J[J[J)V

    const/4 v3, 0x7

    invoke-static {v3, v2, p0}, Ln2/b;->y1(I[J[J)V

    invoke-static {p0, v2, p0}, Ln2/b;->l0([J[J[J)V

    const/16 v3, 0xe

    invoke-static {v3, p0, v2}, Ln2/b;->y1(I[J[J)V

    invoke-static {v2, p0, v2}, Ln2/b;->l0([J[J[J)V

    const/16 v3, 0x1c

    invoke-static {v3, v2, p0}, Ln2/b;->y1(I[J[J)V

    invoke-static {p0, v2, p0}, Ln2/b;->l0([J[J[J)V

    const/16 v3, 0x38

    invoke-static {v3, p0, v2}, Ln2/b;->y1(I[J[J)V

    invoke-static {v2, p0, v2}, Ln2/b;->l0([J[J[J)V

    new-array p0, v4, [J

    invoke-static {v0, v2, p0}, Lq4/k;->R(I[J[J)V

    invoke-static {p0, v1}, Ln2/b;->G0([J[J)V

    new-instance p0, Ln2/y;

    invoke-direct {p0, v1}, Ln2/y;-><init>([J)V

    return-object p0

    :cond_6a
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6d
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public final s()Z
    .registers 7

    iget-object p0, p0, Ln2/y;->l:[J

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_c

    goto :goto_15

    :cond_c
    const/4 v1, 0x1

    aget-wide v2, p0, v1

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-eqz p0, :cond_16

    :goto_15
    return v0

    :cond_16
    return v1
.end method

.method public final t()Z
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/4 v2, 0x2

    if-ge v1, v2, :cond_13

    iget-object v2, p0, Ln2/y;->l:[J

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

    const/4 v0, 0x2

    new-array v0, v0, [J

    check-cast p1, Ln2/y;

    iget-object p1, p1, Ln2/y;->l:[J

    iget-object p0, p0, Ln2/y;->l:[J

    invoke-static {p0, p1, v0}, Ln2/b;->l0([J[J[J)V

    new-instance p0, Ln2/y;

    invoke-direct {p0, v0}, Ln2/y;-><init>([J)V

    return-object p0
.end method

.method public final y(Lk2/b0;Lk2/b0;Lk2/b0;)Lk2/b0;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ln2/y;->z(Lk2/b0;Lk2/b0;Lk2/b0;)Lk2/b0;

    move-result-object p0

    return-object p0
.end method

.method public final z(Lk2/b0;Lk2/b0;Lk2/b0;)Lk2/b0;
    .registers 7

    check-cast p1, Ln2/y;

    iget-object p1, p1, Ln2/y;->l:[J

    check-cast p2, Ln2/y;

    iget-object p2, p2, Ln2/y;->l:[J

    check-cast p3, Ln2/y;

    iget-object p3, p3, Ln2/y;->l:[J

    const/4 v0, 0x4

    new-array v0, v0, [J

    const/16 v1, 0x8

    new-array v2, v1, [J

    iget-object p0, p0, Ln2/y;->l:[J

    invoke-static {p0, p1, v2}, Ln2/b;->D([J[J[J)V

    invoke-static {v0, v2, v0}, Ln2/b;->k([J[J[J)V

    new-array p0, v1, [J

    invoke-static {p2, p3, p0}, Ln2/b;->D([J[J[J)V

    invoke-static {v0, p0, v0}, Ln2/b;->k([J[J[J)V

    const/4 p0, 0x2

    new-array p0, p0, [J

    invoke-static {v0, p0}, Ln2/b;->G0([J[J)V

    new-instance p1, Ln2/y;

    invoke-direct {p1, p0}, Ln2/y;-><init>([J)V

    return-object p1
.end method
