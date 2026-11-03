.class public Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher$XIESwithSHA512andAESCBC;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher$XIESwithCipher;


# direct methods
.method public constructor <init>()V
    .registers 5

    new-instance v0, Lv0/a;

    invoke-direct {v0}, Lv0/a;-><init>()V

    new-instance v1, La1/c;

    invoke-direct {v1, v0}, La1/c;-><init>(Lorg/bouncycastle/crypto/d;)V

    sget v0, Lj1/a;->a:I

    new-instance v0, Ls0/e0;

    invoke-direct {v0}, Ls0/e0;-><init>()V

    new-instance v2, Ls0/e0;

    invoke-direct {v2}, Ls0/e0;-><init>()V

    const/16 v3, 0x10

    invoke-direct {p0, v1, v3, v0, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher$XIESwithCipher;-><init>(Lorg/bouncycastle/crypto/d;ILorg/bouncycastle/crypto/v;Lorg/bouncycastle/crypto/v;)V

    return-void
.end method
