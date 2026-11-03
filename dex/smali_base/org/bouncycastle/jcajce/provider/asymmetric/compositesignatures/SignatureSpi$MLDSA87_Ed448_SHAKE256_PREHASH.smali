.class public final Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi$MLDSA87_Ed448_SHAKE256_PREHASH;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;


# direct methods
.method public constructor <init>()V
    .registers 4

    sget-object v0, Lq1/a;->t:Lm/q;

    new-instance v1, Ls0/g0;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Ls0/g0;-><init>(I)V

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;-><init>(Lm/q;Lorg/bouncycastle/crypto/v;Z)V

    return-void
.end method
