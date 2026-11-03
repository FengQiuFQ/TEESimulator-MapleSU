.class public Lorg/bouncycastle/jcajce/provider/asymmetric/ec/GMSignatureSpi$sha256WithSM2;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/ec/GMSignatureSpi;


# direct methods
.method public constructor <init>()V
    .registers 3

    new-instance v0, Li1/m;

    new-instance v1, Ls0/b0;

    invoke-direct {v1}, Ls0/b0;-><init>()V

    invoke-direct {v0, v1}, Li1/m;-><init>(Ls0/j;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/GMSignatureSpi;-><init>(Li1/m;)V

    return-void
.end method
