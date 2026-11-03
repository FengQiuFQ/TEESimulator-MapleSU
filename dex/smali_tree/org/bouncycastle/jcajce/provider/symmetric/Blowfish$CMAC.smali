.class public Lorg/bouncycastle/jcajce/provider/symmetric/Blowfish$CMAC;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;


# direct methods
.method public constructor <init>()V
    .registers 5

    new-instance v0, Lz0/b;

    new-instance v1, Lv0/e;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Lv0/e;-><init>(BI)V

    invoke-direct {v0, v1}, Lz0/b;-><init>(Lorg/bouncycastle/crypto/d;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;-><init>(Lorg/bouncycastle/crypto/b0;)V

    return-void
.end method
