.class public Lorg/bouncycastle/jcajce/provider/symmetric/Serpent$AlgParams;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/IvAlgorithmParameters;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/IvAlgorithmParameters;-><init>()V

    return-void
.end method


# virtual methods
.method public engineToString()Ljava/lang/String;
    .registers 1

    const-string p0, "Serpent IV"

    return-object p0
.end method
