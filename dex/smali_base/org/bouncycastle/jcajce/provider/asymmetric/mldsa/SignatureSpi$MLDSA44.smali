.class public Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/SignatureSpi$MLDSA44;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/SignatureSpi;


# direct methods
.method public constructor <init>()V
    .registers 3

    new-instance v0, Li3/h;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Li3/e;->d:Li3/e;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/SignatureSpi;-><init>(Li3/h;Li3/e;)V

    return-void
.end method
