.class public final Lx0/k;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/b;


# instance fields
.field public g:Le1/c0;


# virtual methods
.method public final g()Lorg/bouncycastle/crypto/m;
    .registers 9

    sget-object v0, Lx0/d;->a:Ljava/math/BigInteger;

    iget-object v0, p0, Lx0/k;->g:Le1/c0;

    iget-object v0, v0, Le1/c0;->i:Le1/e0;

    iget-object v1, v0, Le1/e0;->d:Ljava/math/BigInteger;

    iget-object v2, v0, Le1/e0;->c:Ljava/math/BigInteger;

    iget v3, v0, Le1/e0;->q:I

    const/16 v4, 0xa0

    if-nez v3, :cond_11

    goto :goto_14

    :cond_11
    if-ge v3, v4, :cond_14

    move v4, v3

    :cond_14
    :goto_14
    if-eqz v3, :cond_2f

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v5

    if-gt v3, v5, :cond_27

    if-lt v3, v4, :cond_1f

    goto :goto_2f

    :cond_1f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "when l value specified, it may not be less than m value"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_27
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "when l value specified, it must satisfy 2^(l-1) <= p"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2f
    :goto_2f
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v5

    if-le v4, v5, :cond_46

    const-string v5, "org.bouncycastle.dh.allow_unsafe_p_value"

    invoke-static {v5}, Lm4/h;->c(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3e

    goto :goto_46

    :cond_3e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unsafe p value so small specific l required"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_46
    :goto_46
    iget-object p0, p0, Lx0/k;->g:Le1/c0;

    iget-object p0, p0, Lorg/bouncycastle/crypto/z;->h:Ljava/lang/Object;

    check-cast p0, Ljava/security/SecureRandom;

    if-eqz v3, :cond_61

    ushr-int/lit8 v5, v3, 0x2

    :cond_50
    invoke-static {v3, p0}, Lm4/a;->c(ILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v4

    add-int/lit8 v6, v3, -0x1

    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v4

    invoke-static {v4}, Lk2/b0;->l(Ljava/math/BigInteger;)I

    move-result v6

    if-lt v6, v5, :cond_50

    goto :goto_84

    :cond_61
    sget-object v3, Lx0/d;->b:Ljava/math/BigInteger;

    if-eqz v4, :cond_6e

    sget-object v5, Lx0/d;->a:Ljava/math/BigInteger;

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v5, v4}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v4

    goto :goto_6f

    :cond_6e
    move-object v4, v3

    :goto_6f
    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v5

    ushr-int/lit8 v5, v5, 0x2

    :cond_79
    invoke-static {v4, v3, p0}, Lm4/a;->d(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-static {v6}, Lk2/b0;->l(Ljava/math/BigInteger;)I

    move-result v7

    if-lt v7, v5, :cond_79

    move-object v4, v6

    :goto_84
    invoke-virtual {v2, v4, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    new-instance v1, Lorg/bouncycastle/crypto/m;

    new-instance v2, Le1/g0;

    invoke-direct {v2, p0, v0}, Le1/g0;-><init>(Ljava/math/BigInteger;Le1/e0;)V

    new-instance p0, Le1/f0;

    invoke-direct {p0, v4, v0}, Le1/f0;-><init>(Ljava/math/BigInteger;Le1/e0;)V

    invoke-direct {v1, v2, p0}, Lorg/bouncycastle/crypto/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public final m(Lorg/bouncycastle/crypto/z;)V
    .registers 2

    check-cast p1, Le1/c0;

    iput-object p1, p0, Lx0/k;->g:Le1/c0;

    iget-object p1, p1, Le1/c0;->i:Le1/e0;

    iget-object p1, p1, Le1/e0;->d:Ljava/math/BigInteger;

    invoke-static {p1}, Lq4/k;->s(Ljava/math/BigInteger;)I

    iget-object p0, p0, Lx0/k;->g:Le1/c0;

    iget-object p0, p0, Le1/c0;->i:Le1/e0;

    sget-object p0, Lorg/bouncycastle/crypto/o;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/crypto/l;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
