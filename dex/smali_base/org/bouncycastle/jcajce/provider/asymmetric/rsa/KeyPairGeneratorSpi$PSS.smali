.class public Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/KeyPairGeneratorSpi$PSS;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/KeyPairGeneratorSpi;


# direct methods
.method public constructor <init>()V
    .registers 3

    const-string v0, "RSASSA-PSS"

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/KeyPairGeneratorSpi;->PSS_ALGID:Ll0/b;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/KeyPairGeneratorSpi;->access$000()Ll0/b;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/KeyPairGeneratorSpi;-><init>(Ljava/lang/String;Ll0/b;)V

    return-void
.end method
