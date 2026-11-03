.class public final Lx0/i;
.super Lx0/j;


# virtual methods
.method public final g()Lorg/bouncycastle/crypto/m;
    .registers 4

    invoke-super {p0}, Lx0/j;->g()Lorg/bouncycastle/crypto/m;

    move-result-object p0

    iget-object v0, p0, Lorg/bouncycastle/crypto/m;->a:Ljava/lang/Object;

    check-cast v0, Le1/b;

    check-cast v0, Le1/x;

    iget-object p0, p0, Lorg/bouncycastle/crypto/m;->b:Ljava/lang/Object;

    check-cast p0, Le1/b;

    check-cast p0, Le1/w;

    new-instance v1, Le1/x;

    iget-object v2, v0, Le1/x;->q:Lk2/p;

    invoke-virtual {v2}, Lk2/p;->o()Lk2/p;

    move-result-object v2

    iget-object v0, v0, Le1/u;->d:Le1/r;

    invoke-direct {v1, v2, v0}, Le1/x;-><init>(Lk2/p;Le1/r;)V

    new-instance v0, Lorg/bouncycastle/crypto/m;

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/crypto/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
