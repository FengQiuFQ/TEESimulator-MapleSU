.class public Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher$KEMwithSHA256;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher$KEM;


# direct methods
.method public constructor <init>()V
    .registers 5

    sget v0, Lj1/a;->a:I

    new-instance v0, Ls0/b0;

    invoke-direct {v0}, Ls0/b0;-><init>()V

    new-instance v1, Ls0/b0;

    invoke-direct {v1}, Ls0/b0;-><init>()V

    const/16 v2, 0x20

    const/16 v3, 0x10

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher$KEM;-><init>(Lorg/bouncycastle/crypto/v;Lorg/bouncycastle/crypto/v;II)V

    return-void
.end method
