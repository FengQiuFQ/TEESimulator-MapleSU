.class public Lorg/bouncycastle/jcajce/provider/symmetric/ARIA$Poly1305KeyGen;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;


# direct methods
.method public constructor <init>()V
    .registers 4

    new-instance v0, Lx0/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lx0/a;-><init>(I)V

    const-string v1, "Poly1305-ARIA"

    const/16 v2, 0x100

    invoke-direct {p0, v1, v2, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;-><init>(Ljava/lang/String;ILorg/bouncycastle/crypto/f;)V

    return-void
.end method
