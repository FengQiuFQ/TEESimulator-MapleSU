.class public Lorg/bouncycastle/jcajce/provider/symmetric/Camellia$Mappings;
.super Lorg/bouncycastle/jcajce/provider/symmetric/SymmetricAlgorithmProvider;


# static fields
.field private static final PREFIX:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lorg/bouncycastle/jcajce/provider/symmetric/Camellia;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jcajce/provider/symmetric/Camellia$Mappings;->PREFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/SymmetricAlgorithmProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public configure(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)V
    .registers 14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/bouncycastle/jcajce/provider/symmetric/Camellia$Mappings;->PREFIX:Ljava/lang/String;

    const-string v2, "$AlgParams"

    const-string v3, "AlgorithmParameters.CAMELLIA"

    invoke-static {v0, v1, v2, p1, v3}, Lb/b;->w(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    sget-object v0, Lx1/a;->a:Lm/q;

    const-string v2, "Alg.Alias.AlgorithmParameters"

    const-string v3, "CAMELLIA"

    invoke-interface {p1, v2, v0, v3}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lm/q;Ljava/lang/String;)V

    sget-object v4, Lx1/a;->b:Lm/q;

    invoke-interface {p1, v2, v4, v3}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lm/q;Ljava/lang/String;)V

    sget-object v5, Lx1/a;->c:Lm/q;

    invoke-static {p1, v2, v3, v1, v5}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->f(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lm/q;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "$AlgParamGen"

    const-string v7, "AlgorithmParameterGenerator.CAMELLIA"

    invoke-static {v2, v6, p1, v7}, Lb/b;->x(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    const-string v2, "Alg.Alias.AlgorithmParameterGenerator"

    invoke-interface {p1, v2, v0, v3}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lm/q;Ljava/lang/String;)V

    invoke-interface {p1, v2, v4, v3}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lm/q;Ljava/lang/String;)V

    invoke-static {p1, v2, v3, v1, v5}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->f(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lm/q;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "$ECB"

    const-string v7, "Cipher.CAMELLIA"

    invoke-static {v2, v6, p1, v7, v1}, Lb/b;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "$CBC128"

    const-string v7, "Cipher"

    invoke-static {v6, v7, v2, v0, p1}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Lm/q;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "$CBC192"

    invoke-static {v2, v1, v6}, Lb/b;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v7, v2, v1, v4}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->f(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lm/q;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "$CBC256"

    invoke-static {v6, v7, v2, v5, p1}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Lm/q;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "$RFC3211Wrap"

    const-string v8, "Cipher.CAMELLIARFC3211WRAP"

    invoke-static {v2, v1, v6, p1, v8}, Lb/b;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "$Wrap"

    const-string v8, "Cipher.CAMELLIAWRAP"

    invoke-static {v2, v1, v6, p1, v8}, Lb/b;->w(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    sget-object v2, Lx1/a;->d:Lm/q;

    const-string v6, "$Wrap128"

    invoke-static {p1, v1, v6, v7, v2}, Lb/b;->A(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lm/q;)V

    sget-object v6, Lx1/a;->e:Lm/q;

    const-string v8, "$Wrap192"

    invoke-static {p1, v1, v8, v7, v6}, Lb/b;->A(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lm/q;)V

    sget-object v8, Lx1/a;->f:Lm/q;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "$Wrap256"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v7, v8, v9}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lm/q;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "$KeyFactory"

    const-string v10, "SecretKeyFactory.CAMELLIA"

    invoke-static {v7, v1, v9, p1, v10}, Lb/b;->w(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    const-string v7, "Alg.Alias.SecretKeyFactory"

    invoke-interface {p1, v7, v0, v3}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lm/q;Ljava/lang/String;)V

    invoke-interface {p1, v7, v4, v3}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lm/q;Ljava/lang/String;)V

    invoke-static {p1, v7, v3, v1, v5}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->f(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lm/q;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "$KeyGen"

    const-string v10, "KeyGenerator.CAMELLIA"

    invoke-static {v7, v9, p1, v10, v1}, Lb/b;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "$KeyGen128"

    const-string v11, "KeyGenerator"

    invoke-static {v10, v11, v7, v2, p1}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Lm/q;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "$KeyGen192"

    invoke-static {v2, v1, v7}, Lb/b;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v11, v2, v1, v6}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->f(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lm/q;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "$KeyGen256"

    invoke-static {v6, v11, v2, v8, p1}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Lm/q;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v2, v1, v10}, Lb/b;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v11, v2, v1, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->f(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lm/q;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v7, v11, v0, v4, p1}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Lm/q;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v0, v1, v6}, Lb/b;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v11, v0, v1, v5}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->f(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lm/q;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "$GMAC"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v9}, Lb/b;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v3, v0, v2}, Lorg/bouncycastle/jcajce/provider/symmetric/SymmetricAlgorithmProvider;->addGMacAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "$Poly1305"

    invoke-static {v1, v0}, Lb/b;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "$Poly1305KeyGen"

    invoke-static {v1, v2}, Lb/b;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v3, v0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/SymmetricAlgorithmProvider;->addPoly1305Algorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
