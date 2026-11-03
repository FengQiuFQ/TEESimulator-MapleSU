.class public Lorg/bouncycastle/jcajce/provider/symmetric/Zuc$Zuc256;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;


# direct methods
.method public constructor <init>()V
    .registers 4

    new-instance v0, Lv0/q0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lv0/q0;-><init>(I)V

    sget-object v1, Lv0/p0;->r:[B

    iput-object v1, v0, Lv0/p0;->q:[B

    const/16 v1, 0x19

    const/16 v2, 0x100

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;-><init>(Lorg/bouncycastle/crypto/o0;II)V

    return-void
.end method
