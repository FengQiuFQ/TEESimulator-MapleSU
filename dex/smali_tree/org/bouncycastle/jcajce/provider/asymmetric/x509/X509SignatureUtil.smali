.class Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509SignatureUtil;
.super Ljava/lang/Object;


# static fields
.field private static final algNames:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509SignatureUtil;->algNames:Ljava/util/Map;

    sget-object v1, Lo1/a;->c:Lm/q;

    const-string v2, "Ed25519"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lo1/a;->d:Lm/q;

    const-string v2, "Ed448"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ly1/b;->g:Lm/q;

    const-string v2, "SHA1withDSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lm0/m;->s1:Lm/q;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areEquivalentAlgorithms(Ll0/b;Ll0/b;)Z
    .registers 4

    iget-object v0, p0, Ll0/b;->c:Lm/q;

    iget-object p0, p0, Ll0/b;->d:Lm/f;

    iget-object v1, p1, Ll0/b;->c:Lm/q;

    iget-object p1, p1, Ll0/b;->d:Lm/f;

    invoke-virtual {v0, v1}, Lm/u;->n(Lm/u;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 p0, 0x0

    return p0

    :cond_10
    const-string v0, "org.bouncycastle.x509.allow_absent_equiv_NULL"

    invoke-static {v0}, Lm4/h;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509SignatureUtil;->isAbsentOrEmptyParameters(Lm/f;)Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509SignatureUtil;->isAbsentOrEmptyParameters(Lm/f;)Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 p0, 0x1

    return p0

    :cond_26
    invoke-static {p0, p1}, Lm4/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static findAlgName(Lm/q;)Ljava/lang/String;
    .registers 5

    const-string v0, "BC"

    invoke-static {v0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-static {v0, p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509SignatureUtil;->lookupAlg(Ljava/security/Provider;Lm/q;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    return-object v1

    :cond_f
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v1

    const/4 v2, 0x0

    :goto_14
    array-length v3, v1

    if-eq v2, v3, :cond_25

    aget-object v3, v1, v2

    if-eq v0, v3, :cond_22

    invoke-static {v3, p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509SignatureUtil;->lookupAlg(Ljava/security/Provider;Lm/q;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_22

    return-object v3

    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_25
    invoke-virtual {p0}, Lm/q;->u()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getDigestAlgName(Lm/q;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Le2/c;->a(Lm/q;)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_2e

    const-string v1, "SHA3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2e
    return-object p0
.end method

.method public static getExtensionValue(Ll0/w;Ljava/lang/String;)[B
    .registers 3

    if-eqz p1, :cond_25

    invoke-static {p1}, Lm/q;->B(Ljava/lang/String;)Lm/q;

    move-result-object p1

    if-eqz p1, :cond_25

    invoke-static {p0, p1}, Ll0/w;->i(Ll0/w;Lm/q;)Lm/r;

    move-result-object p0

    if-eqz p0, :cond_25

    :try_start_e
    invoke-virtual {p0}, Lm/n;->getEncoded()[B

    move-result-object p0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_12} :catch_13

    return-object p0

    :catch_13
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "error parsing "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lb/b;->B(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_25
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getSignatureName(Ll0/b;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Ll0/b;->c:Lm/q;

    iget-object p0, p0, Ll0/b;->d:Lm/f;

    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509SignatureUtil;->isAbsentOrEmptyParameters(Lm/f;)Z

    move-result v1

    if-nez v1, :cond_44

    sget-object v1, Ld0/r;->k:Lm/q;

    invoke-virtual {v1, v0}, Lm/u;->n(Lm/u;)Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-static {p0}, Ld0/y;->h(Ljava/lang/Object;)Ld0/y;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Ld0/y;->c:Ll0/b;

    iget-object p0, p0, Ll0/b;->c:Lm/q;

    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509SignatureUtil;->getDigestAlgName(Lm/q;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "withRSAandMGF1"

    :goto_25
    invoke-static {v0, p0, v1}, Lb/b;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2a
    sget-object v1, Lm0/m;->N0:Lm/q;

    invoke-virtual {v1, v0}, Lm/u;->n(Lm/u;)Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-static {p0}, Ll0/b;->h(Ljava/lang/Object;)Ll0/b;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Ll0/b;->c:Lm/q;

    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509SignatureUtil;->getDigestAlgName(Lm/q;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "withECDSA"

    goto :goto_25

    :cond_44
    sget-object p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509SignatureUtil;->algNames:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_4f

    return-object p0

    :cond_4f
    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509SignatureUtil;->findAlgName(Lm/q;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static isAbsentOrEmptyParameters(Lm/f;)Z
    .registers 2

    if-eqz p0, :cond_d

    sget-object v0, Lm/v0;->d:Lm/v0;

    invoke-virtual {v0, p0}, Lm/u;->m(Lm/f;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    return p0

    :cond_d
    :goto_d
    const/4 p0, 0x1

    return p0
.end method

.method public static isCompositeAlgorithm(Ll0/b;)Z
    .registers 2

    sget-object v0, Lv1/c;->u:Lm/q;

    iget-object p0, p0, Ll0/b;->c:Lm/q;

    invoke-virtual {v0, p0}, Lm/u;->n(Lm/u;)Z

    move-result p0

    return p0
.end method

.method private static lookupAlg(Ljava/security/Provider;Lm/q;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Alg.Alias.Signature."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    return-object v0

    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Alg.Alias.Signature.OID."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2a

    return-object p0

    :cond_2a
    const/4 p0, 0x0

    return-object p0
.end method

.method public static prettyPrintSignature([BLjava/lang/StringBuilder;Ljava/lang/String;)V
    .registers 7

    array-length v0, p0

    const/4 v1, 0x0

    const-string v2, "            Signature: "

    const/16 v3, 0x14

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-le v0, v3, :cond_38

    invoke-static {p0, v1, v3}, Ln4/c;->e([BII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v3

    :goto_16
    array-length v1, p0

    if-ge v0, v1, :cond_37

    array-length v1, p0

    sub-int/2addr v1, v3

    const-string v2, "                       "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge v0, v1, :cond_2d

    invoke-static {p0, v0, v3}, Ln4/c;->e([BII)Ljava/lang/String;

    move-result-object v1

    :goto_26
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_34

    :cond_2d
    array-length v1, p0

    sub-int/2addr v1, v0

    invoke-static {p0, v0, v1}, Ln4/c;->e([BII)Ljava/lang/String;

    move-result-object v1

    goto :goto_26

    :goto_34
    add-int/lit8 v0, v0, 0x14

    goto :goto_16

    :cond_37
    return-void

    :cond_38
    array-length v0, p0

    invoke-static {p0, v1, v0}, Ln4/c;->e([BII)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static setSignatureParameters(Ljava/security/Signature;Lm/f;)V
    .registers 4

    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509SignatureUtil;->isAbsentOrEmptyParameters(Lm/f;)Z

    move-result v0

    if-nez v0, :cond_5a

    invoke-virtual {p0}, Ljava/security/Signature;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/security/Signature;->getProvider()Ljava/security/Provider;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/AlgorithmParameters;

    move-result-object v1

    :try_start_12
    invoke-interface {p1}, Lm/f;->d()Lm/u;

    move-result-object p1

    invoke-virtual {p1}, Lm/n;->getEncoded()[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/security/AlgorithmParameters;->init([B)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1d} :catch_48

    const-string p1, "MGF1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5a

    :try_start_25
    const-class p1, Ljava/security/spec/PSSParameterSpec;

    invoke-virtual {v1, p1}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/security/Signature;->setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_2e
    .catch Ljava/security/GeneralSecurityException; {:try_start_25 .. :try_end_2e} :catch_2f

    return-void

    :catch_2f
    move-exception p0

    new-instance p1, Ljava/security/SignatureException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception extracting parameters: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_48
    move-exception p0

    new-instance p1, Ljava/security/SignatureException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IOException decoding parameters: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lb/b;->c(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5a
    return-void
.end method
