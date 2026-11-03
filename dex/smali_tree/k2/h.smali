.class public abstract Lk2/h;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lr2/a;

.field public b:Lk2/b0;

.field public c:Lk2/b0;

.field public d:Ljava/math/BigInteger;

.field public e:Ljava/math/BigInteger;

.field public f:I

.field public g:Lo2/b;

.field public h:Lk2/b0;


# direct methods
.method public constructor <init>(Lr2/a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lk2/h;->f:I

    const/4 v0, 0x0

    iput-object v0, p0, Lk2/h;->g:Lo2/b;

    iput-object v0, p0, Lk2/h;->h:Lk2/b0;

    iput-object p1, p0, Lk2/h;->a:Lr2/a;

    return-void
.end method


# virtual methods
.method public abstract a()Lk2/h;
.end method

.method public b([Lk2/p;I)Lk2/b0;
    .registers 15

    invoke-virtual {p0}, Lk2/h;->k()I

    move-result v0

    mul-int v1, p2, v0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_d
    if-ge v3, p2, :cond_7c

    aget-object v5, p1, v3

    iget-object v6, v5, Lk2/p;->b:Lk2/b0;

    invoke-virtual {v6}, Lk2/b0;->L()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v6}, Lk2/b0;->j()I

    move-result v6

    sget-object v8, Lm4/a;->a:Ljava/math/BigInteger;

    invoke-virtual {v7}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v7

    array-length v8, v7

    const-string v9, "standard length exceeded for value"

    const/4 v10, 0x1

    if-ne v8, v6, :cond_2b

    invoke-static {v7, v2, v1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_41

    :cond_2b
    aget-byte v8, v7, v2

    if-nez v8, :cond_34

    array-length v8, v7

    if-eq v8, v10, :cond_34

    move v8, v10

    goto :goto_35

    :cond_34
    move v8, v2

    :goto_35
    array-length v11, v7

    sub-int/2addr v11, v8

    if-gt v11, v6, :cond_76

    sub-int/2addr v6, v11

    add-int/2addr v6, v4

    invoke-static {v1, v4, v6, v2}, Ljava/util/Arrays;->fill([BIIB)V

    invoke-static {v7, v8, v1, v6, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_41
    add-int/2addr v4, v0

    iget-object v5, v5, Lk2/p;->c:Lk2/b0;

    invoke-virtual {v5}, Lk2/b0;->L()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5}, Lk2/b0;->j()I

    move-result v5

    invoke-virtual {v6}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v6

    array-length v7, v6

    if-ne v7, v5, :cond_57

    invoke-static {v6, v2, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_6c

    :cond_57
    aget-byte v7, v6, v2

    if-nez v7, :cond_5f

    array-length v7, v6

    if-eq v7, v10, :cond_5f

    goto :goto_60

    :cond_5f
    move v10, v2

    :goto_60
    array-length v7, v6

    sub-int/2addr v7, v10

    if-gt v7, v5, :cond_70

    sub-int/2addr v5, v7

    add-int/2addr v5, v4

    invoke-static {v1, v4, v5, v2}, Ljava/util/Arrays;->fill([BIIB)V

    invoke-static {v6, v10, v1, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_6c
    add-int/2addr v4, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_70
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_76
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7c
    new-instance p1, Lk2/b;

    invoke-direct {p1, p0, p2, v0, v1}, Lk2/b;-><init>(Lk2/h;II[B)V

    return-object p1
.end method

.method public c()Lk2/b0;
    .registers 3

    iget-object v0, p0, Lk2/h;->g:Lo2/b;

    instance-of v1, v0, Lo2/b;

    if-eqz v1, :cond_c

    new-instance v1, Lk2/s;

    invoke-direct {v1, p0, v0}, Lk2/s;-><init>(Lk2/h;Lo2/b;)V

    return-object v1

    :cond_c
    new-instance p0, Lk2/q;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lk2/q;-><init>(I)V

    return-object p0
.end method

.method public d(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lk2/p;
    .registers 3

    invoke-virtual {p0, p1}, Lk2/h;->j(Ljava/math/BigInteger;)Lk2/b0;

    move-result-object p1

    invoke-virtual {p0, p2}, Lk2/h;->j(Ljava/math/BigInteger;)Lk2/b0;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lk2/h;->e(Lk2/b0;Lk2/b0;)Lk2/p;

    move-result-object p0

    return-object p0
.end method

.method public abstract e(Lk2/b0;Lk2/b0;)Lk2/p;
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    if-eq p0, p1, :cond_11

    instance-of v0, p1, Lk2/h;

    if-eqz v0, :cond_f

    check-cast p1, Lk2/h;

    invoke-virtual {p0, p1}, Lk2/h;->i(Lk2/h;)Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    return p0

    :cond_11
    :goto_11
    const/4 p0, 0x1

    return p0
.end method

.method public abstract f(Lk2/b0;Lk2/b0;[Lk2/b0;)Lk2/p;
.end method

.method public final g([B)Lk2/p;
    .registers 9

    invoke-virtual {p0}, Lk2/h;->k()I

    move-result v0

    const/4 v1, 0x0

    aget-byte v2, p1, v1

    const/4 v3, 0x1

    if-eqz v2, :cond_a5

    const/4 v4, 0x2

    if-eq v2, v4, :cond_7f

    const/4 v4, 0x3

    if-eq v2, v4, :cond_7f

    const/4 v4, 0x4

    if-eq v2, v4, :cond_62

    const/4 v4, 0x6

    const/4 v5, 0x7

    if-eq v2, v4, :cond_34

    if-ne v2, v5, :cond_1a

    goto :goto_34

    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Invalid point encoding 0x"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x10

    invoke-static {v2, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_34
    :goto_34
    array-length v4, p1

    mul-int/lit8 v6, v0, 0x2

    add-int/2addr v6, v3

    if-ne v4, v6, :cond_5a

    invoke-static {p1, v3, v0}, Lm4/a;->f([BII)Ljava/math/BigInteger;

    move-result-object v4

    add-int/lit8 v6, v0, 0x1

    invoke-static {p1, v6, v0}, Lm4/a;->f([BII)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-ne v2, v5, :cond_4b

    move v1, v3

    :cond_4b
    if-ne v0, v1, :cond_52

    invoke-virtual {p0, v4, p1}, Lk2/h;->t(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lk2/p;

    move-result-object p0

    goto :goto_ac

    :cond_52
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Inconsistent Y coordinate in hybrid encoding"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Incorrect length for hybrid encoding"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_62
    array-length v1, p1

    mul-int/lit8 v4, v0, 0x2

    add-int/2addr v4, v3

    if-ne v1, v4, :cond_77

    invoke-static {p1, v3, v0}, Lm4/a;->f([BII)Ljava/math/BigInteger;

    move-result-object v1

    add-int/lit8 v3, v0, 0x1

    invoke-static {p1, v3, v0}, Lm4/a;->f([BII)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lk2/h;->t(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lk2/p;

    move-result-object p0

    goto :goto_ac

    :cond_77
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Incorrect length for uncompressed encoding"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7f
    array-length v1, p1

    add-int/lit8 v4, v0, 0x1

    if-ne v1, v4, :cond_9d

    and-int/lit8 v1, v2, 0x1

    invoke-static {p1, v3, v0}, Lm4/a;->f([BII)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lk2/h;->h(ILjava/math/BigInteger;)Lk2/p;

    move-result-object p0

    invoke-virtual {p0, v3, v3}, Lk2/p;->k(ZZ)Z

    move-result p1

    if-eqz p1, :cond_95

    goto :goto_ac

    :cond_95
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid point"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Incorrect length for compressed encoding"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a5
    array-length p1, p1

    if-ne p1, v3, :cond_be

    invoke-virtual {p0}, Lk2/h;->m()Lk2/p;

    move-result-object p0

    :goto_ac
    if-eqz v2, :cond_bd

    invoke-virtual {p0}, Lk2/p;->l()Z

    move-result p1

    if-nez p1, :cond_b5

    goto :goto_bd

    :cond_b5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid infinity encoding"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_bd
    :goto_bd
    return-object p0

    :cond_be
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Incorrect length for infinity encoding"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract h(ILjava/math/BigInteger;)Lk2/p;
.end method

.method public final hashCode()I
    .registers 4

    iget-object v0, p0, Lk2/h;->a:Lr2/a;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lk2/h;->b:Lk2/b0;

    invoke-virtual {v1}, Lk2/b0;->L()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    const/16 v2, 0x8

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object p0, p0, Lk2/h;->c:Lk2/b0;

    invoke-virtual {p0}, Lk2/b0;->L()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->hashCode()I

    move-result p0

    const/16 v1, 0x10

    invoke-static {p0, v1}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public final i(Lk2/h;)Z
    .registers 4

    if-eq p0, p1, :cond_35

    if-eqz p1, :cond_33

    iget-object v0, p0, Lk2/h;->a:Lr2/a;

    iget-object v1, p1, Lk2/h;->a:Lr2/a;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lk2/h;->b:Lk2/b0;

    invoke-virtual {v0}, Lk2/b0;->L()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p1, Lk2/h;->b:Lk2/b0;

    invoke-virtual {v1}, Lk2/b0;->L()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object p0, p0, Lk2/h;->c:Lk2/b0;

    invoke-virtual {p0}, Lk2/b0;->L()Ljava/math/BigInteger;

    move-result-object p0

    iget-object p1, p1, Lk2/h;->c:Lk2/b0;

    invoke-virtual {p1}, Lk2/b0;->L()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_33

    goto :goto_35

    :cond_33
    const/4 p0, 0x0

    return p0

    :cond_35
    :goto_35
    const/4 p0, 0x1

    return p0
.end method

.method public abstract j(Ljava/math/BigInteger;)Lk2/b0;
.end method

.method public final k()I
    .registers 1

    invoke-virtual {p0}, Lk2/h;->l()I

    move-result p0

    add-int/lit8 p0, p0, 0x7

    div-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public abstract l()I
.end method

.method public abstract m()Lk2/p;
.end method

.method public n(Lk2/p;)Lk2/p;
    .registers 3

    iget-object v0, p1, Lk2/p;->a:Lk2/h;

    if-ne p0, v0, :cond_5

    return-object p1

    :cond_5
    invoke-virtual {p1}, Lk2/p;->l()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lk2/h;->m()Lk2/p;

    move-result-object p0

    return-object p0

    :cond_10
    invoke-virtual {p1}, Lk2/p;->p()Lk2/p;

    move-result-object p1

    iget-object v0, p1, Lk2/p;->b:Lk2/b0;

    invoke-virtual {v0}, Lk2/b0;->L()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lk2/p;->i()Lk2/b0;

    move-result-object p1

    invoke-virtual {p1}, Lk2/b0;->L()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lk2/h;->d(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lk2/p;

    move-result-object p0

    return-object p0
.end method

.method public abstract o(Ljava/math/BigInteger;)Z
.end method

.method public final p([Lk2/p;IILk2/b0;)V
    .registers 12

    if-ltz p2, :cond_a9

    if-ltz p3, :cond_a9

    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_a9

    const/4 v0, 0x0

    move v1, v0

    :goto_a
    if-ge v1, p3, :cond_22

    add-int v2, p2, v1

    aget-object v2, p1, v2

    if-eqz v2, :cond_1f

    iget-object v2, v2, Lk2/p;->a:Lk2/h;

    if-ne p0, v2, :cond_17

    goto :goto_1f

    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'points\' entries must be null or on this curve"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1f
    :goto_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_22
    iget p0, p0, Lk2/h;->f:I

    if-eqz p0, :cond_9e

    const/4 v1, 0x5

    if-eq p0, v1, :cond_9e

    new-array p0, p3, [Lk2/b0;

    new-array v1, p3, [I

    move v2, v0

    move v3, v2

    :goto_2f
    if-ge v2, p3, :cond_4d

    add-int v4, p2, v2

    aget-object v5, p1, v4

    if-eqz v5, :cond_4a

    if-nez p4, :cond_3f

    invoke-virtual {v5}, Lk2/p;->m()Z

    move-result v6

    if-nez v6, :cond_4a

    :cond_3f
    invoke-virtual {v5}, Lk2/p;->j()Lk2/b0;

    move-result-object v5

    aput-object v5, p0, v3

    add-int/lit8 v5, v3, 0x1

    aput v4, v1, v3

    move v3, v5

    :cond_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    :cond_4d
    if-nez v3, :cond_50

    goto :goto_a0

    :cond_50
    new-array p2, v3, [Lk2/b0;

    aget-object p3, p0, v0

    aput-object p3, p2, v0

    move p3, v0

    :goto_57
    add-int/lit8 v2, p3, 0x1

    if-ge v2, v3, :cond_67

    aget-object p3, p2, p3

    aget-object v4, p0, v2

    invoke-virtual {p3, v4}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object p3

    aput-object p3, p2, v2

    move p3, v2

    goto :goto_57

    :cond_67
    if-eqz p4, :cond_71

    aget-object v2, p2, p3

    invoke-virtual {v2, p4}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object p4

    aput-object p4, p2, p3

    :cond_71
    aget-object p4, p2, p3

    invoke-virtual {p4}, Lk2/b0;->q()Lk2/b0;

    move-result-object p4

    :goto_77
    if-lez p3, :cond_8b

    add-int/lit8 v2, p3, -0x1

    aget-object v4, p0, p3

    aget-object v5, p2, v2

    invoke-virtual {v5, p4}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object v5

    aput-object v5, p0, p3

    invoke-virtual {p4, v4}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object p4

    move p3, v2

    goto :goto_77

    :cond_8b
    aput-object p4, p0, v0

    :goto_8d
    if-ge v0, v3, :cond_a0

    aget p2, v1, v0

    aget-object p3, p1, p2

    aget-object p4, p0, v0

    invoke-virtual {p3, p4}, Lk2/p;->q(Lk2/b0;)Lk2/p;

    move-result-object p3

    aput-object p3, p1, p2

    add-int/lit8 v0, v0, 0x1

    goto :goto_8d

    :cond_9e
    if-nez p4, :cond_a1

    :cond_a0
    :goto_a0
    return-void

    :cond_a1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'iso\' not valid for affine coordinates"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid range specified for \'points\'"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final q(Lk2/p;Ljava/lang/String;Lk2/u;)Lk2/v;
    .registers 5

    if-eqz p1, :cond_30

    iget-object v0, p1, Lk2/p;->a:Lk2/h;

    if-ne p0, v0, :cond_30

    monitor-enter p1

    :try_start_7
    iget-object p0, p1, Lk2/p;->e:Ljava/util/Hashtable;

    if-nez p0, :cond_16

    new-instance p0, Ljava/util/Hashtable;

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Ljava/util/Hashtable;-><init>(I)V

    iput-object p0, p1, Lk2/p;->e:Ljava/util/Hashtable;

    goto :goto_16

    :catchall_14
    move-exception p0

    goto :goto_2e

    :cond_16
    :goto_16
    monitor-exit p1
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_14

    monitor-enter p0

    :try_start_18
    invoke-virtual {p0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lk2/v;

    invoke-interface {p3, p1}, Lk2/u;->a(Lk2/v;)Lk2/v;

    move-result-object p3

    if-eq p3, p1, :cond_2a

    invoke-virtual {p0, p2, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a

    :catchall_28
    move-exception p1

    goto :goto_2c

    :cond_2a
    :goto_2a
    monitor-exit p0

    return-object p3

    :goto_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_18 .. :try_end_2d} :catchall_28

    throw p1

    :goto_2e
    :try_start_2e
    monitor-exit p1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_14

    throw p0

    :cond_30
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'point\' must be non-null and on this curve"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract r(Ljava/security/SecureRandom;)Lk2/b0;
.end method

.method public abstract s(I)Z
.end method

.method public final t(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lk2/p;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lk2/h;->d(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lk2/p;

    move-result-object p0

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lk2/p;->k(ZZ)Z

    move-result p1

    if-eqz p1, :cond_d

    return-object p0

    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid point coordinates"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
