.class public final Ld0/d;
.super Lm/n;


# instance fields
.field public c:Ld0/e;

.field public d:Ll0/b;

.field public q:Lm/p0;


# direct methods
.method public static h(Lm/u;)Ld0/d;
    .registers 11

    const/4 v0, 0x0

    if-eqz p0, :cond_cd

    new-instance v1, Ld0/d;

    invoke-static {p0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Ld0/d;->c:Ld0/e;

    iput-object v0, v1, Ld0/d;->d:Ll0/b;

    iput-object v0, v1, Ld0/d;->q:Lm/p0;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lm/x;->v(I)Lm/f;

    move-result-object v3

    instance-of v4, v3, Ld0/e;

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v4, :cond_22

    move-object v0, v3

    check-cast v0, Ld0/e;

    goto/16 :goto_b8

    :cond_22
    if-eqz v3, :cond_b8

    new-instance v4, Ld0/e;

    invoke-static {v3}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v3

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    new-instance v7, Lm/l;

    const-wide/16 v8, 0x0

    invoke-direct {v7, v8, v9}, Lm/l;-><init>(J)V

    iput-object v7, v4, Ld0/e;->c:Lm/l;

    iput-object v0, v4, Ld0/e;->x:Lm/y;

    invoke-virtual {v3, v2}, Lm/x;->v(I)Lm/f;

    move-result-object v0

    check-cast v0, Lm/l;

    iput-object v0, v4, Ld0/e;->c:Lm/l;

    invoke-virtual {v3, v6}, Lm/x;->v(I)Lm/f;

    move-result-object v0

    invoke-static {v0}, Lj0/c;->i(Ljava/lang/Object;)Lj0/c;

    move-result-object v0

    iput-object v0, v4, Ld0/e;->d:Lj0/c;

    invoke-virtual {v3, v5}, Lm/x;->v(I)Lm/f;

    move-result-object v0

    invoke-static {v0}, Ll0/p0;->h(Ljava/lang/Object;)Ll0/p0;

    move-result-object v0

    iput-object v0, v4, Ld0/e;->q:Ll0/p0;

    invoke-virtual {v3}, Lm/x;->size()I

    move-result v0

    const/4 v7, 0x3

    if-le v0, v7, :cond_6b

    invoke-virtual {v3, v7}, Lm/x;->v(I)Lm/f;

    move-result-object v0

    check-cast v0, Lm/a0;

    sget-object v3, Lm/y;->q:Lm/a;

    invoke-virtual {v3, v0, v2}, Lm/a;->d(Lm/a0;Z)Lm/u;

    move-result-object v0

    check-cast v0, Lm/y;

    iput-object v0, v4, Ld0/e;->x:Lm/y;

    :cond_6b
    iget-object v0, v4, Ld0/e;->x:Lm/y;

    if-nez v0, :cond_70

    goto :goto_a2

    :cond_70
    iget-object v0, v0, Lm/y;->c:[Lm/f;

    :goto_72
    array-length v3, v0

    if-ge v2, v3, :cond_a2

    array-length v3, v0

    if-ge v2, v3, :cond_9c

    add-int/lit8 v3, v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Ld0/a;->h(Lm/f;)Ld0/a;

    move-result-object v2

    iget-object v7, v2, Ld0/a;->c:Lm/q;

    sget-object v8, Ld0/r;->W:Lm/q;

    invoke-virtual {v7, v8}, Lm/u;->n(Lm/u;)Z

    move-result v7

    if-eqz v7, :cond_9a

    iget-object v2, v2, Ld0/a;->d:Lm/y;

    iget-object v2, v2, Lm/y;->c:[Lm/f;

    array-length v2, v2

    if-ne v2, v6, :cond_92

    goto :goto_9a

    :cond_92
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "challengePassword attribute must have one value"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9a
    :goto_9a
    move v2, v3

    goto :goto_72

    :cond_9c
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_a2
    :goto_a2
    iget-object v0, v4, Ld0/e;->d:Lj0/c;

    if-eqz v0, :cond_b0

    iget-object v0, v4, Ld0/e;->c:Lm/l;

    if-eqz v0, :cond_b0

    iget-object v0, v4, Ld0/e;->q:Ll0/p0;

    if-eqz v0, :cond_b0

    move-object v0, v4

    goto :goto_b8

    :cond_b0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not all mandatory fields set in CertificationRequestInfo generator."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b8
    :goto_b8
    iput-object v0, v1, Ld0/d;->c:Ld0/e;

    invoke-virtual {p0, v6}, Lm/x;->v(I)Lm/f;

    move-result-object v0

    invoke-static {v0}, Ll0/b;->h(Ljava/lang/Object;)Ll0/b;

    move-result-object v0

    iput-object v0, v1, Ld0/d;->d:Ll0/b;

    invoke-virtual {p0, v5}, Lm/x;->v(I)Lm/f;

    move-result-object p0

    check-cast p0, Lm/p0;

    iput-object p0, v1, Ld0/d;->q:Lm/p0;

    return-object v1

    :cond_cd
    return-object v0
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 3

    new-instance v0, Lm/g;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lm/g;-><init>(I)V

    iget-object v1, p0, Ld0/d;->c:Ld0/e;

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    iget-object v1, p0, Ld0/d;->d:Ll0/b;

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    iget-object p0, p0, Ld0/d;->q:Lm/p0;

    invoke-virtual {v0, p0}, Lm/g;->a(Lm/f;)V

    new-instance p0, Lm/a1;

    invoke-direct {p0, v0}, Lm/x;-><init>(Lm/g;)V

    const/4 v0, -0x1

    iput v0, p0, Lm/a1;->q:I

    return-object p0
.end method
