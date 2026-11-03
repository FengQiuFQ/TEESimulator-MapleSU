.class public Lorg/bouncycastle/jcajce/provider/symmetric/AES$CBC192;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;


# direct methods
.method public constructor <init>()V
    .registers 4

    new-instance v0, Lv0/a;

    invoke-direct {v0}, Lv0/a;-><init>()V

    new-instance v1, La1/c;

    invoke-direct {v1, v0}, La1/c;-><init>(Lorg/bouncycastle/crypto/d;)V

    const/16 v0, 0x80

    const/16 v2, 0xc0

    invoke-direct {p0, v2, v1, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;-><init>(ILorg/bouncycastle/crypto/d;I)V

    return-void
.end method
