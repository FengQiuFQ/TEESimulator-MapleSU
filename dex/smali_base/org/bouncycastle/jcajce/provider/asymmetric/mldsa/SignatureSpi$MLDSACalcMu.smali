.class public Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/SignatureSpi$MLDSACalcMu;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/SignatureSpi;


# direct methods
.method public constructor <init>()V
    .registers 2

    new-instance v0, Li3/h;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/SignatureSpi;-><init>(Li3/h;)V

    return-void
.end method


# virtual methods
.method public engineSign()[B
    .registers 5

    :try_start_0
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/SignatureSpi;->signer:Li3/h;

    iget-object v0, p0, Li3/h;->j:Li3/b;

    iget-object v1, p0, Li3/h;->k:Ls0/g0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x40

    new-array v2, v0, [B

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ls0/g0;->b([BII)I

    invoke-virtual {p0}, Li3/h;->d()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    return-object v2

    :catch_15
    move-exception p0

    new-instance v0, Ljava/security/SignatureException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineVerify([B)Z
    .registers 5

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/SignatureSpi;->signer:Li3/h;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v0, p1

    const/16 v1, 0x40

    if-ne v0, v1, :cond_1c

    iget-object v0, p0, Li3/h;->j:Li3/b;

    new-array v1, v1, [B

    iget-object v0, v0, Li3/b;->b:Ls0/g0;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ls0/g0;->doFinal([BI)I

    invoke-static {v1, p1}, Lm4/d;->o([B[B)Z

    move-result p1

    invoke-virtual {p0}, Li3/h;->d()V

    return p1

    :cond_1c
    new-instance p0, Lorg/bouncycastle/crypto/q;

    const-string p1, "mu value must be 64 bytes"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
