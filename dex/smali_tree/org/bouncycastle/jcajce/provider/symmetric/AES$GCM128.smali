.class public Lorg/bouncycastle/jcajce/provider/symmetric/AES$GCM128;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;


# direct methods
.method public constructor <init>()V
    .registers 3

    new-instance v0, Lv0/a;

    invoke-direct {v0}, Lv0/a;-><init>()V

    invoke-static {v0}, La1/o;->i(Lorg/bouncycastle/crypto/d;)La1/o;

    move-result-object v0

    const/16 v1, 0x80

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;-><init>(ILa1/a;)V

    return-void
.end method
