.class public final Li1/m;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/m0;
.implements Lk2/a;


# instance fields
.field public final g:Li1/l;

.field public final h:Ls0/j;

.field public final i:Li1/k;

.field public j:I

.field public k:Le1/r;

.field public l:Lk2/p;

.field public m:Le1/u;

.field public n:[B


# direct methods
.method public constructor <init>(Ls0/j;)V
    .registers 4

    sget-object v0, Li1/k;->c:Li1/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Li1/l;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Li1/m;->g:Li1/l;

    const/4 v1, 0x0

    iput v1, p0, Li1/m;->j:I

    iput-object v0, p0, Li1/m;->i:Li1/k;

    iput-object p1, p0, Li1/m;->h:Ls0/j;

    return-void
.end method

.method public static c(Lorg/bouncycastle/crypto/v;Lk2/b0;)V
    .registers 4

    invoke-virtual {p1}, Lk2/b0;->i()[B

    move-result-object p1

    const/4 v0, 0x0

    array-length v1, p1

    invoke-interface {p0, p1, v0, v1}, Lorg/bouncycastle/crypto/v;->update([BII)V

    return-void
.end method


# virtual methods
.method public final a([B)Z
    .registers 5

    invoke-virtual {p0}, Li1/m;->d()V

    const/4 v0, 0x0

    :try_start_4
    iget-object v1, p0, Li1/m;->i:Li1/k;

    iget-object v2, p0, Li1/m;->k:Le1/r;

    iget-object v2, v2, Le1/r;->j:Ljava/math/BigInteger;

    invoke-virtual {v1, v2, p1}, Li1/k;->a(Ljava/math/BigInteger;[B)[Ljava/math/BigInteger;

    move-result-object p1

    aget-object v1, p1, v0

    const/4 v2, 0x1

    aget-object p1, p1, v2

    invoke-virtual {p0, v1, p1}, Li1/m;->f(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result p1
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_17} :catch_20
    .catchall {:try_start_4 .. :try_end_17} :catchall_1b

    invoke-virtual {p0}, Li1/m;->e()V

    return p1

    :catchall_1b
    move-exception p1

    invoke-virtual {p0}, Li1/m;->e()V

    throw p1

    :catch_20
    invoke-virtual {p0}, Li1/m;->e()V

    return v0
.end method

.method public final b()[B
    .registers 10

    invoke-virtual {p0}, Li1/m;->d()V

    iget-object v0, p0, Li1/m;->h:Ls0/j;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/v;->getDigestSize()I

    move-result v1

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/bouncycastle/crypto/v;->doFinal([BI)I

    iget-object v0, p0, Li1/m;->k:Le1/r;

    iget-object v0, v0, Le1/r;->j:Ljava/math/BigInteger;

    new-instance v2, Ljava/math/BigInteger;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    iget-object v1, p0, Li1/m;->m:Le1/u;

    check-cast v1, Le1/w;

    iget-object v1, v1, Le1/w;->q:Ljava/math/BigInteger;

    new-instance v3, Lk2/q;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lk2/q;-><init>(I)V

    :cond_25
    iget-object v4, p0, Li1/m;->g:Li1/l;

    invoke-virtual {v4}, Li1/l;->a()Ljava/math/BigInteger;

    move-result-object v4

    iget-object v5, p0, Li1/m;->k:Le1/r;

    iget-object v5, v5, Le1/r;->i:Lk2/p;

    invoke-virtual {v3, v5, v4}, Lk2/b0;->w(Lk2/p;Ljava/math/BigInteger;)Lk2/p;

    move-result-object v5

    invoke-virtual {v5}, Lk2/p;->p()Lk2/p;

    move-result-object v5

    invoke-virtual {v5}, Lk2/p;->b()V

    iget-object v5, v5, Lk2/p;->b:Lk2/b0;

    invoke-virtual {v5}, Lk2/b0;->L()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    sget-object v6, Lk2/a;->a:Ljava/math/BigInteger;

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_25

    invoke-virtual {v5, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_25

    sget-object v7, Lk2/a;->b:Ljava/math/BigInteger;

    invoke-virtual {v1, v7}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-static {v0, v7}, Lm4/a;->i(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v5, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_25

    :try_start_7e
    iget-object v0, p0, Li1/m;->i:Li1/k;

    iget-object v1, p0, Li1/m;->k:Le1/r;

    iget-object v1, v1, Le1/r;->j:Ljava/math/BigInteger;

    invoke-virtual {v0, v1, v5, v4}, Li1/k;->b(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)[B

    move-result-object v0
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_88} :catch_8e
    .catchall {:try_start_7e .. :try_end_88} :catchall_8c

    invoke-virtual {p0}, Li1/m;->e()V

    return-object v0

    :catchall_8c
    move-exception v0

    goto :goto_aa

    :catch_8e
    move-exception v0

    :try_start_8f
    new-instance v1, Lorg/bouncycastle/crypto/h;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to encode signature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/crypto/h;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
    :try_end_aa
    .catchall {:try_start_8f .. :try_end_aa} :catchall_8c

    :goto_aa
    invoke-virtual {p0}, Li1/m;->e()V

    throw v0
.end method

.method public final d()V
    .registers 6

    iget v0, p0, Li1/m;->j:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_11

    if-ne v0, v2, :cond_9

    return-void

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "SM2Signer needs to be initialized"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    iget-object v0, p0, Li1/m;->n:[B

    const/4 v1, 0x0

    array-length v3, v0

    iget-object v4, p0, Li1/m;->h:Ls0/j;

    invoke-virtual {v4, v0, v1, v3}, Ls0/j;->update([BII)V

    iput v2, p0, Li1/m;->j:I

    return-void
.end method

.method public final e()V
    .registers 4

    iget v0, p0, Li1/m;->j:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_18

    const/4 v2, 0x2

    if-ne v0, v2, :cond_10

    iget-object v0, p0, Li1/m;->h:Ls0/j;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/v;->reset()V

    iput v1, p0, Li1/m;->j:I

    return-void

    :cond_10
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "SM2Signer needs to be initialized"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_18
    return-void
.end method

.method public final f(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z
    .registers 8

    iget-object v0, p0, Li1/m;->k:Le1/r;

    iget-object v0, v0, Le1/r;->j:Ljava/math/BigInteger;

    sget-object v1, Lk2/a;->b:Ljava/math/BigInteger;

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    const/4 v3, 0x0

    if-ltz v2, :cond_72

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-ltz v2, :cond_14

    goto :goto_72

    :cond_14
    invoke-virtual {p2, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-ltz v1, :cond_72

    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-ltz v1, :cond_21

    goto :goto_72

    :cond_21
    iget-object v1, p0, Li1/m;->h:Ls0/j;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/v;->getDigestSize()I

    move-result v2

    new-array v2, v2, [B

    invoke-interface {v1, v2, v3}, Lorg/bouncycastle/crypto/v;->doFinal([BI)I

    new-instance v1, Ljava/math/BigInteger;

    const/4 v4, 0x1

    invoke-direct {v1, v4, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v4, Lk2/a;->a:Ljava/math/BigInteger;

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43

    goto :goto_72

    :cond_43
    iget-object v4, p0, Li1/m;->m:Le1/u;

    check-cast v4, Le1/x;

    iget-object v4, v4, Le1/x;->q:Lk2/p;

    iget-object p0, p0, Li1/m;->k:Le1/r;

    iget-object p0, p0, Le1/r;->i:Lk2/p;

    invoke-static {p0, p2, v4, v2}, Lk2/b0;->J(Lk2/p;Ljava/math/BigInteger;Lk2/p;Ljava/math/BigInteger;)Lk2/p;

    move-result-object p0

    invoke-virtual {p0}, Lk2/p;->p()Lk2/p;

    move-result-object p0

    invoke-virtual {p0}, Lk2/p;->l()Z

    move-result p2

    if-eqz p2, :cond_5c

    goto :goto_72

    :cond_5c
    invoke-virtual {p0}, Lk2/p;->b()V

    iget-object p0, p0, Lk2/p;->b:Lk2/b0;

    invoke-virtual {p0}, Lk2/b0;->L()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_72
    :goto_72
    return v3
.end method

.method public final init(ZLorg/bouncycastle/crypto/g;)V
    .registers 10

    const-string v0, "31323334353637383132333435363738"

    invoke-static {v0}, Ln4/c;->c(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_61

    instance-of v2, p2, Le1/t0;

    if-eqz v2, :cond_17

    check-cast p2, Le1/t0;

    iget-object v2, p2, Le1/t0;->d:Lorg/bouncycastle/crypto/g;

    iget-object p2, p2, Le1/t0;->c:Ljava/security/SecureRandom;

    move-object v6, v2

    move-object v2, p2

    move-object p2, v6

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    check-cast p2, Le1/w;

    iput-object p2, p0, Li1/m;->m:Le1/u;

    iget-object v3, p2, Le1/u;->d:Le1/r;

    iput-object v3, p0, Li1/m;->k:Le1/r;

    iget-object p2, p2, Le1/w;->q:Ljava/math/BigInteger;

    iget-object v3, v3, Le1/r;->j:Ljava/math/BigInteger;

    sget-object v4, Lk2/a;->b:Ljava/math/BigInteger;

    invoke-virtual {p2, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v5

    if-ltz v5, :cond_59

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-gez v4, :cond_59

    if-nez v2, :cond_3d

    invoke-static {}, Lorg/bouncycastle/crypto/o;->b()Ljava/security/SecureRandom;

    move-result-object v2

    goto :goto_3f

    :cond_3d
    sget-object v4, Lorg/bouncycastle/crypto/o;->a:Ljava/lang/ThreadLocal;

    :goto_3f
    iget-object v4, p0, Li1/m;->g:Li1/l;

    iput-object v3, v4, Li1/l;->a:Ljava/math/BigInteger;

    iput-object v2, v4, Li1/l;->b:Ljava/security/SecureRandom;

    new-instance v2, Lk2/q;

    invoke-direct {v2, v1}, Lk2/q;-><init>(I)V

    iget-object v3, p0, Li1/m;->k:Le1/r;

    iget-object v3, v3, Le1/r;->i:Lk2/p;

    invoke-virtual {v2, v3, p2}, Lk2/b0;->w(Lk2/p;Ljava/math/BigInteger;)Lk2/p;

    move-result-object p2

    invoke-virtual {p2}, Lk2/p;->p()Lk2/p;

    move-result-object p2

    :goto_56
    iput-object p2, p0, Li1/m;->l:Lk2/p;

    goto :goto_6c

    :cond_59
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "SM2 private key out of range"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_61
    check-cast p2, Le1/x;

    iput-object p2, p0, Li1/m;->m:Le1/u;

    iget-object v2, p2, Le1/u;->d:Le1/r;

    iput-object v2, p0, Li1/m;->k:Le1/r;

    iget-object p2, p2, Le1/x;->q:Lk2/p;

    goto :goto_56

    :goto_6c
    const-string p2, "ECNR"

    iget-object v2, p0, Li1/m;->m:Le1/u;

    invoke-static {p2, v2, p1}, Lq4/k;->Z(Ljava/lang/String;Le1/u;Z)Lr0/a;

    invoke-static {}, Lorg/bouncycastle/crypto/o;->a()V

    iget-object p1, p0, Li1/m;->h:Ls0/j;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/v;->reset()V

    array-length p2, v0

    mul-int/lit8 p2, p2, 0x8

    ushr-int/lit8 v2, p2, 0x8

    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Ls0/j;->update(B)V

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Ls0/j;->update(B)V

    array-length p2, v0

    invoke-virtual {p1, v0, v1, p2}, Ls0/j;->update([BII)V

    iget-object p2, p0, Li1/m;->k:Le1/r;

    iget-object p2, p2, Le1/r;->g:Lk2/h;

    iget-object p2, p2, Lk2/h;->b:Lk2/b0;

    invoke-static {p1, p2}, Li1/m;->c(Lorg/bouncycastle/crypto/v;Lk2/b0;)V

    iget-object p2, p0, Li1/m;->k:Le1/r;

    iget-object p2, p2, Le1/r;->g:Lk2/h;

    iget-object p2, p2, Lk2/h;->c:Lk2/b0;

    invoke-static {p1, p2}, Li1/m;->c(Lorg/bouncycastle/crypto/v;Lk2/b0;)V

    iget-object p2, p0, Li1/m;->k:Le1/r;

    iget-object p2, p2, Le1/r;->i:Lk2/p;

    invoke-virtual {p2}, Lk2/p;->b()V

    iget-object p2, p2, Lk2/p;->b:Lk2/b0;

    invoke-static {p1, p2}, Li1/m;->c(Lorg/bouncycastle/crypto/v;Lk2/b0;)V

    iget-object p2, p0, Li1/m;->k:Le1/r;

    iget-object p2, p2, Le1/r;->i:Lk2/p;

    invoke-virtual {p2}, Lk2/p;->e()Lk2/b0;

    move-result-object p2

    invoke-static {p1, p2}, Li1/m;->c(Lorg/bouncycastle/crypto/v;Lk2/b0;)V

    iget-object p2, p0, Li1/m;->l:Lk2/p;

    invoke-virtual {p2}, Lk2/p;->b()V

    iget-object p2, p2, Lk2/p;->b:Lk2/b0;

    invoke-static {p1, p2}, Li1/m;->c(Lorg/bouncycastle/crypto/v;Lk2/b0;)V

    iget-object p2, p0, Li1/m;->l:Lk2/p;

    invoke-virtual {p2}, Lk2/p;->e()Lk2/b0;

    move-result-object p2

    invoke-static {p1, p2}, Li1/m;->c(Lorg/bouncycastle/crypto/v;Lk2/b0;)V

    invoke-interface {p1}, Lorg/bouncycastle/crypto/v;->getDigestSize()I

    move-result p2

    new-array p2, p2, [B

    invoke-interface {p1, p2, v1}, Lorg/bouncycastle/crypto/v;->doFinal([BI)I

    iput-object p2, p0, Li1/m;->n:[B

    const/4 p1, 0x1

    iput p1, p0, Li1/m;->j:I

    return-void
.end method

.method public final update(B)V
    .registers 2

    invoke-virtual {p0}, Li1/m;->d()V

    iget-object p0, p0, Li1/m;->h:Ls0/j;

    invoke-virtual {p0, p1}, Ls0/j;->update(B)V

    return-void
.end method

.method public final update([BII)V
    .registers 4

    invoke-virtual {p0}, Li1/m;->d()V

    iget-object p0, p0, Li1/m;->h:Ls0/j;

    invoke-virtual {p0, p1, p2, p3}, Ls0/j;->update([BII)V

    return-void
.end method
