.class public Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefPKCS12KeyStoreAES256GCM;
.super Lorg/bouncycastle/jcajce/provider/keystore/util/AdaptingKeyStoreSpi;


# direct methods
.method public constructor <init>()V
    .registers 6

    new-instance v0, Le2/a;

    invoke-direct {v0}, Le2/a;-><init>()V

    new-instance v1, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;

    new-instance v2, Le2/a;

    invoke-direct {v2}, Le2/a;-><init>()V

    sget-object v3, Lz/b;->S:Lm/q;

    sget-object v4, Lz/b;->C:Lm/q;

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;-><init>(Le2/b;Lm/q;Lm/q;)V

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/keystore/util/AdaptingKeyStoreSpi;-><init>(Le2/b;Ljava/security/KeyStoreSpi;)V

    return-void
.end method
