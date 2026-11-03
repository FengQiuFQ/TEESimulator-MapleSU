.class public Lorg/bouncycastle/jcajce/provider/symmetric/CAST5$ECB;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;


# direct methods
.method public constructor <init>()V
    .registers 3

    new-instance v0, Lv0/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lv0/f;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;-><init>(Lorg/bouncycastle/crypto/d;)V

    return-void
.end method
