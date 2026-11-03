.class public final Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyAgreementSpi$X25519withSHA256KDF;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyAgreementSpi;


# direct methods
.method public constructor <init>()V
    .registers 3

    new-instance v0, Lx0/o;

    sget v1, Lj1/a;->a:I

    new-instance v1, Ls0/b0;

    invoke-direct {v1}, Ls0/b0;-><init>()V

    invoke-direct {v0, v1}, Lx0/o;-><init>(Lorg/bouncycastle/crypto/v;)V

    const-string v1, "X25519withSHA256KDF"

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyAgreementSpi;-><init>(Ljava/lang/String;Lorg/bouncycastle/crypto/t;)V

    return-void
.end method
