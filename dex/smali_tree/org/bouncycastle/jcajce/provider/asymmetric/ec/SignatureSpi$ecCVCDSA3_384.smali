.class public Lorg/bouncycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecCVCDSA3_384;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/ec/SignatureSpi;


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-static {}, Lj1/a;->c()Ls0/d0;

    move-result-object v0

    new-instance v1, Lg1/d;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lg1/d;-><init>(I)V

    sget-object v2, Li1/k;->b:Li1/k;

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/SignatureSpi;-><init>(Lorg/bouncycastle/crypto/v;Lorg/bouncycastle/crypto/p;Li1/a;)V

    return-void
.end method
