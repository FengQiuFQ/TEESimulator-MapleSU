.class public final Ll0/d;
.super Lm/n;


# instance fields
.field public c:Lm/j;

.field public d:Lm/j;


# virtual methods
.method public final d()Lm/u;
    .registers 3

    new-instance v0, Lm/a1;

    iget-object v1, p0, Ll0/d;->c:Lm/j;

    iget-object p0, p0, Ll0/d;->d:Lm/j;

    invoke-direct {v0, v1, p0}, Lm/a1;-><init>(Lm/f;Lm/f;)V

    return-object v0
.end method
