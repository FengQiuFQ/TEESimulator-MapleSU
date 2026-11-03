.class public Lorg/bouncycastle/jcajce/provider/symmetric/RC2$CBC;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;


# direct methods
.method public constructor <init>()V
    .registers 5

    new-instance v0, La1/c;

    new-instance v1, Lv0/t;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lv0/t;-><init>(IZ)V

    invoke-direct {v0, v1}, La1/c;-><init>(Lorg/bouncycastle/crypto/d;)V

    const/16 v1, 0x40

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;-><init>(Lorg/bouncycastle/crypto/d;I)V

    return-void
.end method
