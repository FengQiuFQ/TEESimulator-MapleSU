.class public Lorg/bouncycastle/jcajce/provider/symmetric/Threefish$CMAC_512;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;


# direct methods
.method public constructor <init>()V
    .registers 4

    new-instance v0, Lz0/b;

    new-instance v1, Lv0/i0;

    const/16 v2, 0x200

    invoke-direct {v1, v2}, Lv0/i0;-><init>(I)V

    invoke-direct {v0, v1}, Lz0/b;-><init>(Lorg/bouncycastle/crypto/d;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;-><init>(Lorg/bouncycastle/crypto/b0;)V

    return-void
.end method
