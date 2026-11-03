.class public final Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi$MLDSA87_Ed448_SHAKE256;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;


# direct methods
.method public constructor <init>()V
    .registers 4

    sget-object v0, Lq1/a;->t:Lm/q;

    new-instance v1, Ls0/g0;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Ls0/g0;-><init>(I)V

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;-><init>(Lm/q;Lorg/bouncycastle/crypto/v;)V

    return-void
.end method
