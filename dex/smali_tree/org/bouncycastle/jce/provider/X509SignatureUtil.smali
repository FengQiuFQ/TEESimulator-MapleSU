.class Lorg/bouncycastle/jce/provider/X509SignatureUtil;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDigestAlgName(Lm/q;)Ljava/lang/String;
    .registers 2

    sget-object v0, Ld0/r;->J:Lm/q;

    invoke-virtual {v0, p0}, Lm/u;->n(Lm/u;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string p0, "MD5"

    return-object p0

    :cond_b
    sget-object v0, Ly1/b;->f:Lm/q;

    invoke-virtual {v0, p0}, Lm/u;->n(Lm/u;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string p0, "SHA1"

    return-object p0

    :cond_16
    sget-object v0, Lz/b;->d:Lm/q;

    invoke-virtual {v0, p0}, Lm/u;->n(Lm/u;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string p0, "SHA224"

    return-object p0

    :cond_21
    sget-object v0, Lz/b;->a:Lm/q;

    invoke-virtual {v0, p0}, Lm/u;->n(Lm/u;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string p0, "SHA256"

    return-object p0

    :cond_2c
    sget-object v0, Lz/b;->b:Lm/q;

    invoke-virtual {v0, p0}, Lm/u;->n(Lm/u;)Z

    move-result v0

    if-eqz v0, :cond_37

    const-string p0, "SHA384"

    return-object p0

    :cond_37
    sget-object v0, Lz/b;->c:Lm/q;

    invoke-virtual {v0, p0}, Lm/u;->n(Lm/u;)Z

    move-result v0

    if-eqz v0, :cond_42

    const-string p0, "SHA512"

    return-object p0

    :cond_42
    sget-object v0, Lg0/b;->b:Lm/q;

    invoke-virtual {v0, p0}, Lm/u;->n(Lm/u;)Z

    move-result v0

    if-eqz v0, :cond_4d

    const-string p0, "RIPEMD128"

    return-object p0

    :cond_4d
    sget-object v0, Lg0/b;->a:Lm/q;

    invoke-virtual {v0, p0}, Lm/u;->n(Lm/u;)Z

    move-result v0

    if-eqz v0, :cond_58

    const-string p0, "RIPEMD160"

    return-object p0

    :cond_58
    sget-object v0, Lg0/b;->c:Lm/q;

    invoke-virtual {v0, p0}, Lm/u;->n(Lm/u;)Z

    move-result v0

    if-eqz v0, :cond_63

    const-string p0, "RIPEMD256"

    return-object p0

    :cond_63
    sget-object v0, Lr/a;->a:Lm/q;

    invoke-virtual {v0, p0}, Lm/u;->n(Lm/u;)Z

    move-result v0

    if-eqz v0, :cond_6e

    const-string p0, "GOST3411"

    return-object p0

    :cond_6e
    invoke-virtual {p0}, Lm/q;->u()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getExtensionValue(Ll0/w;Ljava/lang/String;)[B
    .registers 4

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

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "error parsing "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lb/b;->d(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_25
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getSignatureName(Ll0/b;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Ll0/b;->c:Lm/q;

    iget-object p0, p0, Ll0/b;->d:Lm/f;

    invoke-static {p0}, Lorg/bouncycastle/jce/provider/X509SignatureUtil;->isAbsentOrEmptyParameters(Lm/f;)Z

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

    invoke-static {p0}, Lorg/bouncycastle/jce/provider/X509SignatureUtil;->getDigestAlgName(Lm/q;)Ljava/lang/String;

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

    invoke-static {p0}, Lorg/bouncycastle/jce/provider/X509SignatureUtil;->getDigestAlgName(Lm/q;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "withECDSA"

    goto :goto_25

    :cond_44
    invoke-virtual {v0}, Lm/q;->u()Ljava/lang/String;

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

.method public static setSignatureParameters(Ljava/security/Signature;Lm/f;)V
    .registers 4

    invoke-static {p1}, Lorg/bouncycastle/jce/provider/X509SignatureUtil;->isAbsentOrEmptyParameters(Lm/f;)Z

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
