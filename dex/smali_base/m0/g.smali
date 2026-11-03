.class public final Lm0/g;
.super Lm/n;

# interfaces
.implements Lm0/m;


# instance fields
.field public c:Lk2/h;

.field public d:[B

.field public q:Lm/q;


# virtual methods
.method public final d()Lm/u;
    .registers 5

    iget-object v0, p0, Lm0/g;->c:Lk2/h;

    new-instance v1, Lm/g;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lm/g;-><init>(I)V

    iget-object v2, p0, Lm0/g;->q:Lm/q;

    sget-object v3, Lm0/m;->H0:Lm/q;

    invoke-virtual {v2, v3}, Lm/u;->n(Lm/u;)Z

    move-result v2

    if-eqz v2, :cond_3f

    iget-object v2, v0, Lk2/h;->b:Lk2/b0;

    invoke-virtual {v2}, Lk2/b0;->j()I

    move-result v3

    invoke-virtual {v2}, Lk2/b0;->L()Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v3, v2}, Lm0/l;->a(ILjava/math/BigInteger;)[B

    move-result-object v2

    new-instance v3, Lm/x0;

    invoke-direct {v3, v2}, Lm/r;-><init>([B)V

    invoke-virtual {v1, v3}, Lm/g;->a(Lm/f;)V

    iget-object v0, v0, Lk2/h;->c:Lk2/b0;

    invoke-virtual {v0}, Lk2/b0;->j()I

    move-result v2

    invoke-virtual {v0}, Lk2/b0;->L()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v2, v0}, Lm0/l;->a(ILjava/math/BigInteger;)[B

    move-result-object v0

    new-instance v2, Lm/x0;

    invoke-direct {v2, v0}, Lm/r;-><init>([B)V

    :goto_3b
    invoke-virtual {v1, v2}, Lm/g;->a(Lm/f;)V

    goto :goto_73

    :cond_3f
    iget-object v2, p0, Lm0/g;->q:Lm/q;

    sget-object v3, Lm0/m;->I0:Lm/q;

    invoke-virtual {v2, v3}, Lm/u;->n(Lm/u;)Z

    move-result v2

    if-eqz v2, :cond_73

    iget-object v2, v0, Lk2/h;->b:Lk2/b0;

    invoke-virtual {v2}, Lk2/b0;->j()I

    move-result v3

    invoke-virtual {v2}, Lk2/b0;->L()Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v3, v2}, Lm0/l;->a(ILjava/math/BigInteger;)[B

    move-result-object v2

    new-instance v3, Lm/x0;

    invoke-direct {v3, v2}, Lm/r;-><init>([B)V

    invoke-virtual {v1, v3}, Lm/g;->a(Lm/f;)V

    iget-object v0, v0, Lk2/h;->c:Lk2/b0;

    invoke-virtual {v0}, Lk2/b0;->j()I

    move-result v2

    invoke-virtual {v0}, Lk2/b0;->L()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v2, v0}, Lm0/l;->a(ILjava/math/BigInteger;)[B

    move-result-object v0

    new-instance v2, Lm/x0;

    invoke-direct {v2, v0}, Lm/r;-><init>([B)V

    goto :goto_3b

    :cond_73
    :goto_73
    iget-object p0, p0, Lm0/g;->d:[B

    if-eqz p0, :cond_80

    new-instance v0, Lm/p0;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lm/b;-><init>([BI)V

    invoke-virtual {v1, v0}, Lm/g;->a(Lm/f;)V

    :cond_80
    new-instance p0, Lm/a1;

    invoke-direct {p0, v1}, Lm/x;-><init>(Lm/g;)V

    const/4 v0, -0x1

    iput v0, p0, Lm/a1;->q:I

    return-object p0
.end method
