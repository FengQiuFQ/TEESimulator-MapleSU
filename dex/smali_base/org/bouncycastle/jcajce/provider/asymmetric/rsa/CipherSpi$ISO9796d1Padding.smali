.class public Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi$ISO9796d1Padding;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;


# direct methods
.method public constructor <init>()V
    .registers 3

    new-instance v0, Lu0/a;

    new-instance v1, Lv0/z;

    invoke-direct {v1}, Lv0/z;-><init>()V

    invoke-direct {v0, v1}, Lu0/a;-><init>(Lorg/bouncycastle/crypto/a;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;-><init>(Lorg/bouncycastle/crypto/a;)V

    return-void
.end method
