.class public final Ld0/m;
.super Lm/n;


# instance fields
.field public c:Lm/l;

.field public d:Lm/r;


# virtual methods
.method public final d()Lm/u;
    .registers 3

    new-instance v0, Lm/a1;

    iget-object v1, p0, Ld0/m;->d:Lm/r;

    iget-object p0, p0, Ld0/m;->c:Lm/l;

    invoke-direct {v0, v1, p0}, Lm/a1;-><init>(Lm/f;Lm/f;)V

    return-object v0
.end method
