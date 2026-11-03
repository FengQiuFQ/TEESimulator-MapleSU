.class public Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher$XIESwithSHA384;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher$XIES;


# direct methods
.method public constructor <init>()V
    .registers 3

    sget v0, Lj1/a;->a:I

    new-instance v0, Ls0/c0;

    invoke-direct {v0}, Ls0/c0;-><init>()V

    new-instance v1, Ls0/c0;

    invoke-direct {v1}, Ls0/c0;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher$XIES;-><init>(Lorg/bouncycastle/crypto/v;Lorg/bouncycastle/crypto/v;)V

    return-void
.end method
