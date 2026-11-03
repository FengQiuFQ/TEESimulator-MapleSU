.class public Lorg/bouncycastle/jcajce/provider/symmetric/SipHash128$Mac48;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;


# direct methods
.method public constructor <init>()V
    .registers 3

    new-instance v0, Lz0/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lz0/h;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;-><init>(Lorg/bouncycastle/crypto/b0;)V

    return-void
.end method
