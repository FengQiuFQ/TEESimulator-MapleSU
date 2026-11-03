.class Lorg/bouncycastle/jcajce/provider/drbg/DRBG$OneShotHybridEntropySource$1;
.super Ljava/lang/Object;

# interfaces
.implements Lg1/b;


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/jcajce/provider/drbg/DRBG$OneShotHybridEntropySource;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/jcajce/provider/drbg/DRBG$OneShotHybridEntropySource;)V
    .registers 2

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$OneShotHybridEntropySource$1;->this$0:Lorg/bouncycastle/jcajce/provider/drbg/DRBG$OneShotHybridEntropySource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)Lg1/a;
    .registers 2

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$OneShotHybridEntropySource$1;->this$0:Lorg/bouncycastle/jcajce/provider/drbg/DRBG$OneShotHybridEntropySource;

    # getter for: Lorg/bouncycastle/jcajce/provider/drbg/DRBG$OneShotHybridEntropySource;->entropySource:Lorg/bouncycastle/jcajce/provider/drbg/DRBG$OneShotHybridEntropySource$OneShotSignallingEntropySource;
    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$OneShotHybridEntropySource;->access$900(Lorg/bouncycastle/jcajce/provider/drbg/DRBG$OneShotHybridEntropySource;)Lorg/bouncycastle/jcajce/provider/drbg/DRBG$OneShotHybridEntropySource$OneShotSignallingEntropySource;

    move-result-object p0

    return-object p0
.end method
