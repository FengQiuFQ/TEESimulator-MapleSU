.class public final Lp0/f;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/c;


# virtual methods
.method public final a(Lorg/bouncycastle/crypto/g;)Ljava/math/BigInteger;
    .registers 2

    const-string p0, "org.bouncycastle.ec.disable_mqv"

    invoke-static {p0}, Lm4/h;->c(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_c

    check-cast p1, Le1/q0;

    const/4 p0, 0x0

    throw p0

    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "ECMQV explicitly disabled"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getFieldSize()I
    .registers 1

    const/4 p0, 0x0

    throw p0
.end method

.method public final init(Lorg/bouncycastle/crypto/g;)V
    .registers 2

    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->i(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method
