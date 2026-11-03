.class public final Lb0/l;
.super Lm/n;


# instance fields
.field public c:Lb0/b;

.field public d:Lb0/c;

.field public q:Lm/j;

.field public x:Lm/j;

.field public y:Ll0/w;


# direct methods
.method public static h(Lm/f;)Lb0/l;
    .registers 10

    instance-of v0, p0, Lb0/l;

    if-eqz v0, :cond_7

    check-cast p0, Lb0/l;

    return-object p0

    :cond_7
    if-eqz p0, :cond_f0

    new-instance v0, Lb0/l;

    invoke-static {p0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lm/x;->v(I)Lm/f;

    move-result-object v2

    invoke-static {v2}, Lb0/b;->h(Lm/f;)Lb0/b;

    move-result-object v2

    iput-object v2, v0, Lb0/l;->c:Lb0/b;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lm/x;->v(I)Lm/f;

    move-result-object v3

    sget-object v4, Lm/x;->d:Lm/a;

    const/4 v5, 0x2

    if-eqz v3, :cond_8c

    instance-of v6, v3, Lb0/c;

    if-eqz v6, :cond_2c

    goto :goto_8c

    :cond_2c
    instance-of v6, v3, Lm/a0;

    if-eqz v6, :cond_78

    new-instance v6, Lb0/c;

    check-cast v3, Lm/a0;

    iget v7, v3, Lm/a0;->q:I

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    sget-object v8, Lm/m;->c:Lm/a;

    if-eqz v7, :cond_41

    if-eq v7, v2, :cond_6a

    if-ne v7, v5, :cond_50

    :cond_41
    invoke-static {v3}, Lq4/k;->v(Lm/a0;)V

    invoke-virtual {v3, v1, v8}, Lm/a0;->t(ZLm/a;)Lm/u;

    move-result-object v1

    invoke-virtual {v8, v1}, Lm/a;->a(Lm/u;)V

    check-cast v1, Lm/m;

    :goto_4d
    iput-object v1, v6, Lb0/c;->d:Lm/n;

    goto :goto_75

    :cond_50
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown tag encountered: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v3, Lm/a0;->d:I

    invoke-static {v1, v7}, Lq4/k;->h0(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6a
    invoke-virtual {v4, v3, v1}, Lm/a;->d(Lm/a0;Z)Lm/u;

    move-result-object v1

    check-cast v1, Lm/x;

    invoke-static {v1}, Lb0/k;->h(Lm/n;)Lb0/k;

    move-result-object v1

    goto :goto_4d

    :goto_75
    iput v7, v6, Lb0/c;->c:I

    goto :goto_8f

    :cond_78
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "unknown object in factory: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8c
    :goto_8c
    move-object v6, v3

    check-cast v6, Lb0/c;

    :goto_8f
    iput-object v6, v0, Lb0/l;->d:Lb0/c;

    invoke-virtual {p0, v5}, Lm/x;->v(I)Lm/f;

    move-result-object v1

    invoke-static {v1}, Lm/j;->u(Lm/f;)Lm/j;

    move-result-object v1

    iput-object v1, v0, Lb0/l;->q:Lm/j;

    invoke-virtual {p0}, Lm/x;->size()I

    move-result v1

    sget-object v3, Lm/j;->d:Lm/a;

    const/4 v5, 0x4

    const/4 v6, 0x3

    if-le v1, v5, :cond_c4

    invoke-virtual {p0, v6}, Lm/x;->v(I)Lm/f;

    move-result-object v1

    check-cast v1, Lm/a0;

    invoke-virtual {v3, v1, v2}, Lm/a;->d(Lm/a0;Z)Lm/u;

    move-result-object v1

    check-cast v1, Lm/j;

    iput-object v1, v0, Lb0/l;->x:Lm/j;

    invoke-virtual {p0, v5}, Lm/x;->v(I)Lm/f;

    move-result-object p0

    check-cast p0, Lm/a0;

    invoke-static {p0, v2}, Lm/x;->u(Lm/a0;Z)Lm/x;

    move-result-object p0

    invoke-static {p0}, Ll0/w;->j(Lm/f;)Ll0/w;

    move-result-object p0

    iput-object p0, v0, Lb0/l;->y:Ll0/w;

    return-object v0

    :cond_c4
    invoke-virtual {p0}, Lm/x;->size()I

    move-result v1

    if-le v1, v6, :cond_ef

    invoke-virtual {p0, v6}, Lm/x;->v(I)Lm/f;

    move-result-object p0

    check-cast p0, Lm/a0;

    iget v1, p0, Lm/a0;->q:I

    if-nez v1, :cond_e3

    invoke-static {p0}, Lq4/k;->v(Lm/a0;)V

    invoke-virtual {p0, v2, v3}, Lm/a0;->t(ZLm/a;)Lm/u;

    move-result-object p0

    invoke-virtual {v3, p0}, Lm/a;->a(Lm/u;)V

    check-cast p0, Lm/j;

    iput-object p0, v0, Lb0/l;->x:Lm/j;

    return-object v0

    :cond_e3
    invoke-virtual {v4, p0, v2}, Lm/a;->d(Lm/a0;Z)Lm/u;

    move-result-object p0

    check-cast p0, Lm/x;

    invoke-static {p0}, Ll0/w;->j(Lm/f;)Ll0/w;

    move-result-object p0

    iput-object p0, v0, Lb0/l;->y:Ll0/w;

    :cond_ef
    return-object v0

    :cond_f0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 6

    new-instance v0, Lm/g;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lm/g;-><init>(I)V

    iget-object v1, p0, Lb0/l;->c:Lb0/b;

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    iget-object v1, p0, Lb0/l;->d:Lb0/c;

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    iget-object v1, p0, Lb0/l;->q:Lm/j;

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    iget-object v1, p0, Lb0/l;->x:Lm/j;

    const/4 v2, 0x1

    if-eqz v1, :cond_23

    new-instance v3, Lm/d1;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4, v1}, Lm/a0;-><init>(ZILm/f;)V

    invoke-virtual {v0, v3}, Lm/g;->a(Lm/f;)V

    :cond_23
    iget-object p0, p0, Lb0/l;->y:Ll0/w;

    if-eqz p0, :cond_2f

    new-instance v1, Lm/d1;

    invoke-direct {v1, v2, v2, p0}, Lm/a0;-><init>(ZILm/f;)V

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    :cond_2f
    new-instance p0, Lm/a1;

    invoke-direct {p0, v0}, Lm/x;-><init>(Lm/g;)V

    const/4 v0, -0x1

    iput v0, p0, Lm/a1;->q:I

    return-object p0
.end method
