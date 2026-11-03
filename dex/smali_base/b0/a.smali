.class public final Lb0/a;
.super Lm/n;


# instance fields
.field public c:Lb0/j;

.field public d:Ll0/b;

.field public q:Lm/p0;

.field public x:Lm/x;


# direct methods
.method public static h(Ljava/lang/Object;)Lb0/a;
    .registers 5

    instance-of v0, p0, Lb0/a;

    if-eqz v0, :cond_7

    check-cast p0, Lb0/a;

    return-object p0

    :cond_7
    if-eqz p0, :cond_45

    new-instance v0, Lb0/a;

    invoke-static {p0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lm/x;->v(I)Lm/f;

    move-result-object v1

    invoke-static {v1}, Lb0/j;->h(Ljava/lang/Object;)Lb0/j;

    move-result-object v1

    iput-object v1, v0, Lb0/a;->c:Lb0/j;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lm/x;->v(I)Lm/f;

    move-result-object v2

    invoke-static {v2}, Ll0/b;->h(Ljava/lang/Object;)Ll0/b;

    move-result-object v2

    iput-object v2, v0, Lb0/a;->d:Ll0/b;

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lm/x;->v(I)Lm/f;

    move-result-object v2

    check-cast v2, Lm/p0;

    iput-object v2, v0, Lb0/a;->q:Lm/p0;

    invoke-virtual {p0}, Lm/x;->size()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_44

    invoke-virtual {p0, v3}, Lm/x;->v(I)Lm/f;

    move-result-object p0

    check-cast p0, Lm/a0;

    invoke-static {p0, v1}, Lm/x;->u(Lm/a0;Z)Lm/x;

    move-result-object p0

    iput-object p0, v0, Lb0/a;->x:Lm/x;

    :cond_44
    return-object v0

    :cond_45
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 5

    new-instance v0, Lm/g;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lm/g;-><init>(I)V

    iget-object v1, p0, Lb0/a;->c:Lb0/j;

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    iget-object v1, p0, Lb0/a;->d:Ll0/b;

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    iget-object v1, p0, Lb0/a;->q:Lm/p0;

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    iget-object p0, p0, Lb0/a;->x:Lm/x;

    if-eqz p0, :cond_23

    new-instance v1, Lm/d1;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, p0}, Lm/a0;-><init>(ZILm/f;)V

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    :cond_23
    new-instance p0, Lm/a1;

    invoke-direct {p0, v0}, Lm/x;-><init>(Lm/g;)V

    const/4 v0, -0x1

    iput v0, p0, Lm/a1;->q:I

    return-object p0
.end method
