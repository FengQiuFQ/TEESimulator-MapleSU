.class public Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/X931SignatureSpi$RIPEMD160WithRSAEncryption;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/X931SignatureSpi;


# direct methods
.method public constructor <init>()V
    .registers 3

    new-instance v0, Ls0/w;

    invoke-direct {v0}, Ls0/w;-><init>()V

    new-instance v1, Lv0/z;

    invoke-direct {v1}, Lv0/z;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/X931SignatureSpi;-><init>(Lorg/bouncycastle/crypto/v;Lorg/bouncycastle/crypto/a;)V

    return-void
.end method
