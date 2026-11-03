.class public Lorg/bouncycastle/jcajce/provider/symmetric/AES$CCM128;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;


# direct methods
.method public constructor <init>()V
    .registers 5

    new-instance v0, Lv0/a;

    invoke-direct {v0}, Lv0/a;-><init>()V

    invoke-static {v0}, La1/e;->e(Lorg/bouncycastle/crypto/d;)La1/e;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xc

    const/16 v3, 0x80

    invoke-direct {p0, v3, v0, v1, v2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;-><init>(ILa1/a;ZI)V

    return-void
.end method
