.class public final Lx0/c;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/b;


# instance fields
.field public g:Le1/d;


# virtual methods
.method public final g()Lorg/bouncycastle/crypto/m;
    .registers 5

    sget-object v0, Lx0/d;->a:Ljava/math/BigInteger;

    iget-object p0, p0, Lx0/c;->g:Le1/d;

    iget-object v0, p0, Le1/d;->i:Le1/g;

    iget-object p0, p0, Lorg/bouncycastle/crypto/z;->h:Ljava/lang/Object;

    check-cast p0, Ljava/security/SecureRandom;

    invoke-static {v0, p0}, Lx0/d;->a(Le1/g;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object p0

    iget-object v1, v0, Le1/g;->c:Ljava/math/BigInteger;

    iget-object v2, v0, Le1/g;->d:Ljava/math/BigInteger;

    invoke-virtual {v1, p0, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/crypto/m;

    new-instance v3, Le1/i;

    invoke-direct {v3, v1, v0}, Le1/i;-><init>(Ljava/math/BigInteger;Le1/g;)V

    new-instance v1, Le1/h;

    invoke-direct {v1, p0, v0}, Le1/h;-><init>(Ljava/math/BigInteger;Le1/g;)V

    invoke-direct {v2, v3, v1}, Lorg/bouncycastle/crypto/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method public final m(Lorg/bouncycastle/crypto/z;)V
    .registers 2

    check-cast p1, Le1/d;

    iput-object p1, p0, Lx0/c;->g:Le1/d;

    iget-object p1, p1, Le1/d;->i:Le1/g;

    iget-object p1, p1, Le1/g;->d:Ljava/math/BigInteger;

    invoke-static {p1}, Lq4/k;->s(Ljava/math/BigInteger;)I

    iget-object p0, p0, Lx0/c;->g:Le1/d;

    iget-object p0, p0, Le1/d;->i:Le1/g;

    sget-object p0, Lorg/bouncycastle/crypto/o;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/crypto/l;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
