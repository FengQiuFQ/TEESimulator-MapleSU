.class public Lorg/bouncycastle/jcajce/provider/digest/SHA384$OldSHA384;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;


# direct methods
.method public constructor <init>()V
    .registers 3

    new-instance v0, Lq0/a;

    new-instance v1, Ls0/c0;

    invoke-direct {v1}, Ls0/c0;-><init>()V

    invoke-direct {v0, v1}, Lq0/a;-><init>(Ls0/o;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;-><init>(Lorg/bouncycastle/crypto/b0;)V

    return-void
.end method
