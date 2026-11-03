.class public final Ll0/v0;
.super Lm/n;

# interfaces
.implements Ll0/e1;
.implements Ld0/r;


# instance fields
.field public c:Lm/x;

.field public d:Lj0/c;

.field public q:Lj0/c;


# direct methods
.method public static h(Lm/u;)Ll0/v0;
    .registers 10

    if-eqz p0, :cond_c9

    new-instance v0, Ll0/v0;

    invoke-static {p0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v0, Ll0/v0;->c:Lm/x;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lm/x;->v(I)Lm/f;

    move-result-object v2

    instance-of v2, v2, Lm/a0;

    const/4 v3, 0x1

    if-eqz v2, :cond_27

    invoke-virtual {p0, v1}, Lm/x;->v(I)Lm/f;

    move-result-object v2

    check-cast v2, Lm/a0;

    sget-object v4, Lm/l;->q:Lm/a;

    invoke-virtual {v4, v2, v3}, Lm/a;->d(Lm/a0;Z)Lm/u;

    move-result-object v2

    check-cast v2, Lm/l;

    move v2, v1

    goto :goto_31

    :cond_27
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    const/4 v2, -0x1

    :goto_31
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Lm/x;->v(I)Lm/f;

    move-result-object v4

    invoke-static {v4}, Lm/l;->r(Ljava/lang/Object;)Lm/l;

    add-int/lit8 v4, v2, 0x2

    invoke-virtual {p0, v4}, Lm/x;->v(I)Lm/f;

    move-result-object v4

    invoke-static {v4}, Ll0/b;->h(Ljava/lang/Object;)Ll0/b;

    add-int/lit8 v4, v2, 0x3

    invoke-virtual {p0, v4}, Lm/x;->v(I)Lm/f;

    move-result-object v4

    invoke-static {v4}, Lj0/c;->i(Ljava/lang/Object;)Lj0/c;

    move-result-object v4

    iput-object v4, v0, Ll0/v0;->d:Lj0/c;

    add-int/lit8 v4, v2, 0x4

    invoke-virtual {p0, v4}, Lm/x;->v(I)Lm/f;

    move-result-object v4

    instance-of v5, v4, Ll0/a1;

    const/4 v6, 0x2

    if-eqz v5, :cond_5b

    goto :goto_82

    :cond_5b
    if-eqz v4, :cond_82

    invoke-static {v4}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v4

    invoke-virtual {v4}, Lm/x;->size()I

    move-result v5

    if-ne v5, v6, :cond_76

    invoke-virtual {v4, v1}, Lm/x;->v(I)Lm/f;

    move-result-object v5

    invoke-static {v5}, Ll0/x0;->i(Lm/f;)Ll0/x0;

    invoke-virtual {v4, v3}, Lm/x;->v(I)Lm/f;

    move-result-object v4

    invoke-static {v4}, Ll0/x0;->i(Lm/f;)Ll0/x0;

    goto :goto_82

    :cond_76
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bad sequence size: "

    invoke-static {v5, v0}, Lb/b;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_82
    :goto_82
    add-int/lit8 v4, v2, 0x5

    invoke-virtual {p0, v4}, Lm/x;->v(I)Lm/f;

    move-result-object v4

    invoke-static {v4}, Lj0/c;->i(Ljava/lang/Object;)Lj0/c;

    move-result-object v4

    iput-object v4, v0, Ll0/v0;->q:Lj0/c;

    add-int/lit8 v2, v2, 0x6

    invoke-virtual {p0, v2}, Lm/x;->v(I)Lm/f;

    move-result-object v4

    invoke-static {v4}, Ll0/p0;->h(Ljava/lang/Object;)Ll0/p0;

    invoke-virtual {p0}, Lm/x;->size()I

    move-result v4

    sub-int/2addr v4, v2

    sub-int/2addr v4, v3

    :goto_9d
    if-lez v4, :cond_c8

    add-int v5, v2, v4

    invoke-virtual {p0, v5}, Lm/x;->v(I)Lm/f;

    move-result-object v5

    invoke-static {v5}, Lm/a0;->v(Ljava/lang/Object;)Lm/a0;

    move-result-object v5

    iget v7, v5, Lm/a0;->q:I

    sget-object v8, Lm/b;->d:Lm/a;

    if-eq v7, v3, :cond_b9

    if-eq v7, v6, :cond_b9

    const/4 v8, 0x3

    if-eq v7, v8, :cond_b5

    goto :goto_c5

    :cond_b5
    invoke-static {v5}, Ll0/c1;->h(Lm/u;)Ll0/c1;

    goto :goto_c5

    :cond_b9
    invoke-static {v5}, Lq4/k;->v(Lm/a0;)V

    invoke-virtual {v5, v1, v8}, Lm/a0;->t(ZLm/a;)Lm/u;

    move-result-object v5

    invoke-virtual {v8, v5}, Lm/a;->a(Lm/u;)V

    check-cast v5, Lm/b;

    :goto_c5
    add-int/lit8 v4, v4, -0x1

    goto :goto_9d

    :cond_c8
    return-object v0

    :cond_c9
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 1

    iget-object p0, p0, Ll0/v0;->c:Lm/x;

    return-object p0
.end method
