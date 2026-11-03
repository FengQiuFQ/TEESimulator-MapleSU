.class public Lorg/bouncycastle/jcajce/provider/asymmetric/elgamal/CipherSpi$PKCS1v1_5Padding;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/elgamal/CipherSpi;


# direct methods
.method public constructor <init>()V
    .registers 3

    new-instance v0, La2/k;

    new-instance v1, Lv0/o;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, v1}, La2/k;-><init>(Lorg/bouncycastle/crypto/a;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/elgamal/CipherSpi;-><init>(Lorg/bouncycastle/crypto/a;)V

    return-void
.end method
