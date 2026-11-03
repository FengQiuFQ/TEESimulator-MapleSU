.class public Lkotlin/jvm/internal/a;
.super Ljava/lang/Object;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public c:I


# direct methods
.method public constructor <init>(Lb/e;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lkotlin/jvm/internal/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/jvm/internal/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;I)V
    .registers 3

    iput p2, p0, Lkotlin/jvm/internal/a;->a:I

    packed-switch p2, :pswitch_data_1a

    const-string p2, "array"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/jvm/internal/a;->b:Ljava/lang/Object;

    return-void

    :pswitch_10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    iput p2, p0, Lkotlin/jvm/internal/a;->c:I

    iput-object p1, p0, Lkotlin/jvm/internal/a;->b:Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_10
    .end packed-switch
.end method


# virtual methods
.method public final hasNext()Z
    .registers 2

    iget v0, p0, Lkotlin/jvm/internal/a;->a:I

    packed-switch v0, :pswitch_data_30

    iget v0, p0, Lkotlin/jvm/internal/a;->c:I

    iget-object p0, p0, Lkotlin/jvm/internal/a;->b:Ljava/lang/Object;

    check-cast p0, Lb/e;

    invoke-virtual {p0}, Lb/e;->a()I

    move-result p0

    if-ge v0, p0, :cond_13

    const/4 p0, 0x1

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return p0

    :pswitch_15
    iget v0, p0, Lkotlin/jvm/internal/a;->c:I

    iget-object p0, p0, Lkotlin/jvm/internal/a;->b:Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    array-length p0, p0

    if-ge v0, p0, :cond_20

    const/4 p0, 0x1

    goto :goto_21

    :cond_20
    const/4 p0, 0x0

    :goto_21
    return p0

    :pswitch_22
    iget v0, p0, Lkotlin/jvm/internal/a;->c:I

    iget-object p0, p0, Lkotlin/jvm/internal/a;->b:Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    array-length p0, p0

    if-ge v0, p0, :cond_2d

    const/4 p0, 0x1

    goto :goto_2e

    :cond_2d
    const/4 p0, 0x0

    :goto_2e
    return p0

    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_22
        :pswitch_15
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .registers 4

    iget v0, p0, Lkotlin/jvm/internal/a;->a:I

    packed-switch v0, :pswitch_data_64

    invoke-virtual {p0}, Lkotlin/jvm/internal/a;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lkotlin/jvm/internal/a;->b:Ljava/lang/Object;

    check-cast v0, Lb/e;

    iget v1, p0, Lkotlin/jvm/internal/a;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lkotlin/jvm/internal/a;->c:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1a
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :pswitch_20
    iget v0, p0, Lkotlin/jvm/internal/a;->c:I

    iget-object v1, p0, Lkotlin/jvm/internal/a;->b:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    array-length v2, v1

    if-eq v0, v2, :cond_30

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lkotlin/jvm/internal/a;->c:I

    aget-object p0, v1, v0

    return-object p0

    :cond_30
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Out of elements: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lkotlin/jvm/internal/a;->c:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_46
    :try_start_46
    iget-object v0, p0, Lkotlin/jvm/internal/a;->b:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iget v1, p0, Lkotlin/jvm/internal/a;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lkotlin/jvm/internal/a;->c:I

    aget-object p0, v0, v1
    :try_end_52
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_46 .. :try_end_52} :catch_53

    return-object p0

    :catch_53
    move-exception v0

    iget v1, p0, Lkotlin/jvm/internal/a;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lkotlin/jvm/internal/a;->c:I

    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_46
        :pswitch_20
    .end packed-switch
.end method

.method public final remove()V
    .registers 2

    iget p0, p0, Lkotlin/jvm/internal/a;->a:I

    packed-switch p0, :pswitch_data_1e

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_d
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Cannot remove element from an Array."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_15
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_15
        :pswitch_d
    .end packed-switch
.end method
