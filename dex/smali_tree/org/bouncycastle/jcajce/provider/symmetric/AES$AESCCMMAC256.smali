.class public Lorg/bouncycastle/jcajce/provider/symmetric/AES$AESCCMMAC256;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;


# direct methods
.method public constructor <init>()V
    .registers 3

    new-instance v0, Lorg/bouncycastle/jcajce/provider/symmetric/AES$CCMMac;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/symmetric/AES$CCMMac;-><init>()V

    const/16 v1, 0x100

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;-><init>(ILorg/bouncycastle/crypto/b0;)V

    return-void
.end method
