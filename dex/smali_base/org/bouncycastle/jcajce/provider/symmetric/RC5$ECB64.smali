.class public Lorg/bouncycastle/jcajce/provider/symmetric/RC5$ECB64;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;


# direct methods
.method public constructor <init>()V
    .registers 3

    new-instance v0, Lv0/w;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lv0/w;-><init>(I)V

    const/16 v1, 0xc

    iput v1, v0, Lv0/w;->h:I

    const/4 v1, 0x0

    iput-object v1, v0, Lv0/w;->j:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;-><init>(Lorg/bouncycastle/crypto/d;)V

    return-void
.end method
