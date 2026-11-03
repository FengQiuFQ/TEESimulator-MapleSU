.class public final Lk2/f;
.super Lk2/c;


# instance fields
.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:Lk2/n;


# direct methods
.method public constructor <init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 9

    invoke-direct {p0, p1, p2, p3, p4}, Lk2/c;-><init>(IIII)V

    iput p1, p0, Lk2/f;->j:I

    iput p2, p0, Lk2/f;->k:I

    iput p3, p0, Lk2/f;->l:I

    iput p4, p0, Lk2/f;->m:I

    iput-object p7, p0, Lk2/h;->d:Ljava/math/BigInteger;

    iput-object p8, p0, Lk2/h;->e:Ljava/math/BigInteger;

    new-instance p1, Lk2/n;

    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-direct {p1, p0, p2, p2, p3}, Lk2/n;-><init>(Lk2/h;Lk2/b0;Lk2/b0;I)V

    iput-object p1, p0, Lk2/f;->n:Lk2/n;

    invoke-virtual {p0, p5}, Lk2/f;->j(Ljava/math/BigInteger;)Lk2/b0;

    move-result-object p1

    iput-object p1, p0, Lk2/h;->b:Lk2/b0;

    invoke-virtual {p0, p6}, Lk2/f;->j(Ljava/math/BigInteger;)Lk2/b0;

    move-result-object p1

    iput-object p1, p0, Lk2/h;->c:Lk2/b0;

    const/4 p1, 0x6

    iput p1, p0, Lk2/h;->f:I

    return-void
.end method

.method public constructor <init>(IILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 16

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lk2/f;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-void
.end method


# virtual methods
.method public final a()Lk2/h;
    .registers 9

    new-instance v0, Lk2/f;

    iget v1, p0, Lk2/f;->j:I

    iget v2, p0, Lk2/f;->k:I

    iget v3, p0, Lk2/f;->l:I

    iget v4, p0, Lk2/f;->m:I

    iget-object v5, p0, Lk2/h;->b:Lk2/b0;

    iget-object v6, p0, Lk2/h;->c:Lk2/b0;

    iget-object v7, p0, Lk2/h;->d:Ljava/math/BigInteger;

    iget-object p0, p0, Lk2/h;->e:Ljava/math/BigInteger;

    invoke-direct {v0, v1, v2, v3, v4}, Lk2/c;-><init>(IIII)V

    iput v1, v0, Lk2/f;->j:I

    iput v2, v0, Lk2/f;->k:I

    iput v3, v0, Lk2/f;->l:I

    iput v4, v0, Lk2/f;->m:I

    iput-object v7, v0, Lk2/h;->d:Ljava/math/BigInteger;

    iput-object p0, v0, Lk2/h;->e:Ljava/math/BigInteger;

    new-instance p0, Lk2/n;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v1, v2}, Lk2/n;-><init>(Lk2/h;Lk2/b0;Lk2/b0;I)V

    iput-object p0, v0, Lk2/f;->n:Lk2/n;

    iput-object v5, v0, Lk2/h;->b:Lk2/b0;

    iput-object v6, v0, Lk2/h;->c:Lk2/b0;

    const/4 p0, 0x6

    iput p0, v0, Lk2/h;->f:I

    return-object v0
.end method

