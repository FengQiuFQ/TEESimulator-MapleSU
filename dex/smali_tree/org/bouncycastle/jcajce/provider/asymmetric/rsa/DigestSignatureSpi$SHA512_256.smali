.class public Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi$SHA512_256;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;


# direct methods
.method public constructor <init>()V
    .registers 5

    sget-object v0, Lz/b;->f:Lm/q;

    sget v1, Lj1/a;->a:I

    new-instance v1, Ls0/f0;

    const/16 v2, 0x100

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ls0/f0;-><init>(II)V

    new-instance v2, La2/k;

    new-instance v3, Lv0/z;

    invoke-direct {v3}, Lv0/z;-><init>()V

    invoke-direct {v2, v3}, La2/k;-><init>(Lorg/bouncycastle/crypto/a;)V

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;-><init>(Lm/q;Lorg/bouncycastle/crypto/v;Lorg/bouncycastle/crypto/a;)V

    return-void
.end method
