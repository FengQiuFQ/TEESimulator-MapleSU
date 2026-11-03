.class public Lorg/bouncycastle/jcajce/provider/digest/Skein$HashMac_256_128;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;


# direct methods
.method public constructor <init>()V
    .registers 5

    new-instance v0, Lz0/d;

    new-instance v1, Ls0/i0;

    const/16 v2, 0x100

    const/16 v3, 0x80

    invoke-direct {v1, v2, v3}, Ls0/i0;-><init>(II)V

    invoke-direct {v0, v1}, Lz0/d;-><init>(Lorg/bouncycastle/crypto/v;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;-><init>(Lorg/bouncycastle/crypto/b0;)V

    return-void
.end method
