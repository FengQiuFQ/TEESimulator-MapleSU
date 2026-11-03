.class public final Ld0/h;
.super Lm/n;


# instance fields
.field public c:Lm/x;


# virtual methods
.method public final d()Lm/u;
    .registers 5

    new-instance v0, Lm/h0;

    new-instance v1, Lm/l;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Lm/l;-><init>(J)V

    iget-object p0, p0, Ld0/h;->c:Lm/x;

    invoke-direct {v0, v1, p0}, Lm/x;-><init>(Lm/f;Lm/f;)V

    return-object v0
.end method
