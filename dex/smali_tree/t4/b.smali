.class public final Lt4/b;
.super Ljava/lang/Object;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lt4/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    iget p0, p0, Lt4/b;->a:I

    packed-switch p0, :pswitch_data_68

    check-cast p1, Lm/a0;

    iget p0, p1, Lm/a0;->q:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    check-cast p2, Lm/a0;

    iget p1, p2, Lm/a0;->q:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    if-ne p0, p1, :cond_19

    const/4 p0, 0x0

    goto :goto_1d

    :cond_19
    invoke-virtual {p0, p1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Object;)I

    move-result p0

    :goto_1d
    return p0

    :pswitch_1e
    check-cast p1, Lm/f;

    const-string p0, "null cannot be cast to non-null type org.bouncycastle.asn1.DERTaggedObject"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p1, Lm/d1;

    iget p1, p1, Lm/a0;->q:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p2, Lm/f;

    invoke-static {p0, p2}, Lkotlin/jvm/internal/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p2, Lm/d1;

    iget p0, p2, Lm/a0;->q:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    if-ne p1, p0, :cond_3e

    const/4 p0, 0x0

    goto :goto_42

    :cond_3e
    invoke-virtual {p1, p0}, Ljava/lang/Integer;->compareTo(Ljava/lang/Object;)I

    move-result p0

    :goto_42
    return p0

    :pswitch_43
    check-cast p1, Lm/f;

    const-string p0, "null cannot be cast to non-null type org.bouncycastle.asn1.DERTaggedObject"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p1, Lm/d1;

    iget p1, p1, Lm/a0;->q:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p2, Lm/f;

    invoke-static {p0, p2}, Lkotlin/jvm/internal/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p2, Lm/d1;

    iget p0, p2, Lm/a0;->q:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    if-ne p1, p0, :cond_63

    const/4 p0, 0x0

    goto :goto_67

    :cond_63
    invoke-virtual {p1, p0}, Ljava/lang/Integer;->compareTo(Ljava/lang/Object;)I

    move-result p0

    :goto_67
    return p0

    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_43
        :pswitch_1e
    .end packed-switch
.end method
