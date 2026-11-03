.class public Lorg/bouncycastle/jcajce/provider/symmetric/DES$Mappings;
.super Lorg/bouncycastle/jcajce/provider/util/AlgorithmProvider;


# static fields
.field private static final PACKAGE:Ljava/lang/String; = "org.bouncycastle.jcajce.provider.symmetric"

.field private static final PREFIX:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lorg/bouncycastle/jcajce/provider/symmetric/DES;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jcajce/provider/symmetric/DES$Mappings;->PREFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/util/AlgorithmProvider;-><init>()V

    return-void
.end method

.method private addAlias(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lm/q;Ljava/lang/String;)V
    .registers 5

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Alg.Alias.KeyGenerator."

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lm/q;->u()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0, p3}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Alg.Alias.KeyFactory."

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lm/q;->u()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0, p3}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public configure(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)V
    .registers 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/bouncycastle/jcajce/provider/symmetric/DES$Mappings;->PREFIX:Ljava/lang/String;

    const-string v2, "$ECB"

    const-string v3, "Cipher.DES"

    invoke-static {v0, v1, v2, p1, v3}, Lb/b;->w(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    sget-object v0, Ly1/b;->b:Lm/q;

    const-string v2, "$CBC"

    const-string v3, "Cipher"

    invoke-static {p1, v1, v2, v3, v0}, Lb/b;->A(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lm/q;)V

    const-string v2, "DES"

    invoke-direct {p0, p1, v0, v2}, Lorg/bouncycastle/jcajce/provider/symmetric/DES$Mappings;->addAlias(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lm/q;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "$RFC3211"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v3, "Cipher.DESRFC3211WRAP"

    invoke-interface {p1, v3, p0}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "$KeyGenerator"

    const-string v4, "KeyGenerator.DES"

    invoke-static {p0, v3, p1, v4, v1}, Lb/b;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, "$KeyFactory"

    const-string v4, "SecretKeyFactory.DES"

    invoke-static {p0, v3, p1, v4, v1}, Lb/b;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, "$CMAC"

    const-string v4, "Mac.DESCMAC"

    invoke-static {p0, v3, p1, v4, v1}, Lb/b;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, "$CBCMAC"

    const-string v4, "Mac.DESMAC"

    invoke-static {p0, v3, p1, v4}, Lb/b;->x(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    const-string p0, "$DESCFB8"

    const-string v3, "Alg.Alias.Mac.DES"

    const-string v4, "DESMAC"

    invoke-static {v3, v4, p1, v1, p0}, Lb/b;->i(Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "Mac.DESMAC/CFB8"

    const-string v4, "Alg.Alias.Mac.DES/CFB8"

    const-string v5, "DESMAC/CFB8"

    invoke-static {p1, v3, p0, v4, v5}, Lb/b;->r(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, "$DES64"

    const-string v4, "Mac.DESMAC64"

    invoke-static {p0, v1, v3, p1, v4}, Lb/b;->w(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    const-string p0, "$DES64with7816d4"

    const-string v3, "Alg.Alias.Mac.DES64"

    const-string v4, "DESMAC64"

    invoke-static {v3, v4, p1, v1, p0}, Lb/b;->i(Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "Mac.DESMAC64WITHISO7816-4PADDING"

    invoke-interface {p1, v3, p0}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "Alg.Alias.Mac.DES64WITHISO7816-4PADDING"

    const-string v3, "DESMAC64WITHISO7816-4PADDING"

    invoke-interface {p1, p0, v3}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "Alg.Alias.Mac.DESISO9797ALG1MACWITHISO7816-4PADDING"

    const-string v4, "Alg.Alias.Mac.DESISO9797ALG1WITHISO7816-4PADDING"

    invoke-static {p1, p0, v3, v4, v3}, Lb/b;->r(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, "$DES9797Alg3"

    const-string v4, "Mac.DESWITHISO9797"

    invoke-static {p0, v1, v3, p1, v4}, Lb/b;->w(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    const-string p0, "Alg.Alias.Mac.DESISO9797MAC"

    const-string v4, "DESWITHISO9797"

    invoke-static {p0, v4, p1, v1, v3}, Lb/b;->i(Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "Mac.ISO9797ALG3MAC"

    const-string v4, "Alg.Alias.Mac.ISO9797ALG3"

    const-string v5, "ISO9797ALG3MAC"

    invoke-static {p1, v3, p0, v4, v5}, Lb/b;->r(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, "$DES9797Alg3with7816d4"

    const-string v4, "Mac.ISO9797ALG3WITHISO7816-4PADDING"

    invoke-static {p0, v1, v3, p1, v4}, Lb/b;->w(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    const-string p0, "Alg.Alias.Mac.ISO9797ALG3MACWITHISO7816-4PADDING"

    const-string v3, "ISO9797ALG3WITHISO7816-4PADDING"

    invoke-interface {p1, p0, v3}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "AlgorithmParameters.DES"

    const-string v3, "org.bouncycastle.jcajce.provider.symmetric.util.IvAlgorithmParameters"

    invoke-interface {p1, p0, v3}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "Alg.Alias.AlgorithmParameters"

    invoke-static {p1, p0, v2, v1, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->f(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lm/q;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, "$AlgParamGen"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v3, "AlgorithmParameterGenerator.DES"

    invoke-interface {p1, v3, p0}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v3, "Alg.Alias.AlgorithmParameterGenerator."

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v1, p0, v0, p1}, Lb/b;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Lm/q;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "$PBEWithMD2"

    const-string v2, "Cipher.PBEWITHMD2ANDDES"

    invoke-static {p0, v0, p1, v2, v1}, Lb/b;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "$PBEWithMD5"

    const-string v2, "Cipher.PBEWITHMD5ANDDES"

    invoke-static {p0, v0, p1, v2, v1}, Lb/b;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "$PBEWithSHA1"

    const-string v2, "Cipher.PBEWITHSHA1ANDDES"

    invoke-static {p0, v0, p1, v2}, Lb/b;->x(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    sget-object p0, Ld0/r;->t:Lm/q;

    const-string v0, "Alg.Alias.Cipher"

    const-string v2, "PBEWITHMD2ANDDES"

    invoke-interface {p1, v0, p0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lm/q;Ljava/lang/String;)V

    sget-object v3, Ld0/r;->v:Lm/q;

    const-string v4, "PBEWITHMD5ANDDES"

    invoke-interface {p1, v0, v3, v4}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lm/q;Ljava/lang/String;)V

    sget-object v5, Ld0/r;->z:Lm/q;

    const-string v6, "PBEWITHSHA1ANDDES"

    invoke-interface {p1, v0, v5, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lm/q;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Cipher.PBEWITHMD2ANDDES-CBC"

    invoke-interface {p1, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Cipher.PBEWITHMD5ANDDES-CBC"

    const-string v7, "Alg.Alias.Cipher.PBEWITHSHA1ANDDES-CBC"

    invoke-static {p1, v0, v4, v7, v6}, Lb/b;->r(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "$PBEWithMD2KeyFactory"

    const-string v8, "SecretKeyFactory.PBEWITHMD2ANDDES"

    invoke-static {v0, v1, v7, p1, v8}, Lb/b;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "$PBEWithMD5KeyFactory"

    const-string v8, "SecretKeyFactory.PBEWITHMD5ANDDES"

    invoke-static {v0, v1, v7, p1, v8}, Lb/b;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "$PBEWithSHA1KeyFactory"

    const-string v8, "SecretKeyFactory.PBEWITHSHA1ANDDES"

    invoke-static {v0, v1, v7, p1, v8}, Lb/b;->w(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.SecretKeyFactory.PBEWITHMD2ANDDES-CBC"

    invoke-interface {p1, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.SecretKeyFactory.PBEWITHMD5ANDDES-CBC"

    invoke-interface {p1, v0, v4}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.SecretKeyFactory.PBEWITHSHA1ANDDES-CBC"

    invoke-interface {p1, v0, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Alg.Alias.SecretKeyFactory."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v1, p0, v3, p1}, Lb/b;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Lm/q;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p0, v5, p1, v6}, Lb/b;->y(Ljava/lang/StringBuilder;Lm/q;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    return-void
.end method
