.class Lorg/bouncycastle/jcajce/provider/drbg/EntropyDaemon;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private final tasks:Ljava/util/LinkedList;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lorg/bouncycastle/jcajce/provider/drbg/EntropyDaemon;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jcajce/provider/drbg/EntropyDaemon;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/drbg/EntropyDaemon;->tasks:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public addTask(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/drbg/EntropyDaemon;->tasks:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/drbg/EntropyDaemon;->tasks:Ljava/util/LinkedList;

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public run()V
    .registers 3

    :catchall_0
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/drbg/EntropyDaemon;->tasks:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_d
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/drbg/EntropyDaemon;->tasks:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_2a

    if-eqz v1, :cond_1c

    :try_start_18
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_0

    goto :goto_0

    :cond_1c
    const-wide/16 v0, 0x1388

    :try_start_1e
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_21
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_21} :catch_22

    goto :goto_0

    :catch_22
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :catchall_2a
    move-exception p0

    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw p0

    :cond_2d
    sget-object p0, Lorg/bouncycastle/jcajce/provider/drbg/EntropyDaemon;->LOG:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const-string v0, "entropy thread interrupted - exiting"

    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_3c
    return-void
.end method
