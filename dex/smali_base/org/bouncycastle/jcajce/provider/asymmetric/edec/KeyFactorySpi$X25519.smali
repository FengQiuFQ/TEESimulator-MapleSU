.class public Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyFactorySpi$X25519;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyFactorySpi;


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v0, 0x1

    const/16 v1, 0x6e

    const-string v2, "X25519"

    invoke-direct {p0, v2, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyFactorySpi;-><init>(Ljava/lang/String;ZI)V

    return-void
.end method
