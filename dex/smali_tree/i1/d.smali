.class public final Li1/d;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/p;


# instance fields
.field public g:Z

.field public h:Le1/u;

.field public i:Ljava/security/SecureRandom;


# virtual methods
.method public final b([B)[Ljava/math/BigInteger;
    .registers 11

    iget-boolean v0, p0, Li1/d;->g:Z

    if-eqz v0, :cond_bb

    invoke-virtual {p0}, Li1/d;->getOrder()Ljava/math/BigInteger;

    move-result-object v0

    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    iget-object p1, p0, Li1/d;->h:Le1/u;

    check-cast p1, Le1/w;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gez v2, :cond_b3

    :cond_18
    iget-object v2, p1, Le1/u;->d:Le1/r;

    iget-object v3, p0, Li1/d;->i:Ljava/security/SecureRandom;

    iget-object v4, v2, Le1/r;->j:Ljava/math/BigInteger;

    invoke-virtual {v4}, Ljava/math/BigInteger;->bitLength()I

    if-nez v3, :cond_28

    invoke-static {}, Lorg/bouncycastle/crypto/o;->b()Ljava/security/SecureRandom;

    move-result-object v3

    goto :goto_2a

    :cond_28
    sget-object v4, Lorg/bouncycastle/crypto/o;->a:Ljava/lang/ThreadLocal;

    :goto_2a
    iget-object v4, v2, Le1/r;->g:Lk2/h;

    invoke-static {v4}, Lq4/k;->t(Lk2/h;)I

    sget-object v4, Lorg/bouncycastle/crypto/o;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/crypto/l;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v2, Le1/r;->j:Ljava/math/BigInteger;

    invoke-virtual {v4}, Ljava/math/BigInteger;->bitLength()I

    move-result v5

    ushr-int/lit8 v6, v5, 0x2

    :cond_42
    :goto_42
    invoke-static {v5, v3}, Lm4/a;->c(ILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v7

    sget-object v8, Lk2/a;->b:Ljava/math/BigInteger;

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v8

    if-ltz v8, :cond_42

    invoke-virtual {v7, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v8

    if-ltz v8, :cond_55

    goto :goto_42

    :cond_55
    invoke-static {v7}, Lk2/b0;->l(Ljava/math/BigInteger;)I

    move-result v8

    if-ge v8, v6, :cond_5c

    goto :goto_42

    :cond_5c
    new-instance v3, Lk2/q;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lk2/q;-><init>(I)V

    iget-object v4, v2, Le1/r;->i:Lk2/p;

    invoke-virtual {v3, v4, v7}, Lk2/b0;->w(Lk2/p;Ljava/math/BigInteger;)Lk2/p;

    move-result-object v3

    new-instance v4, Lorg/bouncycastle/crypto/m;

    new-instance v5, Le1/x;

    invoke-direct {v5, v3, v2}, Le1/x;-><init>(Lk2/p;Le1/r;)V

    new-instance v3, Le1/w;

    invoke-direct {v3, v7, v2}, Le1/w;-><init>(Ljava/math/BigInteger;Le1/r;)V

    invoke-direct {v4, v5, v3}, Lorg/bouncycastle/crypto/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, v4, Lorg/bouncycastle/crypto/m;->a:Ljava/lang/Object;

    check-cast v2, Le1/b;

    check-cast v2, Le1/x;

    iget-object v2, v2, Le1/x;->q:Lk2/p;

    invoke-virtual {v2}, Lk2/p;->b()V

    iget-object v2, v2, Lk2/p;->b:Lk2/b0;

    invoke-virtual {v2}, Lk2/b0;->L()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Lk2/a;->a:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    iget-object p0, p1, Le1/w;->q:Ljava/math/BigInteger;

    iget-object p1, v4, Lorg/bouncycastle/crypto/m;->b:Ljava/lang/Object;

    check-cast p1, Le1/b;

    check-cast p1, Le1/w;

    iget-object p1, p1, Le1/w;->q:Ljava/math/BigInteger;

    invoke-virtual {v2, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    filled-new-array {v2, p0}, [Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_b3
    new-instance p0, Lorg/bouncycastle/crypto/q;

    const-string p1, "input too large for ECNR key"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_bb
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "not initialised for signing"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c(Ljava/math/BigInteger;Ljava/math/BigInteger;[B)Z
    .registers 10

    iget-boolean v0, p0, Li1/d;->g:Z

    if-nez v0, :cond_78

    iget-object p0, p0, Li1/d;->h:Le1/u;

    check-cast p0, Le1/x;

    iget-object v0, p0, Le1/u;->d:Le1/r;

    iget-object v1, v0, Le1/r;->j:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    new-instance v3, Ljava/math/BigInteger;

    const/4 v4, 0x1

    invoke-direct {v3, v4, p3}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result p3

    if-gt p3, v2, :cond_70

    iget-object p3, v0, Le1/r;->j:Ljava/math/BigInteger;

    sget-object v2, Lk2/a;->b:Ljava/math/BigInteger;

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    const/4 v5, 0x0

    if-ltz v2, :cond_61

    invoke-virtual {p1, p3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-ltz v2, :cond_2e

    goto :goto_61

    :cond_2e
    sget-object v2, Lk2/a;->a:Ljava/math/BigInteger;

    invoke-virtual {p2, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-ltz v2, :cond_61

    invoke-virtual {p2, p3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-ltz v2, :cond_3d

    goto :goto_61

    :cond_3d
    iget-object v0, v0, Le1/r;->i:Lk2/p;

    iget-object p0, p0, Le1/x;->q:Lk2/p;

    invoke-static {v0, p2, p0, p1}, Lk2/b0;->J(Lk2/p;Ljava/math/BigInteger;Lk2/p;Ljava/math/BigInteger;)Lk2/p;

    move-result-object p0

    invoke-virtual {p0}, Lk2/p;->p()Lk2/p;

    move-result-object p0

    invoke-virtual {p0}, Lk2/p;->l()Z

    move-result p2

    if-eqz p2, :cond_50

    goto :goto_61

    :cond_50
    invoke-virtual {p0}, Lk2/p;->b()V

    iget-object p0, p0, Lk2/p;->b:Lk2/b0;

    invoke-virtual {p0}, Lk2/b0;->L()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    :cond_61
    :goto_61
    if-eqz v5, :cond_6e

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6e

    return v4

    :cond_6e
    const/4 p0, 0x0

    return p0

    :cond_70
    new-instance p0, Lorg/bouncycastle/crypto/q;

    const-string p1, "input too large for ECNR key."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_78
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "not initialised for verifying"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getOrder()Ljava/math/BigInteger;
    .registers 1

    iget-object p0, p0, Li1/d;->h:Le1/u;

    iget-object p0, p0, Le1/u;->d:Le1/r;

    iget-object p0, p0, Le1/r;->j:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final init(ZLorg/bouncycastle/crypto/g;)V
    .registers 5

    iput-boolean p1, p0, Li1/d;->g:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1f

    instance-of v1, p2, Le1/t0;

    if-eqz v1, :cond_f

    check-cast p2, Le1/t0;

    iget-object v0, p2, Le1/t0;->c:Ljava/security/SecureRandom;

    iget-object p2, p2, Le1/t0;->d:Lorg/bouncycastle/crypto/g;

    :cond_f
    check-cast p2, Le1/w;

    iput-object p2, p0, Li1/d;->h:Le1/u;

    if-nez v0, :cond_1a

    invoke-static {}, Lorg/bouncycastle/crypto/o;->b()Ljava/security/SecureRandom;

    move-result-object v0

    goto :goto_1c

    :cond_1a
    sget-object p2, Lorg/bouncycastle/crypto/o;->a:Ljava/lang/ThreadLocal;

    :goto_1c
    iput-object v0, p0, Li1/d;->i:Ljava/security/SecureRandom;

    goto :goto_24

    :cond_1f
    check-cast p2, Le1/x;

    iput-object p2, p0, Li1/d;->h:Le1/u;

    goto :goto_1c

    :goto_24
    const-string p2, "ECNR"

    iget-object p0, p0, Li1/d;->h:Le1/u;

    invoke-static {p2, p0, p1}, Lq4/k;->Z(Ljava/lang/String;Le1/u;Z)Lr0/a;

    invoke-static {}, Lorg/bouncycastle/crypto/o;->a()V

    return-void
.end method
