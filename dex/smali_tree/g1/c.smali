.class public final Lg1/c;
.super Ljava/security/SecureRandom;


# instance fields
.field public final c:Lg1/d;

.field public final d:Z

.field public final q:Lg1/a;

.field public x:Lh1/c;


# direct methods
.method public constructor <init>(Lg1/a;Lg1/d;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/security/SecureRandom;-><init>()V

    iput-object p1, p0, Lg1/c;->q:Lg1/a;

    iput-object p2, p0, Lg1/c;->c:Lg1/d;

    iput-boolean p3, p0, Lg1/c;->d:Z

    return-void
.end method


# virtual methods
.method public final a([B)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lg1/c;->x:Lh1/c;

    if-nez v0, :cond_12

    iget-object v0, p0, Lg1/c;->c:Lg1/d;

    iget-object v1, p0, Lg1/c;->q:Lg1/a;

    invoke-virtual {v0, v1}, Lg1/d;->f(Lg1/a;)Lh1/c;

    move-result-object v0

    iput-object v0, p0, Lg1/c;->x:Lh1/c;

    goto :goto_12

    :catchall_10
    move-exception p1

    goto :goto_19

    :cond_12
    :goto_12
    iget-object v0, p0, Lg1/c;->x:Lh1/c;

    invoke-interface {v0, p1}, Lh1/c;->b([B)V

    monitor-exit p0

    return-void

    :goto_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_10

    throw p1
.end method

.method public final generateSeed(I)[B
    .registers 9

    new-array v0, p1, [B

    mul-int/lit8 v1, p1, 0x8

    iget-object p0, p0, Lg1/c;->q:Lg1/a;

    invoke-interface {p0}, Lg1/a;->entropySize()I

    move-result v2

    const/4 v3, 0x0

    if-gt v1, v2, :cond_15

    invoke-interface {p0}, Lg1/a;->getEntropy()[B

    move-result-object p0

    invoke-static {p0, v3, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_15
    invoke-interface {p0}, Lg1/a;->entropySize()I

    move-result v1

    div-int/lit8 v1, v1, 0x8

    move v2, v3

    :goto_1c
    if-ge v2, p1, :cond_31

    invoke-interface {p0}, Lg1/a;->getEntropy()[B

    move-result-object v4

    array-length v5, v4

    sub-int v6, p1, v2

    if-gt v5, v6, :cond_2c

    array-length v5, v4

    invoke-static {v4, v3, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2f

    :cond_2c
    invoke-static {v4, v3, v0, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2f
    add-int/2addr v2, v1

    goto :goto_1c

    :cond_31
    return-object v0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .registers 3

    iget-object p0, p0, Lg1/c;->c:Lg1/d;

    iget v0, p0, Lg1/d;->g:I

    packed-switch v0, :pswitch_data_38

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HASH-DRBG-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lg1/d;->j:Ljava/lang/Object;

    check-cast p0, Ls0/e0;

    invoke-static {p0}, Lt4/d;->e(Lorg/bouncycastle/crypto/v;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_36

    :pswitch_1e
    iget-object p0, p0, Lg1/d;->j:Ljava/lang/Object;

    check-cast p0, Lz0/d;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HMAC-DRBG-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lz0/d;->g:Lorg/bouncycastle/crypto/v;

    invoke-static {p0}, Lt4/d;->e(Lorg/bouncycastle/crypto/v;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_36
    return-object p0

    nop

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_1e
    .end packed-switch
.end method

.method public final nextBytes([B)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lg1/c;->x:Lh1/c;

    if-nez v0, :cond_12

    iget-object v0, p0, Lg1/c;->c:Lg1/d;

    iget-object v1, p0, Lg1/c;->q:Lg1/a;

    invoke-virtual {v0, v1}, Lg1/d;->f(Lg1/a;)Lh1/c;

    move-result-object v0

    iput-object v0, p0, Lg1/c;->x:Lh1/c;

    goto :goto_12

    :catchall_10
    move-exception p1

    goto :goto_2b

    :cond_12
    :goto_12
    iget-object v0, p0, Lg1/c;->x:Lh1/c;

    iget-boolean v1, p0, Lg1/c;->d:Z

    invoke-interface {v0, v1, p1}, Lh1/c;->a(Z[B)I

    move-result v0

    if-gez v0, :cond_29

    iget-object v0, p0, Lg1/c;->x:Lh1/c;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lh1/c;->b([B)V

    iget-object v0, p0, Lg1/c;->x:Lh1/c;

    iget-boolean v1, p0, Lg1/c;->d:Z

    invoke-interface {v0, v1, p1}, Lh1/c;->a(Z[B)I

    :cond_29
    monitor-exit p0

    return-void

    :goto_2b
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_10

    throw p1
.end method

.method public final setSeed(J)V
    .registers 3

    monitor-enter p0

    :try_start_1
    monitor-exit p0

    return-void

    :catchall_3
    move-exception p1

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_3

    throw p1
.end method

.method public final setSeed([B)V
    .registers 2

    monitor-enter p0

    :try_start_1
    monitor-exit p0

    return-void

    :catchall_3
    move-exception p1

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_3

    throw p1
.end method
