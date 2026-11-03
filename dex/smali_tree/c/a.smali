.class public final Lc/a;
.super Ljava/lang/Object;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field public final synthetic a:I

.field public b:I

.field public c:I

.field public d:I

.field public final e:Lb/f;


# direct methods
.method public constructor <init>(Lc/b;I)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lc/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/a;->e:Lb/f;

    iput p2, p0, Lc/a;->b:I

    const/4 p2, -0x1

    iput p2, p0, Lc/a;->c:I

    invoke-static {p1}, Lc/b;->c(Lc/b;)I

    move-result p1

    iput p1, p0, Lc/a;->d:I

    return-void
.end method

.method public constructor <init>(Lc/c;I)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lc/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/a;->e:Lb/f;

    iput p2, p0, Lc/a;->b:I

    const/4 p2, -0x1

    iput p2, p0, Lc/a;->c:I

    invoke-static {p1}, Lc/c;->c(Lc/c;)I

    move-result p1

    iput p1, p0, Lc/a;->d:I

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget v0, p0, Lc/a;->a:I

    packed-switch v0, :pswitch_data_2e

    iget-object v0, p0, Lc/a;->e:Lb/f;

    check-cast v0, Lc/c;

    invoke-static {v0}, Lc/c;->c(Lc/c;)I

    move-result v0

    iget p0, p0, Lc/a;->d:I

    if-ne v0, p0, :cond_12

    return-void

    :cond_12
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0

    :pswitch_18
    iget-object v0, p0, Lc/a;->e:Lb/f;

    check-cast v0, Lc/b;

    iget-object v0, v0, Lc/b;->y:Lc/c;

    invoke-static {v0}, Lc/c;->c(Lc/c;)I

    move-result v0

    iget p0, p0, Lc/a;->d:I

    if-ne v0, p0, :cond_27

    return-void

    :cond_27
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0

    nop

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_18
    .end packed-switch
.end method

.method public final add(Ljava/lang/Object;)V
    .registers 5

    iget v0, p0, Lc/a;->a:I

    packed-switch v0, :pswitch_data_3a

    invoke-virtual {p0}, Lc/a;->a()V

    iget-object v0, p0, Lc/a;->e:Lb/f;

    check-cast v0, Lc/c;

    iget v1, p0, Lc/a;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lc/a;->b:I

    invoke-virtual {v0, v1, p1}, Lc/c;->add(ILjava/lang/Object;)V

    const/4 p1, -0x1

    iput p1, p0, Lc/a;->c:I

    invoke-static {v0}, Lc/c;->c(Lc/c;)I

    move-result p1

    iput p1, p0, Lc/a;->d:I

    return-void

    :pswitch_1f
    invoke-virtual {p0}, Lc/a;->a()V

    iget-object v0, p0, Lc/a;->e:Lb/f;

    check-cast v0, Lc/b;

    iget v1, p0, Lc/a;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lc/a;->b:I

    invoke-virtual {v0, v1, p1}, Lc/b;->add(ILjava/lang/Object;)V

    const/4 p1, -0x1

    iput p1, p0, Lc/a;->c:I

    invoke-static {v0}, Lc/b;->c(Lc/b;)I

    move-result p1

    iput p1, p0, Lc/a;->d:I

    return-void

    nop

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_1f
    .end packed-switch
.end method

.method public final hasNext()Z
    .registers 2

    iget v0, p0, Lc/a;->a:I

    packed-switch v0, :pswitch_data_22

    iget v0, p0, Lc/a;->b:I

    iget-object p0, p0, Lc/a;->e:Lb/f;

    check-cast p0, Lc/c;

    iget p0, p0, Lc/c;->d:I

    if-ge v0, p0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    return p0

    :pswitch_13
    iget v0, p0, Lc/a;->b:I

    iget-object p0, p0, Lc/a;->e:Lb/f;

    check-cast p0, Lc/b;

    iget p0, p0, Lc/b;->q:I

    if-ge v0, p0, :cond_1f

    const/4 p0, 0x1

    goto :goto_20

    :cond_1f
    const/4 p0, 0x0

    :goto_20
    return p0

    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_13
    .end packed-switch
.end method

