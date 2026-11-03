.class public final Lb0/e;
.super Lm/n;


# instance fields
.field public c:Lb0/f;

.field public d:Lb0/i;


# direct methods
.method public static h(Ljava/lang/Object;)Lb0/e;
    .registers 5

    instance-of v0, p0, Lb0/e;

    if-eqz v0, :cond_7

    check-cast p0, Lb0/e;

    return-object p0

    :cond_7
    const/4 v0, 0x0

    if-eqz p0, :cond_48

    new-instance v1, Lb0/e;

    invoke-static {p0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lm/x;->v(I)Lm/f;

    move-result-object v2

    instance-of v3, v2, Lb0/f;

    if-eqz v3, :cond_20

    move-object v0, v2

    check-cast v0, Lb0/f;

    goto :goto_2d

    :cond_20
    if-eqz v2, :cond_2d

    new-instance v0, Lb0/f;

    invoke-static {v2}, Lm/h;->s(Ljava/lang/Object;)Lm/h;

    move-result-object v2

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lb0/f;->c:Lm/h;

    :cond_2d
    :goto_2d
    iput-object v0, v1, Lb0/e;->c:Lb0/f;

    invoke-virtual {p0}, Lm/x;->size()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_47

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lm/x;->v(I)Lm/f;

    move-result-object p0

    check-cast p0, Lm/a0;

    invoke-static {p0, v0}, Lm/x;->u(Lm/a0;Z)Lm/x;

    move-result-object p0

    invoke-static {p0}, Lb0/i;->h(Lm/n;)Lb0/i;

    move-result-object p0

    iput-object p0, v1, Lb0/e;->d:Lb0/i;

    :cond_47
    return-object v1

    :cond_48
    return-object v0
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 5

    new-instance v0, Lm/g;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lm/g;-><init>(I)V

    iget-object v1, p0, Lb0/e;->c:Lb0/f;

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    iget-object p0, p0, Lb0/e;->d:Lb0/i;

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
