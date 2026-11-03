.class public final synthetic Lb/a;
.super Ljava/lang/Object;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"

# interfaces
.implements Lh/l;
.implements Lh/p;


# instance fields
.field public final synthetic a:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lb/a;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 16

    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string p2, "$this$DelimitedRangesSequence"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lb/a;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v6, 0x0

    if-ne p2, v1, :cond_4c

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    if-eqz p2, :cond_44

    if-ne p2, v1, :cond_3c

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const/4 p2, 0x4

    invoke-static {v2, p0, p1, v0, p2}, Ll/q;->j1(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result p1

    if-gez p1, :cond_31

    :cond_2e
    :goto_2e
    move-object p2, v6

    goto/16 :goto_cd

    :cond_31
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance p2, La/c;

    invoke-direct {p2, p1, p0}, La/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_cd

    :cond_3c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "List has more than one element."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_44
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string p1, "List is empty."

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4c
    new-instance p2, Li/c;

    if-gez p1, :cond_51

    move p1, v0

    :cond_51
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-direct {p2, p1, v0, v1}, Li/a;-><init>(III)V

    instance-of v0, v2, Ljava/lang/String;

    const/4 v5, 0x0

    iget p2, p2, Li/a;->d:I

    if-eqz v0, :cond_98

    if-le p1, p2, :cond_62

    goto :goto_2e

    :cond_62
    move v10, p1

    :goto_63
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_67
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_84

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    move-object v9, v2

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v8, 0x0

    move v12, v5

    invoke-static/range {v7 .. v12}, Ll/q;->k1(Ljava/lang/String;ILjava/lang/String;IIZ)Z

    move-result v1

    if-eqz v1, :cond_67

    goto :goto_85

    :cond_84
    move-object v0, v6

    :goto_85
    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_93

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance p2, La/c;

    invoke-direct {p2, p0, v0}, La/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_cd

    :cond_93
    if-eq v10, p2, :cond_2e

    add-int/lit8 v10, v10, 0x1

    goto :goto_63

    :cond_98
    if-le p1, p2, :cond_9b

    goto :goto_2e

    :cond_9b
    move v3, p1

    :goto_9c
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static/range {v0 .. v5}, Ll/q;->l1(Ljava/lang/CharSequence;ILjava/lang/CharSequence;IIZ)Z

    move-result v0

    if-eqz v0, :cond_a0

    goto :goto_ba

    :cond_b9
    move-object v7, v6

    :goto_ba
    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_c8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance p2, La/c;

    invoke-direct {p2, p0, v7}, La/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_cd

    :cond_c8
    if-eq v3, p2, :cond_2e

    add-int/lit8 v3, v3, 0x1

    goto :goto_9c

    :goto_cd
    if-eqz p2, :cond_e3

    iget-object p0, p2, La/c;->c:Ljava/lang/Object;

    iget-object p1, p2, La/c;->d:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance p2, La/c;

    invoke-direct {p2, p0, p1}, La/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2

    :cond_e3
    return-object v6
.end method

.method public c(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iget-object p0, p0, Lb/a;->a:Ljava/util/List;

    check-cast p0, Lb/e;

    if-ne p1, p0, :cond_9

    const-string p0, "(this Collection)"

    return-object p0

    :cond_9
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
