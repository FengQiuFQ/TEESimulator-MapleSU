.class public Lorg/bouncycastle/jcajce/provider/symmetric/IDEA$PBEWithSHAAndIDEA;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;


# direct methods
.method public constructor <init>()V
    .registers 8

    new-instance v0, Lq2/e;

    invoke-direct {v0}, Lq2/e;-><init>()V

    new-instance v2, La1/c;

    invoke-direct {v2, v0}, La1/c;-><init>(Lorg/bouncycastle/crypto/d;)V

    const/16 v5, 0x80

    const/16 v6, 0x8

    const/4 v3, 0x2

    const/4 v4, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;-><init>(Lorg/bouncycastle/crypto/d;IIII)V

    return-void
.end method
