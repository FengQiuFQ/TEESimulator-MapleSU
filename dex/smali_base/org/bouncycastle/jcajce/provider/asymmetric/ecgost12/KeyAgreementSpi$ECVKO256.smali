.class public Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/KeyAgreementSpi$ECVKO256;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/KeyAgreementSpi;


# direct methods
.method public constructor <init>()V
    .registers 4

    new-instance v0, Lp0/g;

    new-instance v1, Ls0/h;

    invoke-direct {v1}, Ls0/h;-><init>()V

    invoke-direct {v0, v1}, Lp0/g;-><init>(Lorg/bouncycastle/crypto/v;)V

    const/4 v1, 0x0

    const-string v2, "ECGOST3410-2012-256"

    invoke-direct {p0, v2, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/KeyAgreementSpi;-><init>(Ljava/lang/String;Lp0/g;Lorg/bouncycastle/crypto/t;)V

    return-void
.end method
