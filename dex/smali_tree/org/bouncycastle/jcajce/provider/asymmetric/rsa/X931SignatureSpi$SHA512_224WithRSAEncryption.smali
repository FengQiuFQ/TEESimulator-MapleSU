.class public Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/X931SignatureSpi$SHA512_224WithRSAEncryption;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/X931SignatureSpi;


# direct methods
.method public constructor <init>()V
    .registers 4

    sget v0, Lj1/a;->a:I

    new-instance v0, Ls0/f0;

    const/16 v1, 0xe0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ls0/f0;-><init>(II)V

    new-instance v1, Lv0/z;

    invoke-direct {v1}, Lv0/z;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/X931SignatureSpi;-><init>(Lorg/bouncycastle/crypto/v;Lorg/bouncycastle/crypto/a;)V

    return-void
.end method
