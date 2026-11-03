.class public Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi$noneRSA;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;


# direct methods
.method public constructor <init>()V
    .registers 4

    new-instance v0, Ls0/t;

    invoke-direct {v0}, Ls0/t;-><init>()V

    new-instance v1, La2/k;

    new-instance v2, Lv0/z;

    invoke-direct {v2}, Lv0/z;-><init>()V

    invoke-direct {v1, v2}, La2/k;-><init>(Lorg/bouncycastle/crypto/a;)V

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;-><init>(Lorg/bouncycastle/crypto/v;Lorg/bouncycastle/crypto/a;)V

    return-void
.end method
