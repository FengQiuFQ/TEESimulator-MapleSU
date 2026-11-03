.class public final Lv0/b0;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lorg/bouncycastle/crypto/w;

.field public b:Z

.field public c:Le1/u;

.field public d:Le1/r;

.field public e:I

.field public f:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/w;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv0/b0;->a:Lorg/bouncycastle/crypto/w;

    return-void
.end method


# virtual methods
.method public final a(Lorg/bouncycastle/crypto/w;Lk2/b0;)V
    .registers 4

    iget p0, p0, Lv0/b0;->e:I

    invoke-virtual {p2}, Lk2/b0;->L()Ljava/math/BigInteger;

    move-result-object p2

    invoke-static {p0, p2}, Lm4/a;->a(ILjava/math/BigInteger;)[B

    move-result-object p0

    const/4 p2, 0x0

    array-length v0, p0

    invoke-interface {p1, p0, p2, v0}, Lorg/bouncycastle/crypto/v;->update([BII)V

    return-void
.end method

.method public final b(ZLorg/bouncycastle/crypto/g;)V
    .registers 4

    iput-boolean p1, p0, Lv0/b0;->b:Z

    if-eqz p1, :cond_2d

    check-cast p2, Le1/t0;

    iget-object p1, p2, Le1/t0;->d:Lorg/bouncycastle/crypto/g;

    check-cast p1, Le1/u;

    iput-object p1, p0, Lv0/b0;->c:Le1/u;

    iget-object v0, p1, Le1/u;->d:Le1/r;

    iput-object v0, p0, Lv0/b0;->d:Le1/r;

    check-cast p1, Le1/x;

    iget-object p1, p1, Le1/x;->q:Lk2/p;

    iget-object v0, v0, Le1/r;->k:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Lk2/p;->n(Ljava/math/BigInteger;)Lk2/p;

    move-result-object p1

    invoke-virtual {p1}, Lk2/p;->l()Z

    move-result p1

    if-nez p1, :cond_25

    iget-object p1, p2, Le1/t0;->c:Ljava/security/SecureRandom;

    iput-object p1, p0, Lv0/b0;->f:Ljava/security/SecureRandom;

    goto :goto_35

    :cond_25
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid key: [h]Q at infinity"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2d
    check-cast p2, Le1/u;

    iput-object p2, p0, Lv0/b0;->c:Le1/u;

    iget-object p1, p2, Le1/u;->d:Le1/r;

    iput-object p1, p0, Lv0/b0;->d:Le1/r;

    :goto_35
    iget-object p1, p0, Lv0/b0;->d:Le1/r;

    iget-object p1, p1, Le1/r;->g:Lk2/h;

    invoke-virtual {p1}, Lk2/h;->k()I

    move-result p1

    iput p1, p0, Lv0/b0;->e:I

    iget-object p0, p0, Lv0/b0;->d:Le1/r;

    iget-object p0, p0, Le1/r;->g:Lk2/h;

    invoke-static {p0}, Lq4/k;->t(Lk2/h;)I

    sget-object p0, Lorg/bouncycastle/crypto/o;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/crypto/l;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final c(Lorg/bouncycastle/crypto/w;Lk2/p;[B)V
    .registers 13

    invoke-interface {p1}, Lorg/bouncycastle/crypto/v;->getDigestSize()I

    move-result v0

    const/4 v1, 0x4

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-array v2, v2, [B

    instance-of v3, p1, Lm4/e;

    if-eqz v3, :cond_26

    invoke-virtual {p2}, Lk2/p;->b()V

    iget-object v3, p2, Lk2/p;->b:Lk2/b0;

    invoke-virtual {p0, p1, v3}, Lv0/b0;->a(Lorg/bouncycastle/crypto/w;Lk2/b0;)V

    invoke-virtual {p2}, Lk2/p;->e()Lk2/b0;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lv0/b0;->a(Lorg/bouncycastle/crypto/w;Lk2/b0;)V

    move-object v3, p1

    check-cast v3, Lm4/e;

    invoke-interface {v3}, Lm4/e;->a()Lm4/e;

    move-result-object v4

    goto :goto_28

    :cond_26
    const/4 v3, 0x0

    move-object v4, v3

    :goto_28
    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_2b
    array-length v8, p3

    if-ge v6, v8, :cond_59

    if-eqz v3, :cond_34

    invoke-interface {v3, v4}, Lm4/e;->c(Lm4/e;)V

    goto :goto_43

    :cond_34
    invoke-virtual {p2}, Lk2/p;->b()V

    iget-object v8, p2, Lk2/p;->b:Lk2/b0;

    invoke-virtual {p0, p1, v8}, Lv0/b0;->a(Lorg/bouncycastle/crypto/w;Lk2/b0;)V

    invoke-virtual {p2}, Lk2/p;->e()Lk2/b0;

    move-result-object v8

    invoke-virtual {p0, p1, v8}, Lv0/b0;->a(Lorg/bouncycastle/crypto/w;Lk2/b0;)V

    :goto_43
    add-int/lit8 v7, v7, 0x1

    invoke-static {v2, v7, v5}, Lm4/d;->w([BII)V

    invoke-interface {p1, v2, v5, v1}, Lorg/bouncycastle/crypto/v;->update([BII)V

    invoke-interface {p1, v2, v5}, Lorg/bouncycastle/crypto/v;->doFinal([BI)I

    array-length v8, p3

    sub-int/2addr v8, v6

    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v2, v8, v5, p3, v6}, Lm4/d;->L([BII[BI)V

    add-int/2addr v6, v8

    goto :goto_2b

    :cond_59
    return-void
.end method

.method public final d(I[B)[B
    .registers 12

    array-length v0, p2

    if-gt p1, v0, :cond_108

    if-eqz p1, :cond_108

    iget-boolean v0, p0, Lv0/b0;->b:Z

    const/4 v1, 0x0

    iget-object v2, p0, Lv0/b0;->a:Lorg/bouncycastle/crypto/w;

    if-eqz v0, :cond_84

    new-array v0, p1, [B

    invoke-static {p2, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v3, Lk2/q;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lk2/q;-><init>(I)V

    :cond_17
    iget-object v4, p0, Lv0/b0;->d:Le1/r;

    iget-object v4, v4, Le1/r;->j:Ljava/math/BigInteger;

    invoke-virtual {v4}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    :cond_1f
    iget-object v5, p0, Lv0/b0;->f:Ljava/security/SecureRandom;

    invoke-static {v4, v5}, Lm4/a;->c(ILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v5

    sget-object v6, Lm4/a;->a:Ljava/math/BigInteger;

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    iget-object v6, p0, Lv0/b0;->d:Le1/r;

    iget-object v6, v6, Le1/r;->j:Ljava/math/BigInteger;

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v6

    if-gez v6, :cond_1f

    iget-object v4, p0, Lv0/b0;->d:Le1/r;

    iget-object v4, v4, Le1/r;->i:Lk2/p;

    invoke-virtual {v3, v4, v5}, Lk2/b0;->w(Lk2/p;Ljava/math/BigInteger;)Lk2/p;

    move-result-object v4

    invoke-virtual {v4}, Lk2/p;->p()Lk2/p;

    move-result-object v4

    invoke-virtual {v4, v1}, Lk2/p;->h(Z)[B

    move-result-object v4

    iget-object v6, p0, Lv0/b0;->c:Le1/u;

    check-cast v6, Le1/x;

    iget-object v6, v6, Le1/x;->q:Lk2/p;

    invoke-virtual {v6, v5}, Lk2/p;->n(Ljava/math/BigInteger;)Lk2/p;

    move-result-object v5

    invoke-virtual {v5}, Lk2/p;->p()Lk2/p;

    move-result-object v5

    invoke-virtual {p0, v2, v5, v0}, Lv0/b0;->c(Lorg/bouncycastle/crypto/w;Lk2/p;[B)V

    move v6, v1

    :goto_59
    if-eq v6, p1, :cond_17

    aget-byte v7, v0, v6

    aget-byte v8, p2, v6

    if-eq v7, v8, :cond_81

    invoke-interface {v2}, Lorg/bouncycastle/crypto/v;->getDigestSize()I

    move-result v3

    new-array v3, v3, [B

    invoke-virtual {v5}, Lk2/p;->b()V

    iget-object v6, v5, Lk2/p;->b:Lk2/b0;

    invoke-virtual {p0, v2, v6}, Lv0/b0;->a(Lorg/bouncycastle/crypto/w;Lk2/b0;)V

    invoke-interface {v2, p2, v1, p1}, Lorg/bouncycastle/crypto/v;->update([BII)V

    invoke-virtual {v5}, Lk2/p;->e()Lk2/b0;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lv0/b0;->a(Lorg/bouncycastle/crypto/w;Lk2/b0;)V

    invoke-interface {v2, v3, v1}, Lorg/bouncycastle/crypto/v;->doFinal([BI)I

    invoke-static {v4, v0, v3}, Lm4/d;->k([B[B[B)[B

    move-result-object p0

    return-object p0

    :cond_81
    add-int/lit8 v6, v6, 0x1

    goto :goto_59

    :cond_84
    iget v0, p0, Lv0/b0;->e:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v3, v0, [B

    invoke-static {p2, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lv0/b0;->d:Le1/r;

    iget-object v4, v4, Le1/r;->g:Lk2/h;

    invoke-virtual {v4, v3}, Lk2/h;->g([B)Lk2/p;

    move-result-object v4

    iget-object v5, p0, Lv0/b0;->d:Le1/r;

    iget-object v5, v5, Le1/r;->k:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Lk2/p;->n(Ljava/math/BigInteger;)Lk2/p;

    move-result-object v5

    invoke-virtual {v5}, Lk2/p;->l()Z

    move-result v5

    if-nez v5, :cond_100

    iget-object v5, p0, Lv0/b0;->c:Le1/u;

    check-cast v5, Le1/w;

    iget-object v5, v5, Le1/w;->q:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Lk2/p;->n(Ljava/math/BigInteger;)Lk2/p;

    move-result-object v4

    invoke-virtual {v4}, Lk2/p;->p()Lk2/p;

    move-result-object v4

    invoke-interface {v2}, Lorg/bouncycastle/crypto/v;->getDigestSize()I

    move-result v5

    sub-int/2addr p1, v0

    sub-int/2addr p1, v5

    new-array v5, p1, [B

    invoke-static {p2, v0, v5, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v2, v4, v5}, Lv0/b0;->c(Lorg/bouncycastle/crypto/w;Lk2/p;[B)V

    invoke-interface {v2}, Lorg/bouncycastle/crypto/v;->getDigestSize()I

    move-result v6

    new-array v7, v6, [B

    invoke-virtual {v4}, Lk2/p;->b()V

    iget-object v8, v4, Lk2/p;->b:Lk2/b0;

    invoke-virtual {p0, v2, v8}, Lv0/b0;->a(Lorg/bouncycastle/crypto/w;Lk2/b0;)V

    invoke-interface {v2, v5, v1, p1}, Lorg/bouncycastle/crypto/v;->update([BII)V

    invoke-virtual {v4}, Lk2/p;->e()Lk2/b0;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lv0/b0;->a(Lorg/bouncycastle/crypto/w;Lk2/b0;)V

    invoke-interface {v2, v7, v1}, Lorg/bouncycastle/crypto/v;->doFinal([BI)I

    move p0, v1

    move v2, p0

    :goto_de
    if-eq p0, v6, :cond_ec

    aget-byte v4, v7, p0

    add-int v8, v0, p1

    add-int/2addr v8, p0

    aget-byte v8, p2, v8

    xor-int/2addr v4, v8

    or-int/2addr v2, v4

    add-int/lit8 p0, p0, 0x1

    goto :goto_de

    :cond_ec
    invoke-static {v3, v1}, Ljava/util/Arrays;->fill([BB)V

    invoke-static {v7, v1}, Ljava/util/Arrays;->fill([BB)V

    if-nez v2, :cond_f5

    return-object v5

    :cond_f5
    invoke-static {v5, v1}, Ljava/util/Arrays;->fill([BB)V

    new-instance p0, Lorg/bouncycastle/crypto/x;

    const-string p1, "invalid cipher text"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_100
    new-instance p0, Lorg/bouncycastle/crypto/x;

    const-string p1, "[h]C1 at infinity"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_108
    new-instance p0, Lorg/bouncycastle/crypto/q;

    const-string p1, "input buffer too short"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
