.class public final Lmpl/PssSigner;
.super Ljava/lang/Object;
.source "PssSigner.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static mgf1([BI)[B
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 78
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 79
    new-array v1, p1, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_b
    if-ge v3, p1, :cond_3f

    .line 82
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 83
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    ushr-int/lit8 v5, v4, 0x18

    int-to-byte v5, v5

    ushr-int/lit8 v6, v4, 0x10

    int-to-byte v6, v6

    ushr-int/lit8 v7, v4, 0x8

    int-to-byte v7, v7

    int-to-byte v8, v4

    const/4 v9, 0x4

    .line 84
    new-array v9, v9, [B

    aput-byte v5, v9, v2

    const/4 v5, 0x1

    aput-byte v6, v9, v5

    const/4 v6, 0x2

    aput-byte v7, v9, v6

    const/4 v6, 0x3

    aput-byte v8, v9, v6

    invoke-virtual {v0, v9}, Ljava/security/MessageDigest;->update([B)V

    .line 87
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    .line 88
    array-length v7, v6

    sub-int v8, p1, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 89
    invoke-static {v6, v2, v1, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v7

    add-int/2addr v4, v5

    goto :goto_b

    :cond_3f
    return-object v1
.end method

.method public static sign(Ljava/security/PrivateKey;[BI)[B
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 23
    instance-of v0, p0, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v0, :cond_a5

    .line 26
    move-object v0, p0

    check-cast v0, Ljava/security/interfaces/RSAPrivateKey;

    .line 27
    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    add-int/lit8 v0, v0, 0x6

    const/16 v2, 0x8

    .line 29
    div-int/2addr v0, v2

    .line 31
    const-string v3, "SHA-256"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 32
    invoke-virtual {v3, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    .line 33
    array-length v4, p1

    add-int v5, v4, p2

    const/4 v6, 0x2

    add-int/2addr v5, v6

    if-lt v0, v5, :cond_9d

    .line 38
    new-array v5, p2, [B

    .line 39
    new-instance v7, Ljava/security/SecureRandom;

    invoke-direct {v7}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v7, v5}, Ljava/security/SecureRandom;->nextBytes([B)V

    add-int/lit8 v7, v4, 0x8

    add-int v8, v7, p2

    .line 41
    new-array v8, v8, [B

    const/4 v9, 0x0

    .line 42
    invoke-static {p1, v9, v8, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    invoke-static {v5, v9, v8, v7, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    invoke-virtual {v3, v8}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    sub-int v2, v0, v4

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 46
    new-array v7, v2, [B

    sub-int v8, v2, p2

    add-int/lit8 v10, v8, -0x1

    .line 48
    aput-byte v3, v7, v10

    .line 49
    invoke-static {v5, v9, v7, v8, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    invoke-static {p1, v2}, Lmpl/PssSigner;->mgf1([BI)[B

    move-result-object p2

    .line 52
    new-array v3, v2, [B

    const/4 v5, 0x0

    :goto_58
    if-ge v5, v2, :cond_65

    .line 54
    aget-byte v8, v7, v5

    aget-byte v10, p2, v5

    xor-int/2addr v8, v10

    int-to-byte v8, v8

    aput-byte v8, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_58

    :cond_65
    mul-int/lit8 p2, v0, 0x8

    sub-int/2addr p2, v1

    if-lez p2, :cond_75

    .line 58
    aget-byte v1, v3, v9

    const/16 v5, 0xff

    ushr-int p2, v5, p2

    int-to-byte p2, p2

    and-int/2addr p2, v1

    int-to-byte p2, p2

    aput-byte p2, v3, v9

    .line 61
    :cond_75
    new-array p2, v0, [B

    .line 62
    invoke-static {v3, v9, p2, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    invoke-static {p1, v9, p2, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 p1, v0, -0x1

    const/16 v1, -0x44

    .line 64
    aput-byte v1, p2, p1

    .line 66
    const-string p1, "RSA/ECB/NoPadding"

    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    .line 67
    invoke-virtual {p1, v6, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 68
    invoke-virtual {p1, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 69
    array-length p1, p0

    if-ge p1, v0, :cond_9c

    .line 70
    new-array p1, v0, [B

    .line 71
    array-length p2, p0

    sub-int/2addr v0, p2

    array-length p2, p0

    invoke-static {p0, v9, p1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    :cond_9c
    return-object p0

    .line 35
    :cond_9d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "encoding error: emLen too small"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 24
    :cond_a5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "RSAPrivateKey required"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