.method public final b([Lk2/p;I)Lk2/b0;
    .registers 12

    iget v0, p0, Lk2/f;->k:I

    iget v1, p0, Lk2/f;->m:I

    iget v2, p0, Lk2/f;->j:I

    add-int/lit8 v2, v2, 0x3f

    ushr-int/lit8 v6, v2, 0x6

    iget v2, p0, Lk2/f;->l:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_19

    if-nez v1, :cond_19

    new-array v1, v4, [I

    aput v0, v1, v5

    move-object v8, v1

    goto :goto_23

    :cond_19
    const/4 v7, 0x3

    new-array v7, v7, [I

    aput v0, v7, v5

    aput v2, v7, v4

    aput v1, v7, v3

    move-object v8, v7

    :goto_23
    mul-int v0, p2, v6

    mul-int/2addr v0, v3

    new-array v7, v0, [J

    move v0, v5

    move v1, v0

    :goto_2a
    if-ge v0, p2, :cond_4b

    aget-object v2, p1, v0

    iget-object v3, v2, Lk2/p;->b:Lk2/b0;

    check-cast v3, Lk2/k;

    iget-object v3, v3, Lk2/k;->o:Lk2/t;

    iget-object v3, v3, Lk2/t;->c:[J

    array-length v4, v3

    invoke-static {v3, v5, v7, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v6

    iget-object v2, v2, Lk2/p;->c:Lk2/b0;

    check-cast v2, Lk2/k;

    iget-object v2, v2, Lk2/k;->o:Lk2/t;

    iget-object v2, v2, Lk2/t;->c:[J

    array-length v3, v2

    invoke-static {v2, v5, v7, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    :cond_4b
    new-instance v3, Lk2/e;

    move-object v4, p0

    move v5, p2

    invoke-direct/range {v3 .. v8}, Lk2/e;-><init>(Lk2/f;II[J[I)V

    return-object v3
.end method

.method public final c()Lk2/b0;
    .registers 2

    invoke-virtual {p0}, Lk2/c;->u()Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance p0, Lk2/q;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lk2/q;-><init>(I)V

    return-object p0

    :cond_d
    invoke-super {p0}, Lk2/h;->c()Lk2/b0;

    move-result-object p0

    return-object p0
.end method

.method public final e(Lk2/b0;Lk2/b0;)Lk2/p;
    .registers 5

    new-instance v0, Lk2/n;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lk2/n;-><init>(Lk2/h;Lk2/b0;Lk2/b0;I)V

    return-object v0
.end method

.method public final f(Lk2/b0;Lk2/b0;[Lk2/b0;)Lk2/p;
    .registers 10

    new-instance v0, Lk2/n;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lk2/n;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    return-object v0
.end method

.method public final j(Ljava/math/BigInteger;)Lk2/b0;
    .registers 18

    move-object/from16 v0, p0

    iget v1, v0, Lk2/f;->k:I

    if-eqz p1, :cond_ab

    invoke-virtual/range {p1 .. p1}, Ljava/math/BigInteger;->signum()I

    move-result v2

    if-ltz v2, :cond_ab

    invoke-virtual/range {p1 .. p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    iget v3, v0, Lk2/f;->j:I

    if-gt v2, v3, :cond_ab

    iget v2, v0, Lk2/f;->l:I

    iget v0, v0, Lk2/f;->m:I

    or-int v4, v2, v0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v4, :cond_24

    new-array v0, v7, [I

    aput v1, v0, v6

    goto :goto_2e

    :cond_24
    const/4 v4, 0x3

    new-array v4, v4, [I

    aput v1, v4, v6

    aput v2, v4, v7

    aput v0, v4, v5

    move-object v0, v4

    :goto_2e
    new-instance v1, Lk2/k;

    new-instance v2, Lk2/t;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/math/BigInteger;->signum()I

    move-result v4

    if-ltz v4, :cond_a3

    invoke-virtual/range {p1 .. p1}, Ljava/math/BigInteger;->signum()I

    move-result v4

    const-wide/16 v8, 0x0

    if-nez v4, :cond_4a

    new-array v4, v7, [J

    aput-wide v8, v4, v6

    iput-object v4, v2, Lk2/t;->c:[J

    goto :goto_9f

    :cond_4a
    invoke-virtual/range {p1 .. p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    array-length v10, v4

    aget-byte v11, v4, v6

    if-nez v11, :cond_56

    add-int/lit8 v10, v10, -0x1

    goto :goto_57

    :cond_56
    move v7, v6

    :goto_57
    add-int/lit8 v11, v10, 0x7

    const/16 v12, 0x8

    div-int/2addr v11, v12

    new-array v13, v11, [J

    iput-object v13, v2, Lk2/t;->c:[J

    add-int/lit8 v13, v11, -0x1

    rem-int/2addr v10, v12

    add-int/2addr v10, v7

    if-ge v7, v10, :cond_85

    move-wide v14, v8

    :goto_67
    if-ge v7, v10, :cond_7a

    shl-long/2addr v14, v12

    move/from16 p0, v5

    aget-byte v5, v4, v7

    and-int/lit16 v5, v5, 0xff

    move/from16 p1, v7

    int-to-long v6, v5

    or-long/2addr v14, v6

    add-int/lit8 v7, p1, 0x1

    move/from16 v5, p0

    const/4 v6, 0x0

    goto :goto_67

    :cond_7a
    move/from16 p0, v5

    move/from16 p1, v7

    iget-object v5, v2, Lk2/t;->c:[J

    add-int/lit8 v11, v11, -0x2

    aput-wide v14, v5, v13

    move v13, v11

    :cond_85
    :goto_85
    if-ltz v13, :cond_9f

    move-wide v10, v8

    const/4 v5, 0x0

    :goto_89
    if-ge v5, v12, :cond_98

    shl-long/2addr v10, v12

    add-int/lit8 v6, v7, 0x1

    aget-byte v7, v4, v7

    and-int/lit16 v7, v7, 0xff

    int-to-long v14, v7

    or-long/2addr v10, v14

    add-int/lit8 v5, v5, 0x1

    move v7, v6

    goto :goto_89

    :cond_98
    iget-object v5, v2, Lk2/t;->c:[J

    aput-wide v10, v5, v13

    add-int/lit8 v13, v13, -0x1

    goto :goto_85

    :cond_9f
    :goto_9f
    invoke-direct {v1, v3, v0, v2}, Lk2/k;-><init>(I[ILk2/t;)V

    return-object v1

    :cond_a3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid F2m field value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_ab
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "x value invalid in F2m field element"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final l()I
    .registers 1

    iget p0, p0, Lk2/f;->j:I

    return p0
.end method

.method public final m()Lk2/p;
    .registers 1

    iget-object p0, p0, Lk2/f;->n:Lk2/n;

    return-object p0
.end method

.method public final s(I)Z
    .registers 3

    const/4 p0, 0x1

    if-eqz p1, :cond_9

    if-eq p1, p0, :cond_9

    const/4 v0, 0x6

    if-eq p1, v0, :cond_9

    const/4 p0, 0x0

    :cond_9
    return p0
.end method
