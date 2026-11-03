.class public final La2/k;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/a;


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:[B

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/security/cert/X509CRLSelector;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, La2/k;->a:Z

    iput-boolean v0, p0, La2/k;->b:Z

    const/4 v1, 0x0

    iput-object v1, p0, La2/k;->f:Ljava/lang/Object;

    iput-object v1, p0, La2/k;->d:[B

    iput-boolean v0, p0, La2/k;->c:Z

    invoke-virtual {p1}, Ljava/security/cert/X509CRLSelector;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/cert/CRLSelector;

    iput-object p1, p0, La2/k;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/a;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La2/k;->f:Ljava/lang/Object;

    const/4 p1, 0x1

    const-string v0, "org.bouncycastle.pkcs1.not_strict"

    invoke-static {p1, v0}, Lm4/h;->d(ZLjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    goto :goto_18

    :cond_10
    const-string v0, "org.bouncycastle.pkcs1.strict"

    invoke-static {v1, v0}, Lm4/h;->d(ZLjava/lang/String;)Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    :goto_18
    iput-boolean v1, p0, La2/k;->c:Z

    return-void
.end method


# virtual methods
.method public getInputBlockSize()I
    .registers 2

    iget-object v0, p0, La2/k;->f:Ljava/lang/Object;

    check-cast v0, Lorg/bouncycastle/crypto/a;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/a;->getInputBlockSize()I

    move-result v0

    iget-boolean p0, p0, La2/k;->a:Z

    if-eqz p0, :cond_e

    add-int/lit8 v0, v0, -0xa

    :cond_e
    return v0
.end method

.method public getOutputBlockSize()I
    .registers 2

    iget-object v0, p0, La2/k;->f:Ljava/lang/Object;

    check-cast v0, Lorg/bouncycastle/crypto/a;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/a;->getOutputBlockSize()I

    move-result v0

    iget-boolean p0, p0, La2/k;->a:Z

    if-eqz p0, :cond_d

    return v0

    :cond_d
    add-int/lit8 v0, v0, -0xa

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/g;)V
    .registers 6

    iget-object v0, p0, La2/k;->f:Ljava/lang/Object;

    check-cast v0, Lorg/bouncycastle/crypto/a;

    instance-of v1, p2, Le1/t0;

    if-eqz v1, :cond_14

    move-object v1, p2

    check-cast v1, Le1/t0;

    iget-object v2, v1, Le1/t0;->c:Ljava/security/SecureRandom;

    iput-object v2, p0, La2/k;->e:Ljava/lang/Object;

    iget-object v1, v1, Le1/t0;->d:Lorg/bouncycastle/crypto/g;

    check-cast v1, Le1/b;

    goto :goto_23

    :cond_14
    move-object v1, p2

    check-cast v1, Le1/b;

    iget-boolean v2, v1, Le1/b;->c:Z

    if-nez v2, :cond_23

    if-eqz p1, :cond_23

    invoke-static {}, Lorg/bouncycastle/crypto/o;->b()Ljava/security/SecureRandom;

    move-result-object v2

    iput-object v2, p0, La2/k;->e:Ljava/lang/Object;

    :cond_23
    :goto_23
    invoke-interface {v0, p1, p2}, Lorg/bouncycastle/crypto/a;->init(ZLorg/bouncycastle/crypto/g;)V

    iget-boolean p2, v1, Le1/b;->c:Z

    iput-boolean p2, p0, La2/k;->b:Z

    iput-boolean p1, p0, La2/k;->a:Z

    invoke-interface {v0}, Lorg/bouncycastle/crypto/a;->getOutputBlockSize()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, La2/k;->d:[B

    return-void
.end method

.method public processBlock([BII)[B
    .registers 13

    iget-object v0, p0, La2/k;->f:Ljava/lang/Object;

    check-cast v0, Lorg/bouncycastle/crypto/a;

    iget-boolean v1, p0, La2/k;->a:Z

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_61

    invoke-virtual {p0}, La2/k;->getInputBlockSize()I

    move-result v1

    if-gt p3, v1, :cond_59

    invoke-interface {v0}, Lorg/bouncycastle/crypto/a;->getInputBlockSize()I

    move-result v1

    new-array v5, v1, [B

    iget-boolean v6, p0, La2/k;->b:Z

    if-eqz v6, :cond_29

    aput-byte v3, v5, v4

    move p0, v3

    :goto_1e
    sub-int v2, v1, p3

    sub-int/2addr v2, v3

    if-eq p0, v2, :cond_4b

    const/4 v2, -0x1

    aput-byte v2, v5, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_1e

    :cond_29
    iget-object v6, p0, La2/k;->e:Ljava/lang/Object;

    check-cast v6, Ljava/security/SecureRandom;

    invoke-virtual {v6, v5}, Ljava/security/SecureRandom;->nextBytes([B)V

    aput-byte v2, v5, v4

    move v2, v3

    :goto_33
    sub-int v6, v1, p3

    sub-int/2addr v6, v3

    if-eq v2, v6, :cond_4b

    :goto_38
    aget-byte v6, v5, v2

    if-nez v6, :cond_48

    iget-object v6, p0, La2/k;->e:Ljava/lang/Object;

    check-cast v6, Ljava/security/SecureRandom;

    invoke-virtual {v6}, Ljava/util/Random;->nextInt()I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v5, v2

    goto :goto_38

    :cond_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    :cond_4b
    sub-int p0, v1, p3

    add-int/lit8 v2, p0, -0x1

    aput-byte v4, v5, v2

    invoke-static {p1, p2, v5, p0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {v0, v5, v4, v1}, Lorg/bouncycastle/crypto/a;->processBlock([BII)[B

    move-result-object p0

    return-object p0

    :cond_59
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "input data too large"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_61
    invoke-interface {v0}, Lorg/bouncycastle/crypto/a;->getOutputBlockSize()I

    move-result v1

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/a;->processBlock([BII)[B

    move-result-object p1

    iget-boolean p2, p0, La2/k;->c:Z

    array-length p3, p1

    if-eq p3, v1, :cond_70

    move p3, v3

    goto :goto_71

    :cond_70
    move p3, v4

    :goto_71
    and-int/2addr p2, p3

    array-length p3, p1

    if-ge p3, v1, :cond_78

    iget-object p3, p0, La2/k;->d:[B

    goto :goto_79

    :cond_78
    move-object p3, p1

    :goto_79
    iget-boolean v0, p0, La2/k;->b:Z

    if-eqz v0, :cond_a2

    aget-byte v0, p3, v4

    and-int/lit16 v0, v0, 0xff

    xor-int/2addr v0, v2

    neg-int v0, v0

    move v1, v3

    move v2, v4

    move v5, v2

    :goto_86
    array-length v6, p3

    if-ge v1, v6, :cond_98

    aget-byte v6, p3, v1

    and-int/lit16 v6, v6, 0xff

    sub-int/2addr v6, v3

    shr-int/lit8 v6, v6, 0x1f

    not-int v7, v5

    and-int/2addr v7, v1

    and-int/2addr v7, v6

    xor-int/2addr v2, v7

    or-int/2addr v5, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_86

    :cond_98
    add-int/lit8 v1, v2, -0x9

    or-int/2addr v0, v1

    array-length v1, p3

    :goto_9c
    sub-int/2addr v1, v3

    sub-int/2addr v1, v2

    shr-int/lit8 v0, v0, 0x1f

    or-int/2addr v0, v1

    goto :goto_cb

    :cond_a2
    aget-byte v0, p3, v4

    and-int/lit16 v0, v0, 0xff

    xor-int/2addr v0, v3

    neg-int v0, v0

    move v1, v3

    move v2, v4

    move v5, v2

    :goto_ab
    array-length v6, p3

    if-ge v1, v6, :cond_c6

    aget-byte v6, p3, v1

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, v6, -0x1

    shr-int/lit8 v7, v7, 0x1f

    xor-int/lit16 v6, v6, 0xff

    sub-int/2addr v6, v3

    shr-int/lit8 v6, v6, 0x1f

    not-int v8, v5

    and-int/2addr v8, v1

    and-int/2addr v8, v7

    xor-int/2addr v2, v8

    or-int/2addr v5, v7

    or-int/2addr v6, v5

    not-int v6, v6

    or-int/2addr v0, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_ab

    :cond_c6
    add-int/lit8 v1, v2, -0x9

    or-int/2addr v0, v1

    array-length v1, p3

    goto :goto_9c

    :goto_cb
    if-ltz v0, :cond_f0

    if-nez p2, :cond_e8

    :try_start_cf
    new-array p2, v0, [B

    array-length v1, p3

    sub-int/2addr v1, v0

    invoke-static {p3, v1, p2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_d6
    .catchall {:try_start_cf .. :try_end_d6} :catchall_e6

    invoke-static {p1, v4}, Ljava/util/Arrays;->fill([BB)V

    iget-object p0, p0, La2/k;->d:[B

    array-length p3, p0

    array-length p1, p1

    sub-int/2addr p3, p1

    invoke-static {v4, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p0, v4, p1, v4}, Ljava/util/Arrays;->fill([BIIB)V

    return-object p2

    :catchall_e6
    move-exception p2

    goto :goto_f8

    :cond_e8
    :try_start_e8
    new-instance p2, Lorg/bouncycastle/crypto/x;

    const-string p3, "block incorrect size"

    invoke-direct {p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_f0
    new-instance p2, Lorg/bouncycastle/crypto/x;

    const-string p3, "block incorrect"

    invoke-direct {p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_f8
    .catchall {:try_start_e8 .. :try_end_f8} :catchall_e6

    :goto_f8
    invoke-static {p1, v4}, Ljava/util/Arrays;->fill([BB)V

    iget-object p0, p0, La2/k;->d:[B

    array-length p3, p0

    array-length p1, p1

    sub-int/2addr p3, p1

    invoke-static {v4, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p0, v4, p1, v4}, Ljava/util/Arrays;->fill([BIIB)V

    throw p2
.end method
