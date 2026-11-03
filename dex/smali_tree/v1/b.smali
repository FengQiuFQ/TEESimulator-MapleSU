.class public final Lv1/b;
.super Lm/n;


# instance fields
.field public c:Lm/r;


# virtual methods
.method public final d()Lm/u;
    .registers 3

    new-instance v0, Lm/g;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lm/g;-><init>(I)V

    iget-object p0, p0, Lv1/b;->c:Lm/r;

    if-eqz p0, :cond_d

    invoke-virtual {v0, p0}, Lm/g;->a(Lm/f;)V

    :cond_d
    new-instance p0, Lm/a1;

    invoke-direct {p0, v0}, Lm/x;-><init>(Lm/g;)V

    const/4 v0, -0x1

    iput v0, p0, Lm/a1;->q:I

    return-object p0
.end method
