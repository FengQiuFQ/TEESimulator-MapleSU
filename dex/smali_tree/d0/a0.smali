.class public final Ld0/a0;
.super Lm/n;

# interfaces
.implements Ld0/r;


# instance fields
.field public c:Lm/l;

.field public d:Lm/y;

.field public q:Ld0/f;

.field public x:Lm/y;

.field public y:Lm/y;

.field public z1:Lm/y;


# virtual methods
.method public final d()Lm/u;
    .registers 6

    new-instance v0, Lm/g;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lm/g;-><init>(I)V

    iget-object v1, p0, Ld0/a0;->c:Lm/l;

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    iget-object v1, p0, Ld0/a0;->d:Lm/y;

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    iget-object v1, p0, Ld0/a0;->q:Ld0/f;

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    iget-object v1, p0, Ld0/a0;->x:Lm/y;

    const/4 v2, 0x0

    if-eqz v1, :cond_22

    new-instance v3, Lm/d1;

    invoke-direct {v3, v2, v2, v1}, Lm/a0;-><init>(ZILm/f;)V

    invoke-virtual {v0, v3}, Lm/g;->a(Lm/f;)V

    :cond_22
    iget-object v1, p0, Ld0/a0;->y:Lm/y;

    if-eqz v1, :cond_2f

    new-instance v3, Lm/d1;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4, v1}, Lm/a0;-><init>(ZILm/f;)V

    invoke-virtual {v0, v3}, Lm/g;->a(Lm/f;)V

    :cond_2f
    iget-object p0, p0, Ld0/a0;->z1:Lm/y;

    invoke-virtual {v0, p0}, Lm/g;->a(Lm/f;)V

    new-instance p0, Lm/h0;

    invoke-direct {p0, v0}, Lm/x;-><init>(Lm/g;)V

    return-object p0
.end method
