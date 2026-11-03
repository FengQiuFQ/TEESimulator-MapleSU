.class public Lorg/bouncycastle/jcajce/provider/symmetric/DSTU7624$GMAC128;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;


# direct methods
.method public constructor <init>()V
    .registers 5

    new-instance v0, Lorg/bouncycastle/crypto/z;

    new-instance v1, La1/u;

    new-instance v2, Lv0/n;

    const/16 v3, 0x80

    invoke-direct {v2, v3}, Lv0/n;-><init>(I)V

    invoke-direct {v1, v2}, La1/u;-><init>(Lorg/bouncycastle/crypto/d;)V

    invoke-direct {v0, v1, v3}, Lorg/bouncycastle/crypto/z;-><init>(La1/u;I)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;-><init>(Lorg/bouncycastle/crypto/b0;)V

    return-void
.end method
