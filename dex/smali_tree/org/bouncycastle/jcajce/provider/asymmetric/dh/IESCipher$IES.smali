.class public Lorg/bouncycastle/jcajce/provider/asymmetric/dh/IESCipher$IES;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/dh/IESCipher;


# direct methods
.method public constructor <init>()V
    .registers 6

    new-instance v0, Lv0/r;

    new-instance v1, Lp0/a;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lx0/o;

    sget v3, Lj1/a;->a:I

    new-instance v3, Ls0/z;

    invoke-direct {v3}, Ls0/z;-><init>()V

    invoke-direct {v2, v3}, Lx0/o;-><init>(Lorg/bouncycastle/crypto/v;)V

    new-instance v3, Lz0/d;

    new-instance v4, Ls0/z;

    invoke-direct {v4}, Ls0/z;-><init>()V

    invoke-direct {v3, v4}, Lz0/d;-><init>(Lorg/bouncycastle/crypto/v;)V

    invoke-direct {v0, v1, v2, v3}, Lv0/r;-><init>(Lorg/bouncycastle/crypto/c;Lx0/o;Lz0/d;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/IESCipher;-><init>(Lv0/r;)V

    return-void
.end method
