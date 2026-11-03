.class public final Lc/b;
.super Lb/f;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;


# instance fields
.field public c:[Ljava/lang/Object;

.field public final d:I

.field public q:I

.field public final x:Lc/b;

.field public final y:Lc/c;


# direct methods
.method public constructor <init>([Ljava/lang/Object;IILc/b;Lc/c;)V
    .registers 7

    const-string v0, "backing"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "root"

    invoke-static {v0, p5}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lc/b;->c:[Ljava/lang/Object;

    iput p2, p0, Lc/b;->d:I

    iput p3, p0, Lc/b;->q:I

    iput-object p4, p0, Lc/b;->x:Lc/b;

    iput-object p5, p0, Lc/b;->y:Lc/c;

    invoke-static {p5}, Lc/c;->c(Lc/c;)I

    move-result p1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method

.method public static final synthetic c(Lc/b;)I
    .registers 1

    iget p0, p0, Ljava/util/AbstractList;->modCount:I

    return p0
.end method


# virtual methods
.method public final a()I
    .registers 1

    invoke-virtual {p0}, Lc/b;->f()V

    iget p0, p0, Lc/b;->q:I

    return p0
.end method

.method public final add(ILjava/lang/Object;)V
    .registers 5

    invoke-virtual {p0}, Lc/b;->g()V

    invoke-virtual {p0}, Lc/b;->f()V

    iget v0, p0, Lc/b;->q:I

    if-ltz p1, :cond_13

    if-gt p1, v0, :cond_13

    iget v0, p0, Lc/b;->d:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0, p2}, Lc/b;->e(ILjava/lang/Object;)V

    return-void

    :cond_13
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "index: "

    const-string v1, ", size: "

    invoke-static {p2, p1, v1, v0}, Lb/b;->e(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final add(Ljava/lang/Object;)Z
    .registers 4

    invoke-virtual {p0}, Lc/b;->g()V

    invoke-virtual {p0}, Lc/b;->f()V

    iget v0, p0, Lc/b;->d:I

    iget v1, p0, Lc/b;->q:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0, p1}, Lc/b;->e(ILjava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .registers 5

    const-string v0, "elements"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lc/b;->g()V

    invoke-virtual {p0}, Lc/b;->f()V

    iget v0, p0, Lc/b;->q:I

    if-ltz p1, :cond_21

    if-gt p1, v0, :cond_21

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    iget v1, p0, Lc/b;->d:I

    add-int/2addr v1, p1

    invoke-virtual {p0, v1, p2, v0}, Lc/b;->d(ILjava/util/Collection;I)V

    if-lez v0, :cond_1f

    const/4 p0, 0x1

    return p0

    :cond_1f
    const/4 p0, 0x0

    return p0

    :cond_21
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "index: "

    const-string v1, ", size: "

    invoke-static {p2, p1, v1, v0}, Lb/b;->e(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .registers 5

    const-string v0, "elements"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lc/b;->g()V

    invoke-virtual {p0}, Lc/b;->f()V

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    iget v1, p0, Lc/b;->d:I

    iget v2, p0, Lc/b;->q:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v1, p1, v0}, Lc/b;->d(ILjava/util/Collection;I)V

    if-lez v0, :cond_1b

    const/4 p0, 0x1

    return p0

    :cond_1b
    const/4 p0, 0x0

    return p0
.end method

.method public final b(I)Ljava/lang/Object;
    .registers 5

    invoke-virtual {p0}, Lc/b;->g()V

    invoke-virtual {p0}, Lc/b;->f()V

    iget v0, p0, Lc/b;->q:I

    if-ltz p1, :cond_14

    if-ge p1, v0, :cond_14

    iget v0, p0, Lc/b;->d:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lc/b;->h(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_14
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "index: "

    const-string v2, ", size: "

    invoke-static {v1, p1, v2, v0}, Lb/b;->e(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final clear()V
    .registers 3

    invoke-virtual {p0}, Lc/b;->g()V

    invoke-virtual {p0}, Lc/b;->f()V

    iget v0, p0, Lc/b;->d:I

    iget v1, p0, Lc/b;->q:I

    invoke-virtual {p0, v0, v1}, Lc/b;->i(II)V

    return-void
.end method

.method public final d(ILjava/util/Collection;I)V
    .registers 6

    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    iget-object v0, p0, Lc/b;->y:Lc/c;

    iget-object v1, p0, Lc/b;->x:Lc/b;

    if-eqz v1, :cond_10

    invoke-virtual {v1, p1, p2, p3}, Lc/b;->d(ILjava/util/Collection;I)V

    goto :goto_15

    :cond_10
    sget-object v1, Lc/c;->x:Lc/c;

    invoke-virtual {v0, p1, p2, p3}, Lc/c;->d(ILjava/util/Collection;I)V

    :goto_15
    iget-object p1, v0, Lc/c;->c:[Ljava/lang/Object;

    iput-object p1, p0, Lc/b;->c:[Ljava/lang/Object;

    iget p1, p0, Lc/b;->q:I

    add-int/2addr p1, p3

    iput p1, p0, Lc/b;->q:I

    return-void
.end method

.method public final e(ILjava/lang/Object;)V
    .registers 5

    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    iget-object v0, p0, Lc/b;->y:Lc/c;

    iget-object v1, p0, Lc/b;->x:Lc/b;

    if-eqz v1, :cond_10

    invoke-virtual {v1, p1, p2}, Lc/b;->e(ILjava/lang/Object;)V

    goto :goto_15

    :cond_10
    sget-object v1, Lc/c;->x:Lc/c;

    invoke-virtual {v0, p1, p2}, Lc/c;->e(ILjava/lang/Object;)V

    :goto_15
    iget-object p1, v0, Lc/c;->c:[Ljava/lang/Object;

    iput-object p1, p0, Lc/b;->c:[Ljava/lang/Object;

    iget p1, p0, Lc/b;->q:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lc/b;->q:I

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 8

    invoke-virtual {p0}, Lc/b;->f()V

    if-eq p1, p0, :cond_2e

    instance-of v0, p1, Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2d

    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lc/b;->c:[Ljava/lang/Object;

    iget v2, p0, Lc/b;->q:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_17

    goto :goto_2d

    :cond_17
    move v3, v1

    :goto_18
    if-ge v3, v2, :cond_2e

    iget v4, p0, Lc/b;->d:I

    add-int/2addr v4, v3

    aget-object v4, v0, v4

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2a

    goto :goto_2d

    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_2d
    :goto_2d
    return v1

    :cond_2e
    const/4 p0, 0x1

    return p0
.end method

.method public final f()V
    .registers 2

    iget-object v0, p0, Lc/b;->y:Lc/c;

    invoke-static {v0}, Lc/c;->c(Lc/c;)I

    move-result v0

    iget p0, p0, Ljava/util/AbstractList;->modCount:I

    if-ne v0, p0, :cond_b

    return-void

    :cond_b
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method

.method public final g()V
    .registers 1

    iget-object p0, p0, Lc/b;->y:Lc/c;

    iget-boolean p0, p0, Lc/c;->q:Z

    if-nez p0, :cond_7

    return-void

    :cond_7
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final get(I)Ljava/lang/Object;
    .registers 5

    invoke-virtual {p0}, Lc/b;->f()V

    iget v0, p0, Lc/b;->q:I

    if-ltz p1, :cond_11

    if-ge p1, v0, :cond_11

    iget-object v0, p0, Lc/b;->c:[Ljava/lang/Object;

    iget p0, p0, Lc/b;->d:I

    add-int/2addr p0, p1

    aget-object p0, v0, p0

    return-object p0

    :cond_11
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "index: "

    const-string v2, ", size: "

    invoke-static {v1, p1, v2, v0}, Lb/b;->e(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final h(I)Ljava/lang/Object;
    .registers 3

    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    iget-object v0, p0, Lc/b;->x:Lc/b;

    if-eqz v0, :cond_f

    invoke-virtual {v0, p1}, Lc/b;->h(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_17

    :cond_f
    sget-object v0, Lc/c;->x:Lc/c;

    iget-object v0, p0, Lc/b;->y:Lc/c;

    invoke-virtual {v0, p1}, Lc/c;->h(I)Ljava/lang/Object;

    move-result-object p1

    :goto_17
    iget v0, p0, Lc/b;->q:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lc/b;->q:I

    return-object p1
.end method

.method public final hashCode()I
    .registers 7

    invoke-virtual {p0}, Lc/b;->f()V

    iget-object v0, p0, Lc/b;->c:[Ljava/lang/Object;

    iget v1, p0, Lc/b;->q:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    move v4, v3

    :goto_a
    if-ge v4, v1, :cond_1f

    iget v5, p0, Lc/b;->d:I

    add-int/2addr v5, v4

    aget-object v5, v0, v5

    mul-int/lit8 v2, v2, 0x1f

    if-eqz v5, :cond_1a

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    goto :goto_1b

    :cond_1a
    move v5, v3

    :goto_1b
    add-int/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_1f
    return v2
.end method

.method public final i(II)V
    .registers 4

    if-lez p2, :cond_8

    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    :cond_8
    iget-object v0, p0, Lc/b;->x:Lc/b;

    if-eqz v0, :cond_10

    invoke-virtual {v0, p1, p2}, Lc/b;->i(II)V

    goto :goto_17

    :cond_10
    sget-object v0, Lc/c;->x:Lc/c;

    iget-object v0, p0, Lc/b;->y:Lc/c;

    invoke-virtual {v0, p1, p2}, Lc/c;->i(II)V

    :goto_17
    iget p1, p0, Lc/b;->q:I

    sub-int/2addr p1, p2

    iput p1, p0, Lc/b;->q:I

    return-void
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .registers 5

    invoke-virtual {p0}, Lc/b;->f()V

    const/4 v0, 0x0

    :goto_4
    iget v1, p0, Lc/b;->q:I

    if-ge v0, v1, :cond_19

    iget-object v1, p0, Lc/b;->c:[Ljava/lang/Object;

    iget v2, p0, Lc/b;->d:I

    add-int/2addr v2, v0

    aget-object v1, v1, v2

    invoke-static {v1, p1}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    return v0

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_19
    const/4 p0, -0x1

    return p0
.end method

.method public final isEmpty()Z
    .registers 1

    invoke-virtual {p0}, Lc/b;->f()V

    iget p0, p0, Lc/b;->q:I

    if-nez p0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc/b;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p0

    return-object p0
.end method

.method public final j(IILjava/util/Collection;Z)I
    .registers 6

    iget-object v0, p0, Lc/b;->x:Lc/b;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1, p2, p3, p4}, Lc/b;->j(IILjava/util/Collection;Z)I

    move-result p1

    goto :goto_11

    :cond_9
    sget-object v0, Lc/c;->x:Lc/c;

    iget-object v0, p0, Lc/b;->y:Lc/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lc/c;->j(IILjava/util/Collection;Z)I

    move-result p1

    :goto_11
    if-lez p1, :cond_19

    iget p2, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Ljava/util/AbstractList;->modCount:I

    :cond_19
    iget p2, p0, Lc/b;->q:I

    sub-int/2addr p2, p1

    iput p2, p0, Lc/b;->q:I

    return p1
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .registers 5

    invoke-virtual {p0}, Lc/b;->f()V

    iget v0, p0, Lc/b;->q:I

    add-int/lit8 v0, v0, -0x1

    :goto_7
    if-ltz v0, :cond_1a

    iget-object v1, p0, Lc/b;->c:[Ljava/lang/Object;

    iget v2, p0, Lc/b;->d:I

    add-int/2addr v2, v0

    aget-object v1, v1, v2

    invoke-static {v1, p1}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    return v0

    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    :cond_1a
    const/4 p0, -0x1

    return p0
.end method

.method public final listIterator()Ljava/util/ListIterator;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc/b;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p0

    return-object p0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .registers 5

    invoke-virtual {p0}, Lc/b;->f()V

    iget v0, p0, Lc/b;->q:I

    if-ltz p1, :cond_f

    if-gt p1, v0, :cond_f

    new-instance v0, Lc/a;

    invoke-direct {v0, p0, p1}, Lc/a;-><init>(Lc/b;I)V

    return-object v0

    :cond_f
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "index: "

    const-string v2, ", size: "

    invoke-static {v1, p1, v2, v0}, Lb/b;->e(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .registers 2

    invoke-virtual {p0}, Lc/b;->g()V

    invoke-virtual {p0}, Lc/b;->f()V

    invoke-virtual {p0, p1}, Lc/b;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_f

    invoke-virtual {p0, p1}, Lc/b;->b(I)Ljava/lang/Object;

    :cond_f
    if-ltz p1, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .registers 5

    const-string v0, "elements"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lc/b;->g()V

    invoke-virtual {p0}, Lc/b;->f()V

    iget v0, p0, Lc/b;->q:I

    iget v1, p0, Lc/b;->d:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, p1, v2}, Lc/b;->j(IILjava/util/Collection;Z)I

    move-result p0

    if-lez p0, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    return v2
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .registers 5

    const-string v0, "elements"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lc/b;->g()V

    invoke-virtual {p0}, Lc/b;->f()V

    iget v0, p0, Lc/b;->q:I

    iget v1, p0, Lc/b;->d:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, p1, v2}, Lc/b;->j(IILjava/util/Collection;Z)I

    move-result p0

    if-lez p0, :cond_17

    return v2

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-virtual {p0}, Lc/b;->g()V

    invoke-virtual {p0}, Lc/b;->f()V

    iget v0, p0, Lc/b;->q:I

    if-ltz p1, :cond_18

    if-ge p1, v0, :cond_18

    iget-object v0, p0, Lc/b;->c:[Ljava/lang/Object;

    iget p0, p0, Lc/b;->d:I

    add-int v1, p0, p1

    aget-object v1, v0, v1

    add-int/2addr p0, p1

    aput-object p2, v0, p0

    return-object v1

    :cond_18
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "index: "

    const-string v1, ", size: "

    invoke-static {p2, p1, v1, v0}, Lb/b;->e(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final subList(II)Ljava/util/List;
    .registers 10

    iget v0, p0, Lc/b;->q:I

    invoke-static {p1, p2, v0}, Lt4/d;->r(III)V

    new-instance v1, Lc/b;

    iget-object v2, p0, Lc/b;->c:[Ljava/lang/Object;

    iget v0, p0, Lc/b;->d:I

    add-int v3, v0, p1

    sub-int v4, p2, p1

    iget-object v6, p0, Lc/b;->y:Lc/c;

    move-object v5, p0

    invoke-direct/range {v1 .. v6}, Lc/b;-><init>([Ljava/lang/Object;IILc/b;Lc/c;)V

    return-object v1
.end method

.method public final toArray()[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0}, Lc/b;->f()V

    iget-object v0, p0, Lc/b;->c:[Ljava/lang/Object;

    iget v1, p0, Lc/b;->q:I

    iget p0, p0, Lc/b;->d:I

    add-int/2addr v1, p0

    invoke-static {v0, p0, v1}, Lb/h;->g1([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 6

    const-string v0, "array"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lc/b;->f()V

    array-length v0, p1

    iget v1, p0, Lc/b;->q:I

    iget v2, p0, Lc/b;->d:I

    if-ge v0, v1, :cond_20

    iget-object p0, p0, Lc/b;->c:[Ljava/lang/Object;

    add-int/2addr v1, v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p0, v2, v1, p1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    const-string p1, "copyOfRange(...)"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0

    :cond_20
    iget-object v0, p0, Lc/b;->c:[Ljava/lang/Object;

    const/4 v3, 0x0

    add-int/2addr v1, v2

    invoke-static {v0, p1, v3, v2, v1}, Lb/h;->f1([Ljava/lang/Object;[Ljava/lang/Object;III)V

    iget p0, p0, Lc/b;->q:I

    array-length v0, p1

    if-ge p0, v0, :cond_2f

    const/4 v0, 0x0

    aput-object v0, p1, p0

    :cond_2f
    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lc/b;->f()V

    iget-object v0, p0, Lc/b;->c:[Ljava/lang/Object;

    iget v1, p0, Lc/b;->d:I

    iget v2, p0, Lc/b;->q:I

    invoke-static {v0, v1, v2, p0}, Lq4/k;->a([Ljava/lang/Object;IILb/f;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
