.class public Lorg/bouncycastle/jcajce/provider/symmetric/GOST28147$GCFB;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;


# direct methods
.method public constructor <init>()V
    .registers 4

    new-instance v0, Lorg/bouncycastle/crypto/e;

    new-instance v1, La1/n;

    new-instance v2, Lv0/p;

    invoke-direct {v2}, Lv0/p;-><init>()V

    invoke-direct {v1, v2}, La1/n;-><init>(Lorg/bouncycastle/crypto/d;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/e;-><init>(Lorg/bouncycastle/crypto/d;)V

    const/16 v1, 0x40

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;-><init>(Lorg/bouncycastle/crypto/e;I)V

    return-void
.end method
