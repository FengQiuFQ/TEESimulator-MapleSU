.class public Lorg/bouncycastle/jcajce/provider/symmetric/Zuc$Zuc128;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;


# direct methods
.method public constructor <init>()V
    .registers 4

    new-instance v0, Lv0/o0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lv0/o0;-><init>(I)V

    const/16 v1, 0x10

    const/16 v2, 0x80

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;-><init>(Lorg/bouncycastle/crypto/o0;II)V

    return-void
.end method
