.class public Lorg/bouncycastle/jcajce/provider/symmetric/DSTU7624$CBC512;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;


# direct methods
.method public constructor <init>()V
    .registers 4

    new-instance v0, La1/c;

    new-instance v1, Lv0/n;

    const/16 v2, 0x200

    invoke-direct {v1, v2}, Lv0/n;-><init>(I)V

    invoke-direct {v0, v1}, La1/c;-><init>(Lorg/bouncycastle/crypto/d;)V

    invoke-direct {p0, v0, v2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;-><init>(Lorg/bouncycastle/crypto/d;I)V

    return-void
.end method
