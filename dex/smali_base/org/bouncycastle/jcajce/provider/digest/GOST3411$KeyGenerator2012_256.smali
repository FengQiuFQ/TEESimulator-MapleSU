.class public Lorg/bouncycastle/jcajce/provider/digest/GOST3411$KeyGenerator2012_256;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;


# direct methods
.method public constructor <init>()V
    .registers 4

    new-instance v0, Lorg/bouncycastle/crypto/f;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-string v1, "HMACGOST3411"

    const/16 v2, 0x100

    invoke-direct {p0, v1, v2, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;-><init>(Ljava/lang/String;ILorg/bouncycastle/crypto/f;)V

    return-void
.end method
