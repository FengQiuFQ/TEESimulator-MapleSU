.class Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource$1;
.super Ljava/lang/Object;

# interfaces
.implements Lg1/b;


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource;)V
    .registers 2

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource$1;->this$0:Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)Lg1/a;
    .registers 2

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource$1;->this$0:Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource;

    # getter for: Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource;->entropySource:Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource$SignallingEntropySource;
    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource;->access$800(Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource;)Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource$SignallingEntropySource;

    move-result-object p0

    return-object p0
.end method
