.class public Lorg/bouncycastle/jcajce/provider/digest/Skein$SkeinMac_1024_384;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;


# direct methods
.method public constructor <init>()V
    .registers 4

    new-instance v0, Lb1/a;

    const/16 v1, 0x400

    const/16 v2, 0x180

    invoke-direct {v0, v1, v2}, Lb1/a;-><init>(II)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;-><init>(Lorg/bouncycastle/crypto/b0;)V

    return-void
.end method
