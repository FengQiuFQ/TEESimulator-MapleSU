.class public final Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi$MLDSA87_ECDSA_brainpoolP384r1_SHA512;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;


# direct methods
.method public constructor <init>()V
    .registers 3

    sget-object v0, Lq1/a;->s:Lm/q;

    new-instance v1, Ls0/e0;

    invoke-direct {v1}, Ls0/e0;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;-><init>(Lm/q;Lorg/bouncycastle/crypto/v;)V

    return-void
.end method
