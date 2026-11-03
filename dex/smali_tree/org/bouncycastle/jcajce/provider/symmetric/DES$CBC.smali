.class public Lorg/bouncycastle/jcajce/provider/symmetric/DES$CBC;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;


# direct methods
.method public constructor <init>()V
    .registers 3

    new-instance v0, La1/c;

    new-instance v1, Lv0/l;

    invoke-direct {v1}, Lv0/l;-><init>()V

    invoke-direct {v0, v1}, La1/c;-><init>(Lorg/bouncycastle/crypto/d;)V

    const/16 v1, 0x40

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;-><init>(Lorg/bouncycastle/crypto/d;I)V

    return-void
.end method
