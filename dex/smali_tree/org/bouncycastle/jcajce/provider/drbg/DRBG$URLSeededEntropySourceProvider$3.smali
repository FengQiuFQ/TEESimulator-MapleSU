.class Lorg/bouncycastle/jcajce/provider/drbg/DRBG$URLSeededEntropySourceProvider$3;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySource;


# instance fields
.field private final numBytes:I

.field final synthetic this$0:Lorg/bouncycastle/jcajce/provider/drbg/DRBG$URLSeededEntropySourceProvider;

.field final synthetic val$bitsRequired:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/jcajce/provider/drbg/DRBG$URLSeededEntropySourceProvider;I)V
    .registers 3

    iput p2, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$URLSeededEntropySourceProvider$3;->val$bitsRequired:I

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$URLSeededEntropySourceProvider$3;->this$0:Lorg/bouncycastle/jcajce/provider/drbg/DRBG$URLSeededEntropySourceProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    add-int/lit8 p2, p2, 0x7

    div-int/lit8 p2, p2, 0x8

    iput p2, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$URLSeededEntropySourceProvider$3;->numBytes:I

    return-void
.end method


# virtual methods
.method public entropySize()I
    .registers 1

    iget p0, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$URLSeededEntropySourceProvider$3;->val$bitsRequired:I

    return p0
.end method

.method public getEntropy()[B
    .registers 3

    const-wide/16 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$URLSeededEntropySourceProvider$3;->getEntropy(J)[B

    move-result-object p0
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "initial entropy fetch interrupted"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getEntropy(J)[B
    .registers 8

    iget v0, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$URLSeededEntropySourceProvider$3;->numBytes:I

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_5
    if-eq v2, v0, :cond_17

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$URLSeededEntropySourceProvider$3;->this$0:Lorg/bouncycastle/jcajce/provider/drbg/DRBG$URLSeededEntropySourceProvider;

    sub-int v4, v0, v2

    # invokes: Lorg/bouncycastle/jcajce/provider/drbg/DRBG$URLSeededEntropySourceProvider;->privilegedRead([BII)I
    invoke-static {v3, v1, v2, v4}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$URLSeededEntropySourceProvider;->access$400(Lorg/bouncycastle/jcajce/provider/drbg/DRBG$URLSeededEntropySourceProvider;[BII)I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_17

    add-int/2addr v2, v3

    # invokes: Lorg/bouncycastle/jcajce/provider/drbg/DRBG;->sleep(J)V
    invoke-static {p1, p2}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG;->access$500(J)V

    goto :goto_5

    :cond_17
    if-ne v2, v0, :cond_1a

    return-object v1

    :cond_1a
    new-instance p0, Ljava/lang/InternalError;

    const-string p1, "unable to fully read random source"

    invoke-direct {p0, p1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isPredictionResistant()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method
