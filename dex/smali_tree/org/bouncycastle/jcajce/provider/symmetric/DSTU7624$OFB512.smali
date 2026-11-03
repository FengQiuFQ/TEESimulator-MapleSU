.class public Lorg/bouncycastle/jcajce/provider/symmetric/DSTU7624$OFB512;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;


# direct methods
.method public constructor <init>()V
    .registers 5

    new-instance v0, Lorg/bouncycastle/crypto/e;

    new-instance v1, La1/w;

    new-instance v2, Lv0/n;

    const/16 v3, 0x200

    invoke-direct {v2, v3}, Lv0/n;-><init>(I)V

    invoke-direct {v1, v2, v3}, La1/w;-><init>(Lorg/bouncycastle/crypto/d;I)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/e;-><init>(Lorg/bouncycastle/crypto/d;)V

    invoke-direct {p0, v0, v3}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;-><init>(Lorg/bouncycastle/crypto/e;I)V

    return-void
.end method
