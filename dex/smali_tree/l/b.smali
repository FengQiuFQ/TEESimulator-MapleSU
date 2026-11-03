.class public final Ll/b;
.super Ljava/lang/Object;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:Li/c;

.field public final synthetic e:Ll/c;


# direct methods
.method public constructor <init>(Ll/c;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll/b;->e:Ll/c;

    const/4 v0, -0x1

    iput v0, p0, Ll/b;->a:I

    iget-object p1, p1, Ll/c;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-ltz p1, :cond_19

    if-gez p1, :cond_13

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    iput p1, p0, Ll/b;->b:I

    iput p1, p0, Ll/b;->c:I

    return-void

    :cond_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot coerce value to an empty range: maximum "

    const-string v1, " is less than minimum 0."

    invoke-static {v0, v1, p1}, Lb/b;->g(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a()V
    .registers 8

    iget-object v0, p0, Ll/b;->e:Ll/c;

    iget-object v1, v0, Ll/c;->a:Ljava/lang/String;

    iget v2, p0, Ll/b;->c:I

    const/4 v3, 0x0

    if-gez v2, :cond_f

    iput v3, p0, Ll/b;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Ll/b;->d:Li/c;

    return-void

    :cond_f
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-le v2, v4, :cond_28

    new-instance v0, Li/c;

    iget v2, p0, Ll/b;->b:I

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v6

    invoke-direct {v0, v2, v1, v6}, Li/a;-><init>(III)V

    iput-object v0, p0, Ll/b;->d:Li/c;

    iput v5, p0, Ll/b;->c:I

    goto :goto_6a

    :cond_28
    iget-object v0, v0, Ll/c;->b:Lh/p;

    iget v2, p0, Ll/b;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lh/p;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/c;

    if-nez v0, :cond_49

    new-instance v0, Li/c;

    iget v2, p0, Ll/b;->b:I

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v6

    invoke-direct {v0, v2, v1, v6}, Li/a;-><init>(III)V

    iput-object v0, p0, Ll/b;->d:Li/c;

    iput v5, p0, Ll/b;->c:I

    goto :goto_6a

    :cond_49
    iget-object v1, v0, La/c;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iget-object v0, v0, La/c;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget v2, p0, Ll/b;->b:I

    invoke-static {v2, v1}, Lq4/k;->d1(II)Li/c;

    move-result-object v2

    iput-object v2, p0, Ll/b;->d:Li/c;

    add-int/2addr v1, v0

    iput v1, p0, Ll/b;->b:I

    if-nez v0, :cond_67

    move v3, v6

    :cond_67
    add-int/2addr v1, v3

    iput v1, p0, Ll/b;->c:I

    :goto_6a
    iput v6, p0, Ll/b;->a:I

    return-void
.end method

.method public final hasNext()Z
    .registers 3

    iget v0, p0, Ll/b;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    invoke-virtual {p0}, Ll/b;->a()V

    :cond_8
    iget p0, p0, Ll/b;->a:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_e

    return v0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public final next()Ljava/lang/Object;
    .registers 4

    iget v0, p0, Ll/b;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    invoke-virtual {p0}, Ll/b;->a()V

    :cond_8
    iget v0, p0, Ll/b;->a:I

    if-eqz v0, :cond_19

    iget-object v0, p0, Ll/b;->d:Li/c;

    const-string v2, "null cannot be cast to non-null type kotlin.ranges.IntRange"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x0

    iput-object v2, p0, Ll/b;->d:Li/c;

    iput v1, p0, Ll/b;->a:I

    return-object v0

    :cond_19
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final remove()V
    .registers 2

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
