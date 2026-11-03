.class public Lorg/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi$DHwithSHA256CKDF;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;


# direct methods
.method public constructor <init>()V
    .registers 3

    new-instance v0, Lq0/a;

    sget v1, Lj1/a;->a:I

    new-instance v1, Ls0/b0;

    invoke-direct {v1}, Ls0/b0;-><init>()V

    invoke-direct {v0, v1}, Lq0/a;-><init>(Lorg/bouncycastle/crypto/v;)V

    const-string v1, "DHwithSHA256CKDF"

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;-><init>(Ljava/lang/String;Lorg/bouncycastle/crypto/t;)V

    return-void
.end method
