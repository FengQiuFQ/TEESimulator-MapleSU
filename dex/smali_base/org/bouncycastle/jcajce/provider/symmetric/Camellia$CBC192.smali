.class public Lorg/bouncycastle/jcajce/provider/symmetric/Camellia$CBC192;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;


# direct methods
.method public constructor <init>()V
    .registers 4

    new-instance v0, La1/c;

    new-instance v1, Lv0/f;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lv0/f;-><init>(I)V

    invoke-direct {v0, v1}, La1/c;-><init>(Lorg/bouncycastle/crypto/d;)V

    const/16 v1, 0x80

    const/16 v2, 0xc0

    invoke-direct {p0, v2, v0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;-><init>(ILorg/bouncycastle/crypto/d;I)V

    return-void
.end method
