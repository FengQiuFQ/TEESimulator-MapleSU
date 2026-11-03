.class public Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyAgreementSpi$X448withSHA384CKDF;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyAgreementSpi;


# direct methods
.method public constructor <init>()V
    .registers 3

    new-instance v0, Lq0/a;

    sget v1, Lj1/a;->a:I

    new-instance v1, Ls0/c0;

    invoke-direct {v1}, Ls0/c0;-><init>()V

    invoke-direct {v0, v1}, Lq0/a;-><init>(Lorg/bouncycastle/crypto/v;)V

    const-string v1, "X448withSHA384CKDF"

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyAgreementSpi;-><init>(Ljava/lang/String;Lorg/bouncycastle/crypto/t;)V

    return-void
.end method
