.class public final Lp0/h;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/c;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public final a(Lorg/bouncycastle/crypto/g;)Ljava/math/BigInteger;
    .registers 2

    check-cast p1, Le1/f;

    const/4 p0, 0x0

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
