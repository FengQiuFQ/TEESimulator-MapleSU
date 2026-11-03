.class public final Ld0/p;
.super Lm/n;

# interfaces
.implements Ld0/r;


# instance fields
.field public c:Ll0/b;

.field public d:Ll0/b;


# virtual methods
.method public final d()Lm/u;
    .registers 3

    new-instance v0, Lm/a1;

    iget-object v1, p0, Ld0/p;->c:Ll0/b;

    iget-object p0, p0, Ld0/p;->d:Ll0/b;

    invoke-direct {v0, v1, p0}, Lm/a1;-><init>(Lm/f;Lm/f;)V

    return-object v0
.end method
