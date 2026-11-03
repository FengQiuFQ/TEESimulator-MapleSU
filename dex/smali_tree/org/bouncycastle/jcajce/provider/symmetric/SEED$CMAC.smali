.class public Lorg/bouncycastle/jcajce/provider/symmetric/SEED$CMAC;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;


# direct methods
.method public constructor <init>()V
    .registers 5

    new-instance v0, Lz0/b;

    new-instance v1, Lv0/t;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lv0/t;-><init>(IZ)V

    invoke-direct {v0, v1}, Lz0/b;-><init>(Lorg/bouncycastle/crypto/d;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;-><init>(Lorg/bouncycastle/crypto/b0;)V

    return-void
.end method
