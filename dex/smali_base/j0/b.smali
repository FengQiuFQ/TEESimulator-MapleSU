.class public final Lj0/b;
.super Lm/n;


# instance fields
.field public c:Lm/y;


# direct methods
.method public static i(Lm/f;)Lj0/b;
    .registers 2

    instance-of v0, p0, Lj0/b;

    if-eqz v0, :cond_7

    check-cast p0, Lj0/b;

    return-object p0

    :cond_7
    if-eqz p0, :cond_15

    new-instance v0, Lj0/b;

    invoke-static {p0}, Lm/y;->s(Ljava/lang/Object;)Lm/y;

    move-result-object p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v0, Lj0/b;->c:Lm/y;

    return-object v0

    :cond_15
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 1

    iget-object p0, p0, Lj0/b;->c:Lm/y;

    return-object p0
.end method

.method public final h()Lj0/a;
    .registers 2

    iget-object p0, p0, Lj0/b;->c:Lm/y;

    iget-object p0, p0, Lm/y;->c:[Lm/f;

    array-length v0, p0

    if-nez v0, :cond_9

    const/4 p0, 0x0

    return-object p0

    :cond_9
    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-static {p0}, Lj0/a;->h(Lm/f;)Lj0/a;

    move-result-object p0

    return-object p0
.end method

.method public final j()[Lj0/a;
    .registers 5

    iget-object p0, p0, Lj0/b;->c:Lm/y;

    iget-object v0, p0, Lm/y;->c:[Lm/f;

    array-length v0, v0

    new-array v1, v0, [Lj0/a;

    const/4 v2, 0x0

    :goto_8
    if-eq v2, v0, :cond_17

    iget-object v3, p0, Lm/y;->c:[Lm/f;

    aget-object v3, v3, v2

    invoke-static {v3}, Lj0/a;->h(Lm/f;)Lj0/a;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_17
    return-object v1
.end method
