.class public Lorg/bouncycastle/jcajce/provider/symmetric/Threefish$ECB_1024;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;


# direct methods
.method public constructor <init>()V
    .registers 3

    new-instance v0, Lv0/i0;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Lv0/i0;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;-><init>(Lorg/bouncycastle/crypto/d;)V

    return-void
.end method
