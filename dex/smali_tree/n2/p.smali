.class public final Ln2/p;
.super Lk2/j;


# static fields
.field public static final m:Ljava/math/BigInteger;


# instance fields
.field public final l:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000001"

    invoke-static {v1}, Ln4/c;->c(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    sput-object v0, Ln2/p;->m:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .registers 14

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lk2/b0;-><init>(I)V

    if-eqz p1, :cond_9c

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_9c

    sget-object v0, Ln2/p;->m:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_9c

    invoke-static {p1}, Lt4/d;->R(Ljava/math/BigInteger;)[I

    move-result-object p1

    const/4 v0, 0x6

    aget v1, p1, v0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_99

    sget-object v1, Ln2/b;->s:[I

    invoke-static {p1, v1}, Lt4/d;->g0([I[I)Z

    move-result v2

    if-eqz v2, :cond_99

    const/4 v2, 0x0

    aget v3, p1, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, v1, v2

    int-to-long v7, v7

    and-long/2addr v7, v5

    sub-long/2addr v3, v7

    long-to-int v7, v3

    aput v7, p1, v2

    const/16 v2, 0x20

    shr-long/2addr v3, v2

    const/4 v7, 0x1

    aget v8, p1, v7

    int-to-long v8, v8

    and-long/2addr v8, v5

    aget v10, v1, v7

    int-to-long v10, v10

    and-long/2addr v10, v5

    sub-long/2addr v8, v10

    add-long/2addr v8, v3

    long-to-int v3, v8

    aput v3, p1, v7

    shr-long v3, v8, v2

    const/4 v7, 0x2

    aget v8, p1, v7

    int-to-long v8, v8

    and-long/2addr v8, v5

    aget v10, v1, v7

    int-to-long v10, v10

    and-long/2addr v10, v5

    sub-long/2addr v8, v10

    add-long/2addr v8, v3

    long-to-int v3, v8

    aput v3, p1, v7

    shr-long v3, v8, v2

    const/4 v7, 0x3

    aget v8, p1, v7

    int-to-long v8, v8

    and-long/2addr v8, v5

    aget v10, v1, v7

    int-to-long v10, v10

    and-long/2addr v10, v5

    sub-long/2addr v8, v10

    add-long/2addr v8, v3

    long-to-int v3, v8

    aput v3, p1, v7

    shr-long v3, v8, v2

    const/4 v7, 0x4

    aget v8, p1, v7

    int-to-long v8, v8

    and-long/2addr v8, v5

    aget v10, v1, v7

    int-to-long v10, v10

    and-long/2addr v10, v5

    sub-long/2addr v8, v10

    add-long/2addr v8, v3

    long-to-int v3, v8

    aput v3, p1, v7

    shr-long v3, v8, v2

    const/4 v7, 0x5

    aget v8, p1, v7

    int-to-long v8, v8

    and-long/2addr v8, v5

    aget v10, v1, v7

    int-to-long v10, v10

    and-long/2addr v10, v5

    sub-long/2addr v8, v10

    add-long/2addr v8, v3

    long-to-int v3, v8

    aput v3, p1, v7

    shr-long v2, v8, v2

    aget v4, p1, v0

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v1, v1, v0

    int-to-long v9, v1

    and-long v4, v9, v5

    sub-long/2addr v7, v4

    add-long/2addr v7, v2

    long-to-int v1, v7

    aput v1, p1, v0

    :cond_99
    iput-object p1, p0, Ln2/p;->l:[I

    return-void

    :cond_9c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "x value invalid for SecP224R1FieldElement"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>([I)V
    .registers 3

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lk2/b0;-><init>(I)V

    iput-object p1, p0, Ln2/p;->l:[I

    return-void
.end method


# virtual methods
.method public final B()Lk2/b0;
    .registers 7

    const/4 v0, 0x7

    new-array v1, v0, [I

    sget-object v2, Ln2/b;->s:[I

    const/4 v3, 0x0

    move v4, v3

    :goto_7
    iget-object v5, p0, Ln2/p;->l:[I

    if-ge v3, v0, :cond_11

    aget v5, v5, v3

    or-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_11
    ushr-int/lit8 p0, v4, 0x1

    and-int/lit8 v0, v4, 0x1

    or-int/2addr p0, v0

    add-int/lit8 p0, p0, -0x1

    shr-int/lit8 p0, p0, 0x1f

    if-eqz p0, :cond_20

    invoke-static {v2, v2, v1}, Lt4/d;->K0([I[I[I)I

    goto :goto_23

    :cond_20
    invoke-static {v2, v5, v1}, Lt4/d;->K0([I[I[I)I

    :goto_23
    new-instance p0, Ln2/p;

    invoke-direct {p0, v1}, Ln2/p;-><init>([I)V

    return-object p0
.end method

.method public final E()Lk2/b0;
    .registers 18

    move-object/from16 v0, p0

    sget-object v1, Ln2/b;->s:[I

    iget-object v2, v0, Ln2/p;->l:[I

    invoke-static {v2}, Lt4/d;->m0([I)Z

    move-result v3

    if-nez v3, :cond_15b

    invoke-static {v2}, Lt4/d;->k0([I)Z

    move-result v3

    if-eqz v3, :cond_14

    goto/16 :goto_15b

    :cond_14
    const/4 v3, 0x7

    new-array v4, v3, [I

    const/4 v5, 0x0

    move v0, v5

    move v6, v0

    :goto_1a
    if-ge v0, v3, :cond_22

    aget v7, v2, v0

    or-int/2addr v6, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_22
    ushr-int/lit8 v0, v6, 0x1

    const/4 v7, 0x1

    and-int/2addr v6, v7

    or-int/2addr v0, v6

    sub-int/2addr v0, v7

    shr-int/lit8 v0, v0, 0x1f

    if-eqz v0, :cond_30

    invoke-static {v1, v1, v4}, Lt4/d;->K0([I[I[I)I

    goto :goto_33

    :cond_30
    invoke-static {v1, v2, v4}, Lt4/d;->K0([I[I[I)I

    :goto_33
    new-instance v6, Ljava/util/Random;

    invoke-direct {v6}, Ljava/util/Random;-><init>()V

    new-array v8, v3, [I

    const/4 v9, 0x6

    aget v0, v1, v9

    ushr-int/lit8 v10, v0, 0x1

    or-int/2addr v0, v10

    ushr-int/lit8 v10, v0, 0x2

    or-int/2addr v0, v10

    ushr-int/lit8 v10, v0, 0x4

    or-int/2addr v0, v10

    ushr-int/lit8 v10, v0, 0x8

    or-int/2addr v0, v10

    ushr-int/lit8 v10, v0, 0x10

    or-int/2addr v10, v0

    :cond_4c
    move v0, v5

    :goto_4d
    if-eq v0, v3, :cond_58

    invoke-virtual {v6}, Ljava/util/Random;->nextInt()I

    move-result v11

    aput v11, v8, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4d

    :cond_58
    aget v0, v8, v9

    and-int/2addr v0, v10

    aput v0, v8, v9

    invoke-static {v3, v8, v1}, Ls2/b;->D(I[I[I)Z

    move-result v0

    if-nez v0, :cond_4c

    new-array v0, v3, [I

    new-array v6, v3, [I

    new-array v10, v3, [I

    invoke-static {v2, v6}, Lt4/d;->w([I[I)V

    move v11, v5

    :goto_6d
    const/16 v12, 0xe

    const/4 v13, -0x1

    if-ge v11, v3, :cond_89

    invoke-static {v6, v10}, Lt4/d;->w([I[I)V

    shl-int v14, v7, v11

    new-array v12, v12, [I

    :goto_79
    invoke-static {v6, v12}, Lt4/d;->F0([I[I)V

    invoke-static {v12, v6}, Ln2/b;->J0([I[I)V

    add-int/2addr v14, v13

    if-lez v14, :cond_83

    goto :goto_79

    :cond_83
    invoke-static {v6, v10, v6}, Ln2/b;->o0([I[I[I)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_6d

    :cond_89
    new-array v10, v12, [I

    invoke-static {v6, v10}, Lt4/d;->F0([I[I)V

    invoke-static {v10, v6}, Ln2/b;->J0([I[I)V

    const/16 v11, 0x5f

    :goto_93
    add-int/2addr v11, v13

    if-lez v11, :cond_9d

    invoke-static {v6, v10}, Lt4/d;->F0([I[I)V

    invoke-static {v10, v6}, Ln2/b;->J0([I[I)V

    goto :goto_93

    :cond_9d
    invoke-static {v6}, Lt4/d;->k0([I)Z

    move-result v6

    if-nez v6, :cond_a5

    goto/16 :goto_140

    :cond_a5
    :goto_a5
    new-array v6, v3, [I

    invoke-static {v8, v6}, Lt4/d;->w([I[I)V

    new-array v10, v3, [I

    aput v7, v10, v5

    new-array v11, v3, [I

    invoke-static {v4, v11}, Lt4/d;->w([I[I)V

    new-array v12, v3, [I

    new-array v14, v3, [I

    move v15, v5

    :goto_b8
    if-ge v15, v3, :cond_100

    invoke-static {v6, v12}, Lt4/d;->w([I[I)V

    invoke-static {v10, v14}, Lt4/d;->w([I[I)V

    shl-int v16, v7, v15

    :goto_c2
    add-int/lit8 v16, v16, -0x1

    if-ltz v16, :cond_de

    invoke-static {v10, v6, v10}, Ln2/b;->o0([I[I[I)V

    invoke-static {v10, v10}, Ln2/b;->Q1([I[I)V

    invoke-static {v6, v0}, Ln2/b;->l1([I[I)V

    invoke-static {v11, v0, v6}, Ln2/b;->c([I[I[I)V

    invoke-static {v11, v0, v11}, Ln2/b;->o0([I[I[I)V

    invoke-static {v3, v11}, Ls2/b;->P(I[I)I

    move-result v5

    invoke-static {v5, v11}, Ln2/b;->X0(I[I)V

    const/4 v5, 0x0

    goto :goto_c2

    :cond_de
    invoke-static {v10, v14, v0}, Ln2/b;->o0([I[I[I)V

    invoke-static {v0, v4, v0}, Ln2/b;->o0([I[I[I)V

    invoke-static {v6, v12, v11}, Ln2/b;->o0([I[I[I)V

    invoke-static {v11, v0, v11}, Ln2/b;->c([I[I[I)V

    invoke-static {v6, v14, v0}, Ln2/b;->o0([I[I[I)V

    invoke-static {v11, v6}, Lt4/d;->w([I[I)V

    invoke-static {v10, v12, v10}, Ln2/b;->o0([I[I[I)V

    invoke-static {v10, v0, v10}, Ln2/b;->c([I[I[I)V

    invoke-static {v10, v11}, Ln2/b;->l1([I[I)V

    invoke-static {v11, v4, v11}, Ln2/b;->o0([I[I[I)V

    add-int/lit8 v15, v15, 0x1

    const/4 v5, 0x0

    goto :goto_b8

    :cond_100
    new-array v5, v3, [I

    new-array v12, v3, [I

    move v14, v7

    :goto_105
    const/16 v15, 0x60

    if-ge v14, v15, :cond_145

    invoke-static {v6, v5}, Lt4/d;->w([I[I)V

    invoke-static {v10, v12}, Lt4/d;->w([I[I)V

    invoke-static {v10, v6, v10}, Ln2/b;->o0([I[I[I)V

    invoke-static {v10, v10}, Ln2/b;->Q1([I[I)V

    invoke-static {v6, v0}, Ln2/b;->l1([I[I)V

    invoke-static {v11, v0, v6}, Ln2/b;->c([I[I[I)V

    invoke-static {v11, v0, v11}, Ln2/b;->o0([I[I[I)V

    invoke-static {v3, v11}, Ls2/b;->P(I[I)I

    move-result v15

    invoke-static {v15, v11}, Ln2/b;->X0(I[I)V

    invoke-static {v6}, Lt4/d;->m0([I)Z

    move-result v15

    if-eqz v15, :cond_142

    invoke-static {v1, v12, v0}, Lt4/d;->s([I[I[I)V

    invoke-static {v0, v5, v0}, Ln2/b;->o0([I[I[I)V

    invoke-static {v0, v8}, Ln2/b;->l1([I[I)V

    invoke-static {v2, v8}, Lt4/d;->M([I[I)Z

    move-result v1

    if-eqz v1, :cond_140

    new-instance v1, Ln2/p;

    invoke-direct {v1, v0}, Ln2/p;-><init>([I)V

    return-object v1

    :cond_140
    :goto_140
    const/4 v0, 0x0

    return-object v0

    :cond_142
    add-int/lit8 v14, v14, 0x1

    goto :goto_105

    :cond_145
    invoke-static {v3, v8, v8}, Ls2/b;->F(I[I[I)I

    move-result v5

    if-nez v5, :cond_155

    aget v5, v8, v9

    if-ne v5, v13, :cond_158

    invoke-static {v8, v1}, Lt4/d;->g0([I[I)Z

    move-result v5

    if-eqz v5, :cond_158

    :cond_155
    invoke-static {v8}, Ln2/b;->q([I)V

    :cond_158
    const/4 v5, 0x0

    goto/16 :goto_a5

    :cond_15b
    :goto_15b
    return-object v0
.end method

.method public final F()Lk2/b0;
    .registers 2

    const/4 v0, 0x7

    new-array v0, v0, [I

    iget-object p0, p0, Ln2/p;->l:[I

    invoke-static {p0, v0}, Ln2/b;->l1([I[I)V

    new-instance p0, Ln2/p;

    invoke-direct {p0, v0}, Ln2/p;-><init>([I)V

    return-object p0
.end method

.method public final I(Lk2/b0;)Lk2/b0;
    .registers 3

    const/4 v0, 0x7

    new-array v0, v0, [I

    check-cast p1, Ln2/p;

    iget-object p1, p1, Ln2/p;->l:[I

    iget-object p0, p0, Ln2/p;->l:[I

    invoke-static {p0, p1, v0}, Ln2/b;->L1([I[I[I)V

    new-instance p0, Ln2/p;

    invoke-direct {p0, v0}, Ln2/p;-><init>([I)V

    return-object p0
.end method

.method public final K()Z
    .registers 2

    iget-object p0, p0, Ln2/p;->l:[I

    invoke-static {p0}, Lt4/d;->W([I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_a

    return v0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public final L()Ljava/math/BigInteger;
    .registers 1

    iget-object p0, p0, Ln2/p;->l:[I

    invoke-static {p0}, Lt4/d;->N0([I)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lk2/b0;)Lk2/b0;
    .registers 3

    const/4 v0, 0x7

    new-array v0, v0, [I

    check-cast p1, Ln2/p;

    iget-object p1, p1, Ln2/p;->l:[I

    iget-object p0, p0, Ln2/p;->l:[I

    invoke-static {p0, p1, v0}, Ln2/b;->c([I[I[I)V

    new-instance p0, Ln2/p;

    invoke-direct {p0, v0}, Ln2/p;-><init>([I)V

    return-object p0
.end method

.method public final b()Lk2/b0;
    .registers 3

    const/4 v0, 0x7

    new-array v1, v0, [I

    iget-object p0, p0, Ln2/p;->l:[I

    invoke-static {v0, p0, v1}, Ls2/b;->F(I[I[I)I

    move-result p0

    if-nez p0, :cond_19

    const/4 p0, 0x6

    aget p0, v1, p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1c

    sget-object p0, Ln2/b;->s:[I

    invoke-static {v1, p0}, Lt4/d;->g0([I[I)Z

    move-result p0

    if-eqz p0, :cond_1c

    :cond_19
    invoke-static {v1}, Ln2/b;->q([I)V

    :cond_1c
    new-instance p0, Ln2/p;

    invoke-direct {p0, v1}, Ln2/p;-><init>([I)V

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    instance-of v0, p1, Ln2/p;

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    check-cast p1, Ln2/p;

    iget-object p0, p0, Ln2/p;->l:[I

    iget-object p1, p1, Ln2/p;->l:[I

    invoke-static {p0, p1}, Lt4/d;->M([I[I)Z

    move-result p0

    return p0
.end method

.method public final f(Lk2/b0;)Lk2/b0;
    .registers 4

    const/4 v0, 0x7

    new-array v0, v0, [I

    check-cast p1, Ln2/p;

    iget-object p1, p1, Ln2/p;->l:[I

    sget-object v1, Ln2/b;->s:[I

    invoke-static {v1, p1, v0}, Lt4/d;->s([I[I[I)V

    iget-object p0, p0, Ln2/p;->l:[I

    invoke-static {v0, p0, v0}, Ln2/b;->o0([I[I[I)V

    new-instance p0, Ln2/p;

    invoke-direct {p0, v0}, Ln2/p;-><init>([I)V

    return-object p0
.end method

.method public final hashCode()I
    .registers 3

    sget-object v0, Ln2/p;->m:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object p0, p0, Ln2/p;->l:[I

    const/4 v1, 0x7

    invoke-static {v1, p0}, Lm4/d;->t(I[I)I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public final k()I
    .registers 1

    sget-object p0, Ln2/p;->m:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    return p0
.end method

.method public final q()Lk2/b0;
    .registers 3

    const/4 v0, 0x7

    new-array v0, v0, [I

    iget-object p0, p0, Ln2/p;->l:[I

    sget-object v1, Ln2/b;->s:[I

    invoke-static {v1, p0, v0}, Lt4/d;->s([I[I[I)V

    new-instance p0, Ln2/p;

    invoke-direct {p0, v0}, Ln2/p;-><init>([I)V

    return-object p0
.end method

.method public final s()Z
    .registers 1

    iget-object p0, p0, Ln2/p;->l:[I

    invoke-static {p0}, Lt4/d;->k0([I)Z

    move-result p0

    return p0
.end method

.method public final t()Z
    .registers 1

    iget-object p0, p0, Ln2/p;->l:[I

    invoke-static {p0}, Lt4/d;->m0([I)Z

    move-result p0

    return p0
.end method

.method public final x(Lk2/b0;)Lk2/b0;
    .registers 3

    const/4 v0, 0x7

    new-array v0, v0, [I

    check-cast p1, Ln2/p;

    iget-object p1, p1, Ln2/p;->l:[I

    iget-object p0, p0, Ln2/p;->l:[I

    invoke-static {p0, p1, v0}, Ln2/b;->o0([I[I[I)V

    new-instance p0, Ln2/p;

    invoke-direct {p0, v0}, Ln2/p;-><init>([I)V

    return-object p0
.end method
