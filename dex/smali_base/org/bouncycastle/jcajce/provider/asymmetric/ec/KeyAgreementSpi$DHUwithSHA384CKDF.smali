.class public Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$DHUwithSHA384CKDF;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;


# direct methods
.method public constructor <init>()V
    .registers 4

    new-instance v0, Lp0/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lq0/a;

    sget v2, Lj1/a;->a:I

    new-instance v2, Ls0/c0;

    invoke-direct {v2}, Ls0/c0;-><init>()V

    invoke-direct {v1, v2}, Lq0/a;-><init>(Lorg/bouncycastle/crypto/v;)V

    const-string v2, "ECCDHUwithSHA384CKDF"

    invoke-direct {p0, v2, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;-><init>(Ljava/lang/String;Lp0/e;Lorg/bouncycastle/crypto/t;)V

    return-void
.end method
