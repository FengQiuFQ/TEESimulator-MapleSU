.class public Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/interfaces/ECPublicKey;
.implements Lh2/c;


# static fields
.field static final serialVersionUID:J = 0x61823879c4d16022L


# instance fields
.field private algorithm:Ljava/lang/String;

.field private transient dstuParams:Lh0/d;

.field private transient ecPublicKey:Le1/x;

.field private transient ecSpec:Ljava/security/spec/ECParameterSpec;

.field private withCompression:Z


# direct methods
.method public constructor <init>(Li2/g;Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DSTU4145"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->algorithm:Ljava/lang/String;

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

    iput-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->ecPublicKey:Le1/x;

    invoke-static {v1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/EllipticCurve;Li2/e;)Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

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

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->ecPublicKey:Le1/x;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Le1/x;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->algorithm:Ljava/lang/String;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->ecPublicKey:Le1/x;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Le1/x;Li2/e;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DSTU4145"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->algorithm:Ljava/lang/String;

    iget-object v0, p2, Le1/u;->d:Le1/r;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->algorithm:Ljava/lang/String;

    if-nez p3, :cond_20

    iget-object p1, v0, Le1/r;->g:Lk2/h;

    iget-object p3, v0, Le1/r;->h:[B

    invoke-static {p3}, Lm4/d;->e([B)[B

    move-result-object p3

    invoke-static {p1, p3}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lk2/h;[B)Ljava/security/spec/EllipticCurve;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->createSpec(Ljava/security/spec/EllipticCurve;Le1/r;)Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    :goto_1d
    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    goto :goto_2d

    :cond_20
    iget-object p1, p3, Li2/e;->c:Lk2/h;

    iget-object v0, p3, Li2/e;->d:[B

    invoke-static {p1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lk2/h;[B)Ljava/security/spec/EllipticCurve;

    move-result-object p1

    invoke-static {p1, p3}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/EllipticCurve;Li2/e;)Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    goto :goto_1d

    :goto_2d
    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->ecPublicKey:Le1/x;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Le1/x;Ljava/security/spec/ECParameterSpec;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DSTU4145"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->algorithm:Ljava/lang/String;

    iget-object v0, p2, Le1/u;->d:Le1/r;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->algorithm:Ljava/lang/String;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->ecPublicKey:Le1/x;

    if-nez p3, :cond_22

    iget-object p1, v0, Le1/r;->g:Lk2/h;

    iget-object p2, v0, Le1/r;->h:[B

    invoke-static {p2}, Lm4/d;->e([B)[B

    move-result-object p2

    invoke-static {p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lk2/h;[B)Ljava/security/spec/EllipticCurve;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->createSpec(Ljava/security/spec/EllipticCurve;Le1/r;)Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    return-void

    :cond_22
    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    return-void
.end method

.method public constructor <init>(Ljava/security/spec/ECPublicKeySpec;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DSTU4145"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/security/spec/ECPublicKeySpec;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    new-instance v1, Le1/x;

    invoke-virtual {p1}, Ljava/security/spec/ECPublicKeySpec;->getW()Ljava/security/spec/ECPoint;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECPoint;)Lk2/p;

    move-result-object p1

    const/4 v0, 0x0

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-static {v0, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->getDomainParameters(Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;Ljava/security/spec/ECParameterSpec;)Le1/r;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Le1/x;-><init>(Lk2/p;Le1/r;)V

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->ecPublicKey:Le1/x;

    return-void
.end method

.method public constructor <init>(Ll0/p0;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DSTU4145"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->algorithm:Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->populateFromPubKeyInfo(Ll0/p0;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DSTU4145"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->algorithm:Ljava/lang/String;

    iget-object v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->ecPublicKey:Le1/x;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->ecPublicKey:Le1/x;

    iget-object v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    iget-boolean v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->withCompression:Z

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->withCompression:Z

    iget-object p1, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->dstuParams:Lh0/d;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->dstuParams:Lh0/d;

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

.method private populateFromPubKeyInfo(Ll0/p0;)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Ll0/p0;->d:Lm/b;

    iget-object v1, v1, Ll0/p0;->c:Ll0/b;

    const-string v3, "DSTU4145"

    iput-object v3, v0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->algorithm:Ljava/lang/String;

    :try_start_c
    invoke-virtual {v2}, Lm/b;->s()[B

    move-result-object v2

    invoke-static {v2}, Lm/u;->o([B)Lm/u;

    move-result-object v2

    check-cast v2, Lm/r;
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_16} :catch_11b

    iget-object v2, v2, Lm/r;->c:[B

    iget-object v3, v1, Ll0/b;->c:Lm/q;

    iget-object v4, v1, Ll0/b;->c:Lm/q;

    sget-object v5, Lh0/e;->a:Lm/q;

    invoke-virtual {v3, v5}, Lm/u;->n(Lm/u;)Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-direct {v0, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->reverseBytes([B)V

    :cond_27
    iget-object v1, v1, Ll0/b;->d:Lm/f;

    invoke-static {v1}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lm/x;->v(I)Lm/f;

    move-result-object v3

    instance-of v3, v3, Lm/l;

    const/4 v6, 0x0

    if-eqz v3, :cond_54

    invoke-static {v1}, Lm0/h;->h(Ljava/lang/Object;)Lm0/h;

    move-result-object v1

    new-instance v7, Li2/e;

    iget-object v3, v1, Lm0/h;->d:Lm0/g;

    iget-object v8, v3, Lm0/g;->c:Lk2/h;

    iget-object v3, v1, Lm0/h;->q:Lm0/j;

    invoke-virtual {v3}, Lm0/j;->h()Lk2/p;

    move-result-object v9

    iget-object v10, v1, Lm0/h;->x:Ljava/math/BigInteger;

    iget-object v11, v1, Lm0/h;->y:Ljava/math/BigInteger;

    invoke-virtual {v1}, Lm0/h;->i()[B

    move-result-object v12

    invoke-direct/range {v7 .. v12}, Li2/e;-><init>(Lk2/h;Lk2/p;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    goto/16 :goto_cd

    :cond_54
    invoke-static {v1}, Lh0/d;->h(Ljava/lang/Object;)Lh0/d;

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->dstuParams:Lh0/d;

    iget-object v3, v1, Lh0/d;->c:Lm/q;

    if-eqz v3, :cond_7b

    invoke-static {v3}, Lh0/c;->b(Lm/q;)Le1/r;

    move-result-object v1

    new-instance v7, Li2/c;

    invoke-virtual {v3}, Lm/q;->u()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v1, Le1/r;->g:Lk2/h;

    iget-object v10, v1, Le1/r;->i:Lk2/p;

    iget-object v11, v1, Le1/r;->j:Ljava/math/BigInteger;

    iget-object v12, v1, Le1/r;->k:Ljava/math/BigInteger;

    iget-object v1, v1, Le1/r;->h:[B

    invoke-static {v1}, Lm4/d;->e([B)[B

    move-result-object v13

    invoke-direct/range {v7 .. v13}, Li2/c;-><init>(Ljava/lang/String;Lk2/h;Lk2/p;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    :goto_79
    move-object v1, v6

    goto :goto_cd

    :cond_7b
    iget-object v1, v1, Lh0/d;->d:Lh0/b;

    iget-object v3, v1, Lh0/b;->x:Lm/r;

    iget-object v3, v3, Lm/r;->c:[B

    invoke-static {v3}, Lm4/d;->e([B)[B

    move-result-object v3

    invoke-virtual {v4, v5}, Lm/u;->n(Lm/u;)Z

    move-result v7

    if-eqz v7, :cond_8e

    invoke-direct {v0, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->reverseBytes([B)V

    :cond_8e
    iget-object v7, v1, Lh0/b;->d:Lh0/a;

    new-instance v8, Lk2/f;

    iget v9, v7, Lh0/a;->c:I

    iget v10, v7, Lh0/a;->d:I

    iget v11, v7, Lh0/a;->q:I

    iget v12, v7, Lh0/a;->x:I

    iget-object v7, v1, Lh0/b;->q:Lm/l;

    invoke-virtual {v7}, Lm/l;->t()Ljava/math/BigInteger;

    move-result-object v13

    new-instance v14, Ljava/math/BigInteger;

    const/4 v7, 0x1

    invoke-direct {v14, v7, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v8 .. v16}, Lk2/f;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iget-object v3, v1, Lh0/b;->z1:Lm/r;

    iget-object v3, v3, Lm/r;->c:[B

    invoke-static {v3}, Lm4/d;->e([B)[B

    move-result-object v3

    invoke-virtual {v4, v5}, Lm/u;->n(Lm/u;)Z

    move-result v4

    if-eqz v4, :cond_bd

    invoke-direct {v0, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->reverseBytes([B)V

    :cond_bd
    new-instance v7, Li2/e;

    invoke-static {v8, v3}, Lt4/d;->E(Lk2/h;[B)Lk2/p;

    move-result-object v3

    iget-object v1, v1, Lh0/b;->y:Lm/l;

    invoke-virtual {v1}, Lm/l;->t()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v7, v8, v3, v1}, Li2/e;-><init>(Lk2/f;Lk2/p;Ljava/math/BigInteger;)V

    goto :goto_79

    :goto_cd
    iget-object v3, v7, Li2/e;->d:[B

    iget-object v4, v7, Li2/e;->c:Lk2/h;

    invoke-static {v4, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lk2/h;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v10

    iget-object v3, v0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->dstuParams:Lh0/d;

    if-eqz v3, :cond_103

    iget-object v1, v7, Li2/e;->q:Lk2/p;

    invoke-static {v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lk2/p;)Ljava/security/spec/ECPoint;

    move-result-object v11

    iget-object v1, v0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->dstuParams:Lh0/d;

    iget-object v1, v1, Lh0/d;->c:Lm/q;

    if-eqz v1, :cond_f5

    invoke-virtual {v1}, Lm/q;->u()Ljava/lang/String;

    move-result-object v9

    new-instance v8, Li2/d;

    iget-object v12, v7, Li2/e;->x:Ljava/math/BigInteger;

    iget-object v13, v7, Li2/e;->y:Ljava/math/BigInteger;

    invoke-direct/range {v8 .. v13}, Li2/d;-><init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v8, v0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    goto :goto_109

    :cond_f5
    new-instance v1, Ljava/security/spec/ECParameterSpec;

    iget-object v3, v7, Li2/e;->y:Ljava/math/BigInteger;

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    iget-object v5, v7, Li2/e;->x:Ljava/math/BigInteger;

    invoke-direct {v1, v10, v11, v5, v3}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    goto :goto_107

    :cond_103
    invoke-static {v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertToSpec(Lm0/h;)Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    :goto_107
    iput-object v1, v0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    :goto_109
    new-instance v1, Le1/x;

    invoke-static {v4, v2}, Lt4/d;->E(Lk2/h;[B)Lk2/p;

    move-result-object v2

    iget-object v3, v0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-static {v6, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->getDomainParameters(Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;Ljava/security/spec/ECParameterSpec;)Le1/r;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Le1/x;-><init>(Lk2/p;Le1/r;)V

    iput-object v1, v0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->ecPublicKey:Le1/x;

    return-void

    :catch_11b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "error recovering public key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
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

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->populateFromPubKeyInfo(Ll0/p0;)V

    return-void
.end method

.method private reverseBytes([B)V
    .registers 4

    const/4 p0, 0x0

    :goto_1
    array-length v0, p1

    div-int/lit8 v0, v0, 0x2

    if-ge p0, v0, :cond_19

    aget-byte v0, p1, p0

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, p0

    aget-byte v1, p1, v1

    aput-byte v1, p1, p0

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, p0

    aput-byte v0, p1, v1

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_19
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 2

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->getEncoded()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public engineGetKeyParameters()Le1/x;
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->ecPublicKey:Le1/x;

    return-object p0
.end method

.method public engineGetSpec()Li2/e;
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

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

    instance-of v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->ecPublicKey:Le1/x;

    iget-object v0, v0, Le1/x;->q:Lk2/p;

    iget-object v2, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->ecPublicKey:Le1/x;

    iget-object v2, v2, Le1/x;->q:Lk2/p;

    invoke-virtual {v0, v2}, Lk2/p;->d(Lk2/p;)Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->engineGetSpec()Li2/e;

    move-result-object p0

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->engineGetSpec()Li2/e;

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

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->algorithm:Ljava/lang/String;

    return-object p0
.end method

.method public getEncoded()[B
    .registers 8

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->dstuParams:Lh0/d;

    if-eqz v0, :cond_5

    goto :goto_5a

    :cond_5
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    instance-of v1, v0, Li2/d;

    if-eqz v1, :cond_1c

    new-instance v0, Lh0/d;

    new-instance v1, Lm/q;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    check-cast v2, Li2/d;

    iget-object v2, v2, Li2/d;->c:Ljava/lang/String;

    invoke-direct {v1, v2}, Lm/q;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lh0/d;-><init>(Lm/q;)V

    goto :goto_5a

    :cond_1c
    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Ljava/security/spec/EllipticCurve;)Lk2/h;

    move-result-object v2

    new-instance v1, Lm0/h;

    new-instance v3, Lm0/j;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lk2/h;Ljava/security/spec/ECPoint;)Lk2/p;

    move-result-object v0

    iget-boolean v4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->withCompression:Z

    invoke-direct {v3, v0, v4}, Lm0/j;-><init>(Lk2/p;Z)V

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v4

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v0

    int-to-long v5, v0

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/spec/EllipticCurve;->getSeed()[B

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lm0/h;-><init>(Lk2/h;Lm0/j;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    new-instance v0, Lm0/f;

    invoke-direct {v0, v1}, Lm0/f;-><init>(Lm0/h;)V

    :goto_5a
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->ecPublicKey:Le1/x;

    iget-object p0, p0, Le1/x;->q:Lk2/p;

    invoke-virtual {p0}, Lk2/p;->p()Lk2/p;

    move-result-object p0

    invoke-virtual {p0}, Lk2/p;->b()V

    iget-object v1, p0, Lk2/p;->b:Lk2/b0;

    invoke-virtual {v1}, Lk2/b0;->i()[B

    move-result-object v2

    invoke-virtual {v1}, Lk2/b0;->t()Z

    move-result v3

    if-nez v3, :cond_98

    invoke-virtual {p0}, Lk2/p;->e()Lk2/b0;

    move-result-object p0

    invoke-virtual {p0, v1}, Lk2/b0;->f(Lk2/b0;)Lk2/b0;

    move-result-object p0

    invoke-static {p0}, Lt4/d;->O0(Lk2/b0;)Lk2/b0;

    move-result-object p0

    invoke-virtual {p0}, Lk2/b0;->s()Z

    move-result p0

    if-eqz p0, :cond_8e

    array-length p0, v2

    add-int/lit8 p0, p0, -0x1

    aget-byte v1, v2, p0

    or-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    aput-byte v1, v2, p0

    goto :goto_98

    :cond_8e
    array-length p0, v2

    add-int/lit8 p0, p0, -0x1

    aget-byte v1, v2, p0

    and-int/lit16 v1, v1, 0xfe

    int-to-byte v1, v1

    aput-byte v1, v2, p0

    :cond_98
    :goto_98
    :try_start_98
    new-instance p0, Ll0/p0;

    new-instance v1, Ll0/b;

    sget-object v3, Lh0/e;->b:Lm/q;

    invoke-direct {v1, v3, v0}, Ll0/b;-><init>(Lm/q;Lm/f;)V

    new-instance v0, Lm/x0;

    invoke-direct {v0, v2}, Lm/r;-><init>([B)V

    invoke-direct {p0, v1, v0}, Ll0/p0;-><init>(Ll0/b;Lm/f;)V
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_a9} :catch_ae

    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/KeyUtil;->getEncodedSubjectPublicKeyInfo(Ll0/p0;)[B

    move-result-object p0

    return-object p0

    :catch_ae
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFormat()Ljava/lang/String;
    .registers 1

    const-string p0, "X.509"

    return-object p0
.end method

.method public getParameters()Li2/e;
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

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

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    return-object p0
.end method

.method public getQ()Lk2/p;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->ecPublicKey:Le1/x;

    iget-object v0, v0, Le1/x;->q:Lk2/p;

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    if-nez p0, :cond_11

    invoke-virtual {v0}, Lk2/p;->p()Lk2/p;

    move-result-object p0

    invoke-virtual {p0}, Lk2/p;->c()Lk2/p;

    move-result-object p0

    return-object p0

    :cond_11
    return-object v0
.end method

.method public getSbox()[B
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->dstuParams:Lh0/d;

    if-eqz p0, :cond_b

    iget-object p0, p0, Lh0/d;->q:[B

    invoke-static {p0}, Lm4/d;->e([B)[B

    move-result-object p0

    return-object p0

    :cond_b
    sget-object p0, Lh0/d;->x:[B

    invoke-static {p0}, Lm4/d;->e([B)[B

    move-result-object p0

    return-object p0
.end method

.method public getW()Ljava/security/spec/ECPoint;
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->ecPublicKey:Le1/x;

    iget-object p0, p0, Le1/x;->q:Lk2/p;

    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lk2/p;)Ljava/security/spec/ECPoint;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->ecPublicKey:Le1/x;

    iget-object v0, v0, Le1/x;->q:Lk2/p;

    invoke-virtual {v0}, Lk2/p;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->engineGetSpec()Li2/e;

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

    iput-boolean p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->withCompression:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->algorithm:Ljava/lang/String;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->ecPublicKey:Le1/x;

    iget-object v1, v1, Le1/x;->q:Lk2/p;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->engineGetSpec()Li2/e;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->publicKeyToString(Ljava/lang/String;Lk2/p;Li2/e;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
