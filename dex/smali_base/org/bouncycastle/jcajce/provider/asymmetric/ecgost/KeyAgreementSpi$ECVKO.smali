.class public Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/KeyAgreementSpi$ECVKO;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/KeyAgreementSpi;


# direct methods
.method public constructor <init>()V
    .registers 4

    new-instance v0, Lp0/g;

    new-instance v1, Ls0/f;

    invoke-direct {v1}, Ls0/f;-><init>()V

    invoke-direct {v0, v1}, Lp0/g;-><init>(Lorg/bouncycastle/crypto/v;)V

    const/4 v1, 0x0

    const-string v2, "ECGOST3410"

    invoke-direct {p0, v2, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/KeyAgreementSpi;-><init>(Ljava/lang/String;Lp0/g;Lorg/bouncycastle/crypto/t;)V

    return-void
.end method
