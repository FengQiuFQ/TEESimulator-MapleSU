.class Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider;
.super Ljava/lang/Object;

# interfaces
.implements Lg1/b;


# instance fields
.field private final predictionResistant:Z

.field private final random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider;->random:Ljava/security/SecureRandom;

    iput-boolean p2, p0, Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider;->predictionResistant:Z

    return-void
.end method

.method public static synthetic access$000(Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider;)Z
    .registers 1

    iget-boolean p0, p0, Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider;->predictionResistant:Z

    return p0
.end method

.method public static synthetic access$100(J)V
    .registers 2

    invoke-static {p0, p1}, Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider;->sleep(J)V

    return-void
.end method

.method public static synthetic access$200(Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider;)Ljava/security/SecureRandom;
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider;->random:Ljava/security/SecureRandom;

    return-object p0
.end method

.method private static sleep(J)V
    .registers 4

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_9

    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V

    :cond_9
    return-void
.end method


# virtual methods
.method public get(I)Lg1/a;
    .registers 3

    new-instance v0, Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider$1;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider$1;-><init>(Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider;I)V

    return-object v0
.end method
