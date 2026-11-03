.class Lorg/bouncycastle/jcajce/provider/drbg/DRBG$1;
.super Ljava/lang/Object;

# interfaces
.implements Lg1/b;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)Lg1/a;
    .registers 3

    new-instance p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource;

    # getter for: Lorg/bouncycastle/jcajce/provider/drbg/DRBG;->entropyDaemon:Lorg/bouncycastle/jcajce/provider/drbg/EntropyDaemon;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG;->access$200()Lorg/bouncycastle/jcajce/provider/drbg/EntropyDaemon;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource;-><init>(Lorg/bouncycastle/jcajce/provider/drbg/EntropyDaemon;I)V

    return-object p0
.end method
