.class public Lorg/bouncycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecDSAShake128;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/ec/SignatureSpi;


# direct methods
.method public constructor <init>()V
    .registers 6

    new-instance v0, Ls0/g0;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ls0/g0;-><init>(I)V

    new-instance v2, Lg1/d;

    new-instance v3, Li1/g;

    new-instance v4, Ls0/g0;

    invoke-direct {v4, v1}, Ls0/g0;-><init>(I)V

    invoke-direct {v3, v4}, Li1/g;-><init>(Lorg/bouncycastle/crypto/v;)V

    const/4 v1, 0x3

    invoke-direct {v2, v3, v1}, Lg1/d;-><init>(Li1/g;I)V

    sget-object v1, Li1/k;->c:Li1/k;

    invoke-direct {p0, v0, v2, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/SignatureSpi;-><init>(Lorg/bouncycastle/crypto/v;Lorg/bouncycastle/crypto/p;Li1/a;)V

    return-void
.end method
