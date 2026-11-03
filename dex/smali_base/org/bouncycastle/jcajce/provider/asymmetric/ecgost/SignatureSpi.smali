.class public Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/SignatureSpi;
.super Ljava/security/SignatureSpi;

# interfaces
.implements Ld0/r;
.implements Ll0/e1;


# instance fields
.field private digest:Lorg/bouncycastle/crypto/v;

.field private signer:Lorg/bouncycastle/crypto/p;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    new-instance v0, Ls0/f;

    invoke-direct {v0}, Ls0/f;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/SignatureSpi;->digest:Lorg/bouncycastle/crypto/v;

    new-instance v0, Lb1/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lb1/b;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/SignatureSpi;->signer:Lorg/bouncycastle/crypto/p;

    return-void
.end method

.method public static generatePublicKeyParameter(Ljava/security/PublicKey;)Le1/b;
    .registers 2

    instance-of v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;

    if-eqz v0, :cond_b

    check-cast p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->engineGetKeyParameters()Le1/x;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->generatePublicKeyParameter(Ljava/security/PublicKey;)Le1/b;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "engineSetParameter unsupported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineGetParameters()Ljava/security/AlgorithmParameters;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public engineInitSign(Ljava/security/PrivateKey;)V
    .registers 5

    instance-of v0, p1, Lh2/a;

    if-eqz v0, :cond_9

    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Le1/b;

    move-result-object p1

    goto :goto_d

    :cond_9
    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/GOST3410Util;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Le1/b;

    move-result-object p1

    :goto_d
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/SignatureSpi;->digest:Lorg/bouncycastle/crypto/v;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/v;->reset()V

    iget-object v0, p0, Ljava/security/SignatureSpi;->appRandom:Ljava/security/SecureRandom;

    const/4 v1, 0x1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/SignatureSpi;->signer:Lorg/bouncycastle/crypto/p;

    if-eqz v0, :cond_22

    new-instance v2, Le1/t0;

    invoke-direct {v2, p1, v0}, Le1/t0;-><init>(Lorg/bouncycastle/crypto/g;Ljava/security/SecureRandom;)V

    invoke-interface {p0, v1, v2}, Lorg/bouncycastle/crypto/p;->init(ZLorg/bouncycastle/crypto/g;)V

    return-void

    :cond_22
    invoke-interface {p0, v1, p1}, Lorg/bouncycastle/crypto/p;->init(ZLorg/bouncycastle/crypto/g;)V

    return-void
.end method

.method public engineInitVerify(Ljava/security/PublicKey;)V
    .registers 3

    instance-of v0, p1, Lh2/c;

    if-eqz v0, :cond_9

    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/SignatureSpi;->generatePublicKeyParameter(Ljava/security/PublicKey;)Le1/b;

    move-result-object p1

    goto :goto_22

    :cond_9
    instance-of v0, p1, Lh2/g;

    if-eqz v0, :cond_12

    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/GOST3410Util;->generatePublicKeyParameter(Ljava/security/PublicKey;)Le1/b;

    move-result-object p1

    goto :goto_22

    :cond_12
    :try_start_12
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Ll0/p0;->h(Ljava/lang/Object;)Ll0/p0;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->getPublicKey(Ll0/p0;)Ljava/security/PublicKey;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->generatePublicKeyParameter(Ljava/security/PublicKey;)Le1/b;

    move-result-object p1
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_22} :catch_2e

    :goto_22
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/SignatureSpi;->digest:Lorg/bouncycastle/crypto/v;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/v;->reset()V

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/SignatureSpi;->signer:Lorg/bouncycastle/crypto/p;

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/bouncycastle/crypto/p;->init(ZLorg/bouncycastle/crypto/g;)V

    return-void

    :catch_2e
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "can\'t recognise key type in DSA based signer"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "engineSetParameter unsupported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 2

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "engineSetParameter unsupported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineSign()[B
    .registers 8

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/SignatureSpi;->digest:Lorg/bouncycastle/crypto/v;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/v;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/SignatureSpi;->digest:Lorg/bouncycastle/crypto/v;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/bouncycastle/crypto/v;->doFinal([BI)I

    const/16 v1, 0x40

    :try_start_10
    new-array v3, v1, [B

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/SignatureSpi;->signer:Lorg/bouncycastle/crypto/p;

    invoke-interface {p0, v0}, Lorg/bouncycastle/crypto/p;->b([B)[Ljava/math/BigInteger;

    move-result-object p0

    aget-object v0, p0, v2

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    const/4 v4, 0x1

    aget-object p0, p0, v4

    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    aget-byte v5, p0, v2

    if-eqz v5, :cond_31

    array-length v5, p0

    rsub-int/lit8 v5, v5, 0x20

    array-length v6, p0

    invoke-static {p0, v2, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3a

    :cond_31
    array-length v5, p0

    sub-int/2addr v5, v4

    rsub-int/lit8 v5, v5, 0x20

    array-length v6, p0

    sub-int/2addr v6, v4

    invoke-static {p0, v4, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_3a
    aget-byte p0, v0, v2

    if-eqz p0, :cond_45

    array-length p0, v0

    sub-int/2addr v1, p0

    array-length p0, v0

    invoke-static {v0, v2, v3, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v3

    :cond_45
    array-length p0, v0

    sub-int/2addr p0, v4

    sub-int/2addr v1, p0

    array-length p0, v0

    sub-int/2addr p0, v4

    invoke-static {v0, v4, v3, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_4d} :catch_4e

    return-object v3

    :catch_4e
    move-exception p0

    new-instance v0, Ljava/security/SignatureException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineUpdate(B)V
    .registers 2

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/SignatureSpi;->digest:Lorg/bouncycastle/crypto/v;

    invoke-interface {p0, p1}, Lorg/bouncycastle/crypto/v;->update(B)V

    return-void
.end method

.method public engineUpdate([BII)V
    .registers 4

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/SignatureSpi;->digest:Lorg/bouncycastle/crypto/v;

    invoke-interface {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/v;->update([BII)V

    return-void
.end method

.method public engineVerify([B)Z
    .registers 7

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/SignatureSpi;->digest:Lorg/bouncycastle/crypto/v;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/v;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/SignatureSpi;->digest:Lorg/bouncycastle/crypto/v;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/bouncycastle/crypto/v;->doFinal([BI)I

    const/16 v1, 0x20

    :try_start_10
    new-array v3, v1, [B

    new-array v4, v1, [B

    invoke-static {p1, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1, v1, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p1, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {p1, v1, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v1, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    filled-new-array {p1, v3}, [Ljava/math/BigInteger;

    move-result-object p1
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_29} :catch_34

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/SignatureSpi;->signer:Lorg/bouncycastle/crypto/p;

    aget-object v2, p1, v2

    aget-object p1, p1, v1

    invoke-interface {p0, v2, p1, v0}, Lorg/bouncycastle/crypto/p;->c(Ljava/math/BigInteger;Ljava/math/BigInteger;[B)Z

    move-result p0

    return p0

    :catch_34
    new-instance p0, Ljava/security/SignatureException;

    const-string p1, "error decoding signature bytes."

    invoke-direct {p0, p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
