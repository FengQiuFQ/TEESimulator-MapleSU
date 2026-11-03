.class public Lorg/bouncycastle/jcajce/provider/symmetric/RC5$Mac32;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;


# direct methods
.method public constructor <init>()V
    .registers 4

    new-instance v0, Lz0/a;

    new-instance v1, Lv0/w;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lv0/w;-><init>(I)V

    invoke-direct {v0, v1}, Lz0/a;-><init>(Lorg/bouncycastle/crypto/d;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;-><init>(Lorg/bouncycastle/crypto/b0;)V

    return-void
.end method
