.class public Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/interfaces/ECPublicKey;
.implements Lh2/c;


# static fields
.field static final serialVersionUID:J = 0x61823879c4d16022L


# instance fields
.field private algorithm:Ljava/lang/String;

.field private transient ecPublicKey:Le1/x;

.field private transient ecSpec:Ljava/security/spec/ECParameterSpec;

.field private transient gostParams:Lr/f;

.field private withCompression:Z


# direct methods
.method public constructor <init>(Li2/g;Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ECGOST3410-2012"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->algorithm:Ljava/lang/String;

    iget-object v0, p1, Li2/a;->c:Li2/e;

    iget-object p1, p1, Li2/g;->d:Lk2/p;

    if-eqz v0, :cond_27

    iget-object v1, v0, Li2/e;->c:Lk2/h;

    iget-object v2, v0, Li2/e;->d:[B

    invoke-static {v1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lk2/h;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v1

    new-instance v2, Le1/x;

    invoke-static {p2, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->getDomainParameters(Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;Li2/e;)Le1/r;

    move-result-object p2

    invoke-direct {v2, p1, p2}, Le1/x;-><init>(Lk2/p;Le1/r;)V

    iput-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->ecPublicKey:Le1/x;

    invoke-static {v1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/EllipticCurve;Li2/e;)Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    return-void

    :cond_27
    invoke-interface {p2}, Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Li2/e;

    move-result-object v0

    new-instance v1, Le1/x;

    iget-object v0, v0, Li2/e;->c:Lk2/h;

    invoke-virtual {p1}, Lk2/p;->b()V

    iget-object v2, p1, Lk2/p;->b:Lk2/b0;

    invoke-virtual {v2}, Lk2/b0;->L()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Lk2/p;->e()Lk2/b0;

    move-result-object p1

    invoke-virtual {p1}, Lk2/b0;->L()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lk2/h;->d(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lk2/p;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->getDomainParameters(Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;Ljava/security/spec/ECParameterSpec;)Le1/r;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Le1/x;-><init>(Lk2/p;Le1/r;)V

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->ecPublicKey:Le1/x;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Le1/x;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->algorithm:Ljava/lang/String;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->ecPublicKey:Le1/x;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Le1/x;Li2/e;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ECGOST3410-2012"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->algorithm:Ljava/lang/String;

    iget-object v0, p2, Le1/u;->d:Le1/r;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->algorithm:Ljava/lang/String;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->ecPublicKey:Le1/x;

    if-nez p3, :cond_22

    iget-object p1, v0, Le1/r;->g:Lk2/h;

    iget-object p2, v0, Le1/r;->h:[B

    invoke-static {p2}, Lm4/d;->e([B)[B

    move-result-object p2

    invoke-static {p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lk2/h;[B)Ljava/security/spec/EllipticCurve;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->createSpec(Ljava/security/spec/EllipticCurve;Le1/r;)Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    :goto_1f
    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    return-void

    :cond_22
    iget-object p1, p3, Li2/e;->c:Lk2/h;

    iget-object p2, p3, Li2/e;->d:[B

    invoke-static {p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lk2/h;[B)Ljava/security/spec/EllipticCurve;

    move-result-object p1

    invoke-static {p1, p3}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/EllipticCurve;Li2/e;)Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    goto :goto_1f
.end method

.method public constructor <init>(Ljava/lang/String;Le1/x;Ljava/security/spec/ECParameterSpec;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ECGOST3410-2012"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->algorithm:Ljava/lang/String;

    iget-object v0, p2, Le1/u;->d:Le1/r;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->algorithm:Ljava/lang/String;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->ecPublicKey:Le1/x;

    instance-of p1, v0, Le1/s;

    if-eqz p1, :cond_21

    move-object p1, v0

    check-cast p1, Le1/s;

    new-instance p2, Lr/f;

    iget-object v1, p1, Le1/s;->n:Lm/q;

    iget-object v2, p1, Le1/s;->o:Lm/q;

    iget-object p1, p1, Le1/s;->p:Lm/q;

    invoke-direct {p2, v1, v2, p1}, Lr/f;-><init>(Lm/q;Lm/q;Lm/q;)V

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->gostParams:Lr/f;

    :cond_21
    if-nez p3, :cond_36

    iget-object p1, v0, Le1/r;->g:Lk2/h;

    iget-object p2, v0, Le1/r;->h:[B

    invoke-static {p2}, Lm4/d;->e([B)[B

    move-result-object p2

    invoke-static {p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lk2/h;[B)Ljava/security/spec/EllipticCurve;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->createSpec(Ljava/security/spec/EllipticCurve;Le1/r;)Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    return-void

    :cond_36
    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/ECPublicKey;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ECGOST3410-2012"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->algorithm:Ljava/lang/String;

    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->algorithm:Ljava/lang/String;

    invoke-interface {p1}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    new-instance v1, Le1/x;

    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECPoint;)Lk2/p;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    invoke-static {v2, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->getDomainParameters(Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;Ljava/security/spec/ECParameterSpec;)Le1/r;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Le1/x;-><init>(Lk2/p;Le1/r;)V

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->ecPublicKey:Le1/x;

    return-void
.end method

.method public constructor <init>(Ljava/security/spec/ECPublicKeySpec;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ECGOST3410-2012"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/security/spec/ECPublicKeySpec;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    new-instance v1, Le1/x;

    invoke-virtual {p1}, Ljava/security/spec/ECPublicKeySpec;->getW()Ljava/security/spec/ECPoint;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECPoint;)Lk2/p;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/security/spec/ECPublicKeySpec;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    invoke-static {v2, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->getDomainParameters(Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;Ljava/security/spec/ECParameterSpec;)Le1/r;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Le1/x;-><init>(Lk2/p;Le1/r;)V

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->ecPublicKey:Le1/x;

    return-void
.end method

.method public constructor <init>(Ll0/p0;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ECGOST3410-2012"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->algorithm:Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->populateFromPubKeyInfo(Ll0/p0;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ECGOST3410-2012"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->algorithm:Ljava/lang/String;

    iget-object v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->ecPublicKey:Le1/x;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->ecPublicKey:Le1/x;

    iget-object v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    iget-boolean v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->withCompression:Z

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->withCompression:Z

    iget-object p1, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->gostParams:Lr/f;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->gostParams:Lr/f;

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

.method private extractBytes([BIILjava/math/BigInteger;)V
    .registers 8

    invoke-virtual {p4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    array-length p4, p0

    const/4 v0, 0x0

    if-ge p4, p2, :cond_12

    new-array p4, p2, [B

    array-length v1, p0

    sub-int v1, p2, v1

    array-length v2, p0

    invoke-static {p0, v0, p4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, p4

    :cond_12
    :goto_12
    if-eq v0, p2, :cond_21

    add-int p4, p3, v0

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, v0

    aget-byte v1, p0, v1

    aput-byte v1, p1, p4

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_21
    return-void
.end method

.method private populateFromPubKeyInfo(Ll0/p0;)V
    .registers 12

    iget-object v0, p1, Ll0/p0;->c:Ll0/b;

    iget-object v0, v0, Ll0/b;->c:Lm/q;

    iget-object v1, p1, Ll0/p0;->d:Lm/b;

    const-string v2, "ECGOST3410-2012"

    iput-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->algorithm:Ljava/lang/String;

    :try_start_a
    invoke-virtual {v1}, Lm/b;->s()[B

    move-result-object v1

    invoke-static {v1}, Lm/u;->o([B)Lm/u;

    move-result-object v1

    check-cast v1, Lm/r;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_14} :catch_87

    iget-object v1, v1, Lm/r;->c:[B

    sget-object v2, Lz1/a;->f:Lm/q;

    invoke-virtual {v0, v2}, Lm/u;->n(Lm/u;)Z

    move-result v0

    if-eqz v0, :cond_21

    const/16 v0, 0x40

    goto :goto_23

    :cond_21
    const/16 v0, 0x20

    :goto_23
    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v3, v2, 0x1

    new-array v3, v3, [B

    const/4 v4, 0x0

    const/4 v5, 0x4

    aput-byte v5, v3, v4

    const/4 v4, 0x1

    :goto_2e
    if-gt v4, v0, :cond_41

    sub-int v5, v0, v4

    aget-byte v5, v1, v5

    aput-byte v5, v3, v4

    add-int v5, v4, v0

    sub-int v6, v2, v4

    aget-byte v6, v1, v6

    aput-byte v6, v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_2e

    :cond_41
    iget-object p1, p1, Ll0/p0;->c:Ll0/b;

    iget-object p1, p1, Ll0/b;->d:Lm/f;

    invoke-static {p1}, Lr/f;->h(Ljava/lang/Object;)Lr/f;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->gostParams:Lr/f;

    iget-object p1, p1, Lr/f;->c:Lm/q;

    invoke-static {p1}, Lr/b;->e(Lm/q;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lt4/d;->d0(Ljava/lang/String;)Li2/c;

    move-result-object p1

    iget-object v0, p1, Li2/e;->c:Lk2/h;

    iget-object v1, p1, Li2/e;->d:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lk2/h;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v6

    new-instance v1, Le1/x;

    invoke-virtual {v0, v3}, Lk2/h;->g([B)Lk2/p;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v2, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->getDomainParameters(Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;Li2/e;)Le1/r;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Le1/x;-><init>(Lk2/p;Le1/r;)V

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->ecPublicKey:Le1/x;

    new-instance v4, Li2/d;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->gostParams:Lr/f;

    iget-object v0, v0, Lr/f;->c:Lm/q;

    invoke-static {v0}, Lr/b;->e(Lm/q;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p1, Li2/e;->q:Lk2/p;

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lk2/p;)Ljava/security/spec/ECPoint;

    move-result-object v7

    iget-object v8, p1, Li2/e;->x:Ljava/math/BigInteger;

    iget-object v9, p1, Li2/e;->y:Ljava/math/BigInteger;

    invoke-direct/range {v4 .. v9}, Li2/d;-><init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    return-void

    :catch_87
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "error recovering public key"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 2

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-static {p1}, Lm/u;->o([B)Lm/u;

    move-result-object p1

    invoke-static {p1}, Ll0/p0;->h(Ljava/lang/Object;)Ll0/p0;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->populateFromPubKeyInfo(Ll0/p0;)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 2

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->getEncoded()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public engineGetKeyParameters()Le1/x;
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->ecPublicKey:Le1/x;

    return-object p0
.end method

.method public engineGetSpec()Li2/e;
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

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

    instance-of v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->ecPublicKey:Le1/x;

    iget-object v0, v0, Le1/x;->q:Lk2/p;

    iget-object v2, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->ecPublicKey:Le1/x;

    iget-object v2, v2, Le1/x;->q:Lk2/p;

    invoke-virtual {v0, v2}, Lk2/p;->d(Lk2/p;)Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->engineGetSpec()Li2/e;

    move-result-object p0

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->engineGetSpec()Li2/e;

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

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->algorithm:Ljava/lang/String;

    return-object p0
.end method

.method public getEncoded()[B
    .registers 14

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->ecPublicKey:Le1/x;

    iget-object v0, v0, Le1/x;->q:Lk2/p;

    invoke-virtual {v0}, Lk2/p;->b()V

    iget-object v0, v0, Lk2/p;->b:Lk2/b0;

    invoke-virtual {v0}, Lk2/b0;->L()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->ecPublicKey:Le1/x;

    iget-object v1, v1, Le1/x;->q:Lk2/p;

    invoke-virtual {v1}, Lk2/p;->e()Lk2/b0;

    move-result-object v1

    invoke-virtual {v1}, Lk2/b0;->L()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    const/16 v3, 0x100

    const/4 v4, 0x0

    if-le v2, v3, :cond_24

    const/4 v2, 0x1

    goto :goto_25

    :cond_24
    move v2, v4

    :goto_25
    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->getGostParams()Lr/f;

    move-result-object v3

    const/4 v5, 0x0

    if-nez v3, :cond_aa

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    instance-of v6, v3, Li2/d;

    if-eqz v6, :cond_6c

    check-cast v3, Li2/d;

    iget-object v3, v3, Li2/d;->c:Ljava/lang/String;

    invoke-static {v3}, Lr/b;->f(Ljava/lang/String;)Lm/q;

    move-result-object v3

    if-eqz v2, :cond_45

    new-instance v6, Lr/f;

    sget-object v7, Lz1/a;->b:Lm/q;

    invoke-direct {v6, v3, v7}, Lr/f;-><init>(Lm/q;Lm/q;)V

    :goto_43
    move-object v3, v6

    goto :goto_aa

    :cond_45
    sget-object v6, Lz1/a;->l:Lm/q;

    invoke-virtual {v3, v6}, Lm/u;->n(Lm/u;)Z

    move-result v6

    if-nez v6, :cond_66

    sget-object v6, Lz1/a;->m:Lm/q;

    invoke-virtual {v3, v6}, Lm/u;->n(Lm/u;)Z

    move-result v6

    if-nez v6, :cond_66

    sget-object v6, Lz1/a;->n:Lm/q;

    invoke-virtual {v3, v6}, Lm/u;->n(Lm/u;)Z

    move-result v6

    if-eqz v6, :cond_5e

    goto :goto_66

    :cond_5e
    new-instance v6, Lr/f;

    sget-object v7, Lz1/a;->a:Lm/q;

    invoke-direct {v6, v3, v7}, Lr/f;-><init>(Lm/q;Lm/q;)V

    goto :goto_43

    :cond_66
    :goto_66
    new-instance v6, Lr/f;

    invoke-direct {v6, v3, v5}, Lr/f;-><init>(Lm/q;Lm/q;)V

    goto :goto_43

    :cond_6c
    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Ljava/security/spec/EllipticCurve;)Lk2/h;

    move-result-object v7

    new-instance v6, Lm0/h;

    new-instance v8, Lm0/j;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v3

    invoke-static {v7, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lk2/h;Ljava/security/spec/ECPoint;)Lk2/p;

    move-result-object v3

    iget-boolean v9, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->withCompression:Z

    invoke-direct {v8, v3, v9}, Lm0/j;-><init>(Lk2/p;Z)V

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v9

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v3

    int-to-long v10, v3

    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v10

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v3

    invoke-virtual {v3}, Ljava/security/spec/EllipticCurve;->getSeed()[B

    move-result-object v11

    invoke-direct/range {v6 .. v11}, Lm0/h;-><init>(Lk2/h;Lm0/j;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    new-instance v3, Lm0/f;

    invoke-direct {v3, v6}, Lm0/f;-><init>(Lm0/h;)V

    :cond_aa
    :goto_aa
    const/16 v6, 0x40

    if-eqz v2, :cond_b6

    sget-object v2, Lz1/a;->f:Lm/q;

    const/16 v7, 0x80

    move v12, v7

    move v7, v6

    move v6, v12

    goto :goto_ba

    :cond_b6
    sget-object v2, Lz1/a;->e:Lm/q;

    const/16 v7, 0x20

    :goto_ba
    new-array v8, v6, [B

    div-int/lit8 v6, v6, 0x2

    invoke-direct {p0, v8, v6, v4, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->extractBytes([BIILjava/math/BigInteger;)V

    invoke-direct {p0, v8, v6, v7, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->extractBytes([BIILjava/math/BigInteger;)V

    :try_start_c4
    new-instance p0, Ll0/p0;

    new-instance v0, Ll0/b;

    invoke-direct {v0, v2, v3}, Ll0/b;-><init>(Lm/q;Lm/f;)V

    new-instance v1, Lm/x0;

    invoke-direct {v1, v8}, Lm/r;-><init>([B)V

    invoke-direct {p0, v0, v1}, Ll0/p0;-><init>(Ll0/b;Lm/f;)V
    :try_end_d3
    .catch Ljava/io/IOException; {:try_start_c4 .. :try_end_d3} :catch_d8

    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/KeyUtil;->getEncodedSubjectPublicKeyInfo(Ll0/p0;)[B

    move-result-object p0

    return-object p0

    :catch_d8
    return-object v5
.end method

.method public getFormat()Ljava/lang/String;
    .registers 1

    const-string p0, "X.509"

    return-object p0
.end method

.method public getGostParams()Lr/f;
    .registers 4

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->gostParams:Lr/f;

    if-nez v0, :cond_60

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    instance-of v0, v0, Li2/d;

    if-eqz v0, :cond_60

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->ecPublicKey:Le1/x;

    iget-object v0, v0, Le1/x;->q:Lk2/p;

    invoke-virtual {v0}, Lk2/p;->b()V

    iget-object v0, v0, Lk2/p;->b:Lk2/b0;

    invoke-virtual {v0}, Lk2/b0;->L()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x100

    if-le v0, v1, :cond_21

    const/4 v0, 0x1

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :goto_22
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    check-cast v1, Li2/d;

    iget-object v1, v1, Li2/d;->c:Ljava/lang/String;

    invoke-static {v1}, Lr/b;->f(Ljava/lang/String;)Lm/q;

    move-result-object v1

    if-eqz v0, :cond_38

    new-instance v0, Lr/f;

    sget-object v2, Lz1/a;->b:Lm/q;

    invoke-direct {v0, v1, v2}, Lr/f;-><init>(Lm/q;Lm/q;)V

    :goto_35
    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->gostParams:Lr/f;

    goto :goto_60

    :cond_38
    sget-object v0, Lz1/a;->l:Lm/q;

    invoke-virtual {v1, v0}, Lm/u;->n(Lm/u;)Z

    move-result v0

    if-nez v0, :cond_59

    sget-object v0, Lz1/a;->m:Lm/q;

    invoke-virtual {v1, v0}, Lm/u;->n(Lm/u;)Z

    move-result v0

    if-nez v0, :cond_59

    sget-object v0, Lz1/a;->n:Lm/q;

    invoke-virtual {v1, v0}, Lm/u;->n(Lm/u;)Z

    move-result v0

    if-eqz v0, :cond_51

    goto :goto_59

    :cond_51
    new-instance v0, Lr/f;

    sget-object v2, Lz1/a;->a:Lm/q;

    invoke-direct {v0, v1, v2}, Lr/f;-><init>(Lm/q;Lm/q;)V

    goto :goto_35

    :cond_59
    :goto_59
    new-instance v0, Lr/f;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lr/f;-><init>(Lm/q;Lm/q;)V

    goto :goto_35

    :cond_60
    :goto_60
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->gostParams:Lr/f;

    return-object p0
.end method

.method public getParameters()Li2/e;
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

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

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    return-object p0
.end method

.method public getQ()Lk2/p;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    if-nez v0, :cond_11

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->ecPublicKey:Le1/x;

    iget-object p0, p0, Le1/x;->q:Lk2/p;

    invoke-virtual {p0}, Lk2/p;->p()Lk2/p;

    move-result-object p0

    invoke-virtual {p0}, Lk2/p;->c()Lk2/p;

    move-result-object p0

    return-object p0

    :cond_11
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->ecPublicKey:Le1/x;

    iget-object p0, p0, Le1/x;->q:Lk2/p;

    return-object p0
.end method

.method public getW()Ljava/security/spec/ECPoint;
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->ecPublicKey:Le1/x;

    iget-object p0, p0, Le1/x;->q:Lk2/p;

    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lk2/p;)Ljava/security/spec/ECPoint;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->ecPublicKey:Le1/x;

    iget-object v0, v0, Le1/x;->q:Lk2/p;

    invoke-virtual {v0}, Lk2/p;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->engineGetSpec()Li2/e;

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

    iput-boolean p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->withCompression:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->algorithm:Ljava/lang/String;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->ecPublicKey:Le1/x;

    iget-object v1, v1, Le1/x;->q:Lk2/p;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->engineGetSpec()Li2/e;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->publicKeyToString(Ljava/lang/String;Lk2/p;Li2/e;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
