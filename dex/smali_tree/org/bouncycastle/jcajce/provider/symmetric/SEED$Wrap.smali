.class public Lorg/bouncycastle/jcajce/provider/symmetric/SEED$Wrap;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;


# direct methods
.method public constructor <init>()V
    .registers 5

    new-instance v0, Lv0/b;

    new-instance v1, Lv0/t;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lv0/t;-><init>(IZ)V

    invoke-direct {v0, v1}, Lv0/x;-><init>(Lorg/bouncycastle/crypto/d;)V

    const/16 v1, 0x80

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>(ILorg/bouncycastle/crypto/p0;)V

    return-void
.end method
