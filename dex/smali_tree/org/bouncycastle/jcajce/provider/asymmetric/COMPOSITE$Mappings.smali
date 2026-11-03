.class public Lorg/bouncycastle/jcajce/provider/asymmetric/COMPOSITE$Mappings;
.super Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public configure(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)V
    .registers 7

    const-string p0, "KeyFactory.COMPOSITE"

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.COMPOSITE$KeyFactory"

    const-string v1, "KeyFactory."

    invoke-static {p1, p0, v0, v1}, Lb/b;->q(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v2, Lv1/c;->u:Lm/q;

    const-string v3, "KeyFactory.OID."

    invoke-static {v0, v3, p0, v2, p1}, Lb/b;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Lm/q;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {v0, v1, p0, v2, p1}, Lb/b;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Lm/q;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v1, Lv1/c;->v:Lm/q;

    invoke-static {v0, v3, p0, v1, p1}, Lb/b;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Lm/q;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0, v0}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;

    new-instance v0, Lb1/a;

    move-object v3, p1

    check-cast v3, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    const/4 v4, 0x1

    invoke-direct {v0, v4, v3}, Lb1/a;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;-><init>(Le2/b;)V

    # setter for: Lorg/bouncycastle/jcajce/provider/asymmetric/COMPOSITE;->baseConverter:Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;
    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/COMPOSITE;->access$002(Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/COMPOSITE;->baseConverter:Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/COMPOSITE;->access$000()Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;

    move-result-object p0

    invoke-interface {p1, v2, p0}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addKeyInfoConverter(Lm/q;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/COMPOSITE;->baseConverter:Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/COMPOSITE;->access$000()Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;

    move-result-object p0

    invoke-interface {p1, v1, p0}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addKeyInfoConverter(Lm/q;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    return-void
.end method
