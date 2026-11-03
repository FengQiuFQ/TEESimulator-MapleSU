.class public Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertCurve(Lk2/h;[B)Ljava/security/spec/EllipticCurve;
    .registers 5

    iget-object p1, p0, Lk2/h;->a:Lr2/a;

    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertField(Lr2/a;)Ljava/security/spec/ECField;

    move-result-object p1

    iget-object v0, p0, Lk2/h;->b:Lk2/b0;

    invoke-virtual {v0}, Lk2/b0;->L()Ljava/math/BigInteger;

    move-result-object v0

    iget-object p0, p0, Lk2/h;->c:Lk2/b0;

    invoke-virtual {p0}, Lk2/b0;->L()Ljava/math/BigInteger;

    move-result-object p0

    new-instance v1, Ljava/security/spec/EllipticCurve;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, p0, v2}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v1
.end method

.method public static convertCurve(Ljava/security/spec/EllipticCurve;)Lk2/h;
    .registers 11

    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v0

    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getA()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getB()Ljava/math/BigInteger;

    move-result-object v4

    instance-of p0, v0, Ljava/security/spec/ECFieldFp;

    if-eqz p0, :cond_23

    new-instance v1, Lk2/g;

    check-cast v0, Ljava/security/spec/ECFieldFp;

    invoke-virtual {v0}, Ljava/security/spec/ECFieldFp;->getP()Ljava/math/BigInteger;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lk2/g;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Z)V

    invoke-static {v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util$CustomCurves;->substitute(Lk2/h;)Lk2/h;

    move-result-object p0

    return-object p0

    :cond_23
    check-cast v0, Ljava/security/spec/ECFieldF2m;

    invoke-virtual {v0}, Ljava/security/spec/ECFieldF2m;->getM()I

    move-result v2

    invoke-virtual {v0}, Ljava/security/spec/ECFieldF2m;->getMidTermsOfReductionPolynomial()[I

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->convertMidTerms([I)[I

    move-result-object p0

    new-instance v1, Lk2/f;

    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v5, 0x1

    aget v5, p0, v5

    const/4 v6, 0x2

    aget p0, p0, v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v6, v3

    move-object v7, v4

    move v4, v5

    move v5, p0

    move v3, v0

    invoke-direct/range {v1 .. v9}, Lk2/f;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v1
.end method

.method public static convertField(Lr2/a;)Ljava/security/spec/ECField;
    .registers 8

    invoke-static {p0}, Lk2/b0;->r(Lr2/a;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Ljava/security/spec/ECFieldFp;

    invoke-interface {p0}, Lr2/a;->b()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/spec/ECFieldFp;-><init>(Ljava/math/BigInteger;)V

    return-object v0

    :cond_10
    check-cast p0, Lr2/d;

    iget-object p0, p0, Lr2/d;->b:Lr2/c;

    iget-object p0, p0, Lr2/c;->a:[I

    invoke-static {p0}, Lm4/d;->f([I)[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v2, v1, v0}, Lm4/d;->r(II[I)[I

    move-result-object v0

    array-length v1, v0

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v1, :cond_35

    aget v4, v0, v3

    aget v5, v0, v1

    add-int/lit8 v6, v3, 0x1

    aput v5, v0, v3

    add-int/lit8 v3, v1, -0x1

    aput v4, v0, v1

    move v1, v3

    move v3, v6

    goto :goto_24

    :cond_35
    new-instance v1, Ljava/security/spec/ECFieldF2m;

    array-length v3, p0

    sub-int/2addr v3, v2

    aget p0, p0, v3

    invoke-direct {v1, p0, v0}, Ljava/security/spec/ECFieldF2m;-><init>(I[I)V

    return-object v1
.end method

.method public static convertPoint(Lk2/p;)Ljava/security/spec/ECPoint;
    .registers 3

    invoke-virtual {p0}, Lk2/p;->p()Lk2/p;

    move-result-object p0

    new-instance v0, Ljava/security/spec/ECPoint;

    invoke-virtual {p0}, Lk2/p;->b()V

    iget-object v1, p0, Lk2/p;->b:Lk2/b0;

    invoke-virtual {v1}, Lk2/b0;->L()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0}, Lk2/p;->e()Lk2/b0;

    move-result-object p0

    invoke-virtual {p0}, Lk2/b0;->L()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public static convertPoint(Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECPoint;)Lk2/p;
    .registers 2

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Ljava/security/spec/EllipticCurve;)Lk2/h;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lk2/h;Ljava/security/spec/ECPoint;)Lk2/p;

    move-result-object p0

    return-object p0
.end method

.method public static convertPoint(Lk2/h;Ljava/security/spec/ECPoint;)Lk2/p;
    .registers 3

    invoke-virtual {p1}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lk2/h;->d(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lk2/p;

    move-result-object p0

    return-object p0
.end method

.method public static convertSpec(Ljava/security/spec/ECParameterSpec;)Li2/e;
    .registers 9

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Ljava/security/spec/EllipticCurve;)Lk2/h;

    move-result-object v2

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lk2/h;Ljava/security/spec/ECPoint;)Lk2/p;

    move-result-object v3

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/spec/EllipticCurve;->getSeed()[B

    move-result-object v6

    instance-of v0, p0, Li2/d;

    if-eqz v0, :cond_39

    new-instance v1, Li2/c;

    check-cast p0, Li2/d;

    iget-object p0, p0, Li2/d;->c:Ljava/lang/String;

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Li2/c;-><init>(Ljava/lang/String;Lk2/h;Lk2/p;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v1

    :cond_39
    new-instance v1, Li2/e;

    invoke-direct/range {v1 .. v6}, Li2/e;-><init>(Lk2/h;Lk2/p;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v1
.end method

.method public static convertSpec(Ljava/security/spec/EllipticCurve;Li2/e;)Ljava/security/spec/ECParameterSpec;
    .registers 9

    iget-object v0, p1, Li2/e;->q:Lk2/p;

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lk2/p;)Ljava/security/spec/ECPoint;

    move-result-object v4

    instance-of v0, p1, Li2/c;

    if-eqz v0, :cond_1a

    move-object v0, p1

    check-cast v0, Li2/c;

    iget-object v2, v0, Li2/c;->z1:Ljava/lang/String;

    new-instance v1, Li2/d;

    iget-object v5, p1, Li2/e;->x:Ljava/math/BigInteger;

    iget-object v6, p1, Li2/e;->y:Ljava/math/BigInteger;

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Li2/d;-><init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v1

    :cond_1a
    move-object v3, p0

    new-instance p0, Ljava/security/spec/ECParameterSpec;

    iget-object v0, p1, Li2/e;->x:Ljava/math/BigInteger;

    iget-object p1, p1, Li2/e;->y:Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    invoke-direct {p0, v3, v4, v0, p1}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    return-object p0
.end method

.method public static convertToSpec(Le1/r;)Ljava/security/spec/ECParameterSpec;
    .registers 5

    new-instance v0, Ljava/security/spec/ECParameterSpec;

    iget-object v1, p0, Le1/r;->g:Lk2/h;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lk2/h;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v1

    iget-object v2, p0, Le1/r;->i:Lk2/p;

    invoke-static {v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lk2/p;)Ljava/security/spec/ECPoint;

    move-result-object v2

    iget-object v3, p0, Le1/r;->j:Ljava/math/BigInteger;

    iget-object p0, p0, Le1/r;->k:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    return-object v0
.end method

.method public static convertToSpec(Lm0/f;Lk2/h;)Ljava/security/spec/ECParameterSpec;
    .registers 10

    iget-object p0, p0, Lm0/f;->c:Lm/u;

    instance-of v0, p0, Lm/q;

    if-eqz v0, :cond_40

    check-cast p0, Lm/q;

    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->getNamedCurveByOid(Lm/q;)Lm0/h;

    move-result-object v0

    if-nez v0, :cond_20

    sget-object v1, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-interface {v1}, Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getAdditionalECParameters()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_20

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm0/h;

    :cond_20
    invoke-virtual {v0}, Lm0/h;->i()[B

    move-result-object v1

    invoke-static {p1, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lk2/h;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v4

    new-instance v2, Li2/d;

    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->getCurveName(Lm/q;)Ljava/lang/String;

    move-result-object v3

    iget-object p0, v0, Lm0/h;->q:Lm0/j;

    invoke-virtual {p0}, Lm0/j;->h()Lk2/p;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lk2/p;)Ljava/security/spec/ECPoint;

    move-result-object v5

    iget-object v6, v0, Lm0/h;->x:Ljava/math/BigInteger;

    iget-object v7, v0, Lm0/h;->y:Ljava/math/BigInteger;

    invoke-direct/range {v2 .. v7}, Li2/d;-><init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v2

    :cond_40
    instance-of v0, p0, Lm/m;

    if-eqz v0, :cond_46

    const/4 p0, 0x0

    return-object p0

    :cond_46
    invoke-static {p0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p0

    invoke-virtual {p0}, Lm/x;->size()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_86

    invoke-static {p0}, Lm0/h;->h(Ljava/lang/Object;)Lm0/h;

    move-result-object p0

    invoke-virtual {p0}, Lm0/h;->i()[B

    move-result-object v0

    iget-object v1, p0, Lm0/h;->x:Ljava/math/BigInteger;

    iget-object v2, p0, Lm0/h;->q:Lm0/j;

    iget-object p0, p0, Lm0/h;->y:Ljava/math/BigInteger;

    invoke-static {p1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lk2/h;[B)Ljava/security/spec/EllipticCurve;

    move-result-object p1

    if-eqz p0, :cond_77

    new-instance v0, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v2}, Lm0/j;->h()Lk2/p;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lk2/p;)Ljava/security/spec/ECPoint;

    move-result-object v2

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    invoke-direct {v0, p1, v2, v1, p0}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    return-object v0

    :cond_77
    new-instance p0, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v2}, Lm0/j;->h()Lk2/p;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lk2/p;)Ljava/security/spec/ECPoint;

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    return-object p0

    :cond_86
    invoke-static {p0}, Lr/f;->h(Ljava/lang/Object;)Lr/f;

    move-result-object p0

    iget-object p1, p0, Lr/f;->c:Lm/q;

    invoke-static {p1}, Lr/b;->e(Lm/q;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lt4/d;->d0(Ljava/lang/String;)Li2/c;

    move-result-object p1

    iget-object v0, p1, Li2/e;->c:Lk2/h;

    iget-object v1, p1, Li2/e;->d:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lk2/h;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v4

    new-instance v2, Li2/d;

    iget-object p0, p0, Lr/f;->c:Lm/q;

    invoke-static {p0}, Lr/b;->e(Lm/q;)Ljava/lang/String;

    move-result-object v3

    iget-object p0, p1, Li2/e;->q:Lk2/p;

    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lk2/p;)Ljava/security/spec/ECPoint;

    move-result-object v5

    iget-object v6, p1, Li2/e;->x:Ljava/math/BigInteger;

    iget-object v7, p1, Li2/e;->y:Ljava/math/BigInteger;

    invoke-direct/range {v2 .. v7}, Li2/d;-><init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v2
.end method

.method public static convertToSpec(Lm0/h;)Ljava/security/spec/ECParameterSpec;
    .registers 5

    new-instance v0, Ljava/security/spec/ECParameterSpec;

    iget-object v1, p0, Lm0/h;->d:Lm0/g;

    iget-object v1, v1, Lm0/g;->c:Lk2/h;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lk2/h;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v1

    iget-object v2, p0, Lm0/h;->q:Lm0/j;

    invoke-virtual {v2}, Lm0/j;->h()Lk2/p;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lk2/p;)Ljava/security/spec/ECPoint;

    move-result-object v2

    iget-object v3, p0, Lm0/h;->x:Ljava/math/BigInteger;

    iget-object p0, p0, Lm0/h;->y:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    return-object v0
.end method

.method public static getCurve(Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;Lm0/f;)Lk2/h;
    .registers 4

    invoke-interface {p0}, Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getAcceptableNamedCurves()Ljava/util/Set;

    move-result-object v0

    iget-object p1, p1, Lm0/f;->c:Lm/u;

    instance-of v1, p1, Lm/q;

    if-eqz v1, :cond_39

    invoke-static {p1}, Lm/q;->v(Ljava/lang/Object;)Lm/q;

    move-result-object p1

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_23

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_23

    :cond_1b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "named curve not acceptable"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_23
    :goto_23
    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->getNamedCurveByOid(Lm/q;)Lm0/h;

    move-result-object v0

    if-nez v0, :cond_34

    invoke-interface {p0}, Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getAdditionalECParameters()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lm0/h;

    :cond_34
    iget-object p0, v0, Lm0/h;->d:Lm0/g;

    iget-object p0, p0, Lm0/g;->c:Lk2/h;

    return-object p0

    :cond_39
    instance-of v1, p1, Lm/m;

    if-eqz v1, :cond_44

    invoke-interface {p0}, Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Li2/e;

    move-result-object p0

    iget-object p0, p0, Li2/e;->c:Lk2/h;

    return-object p0

    :cond_44
    invoke-static {p1}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_70

    invoke-virtual {p0}, Lm/x;->size()I

    move-result p1

    const/4 v0, 0x3

    if-le p1, v0, :cond_5e

    invoke-static {p0}, Lm0/h;->h(Ljava/lang/Object;)Lm0/h;

    move-result-object p0

    iget-object p0, p0, Lm0/h;->d:Lm0/g;

    iget-object p0, p0, Lm0/g;->c:Lk2/h;

    return-object p0

    :cond_5e
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lm/x;->v(I)Lm/f;

    move-result-object p0

    invoke-static {p0}, Lm/q;->v(Ljava/lang/Object;)Lm/q;

    move-result-object p0

    invoke-static {p0}, Lr/b;->d(Lm/q;)Lm0/h;

    move-result-object p0

    iget-object p0, p0, Lm0/h;->d:Lm0/g;

    iget-object p0, p0, Lm0/g;->c:Lk2/h;

    return-object p0

    :cond_70
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "encoded parameters not acceptable"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getDomainParameters(Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;Ljava/security/spec/ECParameterSpec;)Le1/r;
    .registers 8

    if-nez p1, :cond_16

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

    :cond_16
    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;)Li2/e;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->getDomainParameters(Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;Li2/e;)Le1/r;

    move-result-object p0

    return-object p0
.end method
