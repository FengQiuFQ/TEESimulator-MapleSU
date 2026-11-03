.class public final Ll0/k;
.super Lm/n;


# instance fields
.field public c:Lm/x;


# direct methods
.method public static i(Ljava/lang/Object;)Ll0/k;
    .registers 2

    instance-of v0, p0, Ll0/k;

    if-eqz v0, :cond_7

    check-cast p0, Ll0/k;

    return-object p0

    :cond_7
    if-eqz p0, :cond_15

    new-instance v0, Ll0/k;

    invoke-static {p0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v0, Ll0/k;->c:Lm/x;

    return-object v0

    :cond_15
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 1

    iget-object p0, p0, Ll0/k;->c:Lm/x;

    return-object p0
.end method

.method public final h()[Ll0/s;
    .registers 10

    iget-object p0, p0, Ll0/k;->c:Lm/x;

    invoke-virtual {p0}, Lm/x;->size()I

    move-result v0

    new-array v0, v0, [Ll0/s;

    const/4 v1, 0x0

    move v2, v1

    :goto_a
    invoke-virtual {p0}, Lm/x;->size()I

    move-result v3

    if-eq v2, v3, :cond_a2

    invoke-virtual {p0, v2}, Lm/x;->v(I)Lm/f;

    move-result-object v3

    if-eqz v3, :cond_99

    instance-of v4, v3, Ll0/s;

    if-eqz v4, :cond_1c

    goto/16 :goto_99

    :cond_1c
    instance-of v4, v3, Lm/x;

    if-eqz v4, :cond_85

    new-instance v4, Ll0/s;

    check-cast v3, Lm/x;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move v5, v1

    :goto_28
    invoke-virtual {v3}, Lm/x;->size()I

    move-result v6

    if-eq v5, v6, :cond_9c

    invoke-virtual {v3, v5}, Lm/x;->v(I)Lm/f;

    move-result-object v6

    invoke-static {v6}, Lm/a0;->v(Ljava/lang/Object;)Lm/a0;

    move-result-object v6

    iget v7, v6, Lm/a0;->q:I

    if-eqz v7, :cond_7c

    const/4 v8, 0x1

    if-eq v7, v8, :cond_66

    const/4 v8, 0x2

    if-ne v7, v8, :cond_50

    new-instance v7, Ll0/z;

    sget-object v8, Lm/x;->d:Lm/a;

    invoke-virtual {v8, v6, v1}, Lm/a;->d(Lm/a0;Z)Lm/u;

    move-result-object v6

    check-cast v6, Lm/x;

    invoke-direct {v7, v6}, Ll0/z;-><init>(Lm/x;)V

    iput-object v7, v4, Ll0/s;->q:Ll0/z;

    goto :goto_82

    :cond_50
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown tag encountered in structure: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v6, Lm/a0;->q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_66
    new-instance v7, Ll0/n0;

    invoke-static {v6}, Lq4/k;->v(Lm/a0;)V

    sget-object v8, Lm/b;->d:Lm/a;

    invoke-virtual {v6, v1, v8}, Lm/a0;->t(ZLm/a;)Lm/u;

    move-result-object v6

    invoke-virtual {v8, v6}, Lm/a;->a(Lm/u;)V

    check-cast v6, Lm/b;

    invoke-direct {v7, v6}, Ll0/n0;-><init>(Lm/b;)V

    iput-object v7, v4, Ll0/s;->d:Ll0/n0;

    goto :goto_82

    :cond_7c
    invoke-static {v6}, Ll0/t;->i(Lm/a0;)Ll0/t;

    move-result-object v6

    iput-object v6, v4, Ll0/s;->c:Ll0/t;

    :goto_82
    add-int/lit8 v5, v5, 0x1

    goto :goto_28

    :cond_85
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Invalid DistributionPoint: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_99
    :goto_99
    move-object v4, v3

    check-cast v4, Ll0/s;

    :cond_9c
    aput-object v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_a

    :cond_a2
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CRLDistPoint:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lm4/m;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ll0/k;->h()[Ll0/s;

    move-result-object p0

    const/4 v2, 0x0

    :goto_11
    array-length v3, p0

    if-eq v2, v3, :cond_24

    const-string v3, "    "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
