.class public abstract Lb/j;
.super Lt4/d;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"


# direct methods
.method public static varargs U0([Ljava/lang/Object;)Ljava/util/List;
    .registers 2

    array-length v0, p0

    if-lez v0, :cond_d

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v0, "asList(...)"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0

    :cond_d
    sget-object p0, Lb/q;->c:Lb/q;

    return-object p0
.end method
