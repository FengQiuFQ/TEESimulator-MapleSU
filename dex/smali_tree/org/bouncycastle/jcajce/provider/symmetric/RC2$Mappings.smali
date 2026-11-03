.class public Lorg/bouncycastle/jcajce/provider/symmetric/RC2$Mappings;
.super Lorg/bouncycastle/jcajce/provider/util/AlgorithmProvider;


# static fields
.field private static final PREFIX:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lorg/bouncycastle/jcajce/provider/symmetric/RC2;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jcajce/provider/symmetric/RC2$Mappings;->PREFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/util/AlgorithmProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public configure(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)V
    .registers 14

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lorg/bouncycastle/jcajce/provider/symmetric/RC2$Mappings;->PREFIX:Ljava/lang/String;

    const-string v1, "$AlgParamGen"

    const-string v2, "AlgorithmParameterGenerator.RC2"

    invoke-static {p0, v0, v1, p1, v2}, Lb/b;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, "AlgorithmParameterGenerator.1.2.840.113549.3.2"

    invoke-static {p0, v0, v1, p1, v2}, Lb/b;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "$KeyGenerator"

    const-string v2, "KeyGenerator.RC2"

    invoke-static {p0, v0, v1, p1, v2}, Lb/b;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, "KeyGenerator.1.2.840.113549.3.2"

    invoke-static {p0, v0, v1, p1, v2}, Lb/b;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "$AlgParams"

    const-string v2, "AlgorithmParameters.RC2"

    invoke-static {p0, v0, v1, p1, v2}, Lb/b;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, "AlgorithmParameters.1.2.840.113549.3.2"

    invoke-static {p0, v0, v1, p1, v2}, Lb/b;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "$ECB"

    const-string v2, "Cipher.RC2"

    invoke-static {p0, v0, v1, p1, v2}, Lb/b;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "$Wrap"

    const-string v2, "Cipher.RC2WRAP"

    invoke-static {p0, v0, v1, p1, v2}, Lb/b;->w(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    sget-object p0, Ld0/r;->d0:Lm/q;

    const-string v1, "RC2WRAP"

    const-string v2, "Alg.Alias.Cipher"

    invoke-interface {p1, v2, p0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lm/q;Ljava/lang/String;)V

    sget-object p0, Ld0/r;->F:Lm/q;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "$CBC"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Cipher"

    invoke-interface {p1, v3, p0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lm/q;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$CBCMAC"

    const-string v3, "Mac.RC2MAC"

    invoke-static {p0, v0, v1, p1, v3}, Lb/b;->w(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    const-string p0, "$CFB8MAC"

    const-string v1, "Alg.Alias.Mac.RC2"

    const-string v3, "RC2MAC"

    invoke-static {v1, v3, p1, v0, p0}, Lb/b;->i(Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Mac.RC2MAC/CFB8"

    invoke-interface {p1, v1, p0}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "Alg.Alias.Mac.RC2/CFB8"

    const-string v1, "RC2MAC/CFB8"

    invoke-interface {p1, p0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "Alg.Alias.SecretKeyFactory.PBEWITHMD2ANDRC2-CBC"

    const-string v1, "PBEWITHMD2ANDRC2"

    invoke-interface {p1, p0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "Alg.Alias.SecretKeyFactory.PBEWITHMD5ANDRC2-CBC"

    const-string v3, "PBEWITHMD5ANDRC2"

    invoke-interface {p1, p0, v3}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "Alg.Alias.SecretKeyFactory.PBEWITHSHA1ANDRC2-CBC"

    const-string v4, "PBEWITHSHA1ANDRC2"

    invoke-interface {p1, p0, v4}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ld0/r;->u:Lm/q;

    const-string v5, "Alg.Alias.SecretKeyFactory"

    invoke-interface {p1, v5, p0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lm/q;Ljava/lang/String;)V

    sget-object v6, Ld0/r;->w:Lm/q;

    invoke-interface {p1, v5, v6, v3}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lm/q;Ljava/lang/String;)V

    sget-object v7, Ld0/r;->A:Lm/q;

    invoke-interface {p1, v5, v7, v4}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lm/q;Ljava/lang/String;)V

    const-string v5, "Alg.Alias.SecretKeyFactory.1.2.840.113549.1.12.1.5"

    const-string v8, "PBEWITHSHAAND128BITRC2-CBC"

    const-string v9, "Alg.Alias.SecretKeyFactory.1.2.840.113549.1.12.1.6"

    const-string v10, "PBEWITHSHAAND40BITRC2-CBC"

    invoke-static {p1, v5, v8, v9, v10}, Lb/b;->r(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "$PBEWithMD2KeyFactory"

    const-string v11, "SecretKeyFactory.PBEWITHMD2ANDRC2"

    invoke-static {v5, v0, v9, p1, v11}, Lb/b;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "$PBEWithMD5KeyFactory"

    const-string v11, "SecretKeyFactory.PBEWITHMD5ANDRC2"

    invoke-static {v5, v0, v9, p1, v11}, Lb/b;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "$PBEWithSHA1KeyFactory"

    const-string v11, "SecretKeyFactory.PBEWITHSHA1ANDRC2"

    invoke-static {v5, v0, v9, p1, v11}, Lb/b;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "$PBEWithSHAAnd128BitKeyFactory"

    const-string v11, "SecretKeyFactory.PBEWITHSHAAND128BITRC2-CBC"

    invoke-static {v5, v0, v9, p1, v11}, Lb/b;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "$PBEWithSHAAnd40BitKeyFactory"

    const-string v11, "SecretKeyFactory.PBEWITHSHAAND40BITRC2-CBC"

    invoke-static {v5, v0, v9, p1, v11}, Lb/b;->w(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    invoke-interface {p1, v2, p0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lm/q;Ljava/lang/String;)V

    invoke-interface {p1, v2, v6, v3}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lm/q;Ljava/lang/String;)V

    invoke-interface {p1, v2, v7, v4}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lm/q;Ljava/lang/String;)V

    const-string p0, "Alg.Alias.AlgorithmParameters.1.2.840.113549.1.12.1.5"

    const-string v1, "PKCS12PBE"

    invoke-interface {p1, p0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "Alg.Alias.AlgorithmParameters.1.2.840.113549.1.12.1.6"

    invoke-interface {p1, p0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "Alg.Alias.AlgorithmParameters.PBEWithSHAAnd3KeyTripleDES"

    invoke-interface {p1, p0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ld0/r;->s0:Lm/q;

    invoke-interface {p1, v2, p0, v8}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lm/q;Ljava/lang/String;)V

    sget-object p0, Ld0/r;->t0:Lm/q;

    invoke-interface {p1, v2, p0, v10}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lm/q;Ljava/lang/String;)V

    const-string p0, "Alg.Alias.Cipher.PBEWITHSHA1AND128BITRC2-CBC"

    const-string v2, "Alg.Alias.Cipher.PBEWITHSHA1AND40BITRC2-CBC"

    invoke-static {p1, p0, v8, v2, v10}, Lb/b;->r(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, "$PBEWithSHA1AndRC2"

    const-string v5, "Cipher.PBEWITHSHA1ANDRC2"

    invoke-static {p0, v0, v2, p1, v5}, Lb/b;->w(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    const-string p0, "Alg.Alias.Cipher.PBEWITHSHAANDRC2-CBC"

    const-string v2, "Alg.Alias.Cipher.PBEWITHSHA1ANDRC2-CBC"

    invoke-static {p1, p0, v4, v2, v4}, Lb/b;->r(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, "$PBEWithSHAAnd128BitRC2"

    const-string v4, "Cipher.PBEWITHSHAAND128BITRC2-CBC"

    invoke-static {p0, v0, v2, p1, v4}, Lb/b;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, "$PBEWithSHAAnd40BitRC2"

    const-string v4, "Cipher.PBEWITHSHAAND40BITRC2-CBC"

    invoke-static {p0, v0, v2, p1, v4}, Lb/b;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, "$PBEWithMD5AndRC2"

    const-string v4, "Cipher.PBEWITHMD5ANDRC2"

    invoke-static {p0, v0, v2, p1, v4}, Lb/b;->w(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    const-string p0, "Alg.Alias.Cipher.PBEWITHMD5ANDRC2-CBC"

    invoke-interface {p1, p0, v3}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "Alg.Alias.AlgorithmParameters.PBEWITHSHA1ANDRC2"

    invoke-interface {p1, p0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAANDRC2"

    invoke-interface {p1, p0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "Alg.Alias.AlgorithmParameters.PBEWITHSHA1ANDRC2-CBC"

    invoke-interface {p1, p0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAAND40BITRC2-CBC"

    invoke-interface {p1, p0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAAND128BITRC2-CBC"

    invoke-interface {p1, p0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
