.class public Lorg/bouncycastle/jcajce/provider/symmetric/RC6$Poly1305;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;


# direct methods
.method public constructor <init>()V
    .registers 4

    new-instance v0, Lz0/f;

    new-instance v1, Lv0/t;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lv0/t;-><init>(I)V

    invoke-direct {v0, v1}, Lz0/f;-><init>(Lorg/bouncycastle/crypto/d;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;-><init>(Lorg/bouncycastle/crypto/b0;)V

    return-void
.end method
