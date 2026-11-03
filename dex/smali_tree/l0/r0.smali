.class public final Ll0/r0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Enumeration;


# virtual methods
.method public final hasMoreElements()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final nextElement()Ljava/lang/Object;
    .registers 2

    new-instance p0, Ljava/util/NoSuchElementException;

    const-string v0, "Empty Enumeration"

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
