.class public Lorg/bouncycastle/jcajce/provider/digest/SHA224$KeyFactory;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;


# direct methods
.method public constructor <init>()V
    .registers 3

    const-string v0, "HmacSHA224"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;-><init>(Ljava/lang/String;Lm/q;)V

    return-void
.end method
