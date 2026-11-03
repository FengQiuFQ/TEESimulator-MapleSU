.class public final Lh0/b;
.super Lm/n;


# instance fields
.field public c:Ljava/math/BigInteger;

.field public d:Lh0/a;

.field public q:Lm/l;

.field public x:Lm/r;

.field public y:Lm/l;

.field public z1:Lm/r;


# virtual methods
.method public final d()Lm/u;
    .registers 6

    new-instance v0, Lm/g;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lm/g;-><init>(I)V

    iget-object v1, p0, Lh0/b;->c:Ljava/math/BigInteger;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-eqz v2, :cond_23

    new-instance v2, Lm/d1;

    new-instance v3, Lm/l;

    invoke-direct {v3, v1}, Lm/l;-><init>(Ljava/math/BigInteger;)V

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, v1, v4, v3}, Lm/a0;-><init>(ZILm/f;)V

    invoke-virtual {v0, v2}, Lm/g;->a(Lm/f;)V

    :cond_23
    iget-object v1, p0, Lh0/b;->d:Lh0/a;

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    iget-object v1, p0, Lh0/b;->q:Lm/l;

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    iget-object v1, p0, Lh0/b;->x:Lm/r;

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    iget-object v1, p0, Lh0/b;->y:Lm/l;

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    iget-object p0, p0, Lh0/b;->z1:Lm/r;

    invoke-virtual {v0, p0}, Lm/g;->a(Lm/f;)V

    new-instance p0, Lm/a1;

    invoke-direct {p0, v0}, Lm/x;-><init>(Lm/g;)V

    const/4 v0, -0x1

    iput v0, p0, Lm/a1;->q:I

    return-object p0
.end method
