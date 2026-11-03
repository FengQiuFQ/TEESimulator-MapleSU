.class public Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESCipher$ECIESwithAESCBC;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESCipher$ECIESwithCipher;


# direct methods
.method public constructor <init>()V
    .registers 3

    new-instance v0, Lv0/a;

    invoke-direct {v0}, Lv0/a;-><init>()V

    new-instance v1, La1/c;

    invoke-direct {v1, v0}, La1/c;-><init>(Lorg/bouncycastle/crypto/d;)V

    const/16 v0, 0x10

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESCipher$ECIESwithCipher;-><init>(Lorg/bouncycastle/crypto/d;I)V

    return-void
.end method
