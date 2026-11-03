.class public Lorg/bouncycastle/jce/provider/BrokenPBE$Util;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static makePBEGenerator(II)Lorg/bouncycastle/crypto/e0;
    .registers 6

    const/4 v0, 0x1

    if-nez p0, :cond_25

    if-eqz p1, :cond_1a

    if-ne p1, v0, :cond_12

    new-instance p0, Lx0/p;

    new-instance p1, Ls0/z;

    invoke-direct {p1}, Ls0/z;-><init>()V

    invoke-direct {p0, p1}, Lx0/p;-><init>(Lorg/bouncycastle/crypto/v;)V

    return-object p0

    :cond_12
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "PKCS5 scheme 1 only supports only MD5 and SHA1."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1a
    new-instance p0, Lx0/p;

    new-instance p1, Ls0/r;

    invoke-direct {p1}, Ls0/r;-><init>()V

    invoke-direct {p0, p1}, Lx0/p;-><init>(Lorg/bouncycastle/crypto/v;)V

    return-object p0

    :cond_25
    if-ne p0, v0, :cond_34

    new-instance p0, Lx0/r;

    sget p1, Lj1/a;->a:I

    new-instance p1, Ls0/z;

    invoke-direct {p1}, Ls0/z;-><init>()V

    invoke-direct {p0, p1}, Lx0/r;-><init>(Lorg/bouncycastle/crypto/v;)V

    return-object p0

    :cond_34
    const/4 v1, 0x3

    const-string v2, "unknown digest scheme for PBE encryption."

    const/4 v3, 0x2

    if-ne p0, v1, :cond_67

    if-eqz p1, :cond_5c

    if-eq p1, v0, :cond_51

    if-ne p1, v3, :cond_4b

    new-instance p0, Lorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;

    new-instance p1, Ls0/w;

    invoke-direct {p1}, Ls0/w;-><init>()V

    invoke-direct {p0, p1}, Lorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;-><init>(Lorg/bouncycastle/crypto/v;)V

    return-object p0

    :cond_4b
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_51
    new-instance p0, Lorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;

    new-instance p1, Ls0/z;

    invoke-direct {p1}, Ls0/z;-><init>()V

    invoke-direct {p0, p1}, Lorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;-><init>(Lorg/bouncycastle/crypto/v;)V

    return-object p0

    :cond_5c
    new-instance p0, Lorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;

    new-instance p1, Ls0/r;

    invoke-direct {p1}, Ls0/r;-><init>()V

    invoke-direct {p0, p1}, Lorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;-><init>(Lorg/bouncycastle/crypto/v;)V

    return-object p0

    :cond_67
    if-eqz p1, :cond_89

    if-eq p1, v0, :cond_7e

    if-ne p1, v3, :cond_78

    new-instance p0, Lx0/q;

    new-instance p1, Ls0/w;

    invoke-direct {p1}, Ls0/w;-><init>()V

    invoke-direct {p0, p1}, Lx0/q;-><init>(Lorg/bouncycastle/crypto/v;)V

    return-object p0

    :cond_78
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7e
    new-instance p0, Lx0/q;

    new-instance p1, Ls0/z;

    invoke-direct {p1}, Ls0/z;-><init>()V

    invoke-direct {p0, p1}, Lx0/q;-><init>(Lorg/bouncycastle/crypto/v;)V

    return-object p0

    :cond_89
    new-instance p0, Lx0/q;

    new-instance p1, Ls0/r;

    invoke-direct {p1}, Ls0/r;-><init>()V

    invoke-direct {p0, p1}, Lx0/q;-><init>(Lorg/bouncycastle/crypto/v;)V

    return-object p0
.end method

