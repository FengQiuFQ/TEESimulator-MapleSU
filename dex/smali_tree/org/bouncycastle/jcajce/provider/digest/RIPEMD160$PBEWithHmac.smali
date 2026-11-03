.class public Lorg/bouncycastle/jcajce/provider/digest/RIPEMD160$PBEWithHmac;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;


# direct methods
.method public constructor <init>()V
    .registers 4

    new-instance v0, Lz0/d;

    new-instance v1, Ls0/w;

    invoke-direct {v1}, Ls0/w;-><init>()V

    invoke-direct {v0, v1}, Lz0/d;-><init>(Lorg/bouncycastle/crypto/v;)V

    const/4 v1, 0x2

    const/16 v2, 0xa0

    invoke-direct {p0, v0, v1, v1, v2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;-><init>(Lorg/bouncycastle/crypto/b0;III)V

    return-void
.end method
