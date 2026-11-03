.class Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource;
.super Ljava/lang/Object;

# interfaces
.implements Lg1/a;


# instance fields
.field private final additionalInput:[B

.field private final bytesRequired:I

.field private final drbg:Lg1/c;

.field private final entropySource:Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource$SignallingEntropySource;

.field private final samples:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final seedAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/jcajce/provider/drbg/EntropyDaemon;I)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource;->seedAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource;->samples:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/16 v4, 0x8

    new-array v5, v4, [B

    invoke-static {v1, v2, v3, v5}, Lm4/d;->E(IJ[B)V

    iput-object v5, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource;->additionalInput:[B

    # invokes: Lorg/bouncycastle/jcajce/provider/drbg/DRBG;->createCoreEntropySourceProvider()Lg1/b;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG;->access$600()Lg1/b;

    move-result-object v2

    add-int/lit8 p2, p2, 0x7

    div-int/2addr p2, v4

    iput p2, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource;->bytesRequired:I

    new-instance p2, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource$SignallingEntropySource;

    # invokes: Lorg/bouncycastle/jcajce/provider/drbg/DRBG;->get256BitsEffectiveEntropySize()I
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG;->access$700()I

    move-result v3

    invoke-direct {p2, p1, v0, v2, v3}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource$SignallingEntropySource;-><init>(Lorg/bouncycastle/jcajce/provider/drbg/EntropyDaemon;Ljava/util/concurrent/atomic/AtomicBoolean;Lg1/b;I)V

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource;->entropySource:Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource$SignallingEntropySource;

    new-instance p1, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource$1;

    invoke-direct {p1, p0}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource$1;-><init>(Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource;)V

    const-string v0, "Bouncy Castle Hybrid Entropy Source"

    invoke-static {v0}, Lm4/m;->c(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lm4/d;->e([B)[B

    move-result-object v0

    new-instance v2, Lz0/d;

    new-instance v3, Ls0/e0;

    invoke-direct {v3}, Ls0/e0;-><init>()V

    invoke-direct {v2, v3}, Lz0/d;-><init>(Lorg/bouncycastle/crypto/v;)V

    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource$SignallingEntropySource;->getEntropy()[B

    move-result-object p2

    new-instance v3, Lg1/c;

    const/16 v4, 0x100

    invoke-interface {p1, v4}, Lg1/b;->get(I)Lg1/a;

    move-result-object p1

    new-instance v4, Lg1/d;

    const/4 v5, 0x0

    invoke-direct {v4, v2, p2, v0, v5}, Lg1/d;-><init>(Ljava/lang/Object;[B[BI)V

    invoke-direct {v3, p1, v4, v1}, Lg1/c;-><init>(Lg1/a;Lg1/d;Z)V

    iput-object v3, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource;->drbg:Lg1/c;

    return-void
.end method

.method public static synthetic access$800(Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource;)Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource$SignallingEntropySource;
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource;->entropySource:Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource$SignallingEntropySource;

    return-object p0
.end method


# virtual methods
.method public entropySize()I
    .registers 1

    iget p0, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource;->bytesRequired:I

    mul-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public getEntropy()[B
    .registers 4

    iget v0, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource;->bytesRequired:I

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource;->samples:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    const/16 v2, 0x80

    if-le v1, v2, :cond_29

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource;->seedAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource;->samples:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource;->drbg:Lg1/c;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource;->additionalInput:[B

    invoke-virtual {v1, v2}, Lg1/c;->a([B)V

    goto :goto_29

    :cond_24
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource;->entropySource:Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource$SignallingEntropySource;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource$SignallingEntropySource;->schedule()V

    :cond_29
    :goto_29
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource;->drbg:Lg1/c;

    invoke-virtual {p0, v0}, Lg1/c;->nextBytes([B)V

    return-object v0
.end method

.method public isPredictionResistant()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method
