.class public Lorg/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$Version1;
.super Lorg/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;-><init>(I)V

    const-string p0, "org.bouncycastle.bks.enable_v1"

    invoke-static {p0}, Lm4/h;->c(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_d

    return-void

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "BKS-V1 not enabled"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
