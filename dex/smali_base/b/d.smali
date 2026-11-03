.class public final Lb/d;
.super Lb/e;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"

# interfaces
.implements Ljava/util/RandomAccess;


# instance fields
.field public final c:Lb/e;

.field public final d:I

.field public final q:I


# direct methods
.method public constructor <init>(Lb/e;II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/d;->c:Lb/e;

    iput p2, p0, Lb/d;->d:I

    invoke-virtual {p1}, Lb/e;->a()I

    move-result p1

    invoke-static {p2, p3, p1}, Lt4/d;->r(III)V

    sub-int/2addr p3, p2

    iput p3, p0, Lb/d;->q:I

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 1

    iget p0, p0, Lb/d;->q:I

    return p0
.end method

.method public final get(I)Ljava/lang/Object;
    .registers 5

    iget v0, p0, Lb/d;->q:I

    if-ltz p1, :cond_10

    if-ge p1, v0, :cond_10

    iget v0, p0, Lb/d;->d:I

    add-int/2addr v0, p1

    iget-object p0, p0, Lb/d;->c:Lb/e;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_10
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "index: "

    const-string v2, ", size: "

    invoke-static {v1, p1, v2, v0}, Lb/b;->e(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final subList(II)Ljava/util/List;
    .registers 5

    iget v0, p0, Lb/d;->q:I

    invoke-static {p1, p2, v0}, Lt4/d;->r(III)V

    new-instance v0, Lb/d;

    iget v1, p0, Lb/d;->d:I

    add-int/2addr p1, v1

    add-int/2addr v1, p2

    iget-object p0, p0, Lb/d;->c:Lb/e;

    invoke-direct {v0, p0, p1, v1}, Lb/d;-><init>(Lb/e;II)V

    return-object v0
.end method
