.class public Lorg/bouncycastle/jce/provider/JCEECPublicKey;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/interfaces/ECPublicKey;
.implements Lh2/c;


# instance fields
.field private algorithm:Ljava/lang/String;

.field private ecSpec:Ljava/security/spec/ECParameterSpec;

.field private gostParams:Lr/f;

.field private q:Lk2/p;

.field private withCompression:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Le1/x;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    iget-object p1, p2, Le1/x;->q:Lk2/p;

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lk2/p;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Le1/x;Li2/e;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    iget-object v0, p2, Le1/u;->d:Le1/r;

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    iget-object p1, p2, Le1/x;->q:Lk2/p;

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lk2/p;

    if-nez p3, :cond_24

    iget-object p1, v0, Le1/r;->g:Lk2/h;

    iget-object p2, v0, Le1/r;->h:[B

    invoke-static {p2}, Lm4/d;->e([B)[B

    move-result-object p2

    invoke-static {p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lk2/h;[B)Ljava/security/spec/EllipticCurve;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->createSpec(Ljava/security/spec/EllipticCurve;Le1/r;)Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    :goto_21
    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    return-void

    :cond_24
    iget-object p1, p3, Li2/e;->c:Lk2/h;

    iget-object p2, p3, Li2/e;->d:[B

    invoke-static {p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lk2/h;[B)Ljava/security/spec/EllipticCurve;

    move-result-object p1

    invoke-static {p1, p3}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/EllipticCurve;Li2/e;)Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    goto :goto_21
.end method

.method public constructor <init>(Ljava/lang/String;Le1/x;Ljava/security/spec/ECParameterSpec;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    iget-object v0, p2, Le1/u;->d:Le1/r;

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    iget-object p1, p2, Le1/x;->q:Lk2/p;

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lk2/p;

    if-nez p3, :cond_24

    iget-object p1, v0, Le1/r;->g:Lk2/h;

    iget-object p2, v0, Le1/r;->h:[B

    invoke-static {p2}, Lm4/d;->e([B)[B

    move-result-object p2

    invoke-static {p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lk2/h;[B)Ljava/security/spec/EllipticCurve;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->createSpec(Ljava/security/spec/EllipticCurve;Le1/r;)Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    return-void

    :cond_24
    iput-object p3, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Li2/g;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    iget-object p1, p2, Li2/g;->d:Lk2/p;

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lk2/p;

    iget-object p2, p2, Li2/a;->c:Li2/e;

    if-eqz p2, :cond_1c

    iget-object p1, p2, Li2/e;->c:Lk2/h;

    iget-object v0, p2, Li2/e;->d:[B

    invoke-static {p1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lk2/h;[B)Ljava/security/spec/EllipticCurve;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/EllipticCurve;Li2/e;)Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    :goto_19
    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    return-void

    :cond_1c
    iget-object p1, p1, Lk2/p;->a:Lk2/h;

    if-nez p1, :cond_43

    sget-object p1, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-interface {p1}, Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Li2/e;

    move-result-object p1

    iget-object p1, p1, Li2/e;->c:Lk2/h;

    iget-object p2, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lk2/p;

    invoke-virtual {p2}, Lk2/p;->b()V

    iget-object p2, p2, Lk2/p;->b:Lk2/b0;

    invoke-virtual {p2}, Lk2/b0;->L()Ljava/math/BigInteger;

    move-result-object p2

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lk2/p;

    invoke-virtual {v0}, Lk2/p;->e()Lk2/b0;

    move-result-object v0

    invoke-virtual {v0}, Lk2/b0;->L()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lk2/h;->d(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lk2/p;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lk2/p;

    :cond_43
    const/4 p1, 0x0

    goto :goto_19
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/spec/ECPublicKeySpec;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/security/spec/ECPublicKeySpec;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p2}, Ljava/security/spec/ECPublicKeySpec;->getW()Ljava/security/spec/ECPoint;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECPoint;)Lk2/p;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lk2/p;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/bouncycastle/jce/provider/JCEECPublicKey;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    iget-object p1, p2, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lk2/p;

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lk2/p;

    iget-object p1, p2, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    iget-boolean p1, p2, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->withCompression:Z

    iput-boolean p1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->withCompression:Z

    iget-object p1, p2, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->gostParams:Lr/f;

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->gostParams:Lr/f;

    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/ECPublicKey;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    invoke-interface {p1}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECPoint;)Lk2/p;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lk2/p;

    return-void
.end method

.method public constructor <init>(Ll0/p0;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->populateFromPubKeyInfo(Ll0/p0;)V

    return-void
.end method

.method private createSpec(Ljava/security/spec/EllipticCurve;Le1/r;)Ljava/security/spec/ECParameterSpec;
    .registers 5

    new-instance p0, Ljava/security/spec/ECParameterSpec;

    iget-object v0, p2, Le1/r;->i:Lk2/p;

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lk2/p;)Ljava/security/spec/ECPoint;

    move-result-object v0

    iget-object v1, p2, Le1/r;->j:Ljava/math/BigInteger;

    iget-object p2, p2, Le1/r;->k:Ljava/math/BigInteger;

    invoke-virtual {p2}, Ljava/math/BigInteger;->intValue()I

    move-result p2

    invoke-direct {p0, p1, v0, v1, p2}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    return-object p0
.end method

.method private extractBytes([BILjava/math/BigInteger;)V
    .registers 8

    invoke-virtual {p3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    array-length p3, p0

    const/4 v0, 0x0

    const/16 v1, 0x20

    if-ge p3, v1, :cond_14

    new-array p3, v1, [B

    array-length v2, p0

    rsub-int/lit8 v2, v2, 0x20

    array-length v3, p0

    invoke-static {p0, v0, p3, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, p3

    :cond_14
    :goto_14
    if-eq v0, v1, :cond_23

    add-int p3, p2, v0

    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    aget-byte v2, p0, v2

    aput-byte v2, p1, p3

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_23
    return-void
.end method

.method private populateFromPubKeyInfo(Ll0/p0;)V
    .registers 16

    iget-object v0, p1, Ll0/p0;->c:Ll0/b;

    iget-object p1, p1, Ll0/p0;->d:Lm/b;

    iget-object v1, v0, Ll0/b;->c:Lm/q;

    iget-object v0, v0, Ll0/b;->d:Lm/f;

    sget-object v2, Lr/a;->l:Lm/q;

    invoke-virtual {v1, v2}, Lm/u;->n(Lm/u;)Z

    move-result v1

    const-string v2, "error recovering public key"

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_7e

    const-string v1, "ECGOST3410"

    iput-object v1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    :try_start_19
    invoke-virtual {p1}, Lm/b;->s()[B

    move-result-object p1

    invoke-static {p1}, Lm/u;->o([B)Lm/u;

    move-result-object p1

    check-cast p1, Lm/r;
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_23} :catch_78

    iget-object p1, p1, Lm/r;->c:[B

    const/16 v1, 0x41

    new-array v1, v1, [B

    aput-byte v3, v1, v4

    :goto_2b
    const/16 v2, 0x20

    if-gt v5, v2, :cond_40

    rsub-int/lit8 v2, v5, 0x20

    aget-byte v2, p1, v2

    aput-byte v2, v1, v5

    add-int/lit8 v2, v5, 0x20

    rsub-int/lit8 v3, v5, 0x40

    aget-byte v3, p1, v3

    aput-byte v3, v1, v2

    add-int/lit8 v5, v5, 0x1

    goto :goto_2b

    :cond_40
    invoke-static {v0}, Lr/f;->h(Ljava/lang/Object;)Lr/f;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->gostParams:Lr/f;

    iget-object p1, p1, Lr/f;->c:Lm/q;

    invoke-static {p1}, Lr/b;->e(Lm/q;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lt4/d;->d0(Ljava/lang/String;)Li2/c;

    move-result-object p1

    iget-object v0, p1, Li2/e;->c:Lk2/h;

    iget-object v2, p1, Li2/e;->d:[B

    invoke-static {v0, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lk2/h;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v5

    invoke-virtual {v0, v1}, Lk2/h;->g([B)Lk2/p;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lk2/p;

    new-instance v3, Li2/d;

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->gostParams:Lr/f;

    iget-object v0, v0, Lr/f;->c:Lm/q;

    invoke-static {v0}, Lr/b;->e(Lm/q;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p1, Li2/e;->q:Lk2/p;

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lk2/p;)Ljava/security/spec/ECPoint;

    move-result-object v6

    iget-object v7, p1, Li2/e;->x:Ljava/math/BigInteger;

    iget-object v8, p1, Li2/e;->y:Ljava/math/BigInteger;

    invoke-direct/range {v3 .. v8}, Li2/d;-><init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v3, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    return-void

    :catch_78
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7e
    invoke-static {v0}, Lm0/f;->h(Ljava/lang/Object;)Lm0/f;

    move-result-object v0

    iget-object v0, v0, Lm0/f;->c:Lm/u;

    instance-of v1, v0, Lm/q;

    if-eqz v1, :cond_b4

    check-cast v0, Lm/q;

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->getNamedCurveByOid(Lm/q;)Lm0/h;

    move-result-object v1

    iget-object v6, v1, Lm0/h;->d:Lm0/g;

    iget-object v6, v6, Lm0/g;->c:Lk2/h;

    invoke-virtual {v1}, Lm0/h;->i()[B

    move-result-object v7

    invoke-static {v6, v7}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lk2/h;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v10

    new-instance v8, Li2/d;

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->getCurveName(Lm/q;)Ljava/lang/String;

    move-result-object v9

    iget-object v0, v1, Lm0/h;->q:Lm0/j;

    invoke-virtual {v0}, Lm0/j;->h()Lk2/p;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lk2/p;)Ljava/security/spec/ECPoint;

    move-result-object v11

    iget-object v12, v1, Lm0/h;->x:Ljava/math/BigInteger;

    iget-object v13, v1, Lm0/h;->y:Ljava/math/BigInteger;

    invoke-direct/range {v8 .. v13}, Li2/d;-><init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v8, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    goto :goto_ed

    :cond_b4
    instance-of v1, v0, Lm/m;

    if-eqz v1, :cond_c4

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    sget-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-interface {v0}, Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Li2/e;

    move-result-object v0

    iget-object v6, v0, Li2/e;->c:Lk2/h;

    goto :goto_ed

    :cond_c4
    invoke-static {v0}, Lm0/h;->h(Ljava/lang/Object;)Lm0/h;

    move-result-object v0

    iget-object v1, v0, Lm0/h;->d:Lm0/g;

    iget-object v6, v1, Lm0/g;->c:Lk2/h;

    invoke-virtual {v0}, Lm0/h;->i()[B

    move-result-object v1

    invoke-static {v6, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lk2/h;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v1

    new-instance v7, Ljava/security/spec/ECParameterSpec;

    iget-object v8, v0, Lm0/h;->q:Lm0/j;

    invoke-virtual {v8}, Lm0/j;->h()Lk2/p;

    move-result-object v8

    invoke-static {v8}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lk2/p;)Ljava/security/spec/ECPoint;

    move-result-object v8

    iget-object v9, v0, Lm0/h;->x:Ljava/math/BigInteger;

    iget-object v0, v0, Lm0/h;->y:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    invoke-direct {v7, v1, v8, v9, v0}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    iput-object v7, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    :goto_ed
    invoke-virtual {p1}, Lm/b;->s()[B

    move-result-object p1

    new-instance v0, Lm/x0;

    invoke-direct {v0, p1}, Lm/r;-><init>([B)V

    aget-byte v1, p1, v4

    if-ne v1, v3, :cond_11e

    aget-byte v1, p1, v5

    array-length v3, p1

    const/4 v4, 0x2

    sub-int/2addr v3, v4

    if-ne v1, v3, :cond_11e

    aget-byte v1, p1, v4

    const/4 v3, 0x3

    if-eq v1, v4, :cond_108

    if-ne v1, v3, :cond_11e

    :cond_108
    invoke-virtual {v6}, Lk2/h;->k()I

    move-result v1

    array-length v4, p1

    sub-int/2addr v4, v3

    if-lt v1, v4, :cond_11e

    :try_start_110
    invoke-static {p1}, Lm/u;->o([B)Lm/u;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lm/r;
    :try_end_117
    .catch Ljava/io/IOException; {:try_start_110 .. :try_end_117} :catch_118

    goto :goto_11e

    :catch_118
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11e
    :goto_11e
    iget-object p1, v0, Lm/r;->c:[B

    new-instance v0, Lm/x0;

    invoke-static {p1}, Lm4/d;->e([B)[B

    move-result-object p1

    invoke-direct {v0, p1}, Lm/r;-><init>([B)V

    invoke-virtual {v6, p1}, Lk2/h;->g([B)Lk2/p;

    move-result-object p1

    invoke-virtual {p1}, Lk2/p;->p()Lk2/p;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lk2/p;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 3

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Lm/u;->o([B)Lm/u;

    move-result-object v0

    invoke-static {v0}, Ll0/p0;->h(Ljava/lang/Object;)Ll0/p0;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->populateFromPubKeyInfo(Ll0/p0;)V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->withCompression:Z

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-boolean p0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->withCompression:Z

    invoke-virtual {p1, p0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    return-void
.end method


# virtual methods
.method public engineGetQ()Lk2/p;
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lk2/p;

    return-object p0
.end method

.method public engineGetSpec()Li2/e;
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    if-eqz p0, :cond_9

    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;)Li2/e;

    move-result-object p0

    return-object p0

    :cond_9
    sget-object p0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-interface {p0}, Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Li2/e;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lorg/bouncycastle/jce/provider/JCEECPublicKey;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Lorg/bouncycastle/jce/provider/JCEECPublicKey;

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->engineGetQ()Lk2/p;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->engineGetQ()Lk2/p;

    move-result-object v2

    invoke-virtual {v0, v2}, Lk2/p;->d(Lk2/p;)Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->engineGetSpec()Li2/e;

    move-result-object p0

    invoke-virtual {p1}, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->engineGetSpec()Li2/e;

    move-result-object p1

    invoke-virtual {p0, p1}, Li2/e;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_26

    const/4 p0, 0x1

    return p0

    :cond_26
    return v1
.end method

.method public getAlgorithm()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    return-object p0
.end method

.method public getEncoded()[B
    .registers 8

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    const-string v1, "ECGOST3410"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9b

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->gostParams:Lr/f;

    if-eqz v0, :cond_f

    goto :goto_64

    :cond_f
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    instance-of v1, v0, Li2/d;

    if-eqz v1, :cond_26

    new-instance v1, Lr/f;

    check-cast v0, Li2/d;

    iget-object v0, v0, Li2/d;->c:Ljava/lang/String;

    invoke-static {v0}, Lr/b;->f(Ljava/lang/String;)Lm/q;

    move-result-object v0

    sget-object v2, Lr/a;->o:Lm/q;

    invoke-direct {v1, v0, v2}, Lr/f;-><init>(Lm/q;Lm/q;)V

    move-object v0, v1

    goto :goto_64

    :cond_26
    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Ljava/security/spec/EllipticCurve;)Lk2/h;

    move-result-object v2

    new-instance v1, Lm0/h;

    new-instance v3, Lm0/j;

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lk2/h;Ljava/security/spec/ECPoint;)Lk2/p;

    move-result-object v0

    iget-boolean v4, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->withCompression:Z

    invoke-direct {v3, v0, v4}, Lm0/j;-><init>(Lk2/p;Z)V

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v4

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v0

    int-to-long v5, v0

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/spec/EllipticCurve;->getSeed()[B

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lm0/h;-><init>(Lk2/h;Lm0/j;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    new-instance v0, Lm0/f;

    invoke-direct {v0, v1}, Lm0/f;-><init>(Lm0/h;)V

    :goto_64
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lk2/p;

    invoke-virtual {v1}, Lk2/p;->b()V

    iget-object v1, v1, Lk2/p;->b:Lk2/b0;

    invoke-virtual {v1}, Lk2/b0;->L()Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lk2/p;

    invoke-virtual {v2}, Lk2/p;->e()Lk2/b0;

    move-result-object v2

    invoke-virtual {v2}, Lk2/b0;->L()Ljava/math/BigInteger;

    move-result-object v2

    const/16 v3, 0x40

    new-array v3, v3, [B

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4, v1}, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->extractBytes([BILjava/math/BigInteger;)V

    const/16 v1, 0x20

    invoke-direct {p0, v3, v1, v2}, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->extractBytes([BILjava/math/BigInteger;)V

    :try_start_86
    new-instance p0, Ll0/p0;

    new-instance v1, Ll0/b;

    sget-object v2, Lr/a;->l:Lm/q;

    invoke-direct {v1, v2, v0}, Ll0/b;-><init>(Lm/q;Lm/f;)V

    new-instance v0, Lm/x0;

    invoke-direct {v0, v3}, Lm/r;-><init>([B)V

    invoke-direct {p0, v1, v0}, Ll0/p0;-><init>(Ll0/b;Lm/f;)V
    :try_end_97
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_97} :catch_99

    goto/16 :goto_11a

    :catch_99
    const/4 p0, 0x0

    return-object p0

    :cond_9b
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    instance-of v1, v0, Li2/d;

    if-eqz v1, :cond_bc

    check-cast v0, Li2/d;

    iget-object v0, v0, Li2/d;->c:Ljava/lang/String;

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->getNamedCurveOid(Ljava/lang/String;)Lm/q;

    move-result-object v0

    if-nez v0, :cond_b6

    new-instance v0, Lm/q;

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    check-cast v1, Li2/d;

    iget-object v1, v1, Li2/d;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Lm/q;-><init>(Ljava/lang/String;)V

    :cond_b6
    new-instance v1, Lm0/f;

    invoke-direct {v1, v0}, Lm0/f;-><init>(Lm/q;)V

    goto :goto_103

    :cond_bc
    if-nez v0, :cond_c4

    new-instance v1, Lm0/f;

    invoke-direct {v1}, Lm0/f;-><init>()V

    goto :goto_103

    :cond_c4
    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Ljava/security/spec/EllipticCurve;)Lk2/h;

    move-result-object v2

    new-instance v1, Lm0/h;

    new-instance v3, Lm0/j;

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lk2/h;Ljava/security/spec/ECPoint;)Lk2/p;

    move-result-object v0

    iget-boolean v4, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->withCompression:Z

    invoke-direct {v3, v0, v4}, Lm0/j;-><init>(Lk2/p;Z)V

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v4

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v0

    int-to-long v5, v0

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/spec/EllipticCurve;->getSeed()[B

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lm0/h;-><init>(Lk2/h;Lm0/j;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    new-instance v0, Lm0/f;

    invoke-direct {v0, v1}, Lm0/f;-><init>(Lm0/h;)V

    move-object v1, v0

    :goto_103
    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->getQ()Lk2/p;

    move-result-object v0

    iget-boolean p0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->withCompression:Z

    invoke-virtual {v0, p0}, Lk2/p;->h(Z)[B

    move-result-object p0

    new-instance v0, Ll0/p0;

    new-instance v2, Ll0/b;

    sget-object v3, Lm0/m;->M0:Lm/q;

    invoke-direct {v2, v3, v1}, Ll0/b;-><init>(Lm/q;Lm/f;)V

    invoke-direct {v0, v2, p0}, Ll0/p0;-><init>(Ll0/b;[B)V

    move-object p0, v0

    :goto_11a
    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/KeyUtil;->getEncodedSubjectPublicKeyInfo(Ll0/p0;)[B

    move-result-object p0

    return-object p0
.end method

.method public getFormat()Ljava/lang/String;
    .registers 1

    const-string p0, "X.509"

    return-object p0
.end method

.method public getParameters()Li2/e;
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;)Li2/e;

    move-result-object p0

    return-object p0
.end method

.method public getParams()Ljava/security/spec/ECParameterSpec;
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    return-object p0
.end method

.method public getQ()Lk2/p;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    if-nez v0, :cond_f

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lk2/p;

    invoke-virtual {p0}, Lk2/p;->p()Lk2/p;

    move-result-object p0

    invoke-virtual {p0}, Lk2/p;->c()Lk2/p;

    move-result-object p0

    return-object p0

    :cond_f
    iget-object p0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lk2/p;

    return-object p0
.end method

.method public getW()Ljava/security/spec/ECPoint;
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lk2/p;

    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lk2/p;)Ljava/security/spec/ECPoint;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .registers 2

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->engineGetQ()Lk2/p;

    move-result-object v0

    invoke-virtual {v0}, Lk2/p;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->engineGetSpec()Li2/e;

    move-result-object p0

    invoke-virtual {p0}, Li2/e;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public setPointFormat(Ljava/lang/String;)V
    .registers 3

    const-string v0, "UNCOMPRESSED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->withCompression:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EC Public Key"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lm4/m;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "            X: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lk2/p;

    invoke-virtual {v2}, Lk2/p;->b()V

    iget-object v2, v2, Lk2/p;->b:Lk2/b0;

    invoke-virtual {v2}, Lk2/b0;->L()Ljava/math/BigInteger;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "            Y: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lk2/p;

    invoke-virtual {p0}, Lk2/p;->e()Lk2/b0;

    move-result-object p0

    invoke-virtual {p0}, Lk2/b0;->L()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
