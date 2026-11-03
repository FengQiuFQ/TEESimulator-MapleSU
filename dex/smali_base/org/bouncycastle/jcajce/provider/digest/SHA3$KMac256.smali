.class public Lorg/bouncycastle/jcajce/provider/digest/SHA3$KMac256;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;


# direct methods
.method public constructor <init>()V
    .registers 4

    new-instance v0, Lz0/e;

    const/4 v1, 0x0

    new-array v1, v1, [B

    const/16 v2, 0x100

    invoke-direct {v0, v2, v1}, Lz0/e;-><init>(I[B)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;-><init>(Lorg/bouncycastle/crypto/b0;)V

    return-void
.end method
