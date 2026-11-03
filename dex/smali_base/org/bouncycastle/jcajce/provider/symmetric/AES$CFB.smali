.class public Lorg/bouncycastle/jcajce/provider/symmetric/AES$CFB;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;


# direct methods
.method public constructor <init>()V
    .registers 5

    new-instance v0, Lorg/bouncycastle/crypto/r;

    new-instance v1, Lv0/a;

    invoke-direct {v1}, Lv0/a;-><init>()V

    new-instance v2, La1/g;

    const/16 v3, 0x80

    invoke-direct {v2, v1, v3}, La1/g;-><init>(Lorg/bouncycastle/crypto/d;I)V

    invoke-direct {v0, v2}, Lorg/bouncycastle/crypto/r;-><init>(Lorg/bouncycastle/crypto/d;)V

    invoke-direct {p0, v0, v3}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;-><init>(Lorg/bouncycastle/crypto/e;I)V

    return-void
.end method
