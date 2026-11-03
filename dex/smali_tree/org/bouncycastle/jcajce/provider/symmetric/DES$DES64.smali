.class public Lorg/bouncycastle/jcajce/provider/symmetric/DES$DES64;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;


# direct methods
.method public constructor <init>()V
    .registers 5

    new-instance v0, Lz0/a;

    new-instance v1, Lv0/l;

    invoke-direct {v1}, Lv0/l;-><init>()V

    const/16 v2, 0x40

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lz0/a;-><init>(Lorg/bouncycastle/crypto/d;ILa3/e;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;-><init>(Lorg/bouncycastle/crypto/b0;)V

    return-void
.end method
