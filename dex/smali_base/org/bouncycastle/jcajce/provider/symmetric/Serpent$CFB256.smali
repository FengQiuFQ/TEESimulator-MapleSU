.class public Lorg/bouncycastle/jcajce/provider/symmetric/Serpent$CFB256;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;


# direct methods
.method public constructor <init>()V
    .registers 5

    new-instance v0, Lorg/bouncycastle/crypto/e;

    new-instance v1, La1/g;

    new-instance v2, Lv0/e0;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lv0/e0;-><init>(I)V

    const/16 v3, 0x80

    invoke-direct {v1, v2, v3}, La1/g;-><init>(Lorg/bouncycastle/crypto/d;I)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/e;-><init>(Lorg/bouncycastle/crypto/d;)V

    const/16 v1, 0x100

    invoke-direct {p0, v1, v0, v3}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;-><init>(ILorg/bouncycastle/crypto/e;I)V

    return-void
.end method
