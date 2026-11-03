.class public Lorg/bouncycastle/jcajce/provider/digest/SHA3$HashMacSHA3;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;


# direct methods
.method public constructor <init>(I)V
    .registers 4

    new-instance v0, Lz0/d;

    new-instance v1, Ls0/d0;

    invoke-direct {v1, p1}, Ls0/d0;-><init>(I)V

    invoke-direct {v0, v1}, Lz0/d;-><init>(Lorg/bouncycastle/crypto/v;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;-><init>(Lorg/bouncycastle/crypto/b0;)V

    return-void
.end method
