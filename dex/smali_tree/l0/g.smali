.class public final Ll0/g;
.super Lm/n;


# instance fields
.field public A1:Lm/x;

.field public B1:Lm/b;

.field public C1:Ll0/w;

.field public c:Lm/l;

.field public d:Ll0/b0;

.field public q:Ll0/c;

.field public x:Ll0/b;

.field public y:Lm/l;

.field public z1:Ll0/d;


# virtual methods
.method public final d()Lm/u;
    .registers 4

    new-instance v0, Lm/g;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lm/g;-><init>(I)V

    iget-object v1, p0, Ll0/g;->c:Lm/l;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lm/l;->u(I)Z

    move-result v2

    if-nez v2, :cond_13

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    :cond_13
    iget-object v1, p0, Ll0/g;->d:Ll0/b0;

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    iget-object v1, p0, Ll0/g;->q:Ll0/c;

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    iget-object v1, p0, Ll0/g;->x:Ll0/b;

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    iget-object v1, p0, Ll0/g;->y:Lm/l;

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    iget-object v1, p0, Ll0/g;->z1:Ll0/d;

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    iget-object v1, p0, Ll0/g;->A1:Lm/x;

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    iget-object v1, p0, Ll0/g;->B1:Lm/b;

    if-eqz v1, :cond_38

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    :cond_38
    iget-object p0, p0, Ll0/g;->C1:Ll0/w;

    if-eqz p0, :cond_3f

    invoke-virtual {v0, p0}, Lm/g;->a(Lm/f;)V

    :cond_3f
    new-instance p0, Lm/a1;

    invoke-direct {p0, v0}, Lm/x;-><init>(Lm/g;)V

    const/4 v0, -0x1

    iput v0, p0, Lm/a1;->q:I

    return-object p0
.end method
