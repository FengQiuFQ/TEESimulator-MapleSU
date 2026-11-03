.class public abstract Lorg/bouncycastle/crypto/e0;
.super Ljava/lang/Object;


# instance fields
.field protected iterationCount:I

.field protected password:[B

.field protected salt:[B


# direct methods
.method public static PKCS12PasswordToBytes([C)[B
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_22

    array-length v1, p0

    if-lez v1, :cond_22

    array-length v1, p0

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    :goto_d
    array-length v2, p0

    if-eq v0, v2, :cond_21

    mul-int/lit8 v2, v0, 0x2

    aget-char v3, p0, v0

    ushr-int/lit8 v4, v3, 0x8

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_21
    return-object v1

    :cond_22
    new-array p0, v0, [B

    return-object p0
.end method

.method public static PKCS5PasswordToBytes([C)[B
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_11

    array-length v1, p0

    new-array v2, v1, [B

    :goto_6
    if-eq v0, v1, :cond_10

    aget-char v3, p0, v0

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_10
    return-object v2

    :cond_11
    new-array p0, v0, [B

    return-object p0
.end method

.method public static PKCS5PasswordToUTF8Bytes([C)[B
    .registers 1

    if-eqz p0, :cond_7

    invoke-static {p0}, Lm4/m;->f([C)[B

    move-result-object p0

    return-object p0

    :cond_7
    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0
.end method


# virtual methods
.method public abstract generateDerivedMacParameters(I)Lorg/bouncycastle/crypto/g;
.end method

.method public abstract generateDerivedParameters(I)Lorg/bouncycastle/crypto/g;
.end method

.method public abstract generateDerivedParameters(II)Lorg/bouncycastle/crypto/g;
.end method

.method public getIterationCount()I
    .registers 1

    iget p0, p0, Lorg/bouncycastle/crypto/e0;->iterationCount:I

    return p0
.end method

.method public getPassword()[B
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/crypto/e0;->password:[B

    return-object p0
.end method

.method public getSalt()[B
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/crypto/e0;->salt:[B

    return-object p0
.end method

.method public init([B[BI)V
    .registers 4

    iput-object p1, p0, Lorg/bouncycastle/crypto/e0;->password:[B

    iput-object p2, p0, Lorg/bouncycastle/crypto/e0;->salt:[B

    iput p3, p0, Lorg/bouncycastle/crypto/e0;->iterationCount:I

    return-void
.end method
