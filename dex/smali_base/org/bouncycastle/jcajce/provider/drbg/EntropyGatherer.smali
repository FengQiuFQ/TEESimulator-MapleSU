.class Lorg/bouncycastle/jcajce/provider/drbg/EntropyGatherer;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private final baseRandom:Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySource;

.field private final entropy:Ljava/util/concurrent/atomic/AtomicReference;

.field private final pause:J

.field private final seedAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lorg/bouncycastle/jcajce/provider/drbg/EntropyGatherer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jcajce/provider/drbg/EntropyGatherer;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySource;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/drbg/EntropyGatherer;->baseRandom:Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySource;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/drbg/EntropyGatherer;->seedAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/drbg/EntropyGatherer;->entropy:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Lorg/bouncycastle/jcajce/provider/drbg/EntropyGatherer;->getPause()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/bouncycastle/jcajce/provider/drbg/EntropyGatherer;->pause:J

    return-void
.end method

.method private static getPause()J
    .registers 4

    const-string v0, "org.bouncycastle.drbg.gather_pause_secs"

    invoke-static {v0}, Lm4/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x1388

    if-eqz v0, :cond_12

    :try_start_a
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_e} :catch_12

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0

    :catch_12
    :cond_12
    return-wide v1
.end method


# virtual methods
.method public run()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/drbg/EntropyGatherer;->entropy:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/drbg/EntropyGatherer;->baseRandom:Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySource;

    iget-wide v2, p0, Lorg/bouncycastle/jcajce/provider/drbg/EntropyGatherer;->pause:J

    invoke-interface {v1, v2, v3}, Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySource;->getEntropy(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/drbg/EntropyGatherer;->seedAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_13} :catch_14

    return-void

    :catch_14
    sget-object p0, Lorg/bouncycastle/jcajce/provider/drbg/EntropyGatherer;->LOG:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_23

    const-string v0, "entropy request interrupted - exiting"

    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_23
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method
