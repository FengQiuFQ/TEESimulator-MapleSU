.class public Lorg/bouncycastle/jcajce/provider/symmetric/XTEA$ECB;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;


# direct methods
.method public constructor <init>()V
    .registers 4

    new-instance v0, Lv0/x;

    invoke-direct {v0}, Lv0/x;-><init>()V

    const/4 v1, 0x4

    new-array v1, v1, [I

    iput-object v1, v0, Lv0/x;->j:Ljava/lang/Object;

    const/16 v1, 0x20

    new-array v2, v1, [I

    iput-object v2, v0, Lv0/x;->k:Ljava/lang/Object;

    new-array v1, v1, [I

    iput-object v1, v0, Lv0/x;->l:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lv0/x;->h:Z

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;-><init>(Lorg/bouncycastle/crypto/d;)V

    return-void
.end method
