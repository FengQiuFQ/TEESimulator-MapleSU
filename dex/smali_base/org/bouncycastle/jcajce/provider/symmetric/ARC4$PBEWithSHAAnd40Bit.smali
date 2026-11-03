.class public Lorg/bouncycastle/jcajce/provider/symmetric/ARC4$PBEWithSHAAnd40Bit;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;


# direct methods
.method public constructor <init>()V
    .registers 5

    new-instance v0, Lv0/v;

    invoke-direct {v0}, Lv0/v;-><init>()V

    const/16 v1, 0x28

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v3, v1, v2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;-><init>(Lorg/bouncycastle/crypto/o0;III)V

    return-void
.end method
