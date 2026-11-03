.class public Lorg/bouncycastle/jcajce/provider/symmetric/GOST3412_2015$GCFB8;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;


# direct methods
.method public constructor <init>()V
    .registers 5

    new-instance v0, Lorg/bouncycastle/crypto/e;

    new-instance v1, La1/l;

    new-instance v2, Lv0/f;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lv0/f;-><init>(I)V

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, La1/l;-><init>(Lv0/f;I)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/e;-><init>(Lorg/bouncycastle/crypto/d;)V

    const/4 v1, 0x0

    const/16 v2, 0x80

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;-><init>(Lorg/bouncycastle/crypto/e;ZI)V

    return-void
.end method
