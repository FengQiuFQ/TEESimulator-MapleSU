.class public Lorg/bouncycastle/jcajce/provider/symmetric/DESede$Wrap;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;


# direct methods
.method public constructor <init>()V
    .registers 4

    new-instance v0, Lv0/e;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lv0/e;-><init>(BI)V

    sget v1, Lj1/a;->a:I

    new-instance v1, Ls0/z;

    invoke-direct {v1}, Ls0/z;-><init>()V

    iput-object v1, v0, Lv0/e;->m:Ljava/lang/Object;

    const/16 v1, 0x14

    new-array v1, v1, [B

    iput-object v1, v0, Lv0/e;->n:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>(Lorg/bouncycastle/crypto/p0;)V

    return-void
.end method
