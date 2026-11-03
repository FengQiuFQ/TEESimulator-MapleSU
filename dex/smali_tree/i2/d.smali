.class public final Li2/d;
.super Ljava/security/spec/ECParameterSpec;


# instance fields
.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 6

    invoke-virtual {p5}, Ljava/math/BigInteger;->intValue()I

    move-result p5

    invoke-direct {p0, p2, p3, p4, p5}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    iput-object p1, p0, Li2/d;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lk2/h;Lk2/p;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .registers 15

    iget-object v0, p2, Lk2/h;->a:Lr2/a;

    invoke-static {v0}, Lk2/b0;->r(Lr2/a;)Z

    move-result v1

    if-eqz v1, :cond_12

    new-instance v1, Ljava/security/spec/ECFieldFp;

    invoke-interface {v0}, Lr2/a;->b()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/spec/ECFieldFp;-><init>(Ljava/math/BigInteger;)V

    goto :goto_41

    :cond_12
    check-cast v0, Lr2/d;

    iget-object v0, v0, Lr2/d;->b:Lr2/c;

    iget-object v0, v0, Lr2/c;->a:[I

    invoke-static {v0}, Lm4/d;->f([I)[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-static {v3, v2, v1}, Lm4/d;->r(II[I)[I

    move-result-object v1

    array-length v2, v1

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    :goto_26
    if-ge v4, v2, :cond_37

    aget v5, v1, v4

    aget v6, v1, v2

    add-int/lit8 v7, v4, 0x1

    aput v6, v1, v4

    add-int/lit8 v4, v2, -0x1

    aput v5, v1, v2

    move v2, v4

    move v4, v7

    goto :goto_26

    :cond_37
    new-instance v2, Ljava/security/spec/ECFieldF2m;

    array-length v4, v0

    sub-int/2addr v4, v3

    aget v0, v0, v4

    invoke-direct {v2, v0, v1}, Ljava/security/spec/ECFieldF2m;-><init>(I[I)V

    move-object v1, v2

    :goto_41
    iget-object v0, p2, Lk2/h;->b:Lk2/b0;

    invoke-virtual {v0}, Lk2/b0;->L()Ljava/math/BigInteger;

    move-result-object v0

    iget-object p2, p2, Lk2/h;->c:Lk2/b0;

    invoke-virtual {p2}, Lk2/b0;->L()Ljava/math/BigInteger;

    move-result-object p2

    new-instance v2, Ljava/security/spec/EllipticCurve;

    invoke-direct {v2, v1, v0, p2, p6}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    invoke-static {p3}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lk2/p;)Ljava/security/spec/ECPoint;

    move-result-object p2

    invoke-virtual {p5}, Ljava/math/BigInteger;->intValue()I

    move-result p3

    invoke-direct {p0, v2, p2, p4, p3}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    iput-object p1, p0, Li2/d;->c:Ljava/lang/String;

    return-void
.end method
