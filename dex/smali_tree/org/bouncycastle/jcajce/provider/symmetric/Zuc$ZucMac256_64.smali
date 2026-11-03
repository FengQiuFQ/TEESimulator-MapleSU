.class public Lorg/bouncycastle/jcajce/provider/symmetric/Zuc$ZucMac256_64;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;


# direct methods
.method public constructor <init>()V
    .registers 3

    new-instance v0, Lz0/k;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lz0/k;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;-><init>(Lorg/bouncycastle/crypto/b0;)V

    return-void
.end method
