.class public Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi$PKCS1v1_5Padding_PublicOnly;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;


# direct methods
.method public constructor <init>()V
    .registers 4

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;

    new-instance v1, Lv0/z;

    invoke-direct {v1}, Lv0/z;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;-><init>(Lorg/bouncycastle/crypto/a;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;-><init>(ZZLorg/bouncycastle/crypto/a;)V

    return-void
.end method
