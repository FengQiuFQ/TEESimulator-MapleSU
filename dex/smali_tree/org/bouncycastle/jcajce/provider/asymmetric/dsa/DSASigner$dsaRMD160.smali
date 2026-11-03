.class public Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner$dsaRMD160;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;


# direct methods
.method public constructor <init>()V
    .registers 4

    new-instance v0, Ls0/w;

    invoke-direct {v0}, Ls0/w;-><init>()V

    new-instance v1, Lg1/d;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lg1/d;-><init>(I)V

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;-><init>(Lorg/bouncycastle/crypto/v;Lorg/bouncycastle/crypto/p;)V

    return-void
.end method
