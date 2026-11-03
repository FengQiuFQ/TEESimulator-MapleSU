.class public Lorg/bouncycastle/jcajce/provider/symmetric/DSTU7624$ECB_256;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;


# direct methods
.method public constructor <init>()V
    .registers 3

    new-instance v0, Lv0/n;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lv0/n;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;-><init>(Lorg/bouncycastle/crypto/d;)V

    return-void
.end method
