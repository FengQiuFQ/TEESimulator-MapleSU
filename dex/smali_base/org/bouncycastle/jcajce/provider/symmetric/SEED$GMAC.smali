.class public Lorg/bouncycastle/jcajce/provider/symmetric/SEED$GMAC;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;


# direct methods
.method public constructor <init>()V
    .registers 5

    new-instance v0, Lb1/a;

    new-instance v1, Lv0/t;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lv0/t;-><init>(IZ)V

    invoke-static {v1}, La1/o;->i(Lorg/bouncycastle/crypto/d;)La1/o;

    move-result-object v1

    const/16 v2, 0xd

    invoke-direct {v0, v2, v1}, Lb1/a;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;-><init>(Lorg/bouncycastle/crypto/b0;)V

    return-void
.end method
