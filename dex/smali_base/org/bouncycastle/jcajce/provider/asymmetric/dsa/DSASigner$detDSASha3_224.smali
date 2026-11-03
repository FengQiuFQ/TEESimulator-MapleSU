.class public Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner$detDSASha3_224;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;


# direct methods
.method public constructor <init>()V
    .registers 5

    invoke-static {}, Lj1/a;->a()Ls0/d0;

    move-result-object v0

    new-instance v1, Lg1/d;

    new-instance v2, Li1/g;

    invoke-static {}, Lj1/a;->a()Ls0/d0;

    move-result-object v3

    invoke-direct {v2, v3}, Li1/g;-><init>(Lorg/bouncycastle/crypto/v;)V

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lg1/d;-><init>(Li1/g;I)V

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;-><init>(Lorg/bouncycastle/crypto/v;Lorg/bouncycastle/crypto/p;)V

    return-void
.end method
