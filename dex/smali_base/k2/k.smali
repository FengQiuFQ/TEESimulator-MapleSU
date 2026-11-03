.class public final Lk2/k;
.super Lk2/i;


# instance fields
.field public final l:I

.field public final m:I

.field public final n:[I

.field public final o:Lk2/t;


# direct methods
.method public constructor <init>(I[ILk2/t;)V
    .registers 5

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lk2/b0;-><init>(I)V

    iput p1, p0, Lk2/k;->m:I

    array-length p1, p2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_c

    const/4 p1, 0x2

    goto :goto_d

    :cond_c
    const/4 p1, 0x3

    :goto_d
    iput p1, p0, Lk2/k;->l:I

    iput-object p2, p0, Lk2/k;->n:[I

    iput-object p3, p0, Lk2/k;->o:Lk2/t;

    return-void
.end method


# virtual methods
.method public final B()Lk2/b0;
    .registers 1

    return-object p0
.end method

.method public final E()Lk2/b0;
    .registers 8

    iget-object v0, p0, Lk2/k;->o:Lk2/t;

    iget-object v1, v0, Lk2/t;->c:[J

    const/4 v2, 0x0

    :goto_5
    array-length v3, v1

    if-ge v2, v3, :cond_23

    aget-wide v3, v1, v2

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_20

    invoke-virtual {v0}, Lk2/t;->n()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_23

    :cond_17
    iget v0, p0, Lk2/k;->m:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lk2/k;->H(I)Lk2/b0;

    move-result-object p0

    return-object p0

    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_23
    :goto_23
    return-object p0
.end method

.method public final F()Lk2/b0;
    .registers 12

    new-instance v0, Lk2/k;

    iget-object v1, p0, Lk2/k;->o:Lk2/t;

    invoke-virtual {v1}, Lk2/t;->l()I

    move-result v2

    iget v3, p0, Lk2/k;->m:I

    iget-object p0, p0, Lk2/k;->n:[I

    if-nez v2, :cond_f

    goto :goto_3b

    :cond_f
    shl-int/lit8 v2, v2, 0x1

    new-array v4, v2, [J

    const/4 v5, 0x0

    :goto_14
    if-ge v5, v2, :cond_32

    iget-object v6, v1, Lk2/t;->c:[J

    ushr-int/lit8 v7, v5, 0x1

    aget-wide v6, v6, v7

    add-int/lit8 v8, v5, 0x1

    long-to-int v9, v6

    invoke-static {v9}, Lk2/t;->m(I)J

    move-result-wide v9

    aput-wide v9, v4, v5

    add-int/lit8 v5, v5, 0x2

    const/16 v9, 0x20

    ushr-long/2addr v6, v9

    long-to-int v6, v6

    invoke-static {v6}, Lk2/t;->m(I)J

    move-result-wide v6

    aput-wide v6, v4, v8

    goto :goto_14

    :cond_32
    new-instance v1, Lk2/t;

    invoke-static {v4, v2, v3, p0}, Lk2/t;->q([JII[I)I

    move-result v2

    invoke-direct {v1, v4, v2}, Lk2/t;-><init>([JI)V

    :goto_3b
    invoke-direct {v0, v3, p0, v1}, Lk2/k;-><init>(I[ILk2/t;)V

    return-object v0
.end method

.method public final G(Lk2/b0;Lk2/b0;)Lk2/b0;
    .registers 13

    check-cast p1, Lk2/k;

    iget-object p1, p1, Lk2/k;->o:Lk2/t;

    check-cast p2, Lk2/k;

    iget-object p2, p2, Lk2/k;->o:Lk2/t;

    iget-object v0, p0, Lk2/k;->o:Lk2/t;

    invoke-virtual {v0}, Lk2/t;->l()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_13

    move-object v4, v0

    goto :goto_3b

    :cond_13
    shl-int/lit8 v1, v1, 0x1

    new-array v3, v1, [J

    move v4, v2

    :goto_18
    if-ge v4, v1, :cond_36

    iget-object v5, v0, Lk2/t;->c:[J

    ushr-int/lit8 v6, v4, 0x1

    aget-wide v5, v5, v6

    add-int/lit8 v7, v4, 0x1

    long-to-int v8, v5

    invoke-static {v8}, Lk2/t;->m(I)J

    move-result-wide v8

    aput-wide v8, v3, v4

    add-int/lit8 v4, v4, 0x2

    const/16 v8, 0x20

    ushr-long/2addr v5, v8

    long-to-int v5, v5

    invoke-static {v5}, Lk2/t;->m(I)J

    move-result-wide v5

    aput-wide v5, v3, v7

    goto :goto_18

    :cond_36
    new-instance v4, Lk2/t;

    invoke-direct {v4, v3, v1}, Lk2/t;-><init>([JI)V

    :goto_3b
    invoke-virtual {p1, p2}, Lk2/t;->o(Lk2/t;)Lk2/t;

    move-result-object p1

    if-ne v4, v0, :cond_48

    invoke-virtual {v4}, Lk2/t;->clone()Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Lk2/t;

    :cond_48
    invoke-virtual {v4, p1}, Lk2/t;->d(Lk2/t;)V

    iget-object p1, v4, Lk2/t;->c:[J

    array-length p2, p1

    iget v0, p0, Lk2/k;->m:I

    iget-object p0, p0, Lk2/k;->n:[I

    invoke-static {p1, p2, v0, p0}, Lk2/t;->q([JII[I)I

    move-result p2

    array-length v1, p1

    if-ge p2, v1, :cond_60

    new-array v1, p2, [J

    iput-object v1, v4, Lk2/t;->c:[J

    invoke-static {p1, v2, v1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_60
    new-instance p1, Lk2/k;

    invoke-direct {p1, v0, p0, v4}, Lk2/k;-><init>(I[ILk2/t;)V

    return-object p1
.end method

.method public final H(I)Lk2/b0;
    .registers 13

    const/4 v0, 0x1

    if-ge p1, v0, :cond_4

    return-object p0

    :cond_4
    new-instance v1, Lk2/k;

    iget-object v2, p0, Lk2/k;->o:Lk2/t;

    invoke-virtual {v2}, Lk2/t;->l()I

    move-result v3

    iget v4, p0, Lk2/k;->m:I

    iget-object p0, p0, Lk2/k;->n:[I

    if-nez v3, :cond_13

    goto :goto_4e

    :cond_13
    add-int/lit8 v5, v4, 0x3f

    ushr-int/lit8 v5, v5, 0x6

    shl-int/lit8 v0, v5, 0x1

    new-array v5, v0, [J

    iget-object v2, v2, Lk2/t;->c:[J

    const/4 v6, 0x0

    invoke-static {v2, v6, v5, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_21
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_49

    shl-int/lit8 v2, v3, 0x1

    :goto_27
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_44

    aget-wide v6, v5, v3

    add-int/lit8 v8, v2, -0x1

    const/16 v9, 0x20

    ushr-long v9, v6, v9

    long-to-int v9, v9

    invoke-static {v9}, Lk2/t;->m(I)J

    move-result-wide v9

    aput-wide v9, v5, v8

    add-int/lit8 v2, v2, -0x2

    long-to-int v6, v6

    invoke-static {v6}, Lk2/t;->m(I)J

    move-result-wide v6

    aput-wide v6, v5, v2

    goto :goto_27

    :cond_44
    invoke-static {v5, v0, v4, p0}, Lk2/t;->q([JII[I)I

    move-result v3

    goto :goto_21

    :cond_49
    new-instance v2, Lk2/t;

    invoke-direct {v2, v5, v3}, Lk2/t;-><init>([JI)V

    :goto_4e
    invoke-direct {v1, v4, p0, v2}, Lk2/k;-><init>(I[ILk2/t;)V

    return-object v1
.end method

.method public final K()Z
    .registers 7

    iget-object p0, p0, Lk2/k;->o:Lk2/t;

    iget-object p0, p0, Lk2/t;->c:[J

    array-length v0, p0

    const/4 v1, 0x0

    if-lez v0, :cond_15

    aget-wide v2, p0, v1

    const-wide/16 v4, 0x1

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-eqz p0, :cond_15

    const/4 p0, 0x1

    return p0

    :cond_15
    return v1
.end method

.method public final L()Ljava/math/BigInteger;
    .registers 15

    iget-object p0, p0, Lk2/k;->o:Lk2/t;

    invoke-virtual {p0}, Lk2/t;->l()I

    move-result v0

    if-nez v0, :cond_b

    sget-object p0, Lk2/a;->a:Ljava/math/BigInteger;

    return-object p0

    :cond_b
    iget-object v1, p0, Lk2/t;->c:[J

    add-int/lit8 v2, v0, -0x1

    aget-wide v3, v1, v2

    const/16 v1, 0x8

    new-array v5, v1, [B

    const/4 v6, 0x7

    const/4 v7, 0x0

    move v8, v6

    move v9, v7

    move v10, v9

    :goto_1a
    const/4 v11, 0x1

    if-ltz v8, :cond_30

    mul-int/lit8 v12, v8, 0x8

    ushr-long v12, v3, v12

    long-to-int v12, v12

    int-to-byte v12, v12

    if-nez v10, :cond_27

    if-eqz v12, :cond_2d

    :cond_27
    add-int/lit8 v10, v9, 0x1

    aput-byte v12, v5, v9

    move v9, v10

    move v10, v11

    :cond_2d
    add-int/lit8 v8, v8, -0x1

    goto :goto_1a

    :cond_30
    mul-int/2addr v2, v1

    add-int/2addr v2, v9

    new-array v1, v2, [B

    :goto_34
    if-ge v7, v9, :cond_3d

    aget-byte v2, v5, v7

    aput-byte v2, v1, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_34

    :cond_3d
    add-int/lit8 v0, v0, -0x2

    :goto_3f
    if-ltz v0, :cond_59

    iget-object v2, p0, Lk2/t;->c:[J

    aget-wide v2, v2, v0

    move v4, v6

    :goto_46
    if-ltz v4, :cond_56

    add-int/lit8 v5, v9, 0x1

    mul-int/lit8 v7, v4, 0x8

    ushr-long v7, v2, v7

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, v1, v9

    add-int/lit8 v4, v4, -0x1

    move v9, v5

    goto :goto_46

    :cond_56
    add-int/lit8 v0, v0, -0x1

    goto :goto_3f

    :cond_59
    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, v11, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object p0
.end method

.method public final a(Lk2/b0;)Lk2/b0;
    .registers 4

    iget-object v0, p0, Lk2/k;->o:Lk2/t;

    invoke-virtual {v0}, Lk2/t;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk2/t;

    check-cast p1, Lk2/k;

    iget-object p1, p1, Lk2/k;->o:Lk2/t;

    invoke-virtual {v0, p1}, Lk2/t;->d(Lk2/t;)V

    new-instance p1, Lk2/k;

    iget v1, p0, Lk2/k;->m:I

    iget-object p0, p0, Lk2/k;->n:[I

    invoke-direct {p1, v1, p0, v0}, Lk2/k;-><init>(I[ILk2/t;)V

    return-object p1
.end method

.method public final b()Lk2/b0;
    .registers 9

    new-instance v0, Lk2/k;

    iget-object v1, p0, Lk2/k;->o:Lk2/t;

    iget-object v2, v1, Lk2/t;->c:[J

    array-length v2, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-wide/16 v5, 0x1

    if-nez v2, :cond_17

    new-instance v1, Lk2/t;

    new-array v2, v3, [J

    aput-wide v5, v2, v4

    invoke-direct {v1, v2}, Lk2/t;-><init>([J)V

    goto :goto_35

    :cond_17
    invoke-virtual {v1}, Lk2/t;->l()I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-array v3, v2, [J

    iget-object v1, v1, Lk2/t;->c:[J

    array-length v7, v1

    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-wide v1, v3, v4

    xor-long/2addr v1, v5

    aput-wide v1, v3, v4

    new-instance v1, Lk2/t;

    invoke-direct {v1, v3}, Lk2/t;-><init>([J)V

    :goto_35
    iget v2, p0, Lk2/k;->m:I

    iget-object p0, p0, Lk2/k;->n:[I

    invoke-direct {v0, v2, p0, v1}, Lk2/k;-><init>(I[ILk2/t;)V

    return-object v0
.end method

.method public final c()I
    .registers 1

    iget-object p0, p0, Lk2/k;->o:Lk2/t;

    invoke-virtual {p0}, Lk2/t;->g()I

    move-result p0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lk2/k;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lk2/k;

    iget v1, p0, Lk2/k;->m:I

    iget v3, p1, Lk2/k;->m:I

    if-ne v1, v3, :cond_2d

    iget v1, p0, Lk2/k;->l:I

    iget v3, p1, Lk2/k;->l:I

    if-ne v1, v3, :cond_2d

    iget-object v1, p0, Lk2/k;->n:[I

    iget-object v3, p1, Lk2/k;->n:[I

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-object p0, p0, Lk2/k;->o:Lk2/t;

    iget-object p1, p1, Lk2/k;->o:Lk2/t;

    invoke-virtual {p0, p1}, Lk2/t;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2d

    return v0

    :cond_2d
    return v2
.end method

.method public final f(Lk2/b0;)Lk2/b0;
    .registers 2

    invoke-virtual {p1}, Lk2/b0;->q()Lk2/b0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lk2/k;->x(Lk2/b0;)Lk2/b0;

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .registers 5

    iget-object v0, p0, Lk2/k;->o:Lk2/t;

    invoke-virtual {v0}, Lk2/t;->hashCode()I

    move-result v0

    iget v1, p0, Lk2/k;->m:I

    xor-int/2addr v0, v1

    iget-object p0, p0, Lk2/k;->n:[I

    array-length v1, p0

    add-int/lit8 v2, v1, 0x1

    :goto_e
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_18

    mul-int/lit16 v2, v2, 0x101

    aget v3, p0, v1

    xor-int/2addr v2, v3

    goto :goto_e

    :cond_18
    xor-int p0, v0, v2

    return p0
.end method

.method public final k()I
    .registers 1

    iget p0, p0, Lk2/k;->m:I

    return p0
.end method

.method public final q()Lk2/b0;
    .registers 15

    new-instance v0, Lk2/k;

    iget-object v1, p0, Lk2/k;->o:Lk2/t;

    invoke-virtual {v1}, Lk2/t;->g()I

    move-result v2

    if-eqz v2, :cond_a3

    iget v3, p0, Lk2/k;->m:I

    iget-object p0, p0, Lk2/k;->n:[I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_12

    goto :goto_84

    :cond_12
    invoke-virtual {v1}, Lk2/t;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk2/t;

    add-int/lit8 v5, v3, 0x3f

    ushr-int/lit8 v5, v5, 0x6

    new-instance v6, Lk2/t;

    invoke-direct {v6, v5}, Lk2/t;-><init>(I)V

    iget-object v7, v6, Lk2/t;->c:[J

    invoke-static {v7, v3}, Lk2/t;->i([JI)V

    array-length v8, p0

    :goto_27
    add-int/lit8 v8, v8, -0x1

    if-ltz v8, :cond_31

    aget v9, p0, v8

    invoke-static {v7, v9}, Lk2/t;->i([JI)V

    goto :goto_27

    :cond_31
    const/4 v8, 0x0

    invoke-static {v7, v8}, Lk2/t;->i([JI)V

    new-instance v7, Lk2/t;

    invoke-direct {v7, v5}, Lk2/t;-><init>(I)V

    iget-object v9, v7, Lk2/t;->c:[J

    const-wide/16 v10, 0x1

    aput-wide v10, v9, v8

    new-instance v9, Lk2/t;

    invoke-direct {v9, v5}, Lk2/t;-><init>(I)V

    const/4 v5, 0x2

    new-array v10, v5, [I

    aput v2, v10, v8

    add-int/lit8 v2, v3, 0x1

    aput v2, v10, v4

    filled-new-array {v1, v6}, [Lk2/t;

    move-result-object v1

    new-array v2, v5, [I

    aput v4, v2, v8

    aput v8, v2, v4

    filled-new-array {v7, v9}, [Lk2/t;

    move-result-object v5

    aget v6, v10, v4

    aget v7, v10, v8

    sub-int v7, v6, v7

    :goto_62
    if-gez v7, :cond_6f

    neg-int v7, v7

    aput v6, v10, v4

    aput v8, v2, v4

    rsub-int/lit8 v4, v4, 0x1

    aget v6, v10, v4

    aget v8, v2, v4

    :cond_6f
    aget-object v9, v1, v4

    rsub-int/lit8 v11, v4, 0x1

    aget-object v12, v1, v11

    aget v13, v10, v11

    invoke-virtual {v9, v12, v13, v7}, Lk2/t;->c(Lk2/t;II)V

    aget-object v9, v1, v4

    invoke-virtual {v9, v6}, Lk2/t;->h(I)I

    move-result v9

    if-nez v9, :cond_88

    aget-object v1, v5, v11

    :goto_84
    invoke-direct {v0, v3, p0, v1}, Lk2/k;-><init>(I[ILk2/t;)V

    return-object v0

    :cond_88
    aget v12, v2, v11

    aget-object v13, v5, v4

    aget-object v11, v5, v11

    invoke-virtual {v13, v11, v12, v7}, Lk2/t;->c(Lk2/t;II)V

    add-int/2addr v12, v7

    if-le v12, v8, :cond_96

    move v8, v12

    goto :goto_9e

    :cond_96
    if-ne v12, v8, :cond_9e

    aget-object v11, v5, v4

    invoke-virtual {v11, v8}, Lk2/t;->h(I)I

    move-result v8

    :cond_9e
    :goto_9e
    sub-int v6, v9, v6

    add-int/2addr v7, v6

    move v6, v9

    goto :goto_62

    :cond_a3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public final s()Z
    .registers 1

    iget-object p0, p0, Lk2/k;->o:Lk2/t;

    invoke-virtual {p0}, Lk2/t;->n()Z

    move-result p0

    return p0
.end method

.method public final t()Z
    .registers 7

    iget-object p0, p0, Lk2/k;->o:Lk2/t;

    iget-object p0, p0, Lk2/t;->c:[J

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_15

    aget-wide v2, p0, v1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_12

    return v0

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_15
    const/4 p0, 0x1

    return p0
.end method

.method public final x(Lk2/b0;)Lk2/b0;
    .registers 28

    move-object/from16 v0, p0

    new-instance v1, Lk2/k;

    move-object/from16 v2, p1

    check-cast v2, Lk2/k;

    iget-object v2, v2, Lk2/k;->o:Lk2/t;

    iget-object v3, v0, Lk2/k;->o:Lk2/t;

    invoke-virtual {v3}, Lk2/t;->g()I

    move-result v4

    iget v5, v0, Lk2/k;->m:I

    iget-object v0, v0, Lk2/k;->n:[I

    if-nez v4, :cond_1a

    :goto_16
    move-object v2, v3

    :goto_17
    move v15, v5

    goto/16 :goto_11a

    :cond_1a
    invoke-virtual {v2}, Lk2/t;->g()I

    move-result v6

    if-nez v6, :cond_21

    :goto_20
    goto :goto_17

    :cond_21
    if-le v4, v6, :cond_2d

    move-object/from16 v25, v3

    move-object v3, v2

    move-object/from16 v2, v25

    move/from16 v25, v6

    move v6, v4

    move/from16 v4, v25

    :cond_2d
    add-int/lit8 v7, v4, 0x3f

    ushr-int/lit8 v7, v7, 0x6

    add-int/lit8 v8, v6, 0x3f

    ushr-int/lit8 v8, v8, 0x6

    add-int/2addr v4, v6

    add-int/lit8 v4, v4, 0x3e

    ushr-int/lit8 v13, v4, 0x6

    const/4 v4, 0x0

    const/4 v9, 0x1

    if-ne v7, v9, :cond_5a

    iget-object v3, v3, Lk2/t;->c:[J

    aget-wide v3, v3, v4

    const-wide/16 v6, 0x1

    cmp-long v6, v3, v6

    if-nez v6, :cond_49

    goto :goto_20

    :cond_49
    new-array v6, v13, [J

    iget-object v2, v2, Lk2/t;->c:[J

    invoke-static {v3, v4, v2, v8, v6}, Lk2/t;->p(J[JI[J)V

    invoke-static {v6, v13, v5, v0}, Lk2/t;->q([JII[I)I

    move-result v2

    new-instance v3, Lk2/t;

    invoke-direct {v3, v6, v2}, Lk2/t;-><init>([JI)V

    goto :goto_16

    :cond_5a
    add-int/lit8 v6, v6, 0x46

    ushr-int/lit8 v6, v6, 0x6

    const/16 v10, 0x10

    new-array v11, v10, [I

    shl-int/lit8 v12, v6, 0x4

    new-array v14, v12, [J

    aput v6, v11, v9

    iget-object v2, v2, Lk2/t;->c:[J

    invoke-static {v2, v4, v14, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x2

    move v8, v6

    :goto_6f
    if-ge v2, v10, :cond_a0

    add-int v17, v8, v6

    aput v17, v11, v2

    and-int/lit8 v8, v2, 0x1

    if-nez v8, :cond_85

    ushr-int/lit8 v15, v17, 0x1

    const/16 v19, 0x1

    move-object/from16 v16, v14

    move/from16 v18, v6

    invoke-static/range {v14 .. v19}, Lk2/t;->r([JI[JIII)V

    goto :goto_9b

    :cond_85
    sub-int v8, v17, v6

    move v9, v4

    :goto_88
    if-ge v9, v6, :cond_9b

    add-int v15, v17, v9

    add-int v16, v6, v9

    aget-wide v18, v14, v16

    add-int v16, v8, v9

    aget-wide v20, v14, v16

    xor-long v18, v18, v20

    aput-wide v18, v14, v15

    add-int/lit8 v9, v9, 0x1

    goto :goto_88

    :cond_9b
    :goto_9b
    add-int/lit8 v2, v2, 0x1

    move/from16 v8, v17

    goto :goto_6f

    :cond_a0
    new-array v2, v12, [J

    const/16 v17, 0x0

    const/16 v19, 0x4

    const/4 v15, 0x0

    move-object/from16 v16, v2

    move/from16 v18, v12

    invoke-static/range {v14 .. v19}, Lk2/t;->r([JI[JIII)V

    iget-object v2, v3, Lk2/t;->c:[J

    shl-int/lit8 v3, v13, 0x3

    new-array v9, v3, [J

    move v8, v4

    :goto_b5
    if-ge v8, v7, :cond_ff

    aget-wide v17, v2, v8

    move v15, v5

    move v10, v8

    move-wide/from16 v4, v17

    :goto_bd
    long-to-int v12, v4

    and-int/lit8 v12, v12, 0xf

    const/16 v17, 0x4

    move-object/from16 v18, v2

    move/from16 p1, v3

    ushr-long v2, v4, v17

    long-to-int v2, v2

    and-int/lit8 v2, v2, 0xf

    aget v3, v11, v12

    aget v2, v11, v2

    const/4 v12, 0x0

    :goto_d0
    if-ge v12, v6, :cond_e7

    add-int v17, v10, v12

    aget-wide v19, v9, v17

    add-int v21, v3, v12

    aget-wide v21, v14, v21

    add-int v23, v2, v12

    aget-wide v23, v16, v23

    xor-long v21, v21, v23

    xor-long v19, v19, v21

    aput-wide v19, v9, v17

    add-int/lit8 v12, v12, 0x1

    goto :goto_d0

    :cond_e7
    const/16 v2, 0x8

    ushr-long/2addr v4, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-nez v2, :cond_f9

    add-int/lit8 v8, v8, 0x1

    move/from16 v3, p1

    move v5, v15

    move-object/from16 v2, v18

    const/4 v4, 0x0

    goto :goto_b5

    :cond_f9
    add-int/2addr v10, v13

    move/from16 v3, p1

    move-object/from16 v2, v18

    goto :goto_bd

    :cond_ff
    move/from16 p1, v3

    move v15, v5

    :goto_102
    sub-int v12, v3, v13

    if-eqz v12, :cond_110

    sub-int v10, v12, v13

    const/16 v14, 0x8

    move-object v11, v9

    invoke-static/range {v9 .. v14}, Lk2/t;->e([JI[JIII)J

    move v3, v12

    goto :goto_102

    :cond_110
    invoke-static {v9, v13, v15, v0}, Lk2/t;->q([JII[I)I

    move-result v2

    new-instance v3, Lk2/t;

    invoke-direct {v3, v9, v2}, Lk2/t;-><init>([JI)V

    move-object v2, v3

    :goto_11a
    invoke-direct {v1, v15, v0, v2}, Lk2/k;-><init>(I[ILk2/t;)V

    return-object v1
.end method

.method public final y(Lk2/b0;Lk2/b0;Lk2/b0;)Lk2/b0;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lk2/k;->z(Lk2/b0;Lk2/b0;Lk2/b0;)Lk2/b0;

    move-result-object p0

    return-object p0
.end method

.method public final z(Lk2/b0;Lk2/b0;Lk2/b0;)Lk2/b0;
    .registers 7

    check-cast p1, Lk2/k;

    iget-object p1, p1, Lk2/k;->o:Lk2/t;

    check-cast p2, Lk2/k;

    iget-object p2, p2, Lk2/k;->o:Lk2/t;

    check-cast p3, Lk2/k;

    iget-object p3, p3, Lk2/k;->o:Lk2/t;

    iget-object v0, p0, Lk2/k;->o:Lk2/t;

    invoke-virtual {v0, p1}, Lk2/t;->o(Lk2/t;)Lk2/t;

    move-result-object v1

    invoke-virtual {p2, p3}, Lk2/t;->o(Lk2/t;)Lk2/t;

    move-result-object p2

    if-eq v1, v0, :cond_1a

    if-ne v1, p1, :cond_21

    :cond_1a
    invoke-virtual {v1}, Lk2/t;->clone()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lk2/t;

    :cond_21
    invoke-virtual {v1, p2}, Lk2/t;->d(Lk2/t;)V

    iget-object p1, v1, Lk2/t;->c:[J

    array-length p2, p1

    iget p3, p0, Lk2/k;->m:I

    iget-object p0, p0, Lk2/k;->n:[I

    invoke-static {p1, p2, p3, p0}, Lk2/t;->q([JII[I)I

    move-result p2

    array-length v0, p1

    if-ge p2, v0, :cond_3a

    new-array v0, p2, [J

    iput-object v0, v1, Lk2/t;->c:[J

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3a
    new-instance p1, Lk2/k;

    invoke-direct {p1, p3, p0, v1}, Lk2/k;-><init>(I[ILk2/t;)V

    return-object p1
.end method
