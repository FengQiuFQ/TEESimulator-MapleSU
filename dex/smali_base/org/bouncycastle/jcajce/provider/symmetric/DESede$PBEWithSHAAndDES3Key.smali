.class public Lorg/bouncycastle/jcajce/provider/symmetric/DESede$PBEWithSHAAndDES3Key;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;


# direct methods
.method public constructor <init>()V
    .registers 7

    new-instance v1, La1/c;

    new-instance v0, Lv0/m;

    invoke-direct {v0}, Lv0/m;-><init>()V

    invoke-direct {v1, v0}, La1/c;-><init>(Lorg/bouncycastle/crypto/d;)V

    const/16 v4, 0xc0

    const/16 v5, 0x8

    const/4 v2, 0x2

    const/4 v3, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;-><init>(Lorg/bouncycastle/crypto/d;IIII)V

    return-void
.end method
