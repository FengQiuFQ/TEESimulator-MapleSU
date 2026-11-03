.class public Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher$KEM;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/v;Lorg/bouncycastle/crypto/v;II)V
    .registers 11

    new-instance v1, Lp0/d;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lx0/o;

    invoke-direct {v2, p1}, Lx0/o;-><init>(Lorg/bouncycastle/crypto/v;)V

    new-instance v3, Lz0/d;

    invoke-direct {v3, p2}, Lz0/d;-><init>(Lorg/bouncycastle/crypto/v;)V

    move-object v0, p0

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;-><init>(Lp0/d;Lx0/o;Lorg/bouncycastle/crypto/b0;II)V

    return-void
.end method
