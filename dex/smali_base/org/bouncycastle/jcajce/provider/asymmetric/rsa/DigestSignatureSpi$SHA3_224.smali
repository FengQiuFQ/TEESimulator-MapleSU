.class public Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi$SHA3_224;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;


# direct methods
.method public constructor <init>()V
    .registers 5

    sget-object v0, Lz/b;->g:Lm/q;

    invoke-static {}, Lj1/a;->a()Ls0/d0;

    move-result-object v1

    new-instance v2, La2/k;

    new-instance v3, Lv0/z;

    invoke-direct {v3}, Lv0/z;-><init>()V

    invoke-direct {v2, v3}, La2/k;-><init>(Lorg/bouncycastle/crypto/a;)V

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;-><init>(Lm/q;Lorg/bouncycastle/crypto/v;Lorg/bouncycastle/crypto/a;)V

    return-void
.end method
