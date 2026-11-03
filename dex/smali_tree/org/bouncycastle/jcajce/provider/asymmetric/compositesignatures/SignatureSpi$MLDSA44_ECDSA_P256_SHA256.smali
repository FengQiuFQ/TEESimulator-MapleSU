.class public final Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi$MLDSA44_ECDSA_P256_SHA256;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;


# direct methods
.method public constructor <init>()V
    .registers 3

    sget-object v0, Lq1/a;->i:Lm/q;

    new-instance v1, Ls0/b0;

    invoke-direct {v1}, Ls0/b0;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;-><init>(Lm/q;Lorg/bouncycastle/crypto/v;)V

    return-void
.end method
