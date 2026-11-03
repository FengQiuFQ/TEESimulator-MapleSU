.class public Lorg/bouncycastle/jcajce/provider/symmetric/ARC4$Base;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;


# direct methods
.method public constructor <init>()V
    .registers 3

    new-instance v0, Lv0/v;

    invoke-direct {v0}, Lv0/v;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;-><init>(Lorg/bouncycastle/crypto/o0;I)V

    return-void
.end method
