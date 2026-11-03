.class public Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi$DefSharedCompat;
.super Lorg/bouncycastle/jcajce/provider/keystore/util/AdaptingKeyStoreSpi;


# direct methods
.method public constructor <init>()V
    .registers 6

    new-instance v0, La3/e;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, La3/e;-><init>(BI)V

    new-instance v1, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;

    new-instance v2, La3/e;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3}, La3/e;-><init>(BI)V

    invoke-direct {v1, v2}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;-><init>(Le2/b;)V

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/keystore/util/AdaptingKeyStoreSpi;-><init>(Le2/b;Ljava/security/KeyStoreSpi;)V

    return-void
.end method
