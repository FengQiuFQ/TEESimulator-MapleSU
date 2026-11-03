.class public Lorg/bouncycastle/jcajce/provider/symmetric/RC2$Wrap;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;


# direct methods
.method public constructor <init>()V
    .registers 3

    new-instance v0, Lv0/u;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget v1, Lj1/a;->a:I

    new-instance v1, Ls0/z;

    invoke-direct {v1}, Ls0/z;-><init>()V

    iput-object v1, v0, Lv0/u;->m:Ls0/z;

    const/16 v1, 0x14

    new-array v1, v1, [B

    iput-object v1, v0, Lv0/u;->n:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>(Lorg/bouncycastle/crypto/p0;)V

    return-void
.end method
