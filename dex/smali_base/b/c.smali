.class public final Lb/c;
.super Lkotlin/jvm/internal/a;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field public final synthetic d:Lb/e;


# direct methods
.method public constructor <init>(Lb/e;I)V
    .registers 5

    iput-object p1, p0, Lb/c;->d:Lb/e;

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/a;-><init>(Lb/e;)V

    invoke-virtual {p1}, Lb/e;->a()I

    move-result p1

    if-ltz p2, :cond_10

    if-gt p2, p1, :cond_10

    iput p2, p0, Lkotlin/jvm/internal/a;->c:I

    return-void

    :cond_10
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "index: "

    const-string v1, ", size: "

    invoke-static {v0, p2, v1, p1}, Lb/b;->e(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .registers 2

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Operation is not supported for read-only collection"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final hasPrevious()Z
    .registers 1

    iget p0, p0, Lkotlin/jvm/internal/a;->c:I

    if-lez p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public final nextIndex()I
    .registers 1

    iget p0, p0, Lkotlin/jvm/internal/a;->c:I

    return p0
.end method

.method public final previous()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lb/c;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_13

    iget v0, p0, Lkotlin/jvm/internal/a;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lkotlin/jvm/internal/a;->c:I

    iget-object p0, p0, Lb/c;->d:Lb/e;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_13
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final previousIndex()I
    .registers 1

    iget p0, p0, Lkotlin/jvm/internal/a;->c:I

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public final set(Ljava/lang/Object;)V
    .registers 2

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Operation is not supported for read-only collection"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
