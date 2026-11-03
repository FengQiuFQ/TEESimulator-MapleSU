.class public Lorg/bouncycastle/jcajce/provider/symmetric/Zuc$Mappings;
.super Lorg/bouncycastle/jcajce/provider/symmetric/SymmetricAlgorithmProvider;


# static fields
.field private static final PREFIX:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lorg/bouncycastle/jcajce/provider/symmetric/Zuc;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jcajce/provider/symmetric/Zuc$Mappings;->PREFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/SymmetricAlgorithmProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public configure(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)V
    .registers 6

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lorg/bouncycastle/jcajce/provider/symmetric/Zuc$Mappings;->PREFIX:Ljava/lang/String;

    const-string v1, "$Zuc128"

    const-string v2, "Cipher.ZUC-128"

    invoke-static {p0, v0, v1, p1, v2}, Lb/b;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "$KeyGen128"

    const-string v2, "KeyGenerator.ZUC-128"

    invoke-static {p0, v0, v1, p1, v2}, Lb/b;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "$AlgParams"

    const-string v2, "AlgorithmParameters.ZUC-128"

    invoke-static {p0, v0, v1, p1, v2}, Lb/b;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, "$Zuc256"

    const-string v3, "Cipher.ZUC-256"

    invoke-static {p0, v0, v2, p1, v3}, Lb/b;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, "$KeyGen256"

    const-string v3, "KeyGenerator.ZUC-256"

    invoke-static {p0, v0, v2, p1, v3}, Lb/b;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, "AlgorithmParameters.ZUC-256"

    invoke-static {p0, v0, v1, p1, v2}, Lb/b;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "$ZucMac128"

    const-string v2, "Mac.ZUC-128"

    invoke-static {p0, v0, v1, p1, v2}, Lb/b;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "$ZucMac256"

    const-string v2, "Mac.ZUC-256"

    invoke-static {p0, v0, v1, p1, v2}, Lb/b;->w(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    const-string p0, "$ZucMac256_64"

    const-string v1, "Alg.Alias.Mac.ZUC-256-128"

    const-string v2, "ZUC-256"

    invoke-static {v1, v2, p1, v0, p0}, Lb/b;->i(Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "$ZucMac256_32"

    const-string v2, "Mac.ZUC-256-64"

    invoke-static {v2, p0, p1, v0, v1}, Lb/b;->i(Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Mac.ZUC-256-32"

    invoke-interface {p1, v0, p0}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
