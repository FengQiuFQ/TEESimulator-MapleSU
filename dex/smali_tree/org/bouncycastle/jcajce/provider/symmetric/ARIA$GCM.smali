.class public Lorg/bouncycastle/jcajce/provider/symmetric/ARIA$GCM;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;


# direct methods
.method public constructor <init>()V
    .registers 2

    new-instance v0, Lv0/d;

    invoke-direct {v0}, Lv0/d;-><init>()V

    invoke-static {v0}, La1/o;->i(Lorg/bouncycastle/crypto/d;)La1/o;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;-><init>(La1/a;)V

    return-void
.end method
