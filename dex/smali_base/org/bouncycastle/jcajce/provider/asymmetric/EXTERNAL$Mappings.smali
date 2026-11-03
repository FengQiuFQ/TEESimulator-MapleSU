.class public Lorg/bouncycastle/jcajce/provider/asymmetric/EXTERNAL$Mappings;
.super Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public configure(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)V
    .registers 5

    const-string p0, "KeyFactory."

    const-string v0, "KeyFactory.EXTERNAL"

    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.EXTERNAL$KeyFactory"

    invoke-static {p1, v0, v1, p0}, Lb/b;->q(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v0, Lo/a;->r1:Lm/q;

    const-string v2, "KeyFactory.OID."

    invoke-static {v1, v2, p0, v0, p1}, Lb/b;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Lm/q;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lorg/bouncycastle/jcajce/provider/asymmetric/EXTERNAL$ExternalKeyInfoConverter;

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/EXTERNAL$ExternalKeyInfoConverter;-><init>(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)V

    # setter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EXTERNAL;->baseConverter:Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;
    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/EXTERNAL;->access$002(Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;

    # getter for: Lorg/bouncycastle/jcajce/provider/asymmetric/EXTERNAL;->baseConverter:Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EXTERNAL;->access$000()Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addKeyInfoConverter(Lm/q;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    return-void
.end method
