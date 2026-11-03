.class public Lorg/bouncycastle/jcajce/provider/symmetric/ARIA$Wrap;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;


# direct methods
.method public constructor <init>()V
    .registers 3

    new-instance v0, Lv0/b;

    new-instance v1, Lv0/d;

    invoke-direct {v1}, Lv0/d;-><init>()V

    invoke-direct {v0, v1}, Lv0/x;-><init>(Lorg/bouncycastle/crypto/d;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>(Lorg/bouncycastle/crypto/p0;)V

    return-void
.end method
