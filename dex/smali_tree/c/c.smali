.class public final Lc/c;
.super Lb/f;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;


# static fields
.field public static final x:Lc/c;


# instance fields
.field public c:[Ljava/lang/Object;

.field public d:I

.field public q:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lc/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/c;-><init>(I)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lc/c;->q:Z

    sput-object v0, Lc/c;->x:Lc/c;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    if-ltz p1, :cond_a

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lc/c;->c:[Ljava/lang/Object;

    return-void

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "capacity must be non-negative."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final synthetic c(Lc/c;)I
    .registers 1

    iget p0, p0, Ljava/util/AbstractList;->modCount:I

    return p0
.end method


# virtual methods
.method public final a()I
    .registers 1

    iget p0, p0, Lc/c;->d:I

    return p0
.end method

.method public final add(ILjava/lang/Object;)V
    .registers 5

    invoke-virtual {p0}, Lc/c;->f()V

    iget v0, p0, Lc/c;->d:I

    if-ltz p1, :cond_17

    if-gt p1, v0, :cond_17

    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    invoke-virtual {p0, p1, v1}, Lc/c;->g(II)V

    iget-object p0, p0, Lc/c;->c:[Ljava/lang/Object;

    aput-object p2, p0, p1

    return-void

    :cond_17
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "index: "

    const-string v1, ", size: "

    invoke-static {p2, p1, v1, v0}, Lb/b;->e(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final add(Ljava/lang/Object;)Z
    .registers 5

    invoke-virtual {p0}, Lc/c;->f()V

    iget v0, p0, Lc/c;->d:I

    iget v1, p0, Ljava/util/AbstractList;->modCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Ljava/util/AbstractList;->modCount:I

    invoke-virtual {p0, v0, v2}, Lc/c;->g(II)V

    iget-object p0, p0, Lc/c;->c:[Ljava/lang/Object;

    aput-object p1, p0, v0

    return v2
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .registers 5

    const-string v0, "elements"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lc/c;->f()V

    iget v0, p0, Lc/c;->d:I

    if-ltz p1, :cond_1b

    if-gt p1, v0, :cond_1b

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lc/c;->d(ILjava/util/Collection;I)V

    if-lez v0, :cond_19

    const/4 p0, 0x1

    return p0

    :cond_19
    const/4 p0, 0x0

    return p0

    :cond_1b
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "index: "

    const-string v1, ", size: "

    invoke-static {p2, p1, v1, v0}, Lb/b;->e(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .registers 4

    const-string v0, "elements"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lc/c;->f()V

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    iget v1, p0, Lc/c;->d:I

    invoke-virtual {p0, v1, p1, v0}, Lc/c;->d(ILjava/util/Collection;I)V

    if-lez v0, :cond_15

    const/4 p0, 0x1

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public final b(I)Ljava/lang/Object;
    .registers 5

    invoke-virtual {p0}, Lc/c;->f()V

    iget v0, p0, Lc/c;->d:I

    if-ltz p1, :cond_e

    if-ge p1, v0, :cond_e

    invoke-virtual {p0, p1}, Lc/c;->h(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_e
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

    invoke-virtual {p0}, Lc/c;->f()V

    const/4 v0, 0x0

    iget v1, p0, Lc/c;->d:I

    invoke-virtual {p0, v0, v1}, Lc/c;->i(II)V

    return-void
.end method

.method public final d(ILjava/util/Collection;I)V
    .registers 8

    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    invoke-virtual {p0, p1, p3}, Lc/c;->g(II)V

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    :goto_e
    if-ge v0, p3, :cond_1d

    iget-object v1, p0, Lc/c;->c:[Ljava/lang/Object;

    add-int v2, p1, v0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_1d
    return-void
.end method

.method public final e(ILjava/lang/Object;)V
    .registers 5

    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    invoke-virtual {p0, p1, v1}, Lc/c;->g(II)V

    iget-object p0, p0, Lc/c;->c:[Ljava/lang/Object;

    aput-object p2, p0, p1

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 7

    if-eq p1, p0, :cond_28

    instance-of v0, p1, Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_27

    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lc/c;->c:[Ljava/lang/Object;

    iget p0, p0, Lc/c;->d:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eq p0, v2, :cond_14

    goto :goto_27

    :cond_14
    move v2, v1

    :goto_15
    if-ge v2, p0, :cond_28

    aget-object v3, v0, v2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24

    goto :goto_27

    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_27
    :goto_27
    return v1

    :cond_28
    const/4 p0, 0x1

    return p0
.end method

.method public final f()V
    .registers 1

    iget-boolean p0, p0, Lc/c;->q:Z

    if-nez p0, :cond_5

    return-void

    :cond_5
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final g(II)V
    .registers 8

    iget v0, p0, Lc/c;->d:I

    add-int/2addr v0, p2

    if-ltz v0, :cond_3b

    iget-object v1, p0, Lc/c;->c:[Ljava/lang/Object;

    array-length v2, v1

    if-le v0, v2, :cond_2c

    array-length v2, v1

    shr-int/lit8 v3, v2, 0x1

    add-int/2addr v2, v3

    sub-int v3, v2, v0

    if-gez v3, :cond_13

    move v2, v0

    :cond_13
    const v3, 0x7ffffff7

    sub-int v4, v2, v3

    if-lez v4, :cond_21

    if-le v0, v3, :cond_20

    const v2, 0x7fffffff

    goto :goto_21

    :cond_20
    move v2, v3

    :cond_21
    :goto_21
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "copyOf(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lc/c;->c:[Ljava/lang/Object;

    :cond_2c
    iget-object v0, p0, Lc/c;->c:[Ljava/lang/Object;

    iget v1, p0, Lc/c;->d:I

    add-int v2, p1, p2

    invoke-static {v0, v0, v2, p1, v1}, Lb/h;->f1([Ljava/lang/Object;[Ljava/lang/Object;III)V

    iget p1, p0, Lc/c;->d:I

    add-int/2addr p1, p2

    iput p1, p0, Lc/c;->d:I

    return-void

    :cond_3b
    new-instance p0, Ljava/lang/OutOfMemoryError;

    invoke-direct {p0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p0
.end method

.method public final get(I)Ljava/lang/Object;
    .registers 5

    iget v0, p0, Lc/c;->d:I

    if-ltz p1, :cond_b

    if-ge p1, v0, :cond_b

    iget-object p0, p0, Lc/c;->c:[Ljava/lang/Object;

    aget-object p0, p0, p1

    return-object p0

    :cond_b
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "index: "

    const-string v2, ", size: "

    invoke-static {v1, p1, v2, v0}, Lb/b;->e(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final h(I)Ljava/lang/Object;
    .registers 6

    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    iget-object v0, p0, Lc/c;->c:[Ljava/lang/Object;

    aget-object v1, v0, p1

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lc/c;->d:I

    invoke-static {v0, v0, p1, v2, v3}, Lb/h;->f1([Ljava/lang/Object;[Ljava/lang/Object;III)V

    iget-object p1, p0, Lc/c;->c:[Ljava/lang/Object;

    iget v0, p0, Lc/c;->d:I

    add-int/lit8 v0, v0, -0x1

    const-string v2, "<this>"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v2, p1, v0

    iget p1, p0, Lc/c;->d:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lc/c;->d:I

    return-object v1
.end method

.method public final hashCode()I
    .registers 6

    iget-object v0, p0, Lc/c;->c:[Ljava/lang/Object;

    iget p0, p0, Lc/c;->d:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, p0, :cond_19

    aget-object v4, v0, v3

    mul-int/lit8 v1, v1, 0x1f

    if-eqz v4, :cond_14

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto :goto_15

    :cond_14
    move v4, v2

    :goto_15
    add-int/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_19
    return v1
.end method

.method public final i(II)V
    .registers 6

    if-lez p2, :cond_8

    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    :cond_8
    iget-object v0, p0, Lc/c;->c:[Ljava/lang/Object;

    add-int v1, p1, p2

    iget v2, p0, Lc/c;->d:I

    invoke-static {v0, v0, p1, v1, v2}, Lb/h;->f1([Ljava/lang/Object;[Ljava/lang/Object;III)V

    iget-object p1, p0, Lc/c;->c:[Ljava/lang/Object;

    iget v0, p0, Lc/c;->d:I

    sub-int v1, v0, p2

    const-string v2, "<this>"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1c
    if-ge v1, v0, :cond_24

    const/4 v2, 0x0

    aput-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_24
    iget p1, p0, Lc/c;->d:I

    sub-int/2addr p1, p2

    iput p1, p0, Lc/c;->d:I

    return-void
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lc/c;->d:I

    if-ge v0, v1, :cond_13

    iget-object v1, p0, Lc/c;->c:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-static {v1, p1}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    return v0

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_13
    const/4 p0, -0x1

    return p0
.end method

.method public final isEmpty()Z
    .registers 1

    iget p0, p0, Lc/c;->d:I

    if-nez p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc/c;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p0

    return-object p0
.end method

.method public final j(IILjava/util/Collection;Z)I
    .registers 10

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v0, p2, :cond_20

    iget-object v2, p0, Lc/c;->c:[Ljava/lang/Object;

    add-int v3, p1, v0

    aget-object v2, v2, v3

    invoke-interface {p3, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, p4, :cond_1d

    iget-object v2, p0, Lc/c;->c:[Ljava/lang/Object;

    add-int/lit8 v4, v1, 0x1

    add-int/2addr v1, p1

    add-int/lit8 v0, v0, 0x1

    aget-object v3, v2, v3

    aput-object v3, v2, v1

    move v1, v4

    goto :goto_2

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_20
    sub-int p3, p2, v1

    iget-object p4, p0, Lc/c;->c:[Ljava/lang/Object;

    add-int/2addr p2, p1

    iget v0, p0, Lc/c;->d:I

    add-int/2addr p1, v1

    invoke-static {p4, p4, p1, p2, v0}, Lb/h;->f1([Ljava/lang/Object;[Ljava/lang/Object;III)V

    iget-object p1, p0, Lc/c;->c:[Ljava/lang/Object;

    iget p2, p0, Lc/c;->d:I

    sub-int p4, p2, p3

    const-string v0, "<this>"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_36
    if-ge p4, p2, :cond_3e

    const/4 v0, 0x0

    aput-object v0, p1, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_36

    :cond_3e
    if-lez p3, :cond_46

    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    :cond_46
    iget p1, p0, Lc/c;->d:I

    sub-int/2addr p1, p3

    iput p1, p0, Lc/c;->d:I

    return p3
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .registers 4

    iget v0, p0, Lc/c;->d:I

    add-int/lit8 v0, v0, -0x1

    :goto_4
    if-ltz v0, :cond_14

    iget-object v1, p0, Lc/c;->c:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-static {v1, p1}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    return v0

    :cond_11
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_14
    const/4 p0, -0x1

    return p0
.end method

.method public final listIterator()Ljava/util/ListIterator;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc/c;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p0

    return-object p0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .registers 5

    iget v0, p0, Lc/c;->d:I

    if-ltz p1, :cond_c

    if-gt p1, v0, :cond_c

    new-instance v0, Lc/a;

    invoke-direct {v0, p0, p1}, Lc/a;-><init>(Lc/c;I)V

    return-object v0

    :cond_c
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

    invoke-virtual {p0}, Lc/c;->f()V

    invoke-virtual {p0, p1}, Lc/c;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_c

    invoke-virtual {p0, p1}, Lc/c;->b(I)Ljava/lang/Object;

    :cond_c
    if-ltz p1, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .registers 4

    const-string v0, "elements"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lc/c;->f()V

    iget v0, p0, Lc/c;->d:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, p1, v1}, Lc/c;->j(IILjava/util/Collection;Z)I

    move-result p0

    if-lez p0, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_13
    return v1
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .registers 5

    const-string v0, "elements"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lc/c;->f()V

    iget v0, p0, Lc/c;->d:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, p1, v2}, Lc/c;->j(IILjava/util/Collection;Z)I

    move-result p0

    if-lez p0, :cond_13

    return v2

    :cond_13
    return v1
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-virtual {p0}, Lc/c;->f()V

    iget v0, p0, Lc/c;->d:I

    if-ltz p1, :cond_10

    if-ge p1, v0, :cond_10

    iget-object p0, p0, Lc/c;->c:[Ljava/lang/Object;

    aget-object v0, p0, p1

    aput-object p2, p0, p1

    return-object v0

    :cond_10
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

    iget v0, p0, Lc/c;->d:I

    invoke-static {p1, p2, v0}, Lt4/d;->r(III)V

    new-instance v1, Lc/b;

    iget-object v2, p0, Lc/c;->c:[Ljava/lang/Object;

    sub-int v4, p2, p1

    const/4 v5, 0x0

    move-object v6, p0

    move v3, p1

    invoke-direct/range {v1 .. v6}, Lc/b;-><init>([Ljava/lang/Object;IILc/b;Lc/c;)V

    return-object v1
.end method

.method public final toArray()[Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lc/c;->c:[Ljava/lang/Object;

    const/4 v1, 0x0

    iget p0, p0, Lc/c;->d:I

    invoke-static {v0, v1, p0}, Lb/h;->g1([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5

    const-string v0, "array"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    array-length v0, p1

    iget v1, p0, Lc/c;->d:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1b

    iget-object p0, p0, Lc/c;->c:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p0, v2, v1, p1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    const-string p1, "copyOfRange(...)"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0

    :cond_1b
    iget-object v0, p0, Lc/c;->c:[Ljava/lang/Object;

    invoke-static {v0, p1, v2, v2, v1}, Lb/h;->f1([Ljava/lang/Object;[Ljava/lang/Object;III)V

    iget p0, p0, Lc/c;->d:I

    array-length v0, p1

    if-ge p0, v0, :cond_28

    const/4 v0, 0x0

    aput-object v0, p1, p0

    :cond_28
    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lc/c;->c:[Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lc/c;->d:I

    invoke-static {v0, v1, v2, p0}, Lq4/k;->a([Ljava/lang/Object;IILb/f;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
