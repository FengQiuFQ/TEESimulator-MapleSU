.class public Lorg/bouncycastle/jcajce/provider/asymmetric/ec/GMCipherSpi$SM2withSha1;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/ec/GMCipherSpi;


# direct methods
.method public constructor <init>()V
    .registers 3

    new-instance v0, Lv0/b0;

    new-instance v1, Ls0/z;

    invoke-direct {v1}, Ls0/z;-><init>()V

    invoke-direct {v0, v1}, Lv0/b0;-><init>(Lorg/bouncycastle/crypto/w;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/GMCipherSpi;-><init>(Lv0/b0;)V

    return-void
.end method
