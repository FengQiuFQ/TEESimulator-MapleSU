.class public final Ld0/u;
.super Lm/n;


# instance fields
.field public c:Lm/l;

.field public d:Lm/r;


# virtual methods
.method public final d()Lm/u;
    .registers 3

    new-instance v0, Lm/g;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lm/g;-><init>(I)V

    iget-object v1, p0, Ld0/u;->c:Lm/l;

    if-eqz v1, :cond_d

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    :cond_d
    iget-object p0, p0, Ld0/u;->d:Lm/r;

    invoke-virtual {v0, p0}, Lm/g;->a(Lm/f;)V

    new-instance p0, Lm/a1;

    invoke-direct {p0, v0}, Lm/x;-><init>(Lm/g;)V

    const/4 v0, -0x1

    iput v0, p0, Lm/a1;->q:I

    return-object p0
.end method
