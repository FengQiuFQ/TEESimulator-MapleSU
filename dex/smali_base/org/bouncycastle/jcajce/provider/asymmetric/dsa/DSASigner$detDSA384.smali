.class public Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner$detDSA384;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;


# direct methods
.method public constructor <init>()V
    .registers 5

    sget v0, Lj1/a;->a:I

    new-instance v0, Ls0/c0;

    invoke-direct {v0}, Ls0/c0;-><init>()V

    new-instance v1, Lg1/d;

    new-instance v2, Li1/g;

    new-instance v3, Ls0/c0;

    invoke-direct {v3}, Ls0/c0;-><init>()V

    invoke-direct {v2, v3}, Li1/g;-><init>(Lorg/bouncycastle/crypto/v;)V

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lg1/d;-><init>(Li1/g;I)V

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;-><init>(Lorg/bouncycastle/crypto/v;Lorg/bouncycastle/crypto/p;)V

    return-void
.end method
