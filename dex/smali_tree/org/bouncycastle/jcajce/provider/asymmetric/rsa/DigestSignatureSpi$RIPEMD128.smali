.class public Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi$RIPEMD128;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;


# direct methods
.method public constructor <init>()V
    .registers 5

    sget-object v0, Lg0/b;->b:Lm/q;

    new-instance v1, Ls0/v;

    invoke-direct {v1}, Ls0/v;-><init>()V

    new-instance v2, La2/k;

    new-instance v3, Lv0/z;

    invoke-direct {v3}, Lv0/z;-><init>()V

    invoke-direct {v2, v3}, La2/k;-><init>(Lorg/bouncycastle/crypto/a;)V

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;-><init>(Lm/q;Lorg/bouncycastle/crypto/v;Lorg/bouncycastle/crypto/a;)V

    return-void
.end method
