.class public final Ll0/e;
.super Lm/n;


# instance fields
.field public c:Lm/q;

.field public d:Lm/y;


# virtual methods
.method public final d()Lm/u;
    .registers 3

    new-instance v0, Lm/a1;

    iget-object v1, p0, Ll0/e;->c:Lm/q;

    iget-object p0, p0, Ll0/e;->d:Lm/y;

    invoke-direct {v0, v1, p0}, Lm/a1;-><init>(Lm/f;Lm/f;)V

    return-object v0
.end method
