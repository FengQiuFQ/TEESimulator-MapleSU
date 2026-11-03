.class public final Lx0/l;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/b;


# instance fields
.field public g:Le1/h0;


# virtual methods
.method public final g()Lorg/bouncycastle/crypto/m;
    .registers 8

    iget-object p0, p0, Lx0/l;->g:Le1/h0;

    iget-object v0, p0, Le1/h0;->i:Le1/i0;

    iget-object p0, p0, Lorg/bouncycastle/crypto/z;->h:Ljava/lang/Object;

    check-cast p0, Ljava/security/SecureRandom;

    iget-object v1, v0, Le1/i0;->d:Ljava/math/BigInteger;

    iget-object v2, v0, Le1/i0;->c:Ljava/math/BigInteger;

    iget-object v3, v0, Le1/i0;->q:Ljava/math/BigInteger;

    :cond_e
    :goto_e
    const/16 v4, 0x100

    invoke-static {v4, p0}, Lm4/a;->c(ILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->signum()I

    move-result v5

    const/4 v6, 0x1

    if-lt v5, v6, :cond_e

    invoke-virtual {v4, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v5

    if-ltz v5, :cond_22

    goto :goto_e

    :cond_22
    invoke-static {v4}, Lk2/b0;->l(Ljava/math/BigInteger;)I

    move-result v5

    const/16 v6, 0x40

    if-ge v5, v6, :cond_2b

    goto :goto_e

    :cond_2b
    invoke-virtual {v3, v4, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    new-instance v1, Lorg/bouncycastle/crypto/m;

    new-instance v2, Le1/k0;

    invoke-direct {v2, p0, v0}, Le1/k0;-><init>(Ljava/math/BigInteger;Le1/i0;)V

    new-instance p0, Le1/j0;

    invoke-direct {p0, v4, v0}, Le1/j0;-><init>(Ljava/math/BigInteger;Le1/i0;)V

    invoke-direct {v1, v2, p0}, Lorg/bouncycastle/crypto/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public final m(Lorg/bouncycastle/crypto/z;)V
    .registers 2

    check-cast p1, Le1/h0;

    iput-object p1, p0, Lx0/l;->g:Le1/h0;

    iget-object p1, p1, Le1/h0;->i:Le1/i0;

    iget-object p1, p1, Le1/i0;->c:Ljava/math/BigInteger;

    invoke-static {p1}, Lq4/k;->s(Ljava/math/BigInteger;)I

    iget-object p0, p0, Lx0/l;->g:Le1/h0;

    iget-object p0, p0, Le1/h0;->i:Le1/i0;

    sget-object p0, Lorg/bouncycastle/crypto/o;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/crypto/l;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
