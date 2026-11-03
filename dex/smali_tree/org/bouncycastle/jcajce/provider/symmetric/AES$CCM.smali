.class public Lorg/bouncycastle/jcajce/provider/symmetric/AES$CCM;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;


# direct methods
.method public constructor <init>()V
    .registers 4

    new-instance v0, Lv0/a;

    invoke-direct {v0}, Lv0/a;-><init>()V

    invoke-static {v0}, La1/e;->e(Lorg/bouncycastle/crypto/d;)La1/e;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xc

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;-><init>(La1/a;ZI)V

    return-void
.end method
