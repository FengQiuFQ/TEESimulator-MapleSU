.class public Lorg/bouncycastle/jcajce/provider/symmetric/ARIA$WrapPad;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;


# direct methods
.method public constructor <init>()V
    .registers 4

    new-instance v0, Lv0/c;

    new-instance v1, Lv0/d;

    invoke-direct {v1}, Lv0/d;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lv0/y;-><init>(Lorg/bouncycastle/crypto/d;I)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>(Lorg/bouncycastle/crypto/p0;)V

    return-void
.end method
