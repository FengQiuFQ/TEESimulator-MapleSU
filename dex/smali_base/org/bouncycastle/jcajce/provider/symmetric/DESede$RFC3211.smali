.class public Lorg/bouncycastle/jcajce/provider/symmetric/DESede$RFC3211;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;


# direct methods
.method public constructor <init>()V
    .registers 4

    new-instance v0, Lv0/y;

    new-instance v1, Lv0/m;

    invoke-direct {v1}, Lv0/m;-><init>()V

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lv0/y;-><init>(Lorg/bouncycastle/crypto/d;I)V

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>(Lorg/bouncycastle/crypto/p0;I)V

    return-void
.end method
