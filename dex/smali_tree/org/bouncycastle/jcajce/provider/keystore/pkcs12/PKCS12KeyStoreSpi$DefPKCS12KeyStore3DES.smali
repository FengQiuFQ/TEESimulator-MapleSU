.class public Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefPKCS12KeyStore3DES;
.super Lorg/bouncycastle/jcajce/provider/keystore/util/AdaptingKeyStoreSpi;


# direct methods
.method public constructor <init>()V
    .registers 6

    new-instance v0, La3/e;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, La3/e;-><init>(BI)V

    new-instance v1, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;

    new-instance v2, La3/e;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3}, La3/e;-><init>(BI)V

    sget-object v3, Ld0/r;->q0:Lm/q;

    invoke-direct {v1, v2, v3, v3}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;-><init>(Le2/b;Lm/q;Lm/q;)V

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/keystore/util/AdaptingKeyStoreSpi;-><init>(Le2/b;Ljava/security/KeyStoreSpi;)V

    return-void
.end method
