.class public Lorg/bouncycastle/jcajce/provider/symmetric/VMPC$Mac;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;


# direct methods
.method public constructor <init>()V
    .registers 4

    new-instance v0, Lz0/i;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-byte v1, v0, Lz0/i;->h:B

    const/4 v2, 0x0

    iput-object v2, v0, Lz0/i;->i:[B

    iput-byte v1, v0, Lz0/i;->j:B

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;-><init>(Lorg/bouncycastle/crypto/b0;)V

    return-void
.end method
