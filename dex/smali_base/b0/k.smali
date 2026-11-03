.class public final Lb0/k;
.super Lm/n;


# instance fields
.field public c:Lm/j;

.field public d:Ll0/l;


# direct methods
.method public static h(Lm/n;)Lb0/k;
    .registers 4

    instance-of v0, p0, Lb0/k;

    if-eqz v0, :cond_7

    check-cast p0, Lb0/k;

    return-object p0

    :cond_7
    if-eqz p0, :cond_39

    new-instance v0, Lb0/k;

    invoke-static {p0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lm/x;->v(I)Lm/f;

    move-result-object v1

    invoke-static {v1}, Lm/j;->u(Lm/f;)Lm/j;

    move-result-object v1

    iput-object v1, v0, Lb0/k;->c:Lm/j;

    invoke-virtual {p0}, Lm/x;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_38

    invoke-virtual {p0, v2}, Lm/x;->v(I)Lm/f;

    move-result-object p0

    check-cast p0, Lm/a0;

    sget-object v1, Lm/h;->q:Lm/a;

    invoke-virtual {v1, p0, v2}, Lm/a;->d(Lm/a0;Z)Lm/u;

    move-result-object p0

    check-cast p0, Lm/h;

    invoke-static {p0}, Ll0/l;->h(Lm/h;)Ll0/l;

    move-result-object p0

    iput-object p0, v0, Lb0/k;->d:Ll0/l;

    :cond_38
    return-object v0

    :cond_39
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 5

    new-instance v0, Lm/g;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lm/g;-><init>(I)V

    iget-object v1, p0, Lb0/k;->c:Lm/j;

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    iget-object p0, p0, Lb0/k;->d:Ll0/l;

    if-eqz p0, :cond_19

    new-instance v1, Lm/d1;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, p0}, Lm/a0;-><init>(ZILm/f;)V

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    :cond_19
    new-instance p0, Lm/a1;

    invoke-direct {p0, v0}, Lm/x;-><init>(Lm/g;)V

    const/4 v0, -0x1

    iput v0, p0, Lm/a1;->q:I

    return-object p0
.end method
