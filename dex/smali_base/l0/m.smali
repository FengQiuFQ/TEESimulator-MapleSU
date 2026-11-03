.class public final Ll0/m;
.super Lm/n;


# instance fields
.field public c:Lm/x;

.field public d:Ll0/u0;

.field public q:Ll0/b;

.field public x:Lm/b;


# direct methods
.method public static i(Ljava/lang/Object;)Ll0/m;
    .registers 4

    instance-of v0, p0, Ll0/m;

    if-eqz v0, :cond_7

    check-cast p0, Ll0/m;

    return-object p0

    :cond_7
    if-eqz p0, :cond_45

    new-instance v0, Ll0/m;

    invoke-static {p0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v0, Ll0/m;->c:Lm/x;

    invoke-virtual {p0}, Lm/x;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3d

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lm/x;->v(I)Lm/f;

    move-result-object v1

    invoke-static {v1}, Ll0/u0;->h(Ljava/lang/Object;)Ll0/u0;

    move-result-object v1

    iput-object v1, v0, Ll0/m;->d:Ll0/u0;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lm/x;->v(I)Lm/f;

    move-result-object v1

    invoke-static {v1}, Ll0/b;->h(Ljava/lang/Object;)Ll0/b;

    move-result-object v1

    iput-object v1, v0, Ll0/m;->q:Ll0/b;

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lm/x;->v(I)Lm/f;

    move-result-object p0

    invoke-static {p0}, Lm/b;->t(Ljava/lang/Object;)Lm/b;

    move-result-object p0

    iput-object p0, v0, Ll0/m;->x:Lm/b;

    return-object v0

    :cond_3d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "sequence wrong size for a certificate"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_45
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 1

    iget-object p0, p0, Ll0/m;->c:Lm/x;

    return-object p0
.end method

.method public final h()Ll0/x0;
    .registers 1

    iget-object p0, p0, Ll0/m;->d:Ll0/u0;

    iget-object p0, p0, Ll0/u0;->z1:Ll0/a1;

    iget-object p0, p0, Ll0/a1;->d:Ll0/x0;

    return-object p0
.end method

.method public final j()Ll0/x0;
    .registers 1

    iget-object p0, p0, Ll0/m;->d:Ll0/u0;

    iget-object p0, p0, Ll0/u0;->z1:Ll0/a1;

    iget-object p0, p0, Ll0/a1;->c:Ll0/x0;

    return-object p0
.end method
