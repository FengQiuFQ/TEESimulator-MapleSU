.class public final Lh0/a;
.super Lm/n;


# instance fields
.field public c:I

.field public d:I

.field public q:I

.field public x:I


# virtual methods
.method public final d()Lm/u;
    .registers 9

    iget v0, p0, Lh0/a;->d:I

    new-instance v1, Lm/g;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lm/g;-><init>(I)V

    new-instance v2, Lm/l;

    iget v3, p0, Lh0/a;->c:I

    int-to-long v3, v3

    invoke-direct {v2, v3, v4}, Lm/l;-><init>(J)V

    invoke-virtual {v1, v2}, Lm/g;->a(Lm/f;)V

    iget v2, p0, Lh0/a;->q:I

    const/4 v3, -0x1

    if-nez v2, :cond_22

    new-instance p0, Lm/l;

    int-to-long v4, v0

    invoke-direct {p0, v4, v5}, Lm/l;-><init>(J)V

    invoke-virtual {v1, p0}, Lm/g;->a(Lm/f;)V

    goto :goto_4f

    :cond_22
    new-instance v4, Lm/g;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Lm/g;-><init>(I)V

    new-instance v5, Lm/l;

    int-to-long v6, v0

    invoke-direct {v5, v6, v7}, Lm/l;-><init>(J)V

    invoke-virtual {v4, v5}, Lm/g;->a(Lm/f;)V

    new-instance v0, Lm/l;

    int-to-long v5, v2

    invoke-direct {v0, v5, v6}, Lm/l;-><init>(J)V

    invoke-virtual {v4, v0}, Lm/g;->a(Lm/f;)V

    new-instance v0, Lm/l;

    iget p0, p0, Lh0/a;->x:I

    int-to-long v5, p0

    invoke-direct {v0, v5, v6}, Lm/l;-><init>(J)V

    invoke-virtual {v4, v0}, Lm/g;->a(Lm/f;)V

    new-instance p0, Lm/a1;

    invoke-direct {p0, v4}, Lm/x;-><init>(Lm/g;)V

    iput v3, p0, Lm/a1;->q:I

    invoke-virtual {v1, p0}, Lm/g;->a(Lm/f;)V

    :goto_4f
    new-instance p0, Lm/a1;

    invoke-direct {p0, v1}, Lm/x;-><init>(Lm/g;)V

    iput v3, p0, Lm/a1;->q:I

    return-object p0
.end method
