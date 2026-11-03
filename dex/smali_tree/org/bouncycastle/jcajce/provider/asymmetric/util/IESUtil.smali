.class public Lorg/bouncycastle/jcajce/provider/asymmetric/util/IESUtil;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static guessParameterSpec(Lorg/bouncycastle/crypto/e;[B)Li2/p;
    .registers 11

    if-nez p0, :cond_f

    new-instance v0, Li2/p;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x80

    const/4 v4, -0x1

    invoke-direct/range {v0 .. v6}, Li2/p;-><init>([B[BII[BZ)V

    return-object v0

    :cond_f
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/e;->d()Lorg/bouncycastle/crypto/d;

    move-result-object p0

    invoke-interface {p0}, Lorg/bouncycastle/crypto/d;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    invoke-interface {p0}, Lorg/bouncycastle/crypto/d;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RC2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    invoke-interface {p0}, Lorg/bouncycastle/crypto/d;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RC5-32"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    invoke-interface {p0}, Lorg/bouncycastle/crypto/d;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RC5-64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    :cond_43
    move-object v7, p1

    goto :goto_84

    :cond_45
    invoke-interface {p0}, Lorg/bouncycastle/crypto/d;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SKIPJACK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    new-instance v1, Li2/p;

    const/16 v5, 0x50

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x50

    move-object v6, p1

    invoke-direct/range {v1 .. v7}, Li2/p;-><init>([B[BII[BZ)V

    return-object v1

    :cond_5f
    move-object v7, p1

    invoke-interface {p0}, Lorg/bouncycastle/crypto/d;->getAlgorithmName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GOST28147"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    new-instance v2, Li2/p;

    if-eqz p0, :cond_79

    const/16 v6, 0x100

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x100

    invoke-direct/range {v2 .. v8}, Li2/p;-><init>([B[BII[BZ)V

    return-object v2

    :cond_79
    const/16 v6, 0x80

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x80

    invoke-direct/range {v2 .. v8}, Li2/p;-><init>([B[BII[BZ)V

    return-object v2

    :goto_84
    new-instance v2, Li2/p;

    const/16 v6, 0x40

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x40

    invoke-direct/range {v2 .. v8}, Li2/p;-><init>([B[BII[BZ)V

    return-object v2
.end method
