.class public Lorg/bouncycastle/jcajce/provider/symmetric/GOST3412_2015$CBC;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;


# direct methods
.method public constructor <init>()V
    .registers 5

    new-instance v0, La1/k;

    new-instance v1, Lv0/f;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lv0/f;-><init>(I)V

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, v0, La1/k;->l:Z

    const/16 v3, 0x10

    iput v3, v0, La1/k;->h:I

    iput-object v1, v0, La1/k;->k:Lv0/f;

    const/16 v1, 0x80

    invoke-direct {p0, v0, v2, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;-><init>(Lorg/bouncycastle/crypto/d;ZI)V

    return-void
.end method