.method public final hasPrevious()Z
    .registers 2

    iget v0, p0, Lc/a;->a:I

    packed-switch v0, :pswitch_data_16

    iget p0, p0, Lc/a;->b:I

    if-lez p0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0

    :pswitch_d
    iget p0, p0, Lc/a;->b:I

    if-lez p0, :cond_13

    const/4 p0, 0x1

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return p0

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_d
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .registers 4

    iget v0, p0, Lc/a;->a:I

    packed-switch v0, :pswitch_data_44

    invoke-virtual {p0}, Lc/a;->a()V

    iget v0, p0, Lc/a;->b:I

    iget-object v1, p0, Lc/a;->e:Lb/f;

    check-cast v1, Lc/c;

    iget v2, v1, Lc/c;->d:I

    if-ge v0, v2, :cond_1d

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lc/a;->b:I

    iput v0, p0, Lc/a;->c:I

    iget-object p0, v1, Lc/c;->c:[Ljava/lang/Object;

    aget-object p0, p0, v0

    return-object p0

    :cond_1d
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :pswitch_23
    invoke-virtual {p0}, Lc/a;->a()V

    iget v0, p0, Lc/a;->b:I

    iget-object v1, p0, Lc/a;->e:Lb/f;

    check-cast v1, Lc/b;

    iget v2, v1, Lc/b;->q:I

    if-ge v0, v2, :cond_3e

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lc/a;->b:I

    iput v0, p0, Lc/a;->c:I

    iget-object p0, v1, Lc/b;->c:[Ljava/lang/Object;

    iget v1, v1, Lc/b;->d:I

    add-int/2addr v1, v0

    aget-object p0, p0, v1

    return-object p0

    :cond_3e
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_23
    .end packed-switch
.end method

.method public final nextIndex()I
    .registers 2

    iget v0, p0, Lc/a;->a:I

    packed-switch v0, :pswitch_data_c

    iget p0, p0, Lc/a;->b:I

    return p0

    :pswitch_8
    iget p0, p0, Lc/a;->b:I

    return p0

    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_8
    .end packed-switch
.end method

.method public final previous()Ljava/lang/Object;
    .registers 3

    iget v0, p0, Lc/a;->a:I

    packed-switch v0, :pswitch_data_40

    invoke-virtual {p0}, Lc/a;->a()V

    iget v0, p0, Lc/a;->b:I

    if-lez v0, :cond_1b

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lc/a;->b:I

    iput v0, p0, Lc/a;->c:I

    iget-object p0, p0, Lc/a;->e:Lb/f;

    check-cast p0, Lc/c;

    iget-object p0, p0, Lc/c;->c:[Ljava/lang/Object;

    aget-object p0, p0, v0

    return-object p0

    :cond_1b
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :pswitch_21
    invoke-virtual {p0}, Lc/a;->a()V

    iget v0, p0, Lc/a;->b:I

    if-lez v0, :cond_3a

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lc/a;->b:I

    iput v0, p0, Lc/a;->c:I

    iget-object p0, p0, Lc/a;->e:Lb/f;

    check-cast p0, Lc/b;

    iget-object v1, p0, Lc/b;->c:[Ljava/lang/Object;

    iget p0, p0, Lc/b;->d:I

    add-int/2addr p0, v0

    aget-object p0, v1, p0

    return-object p0

    :cond_3a
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_21
    .end packed-switch
.end method

.method public final previousIndex()I
    .registers 2

    iget v0, p0, Lc/a;->a:I

    packed-switch v0, :pswitch_data_e

    iget p0, p0, Lc/a;->b:I

    :goto_7
    add-int/lit8 p0, p0, -0x1

    return p0

    :pswitch_a
    iget p0, p0, Lc/a;->b:I

    goto :goto_7

    nop

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_a
    .end packed-switch
.end method

.method public final remove()V
    .registers 4

    iget v0, p0, Lc/a;->a:I

    packed-switch v0, :pswitch_data_4e

    iget-object v0, p0, Lc/a;->e:Lb/f;

    check-cast v0, Lc/c;

    invoke-virtual {p0}, Lc/a;->a()V

    iget v1, p0, Lc/a;->c:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_21

    invoke-virtual {v0, v1}, Lc/c;->b(I)Ljava/lang/Object;

    iget v1, p0, Lc/a;->c:I

    iput v1, p0, Lc/a;->b:I

    iput v2, p0, Lc/a;->c:I

    invoke-static {v0}, Lc/c;->c(Lc/c;)I

    move-result v0

    iput v0, p0, Lc/a;->d:I

    return-void

    :cond_21
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Call next() or previous() before removing element from the iterator."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_29
    iget-object v0, p0, Lc/a;->e:Lb/f;

    check-cast v0, Lc/b;

    invoke-virtual {p0}, Lc/a;->a()V

    iget v1, p0, Lc/a;->c:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_45

    invoke-virtual {v0, v1}, Lc/b;->b(I)Ljava/lang/Object;

    iget v1, p0, Lc/a;->c:I

    iput v1, p0, Lc/a;->b:I

    iput v2, p0, Lc/a;->c:I

    invoke-static {v0}, Lc/b;->c(Lc/b;)I

    move-result v0

    iput v0, p0, Lc/a;->d:I

    return-void

    :cond_45
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Call next() or previous() before removing element from the iterator."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_29
    .end packed-switch
.end method

.method public final set(Ljava/lang/Object;)V
    .registers 4

    iget v0, p0, Lc/a;->a:I

    packed-switch v0, :pswitch_data_36

    invoke-virtual {p0}, Lc/a;->a()V

    iget v0, p0, Lc/a;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_15

    iget-object p0, p0, Lc/a;->e:Lb/f;

    check-cast p0, Lc/c;

    invoke-virtual {p0, v0, p1}, Lc/c;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_15
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Call next() or previous() before replacing element from the iterator."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1d
    invoke-virtual {p0}, Lc/a;->a()V

    iget v0, p0, Lc/a;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2d

    iget-object p0, p0, Lc/a;->e:Lb/f;

    check-cast p0, Lc/b;

    invoke-virtual {p0, v0, p1}, Lc/b;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Call next() or previous() before replacing element from the iterator."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_1d
    .end packed-switch
.end method
