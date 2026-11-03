.class public Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher$XIES;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;


# direct methods
.method public constructor <init>()V
    .registers 3

    sget v0, Lj1/a;->a:I

    new-instance v0, Ls0/z;

    invoke-direct {v0}, Ls0/z;-><init>()V

    new-instance v1, Ls0/z;

    invoke-direct {v1}, Ls0/z;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher$XIES;-><init>(Lorg/bouncycastle/crypto/v;Lorg/bouncycastle/crypto/v;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/v;Lorg/bouncycastle/crypto/v;)V
    .registers 6

    new-instance v0, Lv0/r;

    new-instance v1, Lp0/i;

    invoke-direct {v1}, Lp0/i;-><init>()V

    new-instance v2, Lx0/o;

    invoke-direct {v2, p1}, Lx0/o;-><init>(Lorg/bouncycastle/crypto/v;)V

    new-instance p1, Lz0/d;

    invoke-direct {p1, p2}, Lz0/d;-><init>(Lorg/bouncycastle/crypto/v;)V

    invoke-direct {v0, v1, v2, p1}, Lv0/r;-><init>(Lorg/bouncycastle/crypto/c;Lx0/o;Lz0/d;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;-><init>(Lv0/r;)V

    return-void
.end method
