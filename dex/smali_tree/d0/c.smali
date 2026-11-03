.class public final Ld0/c;
.super Lm/n;


# instance fields
.field public c:Lm/q;

.field public d:Lm/n;


# virtual methods
.method public final d()Lm/u;
    .registers 6

    new-instance v0, Lm/a1;

    iget-object v1, p0, Ld0/c;->c:Lm/q;

    new-instance v2, Lm/d1;

    iget-object p0, p0, Ld0/c;->d:Lm/n;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, p0}, Lm/a0;-><init>(ZILm/f;)V

    invoke-direct {v0, v1, v2}, Lm/x;-><init>(Lm/f;Lm/f;)V

    const/4 p0, -0x1

    iput p0, v0, Lm/a1;->q:I

    return-object v0
.end method
