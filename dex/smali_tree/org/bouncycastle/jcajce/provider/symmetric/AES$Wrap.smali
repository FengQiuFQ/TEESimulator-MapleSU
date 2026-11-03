.class public Lorg/bouncycastle/jcajce/provider/symmetric/AES$Wrap;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;


# direct methods
.method public constructor <init>()V
    .registers 3

    new-instance v0, Lv0/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lv0/b;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>(Lorg/bouncycastle/crypto/p0;)V

    return-void
.end method
