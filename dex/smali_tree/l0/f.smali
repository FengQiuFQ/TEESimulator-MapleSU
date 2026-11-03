.class public final Ll0/f;
.super Lm/n;


# instance fields
.field public c:Ll0/g;

.field public d:Ll0/b;

.field public q:Lm/b;


# direct methods
.method public static h(Lm/u;)Ll0/f;
    .registers 13

    const/4 v0, 0x0

    if-eqz p0, :cond_142

    new-instance v1, Ll0/f;

    invoke-static {p0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lm/x;->size()I

    move-result v2

    const/4 v3, 0x3

    const-string v4, "Bad sequence size: "

    if-ne v2, v3, :cond_133

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lm/x;->v(I)Lm/f;

    move-result-object v3

    instance-of v5, v3, Ll0/g;

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-eqz v5, :cond_25

    move-object v0, v3

    check-cast v0, Ll0/g;

    goto/16 :goto_11c

    :cond_25
    if-eqz v3, :cond_11c

    new-instance v5, Ll0/g;

    invoke-static {v3}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v3

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v3}, Lm/x;->size()I

    move-result v8

    const/4 v9, 0x6

    if-lt v8, v9, :cond_10d

    invoke-virtual {v3}, Lm/x;->size()I

    move-result v8

    const/16 v10, 0x9

    if-gt v8, v10, :cond_10d

    invoke-virtual {v3, v2}, Lm/x;->v(I)Lm/f;

    move-result-object v8

    instance-of v8, v8, Lm/l;

    if-eqz v8, :cond_53

    invoke-virtual {v3, v2}, Lm/x;->v(I)Lm/f;

    move-result-object v8

    invoke-static {v8}, Lm/l;->r(Ljava/lang/Object;)Lm/l;

    move-result-object v8

    iput-object v8, v5, Ll0/g;->c:Lm/l;

    move v8, v6

    goto :goto_5d

    :cond_53
    new-instance v8, Lm/l;

    const-wide/16 v10, 0x0

    invoke-direct {v8, v10, v11}, Lm/l;-><init>(J)V

    iput-object v8, v5, Ll0/g;->c:Lm/l;

    move v8, v2

    :goto_5d
    invoke-virtual {v3, v8}, Lm/x;->v(I)Lm/f;

    move-result-object v10

    invoke-static {v10}, Ll0/b0;->h(Lm/f;)Ll0/b0;

    move-result-object v10

    iput-object v10, v5, Ll0/g;->d:Ll0/b0;

    add-int/lit8 v10, v8, 0x1

    invoke-virtual {v3, v10}, Lm/x;->v(I)Lm/f;

    move-result-object v10

    invoke-static {v10}, Ll0/c;->h(Lm/f;)Ll0/c;

    move-result-object v10

    iput-object v10, v5, Ll0/g;->q:Ll0/c;

    add-int/lit8 v10, v8, 0x2

    invoke-virtual {v3, v10}, Lm/x;->v(I)Lm/f;

    move-result-object v10

    invoke-static {v10}, Ll0/b;->h(Ljava/lang/Object;)Ll0/b;

    move-result-object v10

    iput-object v10, v5, Ll0/g;->x:Ll0/b;

    add-int/lit8 v10, v8, 0x3

    invoke-virtual {v3, v10}, Lm/x;->v(I)Lm/f;

    move-result-object v10

    invoke-static {v10}, Lm/l;->r(Ljava/lang/Object;)Lm/l;

    move-result-object v10

    iput-object v10, v5, Ll0/g;->y:Lm/l;

    add-int/lit8 v10, v8, 0x4

    invoke-virtual {v3, v10}, Lm/x;->v(I)Lm/f;

    move-result-object v10

    instance-of v11, v10, Ll0/d;

    if-eqz v11, :cond_99

    move-object v0, v10

    check-cast v0, Ll0/d;

    goto :goto_ce

    :cond_99
    if-eqz v10, :cond_ce

    new-instance v0, Ll0/d;

    invoke-static {v10}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v10

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v10}, Lm/x;->size()I

    move-result v11

    if-ne v11, v7, :cond_bf

    invoke-virtual {v10, v2}, Lm/x;->v(I)Lm/f;

    move-result-object v2

    invoke-static {v2}, Lm/j;->u(Lm/f;)Lm/j;

    move-result-object v2

    iput-object v2, v0, Ll0/d;->c:Lm/j;

    invoke-virtual {v10, v6}, Lm/x;->v(I)Lm/f;

    move-result-object v2

    invoke-static {v2}, Lm/j;->u(Lm/f;)Lm/j;

    move-result-object v2

    iput-object v2, v0, Ll0/d;->d:Lm/j;

    goto :goto_ce

    :cond_bf
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v10, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->d(Lm/x;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_ce
    :goto_ce
    iput-object v0, v5, Ll0/g;->z1:Ll0/d;

    add-int/lit8 v0, v8, 0x5

    invoke-virtual {v3, v0}, Lm/x;->v(I)Lm/f;

    move-result-object v0

    invoke-static {v0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v0

    iput-object v0, v5, Ll0/g;->A1:Lm/x;

    add-int/2addr v8, v9

    :goto_dd
    invoke-virtual {v3}, Lm/x;->size()I

    move-result v0

    if-ge v8, v0, :cond_10b

    invoke-virtual {v3, v8}, Lm/x;->v(I)Lm/f;

    move-result-object v0

    instance-of v2, v0, Lm/b;

    if-eqz v2, :cond_f6

    invoke-virtual {v3, v8}, Lm/x;->v(I)Lm/f;

    move-result-object v0

    invoke-static {v0}, Lm/b;->t(Ljava/lang/Object;)Lm/b;

    move-result-object v0

    iput-object v0, v5, Ll0/g;->B1:Lm/b;

    goto :goto_108

    :cond_f6
    instance-of v2, v0, Lm/x;

    if-nez v2, :cond_fe

    instance-of v0, v0, Ll0/w;

    if-eqz v0, :cond_108

    :cond_fe
    invoke-virtual {v3, v8}, Lm/x;->v(I)Lm/f;

    move-result-object v0

    invoke-static {v0}, Ll0/w;->j(Lm/f;)Ll0/w;

    move-result-object v0

    iput-object v0, v5, Ll0/g;->C1:Ll0/w;

    :cond_108
    :goto_108
    add-int/lit8 v8, v8, 0x1

    goto :goto_dd

    :cond_10b
    move-object v0, v5

    goto :goto_11c

    :cond_10d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->d(Lm/x;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11c
    :goto_11c
    iput-object v0, v1, Ll0/f;->c:Ll0/g;

    invoke-virtual {p0, v6}, Lm/x;->v(I)Lm/f;

    move-result-object v0

    invoke-static {v0}, Ll0/b;->h(Ljava/lang/Object;)Ll0/b;

    move-result-object v0

    iput-object v0, v1, Ll0/f;->d:Ll0/b;

    invoke-virtual {p0, v7}, Lm/x;->v(I)Lm/f;

    move-result-object p0

    invoke-static {p0}, Lm/b;->t(Ljava/lang/Object;)Lm/b;

    move-result-object p0

    iput-object p0, v1, Ll0/f;->q:Lm/b;

    return-object v1

    :cond_133
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->d(Lm/x;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_142
    return-object v0
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 3

    new-instance v0, Lm/g;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lm/g;-><init>(I)V

    iget-object v1, p0, Ll0/f;->c:Ll0/g;

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    iget-object v1, p0, Ll0/f;->d:Ll0/b;

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    iget-object p0, p0, Ll0/f;->q:Lm/b;

    invoke-virtual {v0, p0}, Lm/g;->a(Lm/f;)V

    new-instance p0, Lm/a1;

    invoke-direct {p0, v0}, Lm/x;-><init>(Lm/g;)V

    const/4 v0, -0x1

    iput v0, p0, Lm/a1;->q:I

    return-object p0
.end method
