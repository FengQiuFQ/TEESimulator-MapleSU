.class public Lorg/bouncycastle/jcajce/provider/digest/SHA512$HashMacT224;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;


# direct methods
.method public constructor <init>()V
    .registers 5

    new-instance v0, Lz0/d;

    new-instance v1, Ls0/f0;

    const/16 v2, 0xe0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ls0/f0;-><init>(II)V

    invoke-direct {v0, v1}, Lz0/d;-><init>(Lorg/bouncycastle/crypto/v;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;-><init>(Lorg/bouncycastle/crypto/b0;)V

    return-void
.end method
