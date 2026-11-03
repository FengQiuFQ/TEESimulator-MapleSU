.class public Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/RSAUtil;
.super Ljava/lang/Object;


# static fields
.field public static final rsaOids:[Lm/q;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    sget-object v0, Ld0/r;->a:Lm/q;

    sget-object v1, Ll0/e1;->y0:Lm/q;

    sget-object v2, Ld0/r;->h:Lm/q;

    sget-object v3, Ld0/r;->k:Lm/q;

    filled-new-array {v0, v1, v2, v3}, [Lm/q;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/RSAUtil;->rsaOids:[Lm/q;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateExponentFingerprint(Ljava/math/BigInteger;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    const/16 v0, 0x20

    rem-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_4c

    new-instance v0, Ls0/g0;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ls0/g0;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Ls0/n;->f([BII)V

    const/16 p0, 0x20

    div-int/lit8 p0, p0, 0x8

    new-array v1, p0, [B

    invoke-virtual {v0, v1, v2, p0}, Ls0/g0;->b([BII)I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_24
    array-length v0, v1

    if-eq v2, v0, :cond_47

    if-lez v2, :cond_2e

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2e
    aget-byte v0, v1, v2

    ushr-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0xf

    sget-object v3, Lm4/d;->a:[C

    aget-char v0, v3, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-byte v0, v1, v2

    and-int/lit8 v0, v0, 0xf

    aget-char v0, v3, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    :cond_47
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "bitLength must be a multiple of 8"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static generateKeyFingerprint(Ljava/math/BigInteger;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    const/16 v0, 0xa0

    rem-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_4c

    new-instance v0, Ls0/g0;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ls0/g0;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Ls0/n;->f([BII)V

    const/16 p0, 0xa0

    div-int/lit8 p0, p0, 0x8

    new-array v1, p0, [B

    invoke-virtual {v0, v1, v2, p0}, Ls0/g0;->b([BII)I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_24
    array-length v0, v1

    if-eq v2, v0, :cond_47

    if-lez v2, :cond_2e

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2e
    aget-byte v0, v1, v2

    ushr-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0xf

    sget-object v3, Lm4/d;->a:[C

    aget-char v0, v3, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-byte v0, v1, v2

    and-int/lit8 v0, v0, 0xf

    aget-char v0, v3, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    :cond_47
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "bitLength must be a multiple of 8"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static generatePrivateKeyParameter(Ljava/security/interfaces/RSAPrivateKey;)Le1/z0;
    .registers 11

    instance-of v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;

    if-eqz v0, :cond_b

    check-cast p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->engineGetKeyParameters()Le1/z0;

    move-result-object p0

    return-object p0

    :cond_b
    instance-of v0, p0, Ljava/security/interfaces/RSAPrivateCrtKey;

    if-eqz v0, :cond_38

    check-cast p0, Ljava/security/interfaces/RSAPrivateCrtKey;

    new-instance v0, Le1/a1;

    invoke-interface {p0}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {p0}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v4

    invoke-interface {p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v5

    invoke-interface {p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v6

    invoke-interface {p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v7

    invoke-interface {p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Le1/a1;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Z)V

    return-object v0

    :cond_38
    new-instance v0, Le1/z0;

    invoke-interface {p0}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p0}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object p0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, p0, v2}, Le1/z0;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;Z)V

    return-object v0
.end method

.method public static generatePublicKeyParameter(Ljava/security/interfaces/RSAPublicKey;)Le1/z0;
    .registers 4

    instance-of v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;

    if-eqz v0, :cond_b

    check-cast p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->engineGetKeyParameters()Le1/z0;

    move-result-object p0

    return-object p0

    :cond_b
    new-instance v0, Le1/z0;

    invoke-interface {p0}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p0}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object p0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, p0, v2}, Le1/z0;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;Z)V

    return-object v0
.end method

.method public static isRsaOid(Lm/q;)Z
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    sget-object v2, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/RSAUtil;->rsaOids:[Lm/q;

    array-length v3, v2

    if-eq v1, v3, :cond_14

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Lm/u;->n(Lm/u;)Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_14
    return v0
.end method
