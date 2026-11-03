.class public Lorg/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertMidTerms([I)[I
    .registers 8

    const/4 v0, 0x3

    new-array v1, v0, [I

    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_d

    aget p0, p0, v3

    aput p0, v1, v3

    return-object v1

    :cond_d
    array-length v2, p0

    if-ne v2, v0, :cond_51

    aget v0, p0, v3

    aget v2, p0, v4

    const/4 v5, 0x2

    if-ge v0, v2, :cond_2b

    aget v6, p0, v5

    if-ge v0, v6, :cond_2b

    aput v0, v1, v3

    if-ge v2, v6, :cond_24

    aput v2, v1, v4

    aput v6, v1, v5

    return-object v1

    :cond_24
    aput v6, v1, v4

    aget p0, p0, v4

    aput p0, v1, v5

    return-object v1

    :cond_2b
    aget v0, p0, v5

    if-ge v2, v0, :cond_3f

    aput v2, v1, v3

    aget p0, p0, v3

    if-ge p0, v0, :cond_3a

    aput p0, v1, v4

    aput v0, v1, v5

    return-object v1

    :cond_3a
    aput v0, v1, v4

    aput p0, v1, v5

    return-object v1

    :cond_3f
    aput v0, v1, v3

    aget v0, p0, v3

    if-ge v0, v2, :cond_4c

    aput v0, v1, v4

    aget p0, p0, v4

    aput p0, v1, v5

    return-object v1

    :cond_4c
    aput v2, v1, v4

    aput v0, v1, v5

    return-object v1

    :cond_51
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only Trinomials and pentanomials supported"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static generateKeyFingerprint(Lk2/p;Li2/e;)Ljava/lang/String;
    .registers 10

    iget-object v0, p1, Li2/e;->c:Lk2/h;

    iget-object p1, p1, Li2/e;->q:Lk2/p;

    sget-object v1, Lm4/d;->a:[C

    const-string v2, ":"

    const-string v3, "bitLength must be a multiple of 8"

    const/16 v4, 0x100

    const/16 v5, 0xa0

    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lk2/p;->h(Z)[B

    move-result-object p0

    if-eqz v0, :cond_6e

    iget-object v7, v0, Lk2/h;->b:Lk2/b0;

    invoke-virtual {v7}, Lk2/b0;->i()[B

    move-result-object v7

    iget-object v0, v0, Lk2/h;->c:Lk2/b0;

    invoke-virtual {v0}, Lk2/b0;->i()[B

    move-result-object v0

    invoke-virtual {p1, v6}, Lk2/p;->h(Z)[B

    move-result-object p1

    invoke-static {p0, v7, v0, p1}, Lm4/d;->l([B[B[B[B)[B

    move-result-object p0

    const/16 p1, 0xa0

    rem-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_68

    new-instance p1, Ls0/g0;

    invoke-direct {p1, v4}, Ls0/g0;-><init>(I)V

    array-length v0, p0

    invoke-virtual {p1, p0, v6, v0}, Ls0/n;->f([BII)V

    div-int/lit8 v5, v5, 0x8

    new-array p0, v5, [B

    invoke-virtual {p1, p0, v6, v5}, Ls0/g0;->b([BII)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_44
    array-length v0, p0

    if-eq v6, v0, :cond_63

    if-lez v6, :cond_4c

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4c
    aget-byte v0, p0, v6

    ushr-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0xf

    aget-char v0, v1, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-byte v0, p0, v6

    and-int/lit8 v0, v0, 0xf

    aget-char v0, v1, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_44

    :cond_63
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_68
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6e
    const/16 p1, 0xa0

    rem-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_ad

    new-instance p1, Ls0/g0;

    invoke-direct {p1, v4}, Ls0/g0;-><init>(I)V

    array-length v0, p0

    invoke-virtual {p1, p0, v6, v0}, Ls0/n;->f([BII)V

    div-int/lit8 v5, v5, 0x8

    new-array p0, v5, [B

    invoke-virtual {p1, p0, v6, v5}, Ls0/g0;->b([BII)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_89
    array-length v0, p0

    if-eq v6, v0, :cond_a8

    if-lez v6, :cond_91

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_91
    aget-byte v0, p0, v6

    ushr-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0xf

    aget-char v0, v1, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-byte v0, p0, v6

    and-int/lit8 v0, v0, 0xf

    aget-char v0, v1, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_89

    :cond_a8
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_ad
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static generatePrivateKeyParameter(Ljava/security/PrivateKey;)Le1/b;
    .registers 11

    instance-of v0, p0, Lh2/b;

    if-eqz v0, :cond_58

    check-cast p0, Lh2/b;

    invoke-interface {p0}, Lh2/a;->getParameters()Li2/e;

    move-result-object v0

    if-nez v0, :cond_12

    sget-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-interface {v0}, Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Li2/e;

    move-result-object v0

    :cond_12
    invoke-interface {p0}, Lh2/a;->getParameters()Li2/e;

    move-result-object v1

    instance-of v1, v1, Li2/c;

    if-eqz v1, :cond_3f

    invoke-interface {p0}, Lh2/a;->getParameters()Li2/e;

    move-result-object v1

    check-cast v1, Li2/c;

    iget-object v1, v1, Li2/c;->z1:Ljava/lang/String;

    new-instance v2, Le1/w;

    invoke-interface {p0}, Lh2/b;->getD()Ljava/math/BigInteger;

    move-result-object p0

    new-instance v3, Le1/v;

    invoke-static {v1}, Lq4/k;->g0(Ljava/lang/String;)Lm/q;

    move-result-object v4

    iget-object v5, v0, Li2/e;->c:Lk2/h;

    iget-object v6, v0, Li2/e;->q:Lk2/p;

    iget-object v7, v0, Li2/e;->x:Ljava/math/BigInteger;

    iget-object v8, v0, Li2/e;->y:Ljava/math/BigInteger;

    iget-object v9, v0, Li2/e;->d:[B

    invoke-direct/range {v3 .. v9}, Le1/v;-><init>(Lm/q;Lk2/h;Lk2/p;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    invoke-direct {v2, p0, v3}, Le1/w;-><init>(Ljava/math/BigInteger;Le1/r;)V

    return-object v2

    :cond_3f
    new-instance v1, Le1/w;

    invoke-interface {p0}, Lh2/b;->getD()Ljava/math/BigInteger;

    move-result-object p0

    new-instance v2, Le1/r;

    iget-object v3, v0, Li2/e;->c:Lk2/h;

    iget-object v4, v0, Li2/e;->q:Lk2/p;

    iget-object v5, v0, Li2/e;->x:Ljava/math/BigInteger;

    iget-object v6, v0, Li2/e;->y:Ljava/math/BigInteger;

    iget-object v7, v0, Li2/e;->d:[B

    invoke-direct/range {v2 .. v7}, Le1/r;-><init>(Lk2/h;Lk2/p;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    invoke-direct {v1, p0, v2}, Le1/w;-><init>(Ljava/math/BigInteger;Le1/r;)V

    return-object v1

    :cond_58
    instance-of v0, p0, Ljava/security/interfaces/ECPrivateKey;

    if-eqz v0, :cond_7f

    check-cast p0, Ljava/security/interfaces/ECPrivateKey;

    invoke-interface {p0}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;)Li2/e;

    move-result-object v0

    new-instance v1, Le1/w;

    invoke-interface {p0}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object p0

    new-instance v2, Le1/r;

    iget-object v3, v0, Li2/e;->c:Lk2/h;

    iget-object v4, v0, Li2/e;->q:Lk2/p;

    iget-object v5, v0, Li2/e;->x:Ljava/math/BigInteger;

    iget-object v6, v0, Li2/e;->y:Ljava/math/BigInteger;

    iget-object v7, v0, Li2/e;->d:[B

    invoke-direct/range {v2 .. v7}, Le1/r;-><init>(Lk2/h;Lk2/p;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    invoke-direct {v1, p0, v2}, Le1/w;-><init>(Ljava/math/BigInteger;Le1/r;)V

    return-object v1

    :cond_7f
    :try_start_7f
    invoke-interface {p0}, Ljava/security/Key;->getEncoded()[B

    move-result-object p0

    if-eqz p0, :cond_9e

    invoke-static {p0}, Ld0/t;->h(Ljava/lang/Object;)Ld0/t;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->getPrivateKey(Ld0/t;)Ljava/security/PrivateKey;

    move-result-object p0

    instance-of v0, p0, Ljava/security/interfaces/ECPrivateKey;

    if-eqz v0, :cond_96

    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Le1/b;

    move-result-object p0
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_95} :catch_a6

    return-object p0

    :cond_96
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string v0, "can\'t identify EC private key."

    invoke-direct {p0, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9e
    :try_start_9e
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string v0, "no encoding for EC private key"

    invoke-direct {p0, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_a6} :catch_a6

    :catch_a6
    move-exception v0

    move-object p0, v0

    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cannot identify EC private key: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Lb/b;->d(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static generatePublicKeyParameter(Ljava/security/PublicKey;)Le1/b;
    .registers 9

    instance-of v0, p0, Lh2/c;

    if-eqz v0, :cond_23

    check-cast p0, Lh2/c;

    invoke-interface {p0}, Lh2/a;->getParameters()Li2/e;

    move-result-object v0

    new-instance v1, Le1/x;

    invoke-interface {p0}, Lh2/c;->getQ()Lk2/p;

    move-result-object p0

    new-instance v2, Le1/r;

    iget-object v3, v0, Li2/e;->c:Lk2/h;

    iget-object v4, v0, Li2/e;->q:Lk2/p;

    iget-object v5, v0, Li2/e;->x:Ljava/math/BigInteger;

    iget-object v6, v0, Li2/e;->y:Ljava/math/BigInteger;

    iget-object v7, v0, Li2/e;->d:[B

    invoke-direct/range {v2 .. v7}, Le1/r;-><init>(Lk2/h;Lk2/p;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    invoke-direct {v1, p0, v2}, Le1/x;-><init>(Lk2/p;Le1/r;)V

    return-object v1

    :cond_23
    instance-of v0, p0, Ljava/security/interfaces/ECPublicKey;

    if-eqz v0, :cond_52

    check-cast p0, Ljava/security/interfaces/ECPublicKey;

    invoke-interface {p0}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;)Li2/e;

    move-result-object v0

    new-instance v1, Le1/x;

    invoke-interface {p0}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    invoke-interface {p0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object p0

    invoke-static {v2, p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECPoint;)Lk2/p;

    move-result-object p0

    new-instance v2, Le1/r;

    iget-object v3, v0, Li2/e;->c:Lk2/h;

    iget-object v4, v0, Li2/e;->q:Lk2/p;

    iget-object v5, v0, Li2/e;->x:Ljava/math/BigInteger;

    iget-object v6, v0, Li2/e;->y:Ljava/math/BigInteger;

    iget-object v7, v0, Li2/e;->d:[B

    invoke-direct/range {v2 .. v7}, Le1/r;-><init>(Lk2/h;Lk2/p;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    invoke-direct {v1, p0, v2}, Le1/x;-><init>(Lk2/p;Le1/r;)V

    return-object v1

    :cond_52
    :try_start_52
    invoke-interface {p0}, Ljava/security/Key;->getEncoded()[B

    move-result-object p0

    if-eqz p0, :cond_71

    invoke-static {p0}, Ll0/p0;->h(Ljava/lang/Object;)Ll0/p0;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->getPublicKey(Ll0/p0;)Ljava/security/PublicKey;

    move-result-object p0

    instance-of v0, p0, Ljava/security/interfaces/ECPublicKey;

    if-eqz v0, :cond_69

    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->generatePublicKeyParameter(Ljava/security/PublicKey;)Le1/b;

    move-result-object p0
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_68} :catch_79

    return-object p0

    :cond_69
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string v0, "cannot identify EC public key."

    invoke-direct {p0, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_71
    :try_start_71
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string v0, "no encoding for EC public key"

    invoke-direct {p0, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_79} :catch_79

    :catch_79
    move-exception v0

    move-object p0, v0

    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cannot identify EC public key: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Lb/b;->d(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getCurveName(Lm/q;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lq4/k;->e0(Lm/q;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDomainParameters(Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;Li2/e;)Le1/r;
    .registers 9

    instance-of v0, p1, Li2/c;

    if-eqz v0, :cond_1c

    check-cast p1, Li2/c;

    iget-object p0, p1, Li2/c;->z1:Ljava/lang/String;

    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->getNamedCurveOid(Ljava/lang/String;)Lm/q;

    move-result-object v1

    new-instance v0, Le1/v;

    iget-object v2, p1, Li2/e;->c:Lk2/h;

    iget-object v3, p1, Li2/e;->q:Lk2/p;

    iget-object v4, p1, Li2/e;->x:Ljava/math/BigInteger;

    iget-object v5, p1, Li2/e;->y:Ljava/math/BigInteger;

    iget-object v6, p1, Li2/e;->d:[B

    invoke-direct/range {v0 .. v6}, Le1/v;-><init>(Lm/q;Lk2/h;Lk2/p;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v0

    :cond_1c
    if-nez p1, :cond_32

    invoke-interface {p0}, Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Li2/e;

    move-result-object p0

    new-instance v0, Le1/r;

    iget-object v1, p0, Li2/e;->c:Lk2/h;

    iget-object v2, p0, Li2/e;->q:Lk2/p;

    iget-object v3, p0, Li2/e;->x:Ljava/math/BigInteger;

    iget-object v4, p0, Li2/e;->y:Ljava/math/BigInteger;

    iget-object v5, p0, Li2/e;->d:[B

    invoke-direct/range {v0 .. v5}, Le1/r;-><init>(Lk2/h;Lk2/p;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v0

    :cond_32
    new-instance v1, Le1/r;

    iget-object v2, p1, Li2/e;->c:Lk2/h;

    iget-object v3, p1, Li2/e;->q:Lk2/p;

    iget-object v4, p1, Li2/e;->x:Ljava/math/BigInteger;

    iget-object v5, p1, Li2/e;->y:Ljava/math/BigInteger;

    iget-object v6, p1, Li2/e;->d:[B

    invoke-direct/range {v1 .. v6}, Le1/r;-><init>(Lk2/h;Lk2/p;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v1
.end method

.method public static getDomainParameters(Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;Lm0/f;)Le1/r;
    .registers 8

    iget-object p1, p1, Lm0/f;->c:Lm/u;

    instance-of v0, p1, Lm/q;

    if-eqz v0, :cond_21

    invoke-static {p1}, Lm/q;->v(Ljava/lang/Object;)Lm/q;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->getNamedCurveByOid(Lm/q;)Lm0/h;

    move-result-object v0

    if-nez v0, :cond_1b

    invoke-interface {p0}, Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getAdditionalECParameters()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lm0/h;

    :cond_1b
    new-instance p0, Le1/v;

    invoke-direct {p0, p1, v0}, Le1/v;-><init>(Lm/q;Lm0/h;)V

    return-object p0

    :cond_21
    instance-of v0, p1, Lm/m;

    if-eqz v0, :cond_39

    invoke-interface {p0}, Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Li2/e;

    move-result-object p0

    new-instance v0, Le1/r;

    iget-object v1, p0, Li2/e;->c:Lk2/h;

    iget-object v2, p0, Li2/e;->q:Lk2/p;

    iget-object v3, p0, Li2/e;->x:Ljava/math/BigInteger;

    iget-object v4, p0, Li2/e;->y:Ljava/math/BigInteger;

    iget-object v5, p0, Li2/e;->d:[B

    invoke-direct/range {v0 .. v5}, Le1/r;-><init>(Lk2/h;Lk2/p;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v0

    :cond_39
    invoke-static {p1}, Lm0/h;->h(Ljava/lang/Object;)Lm0/h;

    move-result-object p0

    new-instance v0, Le1/r;

    iget-object p1, p0, Lm0/h;->d:Lm0/g;

    iget-object v1, p1, Lm0/g;->c:Lk2/h;

    iget-object p1, p0, Lm0/h;->q:Lm0/j;

    invoke-virtual {p1}, Lm0/j;->h()Lk2/p;

    move-result-object v2

    iget-object v3, p0, Lm0/h;->x:Ljava/math/BigInteger;

    iget-object v4, p0, Lm0/h;->y:Ljava/math/BigInteger;

    invoke-virtual {p0}, Lm0/h;->i()[B

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Le1/r;-><init>(Lk2/h;Lk2/p;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v0
.end method

.method public static getNameFrom(Ljava/security/spec/AlgorithmParameterSpec;)Ljava/lang/String;
    .registers 3

    new-instance v0, Le2/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Le2/d;-><init>(Ljava/security/spec/AlgorithmParameterSpec;I)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getNamedCurveByName(Ljava/lang/String;)Lm0/h;
    .registers 3

    sget-object v0, Lt0/b;->a:Ljava/util/Hashtable;

    invoke-static {p0}, Lm4/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm0/i;

    if-nez v0, :cond_10

    const/4 v0, 0x0

    goto :goto_14

    :cond_10
    invoke-virtual {v0}, Lm0/i;->d()Lm0/h;

    move-result-object v0

    :goto_14
    if-nez v0, :cond_1b

    invoke-static {p0}, Lq4/k;->X(Ljava/lang/String;)Lm0/h;

    move-result-object p0

    return-object p0

    :cond_1b
    return-object v0
.end method

.method public static getNamedCurveByOid(Lm/q;)Lm0/h;
    .registers 2

    sget-object v0, Lt0/b;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm0/i;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    goto :goto_10

    :cond_c
    invoke-virtual {v0}, Lm0/i;->d()Lm0/h;

    move-result-object v0

    :goto_10
    if-nez v0, :cond_17

    invoke-static {p0}, Lq4/k;->Y(Lm/q;)Lm0/h;

    move-result-object p0

    return-object p0

    :cond_17
    return-object v0
.end method

.method public static getNamedCurveOid(Li2/e;)Lm/q;
    .registers 6

    invoke-static {}, Lq4/k;->f0()Ljava/util/Enumeration;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lq4/k;->X(Ljava/lang/String;)Lm0/h;

    move-result-object v2

    iget-object v3, v2, Lm0/h;->x:Ljava/math/BigInteger;

    iget-object v4, p0, Li2/e;->x:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v2, Lm0/h;->y:Ljava/math/BigInteger;

    iget-object v4, p0, Li2/e;->y:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v2, Lm0/h;->d:Lm0/g;

    iget-object v3, v3, Lm0/g;->c:Lk2/h;

    iget-object v4, p0, Li2/e;->c:Lk2/h;

    invoke-virtual {v3, v4}, Lk2/h;->i(Lk2/h;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v2, v2, Lm0/h;->q:Lm0/j;

    invoke-virtual {v2}, Lm0/j;->h()Lk2/p;

    move-result-object v2

    iget-object v3, p0, Li2/e;->q:Lk2/p;

    invoke-virtual {v2, v3}, Lk2/p;->d(Lk2/p;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v1}, Lq4/k;->g0(Ljava/lang/String;)Lm/q;

    move-result-object p0

    return-object p0

    :cond_47
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getNamedCurveOid(Ljava/lang/String;)Lm/q;
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_f

    return-object v0

    :cond_f
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_1d

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_1d
    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->getOID(Ljava/lang/String;)Lm/q;

    move-result-object v0

    if-eqz v0, :cond_24

    return-object v0

    :cond_24
    invoke-static {p0}, Lq4/k;->g0(Ljava/lang/String;)Lm/q;

    move-result-object p0

    return-object p0
.end method

.method private static getOID(Ljava/lang/String;)Lm/q;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-lt v0, v1, :cond_13

    const/16 v1, 0x32

    if-gt v0, v1, :cond_13

    :try_start_d
    new-instance v0, Lm/q;

    invoke-direct {v0, p0}, Lm/q;-><init>(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_12} :catch_13

    return-object v0

    :catch_13
    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getOrderBitLength(Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;Ljava/math/BigInteger;Ljava/math/BigInteger;)I
    .registers 3

    if-nez p1, :cond_1b

    if-nez p0, :cond_9

    invoke-virtual {p2}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    return p0

    :cond_9
    invoke-interface {p0}, Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Li2/e;

    move-result-object p0

    if-nez p0, :cond_14

    invoke-virtual {p2}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    return p0

    :cond_14
    iget-object p0, p0, Li2/e;->x:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    return p0

    :cond_1b
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    return p0
.end method

.method public static privateKeyToString(Ljava/lang/String;Ljava/math/BigInteger;Li2/e;)Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lm4/m;->a:Ljava/lang/String;

    new-instance v2, Lk2/q;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lk2/q;-><init>(I)V

    iget-object v3, p2, Li2/e;->q:Lk2/p;

    invoke-virtual {v2, v3, p1}, Lk2/b0;->w(Lk2/p;Ljava/math/BigInteger;)Lk2/p;

    move-result-object p1

    invoke-virtual {p1}, Lk2/p;->p()Lk2/p;

    move-result-object p1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " Private Key ["

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->generateKeyFingerprint(Lk2/p;Li2/e;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "            X: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lk2/p;->b()V

    iget-object p0, p1, Lk2/p;->b:Lk2/b0;

    invoke-virtual {p0}, Lk2/b0;->L()Ljava/math/BigInteger;

    move-result-object p0

    const/16 p2, 0x10

    invoke-virtual {p0, p2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "            Y: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lk2/p;->e()Lk2/b0;

    move-result-object p0

    invoke-virtual {p0}, Lk2/b0;->L()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static publicKeyToString(Ljava/lang/String;Lk2/p;Li2/e;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lm4/m;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " Public Key ["

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->generateKeyFingerprint(Lk2/p;Li2/e;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "            X: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lk2/p;->b()V

    iget-object p0, p1, Lk2/p;->b:Lk2/b0;

    invoke-virtual {p0}, Lk2/b0;->L()Ljava/math/BigInteger;

    move-result-object p0

    const/16 p2, 0x10

    invoke-virtual {p0, p2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "            Y: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lk2/p;->e()Lk2/b0;

    move-result-object p0

    invoke-virtual {p0}, Lk2/b0;->L()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
