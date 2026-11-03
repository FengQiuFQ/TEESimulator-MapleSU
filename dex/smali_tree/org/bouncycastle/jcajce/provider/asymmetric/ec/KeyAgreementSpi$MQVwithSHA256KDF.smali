.class public Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$MQVwithSHA256KDF;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;


# direct methods
.method public constructor <init>()V
    .registers 4

    new-instance v0, Lp0/f;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lx0/o;

    sget v2, Lj1/a;->a:I

    new-instance v2, Ls0/b0;

    invoke-direct {v2}, Ls0/b0;-><init>()V

    invoke-direct {v1, v2}, Lx0/o;-><init>(Lorg/bouncycastle/crypto/v;)V

    const-string v2, "ECMQVwithSHA256KDF"

    invoke-direct {p0, v2, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;-><init>(Ljava/lang/String;Lorg/bouncycastle/crypto/c;Lorg/bouncycastle/crypto/t;)V

    return-void
.end method
