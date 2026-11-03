.class public final Ll0/k0;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/util/Set;

.field public b:Ljava/util/Set;

.field public c:Ljava/util/Set;

.field public d:Ljava/util/Set;

.field public e:Ljava/util/Set;

.field public f:Ljava/util/HashSet;

.field public g:Ljava/util/HashSet;

.field public h:Ljava/util/HashSet;

.field public i:Ljava/util/HashSet;

.field public j:Ljava/util/HashSet;

.field public k:Ljava/util/HashSet;

.field public l:Ljava/util/HashSet;


# direct methods
.method public static e(Ljava/util/Collection;Ljava/util/Collection;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    goto :goto_5a

    :cond_4
    const/4 v1, 0x0

    if-eqz p0, :cond_5b

    if-nez p1, :cond_a

    goto :goto_5b

    :cond_a
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    if-eq v2, v3, :cond_15

    goto :goto_5b

    :cond_15
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_19
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_27
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_56

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    if-ne v2, v4, :cond_35

    move v4, v0

    goto :goto_52

    :cond_35
    if-eqz v2, :cond_51

    if-nez v4, :cond_3a

    goto :goto_51

    :cond_3a
    instance-of v5, v2, [B

    if-eqz v5, :cond_4c

    instance-of v5, v4, [B

    if-eqz v5, :cond_4c

    move-object v5, v2

    check-cast v5, [B

    check-cast v4, [B

    invoke-static {v5, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    goto :goto_52

    :cond_4c
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_52

    :cond_51
    :goto_51
    move v4, v1

    :goto_52
    if-eqz v4, :cond_27

    move v2, v0

    goto :goto_57

    :cond_56
    move v2, v1

    :goto_57
    if-nez v2, :cond_19

    goto :goto_5b

    :cond_5a
    :goto_5a
    return v0

    :cond_5b
    :goto_5b
    return v1
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq v0, v3, :cond_26

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1b

    goto :goto_3b

    :cond_1b
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3c

    goto :goto_3b

    :cond_26
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v0, 0x2e

    if-eq p0, v0, :cond_35

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3c

    goto :goto_3b

    :cond_35
    invoke-static {v1, p1}, Ll0/k0;->o(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3c

    :goto_3b
    return v2

    :cond_3c
    return v4
.end method

.method public static g(Ll0/y;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Ll0/y;->c:Lm/f;

    invoke-static {p0}, Lm/u0;->r(Ljava/lang/Object;)Lm/u0;

    move-result-object p0

    iget-object p0, p0, Lm/u0;->c:[B

    invoke-static {p0}, Lm4/m;->a([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static h(Ljava/util/Collection;)I
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, [B

    if-eqz v2, :cond_1f

    check-cast v1, [B

    invoke-static {v1}, Lm4/d;->u([B)I

    move-result v1

    :goto_1c
    add-int/2addr v1, v0

    move v0, v1

    goto :goto_8

    :cond_1f
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1c

    :cond_24
    return v0
.end method

.method public static j([B[B)Z
    .registers 9

    array-length v0, p0

    array-length v1, p1

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_8

    return v2

    :cond_8
    new-array v1, v0, [B

    invoke-static {p1, v0, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v3, v0, [B

    new-array v4, v0, [B

    :goto_11
    if-ge v2, v0, :cond_26

    aget-byte v5, p1, v2

    aget-byte v6, v1, v2

    and-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v2

    aget-byte v5, p0, v2

    aget-byte v6, v1, v2

    and-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_26
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method public static k(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "//"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1f

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_1f
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v3, 0x0

    if-eq v1, v4, :cond_2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_2e
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v4, :cond_52

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_52
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_61

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_68

    goto :goto_67

    :cond_61
    invoke-static {p0, p1}, Ll0/k0;->o(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_68

    :goto_67
    return v2

    :cond_68
    return v3
.end method

.method public static l(Ljava/util/Set;)Ljava/lang/String;
    .registers 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_73

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_20

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    :goto_2d
    array-length v6, v1

    div-int/lit8 v6, v6, 0x2

    const-string v7, "."

    if-ge v5, v6, :cond_4b

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_3d

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3d
    aget-byte v6, v1, v5

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2d

    :cond_4b
    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v1

    div-int/lit8 v5, v5, 0x2

    :goto_53
    array-length v6, v1

    if-ge v5, v6, :cond_6b

    if-eqz v2, :cond_5a

    move v2, v4

    goto :goto_5d

    :cond_5a
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5d
    aget-byte v6, v1, v5

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_53

    :cond_6b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    :cond_73
    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static m(Ljava/util/HashSet;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_55

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_20

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ll0/j0;->h(Ljava/lang/Object;)Ll0/j0;

    move-result-object v1

    iget-object v2, v1, Ll0/j0;->c:Lm/q;

    invoke-virtual {v2}, Lm/q;->u()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_36
    iget-object v1, v1, Ll0/j0;->d:Lm/n;

    invoke-interface {v1}, Lm/f;->d()Lm/u;

    move-result-object v1

    invoke-virtual {v1}, Lm/n;->getEncoded()[B

    move-result-object v1

    sget-object v2, Ln4/c;->a:Ln4/b;

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Ln4/c;->e([BII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_4b} :catch_4c

    goto :goto_e

    :catch_4c
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    :cond_55
    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static n(Lm/x;Lm/x;)Z
    .registers 11

    invoke-virtual {p1}, Lm/x;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_a

    goto/16 :goto_bb

    :cond_a
    invoke-virtual {p1}, Lm/x;->size()I

    move-result v0

    invoke-virtual {p0}, Lm/x;->size()I

    move-result v3

    if-le v0, v3, :cond_16

    goto/16 :goto_bb

    :cond_16
    invoke-virtual {p1, v1}, Lm/x;->v(I)Lm/f;

    move-result-object v0

    invoke-static {v0}, Lj0/b;->i(Lm/f;)Lj0/b;

    move-result-object v0

    move v3, v1

    move v4, v3

    :goto_20
    invoke-virtual {p0}, Lm/x;->size()I

    move-result v5

    if-ge v3, v5, :cond_3b

    invoke-virtual {p0, v3}, Lm/x;->v(I)Lm/f;

    move-result-object v4

    invoke-static {v4}, Lj0/b;->i(Lm/f;)Lj0/b;

    move-result-object v4

    invoke-static {v0, v4}, Lq4/k;->F0(Lj0/b;Lj0/b;)Z

    move-result v4

    if-eqz v4, :cond_35

    goto :goto_3c

    :cond_35
    add-int/lit8 v4, v3, 0x1

    move v8, v4

    move v4, v3

    move v3, v8

    goto :goto_20

    :cond_3b
    move v3, v4

    :goto_3c
    invoke-virtual {p1}, Lm/x;->size()I

    move-result v0

    invoke-virtual {p0}, Lm/x;->size()I

    move-result v4

    sub-int/2addr v4, v3

    if-le v0, v4, :cond_49

    goto/16 :goto_bb

    :cond_49
    move v0, v1

    :goto_4a
    invoke-virtual {p1}, Lm/x;->size()I

    move-result v4

    if-ge v0, v4, :cond_bc

    invoke-virtual {p1, v0}, Lm/x;->v(I)Lm/f;

    move-result-object v4

    invoke-static {v4}, Lj0/b;->i(Lm/f;)Lj0/b;

    move-result-object v4

    add-int v5, v3, v0

    invoke-virtual {p0, v5}, Lm/x;->v(I)Lm/f;

    move-result-object v5

    invoke-static {v5}, Lj0/b;->i(Lm/f;)Lj0/b;

    move-result-object v5

    iget-object v6, v4, Lj0/b;->c:Lm/y;

    iget-object v6, v6, Lm/y;->c:[Lm/f;

    array-length v6, v6

    iget-object v7, v5, Lj0/b;->c:Lm/y;

    iget-object v7, v7, Lm/y;->c:[Lm/f;

    array-length v7, v7

    if-ne v6, v7, :cond_bb

    invoke-virtual {v4}, Lj0/b;->h()Lj0/a;

    move-result-object v6

    iget-object v6, v6, Lj0/a;->c:Lm/q;

    invoke-virtual {v5}, Lj0/b;->h()Lj0/a;

    move-result-object v7

    iget-object v7, v7, Lj0/a;->c:Lm/q;

    invoke-virtual {v6, v7}, Lm/u;->n(Lm/u;)Z

    move-result v6

    if-nez v6, :cond_81

    goto :goto_bb

    :cond_81
    iget-object v6, v4, Lj0/b;->c:Lm/y;

    iget-object v6, v6, Lm/y;->c:[Lm/f;

    array-length v6, v6

    if-ne v6, v2, :cond_b1

    invoke-virtual {v4}, Lj0/b;->h()Lj0/a;

    move-result-object v6

    iget-object v6, v6, Lj0/a;->c:Lm/q;

    sget-object v7, Lk0/c;->f:Lm/q;

    invoke-virtual {v6, v7}, Lm/u;->n(Lm/u;)Z

    move-result v6

    if-eqz v6, :cond_b1

    invoke-virtual {v5}, Lj0/b;->h()Lj0/a;

    move-result-object v5

    iget-object v5, v5, Lj0/a;->d:Lm/f;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lj0/b;->h()Lj0/a;

    move-result-object v4

    iget-object v4, v4, Lj0/a;->d:Lm/f;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b8

    goto :goto_bb

    :cond_b1
    invoke-static {v4, v5}, Lq4/k;->F0(Lj0/b;Lj0/b;)Z

    move-result v4

    if-nez v4, :cond_b8

    goto :goto_bb

    :cond_b8
    add-int/lit8 v0, v0, 0x1

    goto :goto_4a

    :cond_bb
    :goto_bb
    return v1

    :cond_bc
    return v2
.end method

.method public static o(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_d
    invoke-static {p1}, Lm4/m;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lm4/m;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    array-length v2, p1

    if-gt v0, v2, :cond_1a

    goto :goto_3d

    :cond_1a
    array-length v0, p0

    array-length v2, p1

    sub-int/2addr v0, v2

    const/4 v2, -0x1

    move v3, v2

    :goto_1f
    array-length v4, p1

    if-ge v3, v4, :cond_42

    if-ne v3, v2, :cond_31

    add-int v4, v3, v0

    aget-object v4, p0, v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    goto :goto_3d

    :cond_31
    aget-object v4, p1, v3

    add-int v5, v3, v0

    aget-object v5, p0, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3f

    :goto_3d
    const/4 p0, 0x0

    return p0

    :cond_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    :cond_42
    return v1
.end method


# virtual methods
.method public final a(Ll0/y;)V
    .registers 5

    iget v0, p1, Ll0/y;->d:I

    iget-object v1, p1, Ll0/y;->c:Lm/f;

    if-eqz v0, :cond_da

    const/4 v2, 0x1

    if-eq v0, v2, :cond_ae

    const/4 v2, 0x2

    if-eq v0, v2, :cond_7b

    const/4 v2, 0x4

    if-eq v0, v2, :cond_73

    const/4 v2, 0x6

    if-eq v0, v2, :cond_46

    const/4 p1, 0x7

    if-eq v0, p1, :cond_17

    goto/16 :goto_108

    :cond_17
    iget-object p0, p0, Ll0/k0;->e:Ljava/util/Set;

    invoke-static {v1}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object p1

    iget-object p1, p1, Lm/r;->c:[B

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_27

    goto/16 :goto_108

    :cond_27
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_108

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {p1, v0}, Ll0/k0;->j([B[B)Z

    move-result v0

    if-nez v0, :cond_3e

    goto :goto_2b

    :cond_3e
    new-instance p0, Ll0/g0;

    const-string p1, "IP is from an excluded subtree."

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_46
    iget-object p0, p0, Ll0/k0;->d:Ljava/util/Set;

    invoke-static {p1}, Ll0/k0;->g(Ll0/y;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_54

    goto/16 :goto_108

    :cond_54
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_58
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_108

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, Ll0/k0;->k(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6b

    goto :goto_58

    :cond_6b
    new-instance p0, Ll0/g0;

    const-string p1, "URI is from an excluded subtree."

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_73
    invoke-static {v1}, Lj0/c;->i(Ljava/lang/Object;)Lj0/c;

    move-result-object p1

    invoke-virtual {p0, p1}, Ll0/k0;->b(Lj0/c;)V

    return-void

    :cond_7b
    iget-object p0, p0, Ll0/k0;->b:Ljava/util/Set;

    invoke-static {p1}, Ll0/k0;->g(Ll0/y;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_89

    goto/16 :goto_108

    :cond_89
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_108

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, Ll0/k0;->o(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a6

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a6

    goto :goto_8d

    :cond_a6
    new-instance p0, Ll0/g0;

    const-string p1, "DNS is from an excluded subtree."

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_ae
    iget-object p0, p0, Ll0/k0;->c:Ljava/util/Set;

    invoke-static {p1}, Ll0/k0;->g(Ll0/y;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_bb

    goto :goto_108

    :cond_bb
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_bf
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_108

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, Ll0/k0;->f(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d2

    goto :goto_bf

    :cond_d2
    new-instance p0, Ll0/g0;

    const-string p1, "Email address is from an excluded subtree."

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_da
    iget-object p0, p0, Ll0/k0;->f:Ljava/util/HashSet;

    invoke-static {v1}, Ll0/j0;->h(Ljava/lang/Object;)Ll0/j0;

    move-result-object p1

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e7

    goto :goto_108

    :cond_e7
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_eb
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_108

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ll0/j0;->h(Ljava/lang/Object;)Ll0/j0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lm/n;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_100

    goto :goto_eb

    :cond_100
    new-instance p0, Ll0/g0;

    const-string p1, "OtherName is from an excluded subtree."

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_108
    :goto_108
    return-void
.end method

.method public final b(Lj0/c;)V
    .registers 3

    iget-object p0, p0, Ll0/k0;->a:Ljava/util/Set;

    invoke-static {p1}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p1

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_2c

    :cond_d
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/x;

    invoke-static {p1, v0}, Ll0/k0;->n(Lm/x;Lm/x;)Z

    move-result v0

    if-nez v0, :cond_24

    goto :goto_11

    :cond_24
    new-instance p0, Ll0/g0;

    const-string p1, "Subject distinguished name is from an excluded subtree"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2c
    :goto_2c
    return-void
.end method

.method public final c(Ll0/y;)V
    .registers 5

    iget v0, p1, Ll0/y;->d:I

    iget-object v1, p1, Ll0/y;->c:Lm/f;

    if-eqz v0, :cond_100

    const/4 v2, 0x1

    if-eq v0, v2, :cond_cb

    const/4 v2, 0x2

    if-eq v0, v2, :cond_8e

    const/4 v2, 0x4

    if-eq v0, v2, :cond_86

    const/4 v2, 0x6

    if-eq v0, v2, :cond_4e

    const/4 p1, 0x7

    if-eq v0, p1, :cond_17

    goto/16 :goto_121

    :cond_17
    iget-object p0, p0, Ll0/k0;->k:Ljava/util/HashSet;

    invoke-static {v1}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object p1

    iget-object p1, p1, Lm/r;->c:[B

    if-nez p0, :cond_23

    goto/16 :goto_121

    :cond_23
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {p1, v1}, Ll0/k0;->j([B[B)Z

    move-result v1

    if-eqz v1, :cond_27

    goto/16 :goto_121

    :cond_3b
    array-length p1, p1

    if-nez p1, :cond_46

    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result p0

    if-nez p0, :cond_46

    goto/16 :goto_121

    :cond_46
    new-instance p0, Ll0/g0;

    const-string p1, "IP is not from a permitted subtree."

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4e
    iget-object p0, p0, Ll0/k0;->j:Ljava/util/HashSet;

    invoke-static {p1}, Ll0/k0;->g(Ll0/y;)Ljava/lang/String;

    move-result-object p1

    if-nez p0, :cond_58

    goto/16 :goto_121

    :cond_58
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_70

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p1, v1}, Ll0/k0;->k(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5c

    goto/16 :goto_121

    :cond_70
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_7e

    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result p0

    if-nez p0, :cond_7e

    goto/16 :goto_121

    :cond_7e
    new-instance p0, Ll0/g0;

    const-string p1, "URI is not from a permitted subtree."

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_86
    invoke-static {v1}, Lj0/c;->i(Ljava/lang/Object;)Lj0/c;

    move-result-object p1

    invoke-virtual {p0, p1}, Ll0/k0;->d(Lj0/c;)V

    return-void

    :cond_8e
    iget-object p0, p0, Ll0/k0;->h:Ljava/util/HashSet;

    invoke-static {p1}, Ll0/k0;->g(Ll0/y;)Ljava/lang/String;

    move-result-object p1

    if-nez p0, :cond_98

    goto/16 :goto_121

    :cond_98
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p1, v1}, Ll0/k0;->o(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_121

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9c

    goto/16 :goto_121

    :cond_b6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_c3

    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result p0

    if-nez p0, :cond_c3

    goto :goto_121

    :cond_c3
    new-instance p0, Ll0/g0;

    const-string p1, "DNS is not from a permitted subtree."

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_cb
    iget-object p0, p0, Ll0/k0;->i:Ljava/util/HashSet;

    invoke-static {p1}, Ll0/k0;->g(Ll0/y;)Ljava/lang/String;

    move-result-object p1

    if-nez p0, :cond_d4

    goto :goto_121

    :cond_d4
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_eb

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p1, v1}, Ll0/k0;->f(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d8

    goto :goto_121

    :cond_eb
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_f8

    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result p0

    if-nez p0, :cond_f8

    goto :goto_121

    :cond_f8
    new-instance p0, Ll0/g0;

    const-string p1, "Subject email address is not from a permitted subtree."

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_100
    iget-object p0, p0, Ll0/k0;->l:Ljava/util/HashSet;

    invoke-static {v1}, Ll0/j0;->h(Ljava/lang/Object;)Ll0/j0;

    move-result-object p1

    if-nez p0, :cond_109

    goto :goto_121

    :cond_109
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_10d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_122

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ll0/j0;->h(Ljava/lang/Object;)Ll0/j0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lm/n;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10d

    :cond_121
    :goto_121
    return-void

    :cond_122
    new-instance p0, Ll0/g0;

    const-string p1, "Subject OtherName is not from a permitted subtree."

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final d(Lj0/c;)V
    .registers 3

    iget-object p0, p0, Ll0/k0;->g:Ljava/util/HashSet;

    iget-object p1, p1, Lj0/c;->y:Lm/a1;

    invoke-static {p1}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p1

    if-nez p0, :cond_b

    goto :goto_2e

    :cond_b
    invoke-virtual {p0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p1}, Lm/x;->size()I

    move-result v0

    if-nez v0, :cond_18

    goto :goto_2e

    :cond_18
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/x;

    invoke-static {p1, v0}, Ll0/k0;->n(Lm/x;Lm/x;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :goto_2e
    return-void

    :cond_2f
    new-instance p0, Ll0/g0;

    const-string p1, "Subject distinguished name is not from a permitted subtree"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Ll0/k0;

    if-nez v0, :cond_6

    goto/16 :goto_82

    :cond_6
    check-cast p1, Ll0/k0;

    iget-object v0, p1, Ll0/k0;->a:Ljava/util/Set;

    iget-object v1, p0, Ll0/k0;->a:Ljava/util/Set;

    invoke-static {v0, v1}, Ll0/k0;->e(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_82

    iget-object v0, p1, Ll0/k0;->b:Ljava/util/Set;

    iget-object v1, p0, Ll0/k0;->b:Ljava/util/Set;

    invoke-static {v0, v1}, Ll0/k0;->e(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_82

    iget-object v0, p1, Ll0/k0;->c:Ljava/util/Set;

    iget-object v1, p0, Ll0/k0;->c:Ljava/util/Set;

    invoke-static {v0, v1}, Ll0/k0;->e(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_82

    iget-object v0, p1, Ll0/k0;->e:Ljava/util/Set;

    iget-object v1, p0, Ll0/k0;->e:Ljava/util/Set;

    invoke-static {v0, v1}, Ll0/k0;->e(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_82

    iget-object v0, p1, Ll0/k0;->d:Ljava/util/Set;

    iget-object v1, p0, Ll0/k0;->d:Ljava/util/Set;

    invoke-static {v0, v1}, Ll0/k0;->e(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_82

    iget-object v0, p1, Ll0/k0;->f:Ljava/util/HashSet;

    iget-object v1, p0, Ll0/k0;->f:Ljava/util/HashSet;

    invoke-static {v0, v1}, Ll0/k0;->e(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_82

    iget-object v0, p1, Ll0/k0;->g:Ljava/util/HashSet;

    iget-object v1, p0, Ll0/k0;->g:Ljava/util/HashSet;

    invoke-static {v0, v1}, Ll0/k0;->e(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_82

    iget-object v0, p1, Ll0/k0;->h:Ljava/util/HashSet;

    iget-object v1, p0, Ll0/k0;->h:Ljava/util/HashSet;

    invoke-static {v0, v1}, Ll0/k0;->e(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_82

    iget-object v0, p1, Ll0/k0;->i:Ljava/util/HashSet;

    iget-object v1, p0, Ll0/k0;->i:Ljava/util/HashSet;

    invoke-static {v0, v1}, Ll0/k0;->e(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_82

    iget-object v0, p1, Ll0/k0;->k:Ljava/util/HashSet;

    iget-object v1, p0, Ll0/k0;->k:Ljava/util/HashSet;

    invoke-static {v0, v1}, Ll0/k0;->e(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_82

    iget-object v0, p1, Ll0/k0;->j:Ljava/util/HashSet;

    iget-object v1, p0, Ll0/k0;->j:Ljava/util/HashSet;

    invoke-static {v0, v1}, Ll0/k0;->e(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_82

    iget-object p1, p1, Ll0/k0;->l:Ljava/util/HashSet;

    iget-object p0, p0, Ll0/k0;->l:Ljava/util/HashSet;

    invoke-static {p1, p0}, Ll0/k0;->e(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_82

    const/4 p0, 0x1

    return p0

    :cond_82
    :goto_82
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .registers 3

    iget-object v0, p0, Ll0/k0;->a:Ljava/util/Set;

    invoke-static {v0}, Ll0/k0;->h(Ljava/util/Collection;)I

    move-result v0

    iget-object v1, p0, Ll0/k0;->b:Ljava/util/Set;

    invoke-static {v1}, Ll0/k0;->h(Ljava/util/Collection;)I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Ll0/k0;->c:Ljava/util/Set;

    invoke-static {v0}, Ll0/k0;->h(Ljava/util/Collection;)I

    move-result v0

    add-int/2addr v0, v1

    iget-object v1, p0, Ll0/k0;->e:Ljava/util/Set;

    invoke-static {v1}, Ll0/k0;->h(Ljava/util/Collection;)I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Ll0/k0;->d:Ljava/util/Set;

    invoke-static {v0}, Ll0/k0;->h(Ljava/util/Collection;)I

    move-result v0

    add-int/2addr v0, v1

    iget-object v1, p0, Ll0/k0;->f:Ljava/util/HashSet;

    invoke-static {v1}, Ll0/k0;->h(Ljava/util/Collection;)I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Ll0/k0;->g:Ljava/util/HashSet;

    invoke-static {v0}, Ll0/k0;->h(Ljava/util/Collection;)I

    move-result v0

    add-int/2addr v0, v1

    iget-object v1, p0, Ll0/k0;->h:Ljava/util/HashSet;

    invoke-static {v1}, Ll0/k0;->h(Ljava/util/Collection;)I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Ll0/k0;->i:Ljava/util/HashSet;

    invoke-static {v0}, Ll0/k0;->h(Ljava/util/Collection;)I

    move-result v0

    add-int/2addr v0, v1

    iget-object v1, p0, Ll0/k0;->k:Ljava/util/HashSet;

    invoke-static {v1}, Ll0/k0;->h(Ljava/util/Collection;)I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Ll0/k0;->j:Ljava/util/HashSet;

    invoke-static {v0}, Ll0/k0;->h(Ljava/util/Collection;)I

    move-result v0

    add-int/2addr v0, v1

    iget-object p0, p0, Ll0/k0;->l:Ljava/util/HashSet;

    invoke-static {p0}, Ll0/k0;->h(Ljava/util/Collection;)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final i([Ll0/a0;)V
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_b
    array-length v5, v1

    if-eq v4, v5, :cond_32

    aget-object v5, v1, v4

    iget-object v6, v5, Ll0/a0;->c:Ll0/y;

    iget v6, v6, Ll0/y;->d:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_26

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_26
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_32
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4ac

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_459

    const/4 v5, -0x1

    const/16 v6, 0x40

    const-string v7, "."

    const/4 v8, 0x1

    if-eq v4, v8, :cond_377

    const/4 v9, 0x2

    if-eq v4, v9, :cond_323

    const/4 v10, 0x4

    if-eq v4, v10, :cond_2c7

    const/4 v10, 0x6

    if-eq v4, v10, :cond_1e4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_1d8

    iget-object v4, v0, Ll0/k0;->k:Ljava/util/HashSet;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_77
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1d1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ll0/a0;

    iget-object v6, v6, Ll0/a0;->c:Ll0/y;

    iget-object v6, v6, Ll0/y;->c:Lm/f;

    invoke-static {v6}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object v6

    iget-object v6, v6, Lm/r;->c:[B

    if-nez v4, :cond_9d

    if-eqz v6, :cond_94

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_94
    move-object/from16 v19, v1

    move v10, v3

    move/from16 p1, v8

    move/from16 v16, v9

    goto/16 :goto_1c8

    :cond_9d
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_a1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_94

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    array-length v11, v10

    array-length v12, v6

    if-eq v11, v12, :cond_bd

    sget-object v10, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    move-object/from16 v19, v1

    move/from16 p1, v8

    move/from16 v16, v9

    move-object v1, v10

    move v10, v3

    goto/16 :goto_1bc

    :cond_bd
    array-length v11, v10

    div-int/2addr v11, v9

    new-array v12, v11, [B

    new-array v13, v11, [B

    invoke-static {v10, v3, v12, v3, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v10, v11, v13, v3, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v10, v11, [B

    new-array v14, v11, [B

    invoke-static {v6, v3, v10, v3, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v6, v11, v14, v3, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    filled-new-array {v12, v13, v10, v14}, [[B

    move-result-object v10

    aget-object v11, v10, v3

    aget-object v12, v10, v8

    aget-object v13, v10, v9

    const/4 v14, 0x3

    aget-object v10, v10, v14

    array-length v15, v11

    move/from16 p1, v8

    new-array v8, v15, [B

    move/from16 v16, v9

    new-array v9, v15, [B

    move/from16 v17, v14

    new-array v14, v15, [B

    move/from16 v18, v3

    new-array v3, v15, [B

    move-object/from16 v19, v1

    move/from16 v1, v18

    :goto_f5
    if-ge v1, v15, :cond_12a

    aget-byte v20, v11, v1

    aget-byte v21, v12, v1

    move/from16 v22, v1

    and-int v1, v20, v21

    int-to-byte v1, v1

    aput-byte v1, v8, v22

    aget-byte v1, v11, v22

    move/from16 v20, v1

    aget-byte v1, v12, v22

    and-int v20, v20, v1

    not-int v1, v1

    or-int v1, v20, v1

    int-to-byte v1, v1

    aput-byte v1, v9, v22

    aget-byte v1, v13, v22

    aget-byte v20, v10, v22

    and-int v1, v1, v20

    int-to-byte v1, v1

    aput-byte v1, v14, v22

    aget-byte v1, v13, v22

    move/from16 v20, v1

    aget-byte v1, v10, v22

    and-int v20, v20, v1

    not-int v1, v1

    or-int v1, v20, v1

    int-to-byte v1, v1

    aput-byte v1, v3, v22

    add-int/lit8 v1, v22, 0x1

    goto :goto_f5

    :cond_12a
    filled-new-array {v8, v9, v14, v3}, [[B

    move-result-object v1

    aget-object v3, v1, p1

    aget-object v8, v1, v17

    move/from16 v9, v18

    :goto_134
    array-length v11, v3

    const v13, 0xffff

    if-ge v9, v11, :cond_146

    aget-byte v11, v3, v9

    and-int/2addr v11, v13

    aget-byte v14, v8, v9

    and-int/2addr v14, v13

    if-ge v11, v14, :cond_143

    goto :goto_147

    :cond_143
    add-int/lit8 v9, v9, 0x1

    goto :goto_134

    :cond_146
    move-object v3, v8

    :goto_147
    aget-object v8, v1, v18

    aget-object v9, v1, v16

    move/from16 v11, v18

    :goto_14d
    array-length v14, v8

    if-ge v11, v14, :cond_15c

    aget-byte v14, v8, v11

    and-int/2addr v14, v13

    aget-byte v15, v9, v11

    and-int/2addr v15, v13

    if-le v14, v15, :cond_159

    goto :goto_15d

    :cond_159
    add-int/lit8 v11, v11, 0x1

    goto :goto_14d

    :cond_15c
    move-object v8, v9

    :goto_15d
    invoke-static {v8, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-eqz v9, :cond_164

    goto :goto_182

    :cond_164
    move/from16 v9, v18

    :goto_166
    array-length v11, v8

    if-ge v9, v11, :cond_176

    aget-byte v11, v8, v9

    and-int/2addr v11, v13

    aget-byte v14, v3, v9

    and-int/2addr v14, v13

    if-le v11, v14, :cond_173

    move-object v3, v8

    goto :goto_176

    :cond_173
    add-int/lit8 v9, v9, 0x1

    goto :goto_166

    :cond_176
    :goto_176
    invoke-static {v3, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_182

    sget-object v10, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    move-object v1, v10

    move/from16 v10, v18

    goto :goto_1bc

    :cond_182
    :goto_182
    aget-object v3, v1, v18

    aget-object v1, v1, v16

    array-length v8, v3

    new-array v9, v8, [B

    move/from16 v11, v18

    :goto_18b
    array-length v13, v3

    if-ge v11, v13, :cond_199

    aget-byte v13, v3, v11

    aget-byte v14, v1, v11

    or-int/2addr v13, v14

    int-to-byte v13, v13

    aput-byte v13, v9, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_18b

    :cond_199
    array-length v1, v12

    new-array v1, v1, [B

    move/from16 v3, v18

    :goto_19e
    array-length v11, v12

    if-ge v3, v11, :cond_1ac

    aget-byte v11, v12, v3

    aget-byte v13, v10, v3

    or-int/2addr v11, v13

    int-to-byte v11, v11

    aput-byte v11, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_19e

    :cond_1ac
    mul-int/lit8 v3, v8, 0x2

    new-array v3, v3, [B

    move/from16 v10, v18

    invoke-static {v9, v10, v3, v10, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v1, v10, v3, v8, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v3}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    :goto_1bc
    invoke-interface {v5, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move/from16 v8, p1

    move v3, v10

    move/from16 v9, v16

    move-object/from16 v1, v19

    goto/16 :goto_a1

    :goto_1c8
    move/from16 v8, p1

    move v3, v10

    move/from16 v9, v16

    move-object/from16 v1, v19

    goto/16 :goto_77

    :cond_1d1
    move-object/from16 v19, v1

    move v10, v3

    iput-object v5, v0, Ll0/k0;->k:Ljava/util/HashSet;

    goto/16 :goto_4a7

    :cond_1d8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown tag encountered: "

    invoke-static {v4, v1}, Lb/b;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e4
    move-object/from16 v19, v1

    move v10, v3

    move/from16 p1, v8

    iget-object v1, v0, Ll0/k0;->j:Ljava/util/HashSet;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1fa
    :goto_1fa
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2c3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ll0/a0;

    iget-object v4, v4, Ll0/a0;->c:Ll0/y;

    invoke-static {v4}, Ll0/k0;->g(Ll0/y;)Ljava/lang/String;

    move-result-object v4

    if-nez v1, :cond_212

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1fa

    :cond_212
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_216
    :goto_216
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1fa

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-eq v11, v5, :cond_256

    invoke-virtual {v9, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v9, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    if-eq v12, v5, :cond_242

    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_216

    :cond_23e
    :goto_23e
    invoke-virtual {v3, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_216

    :cond_242
    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_24f

    invoke-static {v11, v4}, Ll0/k0;->o(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_216

    goto :goto_23e

    :cond_24f
    invoke-virtual {v11, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_216

    goto :goto_23e

    :cond_256
    invoke-virtual {v9, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_297

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-eq v11, v5, :cond_276

    invoke-virtual {v9, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v4, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v9}, Ll0/k0;->o(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_216

    :goto_272
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_216

    :cond_276
    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_290

    invoke-static {v9, v4}, Ll0/k0;->o(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_23e

    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_289

    goto :goto_23e

    :cond_289
    invoke-static {v4, v9}, Ll0/k0;->o(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_216

    goto :goto_272

    :cond_290
    invoke-static {v4, v9}, Ll0/k0;->o(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_216

    goto :goto_272

    :cond_297
    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-eq v11, v5, :cond_2ae

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v4, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_216

    goto :goto_272

    :cond_2ae
    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2bb

    invoke-static {v9, v4}, Ll0/k0;->o(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_216

    goto :goto_23e

    :cond_2bb
    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_216

    goto/16 :goto_23e

    :cond_2c3
    iput-object v3, v0, Ll0/k0;->j:Ljava/util/HashSet;

    goto/16 :goto_4a7

    :cond_2c7
    move-object/from16 v19, v1

    move v10, v3

    iget-object v1, v0, Ll0/k0;->g:Ljava/util/HashSet;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2db
    :goto_2db
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_31f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ll0/a0;

    iget-object v4, v4, Ll0/a0;->c:Ll0/y;

    iget-object v4, v4, Ll0/y;->c:Lm/f;

    invoke-interface {v4}, Lm/f;->d()Lm/u;

    move-result-object v4

    invoke-static {v4}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v4

    if-nez v1, :cond_2fb

    if-eqz v4, :cond_2db

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2db

    :cond_2fb
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2ff
    :goto_2ff
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2db

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lm/x;

    invoke-static {v4, v6}, Ll0/k0;->n(Lm/x;Lm/x;)Z

    move-result v7

    if-eqz v7, :cond_315

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2ff

    :cond_315
    invoke-static {v6, v4}, Ll0/k0;->n(Lm/x;Lm/x;)Z

    move-result v7

    if-eqz v7, :cond_2ff

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2ff

    :cond_31f
    iput-object v3, v0, Ll0/k0;->g:Ljava/util/HashSet;

    goto/16 :goto_4a7

    :cond_323
    move-object/from16 v19, v1

    move v10, v3

    iget-object v1, v0, Ll0/k0;->h:Ljava/util/HashSet;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_337
    :goto_337
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_373

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ll0/a0;

    iget-object v4, v4, Ll0/a0;->c:Ll0/y;

    invoke-static {v4}, Ll0/k0;->g(Ll0/y;)Ljava/lang/String;

    move-result-object v4

    if-nez v1, :cond_34f

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_337

    :cond_34f
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_353
    :goto_353
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_337

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6, v4}, Ll0/k0;->o(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_369

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_353

    :cond_369
    invoke-static {v4, v6}, Ll0/k0;->o(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_353

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_353

    :cond_373
    iput-object v3, v0, Ll0/k0;->h:Ljava/util/HashSet;

    goto/16 :goto_4a7

    :cond_377
    move-object/from16 v19, v1

    move v10, v3

    move/from16 p1, v8

    iget-object v1, v0, Ll0/k0;->i:Ljava/util/HashSet;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_38d
    :goto_38d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_456

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ll0/a0;

    iget-object v4, v4, Ll0/a0;->c:Ll0/y;

    invoke-static {v4}, Ll0/k0;->g(Ll0/y;)Ljava/lang/String;

    move-result-object v4

    if-nez v1, :cond_3a5

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_38d

    :cond_3a5
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3a9
    :goto_3a9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_38d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-eq v11, v5, :cond_3e9

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v4, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    if-eq v12, v5, :cond_3d5

    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3a9

    :cond_3d1
    :goto_3d1
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3a9

    :cond_3d5
    invoke-virtual {v9, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3e2

    invoke-static {v11, v9}, Ll0/k0;->o(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3a9

    goto :goto_3d1

    :cond_3e2
    invoke-virtual {v11, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3a9

    goto :goto_3d1

    :cond_3e9
    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_42a

    invoke-virtual {v9, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-eq v11, v5, :cond_409

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v9, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v4}, Ll0/k0;->o(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3a9

    :goto_405
    invoke-virtual {v3, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3a9

    :cond_409
    invoke-virtual {v9, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_423

    invoke-static {v4, v9}, Ll0/k0;->o(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3d1

    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_41c

    goto :goto_3d1

    :cond_41c
    invoke-static {v9, v4}, Ll0/k0;->o(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3a9

    goto :goto_405

    :cond_423
    invoke-static {v9, v4}, Ll0/k0;->o(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3a9

    goto :goto_405

    :cond_42a
    invoke-virtual {v9, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-eq v11, v5, :cond_441

    invoke-virtual {v9, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v9, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3a9

    goto :goto_405

    :cond_441
    invoke-virtual {v9, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_44e

    invoke-static {v4, v9}, Ll0/k0;->o(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3a9

    goto :goto_3d1

    :cond_44e
    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3a9

    goto/16 :goto_3d1

    :cond_456
    iput-object v3, v0, Ll0/k0;->i:Ljava/util/HashSet;

    goto :goto_4a7

    :cond_459
    move-object/from16 v19, v1

    move v10, v3

    iget-object v1, v0, Ll0/k0;->l:Ljava/util/HashSet;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_46d
    :goto_46d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4a5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ll0/a0;

    iget-object v4, v4, Ll0/a0;->c:Ll0/y;

    iget-object v4, v4, Ll0/y;->c:Lm/f;

    invoke-static {v4}, Ll0/j0;->h(Ljava/lang/Object;)Ll0/j0;

    move-result-object v4

    if-nez v1, :cond_489

    if-eqz v4, :cond_46d

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_46d

    :cond_489
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_48d
    :goto_48d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_46d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ll0/j0;->h(Ljava/lang/Object;)Ll0/j0;

    move-result-object v6

    invoke-virtual {v4, v6}, Lm/n;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_48d

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_48d

    :cond_4a5
    iput-object v3, v0, Ll0/k0;->l:Ljava/util/HashSet;

    :goto_4a7
    move v3, v10

    move-object/from16 v1, v19

    goto/16 :goto_3a

    :cond_4ac
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 10

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "permitted:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lm4/m;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ll0/k0;->g:Ljava/util/HashSet;

    const-string v3, "DN:"

    if-eqz v2, :cond_24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ll0/k0;->g:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_24
    iget-object v2, p0, Ll0/k0;->h:Ljava/util/HashSet;

    const-string v4, "DNS:"

    if-eqz v2, :cond_3c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ll0/k0;->h:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3c
    iget-object v2, p0, Ll0/k0;->i:Ljava/util/HashSet;

    const-string v5, "Email:"

    if-eqz v2, :cond_54

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ll0/k0;->i:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_54
    iget-object v2, p0, Ll0/k0;->j:Ljava/util/HashSet;

    const-string v6, "URI:"

    if-eqz v2, :cond_6c

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ll0/k0;->j:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6c
    iget-object v2, p0, Ll0/k0;->k:Ljava/util/HashSet;

    const-string v7, "IP:"

    if-eqz v2, :cond_84

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ll0/k0;->k:Ljava/util/HashSet;

    invoke-static {v2}, Ll0/k0;->l(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_84
    iget-object v2, p0, Ll0/k0;->l:Ljava/util/HashSet;

    const-string v8, "OtherName:"

    if-eqz v2, :cond_9c

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ll0/k0;->l:Ljava/util/HashSet;

    invoke-static {v2}, Ll0/k0;->m(Ljava/util/HashSet;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9c
    const-string v2, "excluded:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ll0/k0;->a:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_be

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ll0/k0;->a:Ljava/util/Set;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_be
    iget-object v2, p0, Ll0/k0;->b:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d8

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ll0/k0;->b:Ljava/util/Set;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d8
    iget-object v2, p0, Ll0/k0;->c:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ll0/k0;->c:Ljava/util/Set;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f2
    iget-object v2, p0, Ll0/k0;->d:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_10c

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ll0/k0;->d:Ljava/util/Set;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10c
    iget-object v2, p0, Ll0/k0;->e:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_126

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ll0/k0;->e:Ljava/util/Set;

    invoke-static {v2}, Ll0/k0;->l(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_126
    iget-object v2, p0, Ll0/k0;->f:Ljava/util/HashSet;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_140

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Ll0/k0;->f:Ljava/util/HashSet;

    invoke-static {p0}, Ll0/k0;->m(Ljava/util/HashSet;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_140
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
