.class public final Lp0/c;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/c;


# instance fields
.field public a:Le1/w;


# virtual methods
.method public final a(Lorg/bouncycastle/crypto/g;)Ljava/math/BigInteger;
    .registers 6

    check-cast p1, Le1/x;

    iget-object v0, p0, Lp0/c;->a:Le1/w;

    iget-object v0, v0, Le1/u;->d:Le1/r;

    iget-object v1, p1, Le1/u;->d:Le1/r;

    invoke-virtual {v0, v1}, Le1/r;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_78

    iget-object p0, p0, Lp0/c;->a:Le1/w;

    iget-object p0, p0, Le1/w;->q:Ljava/math/BigInteger;

    iget-object v1, v0, Le1/r;->g:Lk2/h;

    iget-object p1, p1, Le1/x;->q:Lk2/p;

    invoke-static {v1, p1}, Lk2/b0;->d(Lk2/h;Lk2/p;)Lk2/p;

    move-result-object p1

    invoke-virtual {p1}, Lk2/p;->l()Z

    move-result v1

    if-nez v1, :cond_70

    iget-object v1, v0, Le1/r;->k:Ljava/math/BigInteger;

    sget-object v2, Lk2/a;->b:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_50

    monitor-enter v0

    :try_start_2b
    iget-object v2, v0, Le1/r;->l:Ljava/math/BigInteger;

    if-nez v2, :cond_3c

    iget-object v2, v0, Le1/r;->j:Ljava/math/BigInteger;

    iget-object v3, v0, Le1/r;->k:Ljava/math/BigInteger;

    invoke-static {v2, v3}, Lm4/a;->j(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, v0, Le1/r;->l:Ljava/math/BigInteger;

    goto :goto_3c

    :catchall_3a
    move-exception p0

    goto :goto_4e

    :cond_3c
    :goto_3c
    iget-object v2, v0, Le1/r;->l:Ljava/math/BigInteger;
    :try_end_3e
    .catchall {:try_start_2b .. :try_end_3e} :catchall_3a

    monitor-exit v0

    invoke-virtual {v2, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    iget-object v0, v0, Le1/r;->j:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p1, v1}, Lk2/b0;->D(Lk2/p;Ljava/math/BigInteger;)Lk2/p;

    move-result-object p1

    goto :goto_50

    :goto_4e
    :try_start_4e
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_3a

    throw p0

    :cond_50
    :goto_50
    invoke-virtual {p1, p0}, Lk2/p;->n(Ljava/math/BigInteger;)Lk2/p;

    move-result-object p0

    invoke-virtual {p0}, Lk2/p;->p()Lk2/p;

    move-result-object p0

    invoke-virtual {p0}, Lk2/p;->l()Z

    move-result p1

    if-nez p1, :cond_68

    invoke-virtual {p0}, Lk2/p;->b()V

    iget-object p0, p0, Lk2/p;->b:Lk2/b0;

    invoke-virtual {p0}, Lk2/b0;->L()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_68
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Infinity is not a valid agreement value for ECDH"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_70
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Infinity is not a valid public key for ECDH"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_78
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "ECDH public key has wrong domain parameters"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getFieldSize()I
    .registers 1

    iget-object p0, p0, Lp0/c;->a:Le1/w;

    iget-object p0, p0, Le1/u;->d:Le1/r;

    iget-object p0, p0, Le1/r;->g:Lk2/h;

    invoke-virtual {p0}, Lk2/h;->k()I

    move-result p0

    return p0
.end method

.method public final init(Lorg/bouncycastle/crypto/g;)V
    .registers 2

    check-cast p1, Le1/w;

    iput-object p1, p0, Lp0/c;->a:Le1/w;

    const-string p0, "ECDH"

    invoke-static {p0, p1}, Lt4/d;->X(Ljava/lang/String;Le1/u;)Lr0/a;

    invoke-static {}, Lorg/bouncycastle/crypto/o;->a()V

    return-void
.end method
