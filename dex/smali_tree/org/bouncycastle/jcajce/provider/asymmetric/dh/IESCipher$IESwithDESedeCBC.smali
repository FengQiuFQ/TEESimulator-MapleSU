.class public Lorg/bouncycastle/jcajce/provider/asymmetric/dh/IESCipher$IESwithDESedeCBC;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/dh/IESCipher;


# direct methods
.method public constructor <init>()V
    .registers 8

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

    new-instance v4, Ld1/c;

    new-instance v5, Lv0/m;

    invoke-direct {v5}, Lv0/m;-><init>()V

    new-instance v6, La1/c;

    invoke-direct {v6, v5}, La1/c;-><init>(Lorg/bouncycastle/crypto/d;)V

    invoke-direct {v4, v6}, Ld1/c;-><init>(Lorg/bouncycastle/crypto/d;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lv0/r;-><init>(Lorg/bouncycastle/crypto/c;Lx0/o;Lz0/d;Ld1/c;)V

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/IESCipher;-><init>(Lv0/r;I)V

    return-void
.end method
