.class public abstract La/e;
.super Ljava/lang/Object;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public static final a(Ljava/lang/Object;)Ljava/lang/Throwable;
    .registers 2

    instance-of v0, p0, La/d;

    if-eqz v0, :cond_9

    check-cast p0, La/d;

    iget-object p0, p0, La/d;->c:Ljava/lang/Throwable;

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method
