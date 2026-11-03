.class Lorg/bouncycastle/jcajce/provider/drbg/DRBG$2;
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
    .registers 2

    new-instance p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$OneShotHybridEntropySource;

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$OneShotHybridEntropySource;-><init>(I)V

    return-object p0
.end method
