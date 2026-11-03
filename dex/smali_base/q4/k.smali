.class public abstract Lq4/k;
.super Ljava/lang/Object;

# interfaces
.implements Lq4/l;


# direct methods
.method public static A(I[I[I)V
    .registers 5

    const/4 v0, 0x0

    aget v0, p1, v0

    aput v0, p2, p0

    add-int/lit8 v0, p0, 0x1

    const/4 v1, 0x1

    aget v1, p1, v1

    aput v1, p2, v0

    add-int/lit8 v0, p0, 0x2

    const/4 v1, 0x2

    aget v1, p1, v1

    aput v1, p2, v0

    add-int/lit8 v0, p0, 0x3

    const/4 v1, 0x3

    aget v1, p1, v1

    aput v1, p2, v0

    add-int/lit8 v0, p0, 0x4

    const/4 v1, 0x4

    aget v1, p1, v1

    aput v1, p2, v0

    const/4 v0, 0x5

    add-int/2addr p0, v0

    aget p1, p1, v0

    aput p1, p2, p0

    return-void
.end method

.method public static A0([I[I[I)I
    .registers 31

    const/4 v0, 0x0

    aget v1, p1, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const/4 v5, 0x1

    aget v5, p1, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/4 v7, 0x2

    aget v7, p1, v7

    int-to-long v7, v7

    and-long/2addr v7, v3

    const/4 v9, 0x3

    aget v9, p1, v9

    int-to-long v9, v9

    and-long/2addr v9, v3

    const/4 v11, 0x4

    aget v11, p1, v11

    int-to-long v11, v11

    and-long/2addr v11, v3

    const/4 v13, 0x5

    aget v13, p1, v13

    int-to-long v13, v13

    and-long/2addr v13, v3

    const-wide/16 v15, 0x0

    move-wide/from16 v17, v3

    move-wide v3, v15

    :goto_28
    const/4 v15, 0x6

    if-ge v0, v15, :cond_c2

    aget v15, p0, v0

    move-wide/from16 v19, v1

    move v2, v0

    int-to-long v0, v15

    and-long v0, v0, v17

    mul-long v15, v0, v19

    move-wide/from16 v21, v0

    aget v0, p2, v2

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long/2addr v0, v15

    long-to-int v15, v0

    aput v15, p2, v2

    const/16 v15, 0x20

    ushr-long/2addr v0, v15

    mul-long v23, v21, v5

    add-int/lit8 v16, v2, 0x1

    move/from16 p1, v15

    aget v15, p2, v16

    move-wide/from16 v25, v0

    int-to-long v0, v15

    and-long v0, v0, v17

    add-long v23, v23, v0

    add-long v0, v23, v25

    long-to-int v15, v0

    aput v15, p2, v16

    ushr-long v0, v0, p1

    mul-long v23, v21, v7

    add-int/lit8 v15, v2, 0x2

    move-wide/from16 v25, v0

    aget v0, p2, v15

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long v23, v23, v0

    add-long v0, v23, v25

    move/from16 v23, v2

    long-to-int v2, v0

    aput v2, p2, v15

    ushr-long v0, v0, p1

    mul-long v24, v21, v9

    add-int/lit8 v2, v23, 0x3

    aget v15, p2, v2

    move-wide/from16 v26, v0

    int-to-long v0, v15

    and-long v0, v0, v17

    add-long v24, v24, v0

    add-long v0, v24, v26

    long-to-int v15, v0

    aput v15, p2, v2

    ushr-long v0, v0, p1

    mul-long v24, v21, v11

    add-int/lit8 v2, v23, 0x4

    aget v15, p2, v2

    move-wide/from16 v26, v0

    int-to-long v0, v15

    and-long v0, v0, v17

    add-long v24, v24, v0

    add-long v0, v24, v26

    long-to-int v15, v0

    aput v15, p2, v2

    ushr-long v0, v0, p1

    mul-long v21, v21, v13

    add-int/lit8 v2, v23, 0x5

    aget v15, p2, v2

    move-wide/from16 v24, v0

    int-to-long v0, v15

    and-long v0, v0, v17

    add-long v21, v21, v0

    add-long v0, v21, v24

    long-to-int v15, v0

    aput v15, p2, v2

    ushr-long v0, v0, p1

    add-int/lit8 v2, v23, 0x6

    aget v15, p2, v2

    move-wide/from16 v21, v0

    int-to-long v0, v15

    and-long v0, v0, v17

    add-long v0, v21, v0

    add-long/2addr v0, v3

    long-to-int v3, v0

    aput v3, p2, v2

    ushr-long v3, v0, p1

    move/from16 v0, v16

    move-wide/from16 v1, v19

    goto/16 :goto_28

    :cond_c2
    long-to-int v0, v3

    return v0
.end method

.method public static B(I[I[I)V
    .registers 5

    const/4 v0, 0x0

    aget v0, p1, v0

    aput v0, p2, p0

    add-int/lit8 v0, p0, 0x1

    const/4 v1, 0x1

    aget v1, p1, v1

    aput v1, p2, v0

    add-int/lit8 v0, p0, 0x2

    const/4 v1, 0x2

    aget v1, p1, v1

    aput v1, p2, v0

    add-int/lit8 v0, p0, 0x3

    const/4 v1, 0x3

    aget v1, p1, v1

    aput v1, p2, v0

    add-int/lit8 v0, p0, 0x4

    const/4 v1, 0x4

    aget v1, p1, v1

    aput v1, p2, v0

    add-int/lit8 v0, p0, 0x5

    const/4 v1, 0x5

    aget v1, p1, v1

    aput v1, p2, v0

    add-int/lit8 v0, p0, 0x6

    const/4 v1, 0x6

    aget v1, p1, v1

    aput v1, p2, v0

    const/4 v0, 0x7

    add-int/2addr p0, v0

    aget p1, p1, v0

    aput p1, p2, p0

    return-void
.end method

.method public static B0([I[I[I)I
    .registers 34

    const/4 v0, 0x0

    aget v1, p1, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const/4 v5, 0x1

    aget v5, p1, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/4 v7, 0x2

    aget v7, p1, v7

    int-to-long v7, v7

    and-long/2addr v7, v3

    const/4 v9, 0x3

    aget v9, p1, v9

    int-to-long v9, v9

    and-long/2addr v9, v3

    const/4 v11, 0x4

    aget v11, p1, v11

    int-to-long v11, v11

    and-long/2addr v11, v3

    const/4 v13, 0x5

    aget v13, p1, v13

    int-to-long v13, v13

    and-long/2addr v13, v3

    const/4 v15, 0x6

    aget v15, p1, v15

    move-wide/from16 v17, v1

    int-to-long v0, v15

    and-long/2addr v0, v3

    const/4 v2, 0x7

    aget v2, p1, v2

    move-wide/from16 v19, v3

    int-to-long v3, v2

    and-long v2, v3, v19

    const-wide/16 v21, 0x0

    move-wide v15, v0

    move-wide/from16 v0, v21

    const/4 v4, 0x0

    move-wide/from16 v21, v2

    :goto_3a
    const/16 v2, 0x8

    if-ge v4, v2, :cond_105

    aget v2, p0, v4

    int-to-long v2, v2

    and-long v2, v2, v19

    mul-long v23, v2, v17

    move-wide/from16 v25, v2

    aget v2, p2, v4

    int-to-long v2, v2

    and-long v2, v2, v19

    add-long v2, v23, v2

    move/from16 v23, v4

    long-to-int v4, v2

    aput v4, p2, v23

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    mul-long v27, v25, v5

    add-int/lit8 v24, v23, 0x1

    move/from16 p1, v4

    aget v4, p2, v24

    move-wide/from16 v29, v2

    int-to-long v2, v4

    and-long v2, v2, v19

    add-long v27, v27, v2

    add-long v2, v27, v29

    long-to-int v4, v2

    aput v4, p2, v24

    ushr-long v2, v2, p1

    mul-long v27, v25, v7

    add-int/lit8 v4, v23, 0x2

    move-wide/from16 v29, v2

    aget v2, p2, v4

    int-to-long v2, v2

    and-long v2, v2, v19

    add-long v27, v27, v2

    add-long v2, v27, v29

    move/from16 v27, v4

    long-to-int v4, v2

    aput v4, p2, v27

    ushr-long v2, v2, p1

    mul-long v27, v25, v9

    add-int/lit8 v4, v23, 0x3

    move-wide/from16 v29, v2

    aget v2, p2, v4

    int-to-long v2, v2

    and-long v2, v2, v19

    add-long v27, v27, v2

    add-long v2, v27, v29

    move/from16 v27, v4

    long-to-int v4, v2

    aput v4, p2, v27

    ushr-long v2, v2, p1

    mul-long v27, v25, v11

    add-int/lit8 v4, v23, 0x4

    move-wide/from16 v29, v2

    aget v2, p2, v4

    int-to-long v2, v2

    and-long v2, v2, v19

    add-long v27, v27, v2

    add-long v2, v27, v29

    move/from16 v27, v4

    long-to-int v4, v2

    aput v4, p2, v27

    ushr-long v2, v2, p1

    mul-long v27, v25, v13

    add-int/lit8 v4, v23, 0x5

    move-wide/from16 v29, v2

    aget v2, p2, v4

    int-to-long v2, v2

    and-long v2, v2, v19

    add-long v27, v27, v2

    add-long v2, v27, v29

    move/from16 v27, v4

    long-to-int v4, v2

    aput v4, p2, v27

    ushr-long v2, v2, p1

    mul-long v27, v25, v15

    add-int/lit8 v4, v23, 0x6

    move-wide/from16 v29, v2

    aget v2, p2, v4

    int-to-long v2, v2

    and-long v2, v2, v19

    add-long v27, v27, v2

    add-long v2, v27, v29

    move/from16 v27, v4

    long-to-int v4, v2

    aput v4, p2, v27

    ushr-long v2, v2, p1

    mul-long v25, v25, v21

    add-int/lit8 v4, v23, 0x7

    move-wide/from16 v27, v2

    aget v2, p2, v4

    int-to-long v2, v2

    and-long v2, v2, v19

    add-long v25, v25, v2

    add-long v2, v25, v27

    move/from16 v25, v4

    long-to-int v4, v2

    aput v4, p2, v25

    ushr-long v2, v2, p1

    add-int/lit8 v4, v23, 0x8

    move-wide/from16 v25, v2

    aget v2, p2, v4

    int-to-long v2, v2

    and-long v2, v2, v19

    add-long v2, v25, v2

    add-long/2addr v2, v0

    long-to-int v0, v2

    aput v0, p2, v4

    ushr-long v0, v2, p1

    move/from16 v4, v24

    goto/16 :goto_3a

    :cond_105
    long-to-int v0, v0

    return v0
.end method

.method public static C(I[J[J)V
    .registers 5

    const/4 v0, 0x0

    aget-wide v0, p1, v0

    aput-wide v0, p2, p0

    const/4 v0, 0x1

    add-int/2addr p0, v0

    aget-wide v0, p1, v0

    aput-wide v0, p2, p0

    return-void
.end method

.method public static C0([[S[[S)[[S
    .registers 10

    const/4 v0, 0x0

    aget-object v1, p0, v0

    array-length v1, v1

    array-length v2, p1

    if-ne v1, v2, :cond_4c

    array-length v1, p0

    aget-object v2, p1, v0

    array-length v2, v2

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v2, v3, v4

    aput v1, v3, v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[S

    move v2, v0

    :goto_1c
    array-length v3, p0

    if-ge v2, v3, :cond_4b

    move v3, v0

    :goto_20
    array-length v4, p1

    if-ge v3, v4, :cond_48

    move v4, v0

    :goto_24
    aget-object v5, p1, v0

    array-length v5, v5

    if-ge v4, v5, :cond_45

    aget-object v5, p0, v2

    aget-short v5, v5, v3

    aget-object v6, p1, v3

    aget-short v6, v6, v4

    sget-object v7, Lo3/a;->a:[[B

    aget-object v5, v7, v5

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    aget-object v6, v1, v2

    aget-short v7, v6, v4

    xor-int/2addr v5, v7

    int-to-short v5, v5

    aput-short v5, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    :cond_45
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    :cond_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_4b
    return-object v1

    :cond_4c
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Multiplication is not possible!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static D([J[J)V
    .registers 5

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    const/4 v0, 0x1

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    const/4 v0, 0x2

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    const/4 v0, 0x3

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    return-void
.end method

.method public static D0(Lk0/d;Z)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lk0/d;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    iget v1, p0, Lk0/d;->c:I

    iget-object p0, p0, Lk0/d;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-ge v1, p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    if-ne p0, p1, :cond_16

    return-object v0

    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "badly formatted directory string"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static E(I[J[J)V
    .registers 6

    const/4 v0, 0x0

    aget-wide v0, p1, v0

    aput-wide v0, p2, p0

    add-int/lit8 v0, p0, 0x1

    const/4 v1, 0x1

    aget-wide v1, p1, v1

    aput-wide v1, p2, v0

    const/4 v0, 0x2

    add-int/2addr p0, v0

    aget-wide v0, p1, v0

    aput-wide v0, p2, p0

    return-void
.end method

.method public static E0([[S[[[S[[[S)[[[S
    .registers 12

    const/4 v0, 0x0

    aget-object v1, p1, v0

    array-length v2, v1

    aget-object v3, p2, v0

    array-length v4, v3

    if-ne v2, v4, :cond_85

    aget-object v1, v1, v0

    array-length v1, v1

    aget-object v2, v3, v0

    array-length v4, v2

    if-ne v1, v4, :cond_85

    array-length v1, p1

    aget-object v4, p0, v0

    array-length v4, v4

    if-ne v1, v4, :cond_85

    array-length v1, p2

    array-length v4, p0

    if-ne v1, v4, :cond_85

    array-length v1, p2

    array-length v3, v3

    array-length v2, v2

    const/4 v4, 0x3

    new-array v4, v4, [I

    const/4 v5, 0x2

    aput v2, v4, v5

    const/4 v2, 0x1

    aput v3, v4, v2

    aput v1, v4, v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[[S

    move v2, v0

    :goto_32
    aget-object v3, p1, v0

    array-length v3, v3

    if-ge v2, v3, :cond_84

    move v3, v0

    :goto_38
    aget-object v4, p1, v0

    aget-object v4, v4, v0

    array-length v4, v4

    if-ge v3, v4, :cond_81

    move v4, v0

    :goto_40
    array-length v5, p0

    if-ge v4, v5, :cond_7e

    move v5, v0

    :goto_44
    aget-object v6, p0, v0

    array-length v6, v6

    if-ge v5, v6, :cond_69

    aget-object v6, p0, v4

    aget-short v6, v6, v5

    aget-object v7, p1, v5

    aget-object v7, v7, v2

    aget-short v7, v7, v3

    sget-object v8, Lo3/a;->a:[[B

    aget-object v6, v8, v6

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    int-to-short v6, v6

    aget-object v7, v1, v4

    aget-object v7, v7, v2

    aget-short v8, v7, v3

    xor-int/2addr v6, v8

    int-to-short v6, v6

    aput-short v6, v7, v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_44

    :cond_69
    aget-object v5, v1, v4

    aget-object v5, v5, v2

    aget-object v6, p2, v4

    aget-object v6, v6, v2

    aget-short v6, v6, v3

    aget-short v7, v5, v3

    sget-object v8, Lo3/a;->a:[[B

    xor-int/2addr v6, v7

    int-to-short v6, v6

    aput-short v6, v5, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_40

    :cond_7e
    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    :cond_81
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    :cond_84
    return-object v1

    :cond_85
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Multiplication not possible!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static F(I[J[J)V
    .registers 6

    const/4 v0, 0x0

    aget-wide v0, p1, v0

    aput-wide v0, p2, p0

    add-int/lit8 v0, p0, 0x1

    const/4 v1, 0x1

    aget-wide v1, p1, v1

    aput-wide v1, p2, v0

    add-int/lit8 v0, p0, 0x2

    const/4 v1, 0x2

    aget-wide v1, p1, v1

    aput-wide v1, p2, v0

    const/4 v0, 0x3

    add-int/2addr p0, v0

    aget-wide v0, p1, v0

    aput-wide v0, p2, p0

    return-void
.end method

.method public static F0(Lj0/b;Lj0/b;)Z
    .registers 8

    iget-object v0, p0, Lj0/b;->c:Lm/y;

    iget-object v0, v0, Lm/y;->c:[Lm/f;

    array-length v0, v0

    iget-object v1, p1, Lj0/b;->c:Lm/y;

    iget-object v1, v1, Lm/y;->c:[Lm/f;

    array-length v1, v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_e

    return v2

    :cond_e
    invoke-virtual {p0}, Lj0/b;->j()[Lj0/a;

    move-result-object p0

    invoke-virtual {p1}, Lj0/b;->j()[Lj0/a;

    move-result-object p1

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_1b

    return v2

    :cond_1b
    move v0, v2

    :goto_1c
    array-length v1, p0

    if-eq v0, v1, :cond_4d

    aget-object v1, p0, v0

    aget-object v3, p1, v0

    if-ne v1, v3, :cond_26

    goto :goto_49

    :cond_26
    if-eqz v1, :cond_4c

    if-nez v3, :cond_2b

    goto :goto_4c

    :cond_2b
    iget-object v4, v1, Lj0/a;->c:Lm/q;

    iget-object v5, v3, Lj0/a;->c:Lm/q;

    invoke-virtual {v4, v5}, Lm/u;->n(Lm/u;)Z

    move-result v4

    if-nez v4, :cond_36

    goto :goto_4c

    :cond_36
    iget-object v1, v1, Lj0/a;->d:Lm/f;

    invoke-static {v1}, Lq4/k;->u(Lm/f;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v3, Lj0/a;->d:Lm/f;

    invoke-static {v3}, Lq4/k;->u(Lm/f;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_49

    goto :goto_4c

    :cond_49
    :goto_49
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_4c
    :goto_4c
    return v2

    :cond_4d
    const/4 p0, 0x1

    return p0
.end method

.method public static G(ILm/q;)Lorg/bouncycastle/crypto/v;
    .registers 4

    sget-object v0, Lz/b;->a:Lm/q;

    invoke-virtual {p1, v0}, Lm/u;->n(Lm/u;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Ls0/b0;

    invoke-direct {v0}, Ls0/b0;-><init>()V

    goto :goto_1d

    :cond_e
    sget-object v0, Lz/b;->r:Lm/q;

    invoke-virtual {p1, v0}, Lm/u;->n(Lm/u;)Z

    move-result v0

    if-eqz v0, :cond_33

    new-instance v0, Ls0/g0;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ls0/g0;-><init>(I)V

    :goto_1d
    sget-object v1, Lz/b;->r:Lm/q;

    invoke-virtual {v1, p1}, Lm/u;->n(Lm/u;)Z

    move-result p1

    if-nez p1, :cond_2d

    invoke-interface {v0}, Lorg/bouncycastle/crypto/v;->getDigestSize()I

    move-result p1

    if-eq p1, p0, :cond_2c

    goto :goto_2d

    :cond_2c
    return-object v0

    :cond_2d
    :goto_2d
    new-instance p1, Lg3/b;

    invoke-direct {p1, v0, p0}, Lg3/b;-><init>(Lorg/bouncycastle/crypto/l0;I)V

    return-object p1

    :cond_33
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unrecognized digest OID: "

    invoke-static {v0, p1}, Lb/b;->j(Ljava/lang/String;Lm/q;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static G0(Ljava/io/InputStream;)[B
    .registers 6

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x1000

    new-array v2, v1, [B

    :goto_9
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-ltz v4, :cond_14

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_9

    :cond_14
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static H([B)Le1/b;
    .registers 11

    if-eqz p0, :cond_2d1

    array-length v0, p0

    if-eqz v0, :cond_2c9

    invoke-static {p0}, Lm/u;->o([B)Lm/u;

    move-result-object p0

    invoke-static {p0}, Ld0/t;->h(Ljava/lang/Object;)Ld0/t;

    move-result-object p0

    if-eqz p0, :cond_2c1

    iget-object v0, p0, Ld0/t;->q:Lm/r;

    iget-object v1, p0, Ld0/t;->d:Ll0/b;

    iget-object v2, v1, Ll0/b;->c:Lm/q;

    iget-object v1, v1, Ll0/b;->d:Lm/f;

    sget-object v3, Ld0/r;->a:Lm/q;

    invoke-virtual {v2, v3}, Lm/u;->n(Lm/u;)Z

    move-result v3

    if-nez v3, :cond_2a2

    sget-object v3, Ld0/r;->k:Lm/q;

    invoke-virtual {v2, v3}, Lm/u;->n(Lm/u;)Z

    move-result v3

    if-nez v3, :cond_2a2

    sget-object v3, Ll0/e1;->y0:Lm/q;

    invoke-virtual {v2, v3}, Lm/u;->n(Lm/u;)Z

    move-result v3

    if-eqz v3, :cond_31

    goto/16 :goto_2a2

    :cond_31
    sget-object v3, Ld0/r;->s:Lm/q;

    invoke-virtual {v2, v3}, Lm/u;->n(Lm/u;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_6a

    invoke-static {v1}, Ld0/g;->h(Ljava/lang/Object;)Ld0/g;

    move-result-object v0

    invoke-virtual {p0}, Ld0/t;->j()Lm/u;

    move-result-object p0

    check-cast p0, Lm/l;

    invoke-virtual {v0}, Ld0/g;->i()Ljava/math/BigInteger;

    move-result-object v1

    if-nez v1, :cond_4b

    goto :goto_4f

    :cond_4b
    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    :goto_4f
    new-instance v1, Le1/g;

    iget-object v2, v0, Ld0/g;->c:Lm/l;

    invoke-virtual {v2}, Lm/l;->s()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v0, v0, Ld0/g;->d:Lm/l;

    invoke-virtual {v0}, Lm/l;->s()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v1, v4, v2, v0}, Le1/g;-><init>(ILjava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v0, Le1/h;

    invoke-virtual {p0}, Lm/l;->t()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v0, p0, v1}, Le1/h;-><init>(Ljava/math/BigInteger;Le1/g;)V

    return-object v0

    :cond_6a
    sget-object v3, Ly1/b;->i:Lm/q;

    invoke-virtual {v2, v3}, Lm/u;->n(Lm/u;)Z

    move-result v3

    if-eqz v3, :cond_97

    invoke-static {v1}, Ly1/a;->h(Ljava/lang/Object;)Ly1/a;

    move-result-object v0

    invoke-virtual {p0}, Ld0/t;->j()Lm/u;

    move-result-object p0

    check-cast p0, Lm/l;

    new-instance v1, Le1/f0;

    invoke-virtual {p0}, Lm/l;->t()Ljava/math/BigInteger;

    move-result-object p0

    new-instance v2, Le1/e0;

    iget-object v3, v0, Ly1/a;->c:Lm/l;

    invoke-virtual {v3}, Lm/l;->s()Ljava/math/BigInteger;

    move-result-object v3

    iget-object v0, v0, Ly1/a;->d:Lm/l;

    invoke-virtual {v0}, Lm/l;->s()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v2, v4, v3, v0}, Le1/e0;-><init>(ILjava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v1, p0, v2}, Le1/f0;-><init>(Ljava/math/BigInteger;Le1/e0;)V

    return-object v1

    :cond_97
    sget-object v3, Lm0/m;->r1:Lm/q;

    invoke-virtual {v2, v3}, Lm/u;->n(Lm/u;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_d1

    invoke-virtual {p0}, Ld0/t;->j()Lm/u;

    move-result-object p0

    check-cast p0, Lm/l;

    if-eqz v1, :cond_c7

    invoke-interface {v1}, Lm/f;->d()Lm/u;

    move-result-object v0

    invoke-static {v0}, Ll0/p;->h(Ljava/lang/Object;)Ll0/p;

    move-result-object v0

    new-instance v4, Le1/m;

    iget-object v1, v0, Ll0/p;->c:Lm/l;

    invoke-virtual {v1}, Lm/l;->s()Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, v0, Ll0/p;->d:Lm/l;

    invoke-virtual {v2}, Lm/l;->s()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v0, v0, Ll0/p;->q:Lm/l;

    invoke-virtual {v0}, Lm/l;->s()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v4, v1, v2, v0}, Le1/m;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    :cond_c7
    new-instance v0, Le1/n;

    invoke-virtual {p0}, Lm/l;->t()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v0, p0, v4}, Le1/n;-><init>(Ljava/math/BigInteger;Le1/m;)V

    return-object v0

    :cond_d1
    sget-object v3, Lm0/m;->M0:Lm/q;

    invoke-virtual {v2, v3}, Lm/u;->n(Lm/u;)Z

    move-result v3

    if-eqz v3, :cond_121

    invoke-virtual {p0}, Ld0/t;->j()Lm/u;

    move-result-object p0

    invoke-static {p0}, Lf0/a;->h(Ljava/lang/Object;)Lf0/a;

    move-result-object p0

    invoke-interface {v1}, Lm/f;->d()Lm/u;

    move-result-object v0

    invoke-static {v0}, Lm0/f;->h(Ljava/lang/Object;)Lm0/f;

    move-result-object v0

    iget-object v0, v0, Lm0/f;->c:Lm/u;

    instance-of v1, v0, Lm/q;

    if-eqz v1, :cond_10e

    invoke-static {v0}, Lm/q;->v(Ljava/lang/Object;)Lm/q;

    move-result-object v0

    sget-object v1, Lt0/b;->c:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm0/i;

    if-nez v1, :cond_fe

    goto :goto_102

    :cond_fe
    invoke-virtual {v1}, Lm0/i;->d()Lm0/h;

    move-result-object v4

    :goto_102
    if-nez v4, :cond_108

    invoke-static {v0}, Lq4/k;->Y(Lm/q;)Lm0/h;

    move-result-object v4

    :cond_108
    new-instance v1, Le1/v;

    invoke-direct {v1, v0, v4}, Le1/v;-><init>(Lm/q;Lm0/h;)V

    goto :goto_117

    :cond_10e
    invoke-static {v0}, Lm0/h;->h(Ljava/lang/Object;)Lm0/h;

    move-result-object v0

    new-instance v1, Le1/r;

    invoke-direct {v1, v0}, Le1/r;-><init>(Lm0/h;)V

    :goto_117
    invoke-virtual {p0}, Lf0/a;->i()Ljava/math/BigInteger;

    move-result-object p0

    new-instance v0, Le1/w;

    invoke-direct {v0, p0, v1}, Le1/w;-><init>(Ljava/math/BigInteger;Le1/r;)V

    return-object v0

    :cond_121
    sget-object v3, Lo1/a;->a:Lm/q;

    invoke-virtual {v2, v3}, Lm/u;->n(Lm/u;)Z

    move-result v3

    const/16 v5, 0x20

    if-eqz v3, :cond_14c

    iget-object v0, v0, Lm/r;->c:[B

    array-length v0, v0

    if-ne v5, v0, :cond_13c

    new-instance v0, Le1/c1;

    invoke-virtual {p0}, Ld0/t;->i()Lm/x0;

    move-result-object p0

    iget-object p0, p0, Lm/r;->c:[B

    invoke-direct {v0, p0}, Le1/c1;-><init>([B)V

    return-object v0

    :cond_13c
    new-instance v0, Le1/c1;

    invoke-virtual {p0}, Ld0/t;->j()Lm/u;

    move-result-object p0

    invoke-static {p0}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object p0

    iget-object p0, p0, Lm/r;->c:[B

    invoke-direct {v0, p0}, Le1/c1;-><init>([B)V

    return-object v0

    :cond_14c
    sget-object v3, Lo1/a;->b:Lm/q;

    invoke-virtual {v2, v3}, Lm/u;->n(Lm/u;)Z

    move-result v3

    if-eqz v3, :cond_177

    iget-object v0, v0, Lm/r;->c:[B

    array-length v0, v0

    const/16 v1, 0x38

    if-ne v1, v0, :cond_167

    new-instance v0, Le1/e1;

    invoke-virtual {p0}, Ld0/t;->i()Lm/x0;

    move-result-object p0

    iget-object p0, p0, Lm/r;->c:[B

    invoke-direct {v0, p0}, Le1/e1;-><init>([B)V

    return-object v0

    :cond_167
    new-instance v0, Le1/e1;

    invoke-virtual {p0}, Ld0/t;->j()Lm/u;

    move-result-object p0

    invoke-static {p0}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object p0

    iget-object p0, p0, Lm/r;->c:[B

    invoke-direct {v0, p0}, Le1/e1;-><init>([B)V

    return-object v0

    :cond_177
    sget-object v3, Lo1/a;->c:Lm/q;

    invoke-virtual {v2, v3}, Lm/u;->n(Lm/u;)Z

    move-result v3

    if-eqz v3, :cond_18f

    new-instance v0, Le1/y;

    invoke-virtual {p0}, Ld0/t;->j()Lm/u;

    move-result-object p0

    invoke-static {p0}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object p0

    iget-object p0, p0, Lm/r;->c:[B

    invoke-direct {v0, p0}, Le1/y;-><init>([B)V

    return-object v0

    :cond_18f
    sget-object v3, Lo1/a;->d:Lm/q;

    invoke-virtual {v2, v3}, Lm/u;->n(Lm/u;)Z

    move-result v3

    if-eqz v3, :cond_1a7

    new-instance v0, Le1/a0;

    invoke-virtual {p0}, Ld0/t;->j()Lm/u;

    move-result-object p0

    invoke-static {p0}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object p0

    iget-object p0, p0, Lm/r;->c:[B

    invoke-direct {v0, p0}, Le1/a0;-><init>([B)V

    return-object v0

    :cond_1a7
    sget-object v3, Lr/a;->l:Lm/q;

    invoke-virtual {v2, v3}, Lm/u;->n(Lm/u;)Z

    move-result v3

    if-nez v3, :cond_1c8

    sget-object v3, Lz1/a;->f:Lm/q;

    invoke-virtual {v2, v3}, Lm/u;->n(Lm/u;)Z

    move-result v3

    if-nez v3, :cond_1c8

    sget-object v3, Lz1/a;->e:Lm/q;

    invoke-virtual {v2, v3}, Lm/u;->n(Lm/u;)Z

    move-result v3

    if-eqz v3, :cond_1c0

    goto :goto_1c8

    :cond_1c0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "algorithm identifier in private key not recognised"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1c8
    :goto_1c8
    invoke-static {v1}, Lr/f;->h(Ljava/lang/Object;)Lr/f;

    move-result-object v3

    invoke-interface {v1}, Lm/f;->d()Lm/u;

    move-result-object v6

    instance-of v7, v6, Lm/x;

    if-eqz v7, :cond_23c

    invoke-static {v6}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v7

    invoke-virtual {v7}, Lm/x;->size()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_1ea

    invoke-static {v6}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v6

    invoke-virtual {v6}, Lm/x;->size()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_23c

    :cond_1ea
    iget-object v1, v3, Lr/f;->c:Lm/q;

    invoke-static {v1}, Lr/b;->d(Lm/q;)Lm0/h;

    move-result-object v2

    new-instance v4, Le1/s;

    new-instance v6, Le1/v;

    invoke-direct {v6, v1, v2}, Le1/v;-><init>(Lm/q;Lm0/h;)V

    iget-object v2, v3, Lr/f;->d:Lm/q;

    iget-object v7, v3, Lr/f;->q:Lm/q;

    invoke-direct {v4, v6, v1, v2, v7}, Le1/s;-><init>(Le1/v;Lm/q;Lm/q;Lm/q;)V

    iget-object v0, v0, Lm/r;->c:[B

    array-length v0, v0

    const/4 v1, 0x1

    if-eq v0, v5, :cond_22c

    const/16 v2, 0x40

    if-ne v0, v2, :cond_209

    goto :goto_22c

    :cond_209
    invoke-virtual {p0}, Ld0/t;->j()Lm/u;

    move-result-object p0

    instance-of v0, p0, Lm/l;

    if-eqz v0, :cond_21b

    invoke-static {p0}, Lm/l;->r(Ljava/lang/Object;)Lm/l;

    move-result-object p0

    invoke-virtual {p0}, Lm/l;->s()Ljava/math/BigInteger;

    move-result-object p0

    goto/16 :goto_291

    :cond_21b
    invoke-static {p0}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object p0

    iget-object p0, p0, Lm/r;->c:[B

    invoke-static {p0}, Lm4/d;->H([B)[B

    move-result-object p0

    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    :goto_22a
    move-object p0, v0

    goto :goto_291

    :cond_22c
    :goto_22c
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p0}, Ld0/t;->i()Lm/x0;

    move-result-object p0

    iget-object p0, p0, Lm/r;->c:[B

    invoke-static {p0}, Lm4/d;->H([B)[B

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    goto :goto_22a

    :cond_23c
    invoke-static {v1}, Lm0/f;->h(Ljava/lang/Object;)Lm0/f;

    move-result-object v0

    iget-object v0, v0, Lm0/f;->c:Lm/u;

    instance-of v1, v0, Lm/q;

    if-eqz v1, :cond_25f

    invoke-static {v0}, Lm/q;->v(Ljava/lang/Object;)Lm/q;

    move-result-object v0

    invoke-static {v0}, Lq4/k;->Y(Lm/q;)Lm0/h;

    move-result-object v1

    new-instance v4, Le1/s;

    new-instance v2, Le1/v;

    invoke-direct {v2, v0, v1}, Le1/v;-><init>(Lm/q;Lm0/h;)V

    iget-object v0, v3, Lr/f;->c:Lm/q;

    iget-object v1, v3, Lr/f;->d:Lm/q;

    iget-object v5, v3, Lr/f;->q:Lm/q;

    invoke-direct {v4, v2, v0, v1, v5}, Le1/s;-><init>(Le1/v;Lm/q;Lm/q;Lm/q;)V

    goto :goto_278

    :cond_25f
    instance-of v1, v0, Lm/m;

    if-eqz v1, :cond_264

    goto :goto_278

    :cond_264
    invoke-static {v0}, Lm0/h;->h(Ljava/lang/Object;)Lm0/h;

    move-result-object v0

    new-instance v4, Le1/s;

    new-instance v1, Le1/v;

    invoke-direct {v1, v2, v0}, Le1/v;-><init>(Lm/q;Lm0/h;)V

    iget-object v0, v3, Lr/f;->c:Lm/q;

    iget-object v2, v3, Lr/f;->d:Lm/q;

    iget-object v5, v3, Lr/f;->q:Lm/q;

    invoke-direct {v4, v1, v0, v2, v5}, Le1/s;-><init>(Le1/v;Lm/q;Lm/q;Lm/q;)V

    :goto_278
    invoke-virtual {p0}, Ld0/t;->j()Lm/u;

    move-result-object p0

    instance-of v0, p0, Lm/l;

    if-eqz v0, :cond_289

    invoke-static {p0}, Lm/l;->r(Ljava/lang/Object;)Lm/l;

    move-result-object p0

    invoke-virtual {p0}, Lm/l;->t()Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_291

    :cond_289
    invoke-static {p0}, Lf0/a;->h(Ljava/lang/Object;)Lf0/a;

    move-result-object p0

    invoke-virtual {p0}, Lf0/a;->i()Ljava/math/BigInteger;

    move-result-object p0

    :goto_291
    new-instance v0, Le1/w;

    new-instance v1, Le1/s;

    iget-object v2, v3, Lr/f;->c:Lm/q;

    iget-object v5, v3, Lr/f;->d:Lm/q;

    iget-object v3, v3, Lr/f;->q:Lm/q;

    invoke-direct {v1, v4, v2, v5, v3}, Le1/s;-><init>(Le1/v;Lm/q;Lm/q;Lm/q;)V

    invoke-direct {v0, p0, v1}, Le1/w;-><init>(Ljava/math/BigInteger;Le1/r;)V

    return-object v0

    :cond_2a2
    :goto_2a2
    invoke-virtual {p0}, Ld0/t;->j()Lm/u;

    move-result-object p0

    invoke-static {p0}, Ld0/w;->h(Ljava/lang/Object;)Ld0/w;

    move-result-object p0

    new-instance v0, Le1/a1;

    iget-object v1, p0, Ld0/w;->d:Ljava/math/BigInteger;

    iget-object v2, p0, Ld0/w;->q:Ljava/math/BigInteger;

    iget-object v3, p0, Ld0/w;->x:Ljava/math/BigInteger;

    iget-object v4, p0, Ld0/w;->y:Ljava/math/BigInteger;

    iget-object v5, p0, Ld0/w;->z1:Ljava/math/BigInteger;

    iget-object v6, p0, Ld0/w;->A1:Ljava/math/BigInteger;

    iget-object v7, p0, Ld0/w;->B1:Ljava/math/BigInteger;

    iget-object v8, p0, Ld0/w;->C1:Ljava/math/BigInteger;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Le1/a1;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Z)V

    return-object v0

    :cond_2c1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "keyInfo argument null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2c9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "privateKeyInfoData array empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2d1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "privateKeyInfoData array null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static H0(Ljava/io/InputStream;[BII)I
    .registers 7

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_10

    add-int v1, p2, v0

    sub-int v2, p3, v0

    invoke-virtual {p0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-gez v1, :cond_e

    goto :goto_10

    :cond_e
    add-int/2addr v0, v1

    goto :goto_1

    :cond_10
    :goto_10
    return v0
.end method

.method public static I(Ljava/lang/String;Ljava/util/Hashtable;)Lm/q;
    .registers 8

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "OID."

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p0

    if-eqz p0, :cond_18

    new-instance p0, Lm/q;

    const/4 p1, 0x4

    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lm/q;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_18
    invoke-static {v0}, Lm/q;->B(Ljava/lang/String;)Lm/q;

    move-result-object p0

    if-eqz p0, :cond_1f

    return-object p0

    :cond_1f
    invoke-static {v0}, Lm4/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm/q;

    if-eqz p0, :cond_2c

    return-object p0

    :cond_2c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unknown object id - "

    const-string v1, " - passed to distinguished name"

    invoke-static {p1, v0, v1}, Lb/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final I0(Ljava/io/Reader;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    const/16 v1, 0x2000

    new-array v1, v1, [C

    invoke-virtual {p0, v1}, Ljava/io/Reader;->read([C)I

    move-result v2

    :goto_d
    if-ltz v2, :cond_18

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/Writer;->write([CII)V

    invoke-virtual {p0, v1}, Ljava/io/Reader;->read([C)I

    move-result v2

    goto :goto_d

    :cond_18
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "toString(...)"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static J([I[I[I)Z
    .registers 10

    const/4 v0, 0x5

    :goto_1
    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ltz v0, :cond_1a

    add-int v4, v1, v0

    aget v4, p0, v4

    const/high16 v5, -0x80000000

    xor-int/2addr v4, v5

    aget v6, p1, v0

    xor-int/2addr v5, v6

    if-ge v4, v5, :cond_14

    move v3, v2

    goto :goto_1a

    :cond_14
    if-le v4, v5, :cond_17

    goto :goto_1a

    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1a
    :goto_1a
    if-eqz v3, :cond_20

    invoke-static {p0, v1, p1, v2, p2}, Lq4/k;->O0([II[II[I)V

    return v3

    :cond_20
    invoke-static {p1, v2, p0, v1, p2}, Lq4/k;->O0([II[II[I)V

    return v3
.end method

.method public static J0([I[I)V
    .registers 32

    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const/4 v5, 0x3

    const/16 v6, 0x8

    move v8, v0

    move v7, v5

    :goto_f
    add-int/lit8 v9, v7, -0x1

    aget v7, p0, v7

    int-to-long v10, v7

    and-long/2addr v10, v3

    mul-long/2addr v10, v10

    add-int/lit8 v7, v6, -0x1

    shl-int/lit8 v8, v8, 0x1f

    const/16 v12, 0x21

    ushr-long v13, v10, v12

    long-to-int v13, v13

    or-int/2addr v8, v13

    aput v8, p1, v7

    add-int/lit8 v6, v6, -0x2

    const/4 v7, 0x1

    ushr-long v13, v10, v7

    long-to-int v8, v13

    aput v8, p1, v6

    long-to-int v8, v10

    if-gtz v9, :cond_eb

    mul-long v9, v1, v1

    shl-int/lit8 v6, v8, 0x1f

    int-to-long v13, v6

    and-long/2addr v13, v3

    ushr-long v11, v9, v12

    or-long/2addr v11, v13

    long-to-int v6, v9

    aput v6, p1, v0

    const/16 v0, 0x20

    ushr-long v8, v9, v0

    long-to-int v6, v8

    and-int/2addr v6, v7

    aget v8, p0, v7

    int-to-long v8, v8

    and-long v15, v8, v3

    const/4 v8, 0x2

    aget v9, p1, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    mul-long v13, v15, v1

    add-long/2addr v13, v11

    long-to-int v11, v13

    shl-int/lit8 v12, v11, 0x1

    or-int/2addr v6, v12

    aput v6, p1, v7

    ushr-int/lit8 v6, v11, 0x1f

    ushr-long v11, v13, v0

    add-long/2addr v9, v11

    aget v11, p0, v8

    int-to-long v11, v11

    and-long v19, v11, v3

    aget v11, p1, v5

    int-to-long v11, v11

    and-long/2addr v11, v3

    const/16 v25, 0x4

    aget v13, p1, v25

    int-to-long v13, v13

    and-long v21, v13, v3

    mul-long v13, v19, v1

    add-long/2addr v13, v9

    long-to-int v9, v13

    shl-int/lit8 v10, v9, 0x1

    or-int/2addr v6, v10

    aput v6, p1, v8

    ushr-int/lit8 v6, v9, 0x1f

    ushr-long v17, v13, v0

    move-wide/from16 v13, v19

    move-wide/from16 v19, v11

    invoke-static/range {v13 .. v20}, Lb/b;->a(JJJJ)J

    move-result-wide v8

    move-wide v10, v13

    ushr-long v12, v8, v0

    add-long v21, v21, v12

    and-long/2addr v8, v3

    aget v12, p0, v5

    int-to-long v12, v12

    and-long v17, v12, v3

    const/4 v12, 0x5

    aget v13, p1, v12

    int-to-long v13, v13

    and-long/2addr v13, v3

    ushr-long v19, v21, v0

    add-long v13, v13, v19

    and-long v19, v21, v3

    const/16 v26, 0x6

    move/from16 v27, v0

    aget v0, p1, v26

    move-wide/from16 v28, v3

    int-to-long v3, v0

    and-long v3, v3, v28

    ushr-long v21, v13, v27

    add-long v3, v3, v21

    and-long v23, v13, v28

    mul-long v1, v1, v17

    add-long/2addr v1, v8

    long-to-int v0, v1

    shl-int/lit8 v8, v0, 0x1

    or-int/2addr v6, v8

    aput v6, p1, v5

    ushr-int/lit8 v0, v0, 0x1f

    ushr-long v1, v1, v27

    move-wide/from16 v13, v17

    move-wide/from16 v17, v1

    invoke-static/range {v13 .. v20}, Lb/b;->a(JJJJ)J

    move-result-wide v1

    move-wide/from16 v17, v13

    ushr-long v21, v1, v27

    move-wide/from16 v19, v10

    invoke-static/range {v17 .. v24}, Lb/b;->a(JJJJ)J

    move-result-wide v5

    ushr-long v8, v5, v27

    add-long/2addr v3, v8

    and-long v5, v5, v28

    long-to-int v1, v1

    shl-int/lit8 v2, v1, 0x1

    or-int/2addr v0, v2

    aput v0, p1, v25

    ushr-int/lit8 v0, v1, 0x1f

    long-to-int v1, v5

    shl-int/lit8 v2, v1, 0x1

    or-int/2addr v0, v2

    aput v0, p1, v12

    ushr-int/lit8 v0, v1, 0x1f

    long-to-int v1, v3

    shl-int/lit8 v2, v1, 0x1

    or-int/2addr v0, v2

    aput v0, p1, v26

    ushr-int/lit8 v0, v1, 0x1f

    const/4 v1, 0x7

    aget v2, p1, v1

    ushr-long v3, v3, v27

    long-to-int v3, v3

    add-int/2addr v2, v3

    shl-int/2addr v2, v7

    or-int/2addr v0, v2

    aput v0, p1, v1

    return-void

    :cond_eb
    move v7, v9

    goto/16 :goto_f
.end method

.method public static K([I[I[I)Z
    .registers 10

    const/4 v0, 0x7

    :goto_1
    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ltz v0, :cond_1b

    add-int v4, v1, v0

    aget v4, p0, v4

    const/high16 v5, -0x80000000

    xor-int/2addr v4, v5

    aget v6, p1, v0

    xor-int/2addr v5, v6

    if-ge v4, v5, :cond_15

    move v3, v2

    goto :goto_1b

    :cond_15
    if-le v4, v5, :cond_18

    goto :goto_1b

    :cond_18
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1b
    :goto_1b
    if-eqz v3, :cond_21

    invoke-static {p0, v1, p1, v2, p2}, Lq4/k;->Q0([II[II[I)V

    return v3

    :cond_21
    invoke-static {p1, v2, p0, v1, p2}, Lq4/k;->Q0([II[II[I)V

    return v3
.end method

.method public static K0([I[I)V
    .registers 45

    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const/4 v5, 0x5

    const/16 v6, 0xc

    move v8, v0

    move v7, v5

    :goto_f
    add-int/lit8 v9, v7, -0x1

    aget v7, p0, v7

    int-to-long v10, v7

    and-long/2addr v10, v3

    mul-long/2addr v10, v10

    add-int/lit8 v7, v6, -0x1

    shl-int/lit8 v8, v8, 0x1f

    const/16 v12, 0x21

    ushr-long v13, v10, v12

    long-to-int v13, v13

    or-int/2addr v8, v13

    aput v8, p1, v7

    add-int/lit8 v6, v6, -0x2

    const/4 v7, 0x1

    ushr-long v13, v10, v7

    long-to-int v8, v13

    aput v8, p1, v6

    long-to-int v8, v10

    if-gtz v9, :cond_1a7

    mul-long v9, v1, v1

    shl-int/lit8 v6, v8, 0x1f

    int-to-long v13, v6

    and-long/2addr v13, v3

    ushr-long v11, v9, v12

    or-long/2addr v11, v13

    long-to-int v6, v9

    aput v6, p1, v0

    const/16 v0, 0x20

    ushr-long v8, v9, v0

    long-to-int v6, v8

    and-int/2addr v6, v7

    aget v8, p0, v7

    int-to-long v8, v8

    and-long v15, v8, v3

    const/4 v8, 0x2

    aget v9, p1, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    mul-long v13, v15, v1

    add-long/2addr v13, v11

    long-to-int v11, v13

    shl-int/lit8 v12, v11, 0x1

    or-int/2addr v6, v12

    aput v6, p1, v7

    ushr-int/lit8 v6, v11, 0x1f

    ushr-long v11, v13, v0

    add-long/2addr v9, v11

    aget v11, p0, v8

    int-to-long v11, v11

    and-long v19, v11, v3

    const/4 v11, 0x3

    aget v12, p1, v11

    int-to-long v12, v12

    and-long/2addr v12, v3

    const/16 v25, 0x4

    aget v14, p1, v25

    move-wide/from16 v26, v1

    move v2, v0

    int-to-long v0, v14

    and-long/2addr v0, v3

    mul-long v17, v19, v26

    add-long v9, v17, v9

    long-to-int v14, v9

    shl-int/lit8 v17, v14, 0x1

    or-int v6, v17, v6

    aput v6, p1, v8

    ushr-int/lit8 v6, v14, 0x1f

    ushr-long v17, v9, v2

    move-wide/from16 v41, v19

    move-wide/from16 v19, v12

    move-wide/from16 v13, v41

    invoke-static/range {v13 .. v20}, Lb/b;->a(JJJJ)J

    move-result-wide v8

    move-wide/from16 v21, v13

    ushr-long v12, v8, v2

    add-long/2addr v0, v12

    and-long/2addr v8, v3

    aget v10, p0, v11

    int-to-long v12, v10

    and-long v30, v12, v3

    aget v10, p1, v5

    int-to-long v12, v10

    and-long/2addr v12, v3

    ushr-long v17, v0, v2

    add-long v12, v12, v17

    and-long v19, v0, v3

    const/4 v0, 0x6

    aget v1, p1, v0

    move v10, v0

    int-to-long v0, v1

    and-long/2addr v0, v3

    ushr-long v17, v12, v2

    add-long v0, v0, v17

    and-long v23, v12, v3

    mul-long v12, v30, v26

    add-long/2addr v12, v8

    long-to-int v8, v12

    shl-int/lit8 v9, v8, 0x1

    or-int/2addr v6, v9

    aput v6, p1, v11

    ushr-int/lit8 v6, v8, 0x1f

    ushr-long v17, v12, v2

    move-wide/from16 v13, v30

    invoke-static/range {v13 .. v20}, Lb/b;->a(JJJJ)J

    move-result-wide v8

    move-wide/from16 v19, v21

    ushr-long v21, v8, v2

    move-wide/from16 v17, v30

    invoke-static/range {v17 .. v24}, Lb/b;->a(JJJJ)J

    move-result-wide v11

    move-wide/from16 v21, v19

    and-long/2addr v8, v3

    ushr-long v13, v11, v2

    add-long/2addr v0, v13

    and-long v19, v11, v3

    aget v11, p0, v25

    int-to-long v11, v11

    and-long v17, v11, v3

    const/4 v11, 0x7

    aget v12, p1, v11

    int-to-long v12, v12

    and-long/2addr v12, v3

    ushr-long v23, v0, v2

    add-long v12, v12, v23

    and-long v23, v0, v3

    const/16 v0, 0x8

    aget v1, p1, v0

    move/from16 v40, v0

    int-to-long v0, v1

    and-long/2addr v0, v3

    ushr-long v28, v12, v2

    add-long v0, v0, v28

    and-long v34, v12, v3

    mul-long v12, v17, v26

    add-long/2addr v12, v8

    long-to-int v8, v12

    shl-int/lit8 v9, v8, 0x1

    or-int/2addr v6, v9

    aput v6, p1, v25

    ushr-int/lit8 v6, v8, 0x1f

    ushr-long v8, v12, v2

    move-wide/from16 v13, v17

    move-wide/from16 v17, v8

    invoke-static/range {v13 .. v20}, Lb/b;->a(JJJJ)J

    move-result-wide v8

    move-wide/from16 v17, v13

    move-wide/from16 v19, v21

    ushr-long v21, v8, v2

    invoke-static/range {v17 .. v24}, Lb/b;->a(JJJJ)J

    move-result-wide v12

    move-wide/from16 v21, v19

    and-long/2addr v8, v3

    ushr-long v32, v12, v2

    move-wide/from16 v28, v17

    invoke-static/range {v28 .. v35}, Lb/b;->a(JJJJ)J

    move-result-wide v17

    move-wide/from16 v36, v28

    and-long v19, v12, v3

    ushr-long v12, v17, v2

    add-long/2addr v0, v12

    and-long v23, v17, v3

    aget v12, p0, v5

    int-to-long v12, v12

    and-long v32, v12, v3

    const/16 v12, 0x9

    aget v13, p1, v12

    int-to-long v13, v13

    and-long/2addr v13, v3

    ushr-long v17, v0, v2

    add-long v13, v13, v17

    and-long v34, v0, v3

    const/16 v0, 0xa

    aget v1, p1, v0

    move/from16 p0, v0

    int-to-long v0, v1

    and-long/2addr v0, v3

    ushr-long v17, v13, v2

    add-long v0, v0, v17

    and-long v38, v13, v3

    mul-long v3, v32, v26

    add-long/2addr v3, v8

    long-to-int v8, v3

    shl-int/lit8 v9, v8, 0x1

    or-int/2addr v6, v9

    aput v6, p1, v5

    ushr-int/lit8 v5, v8, 0x1f

    ushr-long v17, v3, v2

    move-wide/from16 v13, v32

    invoke-static/range {v13 .. v20}, Lb/b;->a(JJJJ)J

    move-result-wide v3

    move-wide/from16 v19, v21

    ushr-long v21, v3, v2

    move-wide/from16 v17, v32

    invoke-static/range {v17 .. v24}, Lb/b;->a(JJJJ)J

    move-result-wide v8

    ushr-long v13, v8, v2

    move-wide/from16 v28, v32

    move-wide/from16 v32, v13

    invoke-static/range {v28 .. v35}, Lb/b;->a(JJJJ)J

    move-result-wide v13

    move-wide/from16 v32, v28

    move-wide/from16 v17, v36

    ushr-long v36, v13, v2

    move v6, v10

    move v15, v11

    move-wide/from16 v34, v17

    invoke-static/range {v32 .. v39}, Lb/b;->a(JJJJ)J

    move-result-wide v10

    ushr-long v16, v10, v2

    add-long v0, v0, v16

    long-to-int v3, v3

    shl-int/lit8 v4, v3, 0x1

    or-int/2addr v4, v5

    aput v4, p1, v6

    ushr-int/lit8 v3, v3, 0x1f

    long-to-int v4, v8

    shl-int/lit8 v5, v4, 0x1

    or-int/2addr v3, v5

    aput v3, p1, v15

    ushr-int/lit8 v3, v4, 0x1f

    long-to-int v4, v13

    shl-int/lit8 v5, v4, 0x1

    or-int/2addr v3, v5

    aput v3, p1, v40

    ushr-int/lit8 v3, v4, 0x1f

    long-to-int v4, v10

    shl-int/lit8 v5, v4, 0x1

    or-int/2addr v3, v5

    aput v3, p1, v12

    ushr-int/lit8 v3, v4, 0x1f

    long-to-int v4, v0

    shl-int/lit8 v5, v4, 0x1

    or-int/2addr v3, v5

    aput v3, p1, p0

    ushr-int/lit8 v3, v4, 0x1f

    const/16 v4, 0xb

    aget v5, p1, v4

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    add-int/2addr v5, v0

    shl-int/lit8 v0, v5, 0x1

    or-int/2addr v0, v3

    aput v0, p1, v4

    return-void

    :cond_1a7
    move v7, v9

    goto/16 :goto_f
.end method

.method public static L([I[I)Z
    .registers 5

    const/4 v0, 0x5

    :goto_1
    if-ltz v0, :cond_e

    aget v1, p0, v0

    aget v2, p1, v0

    if-eq v1, v2, :cond_b

    const/4 p0, 0x0

    return p0

    :cond_b
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_e
    const/4 p0, 0x1

    return p0
.end method

.method public static L0([I[I)V
    .registers 63

    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const/4 v5, 0x7

    const/16 v6, 0x10

    move v8, v0

    move v7, v5

    :goto_f
    add-int/lit8 v9, v7, -0x1

    aget v7, p0, v7

    int-to-long v10, v7

    and-long/2addr v10, v3

    mul-long/2addr v10, v10

    add-int/lit8 v7, v6, -0x1

    shl-int/lit8 v8, v8, 0x1f

    const/16 v12, 0x21

    ushr-long v13, v10, v12

    long-to-int v13, v13

    or-int/2addr v8, v13

    aput v8, p1, v7

    add-int/lit8 v6, v6, -0x2

    const/4 v7, 0x1

    ushr-long v13, v10, v7

    long-to-int v8, v13

    aput v8, p1, v6

    long-to-int v8, v10

    if-gtz v9, :cond_28c

    mul-long v9, v1, v1

    shl-int/lit8 v6, v8, 0x1f

    int-to-long v13, v6

    and-long/2addr v13, v3

    ushr-long v11, v9, v12

    or-long/2addr v11, v13

    long-to-int v6, v9

    aput v6, p1, v0

    const/16 v0, 0x20

    ushr-long v8, v9, v0

    long-to-int v6, v8

    and-int/2addr v6, v7

    aget v8, p0, v7

    int-to-long v8, v8

    and-long v15, v8, v3

    const/4 v8, 0x2

    aget v9, p1, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    mul-long v13, v15, v1

    add-long/2addr v13, v11

    long-to-int v11, v13

    shl-int/lit8 v12, v11, 0x1

    or-int/2addr v6, v12

    aput v6, p1, v7

    ushr-int/lit8 v6, v11, 0x1f

    ushr-long v11, v13, v0

    add-long/2addr v9, v11

    aget v11, p0, v8

    int-to-long v11, v11

    and-long v19, v11, v3

    const/4 v11, 0x3

    aget v12, p1, v11

    int-to-long v12, v12

    and-long/2addr v12, v3

    const/16 v25, 0x4

    aget v14, p1, v25

    move-wide/from16 v26, v1

    move v2, v0

    int-to-long v0, v14

    and-long/2addr v0, v3

    mul-long v17, v19, v26

    add-long v9, v17, v9

    long-to-int v14, v9

    shl-int/lit8 v17, v14, 0x1

    or-int v6, v17, v6

    aput v6, p1, v8

    ushr-int/lit8 v6, v14, 0x1f

    ushr-long v17, v9, v2

    move-wide/from16 v59, v19

    move-wide/from16 v19, v12

    move-wide/from16 v13, v59

    invoke-static/range {v13 .. v20}, Lb/b;->a(JJJJ)J

    move-result-wide v8

    move-wide/from16 v21, v13

    ushr-long v12, v8, v2

    add-long/2addr v0, v12

    and-long/2addr v8, v3

    aget v10, p0, v11

    int-to-long v12, v10

    and-long v30, v12, v3

    const/4 v10, 0x5

    aget v12, p1, v10

    int-to-long v12, v12

    and-long/2addr v12, v3

    ushr-long v17, v0, v2

    add-long v12, v12, v17

    and-long v19, v0, v3

    const/4 v0, 0x6

    aget v1, p1, v0

    move/from16 v36, v0

    int-to-long v0, v1

    and-long/2addr v0, v3

    ushr-long v17, v12, v2

    add-long v0, v0, v17

    and-long v23, v12, v3

    mul-long v12, v30, v26

    add-long/2addr v12, v8

    long-to-int v8, v12

    shl-int/lit8 v9, v8, 0x1

    or-int/2addr v6, v9

    aput v6, p1, v11

    ushr-int/lit8 v6, v8, 0x1f

    ushr-long v17, v12, v2

    move-wide/from16 v13, v30

    invoke-static/range {v13 .. v20}, Lb/b;->a(JJJJ)J

    move-result-wide v8

    move-wide/from16 v19, v21

    ushr-long v21, v8, v2

    move-wide/from16 v17, v30

    invoke-static/range {v17 .. v24}, Lb/b;->a(JJJJ)J

    move-result-wide v11

    move-wide/from16 v21, v19

    and-long/2addr v8, v3

    ushr-long v13, v11, v2

    add-long/2addr v0, v13

    and-long v19, v11, v3

    aget v11, p0, v25

    int-to-long v11, v11

    and-long v39, v11, v3

    aget v11, p1, v5

    int-to-long v11, v11

    and-long/2addr v11, v3

    ushr-long v13, v0, v2

    add-long/2addr v11, v13

    and-long v23, v0, v3

    const/16 v0, 0x8

    aget v1, p1, v0

    int-to-long v13, v1

    and-long/2addr v13, v3

    ushr-long v17, v11, v2

    add-long v37, v13, v17

    and-long v34, v11, v3

    mul-long v11, v39, v26

    add-long/2addr v11, v8

    long-to-int v1, v11

    shl-int/lit8 v8, v1, 0x1

    or-int/2addr v6, v8

    aput v6, p1, v25

    ushr-int/lit8 v1, v1, 0x1f

    ushr-long v17, v11, v2

    move-wide/from16 v13, v39

    invoke-static/range {v13 .. v20}, Lb/b;->a(JJJJ)J

    move-result-wide v8

    move-wide/from16 v19, v21

    ushr-long v21, v8, v2

    move-wide/from16 v17, v39

    invoke-static/range {v17 .. v24}, Lb/b;->a(JJJJ)J

    move-result-wide v11

    move-wide/from16 v21, v19

    and-long/2addr v8, v3

    ushr-long v32, v11, v2

    move-wide/from16 v28, v39

    invoke-static/range {v28 .. v35}, Lb/b;->a(JJJJ)J

    move-result-wide v13

    and-long v19, v11, v3

    ushr-long v11, v13, v2

    add-long v37, v37, v11

    and-long v23, v13, v3

    aget v6, p0, v10

    int-to-long v11, v6

    and-long v43, v11, v3

    const/16 v6, 0x9

    aget v11, p1, v6

    int-to-long v11, v11

    and-long/2addr v11, v3

    ushr-long v13, v37, v2

    add-long/2addr v11, v13

    and-long v34, v37, v3

    const/16 v25, 0xa

    aget v13, p1, v25

    int-to-long v13, v13

    and-long/2addr v13, v3

    ushr-long v17, v11, v2

    add-long v45, v13, v17

    and-long/2addr v11, v3

    mul-long v13, v43, v26

    add-long/2addr v13, v8

    long-to-int v8, v13

    shl-int/lit8 v9, v8, 0x1

    or-int/2addr v1, v9

    aput v1, p1, v10

    ushr-int/lit8 v1, v8, 0x1f

    ushr-long v17, v13, v2

    move-wide/from16 v13, v43

    invoke-static/range {v13 .. v20}, Lb/b;->a(JJJJ)J

    move-result-wide v8

    move-wide/from16 v19, v21

    ushr-long v21, v8, v2

    move-wide/from16 v17, v43

    invoke-static/range {v17 .. v24}, Lb/b;->a(JJJJ)J

    move-result-wide v13

    move-wide/from16 v21, v19

    and-long/2addr v8, v3

    ushr-long v32, v13, v2

    move-wide/from16 v28, v43

    invoke-static/range {v28 .. v35}, Lb/b;->a(JJJJ)J

    move-result-wide v17

    and-long v19, v13, v3

    ushr-long v41, v17, v2

    move-wide/from16 v37, v43

    move-wide/from16 v43, v11

    invoke-static/range {v37 .. v44}, Lb/b;->a(JJJJ)J

    move-result-wide v10

    move-wide/from16 v47, v37

    and-long v23, v17, v3

    ushr-long v12, v10, v2

    add-long v45, v45, v12

    and-long v34, v10, v3

    aget v10, p0, v36

    int-to-long v10, v10

    and-long v17, v10, v3

    const/16 v10, 0xb

    aget v11, p1, v10

    int-to-long v11, v11

    and-long/2addr v11, v3

    ushr-long v13, v45, v2

    add-long/2addr v11, v13

    and-long v43, v45, v3

    const/16 v57, 0xc

    aget v13, p1, v57

    int-to-long v13, v13

    and-long/2addr v13, v3

    ushr-long v28, v11, v2

    add-long v49, v13, v28

    and-long/2addr v11, v3

    mul-long v13, v17, v26

    add-long/2addr v13, v8

    long-to-int v8, v13

    shl-int/lit8 v9, v8, 0x1

    or-int/2addr v1, v9

    aput v1, p1, v36

    ushr-int/lit8 v1, v8, 0x1f

    ushr-long v8, v13, v2

    move-wide/from16 v13, v17

    move-wide/from16 v17, v8

    invoke-static/range {v13 .. v20}, Lb/b;->a(JJJJ)J

    move-result-wide v8

    move-wide/from16 v17, v13

    move-wide/from16 v19, v21

    ushr-long v21, v8, v2

    invoke-static/range {v17 .. v24}, Lb/b;->a(JJJJ)J

    move-result-wide v13

    move-wide/from16 v21, v19

    and-long/2addr v8, v3

    ushr-long v32, v13, v2

    move-wide/from16 v28, v17

    invoke-static/range {v28 .. v35}, Lb/b;->a(JJJJ)J

    move-result-wide v17

    move-wide/from16 v51, v28

    and-long v19, v13, v3

    ushr-long v41, v17, v2

    move-wide/from16 v37, v51

    invoke-static/range {v37 .. v44}, Lb/b;->a(JJJJ)J

    move-result-wide v13

    and-long v23, v17, v3

    ushr-long v45, v13, v2

    move-wide/from16 v43, v47

    move-wide/from16 v41, v51

    move-wide/from16 v47, v11

    invoke-static/range {v41 .. v48}, Lb/b;->a(JJJJ)J

    move-result-wide v11

    move-wide/from16 v47, v43

    and-long v34, v13, v3

    ushr-long v13, v11, v2

    add-long v49, v49, v13

    and-long v43, v11, v3

    aget v11, p0, v5

    int-to-long v11, v11

    and-long v17, v11, v3

    const/16 v11, 0xd

    aget v12, p1, v11

    int-to-long v12, v12

    and-long/2addr v12, v3

    ushr-long v28, v49, v2

    add-long v12, v12, v28

    and-long v45, v49, v3

    const/16 v36, 0xe

    aget v14, p1, v36

    move/from16 v58, v0

    move/from16 v28, v1

    int-to-long v0, v14

    and-long/2addr v0, v3

    ushr-long v32, v12, v2

    add-long v0, v0, v32

    and-long v55, v12, v3

    mul-long v3, v17, v26

    add-long/2addr v3, v8

    long-to-int v8, v3

    shl-int/lit8 v9, v8, 0x1

    or-int v9, v9, v28

    aput v9, p1, v5

    ushr-int/lit8 v5, v8, 0x1f

    ushr-long/2addr v3, v2

    move-wide/from16 v13, v17

    move-wide/from16 v17, v3

    invoke-static/range {v13 .. v20}, Lb/b;->a(JJJJ)J

    move-result-wide v3

    move-wide/from16 v17, v13

    move-wide/from16 v19, v21

    ushr-long v21, v3, v2

    invoke-static/range {v17 .. v24}, Lb/b;->a(JJJJ)J

    move-result-wide v8

    ushr-long v32, v8, v2

    move-wide/from16 v28, v17

    invoke-static/range {v28 .. v35}, Lb/b;->a(JJJJ)J

    move-result-wide v12

    ushr-long v41, v12, v2

    move-wide/from16 v37, v17

    invoke-static/range {v37 .. v44}, Lb/b;->a(JJJJ)J

    move-result-wide v14

    move-wide/from16 v43, v47

    move-wide/from16 v47, v45

    ushr-long v45, v14, v2

    move/from16 v16, v7

    move-wide/from16 v41, v17

    move/from16 v17, v6

    invoke-static/range {v41 .. v48}, Lb/b;->a(JJJJ)J

    move-result-wide v6

    move-wide/from16 v49, v41

    ushr-long v53, v6, v2

    move/from16 v18, v10

    move/from16 p0, v11

    invoke-static/range {v49 .. v56}, Lb/b;->a(JJJJ)J

    move-result-wide v10

    ushr-long v19, v10, v2

    add-long v0, v0, v19

    long-to-int v3, v3

    shl-int/lit8 v4, v3, 0x1

    or-int/2addr v4, v5

    aput v4, p1, v58

    ushr-int/lit8 v3, v3, 0x1f

    long-to-int v4, v8

    shl-int/lit8 v5, v4, 0x1

    or-int/2addr v3, v5

    aput v3, p1, v17

    ushr-int/lit8 v3, v4, 0x1f

    long-to-int v4, v12

    shl-int/lit8 v5, v4, 0x1

    or-int/2addr v3, v5

    aput v3, p1, v25

    ushr-int/lit8 v3, v4, 0x1f

    long-to-int v4, v14

    shl-int/lit8 v5, v4, 0x1

    or-int/2addr v3, v5

    aput v3, p1, v18

    ushr-int/lit8 v3, v4, 0x1f

    long-to-int v4, v6

    shl-int/lit8 v5, v4, 0x1

    or-int/2addr v3, v5

    aput v3, p1, v57

    ushr-int/lit8 v3, v4, 0x1f

    long-to-int v4, v10

    shl-int/lit8 v5, v4, 0x1

    or-int/2addr v3, v5

    aput v3, p1, p0

    ushr-int/lit8 v3, v4, 0x1f

    long-to-int v4, v0

    shl-int/lit8 v5, v4, 0x1

    or-int/2addr v3, v5

    aput v3, p1, v36

    ushr-int/lit8 v3, v4, 0x1f

    const/16 v4, 0xf

    aget v5, p1, v4

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    add-int/2addr v5, v0

    shl-int/lit8 v0, v5, 0x1

    or-int/2addr v0, v3

    aput v0, p1, v4

    return-void

    :cond_28c
    move v7, v9

    goto/16 :goto_f
.end method

.method public static M([I[I)Z
    .registers 5

    const/4 v0, 0x7

    :goto_1
    if-ltz v0, :cond_e

    aget v1, p0, v0

    aget v2, p1, v0

    if-eq v1, v2, :cond_b

    const/4 p0, 0x0

    return p0

    :cond_b
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_e
    const/4 p0, 0x1

    return p0
.end method

.method public static M0([I[I)V
    .registers 49

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static/range {p0 .. p1}, Lq4/k;->K0([I[I)V

    const/4 v2, 0x6

    aget v3, v0, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    const/16 v7, 0xc

    const/4 v8, 0x0

    const/4 v9, 0x5

    move v10, v7

    move v11, v8

    :goto_17
    add-int/lit8 v12, v9, -0x1

    add-int/2addr v9, v2

    aget v9, v0, v9

    int-to-long v13, v9

    and-long/2addr v13, v5

    mul-long/2addr v13, v13

    add-int/lit8 v9, v10, 0xb

    shl-int/lit8 v11, v11, 0x1f

    const/16 v15, 0x21

    move-wide/from16 v16, v5

    ushr-long v5, v13, v15

    long-to-int v5, v5

    or-int/2addr v5, v11

    aput v5, v1, v9

    add-int/lit8 v5, v10, -0x2

    const/16 v6, 0xa

    add-int/2addr v10, v6

    move v11, v10

    const/16 v18, 0x1

    ushr-long v9, v13, v18

    long-to-int v9, v9

    aput v9, v1, v11

    long-to-int v11, v13

    if-gtz v12, :cond_201

    mul-long v9, v3, v3

    shl-int/lit8 v5, v11, 0x1f

    int-to-long v11, v5

    and-long v11, v11, v16

    ushr-long v13, v9, v15

    or-long/2addr v11, v13

    long-to-int v5, v9

    aput v5, v1, v7

    const/16 v5, 0x20

    ushr-long/2addr v9, v5

    long-to-int v9, v9

    and-int/lit8 v9, v9, 0x1

    const/4 v10, 0x7

    aget v10, v0, v10

    int-to-long v13, v10

    and-long v21, v13, v16

    const/16 v10, 0xe

    aget v13, v1, v10

    int-to-long v13, v13

    and-long v13, v13, v16

    mul-long v19, v21, v3

    add-long v11, v19, v11

    long-to-int v15, v11

    shl-int/lit8 v19, v15, 0x1

    or-int v9, v19, v9

    const/16 v19, 0xd

    aput v9, v1, v19

    ushr-int/lit8 v9, v15, 0x1f

    ushr-long/2addr v11, v5

    add-long/2addr v13, v11

    const/16 v11, 0x8

    aget v11, v0, v11

    int-to-long v11, v11

    and-long v25, v11, v16

    const/16 v11, 0xf

    aget v12, v1, v11

    move/from16 v31, v5

    move v15, v6

    int-to-long v5, v12

    and-long v5, v5, v16

    const/16 v12, 0x10

    move/from16 v19, v10

    aget v10, v1, v12

    move/from16 v27, v11

    move/from16 v32, v12

    int-to-long v11, v10

    and-long v10, v11, v16

    mul-long v23, v25, v3

    add-long v12, v23, v13

    long-to-int v14, v12

    shl-int/lit8 v20, v14, 0x1

    or-int v9, v20, v9

    aput v9, v1, v19

    ushr-int/lit8 v9, v14, 0x1f

    ushr-long v23, v12, v31

    move-wide/from16 v19, v25

    move-wide/from16 v25, v5

    invoke-static/range {v19 .. v26}, Lb/b;->a(JJJJ)J

    move-result-wide v5

    move-wide/from16 v12, v19

    ushr-long v19, v5, v31

    add-long v10, v10, v19

    and-long v5, v5, v16

    const/16 v14, 0x9

    aget v14, v0, v14

    move-wide/from16 v33, v3

    int-to-long v2, v14

    and-long v37, v2, v16

    const/16 v2, 0x11

    aget v3, v1, v2

    int-to-long v3, v3

    and-long v3, v3, v16

    ushr-long v19, v10, v31

    add-long v3, v3, v19

    and-long v25, v10, v16

    const/16 v10, 0x12

    aget v11, v1, v10

    move v14, v2

    move-wide/from16 v19, v3

    int-to-long v2, v11

    and-long v2, v2, v16

    ushr-long v23, v19, v31

    add-long v2, v2, v23

    and-long v29, v19, v16

    mul-long v19, v37, v33

    add-long v4, v19, v5

    long-to-int v6, v4

    shl-int/lit8 v11, v6, 0x1

    or-int/2addr v9, v11

    aput v9, v1, v27

    ushr-int/lit8 v6, v6, 0x1f

    ushr-long v23, v4, v31

    move-wide/from16 v19, v37

    invoke-static/range {v19 .. v26}, Lb/b;->a(JJJJ)J

    move-result-wide v4

    ushr-long v27, v4, v31

    move-wide/from16 v25, v12

    move-wide/from16 v23, v37

    invoke-static/range {v23 .. v30}, Lb/b;->a(JJJJ)J

    move-result-wide v11

    move-wide/from16 v27, v25

    and-long v4, v4, v16

    ushr-long v19, v11, v31

    add-long v2, v2, v19

    and-long v25, v11, v16

    aget v9, v0, v15

    int-to-long v11, v9

    and-long v19, v11, v16

    const/16 v9, 0x13

    aget v11, v1, v9

    int-to-long v11, v11

    and-long v11, v11, v16

    ushr-long v23, v2, v31

    add-long v11, v11, v23

    and-long v29, v2, v16

    const/16 v2, 0x14

    aget v3, v1, v2

    move v13, v2

    int-to-long v2, v3

    and-long v2, v2, v16

    ushr-long v23, v11, v31

    add-long v2, v2, v23

    and-long v41, v11, v16

    mul-long v11, v19, v33

    add-long/2addr v11, v4

    long-to-int v4, v11

    shl-int/lit8 v5, v4, 0x1

    or-int/2addr v5, v6

    aput v5, v1, v32

    ushr-int/lit8 v4, v4, 0x1f

    ushr-long v23, v11, v31

    invoke-static/range {v19 .. v26}, Lb/b;->a(JJJJ)J

    move-result-wide v5

    move-wide/from16 v25, v27

    ushr-long v27, v5, v31

    move-wide/from16 v23, v19

    invoke-static/range {v23 .. v30}, Lb/b;->a(JJJJ)J

    move-result-wide v11

    move-wide/from16 v27, v25

    and-long v5, v5, v16

    ushr-long v39, v11, v31

    move-wide/from16 v35, v19

    invoke-static/range {v35 .. v42}, Lb/b;->a(JJJJ)J

    move-result-wide v19

    move-wide/from16 v43, v35

    and-long v25, v11, v16

    ushr-long v11, v19, v31

    add-long/2addr v2, v11

    and-long v29, v19, v16

    const/16 v11, 0xb

    aget v11, v0, v11

    int-to-long v11, v11

    and-long v19, v11, v16

    const/16 v11, 0x15

    aget v12, v1, v11

    move v15, v11

    int-to-long v11, v12

    and-long v11, v11, v16

    ushr-long v23, v2, v31

    add-long v11, v11, v23

    and-long v41, v2, v16

    const/16 v2, 0x16

    aget v3, v1, v2

    move/from16 v32, v2

    int-to-long v2, v3

    and-long v2, v2, v16

    ushr-long v23, v11, v31

    add-long v2, v2, v23

    and-long v45, v11, v16

    mul-long v11, v19, v33

    add-long/2addr v11, v5

    long-to-int v5, v11

    shl-int/lit8 v6, v5, 0x1

    or-int/2addr v4, v6

    aput v4, v1, v14

    ushr-int/lit8 v4, v5, 0x1f

    ushr-long v23, v11, v31

    invoke-static/range {v19 .. v26}, Lb/b;->a(JJJJ)J

    move-result-wide v5

    move-wide/from16 v25, v27

    ushr-long v27, v5, v31

    move-wide/from16 v23, v19

    invoke-static/range {v23 .. v30}, Lb/b;->a(JJJJ)J

    move-result-wide v11

    ushr-long v39, v11, v31

    move-wide/from16 v35, v19

    move/from16 v19, v13

    invoke-static/range {v35 .. v42}, Lb/b;->a(JJJJ)J

    move-result-wide v13

    move-wide/from16 v23, v43

    ushr-long v43, v13, v31

    move/from16 v21, v9

    move/from16 v20, v10

    move-wide/from16 v41, v23

    move-wide/from16 v39, v35

    invoke-static/range {v39 .. v46}, Lb/b;->a(JJJJ)J

    move-result-wide v9

    ushr-long v16, v9, v31

    add-long v2, v2, v16

    long-to-int v5, v5

    shl-int/lit8 v6, v5, 0x1

    or-int/2addr v4, v6

    aput v4, v1, v20

    ushr-int/lit8 v4, v5, 0x1f

    long-to-int v5, v11

    shl-int/lit8 v6, v5, 0x1

    or-int/2addr v4, v6

    aput v4, v1, v21

    ushr-int/lit8 v4, v5, 0x1f

    long-to-int v5, v13

    shl-int/lit8 v6, v5, 0x1

    or-int/2addr v4, v6

    aput v4, v1, v19

    ushr-int/lit8 v4, v5, 0x1f

    long-to-int v5, v9

    shl-int/lit8 v6, v5, 0x1

    or-int/2addr v4, v6

    aput v4, v1, v15

    ushr-int/lit8 v4, v5, 0x1f

    long-to-int v5, v2

    shl-int/lit8 v6, v5, 0x1

    or-int/2addr v4, v6

    aput v4, v1, v32

    ushr-int/lit8 v4, v5, 0x1f

    const/16 v5, 0x17

    aget v6, v1, v5

    ushr-long v2, v2, v31

    long-to-int v2, v2

    add-int/2addr v6, v2

    shl-int/lit8 v2, v6, 0x1

    or-int/2addr v2, v4

    aput v2, v1, v5

    invoke-static {v1, v1}, Lq4/k;->n([I[I)I

    move-result v2

    const/4 v3, 0x6

    invoke-static {v8, v3, v8, v1, v1}, Lq4/k;->l(III[I[I)I

    move-result v4

    add-int/2addr v4, v2

    move/from16 v5, v20

    invoke-static {v5, v7, v4, v1, v1}, Lq4/k;->l(III[I[I)I

    move-result v4

    add-int/2addr v4, v2

    new-array v2, v3, [I

    invoke-static {v0, v0, v2}, Lq4/k;->J([I[I[I)Z

    new-array v0, v7, [I

    invoke-static {v2, v0}, Lq4/k;->K0([I[I)V

    invoke-static {v7, v3, v0, v1}, Ls2/b;->T(II[I[I)I

    move-result v0

    add-int/2addr v0, v4

    const/16 v2, 0x18

    invoke-static {v2, v0, v5, v1}, Ls2/b;->f(III[I)V

    return-void

    :cond_201
    move v10, v5

    move v9, v12

    move-wide/from16 v5, v16

    goto/16 :goto_17
.end method

.method public static N([J[J)Z
    .registers 7

    const/4 v0, 0x3

    :goto_1
    if-ltz v0, :cond_10

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_d

    const/4 p0, 0x0

    return p0

    :cond_d
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_10
    const/4 p0, 0x1

    return p0
.end method

.method public static N0([I[I[I)I
    .registers 13

    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    aget v5, p1, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    sub-long/2addr v1, v5

    long-to-int v5, v1

    aput v5, p2, v0

    const/16 v0, 0x20

    shr-long/2addr v1, v0

    const/4 v5, 0x1

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p2, v5

    shr-long v1, v6, v0

    const/4 v5, 0x2

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p2, v5

    shr-long v1, v6, v0

    const/4 v5, 0x3

    aget p0, p0, v5

    int-to-long v6, p0

    and-long/2addr v6, v3

    aget p0, p1, v5

    int-to-long p0, p0

    and-long/2addr p0, v3

    sub-long/2addr v6, p0

    add-long/2addr v6, v1

    long-to-int p0, v6

    aput p0, p2, v5

    shr-long p0, v6, v0

    long-to-int p0, p0

    return p0
.end method

.method public static final O(CCZ)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p2, :cond_8

    return v1

    :cond_8
    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p0

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p1

    if-eq p0, p1, :cond_1e

    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p0

    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    if-ne p0, p1, :cond_1d

    goto :goto_1e

    :cond_1d
    return v1

    :cond_1e
    :goto_1e
    return v0
.end method

.method public static O0([II[II[I)V
    .registers 14

    aget v0, p0, p1

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    aget v4, p2, p3

    int-to-long v4, v4

    and-long/2addr v4, v2

    sub-long/2addr v0, v4

    long-to-int v4, v0

    const/4 v5, 0x0

    aput v4, p4, v5

    const/16 v4, 0x20

    shr-long/2addr v0, v4

    add-int/lit8 v5, p1, 0x1

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x1

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v5, v0

    long-to-int v0, v5

    const/4 v1, 0x1

    aput v0, p4, v1

    shr-long v0, v5, v4

    add-int/lit8 v5, p1, 0x2

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x2

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v5, v0

    long-to-int v0, v5

    const/4 v1, 0x2

    aput v0, p4, v1

    shr-long v0, v5, v4

    add-int/lit8 v5, p1, 0x3

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x3

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v5, v0

    long-to-int v0, v5

    const/4 v1, 0x3

    aput v0, p4, v1

    shr-long v0, v5, v4

    add-int/lit8 v5, p1, 0x4

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x4

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v5, v0

    long-to-int v0, v5

    const/4 v1, 0x4

    aput v0, p4, v1

    shr-long v0, v5, v4

    const/4 v4, 0x5

    add-int/2addr p1, v4

    aget p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    add-int/2addr p3, v4

    aget p2, p2, p3

    int-to-long p2, p2

    and-long/2addr p2, v2

    sub-long/2addr p0, p2

    add-long/2addr p0, v0

    long-to-int p0, p0

    aput p0, p4, v4

    return-void
.end method

.method public static P(I)I
    .registers 2

    const v0, 0xffff

    and-int/2addr p0, v0

    shl-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    const v0, 0xff00ff

    and-int/2addr p0, v0

    shl-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    const v0, 0xf0f0f0f

    and-int/2addr p0, v0

    shl-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    const v0, 0x33333333

    and-int/2addr p0, v0

    shl-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    const v0, 0x55555555

    and-int/2addr p0, v0

    return p0
.end method

.method public static P0([I[I[I)I
    .registers 13

    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    aget v5, p1, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    sub-long/2addr v1, v5

    long-to-int v5, v1

    aput v5, p2, v0

    const/16 v0, 0x20

    shr-long/2addr v1, v0

    const/4 v5, 0x1

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p2, v5

    shr-long v1, v6, v0

    const/4 v5, 0x2

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p2, v5

    shr-long v1, v6, v0

    const/4 v5, 0x3

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p2, v5

    shr-long v1, v6, v0

    const/4 v5, 0x4

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p2, v5

    shr-long v1, v6, v0

    const/4 v5, 0x5

    aget p0, p0, v5

    int-to-long v6, p0

    and-long/2addr v6, v3

    aget p0, p1, v5

    int-to-long p0, p0

    and-long/2addr p0, v3

    sub-long/2addr v6, p0

    add-long/2addr v6, v1

    long-to-int p0, v6

    aput p0, p2, v5

    shr-long p0, v6, v0

    long-to-int p0, p0

    return p0
.end method

.method public static Q(I)J
    .registers 7

    const v0, 0xff00

    const/16 v1, 0x8

    invoke-static {p0, v0, v1}, Lt4/d;->o(III)I

    move-result p0

    const v0, 0xf000f0

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Lt4/d;->o(III)I

    move-result p0

    const v0, 0xc0c0c0c

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lt4/d;->o(III)I

    move-result p0

    const v0, 0x22222222

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lt4/d;->o(III)I

    move-result p0

    ushr-int/lit8 v0, p0, 0x1

    int-to-long v0, v0

    const-wide/32 v2, 0x55555555

    and-long/2addr v0, v2

    const/16 v4, 0x20

    shl-long/2addr v0, v4

    int-to-long v4, p0

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static Q0([II[II[I)V
    .registers 14

    aget v0, p0, p1

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    aget v4, p2, p3

    int-to-long v4, v4

    and-long/2addr v4, v2

    sub-long/2addr v0, v4

    long-to-int v4, v0

    const/4 v5, 0x0

    aput v4, p4, v5

    const/16 v4, 0x20

    shr-long/2addr v0, v4

    add-int/lit8 v5, p1, 0x1

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x1

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v5, v0

    long-to-int v0, v5

    const/4 v1, 0x1

    aput v0, p4, v1

    shr-long v0, v5, v4

    add-int/lit8 v5, p1, 0x2

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x2

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v5, v0

    long-to-int v0, v5

    const/4 v1, 0x2

    aput v0, p4, v1

    shr-long v0, v5, v4

    add-int/lit8 v5, p1, 0x3

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x3

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v5, v0

    long-to-int v0, v5

    const/4 v1, 0x3

    aput v0, p4, v1

    shr-long v0, v5, v4

    add-int/lit8 v5, p1, 0x4

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x4

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v5, v0

    long-to-int v0, v5

    const/4 v1, 0x4

    aput v0, p4, v1

    shr-long v0, v5, v4

    add-int/lit8 v5, p1, 0x5

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x5

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v5, v0

    long-to-int v0, v5

    const/4 v1, 0x5

    aput v0, p4, v1

    shr-long v0, v5, v4

    add-int/lit8 v5, p1, 0x6

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x6

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v5, v0

    long-to-int v0, v5

    const/4 v1, 0x6

    aput v0, p4, v1

    shr-long v0, v5, v4

    const/4 v4, 0x7

    add-int/2addr p1, v4

    aget p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    add-int/2addr p3, v4

    aget p2, p2, p3

    int-to-long p2, p2

    and-long/2addr p2, v2

    sub-long/2addr p0, p2

    add-long/2addr p0, v0

    long-to-int p0, p0

    aput p0, p4, v4

    return-void
.end method

.method public static R(I[J[J)V
    .registers 13

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v0, p0, :cond_4d

    aget-wide v2, p1, v0

    const-wide v4, 0xffff0000L

    const/16 v6, 0x10

    invoke-static {v6, v2, v3, v4, v5}, Lt4/d;->p(IJJ)J

    move-result-wide v2

    const-wide v4, 0xff000000ff00L

    const/16 v6, 0x8

    invoke-static {v6, v2, v3, v4, v5}, Lt4/d;->p(IJJ)J

    move-result-wide v2

    const-wide v4, 0xf000f000f000f0L

    const/4 v6, 0x4

    invoke-static {v6, v2, v3, v4, v5}, Lt4/d;->p(IJJ)J

    move-result-wide v2

    const-wide v4, 0xc0c0c0c0c0c0c0cL

    const/4 v6, 0x2

    invoke-static {v6, v2, v3, v4, v5}, Lt4/d;->p(IJJ)J

    move-result-wide v2

    const-wide v4, 0x2222222222222222L

    const/4 v7, 0x1

    invoke-static {v7, v2, v3, v4, v5}, Lt4/d;->p(IJJ)J

    move-result-wide v2

    const-wide v4, 0x5555555555555555L    # 1.1945305291614955E103

    and-long v8, v2, v4

    aput-wide v8, p2, v1

    add-int/lit8 v8, v1, 0x1

    ushr-long/2addr v2, v7

    and-long/2addr v2, v4

    aput-wide v2, p2, v8

    add-int/2addr v1, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4d
    return-void
.end method

.method public static R0([I[I[I)I
    .registers 13

    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    aget v5, p1, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    sub-long/2addr v1, v5

    long-to-int v5, v1

    aput v5, p2, v0

    const/16 v0, 0x20

    shr-long/2addr v1, v0

    const/4 v5, 0x1

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p2, v5

    shr-long v1, v6, v0

    const/4 v5, 0x2

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p2, v5

    shr-long v1, v6, v0

    const/4 v5, 0x3

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p2, v5

    shr-long v1, v6, v0

    const/4 v5, 0x4

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p2, v5

    shr-long v1, v6, v0

    const/4 v5, 0x5

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p2, v5

    shr-long v1, v6, v0

    const/4 v5, 0x6

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p2, v5

    shr-long v1, v6, v0

    const/4 v5, 0x7

    aget p0, p0, v5

    int-to-long v6, p0

    and-long/2addr v6, v3

    aget p0, p1, v5

    int-to-long p0, p0

    and-long/2addr p0, v3

    sub-long/2addr v6, p0

    add-long/2addr v6, v1

    long-to-int p0, v6

    aput p0, p2, v5

    shr-long p0, v6, v0

    long-to-int p0, p0

    return p0
.end method

.method public static S(IJ[J)V
    .registers 9

    const-wide v0, 0xffff0000L

    const/16 v2, 0x10

    invoke-static {v2, p1, p2, v0, v1}, Lt4/d;->p(IJJ)J

    move-result-wide p1

    const-wide v0, 0xff000000ff00L

    const/16 v2, 0x8

    invoke-static {v2, p1, p2, v0, v1}, Lt4/d;->p(IJJ)J

    move-result-wide p1

    const-wide v0, 0xf000f000f000f0L

    const/4 v2, 0x4

    invoke-static {v2, p1, p2, v0, v1}, Lt4/d;->p(IJJ)J

    move-result-wide p1

    const-wide v0, 0xc0c0c0c0c0c0c0cL

    const/4 v2, 0x2

    invoke-static {v2, p1, p2, v0, v1}, Lt4/d;->p(IJJ)J

    move-result-wide p1

    const/4 v0, 0x1

    const-wide v1, 0x2222222222222222L

    invoke-static {v0, p1, p2, v1, v2}, Lt4/d;->p(IJJ)J

    move-result-wide p1

    const-wide v1, -0x5555555555555556L

    and-long v3, p1, v1

    aput-wide v3, p3, p0

    add-int/2addr p0, v0

    shl-long/2addr p1, v0

    and-long/2addr p1, v1

    aput-wide p1, p3, p0

    return-void
.end method

.method public static S0([I[I)V
    .registers 12

    const/4 v0, 0x0

    aget v1, p1, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    aget v5, p0, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    sub-long/2addr v1, v5

    long-to-int v5, v1

    aput v5, p1, v0

    const/16 v0, 0x20

    shr-long/2addr v1, v0

    const/4 v5, 0x1

    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p1, v5

    shr-long v1, v6, v0

    const/4 v5, 0x2

    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p1, v5

    shr-long v1, v6, v0

    const/4 v5, 0x3

    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p1, v5

    shr-long v1, v6, v0

    const/4 v5, 0x4

    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p1, v5

    shr-long v0, v6, v0

    const/4 v2, 0x5

    aget v5, p1, v2

    int-to-long v5, v5

    and-long/2addr v5, v3

    aget p0, p0, v2

    int-to-long v7, p0

    and-long/2addr v3, v7

    sub-long/2addr v5, v3

    add-long/2addr v5, v0

    long-to-int p0, v5

    aput p0, p1, v2

    return-void
.end method

.method public static T(Ljava/math/BigInteger;)[I
    .registers 5

    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_24

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0xc0

    if-gt v0, v1, :cond_24

    const/4 v0, 0x6

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v0, :cond_23

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    aput v3, v1, v2

    const/16 v3, 0x20

    invoke-virtual {p0, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_23
    return-object v1

    :cond_24
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static T0([I[I)V
    .registers 12

    const/4 v0, 0x0

    aget v1, p1, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    aget v5, p0, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    sub-long/2addr v1, v5

    long-to-int v5, v1

    aput v5, p1, v0

    const/16 v0, 0x20

    shr-long/2addr v1, v0

    const/4 v5, 0x1

    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p1, v5

    shr-long v1, v6, v0

    const/4 v5, 0x2

    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p1, v5

    shr-long v1, v6, v0

    const/4 v5, 0x3

    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p1, v5

    shr-long v1, v6, v0

    const/4 v5, 0x4

    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p1, v5

    shr-long v1, v6, v0

    const/4 v5, 0x5

    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p1, v5

    shr-long v1, v6, v0

    const/4 v5, 0x6

    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p1, v5

    shr-long v0, v6, v0

    const/4 v2, 0x7

    aget v5, p1, v2

    int-to-long v5, v5

    and-long/2addr v5, v3

    aget p0, p0, v2

    int-to-long v7, p0

    and-long/2addr v3, v7

    sub-long/2addr v5, v3

    add-long/2addr v5, v0

    long-to-int p0, v5

    aput p0, p1, v2

    return-void
.end method

.method public static U(Ljava/math/BigInteger;)[I
    .registers 5

    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_25

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x100

    if-gt v0, v1, :cond_25

    const/16 v0, 0x8

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v0, :cond_24

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    aput v3, v1, v2

    const/16 v3, 0x20

    invoke-virtual {p0, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_24
    return-object v1

    :cond_25
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static final U0(Ljava/lang/Object;)V
    .registers 2

    instance-of v0, p0, La/d;

    if-nez v0, :cond_5

    return-void

    :cond_5
    check-cast p0, La/d;

    iget-object p0, p0, La/d;->c:Ljava/lang/Throwable;

    throw p0
.end method

.method public static V([I)I
    .registers 2

    const/4 v0, 0x0

    aget p0, p0, v0

    and-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static V0([I)Ljava/math/BigInteger;
    .registers 5

    const/16 v0, 0x18

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_5
    const/4 v2, 0x6

    if-ge v1, v2, :cond_16

    aget v2, p0, v1

    if-eqz v2, :cond_13

    rsub-int/lit8 v3, v1, 0x5

    shl-int/lit8 v3, v3, 0x2

    invoke-static {v0, v2, v3}, Lm4/d;->w([BII)V

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_16
    new-instance p0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object p0
.end method

.method public static W([I)I
    .registers 2

    const/4 v0, 0x0

    aget p0, p0, v0

    and-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static W0([I)Ljava/math/BigInteger;
    .registers 5

    const/16 v0, 0x20

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_5
    const/16 v2, 0x8

    if-ge v1, v2, :cond_17

    aget v2, p0, v1

    if-eqz v2, :cond_14

    rsub-int/lit8 v3, v1, 0x7

    shl-int/lit8 v3, v3, 0x2

    invoke-static {v0, v2, v3}, Lm4/d;->w([BII)V

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_17
    new-instance p0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object p0
.end method

.method public static X(Ljava/lang/String;)Lm0/h;
    .registers 4

    sget-object v0, Lm0/e;->a:Ljava/util/Hashtable;

    invoke-static {p0}, Lm4/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/q;

    const/4 v1, 0x0

    if-nez v0, :cond_11

    :goto_f
    move-object v0, v1

    goto :goto_20

    :cond_11
    sget-object v2, Lm0/e;->b:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm0/i;

    if-nez v0, :cond_1c

    goto :goto_f

    :cond_1c
    invoke-virtual {v0}, Lm0/i;->d()Lm0/h;

    move-result-object v0

    :goto_20
    if-nez v0, :cond_41

    sget-object v0, Lf0/d;->a:Ljava/util/Hashtable;

    invoke-static {p0}, Lm4/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/q;

    if-nez v0, :cond_31

    goto :goto_3b

    :cond_31
    sget-object v2, Lf0/d;->b:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm0/i;

    if-nez v0, :cond_3d

    :goto_3b
    move-object v0, v1

    goto :goto_41

    :cond_3d
    invoke-virtual {v0}, Lm0/i;->d()Lm0/h;

    move-result-object v0

    :cond_41
    :goto_41
    if-nez v0, :cond_61

    sget-object v0, Lz/a;->a:Ljava/util/Hashtable;

    invoke-static {p0}, Lm4/m;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/q;

    if-eqz v0, :cond_5b

    sget-object v2, Lf0/d;->b:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm0/i;

    if-nez v0, :cond_5d

    :cond_5b
    move-object v0, v1

    goto :goto_61

    :cond_5d
    invoke-virtual {v0}, Lm0/i;->d()Lm0/h;

    move-result-object v0

    :cond_61
    :goto_61
    if-nez v0, :cond_82

    sget-object v0, Lg0/a;->a:Ljava/util/Hashtable;

    invoke-static {p0}, Lm4/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/q;

    if-nez v0, :cond_72

    goto :goto_7c

    :cond_72
    sget-object v2, Lg0/a;->b:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm0/i;

    if-nez v0, :cond_7e

    :goto_7c
    move-object v0, v1

    goto :goto_82

    :cond_7e
    invoke-virtual {v0}, Lm0/i;->d()Lm0/h;

    move-result-object v0

    :cond_82
    :goto_82
    if-nez v0, :cond_a3

    sget-object v0, Ln/a;->a:Ljava/util/Hashtable;

    invoke-static {p0}, Lm4/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/q;

    if-nez v0, :cond_93

    goto :goto_9d

    :cond_93
    sget-object v2, Ln/a;->b:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm0/i;

    if-nez v0, :cond_9f

    :goto_9d
    move-object v0, v1

    goto :goto_a3

    :cond_9f
    invoke-virtual {v0}, Lm0/i;->d()Lm0/h;

    move-result-object v0

    :cond_a3
    :goto_a3
    if-nez v0, :cond_b1

    invoke-static {p0}, Lr/b;->f(Ljava/lang/String;)Lm/q;

    move-result-object v0

    if-nez v0, :cond_ad

    move-object v0, v1

    goto :goto_b1

    :cond_ad
    invoke-static {v0}, Lr/b;->d(Lm/q;)Lm0/h;

    move-result-object v0

    :cond_b1
    :goto_b1
    if-nez v0, :cond_d2

    sget-object v0, Lu/a;->a:Ljava/util/Hashtable;

    invoke-static {p0}, Lm4/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm/q;

    if-nez p0, :cond_c2

    return-object v1

    :cond_c2
    sget-object v0, Lu/a;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm0/i;

    if-nez p0, :cond_cd

    return-object v1

    :cond_cd
    invoke-virtual {p0}, Lm0/i;->d()Lm0/h;

    move-result-object p0

    return-object p0

    :cond_d2
    return-object v0
.end method

.method public static X0([J)Ljava/math/BigInteger;
    .registers 8

    const/16 v0, 0x18

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_5
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1a

    aget-wide v3, p0, v1

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-eqz v5, :cond_17

    rsub-int/lit8 v5, v1, 0x2

    shl-int/lit8 v2, v5, 0x3

    invoke-static {v2, v3, v4, v0}, Lm4/d;->E(IJ[B)V

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1a
    new-instance p0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object p0
.end method

.method public static Y(Lm/q;)Lm0/h;
    .registers 3

    sget-object v0, Lm0/e;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm0/i;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    move-object v0, v1

    goto :goto_11

    :cond_d
    invoke-virtual {v0}, Lm0/i;->d()Lm0/h;

    move-result-object v0

    :goto_11
    if-nez v0, :cond_23

    sget-object v0, Lf0/d;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm0/i;

    if-nez v0, :cond_1f

    move-object v0, v1

    goto :goto_23

    :cond_1f
    invoke-virtual {v0}, Lm0/i;->d()Lm0/h;

    move-result-object v0

    :cond_23
    :goto_23
    if-nez v0, :cond_35

    sget-object v0, Lg0/a;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm0/i;

    if-nez v0, :cond_31

    move-object v0, v1

    goto :goto_35

    :cond_31
    invoke-virtual {v0}, Lm0/i;->d()Lm0/h;

    move-result-object v0

    :cond_35
    :goto_35
    if-nez v0, :cond_47

    sget-object v0, Ln/a;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm0/i;

    if-nez v0, :cond_43

    move-object v0, v1

    goto :goto_47

    :cond_43
    invoke-virtual {v0}, Lm0/i;->d()Lm0/h;

    move-result-object v0

    :cond_47
    :goto_47
    if-nez v0, :cond_4d

    invoke-static {p0}, Lr/b;->d(Lm/q;)Lm0/h;

    move-result-object v0

    :cond_4d
    if-nez v0, :cond_5f

    sget-object v0, Lu/a;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm0/i;

    if-nez p0, :cond_5a

    return-object v1

    :cond_5a
    invoke-virtual {p0}, Lm0/i;->d()Lm0/h;

    move-result-object p0

    return-object p0

    :cond_5f
    return-object v0
.end method

.method public static Y0([J)Ljava/math/BigInteger;
    .registers 7

    const/16 v0, 0x20

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_5
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1a

    aget-wide v2, p0, v1

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_17

    rsub-int/lit8 v4, v1, 0x3

    shl-int/lit8 v4, v4, 0x3

    invoke-static {v4, v2, v3, v0}, Lm4/d;->E(IJ[B)V

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1a
    new-instance p0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object p0
.end method

.method public static Z(Ljava/lang/String;Le1/u;Z)Lr0/a;
    .registers 4

    new-instance p2, Lr0/a;

    iget-object v0, p1, Le1/u;->d:Le1/r;

    iget-object v0, v0, Le1/r;->g:Lk2/h;

    invoke-static {v0}, Lq4/k;->t(Lk2/h;)I

    invoke-direct {p2, p0, p1}, Lr0/a;-><init>(Ljava/lang/String;Lorg/bouncycastle/crypto/g;)V

    return-object p2
.end method

.method public static Z0([[S)[[S
    .registers 7

    const/4 v0, 0x0

    aget-object v1, p0, v0

    array-length v1, v1

    array-length v2, p0

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v2, v3, v4

    aput v1, v3, v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[S

    move v2, v0

    :goto_16
    array-length v3, p0

    if-ge v2, v3, :cond_2d

    move v3, v0

    :goto_1a
    aget-object v4, p0, v0

    array-length v4, v4

    if-ge v3, v4, :cond_2a

    aget-object v4, v1, v3

    aget-object v5, p0, v2

    aget-short v5, v5, v3

    aput-short v5, v4, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_2d
    return-object v1
.end method

.method public static final a([Ljava/lang/Object;IILb/f;)Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v1, p2, 0x3

    add-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_f
    if-ge v1, p2, :cond_2a

    if-lez v1, :cond_18

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_18
    add-int v2, p1, v1

    aget-object v2, p0, v2

    if-ne v2, p3, :cond_24

    const-string v2, "(this Collection)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_27

    :cond_24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_2a
    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "toString(...)"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static a0(Lg3/f;)Lorg/bouncycastle/crypto/v;
    .registers 2

    iget-object v0, p0, Lg3/f;->f:Lm/q;

    iget p0, p0, Lg3/f;->b:I

    invoke-static {p0, v0}, Lq4/k;->G(ILm/q;)Lorg/bouncycastle/crypto/v;

    move-result-object p0

    return-object p0
.end method

.method public static a1(ILorg/bouncycastle/crypto/v;)V
    .registers 3

    ushr-int/lit8 v0, p0, 0x18

    int-to-byte v0, v0

    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/v;->update(B)V

    ushr-int/lit8 v0, p0, 0x10

    int-to-byte v0, v0

    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/v;->update(B)V

    ushr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/v;->update(B)V

    int-to-byte p0, p0

    invoke-interface {p1, p0}, Lorg/bouncycastle/crypto/v;->update(B)V

    return-void
.end method

.method public static b([I[I[I)I
    .registers 13

    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    aget v5, p1, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    add-long/2addr v1, v5

    long-to-int v5, v1

    aput v5, p2, v0

    const/16 v0, 0x20

    ushr-long/2addr v1, v0

    const/4 v5, 0x1

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p2, v5

    ushr-long v1, v6, v0

    const/4 v5, 0x2

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p2, v5

    ushr-long v1, v6, v0

    const/4 v5, 0x3

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p2, v5

    ushr-long v1, v6, v0

    const/4 v5, 0x4

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p2, v5

    ushr-long v1, v6, v0

    const/4 v5, 0x5

    aget p0, p0, v5

    int-to-long v6, p0

    and-long/2addr v6, v3

    aget p0, p1, v5

    int-to-long p0, p0

    and-long/2addr p0, v3

    add-long/2addr v6, p0

    add-long/2addr v6, v1

    long-to-int p0, v6

    aput p0, p2, v5

    ushr-long p0, v6, v0

    long-to-int p0, p0

    return p0
.end method

.method public static b0(Le1/b;Lm/y;)[B
    .registers 3

    iget-boolean v0, p0, Le1/b;->c:Z

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    :try_start_5
    invoke-static {p0, p1}, Ls2/a;->i(Le1/b;Lm/y;)Ld0/t;

    move-result-object p0

    invoke-virtual {p0}, Lm/n;->g()[B

    move-result-object p0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_d} :catch_e

    return-object p0

    :catch_e
    return-object v0

    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "public key found"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b1(Ljava/lang/String;)Ljava/lang/String;
    .registers 14

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_7

    return-object p0

    :cond_7
    const/16 v0, 0x5c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/16 v2, 0x22

    if-gez v1, :cond_1c

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_1c

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v0, :cond_3c

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x23

    if-ne v4, v6, :cond_3c

    const-string v4, "\\#"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    goto :goto_3d

    :cond_3c
    move v4, v3

    :goto_3d
    move v6, v3

    move v7, v6

    move v8, v7

    move v9, v8

    move v10, v9

    :goto_42
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v12, 0x20

    if-eq v4, v11, :cond_a7

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-eq v11, v12, :cond_51

    move v9, v5

    :cond_51
    if-ne v11, v2, :cond_5d

    if-nez v6, :cond_58

    xor-int/lit8 v8, v8, 0x1

    goto :goto_a4

    :cond_58
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_5b
    move v6, v3

    goto :goto_a4

    :cond_5d
    if-ne v11, v0, :cond_69

    if-nez v6, :cond_69

    if-nez v8, :cond_69

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    move v6, v5

    goto :goto_a4

    :cond_69
    if-ne v11, v12, :cond_70

    if-nez v6, :cond_70

    if-nez v9, :cond_70

    goto :goto_a4

    :cond_70
    if-eqz v6, :cond_a0

    const/16 v12, 0x30

    if-gt v12, v11, :cond_7a

    const/16 v12, 0x39

    if-le v11, v12, :cond_8a

    :cond_7a
    const/16 v12, 0x61

    if-gt v12, v11, :cond_82

    const/16 v12, 0x66

    if-le v11, v12, :cond_8a

    :cond_82
    const/16 v12, 0x41

    if-gt v12, v11, :cond_a0

    const/16 v12, 0x46

    if-gt v11, v12, :cond_a0

    :cond_8a
    if-eqz v10, :cond_9e

    invoke-static {v10}, Lq4/k;->x(C)I

    move-result v6

    mul-int/lit8 v6, v6, 0x10

    invoke-static {v11}, Lq4/k;->x(C)I

    move-result v10

    add-int/2addr v10, v6

    int-to-char v6, v10

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v6, v3

    move v10, v6

    goto :goto_a4

    :cond_9e
    move v10, v11

    goto :goto_a4

    :cond_a0
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5b

    :goto_a4
    add-int/lit8 v4, v4, 0x1

    goto :goto_42

    :cond_a7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_c8

    :goto_ad
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p0, v5

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p0

    if-ne p0, v12, :cond_c8

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p0, v5

    if-eq v7, p0, :cond_c8

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p0, v5

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_ad

    :cond_c8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c([J[J[J)V
    .registers 8

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    const/4 v0, 0x1

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    const/4 v0, 0x2

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    const/4 v0, 0x3

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    const/4 v0, 0x4

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    const/4 v0, 0x5

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    const/4 v0, 0x6

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    const/4 v0, 0x7

    aget-wide v1, p0, v0

    aget-wide p0, p1, v0

    xor-long/2addr p0, v1

    aput-wide p0, p2, v0

    return-void
.end method

.method public static c0(Le1/b;)[B
    .registers 2

    iget-boolean v0, p0, Le1/b;->c:Z

    if-nez v0, :cond_f

    const/4 v0, 0x0

    :try_start_5
    invoke-static {p0}, Ls2/b;->p(Le1/b;)Ll0/p0;

    move-result-object p0

    invoke-virtual {p0}, Lm/n;->g()[B

    move-result-object p0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_d} :catch_e

    return-object p0

    :catch_e
    return-object v0

    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "private key found"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c1(J)J
    .registers 5

    const-wide v0, 0x2222222222222222L

    const/4 v2, 0x1

    invoke-static {v2, p0, p1, v0, v1}, Lt4/d;->p(IJJ)J

    move-result-wide p0

    const-wide v0, 0xc0c0c0c0c0c0c0cL

    const/4 v2, 0x2

    invoke-static {v2, p0, p1, v0, v1}, Lt4/d;->p(IJJ)J

    move-result-wide p0

    const-wide v0, 0xf000f000f000f0L

    const/4 v2, 0x4

    invoke-static {v2, p0, p1, v0, v1}, Lt4/d;->p(IJJ)J

    move-result-wide p0

    const-wide v0, 0xff000000ff00L

    const/16 v2, 0x8

    invoke-static {v2, p0, p1, v0, v1}, Lt4/d;->p(IJJ)J

    move-result-wide p0

    const-wide v0, 0xffff0000L

    const/16 v2, 0x10

    invoke-static {v2, p0, p1, v0, v1}, Lt4/d;->p(IJJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static d([I[I[I)I
    .registers 13

    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    aget v5, p1, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    add-long/2addr v1, v5

    long-to-int v5, v1

    aput v5, p2, v0

    const/16 v0, 0x20

    ushr-long/2addr v1, v0

    const/4 v5, 0x1

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p2, v5

    ushr-long v1, v6, v0

    const/4 v5, 0x2

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p2, v5

    ushr-long v1, v6, v0

    const/4 v5, 0x3

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p2, v5

    ushr-long v1, v6, v0

    const/4 v5, 0x4

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p2, v5

    ushr-long v1, v6, v0

    const/4 v5, 0x5

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p2, v5

    ushr-long v1, v6, v0

    const/4 v5, 0x6

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p2, v5

    ushr-long v1, v6, v0

    const/4 v5, 0x7

    aget p0, p0, v5

    int-to-long v6, p0

    and-long/2addr v6, v3

    aget p0, p1, v5

    int-to-long p0, p0

    and-long/2addr p0, v3

    add-long/2addr v6, p0

    add-long/2addr v6, v1

    long-to-int p0, v6

    aput p0, p2, v5

    ushr-long p0, v6, v0

    long-to-int p0, p0

    return p0
.end method

.method public static final d0(Lj/c;)Ljava/lang/Class;
    .registers 3

    const-string v0, "<this>"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p0, Lkotlin/jvm/internal/d;

    invoke-interface {p0}, Lkotlin/jvm/internal/d;->a()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_13

    goto/16 :goto_88

    :cond_13
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_8c

    goto/16 :goto_88

    :sswitch_20
    const-string v1, "short"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    goto :goto_88

    :cond_29
    const-class p0, Ljava/lang/Short;

    return-object p0

    :sswitch_2c
    const-string v1, "float"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    goto :goto_88

    :cond_35
    const-class p0, Ljava/lang/Float;

    return-object p0

    :sswitch_38
    const-string v1, "boolean"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    goto :goto_88

    :cond_41
    const-class p0, Ljava/lang/Boolean;

    return-object p0

    :sswitch_44
    const-string v1, "void"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    goto :goto_88

    :cond_4d
    const-class p0, Ljava/lang/Void;

    return-object p0

    :sswitch_50
    const-string v1, "long"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_59

    goto :goto_88

    :cond_59
    const-class p0, Ljava/lang/Long;

    return-object p0

    :sswitch_5c
    const-string v1, "char"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_65

    goto :goto_88

    :cond_65
    const-class p0, Ljava/lang/Character;

    return-object p0

    :sswitch_68
    const-string v1, "byte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_71

    goto :goto_88

    :cond_71
    const-class p0, Ljava/lang/Byte;

    return-object p0

    :sswitch_74
    const-string v1, "int"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7d

    goto :goto_88

    :cond_7d
    const-class p0, Ljava/lang/Integer;

    return-object p0

    :sswitch_80
    const-string v1, "double"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_89

    :goto_88
    return-object p0

    :cond_89
    const-class p0, Ljava/lang/Double;

    return-object p0

    :sswitch_data_8c
    .sparse-switch
        -0x4f08842f -> :sswitch_80
        0x197ef -> :sswitch_74
        0x2e6108 -> :sswitch_68
        0x2e9356 -> :sswitch_5c
        0x32c67c -> :sswitch_50
        0x375194 -> :sswitch_44
        0x3db6c28 -> :sswitch_38
        0x5d0225c -> :sswitch_2c
        0x685847c -> :sswitch_20
    .end sparse-switch
.end method

.method public static d1(II)Li/c;
    .registers 4

    const/high16 v0, -0x80000000

    if-gt p1, v0, :cond_9

    sget-object p0, Li/c;->x:Li/c;

    sget-object p0, Li/c;->x:Li/c;

    return-object p0

    :cond_9
    new-instance v0, Li/c;

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    invoke-direct {v0, p0, p1, v1}, Li/a;-><init>(III)V

    return-object v0
.end method

.method public static e([I[I[I)I
    .registers 13

    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    aget v5, p1, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    add-long/2addr v1, v5

    aget v5, p2, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    add-long/2addr v1, v5

    long-to-int v5, v1

    aput v5, p2, v0

    const/16 v0, 0x20

    ushr-long/2addr v1, v0

    const/4 v5, 0x1

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    aget v8, p2, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p2, v5

    ushr-long v1, v6, v0

    const/4 v5, 0x2

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    aget v8, p2, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p2, v5

    ushr-long v1, v6, v0

    const/4 v5, 0x3

    aget p0, p0, v5

    int-to-long v6, p0

    and-long/2addr v6, v3

    aget p0, p1, v5

    int-to-long p0, p0

    and-long/2addr p0, v3

    add-long/2addr v6, p0

    aget p0, p2, v5

    int-to-long p0, p0

    and-long/2addr p0, v3

    add-long/2addr v6, p0

    add-long/2addr v6, v1

    long-to-int p0, v6

    aput p0, p2, v5

    ushr-long p0, v6, v0

    long-to-int p0, p0

    return p0
.end method

.method public static e0(Lm/q;)Ljava/lang/String;
    .registers 2

    sget-object v0, Lm0/e;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_12

    sget-object v0, Lf0/d;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_12
    if-nez v0, :cond_1c

    sget-object v0, Lz/a;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_1c
    if-nez v0, :cond_26

    sget-object v0, Lg0/a;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_26
    if-nez v0, :cond_30

    sget-object v0, Ln/a;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_30
    if-nez v0, :cond_36

    invoke-static {p0}, Lr/b;->e(Lm/q;)Ljava/lang/String;

    move-result-object v0

    :cond_36
    if-nez v0, :cond_40

    sget-object v0, Lu/a;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_40
    if-nez v0, :cond_4b

    sget-object v0, Lt0/b;->d:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_4b
    return-object v0
.end method

.method public static e1(Lm/f;)Ljava/lang/String;
    .registers 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    instance-of v1, p0, Lm/z;

    const/16 v2, 0x23

    const/16 v3, 0x5c

    const/4 v4, 0x0

    if-eqz v1, :cond_2b

    instance-of v1, p0, Lm/g1;

    if-nez v1, :cond_2b

    check-cast p0, Lm/z;

    invoke-interface {p0}, Lm/z;->e()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_27

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_27
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_40

    :cond_2b
    :try_start_2b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lm/f;->d()Lm/u;

    move-result-object p0

    invoke-virtual {p0}, Lm/n;->g()[B

    move-result-object p0

    sget-object v1, Ln4/c;->a:Ln4/b;

    array-length v1, p0

    invoke-static {p0, v4, v1}, Ln4/c;->e([BII)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_40} :catch_b0

    :goto_40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-lt v1, v6, :cond_59

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_59

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_59

    goto :goto_5a

    :cond_59
    move v6, v4

    :goto_5a
    const-string v1, "\\"

    if-eq v6, p0, :cond_7e

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v7, 0x22

    if-eq v2, v7, :cond_76

    if-eq v2, v3, :cond_76

    const/16 v7, 0x2b

    if-eq v2, v7, :cond_76

    const/16 v7, 0x2c

    if-eq v2, v7, :cond_76

    packed-switch v2, :pswitch_data_b8

    add-int/lit8 v6, v6, 0x1

    goto :goto_5a

    :cond_76
    :pswitch_76
    invoke-virtual {v0, v6, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x2

    add-int/lit8 p0, p0, 0x1

    goto :goto_5a

    :cond_7e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    const/16 v2, 0x20

    if-lez p0, :cond_98

    :goto_86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-le p0, v4, :cond_98

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p0

    if-ne p0, v2, :cond_98

    invoke-virtual {v0, v4, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x2

    goto :goto_86

    :cond_98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p0, v5

    :goto_9d
    if-lt p0, v4, :cond_ab

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_ab

    invoke-virtual {v0, p0, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, -0x1

    goto :goto_9d

    :cond_ab
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_b0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Other value has no encoded form"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_b8
    .packed-switch 0x3b
        :pswitch_76
        :pswitch_76
        :pswitch_76
        :pswitch_76
    .end packed-switch
.end method

.method public static f([I[I[I)I
    .registers 13

    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    aget v5, p1, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    add-long/2addr v1, v5

    aget v5, p2, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    add-long/2addr v1, v5

    long-to-int v5, v1

    aput v5, p2, v0

    const/16 v0, 0x20

    ushr-long/2addr v1, v0

    const/4 v5, 0x1

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    aget v8, p2, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p2, v5

    ushr-long v1, v6, v0

    const/4 v5, 0x2

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    aget v8, p2, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p2, v5

    ushr-long v1, v6, v0

    const/4 v5, 0x3

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    aget v8, p2, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p2, v5

    ushr-long v1, v6, v0

    const/4 v5, 0x4

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    aget v8, p2, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p2, v5

    ushr-long v1, v6, v0

    const/4 v5, 0x5

    aget p0, p0, v5

    int-to-long v6, p0

    and-long/2addr v6, v3

    aget p0, p1, v5

    int-to-long p0, p0

    and-long/2addr p0, v3

    add-long/2addr v6, p0

    aget p0, p2, v5

    int-to-long p0, p0

    and-long/2addr p0, v3

    add-long/2addr v6, p0

    add-long/2addr v6, v1

    long-to-int p0, v6

    aput p0, p2, v5

    ushr-long p0, v6, v0

    long-to-int p0, p0

    return p0
.end method

.method public static f0()Ljava/util/Enumeration;
    .registers 2

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sget-object v1, Lm0/e;->a:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v0, v1}, Lq4/k;->h(Ljava/util/Vector;Ljava/util/Enumeration;)V

    sget-object v1, Lf0/d;->c:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v0, v1}, Lq4/k;->h(Ljava/util/Vector;Ljava/util/Enumeration;)V

    sget-object v1, Lz/a;->a:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v0, v1}, Lq4/k;->h(Ljava/util/Vector;Ljava/util/Enumeration;)V

    sget-object v1, Lg0/a;->c:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v0, v1}, Lq4/k;->h(Ljava/util/Vector;Ljava/util/Enumeration;)V

    sget-object v1, Ln/a;->c:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v0, v1}, Lq4/k;->h(Ljava/util/Vector;Ljava/util/Enumeration;)V

    sget-object v1, Lr/b;->c:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v0, v1}, Lq4/k;->h(Ljava/util/Vector;Ljava/util/Enumeration;)V

    sget-object v1, Lu/a;->c:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v0, v1}, Lq4/k;->h(Ljava/util/Vector;Ljava/util/Enumeration;)V

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public static g([I[I[I)I
    .registers 13

    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    aget v5, p1, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    add-long/2addr v1, v5

    aget v5, p2, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    add-long/2addr v1, v5

    long-to-int v5, v1

    aput v5, p2, v0

    const/16 v0, 0x20

    ushr-long/2addr v1, v0

    const/4 v5, 0x1

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    aget v8, p2, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p2, v5

    ushr-long v1, v6, v0

    const/4 v5, 0x2

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    aget v8, p2, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p2, v5

    ushr-long v1, v6, v0

    const/4 v5, 0x3

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    aget v8, p2, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p2, v5

    ushr-long v1, v6, v0

    const/4 v5, 0x4

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    aget v8, p2, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p2, v5

    ushr-long v1, v6, v0

    const/4 v5, 0x5

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    aget v8, p2, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p2, v5

    ushr-long v1, v6, v0

    const/4 v5, 0x6

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    aget v8, p2, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p2, v5

    ushr-long v1, v6, v0

    const/4 v5, 0x7

    aget p0, p0, v5

    int-to-long v6, p0

    and-long/2addr v6, v3

    aget p0, p1, v5

    int-to-long p0, p0

    and-long/2addr p0, v3

    add-long/2addr v6, p0

    aget p0, p2, v5

    int-to-long p0, p0

    and-long/2addr p0, v3

    add-long/2addr v6, p0

    add-long/2addr v6, v1

    long-to-int p0, v6

    aput p0, p2, v5

    ushr-long p0, v6, v0

    long-to-int p0, p0

    return p0
.end method

.method public static g0(Ljava/lang/String;)Lm/q;
    .registers 3

    sget-object v0, Lm0/e;->a:Ljava/util/Hashtable;

    invoke-static {p0}, Lm4/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/q;

    if-nez v0, :cond_1a

    sget-object v0, Lf0/d;->a:Ljava/util/Hashtable;

    invoke-static {p0}, Lm4/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/q;

    :cond_1a
    if-nez v0, :cond_28

    sget-object v0, Lz/a;->a:Ljava/util/Hashtable;

    invoke-static {p0}, Lm4/m;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/q;

    :cond_28
    if-nez v0, :cond_36

    sget-object v0, Lg0/a;->a:Ljava/util/Hashtable;

    invoke-static {p0}, Lm4/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/q;

    :cond_36
    if-nez v0, :cond_44

    sget-object v0, Ln/a;->a:Ljava/util/Hashtable;

    invoke-static {p0}, Lm4/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/q;

    :cond_44
    if-nez v0, :cond_4a

    invoke-static {p0}, Lr/b;->f(Ljava/lang/String;)Lm/q;

    move-result-object v0

    :cond_4a
    if-nez v0, :cond_58

    sget-object v0, Lu/a;->a:Ljava/util/Hashtable;

    invoke-static {p0}, Lm4/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/q;

    :cond_58
    if-nez v0, :cond_65

    const-string v1, "curve25519"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_65

    sget-object p0, Lm1/a;->a:Lm/q;

    return-object p0

    :cond_65
    return-object v0
.end method

.method public static h(Ljava/util/Vector;Ljava/util/Enumeration;)V
    .registers 3

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_e
    return-void
.end method

.method public static h0(II)Ljava/lang/String;
    .registers 4

    const/16 v0, 0x40

    const-string v1, "]"

    if-eq p0, v0, :cond_1b

    const/16 v0, 0x80

    if-eq p0, v0, :cond_18

    const/16 v0, 0xc0

    if-eq p0, v0, :cond_15

    const-string p0, "[UNIVERSAL "

    :goto_10
    invoke-static {p0, v1, p1}, Lb/b;->g(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_15
    const-string p0, "[PRIVATE "

    goto :goto_10

    :cond_18
    const-string p0, "[CONTEXT "

    goto :goto_10

    :cond_1b
    const-string p0, "[APPLICATION "

    goto :goto_10
.end method

.method public static i([[S[[S)[[S
    .registers 10

    array-length v0, p0

    array-length v1, p1

    if-ne v0, v1, :cond_40

    const/4 v0, 0x0

    aget-object v1, p0, v0

    array-length v2, v1

    aget-object v3, p1, v0

    array-length v3, v3

    if-ne v2, v3, :cond_40

    array-length v2, p0

    array-length v1, v1

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v1, v3, v4

    aput v2, v3, v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[S

    move v2, v0

    :goto_20
    array-length v3, p0

    if-ge v2, v3, :cond_3f

    move v3, v0

    :goto_24
    aget-object v4, p0, v0

    array-length v4, v4

    if-ge v3, v4, :cond_3c

    aget-object v4, v1, v2

    aget-object v5, p0, v2

    aget-short v5, v5, v3

    aget-object v6, p1, v2

    aget-short v6, v6, v3

    sget-object v7, Lo3/a;->a:[[B

    xor-int/2addr v5, v6

    int-to-short v5, v5

    aput-short v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    :cond_3f
    return-object v1

    :cond_40
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Addition is not possible!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static j([[S)[[S
    .registers 3

    array-length v0, p0

    const/4 v1, 0x0

    aget-object v1, p0, v1

    array-length v1, v1

    if-ne v0, v1, :cond_10

    invoke-static {p0}, Lq4/k;->Z0([[S)[[S

    move-result-object v0

    invoke-static {p0, v0}, Lq4/k;->i([[S[[S)[[S

    move-result-object p0

    return-object p0

    :cond_10
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Addition is not possible!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static k(Lt4/d;Lb1/b;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Lk0/d;

    const/16 v1, 0x3d

    invoke-direct {v0, p2, v1}, Lk0/d;-><init>(Ljava/lang/String;C)V

    const/4 p2, 0x1

    invoke-static {v0, p2}, Lq4/k;->D0(Lk0/d;Z)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lq4/k;->D0(Lk0/d;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lj0/d;->a(Ljava/lang/String;)Lm/q;

    move-result-object p0

    invoke-static {v0}, Lq4/k;->b1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p1, Lb1/b;->h:Ljava/lang/Object;

    check-cast v0, Lt4/d;

    invoke-virtual {v0, p2, p0}, Lt4/d;->H0(Ljava/lang/String;Lm/q;)Lm/f;

    move-result-object p2

    iget-object p1, p1, Lb1/b;->i:Ljava/lang/Object;

    check-cast p1, Ljava/util/Vector;

    new-instance v0, Lj0/b;

    new-instance v1, Lj0/a;

    invoke-direct {v1, p0, p2}, Lj0/a;-><init>(Lm/q;Lm/f;)V

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Lm/b1;

    invoke-direct {p0, v1}, Lm/y;-><init>(Lm/f;)V

    const/4 p2, -0x1

    iput p2, p0, Lm/b1;->x:I

    iput-object p0, v0, Lj0/b;->c:Lm/y;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public static k0([I[I)Z
    .registers 6

    const/4 v0, 0x3

    :goto_1
    if-ltz v0, :cond_15

    aget v1, p0, v0

    const/high16 v2, -0x80000000

    xor-int/2addr v1, v2

    aget v3, p1, v0

    xor-int/2addr v2, v3

    if-ge v1, v2, :cond_f

    const/4 p0, 0x0

    return p0

    :cond_f
    if-le v1, v2, :cond_12

    goto :goto_15

    :cond_12
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_15
    :goto_15
    const/4 p0, 0x1

    return p0
.end method

.method public static l(III[I[I)I
    .registers 14

    int-to-long v0, p2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    aget p2, p3, p0

    int-to-long v4, p2

    and-long/2addr v4, v2

    aget p2, p4, p1

    int-to-long v6, p2

    and-long/2addr v6, v2

    add-long/2addr v4, v6

    add-long/2addr v4, v0

    long-to-int p2, v4

    aput p2, p4, p1

    const/16 p2, 0x20

    ushr-long v0, v4, p2

    add-int/lit8 v4, p0, 0x1

    aget v4, p3, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-int/lit8 v6, p1, 0x1

    aget v7, p4, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v4, v7

    add-long/2addr v4, v0

    long-to-int v0, v4

    aput v0, p4, v6

    ushr-long v0, v4, p2

    add-int/lit8 v4, p0, 0x2

    aget v4, p3, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-int/lit8 v6, p1, 0x2

    aget v7, p4, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v4, v7

    add-long/2addr v4, v0

    long-to-int v0, v4

    aput v0, p4, v6

    ushr-long v0, v4, p2

    add-int/lit8 v4, p0, 0x3

    aget v4, p3, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-int/lit8 v6, p1, 0x3

    aget v7, p4, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v4, v7

    add-long/2addr v4, v0

    long-to-int v0, v4

    aput v0, p4, v6

    ushr-long v0, v4, p2

    add-int/lit8 v4, p0, 0x4

    aget v4, p3, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-int/lit8 v6, p1, 0x4

    aget v7, p4, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v4, v7

    add-long/2addr v4, v0

    long-to-int v0, v4

    aput v0, p4, v6

    ushr-long v0, v4, p2

    add-int/lit8 p0, p0, 0x5

    aget p0, p3, p0

    int-to-long v4, p0

    and-long/2addr v4, v2

    add-int/lit8 p1, p1, 0x5

    aget p0, p4, p1

    int-to-long v6, p0

    and-long/2addr v2, v6

    add-long/2addr v4, v2

    add-long/2addr v4, v0

    long-to-int p0, v4

    aput p0, p4, p1

    ushr-long p0, v4, p2

    long-to-int p0, p0

    return p0
.end method

.method public static l0([I[I)Z
    .registers 6

    const/4 v0, 0x5

    :goto_1
    if-ltz v0, :cond_15

    aget v1, p0, v0

    const/high16 v2, -0x80000000

    xor-int/2addr v1, v2

    aget v3, p1, v0

    xor-int/2addr v2, v3

    if-ge v1, v2, :cond_f

    const/4 p0, 0x0

    return p0

    :cond_f
    if-le v1, v2, :cond_12

    goto :goto_15

    :cond_12
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_15
    :goto_15
    const/4 p0, 0x1

    return p0
.end method

.method public static m(III[I[I)I
    .registers 14

    int-to-long v0, p2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    aget p2, p3, p0

    int-to-long v4, p2

    and-long/2addr v4, v2

    aget p2, p4, p1

    int-to-long v6, p2

    and-long/2addr v6, v2

    add-long/2addr v4, v6

    add-long/2addr v4, v0

    long-to-int p2, v4

    aput p2, p4, p1

    const/16 p2, 0x20

    ushr-long v0, v4, p2

    add-int/lit8 v4, p0, 0x1

    aget v4, p3, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-int/lit8 v6, p1, 0x1

    aget v7, p4, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v4, v7

    add-long/2addr v4, v0

    long-to-int v0, v4

    aput v0, p4, v6

    ushr-long v0, v4, p2

    add-int/lit8 v4, p0, 0x2

    aget v4, p3, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-int/lit8 v6, p1, 0x2

    aget v7, p4, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v4, v7

    add-long/2addr v4, v0

    long-to-int v0, v4

    aput v0, p4, v6

    ushr-long v0, v4, p2

    add-int/lit8 v4, p0, 0x3

    aget v4, p3, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-int/lit8 v6, p1, 0x3

    aget v7, p4, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v4, v7

    add-long/2addr v4, v0

    long-to-int v0, v4

    aput v0, p4, v6

    ushr-long v0, v4, p2

    add-int/lit8 v4, p0, 0x4

    aget v4, p3, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-int/lit8 v6, p1, 0x4

    aget v7, p4, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v4, v7

    add-long/2addr v4, v0

    long-to-int v0, v4

    aput v0, p4, v6

    ushr-long v0, v4, p2

    add-int/lit8 v4, p0, 0x5

    aget v4, p3, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-int/lit8 v6, p1, 0x5

    aget v7, p4, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v4, v7

    add-long/2addr v4, v0

    long-to-int v0, v4

    aput v0, p4, v6

    ushr-long v0, v4, p2

    add-int/lit8 v4, p0, 0x6

    aget v4, p3, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-int/lit8 v6, p1, 0x6

    aget v7, p4, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v4, v7

    add-long/2addr v4, v0

    long-to-int v0, v4

    aput v0, p4, v6

    ushr-long v0, v4, p2

    add-int/lit8 p0, p0, 0x7

    aget p0, p3, p0

    int-to-long v4, p0

    and-long/2addr v4, v2

    add-int/lit8 p1, p1, 0x7

    aget p0, p4, p1

    int-to-long v6, p0

    and-long/2addr v2, v6

    add-long/2addr v4, v2

    add-long/2addr v4, v0

    long-to-int p0, v4

    aput p0, p4, p1

    ushr-long p0, v4, p2

    long-to-int p0, p0

    return p0
.end method

.method public static m0([I[I)Z
    .registers 6

    const/4 v0, 0x7

    :goto_1
    if-ltz v0, :cond_15

    aget v1, p0, v0

    const/high16 v2, -0x80000000

    xor-int/2addr v1, v2

    aget v3, p1, v0

    xor-int/2addr v2, v3

    if-ge v1, v2, :cond_f

    const/4 p0, 0x0

    return p0

    :cond_f
    if-le v1, v2, :cond_12

    goto :goto_15

    :cond_12
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_15
    :goto_15
    const/4 p0, 0x1

    return p0
.end method

.method public static n([I[I)I
    .registers 13

    const/4 v0, 0x6

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const/16 v5, 0xc

    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    add-long/2addr v1, v6

    long-to-int v6, v1

    aput v6, p0, v0

    aput v6, p1, v5

    const/16 v0, 0x20

    ushr-long/2addr v1, v0

    const/4 v5, 0x7

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    const/16 v8, 0xd

    aget v9, p1, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    add-long/2addr v6, v9

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p0, v5

    aput v1, p1, v8

    ushr-long v1, v6, v0

    const/16 v5, 0x8

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    const/16 v8, 0xe

    aget v9, p1, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    add-long/2addr v6, v9

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p0, v5

    aput v1, p1, v8

    ushr-long v1, v6, v0

    const/16 v5, 0x9

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    const/16 v8, 0xf

    aget v9, p1, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    add-long/2addr v6, v9

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p0, v5

    aput v1, p1, v8

    ushr-long v1, v6, v0

    const/16 v5, 0xa

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    const/16 v8, 0x10

    aget v9, p1, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    add-long/2addr v6, v9

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p0, v5

    aput v1, p1, v8

    ushr-long v1, v6, v0

    const/16 v5, 0xb

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    const/16 v8, 0x11

    aget v9, p1, v8

    int-to-long v9, v9

    and-long/2addr v3, v9

    add-long/2addr v6, v3

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p0, v5

    aput v1, p1, v8

    ushr-long p0, v6, v0

    long-to-int p0, p0

    return p0
.end method

.method public static n0([I)Z
    .registers 5

    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_7

    return v0

    :cond_7
    move v1, v2

    :goto_8
    const/4 v3, 0x4

    if-ge v1, v3, :cond_13

    aget v3, p0, v1

    if-eqz v3, :cond_10

    return v0

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_13
    return v2
.end method

.method public static o([I[I)I
    .registers 13

    const/16 v0, 0x8

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const/16 v5, 0x10

    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    add-long/2addr v1, v6

    long-to-int v6, v1

    aput v6, p0, v0

    aput v6, p1, v5

    const/16 v0, 0x20

    ushr-long/2addr v1, v0

    const/16 v5, 0x9

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    const/16 v8, 0x11

    aget v9, p1, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    add-long/2addr v6, v9

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p0, v5

    aput v1, p1, v8

    ushr-long v1, v6, v0

    const/16 v5, 0xa

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    const/16 v8, 0x12

    aget v9, p1, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    add-long/2addr v6, v9

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p0, v5

    aput v1, p1, v8

    ushr-long v1, v6, v0

    const/16 v5, 0xb

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    const/16 v8, 0x13

    aget v9, p1, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    add-long/2addr v6, v9

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p0, v5

    aput v1, p1, v8

    ushr-long v1, v6, v0

    const/16 v5, 0xc

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    const/16 v8, 0x14

    aget v9, p1, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    add-long/2addr v6, v9

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p0, v5

    aput v1, p1, v8

    ushr-long v1, v6, v0

    const/16 v5, 0xd

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    const/16 v8, 0x15

    aget v9, p1, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    add-long/2addr v6, v9

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p0, v5

    aput v1, p1, v8

    ushr-long v1, v6, v0

    const/16 v5, 0xe

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    const/16 v8, 0x16

    aget v9, p1, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    add-long/2addr v6, v9

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p0, v5

    aput v1, p1, v8

    ushr-long v1, v6, v0

    const/16 v5, 0xf

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    const/16 v8, 0x17

    aget v9, p1, v8

    int-to-long v9, v9

    and-long/2addr v3, v9

    add-long/2addr v6, v3

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p0, v5

    aput v1, p1, v8

    ushr-long p0, v6, v0

    long-to-int p0, p0

    return p0
.end method

.method public static o0([I)Z
    .registers 5

    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_7

    return v0

    :cond_7
    move v1, v2

    :goto_8
    const/4 v3, 0x6

    if-ge v1, v3, :cond_13

    aget v3, p0, v1

    if-eqz v3, :cond_10

    return v0

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_13
    return v2
.end method

.method public static p(Ljava/lang/StringBuilder;Ljava/lang/Object;Lh/l;)V
    .registers 3

    if-eqz p2, :cond_c

    invoke-interface {p2, p1}, Lh/l;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void

    :cond_c
    if-nez p1, :cond_10

    const/4 p2, 0x1

    goto :goto_12

    :cond_10
    instance-of p2, p1, Ljava/lang/CharSequence;

    :goto_12
    if-eqz p2, :cond_1a

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void

    :cond_1a
    instance-of p2, p1, Ljava/lang/Character;

    if-eqz p2, :cond_28

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    return-void

    :cond_28
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method public static p0([I)Z
    .registers 5

    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_7

    return v0

    :cond_7
    move v1, v2

    :goto_8
    const/16 v3, 0x8

    if-ge v1, v3, :cond_14

    aget v3, p0, v1

    if-eqz v3, :cond_11

    return v0

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_14
    return v2
.end method

.method public static q(Ljava/lang/StringBuilder;Lj0/b;Ljava/util/Hashtable;)V
    .registers 7

    iget-object v0, p1, Lj0/b;->c:Lm/y;

    iget-object v0, v0, Lm/y;->c:[Lm/f;

    array-length v0, v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_22

    invoke-virtual {p1}, Lj0/b;->j()[Lj0/a;

    move-result-object p1

    const/4 v0, 0x0

    move v2, v0

    :goto_e
    array-length v3, p1

    if-eq v2, v3, :cond_2f

    if-eqz v1, :cond_15

    move v1, v0

    goto :goto_1a

    :cond_15
    const/16 v3, 0x2b

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1a
    aget-object v3, p1, v2

    invoke-static {p0, v3, p2}, Lq4/k;->r(Ljava/lang/StringBuilder;Lj0/a;Ljava/util/Hashtable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_22
    invoke-virtual {p1}, Lj0/b;->h()Lj0/a;

    move-result-object v0

    if-eqz v0, :cond_2f

    invoke-virtual {p1}, Lj0/b;->h()Lj0/a;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lq4/k;->r(Ljava/lang/StringBuilder;Lj0/a;Ljava/util/Hashtable;)V

    :cond_2f
    return-void
.end method

.method public static q0([J)Z
    .registers 8

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_a

    return v0

    :cond_a
    const/4 v1, 0x1

    move v2, v1

    :goto_c
    const/4 v3, 0x4

    if-ge v2, v3, :cond_1b

    aget-wide v3, p0, v2

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_18

    return v0

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_1b
    return v1
.end method

.method public static r(Ljava/lang/StringBuilder;Lj0/a;Ljava/util/Hashtable;)V
    .registers 4

    iget-object v0, p1, Lj0/a;->c:Lm/q;

    invoke-virtual {p2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_e

    :goto_a
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_15

    :cond_e
    iget-object p2, p1, Lj0/a;->c:Lm/q;

    invoke-virtual {p2}, Lm/q;->u()Ljava/lang/String;

    move-result-object p2

    goto :goto_a

    :goto_15
    const/16 p2, 0x3d

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lj0/a;->d:Lm/f;

    invoke-static {p1}, Lq4/k;->e1(Lm/f;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static r0([I)Z
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/4 v2, 0x4

    if-ge v1, v2, :cond_d

    aget v2, p0, v1

    if-eqz v2, :cond_a

    return v0

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_d
    const/4 p0, 0x1

    return p0
.end method

.method public static s(Ljava/math/BigInteger;)I
    .registers 2

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    const/16 v0, 0x800

    if-lt p0, v0, :cond_20

    const/16 v0, 0xc00

    if-lt p0, v0, :cond_1d

    const/16 v0, 0x1e00

    if-lt p0, v0, :cond_1a

    const/16 v0, 0x3c00

    if-lt p0, v0, :cond_17

    const/16 p0, 0x100

    return p0

    :cond_17
    const/16 p0, 0xc0

    return p0

    :cond_1a
    const/16 p0, 0x80

    return p0

    :cond_1d
    const/16 p0, 0x70

    return p0

    :cond_20
    const/16 v0, 0x400

    if-lt p0, v0, :cond_27

    const/16 p0, 0x50

    return p0

    :cond_27
    const/16 p0, 0x14

    return p0
.end method

.method public static s0([I)Z
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/4 v2, 0x6

    if-ge v1, v2, :cond_d

    aget v2, p0, v1

    if-eqz v2, :cond_a

    return v0

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_d
    const/4 p0, 0x1

    return p0
.end method

.method public static t(Lk2/h;)I
    .registers 2

    invoke-virtual {p0}, Lk2/h;->l()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    div-int/lit8 p0, p0, 0x2

    const/16 v0, 0x100

    if-le p0, v0, :cond_d

    return v0

    :cond_d
    return p0
.end method

.method public static t0([I)Z
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/16 v2, 0x8

    if-ge v1, v2, :cond_e

    aget v2, p0, v1

    if-eqz v2, :cond_b

    return v0

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_e
    const/4 p0, 0x1

    return p0
.end method

.method public static u(Lm/f;)Ljava/lang/String;
    .registers 10

    invoke-static {p0}, Lq4/k;->e1(Lm/f;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_41

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x23

    if-ne v0, v3, :cond_41

    :try_start_14
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-static {v0, p0}, Ln4/c;->b(ILjava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lm/u;->o([B)Lm/u;

    move-result-object v0
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_21} :catch_2c

    instance-of v3, v0, Lm/z;

    if-eqz v3, :cond_41

    check-cast v0, Lm/z;

    invoke-interface {v0}, Lm/z;->e()Ljava/lang/String;

    move-result-object p0

    goto :goto_41

    :catch_2c
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unknown encoding in name: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_41
    :goto_41
    invoke-static {p0}, Lm4/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x2

    if-ge v0, v3, :cond_4d

    return-object p0

    :cond_4d
    sub-int/2addr v0, v2

    move v3, v1

    :goto_4f
    const/16 v4, 0x5c

    const/16 v5, 0x20

    if-ge v3, v0, :cond_66

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v4, :cond_66

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v5, :cond_66

    add-int/lit8 v3, v3, 0x2

    goto :goto_4f

    :cond_66
    add-int/lit8 v6, v3, 0x1

    move v7, v0

    :goto_69
    if-le v7, v6, :cond_7c

    add-int/lit8 v8, v7, -0x1

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v4, :cond_7c

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v5, :cond_7c

    add-int/lit8 v7, v7, -0x2

    goto :goto_69

    :cond_7c
    if-gtz v3, :cond_80

    if-ge v7, v0, :cond_85

    :cond_80
    add-int/2addr v7, v2

    invoke-virtual {p0, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_85
    const-string v0, "  "

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_8e

    return-object p0

    :cond_8e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_9a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_af

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v1, v5, :cond_a8

    if-eq v3, v5, :cond_ac

    :cond_a8
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v3

    :cond_ac
    add-int/lit8 v2, v2, 0x1

    goto :goto_9a

    :cond_af
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static u0([J)Z
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/4 v2, 0x3

    if-ge v1, v2, :cond_11

    aget-wide v2, p0, v1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_e

    return v0

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_11
    const/4 p0, 0x1

    return p0
.end method

.method public static v(Lm/a0;)V
    .registers 5

    iget p0, p0, Lm/a0;->d:I

    const/16 v0, 0x80

    if-ne p0, v0, :cond_7

    return-void

    :cond_7
    const/16 v1, 0x40

    const-string v2, "CONTEXT"

    if-eq p0, v1, :cond_1b

    if-eq p0, v0, :cond_19

    const/16 v0, 0xc0

    if-eq p0, v0, :cond_16

    const-string p0, "UNIVERSAL"

    goto :goto_1d

    :cond_16
    const-string p0, "PRIVATE"

    goto :goto_1d

    :cond_19
    move-object p0, v2

    goto :goto_1d

    :cond_1b
    const-string p0, "APPLICATION"

    :goto_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Expected "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " tag but found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static v0([J)Z
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/4 v2, 0x4

    if-ge v1, v2, :cond_11

    aget-wide v2, p0, v1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_e

    return v0

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_11
    const/4 p0, 0x1

    return p0
.end method

.method public static final w(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    .registers 4

    if-nez p1, :cond_6

    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    return-void

    :cond_6
    :try_start_6
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_a

    return-void

    :catchall_a
    move-exception p0

    if-eq p1, p0, :cond_29

    sget-object v0, Le/a;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1a

    goto :goto_26

    :cond_1a
    sget-object v0, Ld/a;->a:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_29

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_29

    :cond_26
    :goto_26
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_29
    :goto_29
    return-void
.end method

.method public static w0([I[I[I)V
    .registers 26

    const/4 v0, 0x0

    aget v1, p1, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const/4 v5, 0x1

    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    const/4 v8, 0x2

    aget v9, p1, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    const/4 v11, 0x3

    aget v12, p1, v11

    int-to-long v12, v12

    and-long/2addr v12, v3

    aget v14, p0, v0

    int-to-long v14, v14

    and-long/2addr v14, v3

    move/from16 v16, v0

    move-wide/from16 v17, v1

    mul-long v0, v14, v17

    long-to-int v2, v0

    aput v2, p2, v16

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    mul-long v19, v14, v6

    add-long v0, v19, v0

    move/from16 p1, v2

    long-to-int v2, v0

    aput v2, p2, v5

    ushr-long v0, v0, p1

    mul-long v19, v14, v9

    add-long v0, v19, v0

    long-to-int v2, v0

    aput v2, p2, v8

    ushr-long v0, v0, p1

    mul-long/2addr v14, v12

    add-long/2addr v14, v0

    long-to-int v0, v14

    aput v0, p2, v11

    ushr-long v0, v14, p1

    long-to-int v0, v0

    const/4 v1, 0x4

    aput v0, p2, v1

    :goto_48
    if-ge v5, v1, :cond_9f

    aget v0, p0, v5

    int-to-long v14, v0

    and-long/2addr v14, v3

    mul-long v19, v14, v17

    aget v0, p2, v5

    int-to-long v1, v0

    and-long v0, v1, v3

    add-long v0, v19, v0

    long-to-int v2, v0

    aput v2, p2, v5

    ushr-long v0, v0, p1

    mul-long v19, v14, v6

    add-int/lit8 v2, v5, 0x1

    aget v11, p2, v2

    move-wide/from16 v21, v3

    int-to-long v3, v11

    and-long v3, v3, v21

    add-long v19, v19, v3

    add-long v0, v19, v0

    long-to-int v3, v0

    aput v3, p2, v2

    ushr-long v0, v0, p1

    mul-long v3, v14, v9

    add-int/lit8 v11, v5, 0x2

    aget v8, p2, v11

    move-wide/from16 v19, v0

    int-to-long v0, v8

    and-long v0, v0, v21

    add-long/2addr v3, v0

    add-long v3, v3, v19

    long-to-int v0, v3

    aput v0, p2, v11

    ushr-long v0, v3, p1

    mul-long/2addr v14, v12

    add-int/lit8 v3, v5, 0x3

    aget v4, p2, v3

    move-wide/from16 v19, v0

    int-to-long v0, v4

    and-long v0, v0, v21

    add-long/2addr v14, v0

    add-long v14, v14, v19

    long-to-int v0, v14

    aput v0, p2, v3

    ushr-long v0, v14, p1

    add-int/lit8 v5, v5, 0x4

    long-to-int v0, v0

    aput v0, p2, v5

    move v5, v2

    move-wide/from16 v3, v21

    const/4 v1, 0x4

    goto :goto_48

    :cond_9f
    return-void
.end method

.method public static x(C)I
    .registers 3

    const/16 v0, 0x30

    if-gt v0, p0, :cond_a

    const/16 v1, 0x39

    if-gt p0, v1, :cond_a

    sub-int/2addr p0, v0

    return p0

    :cond_a
    const/16 v0, 0x61

    if-gt v0, p0, :cond_15

    const/16 v0, 0x66

    if-gt p0, v0, :cond_15

    add-int/lit8 p0, p0, -0x57

    return p0

    :cond_15
    add-int/lit8 p0, p0, -0x37

    return p0
.end method

.method public static x0([I[I[I)V
    .registers 29

    const/4 v0, 0x0

    aget v1, p1, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const/4 v5, 0x1

    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    const/4 v8, 0x2

    aget v9, p1, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    const/4 v11, 0x3

    aget v12, p1, v11

    int-to-long v12, v12

    and-long/2addr v12, v3

    const/4 v14, 0x4

    aget v15, p1, v14

    move/from16 v16, v0

    move-wide/from16 v17, v1

    int-to-long v0, v15

    and-long/2addr v0, v3

    const/4 v2, 0x5

    aget v15, p1, v2

    move-wide/from16 v19, v3

    move v4, v2

    int-to-long v2, v15

    and-long v2, v2, v19

    aget v15, p0, v16

    move/from16 p1, v4

    move/from16 v21, v5

    int-to-long v4, v15

    and-long v4, v4, v19

    move v15, v8

    move-wide/from16 v22, v9

    mul-long v8, v4, v17

    long-to-int v10, v8

    aput v10, p2, v16

    const/16 v10, 0x20

    ushr-long/2addr v8, v10

    mul-long v24, v4, v6

    add-long v8, v24, v8

    move/from16 v16, v10

    long-to-int v10, v8

    aput v10, p2, v21

    ushr-long v8, v8, v16

    mul-long v24, v4, v22

    add-long v8, v24, v8

    long-to-int v10, v8

    aput v10, p2, v15

    ushr-long v8, v8, v16

    mul-long v24, v4, v12

    add-long v8, v24, v8

    long-to-int v10, v8

    aput v10, p2, v11

    ushr-long v8, v8, v16

    mul-long v10, v4, v0

    add-long/2addr v10, v8

    long-to-int v8, v10

    aput v8, p2, v14

    ushr-long v8, v10, v16

    mul-long/2addr v4, v2

    add-long/2addr v4, v8

    long-to-int v8, v4

    aput v8, p2, p1

    ushr-long v4, v4, v16

    long-to-int v4, v4

    const/4 v5, 0x6

    aput v4, p2, v5

    :goto_6f
    move/from16 v4, v21

    if-ge v4, v5, :cond_df

    aget v8, p0, v4

    int-to-long v8, v8

    and-long v8, v8, v19

    mul-long v10, v8, v17

    aget v14, p2, v4

    int-to-long v14, v14

    and-long v14, v14, v19

    add-long/2addr v10, v14

    long-to-int v14, v10

    aput v14, p2, v4

    ushr-long v10, v10, v16

    mul-long v14, v8, v6

    add-int/lit8 v21, v4, 0x1

    aget v5, p2, v21

    move-wide/from16 v24, v0

    int-to-long v0, v5

    and-long v0, v0, v19

    add-long/2addr v14, v0

    add-long/2addr v14, v10

    long-to-int v0, v14

    aput v0, p2, v21

    ushr-long v0, v14, v16

    mul-long v10, v8, v22

    add-int/lit8 v5, v4, 0x2

    aget v14, p2, v5

    int-to-long v14, v14

    and-long v14, v14, v19

    add-long/2addr v10, v14

    add-long/2addr v10, v0

    long-to-int v0, v10

    aput v0, p2, v5

    ushr-long v0, v10, v16

    mul-long v10, v8, v12

    add-int/lit8 v5, v4, 0x3

    aget v14, p2, v5

    int-to-long v14, v14

    and-long v14, v14, v19

    add-long/2addr v10, v14

    add-long/2addr v10, v0

    long-to-int v0, v10

    aput v0, p2, v5

    ushr-long v0, v10, v16

    mul-long v10, v8, v24

    add-int/lit8 v5, v4, 0x4

    aget v14, p2, v5

    int-to-long v14, v14

    and-long v14, v14, v19

    add-long/2addr v10, v14

    add-long/2addr v10, v0

    long-to-int v0, v10

    aput v0, p2, v5

    ushr-long v0, v10, v16

    mul-long/2addr v8, v2

    add-int/lit8 v5, v4, 0x5

    aget v10, p2, v5

    int-to-long v10, v10

    and-long v10, v10, v19

    add-long/2addr v8, v10

    add-long/2addr v8, v0

    long-to-int v0, v8

    aput v0, p2, v5

    ushr-long v0, v8, v16

    add-int/lit8 v4, v4, 0x6

    long-to-int v0, v0

    aput v0, p2, v4

    move-wide/from16 v0, v24

    const/4 v5, 0x6

    goto :goto_6f

    :cond_df
    return-void
.end method

.method public static y(I[I[I)V
    .registers 5

    const/4 v0, 0x0

    aget v0, p1, v0

    aput v0, p2, p0

    add-int/lit8 v0, p0, 0x1

    const/4 v1, 0x1

    aget v1, p1, v1

    aput v1, p2, v0

    add-int/lit8 v0, p0, 0x2

    const/4 v1, 0x2

    aget v1, p1, v1

    aput v1, p2, v0

    const/4 v0, 0x3

    add-int/2addr p0, v0

    aget p1, p1, v0

    aput p1, p2, p0

    return-void
.end method

.method public static y0([I[I[I)V
    .registers 35

    const/4 v0, 0x0

    aget v1, p1, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const/4 v5, 0x1

    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    const/4 v8, 0x2

    aget v9, p1, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    const/4 v11, 0x3

    aget v12, p1, v11

    int-to-long v12, v12

    and-long/2addr v12, v3

    const/4 v14, 0x4

    aget v15, p1, v14

    move/from16 v16, v0

    move-wide/from16 v17, v1

    int-to-long v0, v15

    and-long/2addr v0, v3

    const/4 v2, 0x5

    aget v15, p1, v2

    move-wide/from16 v19, v3

    move v4, v2

    int-to-long v2, v15

    and-long v2, v2, v19

    const/4 v15, 0x6

    move/from16 v21, v4

    aget v4, p1, v15

    move/from16 v22, v5

    move-wide/from16 v23, v6

    int-to-long v5, v4

    and-long v4, v5, v19

    const/4 v6, 0x7

    aget v7, p1, v6

    move/from16 v25, v6

    int-to-long v6, v7

    and-long v6, v6, v19

    move/from16 v26, v8

    aget v8, p0, v16

    move/from16 v27, v11

    move-wide/from16 v28, v12

    int-to-long v11, v8

    and-long v11, v11, v19

    move v8, v14

    move v13, v15

    mul-long v14, v11, v17

    move/from16 p1, v8

    long-to-int v8, v14

    aput v8, p2, v16

    const/16 v8, 0x20

    ushr-long/2addr v14, v8

    mul-long v30, v11, v23

    add-long v14, v30, v14

    move/from16 v16, v8

    long-to-int v8, v14

    aput v8, p2, v22

    ushr-long v14, v14, v16

    mul-long v30, v11, v9

    add-long v14, v30, v14

    long-to-int v8, v14

    aput v8, p2, v26

    ushr-long v14, v14, v16

    mul-long v30, v11, v28

    add-long v14, v30, v14

    long-to-int v8, v14

    aput v8, p2, v27

    ushr-long v14, v14, v16

    mul-long v26, v11, v0

    add-long v14, v26, v14

    long-to-int v8, v14

    aput v8, p2, p1

    ushr-long v14, v14, v16

    mul-long v26, v11, v2

    add-long v14, v26, v14

    long-to-int v8, v14

    aput v8, p2, v21

    ushr-long v14, v14, v16

    mul-long v26, v11, v4

    add-long v14, v26, v14

    long-to-int v8, v14

    aput v8, p2, v13

    ushr-long v13, v14, v16

    mul-long/2addr v11, v6

    add-long/2addr v11, v13

    long-to-int v8, v11

    aput v8, p2, v25

    ushr-long v11, v11, v16

    long-to-int v8, v11

    const/16 v11, 0x8

    aput v8, p2, v11

    move/from16 v8, v22

    :goto_9c
    if-ge v8, v11, :cond_142

    aget v12, p0, v8

    int-to-long v12, v12

    and-long v12, v12, v19

    mul-long v14, v12, v17

    aget v11, p2, v8

    move-wide/from16 v21, v0

    int-to-long v0, v11

    and-long v0, v0, v19

    add-long/2addr v14, v0

    long-to-int v0, v14

    aput v0, p2, v8

    ushr-long v0, v14, v16

    mul-long v14, v12, v23

    add-int/lit8 v11, v8, 0x1

    move-wide/from16 v25, v0

    aget v0, p2, v11

    int-to-long v0, v0

    and-long v0, v0, v19

    add-long/2addr v14, v0

    add-long v14, v14, v25

    long-to-int v0, v14

    aput v0, p2, v11

    ushr-long v0, v14, v16

    mul-long v14, v12, v9

    add-int/lit8 v25, v8, 0x2

    move-wide/from16 v26, v0

    aget v0, p2, v25

    int-to-long v0, v0

    and-long v0, v0, v19

    add-long/2addr v14, v0

    add-long v14, v14, v26

    long-to-int v0, v14

    aput v0, p2, v25

    ushr-long v0, v14, v16

    mul-long v14, v12, v28

    add-int/lit8 v25, v8, 0x3

    move-wide/from16 v26, v0

    aget v0, p2, v25

    int-to-long v0, v0

    and-long v0, v0, v19

    add-long/2addr v14, v0

    add-long v14, v14, v26

    long-to-int v0, v14

    aput v0, p2, v25

    ushr-long v0, v14, v16

    mul-long v14, v12, v21

    add-int/lit8 v25, v8, 0x4

    move-wide/from16 v26, v0

    aget v0, p2, v25

    int-to-long v0, v0

    and-long v0, v0, v19

    add-long/2addr v14, v0

    add-long v14, v14, v26

    long-to-int v0, v14

    aput v0, p2, v25

    ushr-long v0, v14, v16

    mul-long v14, v12, v2

    add-int/lit8 v25, v8, 0x5

    move-wide/from16 v26, v0

    aget v0, p2, v25

    int-to-long v0, v0

    and-long v0, v0, v19

    add-long/2addr v14, v0

    add-long v14, v14, v26

    long-to-int v0, v14

    aput v0, p2, v25

    ushr-long v0, v14, v16

    mul-long v14, v12, v4

    add-int/lit8 v25, v8, 0x6

    move-wide/from16 v26, v0

    aget v0, p2, v25

    int-to-long v0, v0

    and-long v0, v0, v19

    add-long/2addr v14, v0

    add-long v14, v14, v26

    long-to-int v0, v14

    aput v0, p2, v25

    ushr-long v0, v14, v16

    mul-long/2addr v12, v6

    add-int/lit8 v14, v8, 0x7

    aget v15, p2, v14

    move-wide/from16 v25, v0

    int-to-long v0, v15

    and-long v0, v0, v19

    add-long/2addr v12, v0

    add-long v12, v12, v25

    long-to-int v0, v12

    aput v0, p2, v14

    ushr-long v0, v12, v16

    add-int/lit8 v8, v8, 0x8

    long-to-int v0, v0

    aput v0, p2, v8

    move v8, v11

    move-wide/from16 v0, v21

    const/16 v11, 0x8

    goto/16 :goto_9c

    :cond_142
    return-void
.end method

.method public static z([J[J)V
    .registers 5

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    const/4 v0, 0x1

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    const/4 v0, 0x2

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    const/4 v0, 0x3

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    const/4 v0, 0x4

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    const/4 v0, 0x5

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    const/4 v0, 0x6

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    const/4 v0, 0x7

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    return-void
.end method

.method public static z0([I[I[I)V
    .registers 38

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static/range {p0 .. p2}, Lq4/k;->x0([I[I[I)V

    const/4 v3, 0x6

    aget v4, v1, v3

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    const/4 v8, 0x7

    aget v9, v1, v8

    int-to-long v9, v9

    and-long/2addr v9, v6

    const/16 v11, 0x8

    aget v11, v1, v11

    int-to-long v11, v11

    and-long/2addr v11, v6

    const/16 v13, 0x9

    aget v13, v1, v13

    int-to-long v13, v13

    and-long/2addr v13, v6

    const/16 v15, 0xa

    aget v15, v1, v15

    move-wide/from16 v16, v6

    int-to-long v6, v15

    and-long v6, v6, v16

    const/16 v15, 0xb

    aget v15, v1, v15

    move/from16 v18, v8

    move-wide/from16 v19, v9

    int-to-long v8, v15

    and-long v8, v8, v16

    aget v10, v0, v3

    move-wide/from16 v21, v4

    int-to-long v3, v10

    and-long v3, v3, v16

    move-wide/from16 v23, v3

    mul-long v3, v23, v21

    long-to-int v5, v3

    const/16 v10, 0xc

    aput v5, v2, v10

    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    mul-long v25, v23, v19

    add-long v3, v25, v3

    const/16 v25, 0xd

    move/from16 v26, v5

    long-to-int v5, v3

    aput v5, v2, v25

    ushr-long v3, v3, v26

    mul-long v27, v23, v11

    add-long v3, v27, v3

    const/16 v25, 0xe

    long-to-int v5, v3

    aput v5, v2, v25

    ushr-long v3, v3, v26

    mul-long v27, v23, v13

    add-long v3, v27, v3

    const/16 v25, 0xf

    long-to-int v5, v3

    aput v5, v2, v25

    ushr-long v3, v3, v26

    mul-long v27, v23, v6

    add-long v3, v27, v3

    const/16 v25, 0x10

    long-to-int v5, v3

    aput v5, v2, v25

    ushr-long v3, v3, v26

    mul-long v23, v23, v8

    add-long v3, v23, v3

    const/16 v23, 0x11

    long-to-int v5, v3

    aput v5, v2, v23

    ushr-long v3, v3, v26

    long-to-int v3, v3

    const/16 v4, 0x12

    aput v3, v2, v4

    move/from16 v23, v10

    const/4 v5, 0x1

    :goto_8c
    const/4 v15, 0x6

    if-ge v5, v15, :cond_11b

    add-int/lit8 v24, v23, 0x1

    add-int v25, v15, v5

    aget v3, v0, v25

    move/from16 v28, v5

    int-to-long v4, v3

    and-long v3, v4, v16

    mul-long v29, v3, v21

    aget v5, v2, v24

    move-wide/from16 v31, v11

    int-to-long v10, v5

    and-long v10, v10, v16

    add-long v10, v29, v10

    long-to-int v5, v10

    aput v5, v2, v24

    ushr-long v10, v10, v26

    mul-long v29, v3, v19

    add-int/lit8 v5, v23, 0x2

    aget v12, v2, v5

    move-wide/from16 v33, v3

    int-to-long v3, v12

    and-long v3, v3, v16

    add-long v29, v29, v3

    add-long v3, v29, v10

    long-to-int v10, v3

    aput v10, v2, v5

    ushr-long v3, v3, v26

    mul-long v10, v33, v31

    add-int/lit8 v5, v23, 0x3

    aget v12, v2, v5

    move-wide/from16 v29, v3

    int-to-long v3, v12

    and-long v3, v3, v16

    add-long/2addr v10, v3

    add-long v10, v10, v29

    long-to-int v3, v10

    aput v3, v2, v5

    ushr-long v3, v10, v26

    mul-long v10, v33, v13

    add-int/lit8 v5, v23, 0x4

    aget v12, v2, v5

    move-wide/from16 v29, v3

    int-to-long v3, v12

    and-long v3, v3, v16

    add-long/2addr v10, v3

    add-long v10, v10, v29

    long-to-int v3, v10

    aput v3, v2, v5

    ushr-long v3, v10, v26

    mul-long v10, v33, v6

    add-int/lit8 v5, v23, 0x5

    aget v12, v2, v5

    move-wide/from16 v29, v3

    int-to-long v3, v12

    and-long v3, v3, v16

    add-long/2addr v10, v3

    add-long v10, v10, v29

    long-to-int v3, v10

    aput v3, v2, v5

    ushr-long v3, v10, v26

    mul-long v10, v33, v8

    add-int/lit8 v5, v23, 0x6

    aget v12, v2, v5

    move-wide/from16 v29, v3

    int-to-long v3, v12

    and-long v3, v3, v16

    add-long/2addr v10, v3

    add-long v10, v10, v29

    long-to-int v3, v10

    aput v3, v2, v5

    ushr-long v3, v10, v26

    add-int/lit8 v23, v23, 0x7

    long-to-int v3, v3

    aput v3, v2, v23

    add-int/lit8 v5, v28, 0x1

    move/from16 v23, v24

    move-wide/from16 v11, v31

    const/16 v4, 0x12

    const/16 v10, 0xc

    goto/16 :goto_8c

    :cond_11b
    invoke-static {v2, v2}, Lq4/k;->n([I[I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v15, 0x6

    invoke-static {v4, v15, v4, v2, v2}, Lq4/k;->l(III[I[I)I

    move-result v5

    add-int/2addr v5, v3

    const/16 v6, 0x12

    const/16 v12, 0xc

    invoke-static {v6, v12, v5, v2, v2}, Lq4/k;->l(III[I[I)I

    move-result v5

    add-int/2addr v5, v3

    new-array v3, v15, [I

    new-array v6, v15, [I

    invoke-static {v0, v0, v3}, Lq4/k;->J([I[I[I)Z

    move-result v0

    invoke-static {v1, v1, v6}, Lq4/k;->J([I[I[I)Z

    move-result v1

    if-eq v0, v1, :cond_13e

    const/4 v4, 0x1

    :cond_13e
    new-array v0, v12, [I

    invoke-static {v3, v6, v0}, Lq4/k;->x0([I[I[I)V

    if-eqz v4, :cond_14a

    invoke-static {v12, v15, v0, v2}, Ls2/b;->d(II[I[I)I

    move-result v0

    goto :goto_14e

    :cond_14a
    invoke-static {v12, v15, v0, v2}, Ls2/b;->T(II[I[I)I

    move-result v0

    :goto_14e
    add-int/2addr v5, v0

    const/16 v0, 0x18

    const/16 v6, 0x12

    invoke-static {v0, v5, v6, v2}, Ls2/b;->f(III[I)V

    return-void
.end method


# virtual methods
.method public abstract i0(S)S
.end method

.method public abstract j0(SS)S
.end method
