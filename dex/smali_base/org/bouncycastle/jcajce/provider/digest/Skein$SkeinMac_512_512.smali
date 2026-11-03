.class public Lorg/bouncycastle/jcajce/provider/digest/Skein$SkeinMac_512_512;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;


# direct methods
.method public constructor <init>()V
    .registers 3

    new-instance v0, Lb1/a;

    const/16 v1, 0x200

    invoke-direct {v0, v1, v1}, Lb1/a;-><init>(II)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;-><init>(Lorg/bouncycastle/crypto/b0;)V

    return-void
.end method