.method public static makePBEMacParameters(Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;Ljava/security/spec/AlgorithmParameterSpec;III)Lorg/bouncycastle/crypto/g;
    .registers 6

    if-eqz p1, :cond_2a

    instance-of v0, p1, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v0, :cond_2a

    check-cast p1, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-static {p2, p3}, Lorg/bouncycastle/jce/provider/BrokenPBE$Util;->makePBEGenerator(II)Lorg/bouncycastle/crypto/e0;

    move-result-object p2

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getEncoded()[B

    move-result-object p0

    invoke-virtual {p1}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object p3

    invoke-virtual {p1}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result p1

    invoke-virtual {p2, p0, p3, p1}, Lorg/bouncycastle/crypto/e0;->init([B[BI)V

    invoke-virtual {p2, p4}, Lorg/bouncycastle/crypto/e0;->generateDerivedMacParameters(I)Lorg/bouncycastle/crypto/g;

    move-result-object p1

    const/4 p2, 0x0

    move p3, p2

    :goto_21
    array-length p4, p0

    if-eq p3, p4, :cond_29

    aput-byte p2, p0, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_21

    :cond_29
    return-object p1

    :cond_2a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Need a PBEParameter spec with a PBE key."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static makePBEParameters(Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;Ljava/security/spec/AlgorithmParameterSpec;IILjava/lang/String;II)Lorg/bouncycastle/crypto/g;
    .registers 8

    if-eqz p1, :cond_52

    instance-of v0, p1, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v0, :cond_52

    check-cast p1, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-static {p2, p3}, Lorg/bouncycastle/jce/provider/BrokenPBE$Util;->makePBEGenerator(II)Lorg/bouncycastle/crypto/e0;

    move-result-object p2

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getEncoded()[B

    move-result-object p0

    invoke-virtual {p1}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object p3

    invoke-virtual {p1}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result p1

    invoke-virtual {p2, p0, p3, p1}, Lorg/bouncycastle/crypto/e0;->init([B[BI)V

    if-eqz p6, :cond_22

    invoke-virtual {p2, p5, p6}, Lorg/bouncycastle/crypto/e0;->generateDerivedParameters(II)Lorg/bouncycastle/crypto/g;

    move-result-object p1

    goto :goto_26

    :cond_22
    invoke-virtual {p2, p5}, Lorg/bouncycastle/crypto/e0;->generateDerivedParameters(I)Lorg/bouncycastle/crypto/g;

    move-result-object p1

    :goto_26
    const-string p2, "DES"

    invoke-virtual {p4, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_47

    instance-of p2, p1, Le1/s0;

    if-eqz p2, :cond_3f

    move-object p2, p1

    check-cast p2, Le1/s0;

    iget-object p2, p2, Le1/s0;->d:Lorg/bouncycastle/crypto/g;

    check-cast p2, Le1/o0;

    iget-object p2, p2, Le1/o0;->c:[B

    invoke-static {p2}, Lorg/bouncycastle/jce/provider/BrokenPBE$Util;->setOddParity([B)V

    goto :goto_47

    :cond_3f
    move-object p2, p1

    check-cast p2, Le1/o0;

    iget-object p2, p2, Le1/o0;->c:[B

    invoke-static {p2}, Lorg/bouncycastle/jce/provider/BrokenPBE$Util;->setOddParity([B)V

    :cond_47
    :goto_47
    const/4 p2, 0x0

    move p3, p2

    :goto_49
    array-length p4, p0

    if-eq p3, p4, :cond_51

    aput-byte p2, p0, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_49

    :cond_51
    return-object p1

    :cond_52
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Need a PBEParameter spec with a PBE key."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static setOddParity([B)V
    .registers 6

    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_25

    aget-byte v1, p0, v0

    and-int/lit16 v2, v1, 0xfe

    shr-int/lit8 v3, v1, 0x1

    shr-int/lit8 v4, v1, 0x2

    xor-int/2addr v3, v4

    shr-int/lit8 v4, v1, 0x3

    xor-int/2addr v3, v4

    shr-int/lit8 v4, v1, 0x4

    xor-int/2addr v3, v4

    shr-int/lit8 v4, v1, 0x5

    xor-int/2addr v3, v4

    shr-int/lit8 v4, v1, 0x6

    xor-int/2addr v3, v4

    shr-int/lit8 v1, v1, 0x7

    xor-int/2addr v1, v3

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_25
    return-void
.end method
