.class public Lx0/j;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/b;
.implements Lk2/a;


# instance fields
.field public g:Le1/r;

.field public h:Ljava/security/SecureRandom;


# virtual methods
.method public g()Lorg/bouncycastle/crypto/m;
    .registers 6

    iget-object v0, p0, Lx0/j;->g:Le1/r;

    iget-object v0, v0, Le1/r;->j:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    ushr-int/lit8 v2, v1, 0x2

    :cond_a
    :goto_a
    iget-object v3, p0, Lx0/j;->h:Ljava/security/SecureRandom;

    invoke-static {v1, v3}, Lm4/a;->c(ILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v3

    sget-object v4, Lk2/a;->b:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-ltz v4, :cond_a

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-ltz v4, :cond_1f

    goto :goto_a

    :cond_1f
    invoke-static {v3}, Lk2/b0;->l(Ljava/math/BigInteger;)I

    move-result v4

    if-ge v4, v2, :cond_26

    goto :goto_a

    :cond_26
    new-instance v0, Lk2/q;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lk2/q;-><init>(I)V

    iget-object v1, p0, Lx0/j;->g:Le1/r;

    iget-object v1, v1, Le1/r;->i:Lk2/p;

    invoke-virtual {v0, v1, v3}, Lk2/b0;->w(Lk2/p;Ljava/math/BigInteger;)Lk2/p;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/crypto/m;

    new-instance v2, Le1/x;

    iget-object v4, p0, Lx0/j;->g:Le1/r;

    invoke-direct {v2, v0, v4}, Le1/x;-><init>(Lk2/p;Le1/r;)V

    new-instance v0, Le1/w;

    iget-object p0, p0, Lx0/j;->g:Le1/r;

    invoke-direct {v0, v3, p0}, Le1/w;-><init>(Ljava/math/BigInteger;Le1/r;)V

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/crypto/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public final m(Lorg/bouncycastle/crypto/z;)V
    .registers 3

    check-cast p1, Le1/t;

    iget-object v0, p1, Lorg/bouncycastle/crypto/z;->h:Ljava/lang/Object;

    check-cast v0, Ljava/security/SecureRandom;

    iput-object v0, p0, Lx0/j;->h:Ljava/security/SecureRandom;

    iget-object p1, p1, Le1/t;->i:Le1/r;

    iput-object p1, p0, Lx0/j;->g:Le1/r;

    iget-object p0, p1, Le1/r;->g:Lk2/h;

    invoke-static {p0}, Lq4/k;->t(Lk2/h;)I

    sget-object p0, Lorg/bouncycastle/crypto/o;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/crypto/l;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
