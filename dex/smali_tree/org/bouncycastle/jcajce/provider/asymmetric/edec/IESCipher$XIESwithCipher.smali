.class public Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher$XIESwithCipher;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/d;I)V
    .registers 5

    sget v0, Lj1/a;->a:I

    new-instance v0, Ls0/z;

    invoke-direct {v0}, Ls0/z;-><init>()V

    new-instance v1, Ls0/z;

    invoke-direct {v1}, Ls0/z;-><init>()V

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher$XIESwithCipher;-><init>(Lorg/bouncycastle/crypto/d;ILorg/bouncycastle/crypto/v;Lorg/bouncycastle/crypto/v;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/d;ILorg/bouncycastle/crypto/v;Lorg/bouncycastle/crypto/v;)V
    .registers 8

    new-instance v0, Lv0/r;

    new-instance v1, Lp0/i;

    invoke-direct {v1}, Lp0/i;-><init>()V

    new-instance v2, Lx0/o;

    invoke-direct {v2, p3}, Lx0/o;-><init>(Lorg/bouncycastle/crypto/v;)V

    new-instance p3, Lz0/d;

    invoke-direct {p3, p4}, Lz0/d;-><init>(Lorg/bouncycastle/crypto/v;)V

    new-instance p4, Ld1/c;

    invoke-direct {p4, p1}, Ld1/c;-><init>(Lorg/bouncycastle/crypto/d;)V

    invoke-direct {v0, v1, v2, p3, p4}, Lv0/r;-><init>(Lorg/bouncycastle/crypto/c;Lx0/o;Lz0/d;Ld1/c;)V

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;-><init>(Lv0/r;I)V

    return-void
.end method
