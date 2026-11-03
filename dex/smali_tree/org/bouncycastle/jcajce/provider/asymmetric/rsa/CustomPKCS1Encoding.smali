.class Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/a;


# static fields
.field private static final HEADER_LENGTH:I = 0xa


# instance fields
.field private blockBuffer:[B

.field private engine:Lorg/bouncycastle/crypto/a;

.field private forEncryption:Z

.field private forPrivateKey:Z

.field private random:Ljava/security/SecureRandom;

.field private useStrictLength:Z


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->engine:Lorg/bouncycastle/crypto/a;

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->useStrict()Z

    move-result p1

    iput-boolean p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->useStrictLength:Z

    return-void
.end method

.method private static checkPkcs1Encoding1([B)I
    .registers 9

    const/4 v0, 0x0

    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    neg-int v1, v1

    move v3, v1

    move v4, v2

    move v1, v0

    :goto_b
    array-length v5, p0

    if-ge v4, v5, :cond_26

    aget-byte v5, p0, v4

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, v5, -0x1

    shr-int/lit8 v6, v6, 0x1f

    xor-int/lit16 v5, v5, 0xff

    sub-int/2addr v5, v2

    shr-int/lit8 v5, v5, 0x1f

    not-int v7, v1

    and-int/2addr v7, v4

    and-int/2addr v7, v6

    xor-int/2addr v0, v7

    or-int/2addr v1, v6

    or-int/2addr v5, v1

    not-int v5, v5

    or-int/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_26
    add-int/lit8 v1, v0, -0x9

    or-int/2addr v1, v3

    array-length p0, p0

    sub-int/2addr p0, v2

    sub-int/2addr p0, v0

    shr-int/lit8 v0, v1, 0x1f

    or-int/2addr p0, v0

    return p0
.end method

.method private static checkPkcs1Encoding2([B)I
    .registers 8

    const/4 v0, 0x0

    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    xor-int/lit8 v1, v1, 0x2

    neg-int v1, v1

    const/4 v2, 0x1

    move v3, v0

    move v4, v2

    :goto_b
    array-length v5, p0

    if-ge v4, v5, :cond_1d

    aget-byte v5, p0, v4

    and-int/lit16 v5, v5, 0xff

    sub-int/2addr v5, v2

    shr-int/lit8 v5, v5, 0x1f

    not-int v6, v3

    and-int/2addr v6, v4

    and-int/2addr v6, v5

    xor-int/2addr v0, v6

    or-int/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_1d
    add-int/lit8 v3, v0, -0x9

    or-int/2addr v1, v3

    array-length p0, p0

    sub-int/2addr p0, v2

    sub-int/2addr p0, v0

    shr-int/lit8 v0, v1, 0x1f

    or-int/2addr p0, v0

    return p0
.end method

.method private decodeBlock([BII)[B
    .registers 7

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->engine:Lorg/bouncycastle/crypto/a;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/a;->getOutputBlockSize()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->engine:Lorg/bouncycastle/crypto/a;

    invoke-interface {v1, p1, p2, p3}, Lorg/bouncycastle/crypto/a;->processBlock([BII)[B

    move-result-object p1

    iget-boolean p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->useStrictLength:Z

    array-length p3, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p3, v0, :cond_15

    move p3, v1

    goto :goto_16

    :cond_15
    move p3, v2

    :goto_16
    and-int/2addr p2, p3

    array-length p3, p1

    if-ge p3, v0, :cond_1d

    iget-object p3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->blockBuffer:[B

    goto :goto_1e

    :cond_1d
    move-object p3, p1

    :goto_1e
    iget-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->forPrivateKey:Z

    if-eqz v0, :cond_27

    invoke-static {p3}, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->checkPkcs1Encoding2([B)I

    move-result v0

    goto :goto_2b

    :cond_27
    invoke-static {p3}, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->checkPkcs1Encoding1([B)I

    move-result v0

    :goto_2b
    if-gez v0, :cond_2e

    goto :goto_2f

    :cond_2e
    move v1, v2

    :goto_2f
    or-int/2addr p2, v1

    if-eqz p2, :cond_43

    invoke-static {p1, v2}, Ljava/util/Arrays;->fill([BB)V

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->blockBuffer:[B

    array-length p2, p0

    array-length p1, p1

    sub-int/2addr p2, p1

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p0, v2, p1, v2}, Ljava/util/Arrays;->fill([BIIB)V

    const/4 p0, 0x0

    return-object p0

    :cond_43
    :try_start_43
    new-array p2, v0, [B

    array-length v1, p3

    sub-int/2addr v1, v0

    invoke-static {p3, v1, p2, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_4a
    .catchall {:try_start_43 .. :try_end_4a} :catchall_5a

    invoke-static {p1, v2}, Ljava/util/Arrays;->fill([BB)V

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->blockBuffer:[B

    array-length p3, p0

    array-length p1, p1

    sub-int/2addr p3, p1

    invoke-static {v2, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p0, v2, p1, v2}, Ljava/util/Arrays;->fill([BIIB)V

    return-object p2

    :catchall_5a
    move-exception p2

    invoke-static {p1, v2}, Ljava/util/Arrays;->fill([BB)V

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->blockBuffer:[B

    array-length p3, p0

    array-length p1, p1

    sub-int/2addr p3, p1

    invoke-static {v2, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p0, v2, p1, v2}, Ljava/util/Arrays;->fill([BIIB)V

    throw p2
.end method

.method private encodeBlock([BII)[B
    .registers 10

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->getInputBlockSize()I

    move-result v0

    if-gt p3, v0, :cond_51

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->engine:Lorg/bouncycastle/crypto/a;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/a;->getInputBlockSize()I

    move-result v0

    new-array v1, v0, [B

    iget-boolean v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->forPrivateKey:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_22

    aput-byte v4, v1, v3

    move v2, v4

    :goto_17
    sub-int v5, v0, p3

    sub-int/2addr v5, v4

    if-eq v2, v5, :cond_41

    const/4 v5, -0x1

    aput-byte v5, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_22
    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v2, 0x2

    aput-byte v2, v1, v3

    move v2, v4

    :goto_2b
    sub-int v5, v0, p3

    sub-int/2addr v5, v4

    if-eq v2, v5, :cond_41

    :goto_30
    aget-byte v5, v1, v2

    if-nez v5, :cond_3e

    iget-object v5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->random:Ljava/security/SecureRandom;

    invoke-virtual {v5}, Ljava/util/Random;->nextInt()I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v1, v2

    goto :goto_30

    :cond_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    :cond_41
    sub-int v2, v0, p3

    add-int/lit8 v4, v2, -0x1

    aput-byte v3, v1, v4

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->engine:Lorg/bouncycastle/crypto/a;

    invoke-interface {p0, v1, v3, v0}, Lorg/bouncycastle/crypto/a;->processBlock([BII)[B

    move-result-object p0

    return-object p0

    :cond_51
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "input data too large"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private useStrict()Z
    .registers 3

    const/4 p0, 0x1

    const-string v0, "org.bouncycastle.pkcs1.not_strict"

    invoke-static {p0, v0}, Lm4/h;->d(ZLjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    return v1

    :cond_b
    const-string v0, "org.bouncycastle.pkcs1.strict"

    invoke-static {v1, v0}, Lm4/h;->d(ZLjava/lang/String;)Z

    move-result v0

    xor-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public getInputBlockSize()I
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->engine:Lorg/bouncycastle/crypto/a;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/a;->getInputBlockSize()I

    move-result v0

    iget-boolean p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->forEncryption:Z

    if-eqz p0, :cond_c

    add-int/lit8 v0, v0, -0xa

    :cond_c
    return v0
.end method

.method public getOutputBlockSize()I
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->engine:Lorg/bouncycastle/crypto/a;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/a;->getOutputBlockSize()I

    move-result v0

    iget-boolean p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->forEncryption:Z

    if-eqz p0, :cond_b

    return v0

    :cond_b
    add-int/lit8 v0, v0, -0xa

    return v0
.end method

.method public getUnderlyingCipher()Lorg/bouncycastle/crypto/a;
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->engine:Lorg/bouncycastle/crypto/a;

    return-object p0
.end method

.method public init(ZLorg/bouncycastle/crypto/g;)V
    .registers 5

    instance-of v0, p2, Le1/t0;

    if-eqz v0, :cond_10

    move-object v0, p2

    check-cast v0, Le1/t0;

    iget-object v1, v0, Le1/t0;->c:Ljava/security/SecureRandom;

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->random:Ljava/security/SecureRandom;

    iget-object v0, v0, Le1/t0;->d:Lorg/bouncycastle/crypto/g;

    check-cast v0, Le1/b;

    goto :goto_1f

    :cond_10
    move-object v0, p2

    check-cast v0, Le1/b;

    iget-boolean v1, v0, Le1/b;->c:Z

    if-nez v1, :cond_1f

    if-eqz p1, :cond_1f

    invoke-static {}, Lorg/bouncycastle/crypto/o;->b()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->random:Ljava/security/SecureRandom;

    :cond_1f
    :goto_1f
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->engine:Lorg/bouncycastle/crypto/a;

    invoke-interface {v1, p1, p2}, Lorg/bouncycastle/crypto/a;->init(ZLorg/bouncycastle/crypto/g;)V

    iget-boolean p2, v0, Le1/b;->c:Z

    iput-boolean p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->forPrivateKey:Z

    iput-boolean p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->forEncryption:Z

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->engine:Lorg/bouncycastle/crypto/a;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/a;->getOutputBlockSize()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->blockBuffer:[B

    return-void
.end method

.method public processBlock([BII)[B
    .registers 5

    iget-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->forEncryption:Z

    if-eqz v0, :cond_9

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->encodeBlock([BII)[B

    move-result-object p0

    return-object p0

    :cond_9
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->decodeBlock([BII)[B

    move-result-object p0

    return-object p0
.end method
