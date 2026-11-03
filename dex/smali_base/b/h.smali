.class public abstract Lb/h;
.super Lq4/k;


# direct methods
.method public static f1([Ljava/lang/Object;[Ljava/lang/Object;III)V
    .registers 6

    const-string v0, "<this>"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "destination"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sub-int/2addr p4, p3

    invoke-static {p0, p3, p1, p2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static g1([Ljava/lang/Object;II)[Ljava/lang/Object;
    .registers 5

    const-string v0, "<this>"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    array-length v0, p0

    if-gt p2, v0, :cond_12

    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p0

    const-string p1, "copyOfRange(...)"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0

    :cond_12
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "toIndex ("

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") is greater than size ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static h1([Ljava/lang/Object;)Ljava/util/List;
    .registers 6

    const-string v0, "<this>"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    if-gez v0, :cond_c

    move v0, v2

    :cond_c
    if-ltz v0, :cond_4a

    sget-object v3, Lb/q;->c:Lb/q;

    if-nez v0, :cond_13

    return-object v3

    :cond_13
    array-length v4, p0

    if-lt v0, v4, :cond_2e

    array-length v0, p0

    if-eqz v0, :cond_2d

    if-eq v0, v1, :cond_26

    new-instance v0, Ljava/util/ArrayList;

    new-instance v1, Lb/g;

    invoke-direct {v1, p0, v2}, Lb/g;-><init>([Ljava/lang/Object;Z)V

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_26
    aget-object p0, p0, v2

    invoke-static {p0}, Lt4/d;->n0(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_2d
    return-object v3

    :cond_2e
    if-ne v0, v1, :cond_38

    sub-int/2addr v4, v1

    aget-object p0, p0, v4

    invoke-static {p0}, Lt4/d;->n0(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    sub-int v0, v4, v0

    :goto_3f
    if-ge v0, v4, :cond_49

    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    :cond_49
    return-object v1

    :cond_4a
    const-string p0, "Requested element count "

    const-string v1, " is less than zero."

    invoke-static {p0, v1, v0}, Lb/b;->g(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static i1([Ljava/lang/Object;I)Ljava/lang/String;
    .registers 10

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_7

    const-string p1, ", "

    goto :goto_9

    :cond_7
    const-string p1, " "

    :goto_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    array-length v3, p0

    const/4 v4, 0x0

    move v5, v4

    :goto_16
    if-ge v4, v3, :cond_27

    aget-object v6, p0, v4

    add-int/2addr v5, v0

    if-le v5, v0, :cond_20

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_20
    const/4 v7, 0x0

    invoke-static {v1, v6, v7}, Lq4/k;->p(Ljava/lang/StringBuilder;Ljava/lang/Object;Lh/l;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    :cond_27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static j1([B[B)[B
    .registers 5

    const-string v0, "elements"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    array-length v0, p0

    array-length v1, p1

    add-int v2, v0, v1

    invoke-static {p0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    const/4 v2, 0x0

    invoke-static {p1, v2, p0, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p0}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    return-object p0
.end method
