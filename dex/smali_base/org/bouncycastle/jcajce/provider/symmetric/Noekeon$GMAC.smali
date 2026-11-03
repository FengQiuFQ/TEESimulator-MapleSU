.class public Lorg/bouncycastle/jcajce/provider/symmetric/Noekeon$GMAC;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;


# direct methods
.method public constructor <init>()V
    .registers 4

    new-instance v0, Lb1/a;

    new-instance v1, Lv0/s;

    invoke-direct {v1}, Lv0/s;-><init>()V

    invoke-static {v1}, La1/o;->i(Lorg/bouncycastle/crypto/d;)La1/o;

    move-result-object v1

    const/16 v2, 0xd

    invoke-direct {v0, v2, v1}, Lb1/a;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;-><init>(Lorg/bouncycastle/crypto/b0;)V

    return-void
.end method
