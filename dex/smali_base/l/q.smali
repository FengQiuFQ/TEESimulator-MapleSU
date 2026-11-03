.class public abstract Ll/q;
.super Ll/p;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"


# direct methods
.method public static f1(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z
    .registers 18

    move-object/from16 v0, p1

    const-string v1, "<this>"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "other"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of v1, v0, Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v1, :cond_1e

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x2

    move/from16 v13, p2

    invoke-static {p0, v0, v6, v13, v1}, Ll/q;->j1(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result p0

    if-ltz p0, :cond_74

    goto :goto_73

    :cond_1e
    move/from16 v13, p2

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    new-instance v3, Li/c;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-le v2, v4, :cond_2d

    move v2, v4

    :cond_2d
    invoke-direct {v3, v6, v2, v7}, Li/a;-><init>(III)V

    instance-of v2, p0, Ljava/lang/String;

    iget v14, v3, Li/a;->d:I

    if-eqz v2, :cond_55

    if-eqz v1, :cond_55

    if-gez v14, :cond_3b

    goto :goto_70

    :cond_3b
    move v11, v6

    :goto_3c
    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    move-object v10, p0

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v9, 0x0

    invoke-static/range {v8 .. v13}, Ll/q;->k1(Ljava/lang/String;ILjava/lang/String;IIZ)Z

    move-result v1

    if-eqz v1, :cond_4e

    goto :goto_71

    :cond_4e
    if-eq v11, v14, :cond_70

    add-int/lit8 v11, v11, 0x1

    move/from16 v13, p2

    goto :goto_3c

    :cond_55
    if-gez v14, :cond_58

    goto :goto_70

    :cond_58
    move v3, v6

    :goto_59
    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    move-object v2, p0

    move/from16 v5, p2

    invoke-static/range {v0 .. v5}, Ll/q;->l1(Ljava/lang/CharSequence;ILjava/lang/CharSequence;IIZ)Z

    move-result v1

    if-eqz v1, :cond_69

    move v11, v3

    goto :goto_71

    :cond_69
    if-eq v3, v14, :cond_70

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p1

    goto :goto_59

    :cond_70
    :goto_70
    const/4 v11, -0x1

    :goto_71
    if-ltz v11, :cond_74

    :goto_73
    return v7

    :cond_74
    return v6
.end method

.method public static g1(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 10

    if-nez p2, :cond_7

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v2, p2, v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Ll/q;->k1(Ljava/lang/String;ILjava/lang/String;IIZ)Z

    move-result p0

    return p0
.end method

.method public static final h1(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I
    .registers 16

    const-string v0, "<this>"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "string"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez p3, :cond_18

    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_11

    goto :goto_18

    :cond_11
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_18
    :goto_18
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    new-instance v1, Li/c;

    if-gez p2, :cond_21

    const/4 p2, 0x0

    :cond_21
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v0, v2, :cond_28

    move v0, v2

    :cond_28
    const/4 v2, 0x1

    invoke-direct {v1, p2, v0, v2}, Li/a;-><init>(III)V

    instance-of v0, p0, Ljava/lang/String;

    iget v1, v1, Li/a;->d:I

    if-eqz v0, :cond_4e

    if-le p2, v1, :cond_35

    goto :goto_6a

    :cond_35
    move v5, p2

    :goto_36
    move-object v4, p0

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v3, 0x0

    move-object v2, p1

    move v7, p3

    invoke-static/range {v2 .. v7}, Ll/q;->k1(Ljava/lang/String;ILjava/lang/String;IIZ)Z

    move-result p1

    if-eqz p1, :cond_47

    return v5

    :cond_47
    if-eq v5, v1, :cond_6a

    add-int/lit8 v5, v5, 0x1

    move-object p1, v2

    move p3, v7

    goto :goto_36

    :cond_4e
    move-object v2, p1

    move v7, p3

    if-le p2, v1, :cond_53

    goto :goto_6a

    :cond_53
    move v9, p2

    :goto_54
    move v11, v7

    const/4 v7, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    move-object v8, p0

    move-object v6, v2

    invoke-static/range {v6 .. v11}, Ll/q;->l1(Ljava/lang/CharSequence;ILjava/lang/CharSequence;IIZ)Z

    move-result p0

    move v7, v11

    if-eqz p0, :cond_64

    return v9

    :cond_64
    if-eq v9, v1, :cond_6a

    add-int/lit8 v9, v9, 0x1

    move-object p0, v8

    goto :goto_54

    :cond_6a
    :goto_6a
    const/4 p0, -0x1

    return p0
.end method

.method public static i1(Ljava/lang/CharSequence;CI)I
    .registers 7

    const-string p2, "<this>"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of p2, p0, Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p2, :cond_38

    const/4 p2, 0x1

    new-array v1, p2, [C

    aput-char p1, v1, v0

    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_1c

    aget-char p1, v1, v0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result p0

    return p0

    :cond_1c
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    sub-int/2addr p1, p2

    if-ltz p1, :cond_36

    move p2, v0

    :goto_24
    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    aget-char v3, v1, v0

    invoke-static {v3, v2, v0}, Lq4/k;->O(CCZ)Z

    move-result v2

    if-eqz v2, :cond_31

    return p2

    :cond_31
    if-eq p2, p1, :cond_36

    add-int/lit8 p2, p2, 0x1

    goto :goto_24

    :cond_36
    const/4 p0, -0x1

    return p0

    :cond_38
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result p0

    return p0
.end method

.method public static synthetic j1(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I
    .registers 7

    and-int/lit8 v0, p4, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    move p2, v1

    :cond_6
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_b

    move p3, v1

    :cond_b
    invoke-static {p0, p1, p2, p3}, Ll/q;->h1(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I

    move-result p0

    return p0
.end method

.method public static final k1(Ljava/lang/String;ILjava/lang/String;IIZ)Z
    .registers 12

    const-string v0, "<this>"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "other"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez p5, :cond_11

    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result p0

    return p0

    :cond_11
    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v1, p5

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public static final l1(Ljava/lang/CharSequence;ILjava/lang/CharSequence;IIZ)Z
    .registers 10

    const-string v0, "<this>"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "other"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    if-ltz p3, :cond_39

    if-ltz p1, :cond_39

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_39

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, p4

    if-le p3, v1, :cond_1e

    goto :goto_39

    :cond_1e
    move v1, v0

    :goto_1f
    if-ge v1, p4, :cond_37

    add-int v2, p1, v1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    add-int v3, p3, v1

    invoke-interface {p2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v2, v3, p5}, Lq4/k;->O(CCZ)Z

    move-result v2

    if-nez v2, :cond_34

    return v0

    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :cond_37
    const/4 p0, 0x1

    return p0

    :cond_39
    :goto_39
    return v0
.end method

.method public static m1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ll/q;->g1(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr v1, p1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, "substring(...)"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_19
    return-object p0
.end method

.method public static n1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 10

    const-string v0, "<this>"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "newValue"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p3}, Ll/q;->h1(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I

    move-result v1

    if-gez v1, :cond_12

    return-object p0

    :cond_12
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1a

    goto :goto_1b

    :cond_1a
    move v3, v2

    :goto_1b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v4

    if-ltz v5, :cond_52

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    :cond_2c
    invoke-virtual {v4, p0, v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v0, v1, v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_41

    add-int/2addr v1, v3

    invoke-static {p0, p1, v1, p3}, Ll/q;->h1(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I

    move-result v1

    if-gtz v1, :cond_2c

    :cond_41
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v4, p0, v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "toString(...)"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0

    :cond_52
    new-instance p0, Ljava/lang/OutOfMemoryError;

    invoke-direct {p0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p0
.end method

.method public static final o1(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .registers 11

    if-ltz p2, :cond_5a

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Ll/q;->h1(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_51

    const/4 v3, 0x1

    if-ne p2, v3, :cond_e

    goto :goto_51

    :cond_e
    if-lez p2, :cond_12

    move v4, v3

    goto :goto_13

    :cond_12
    move v4, v0

    :goto_13
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    if-eqz v4, :cond_1d

    if-le p2, v6, :cond_1c

    goto :goto_1d

    :cond_1c
    move v6, p2

    :cond_1d
    :goto_1d
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    move v6, v0

    :cond_21
    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v1

    if-eqz v4, :cond_3b

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v7, p2, -0x1

    if-eq v1, v7, :cond_41

    :cond_3b
    invoke-static {p0, p1, v6, v0}, Ll/q;->h1(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I

    move-result v1

    if-ne v1, v2, :cond_21

    :cond_41
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, v6, p1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v5

    :cond_51
    :goto_51
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lt4/d;->n0(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_5a
    const-string p0, "Limit must be non-negative, but was "

    invoke-static {p2, p0}, Lb/b;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static p1(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .registers 6

    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    const/4 v0, 0x0

    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_e

    goto :goto_13

    :cond_e
    invoke-static {p0, v2, v0}, Ll/q;->o1(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_13
    :goto_13
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const-string v0, "asList(...)"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Ll/c;

    new-instance v2, Lb/a;

    invoke-direct {v2, p1}, Lb/a;-><init>(Ljava/util/List;)V

    invoke-direct {v0, p0, v2}, Ll/c;-><init>(Ljava/lang/String;Lh/p;)V

    new-instance p1, Lk/c;

    invoke-direct {p1, v0}, Lk/c;-><init>(Ll/c;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lb/k;->V0(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1}, Lk/c;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_38
    move-object v2, p1

    check-cast v2, Ll/b;

    invoke-virtual {v2}, Ll/b;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5d

    invoke-virtual {v2}, Ll/b;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li/c;

    const-string v3, "range"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget v3, v2, Li/a;->c:I

    iget v2, v2, Li/a;->d:I

    add-int/2addr v2, v1

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_38

    :cond_5d
    return-object v0
.end method

.method public static q1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "<this>"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "delimiter"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "missingDelimiterValue"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-static {p0, p1, v0, v0, v1}, Ll/q;->j1(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_19

    return-object p2

    :cond_19
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, "substring(...)"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static r1(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 8

    const-string v0, "<this>"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_e
    if-gt v3, v0, :cond_38

    if-nez v4, :cond_14

    move v5, v3

    goto :goto_15

    :cond_14
    move v5, v0

    :goto_15
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-nez v6, :cond_28

    invoke-static {v5}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v5

    if-eqz v5, :cond_26

    goto :goto_28

    :cond_26
    move v5, v2

    goto :goto_29

    :cond_28
    :goto_28
    move v5, v1

    :goto_29
    if-nez v4, :cond_32

    if-nez v5, :cond_2f

    move v4, v1

    goto :goto_e

    :cond_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_32
    if-nez v5, :cond_35

    goto :goto_38

    :cond_35
    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    :cond_38
    :goto_38
    add-int/2addr v0, v1

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static varargs s1(Ljava/lang/String;[C)Ljava/lang/String;
    .registers 11

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_9
    if-gt v3, v0, :cond_35

    if-nez v4, :cond_f

    move v5, v3

    goto :goto_10

    :cond_f
    move v5, v0

    :goto_10
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    array-length v6, p1

    move v7, v2

    :goto_16
    if-ge v7, v6, :cond_20

    aget-char v8, p1, v7

    if-ne v5, v8, :cond_1d

    goto :goto_21

    :cond_1d
    add-int/lit8 v7, v7, 0x1

    goto :goto_16

    :cond_20
    const/4 v7, -0x1

    :goto_21
    if-ltz v7, :cond_25

    move v5, v1

    goto :goto_26

    :cond_25
    move v5, v2

    :goto_26
    if-nez v4, :cond_2f

    if-nez v5, :cond_2c

    move v4, v1

    goto :goto_9

    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_2f
    if-nez v5, :cond_32

    goto :goto_35

    :cond_32
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_35
    :goto_35
    add-int/2addr v0, v1

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
