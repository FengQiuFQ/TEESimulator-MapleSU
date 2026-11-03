.class public Lorg/bouncycastle/jcajce/provider/symmetric/DES$DES9797Alg3with7816d4;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;


# direct methods
.method public constructor <init>()V
    .registers 6

    new-instance v0, Lv3/u;

    new-instance v1, Lv0/l;

    invoke-direct {v1}, Lv0/l;-><init>()V

    new-instance v2, La3/e;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3}, La3/e;-><init>(BI)V

    const/16 v3, 0x40

    invoke-direct {v0, v1, v3, v2}, Lv3/u;-><init>(Lv0/l;ILa3/e;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;-><init>(Lorg/bouncycastle/crypto/b0;)V

    return-void
.end method
