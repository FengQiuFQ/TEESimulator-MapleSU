.class public Lorg/bouncycastle/jcajce/provider/symmetric/Serpent$ECB128;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;


# direct methods
.method public constructor <init>()V
    .registers 3

    new-instance v0, Lorg/bouncycastle/jcajce/provider/symmetric/Serpent$ECB128$1;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/symmetric/Serpent$ECB128$1;-><init>()V

    const/16 v1, 0x80

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;-><init>(ILorg/bouncycastle/jcajce/provider/symmetric/util/BlockCipherProvider;)V

    return-void
.end method
