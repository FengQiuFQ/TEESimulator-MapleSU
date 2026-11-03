.class public Lorg/bouncycastle/jcajce/provider/symmetric/GOST3412_2015$OFB;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;


# direct methods
.method public constructor <init>()V
    .registers 6

    new-instance v0, Lorg/bouncycastle/crypto/e;

    new-instance v1, La1/m;

    new-instance v2, Lv0/f;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lv0/f;-><init>(I)V

    invoke-direct {v1, v2}, La1/m;-><init>(Lorg/bouncycastle/crypto/d;)V

    const/4 v3, 0x0

    iput-boolean v3, v1, La1/m;->p:Z

    const/16 v4, 0x10

    iput v4, v1, La1/m;->j:I

    iput-object v2, v1, La1/m;->n:Lv0/f;

    new-array v2, v4, [B

    iput-object v2, v1, La1/m;->m:[B

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/e;-><init>(Lorg/bouncycastle/crypto/d;)V

    const/16 v1, 0x80

    invoke-direct {p0, v0, v3, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;-><init>(Lorg/bouncycastle/crypto/e;ZI)V

    return-void
.end method
