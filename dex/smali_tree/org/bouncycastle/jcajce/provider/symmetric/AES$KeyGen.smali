.class public Lorg/bouncycastle/jcajce/provider/symmetric/AES$KeyGen;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0xc0

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/AES$KeyGen;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    new-instance v0, Lorg/bouncycastle/crypto/f;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-string v1, "AES"

    invoke-direct {p0, v1, p1, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;-><init>(Ljava/lang/String;ILorg/bouncycastle/crypto/f;)V

    return-void
.end method
