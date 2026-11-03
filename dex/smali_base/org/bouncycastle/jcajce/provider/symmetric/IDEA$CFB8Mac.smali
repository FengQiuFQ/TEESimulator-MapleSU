.class public Lorg/bouncycastle/jcajce/provider/symmetric/IDEA$CFB8Mac;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;


# direct methods
.method public constructor <init>()V
    .registers 3

    new-instance v0, Lg3/n;

    new-instance v1, Lq2/e;

    invoke-direct {v1}, Lq2/e;-><init>()V

    invoke-direct {v0, v1}, Lg3/n;-><init>(Lorg/bouncycastle/crypto/d;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;-><init>(Lorg/bouncycastle/crypto/b0;)V

    return-void
.end method
