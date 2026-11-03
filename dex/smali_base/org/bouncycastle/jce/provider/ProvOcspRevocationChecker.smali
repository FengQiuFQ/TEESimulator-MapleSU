.class Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;
.super Ljava/lang/Object;

# interfaces
.implements La2/n;


# static fields
.field private static final DEFAULT_OCSP_MAX_RESPONSE_SIZE:I = 0x8000

.field private static final DEFAULT_OCSP_TIMEOUT:I = 0x3a98

.field private static final oids:Ljava/util/Map;


# instance fields
.field private final helper:Le2/b;

.field private isEnabledOCSP:Z

.field private ocspURL:Ljava/lang/String;

.field private parameters:La2/o;

.field private final parent:Lorg/bouncycastle/jce/provider/ProvRevocationChecker;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->oids:Ljava/util/Map;

    new-instance v1, Lm/q;

    const-string v2, "1.2.840.113549.1.1.5"

    invoke-direct {v1, v2}, Lm/q;-><init>(Ljava/lang/String;)V

    const-string v2, "SHA1WITHRSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ld0/r;->o:Lm/q;

    const-string v3, "SHA224WITHRSA"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ld0/r;->l:Lm/q;

    const-string v3, "SHA256WITHRSA"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ld0/r;->m:Lm/q;

    const-string v3, "SHA384WITHRSA"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ld0/r;->n:Lm/q;

    const-string v3, "SHA512WITHRSA"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lr/a;->m:Lm/q;

    const-string v3, "GOST3411WITHGOST3410"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lr/a;->n:Lm/q;

    const-string v3, "GOST3411WITHECGOST3410"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lz1/a;->g:Lm/q;

    const-string v3, "GOST3411-2012-256WITHECGOST3410-2012-256"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lz1/a;->h:Lm/q;

    const-string v3, "GOST3411-2012-512WITHECGOST3410-2012-512"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk1/a;->a:Lm/q;

    const-string v3, "SHA1WITHPLAIN-ECDSA"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk1/a;->b:Lm/q;

    const-string v3, "SHA224WITHPLAIN-ECDSA"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk1/a;->c:Lm/q;

    const-string v3, "SHA256WITHPLAIN-ECDSA"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk1/a;->d:Lm/q;

    const-string v3, "SHA384WITHPLAIN-ECDSA"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk1/a;->e:Lm/q;

    const-string v3, "SHA512WITHPLAIN-ECDSA"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk1/a;->f:Lm/q;

    const-string v3, "RIPEMD160WITHPLAIN-ECDSA"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ln1/a;->a:Lm/q;

    const-string v3, "SHA1WITHCVC-ECDSA"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ln1/a;->b:Lm/q;

    const-string v3, "SHA224WITHCVC-ECDSA"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ln1/a;->c:Lm/q;

    const-string v3, "SHA256WITHCVC-ECDSA"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ln1/a;->d:Lm/q;

    const-string v3, "SHA384WITHCVC-ECDSA"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ln1/a;->e:Lm/q;

    const-string v3, "SHA512WITHCVC-ECDSA"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lr1/a;->a:Lm/q;

    const-string v3, "XMSS"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lr1/a;->b:Lm/q;

    const-string v3, "XMSSMT"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lm/q;

    const-string v3, "1.2.840.113549.1.1.4"

    invoke-direct {v1, v3}, Lm/q;-><init>(Ljava/lang/String;)V

    const-string v3, "MD5WITHRSA"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lm/q;

    const-string v3, "1.2.840.113549.1.1.2"

    invoke-direct {v1, v3}, Lm/q;-><init>(Ljava/lang/String;)V

    const-string v3, "MD2WITHRSA"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lm/q;

    const-string v3, "1.2.840.10040.4.3"

    invoke-direct {v1, v3}, Lm/q;-><init>(Ljava/lang/String;)V

    const-string v3, "SHA1WITHDSA"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lm0/m;->L0:Lm/q;

    const-string v4, "SHA1WITHECDSA"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lm0/m;->O0:Lm/q;

    const-string v4, "SHA224WITHECDSA"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lm0/m;->P0:Lm/q;

    const-string v4, "SHA256WITHECDSA"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lm0/m;->Q0:Lm/q;

    const-string v4, "SHA384WITHECDSA"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lm0/m;->R0:Lm/q;

    const-string v4, "SHA512WITHECDSA"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ly1/b;->h:Lm/q;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ly1/b;->g:Lm/q;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lz/b;->V:Lm/q;

    const-string v2, "SHA224WITHDSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lz/b;->W:Lm/q;

    const-string v2, "SHA256WITHDSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/jce/provider/ProvRevocationChecker;Le2/b;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->parent:Lorg/bouncycastle/jce/provider/ProvRevocationChecker;

    iput-object p2, p0, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->helper:Le2/b;

    return-void
.end method

.method private static calcKeyHash(Ljava/security/MessageDigest;Ljava/security/PublicKey;)[B
    .registers 2

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Ll0/p0;->h(Ljava/lang/Object;)Ll0/p0;

    move-result-object p1

    iget-object p1, p1, Ll0/p0;->d:Lm/b;

    invoke-virtual {p1}, Lm/b;->s()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    return-object p0
.end method

.method private createCertID(Lb0/b;Ll0/m;Lm/l;)Lb0/b;
    .registers 4

    iget-object p1, p1, Lb0/b;->c:Ll0/b;

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->createCertID(Ll0/b;Ll0/m;Lm/l;)Lb0/b;

    move-result-object p0

    return-object p0
.end method

.method private createCertID(Ll0/b;Ll0/m;Lm/l;)Lb0/b;
    .registers 6

    :try_start_0
    iget-object p0, p0, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->helper:Le2/b;

    iget-object v0, p1, Ll0/b;->c:Lm/q;

    invoke-static {v0}, Le2/c;->a(Lm/q;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Le2/b;->c(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    new-instance v0, Lm/x0;

    iget-object v1, p2, Ll0/m;->d:Ll0/u0;

    iget-object v1, v1, Ll0/u0;->A1:Lj0/c;

    invoke-virtual {v1}, Lm/n;->g()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lm/r;-><init>([B)V

    new-instance v1, Lm/x0;

    iget-object p2, p2, Ll0/m;->d:Ll0/u0;

    iget-object p2, p2, Ll0/u0;->B1:Ll0/p0;

    iget-object p2, p2, Ll0/p0;->d:Lm/b;

    invoke-virtual {p2}, Lm/b;->s()[B

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    invoke-direct {v1, p0}, Lm/r;-><init>([B)V

    new-instance p0, Lb0/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb0/b;->c:Ll0/b;

    iput-object v0, p0, Lb0/b;->d:Lm/r;

    iput-object v1, p0, Lb0/b;->q:Lm/r;

    iput-object p3, p0, Lb0/b;->x:Lm/l;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3d} :catch_3e

    return-object p0

    :catch_3e
    move-exception p0

    new-instance p1, Ljava/security/cert/CertPathValidatorException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "problem creating ID: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private extractCert()Ll0/m;
    .registers 5

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->parameters:La2/o;

    iget-object v0, v0, La2/o;->e:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Ll0/m;->i(Ljava/lang/Object;)Ll0/m;

    move-result-object p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    move-exception v0

    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cannot process signing cert: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2}, Lb/b;->B(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->parameters:La2/o;

    iget-object v3, p0, La2/o;->c:Ljava/security/cert/CertPath;

    iget p0, p0, La2/o;->d:I

    invoke-direct {v1, v2, v0, v3, p0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1
.end method

.method private static getDigestName(Lm/q;)Ljava/lang/String;
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

.method public static getOcspResponderURI(Ljava/security/cert/X509Certificate;)Ljava/net/URI;
    .registers 11

    sget-object v0, Ll0/v;->Q1:Lm/q;

    invoke-virtual {v0}, Lm/q;->u()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/security/cert/X509Extension;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_e

    return-object v0

    :cond_e
    invoke-static {p0}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object p0

    iget-object p0, p0, Lm/r;->c:[B

    instance-of v1, p0, Ll0/h;

    const/4 v2, 0x0

    if-eqz v1, :cond_1d

    check-cast p0, Ll0/h;

    goto/16 :goto_92

    :cond_1d
    if-eqz p0, :cond_91

    new-instance v1, Ll0/h;

    invoke-static {p0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lm/x;->size()I

    move-result v3

    const/4 v4, 0x1

    if-lt v3, v4, :cond_89

    invoke-virtual {p0}, Lm/x;->size()I

    move-result v3

    new-array v3, v3, [Ll0/a;

    iput-object v3, v1, Ll0/h;->c:[Ll0/a;

    move v3, v2

    :goto_38
    invoke-virtual {p0}, Lm/x;->size()I

    move-result v5

    if-eq v3, v5, :cond_87

    iget-object v5, v1, Ll0/h;->c:[Ll0/a;

    invoke-virtual {p0, v3}, Lm/x;->v(I)Lm/f;

    move-result-object v6

    sget-object v7, Ll0/a;->q:Lm/q;

    instance-of v7, v6, Ll0/a;

    if-eqz v7, :cond_4d

    check-cast v6, Ll0/a;

    goto :goto_82

    :cond_4d
    if-eqz v6, :cond_81

    new-instance v7, Ll0/a;

    invoke-static {v6}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v6

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iput-object v0, v7, Ll0/a;->c:Lm/q;

    iput-object v0, v7, Ll0/a;->d:Ll0/y;

    invoke-virtual {v6}, Lm/x;->size()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_79

    invoke-virtual {v6, v2}, Lm/x;->v(I)Lm/f;

    move-result-object v8

    invoke-static {v8}, Lm/q;->v(Ljava/lang/Object;)Lm/q;

    move-result-object v8

    iput-object v8, v7, Ll0/a;->c:Lm/q;

    invoke-virtual {v6, v4}, Lm/x;->v(I)Lm/f;

    move-result-object v6

    invoke-static {v6}, Ll0/y;->h(Ljava/lang/Object;)Ll0/y;

    move-result-object v6

    iput-object v6, v7, Ll0/a;->d:Ll0/y;

    move-object v6, v7

    goto :goto_82

    :cond_79
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "wrong number of elements in sequence"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_81
    move-object v6, v0

    :goto_82
    aput-object v6, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    :cond_87
    move-object p0, v1

    goto :goto_92

    :cond_89
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "sequence may not be empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_91
    move-object p0, v0

    :goto_92
    iget-object p0, p0, Ll0/h;->c:[Ll0/a;

    array-length v1, p0

    new-array v3, v1, [Ll0/a;

    array-length v4, p0

    invoke-static {p0, v2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_9b
    if-eq v2, v1, :cond_c1

    aget-object p0, v3, v2

    sget-object v4, Ll0/a;->q:Lm/q;

    iget-object v5, p0, Ll0/a;->c:Lm/q;

    invoke-virtual {v4, v5}, Lm/u;->n(Lm/u;)Z

    move-result v4

    if-eqz v4, :cond_be

    iget-object p0, p0, Ll0/a;->d:Ll0/y;

    iget v4, p0, Ll0/y;->d:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_be

    :try_start_b0
    new-instance v4, Ljava/net/URI;

    iget-object p0, p0, Ll0/y;->c:Lm/f;

    check-cast p0, Lm/z;

    invoke-interface {p0}, Lm/z;->e()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v4, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_bd
    .catch Ljava/net/URISyntaxException; {:try_start_b0 .. :try_end_bd} :catch_be

    return-object v4

    :catch_be
    :cond_be
    add-int/lit8 v2, v2, 0x1

    goto :goto_9b

    :cond_c1
    return-object v0
.end method

.method private static getSignatureName(Ll0/b;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Ll0/b;->d:Lm/f;

    iget-object p0, p0, Ll0/b;->c:Lm/q;

    if-eqz v0, :cond_2e

    sget-object v1, Lm/v0;->d:Lm/v0;

    invoke-virtual {v1, v0}, Lm/u;->m(Lm/f;)Z

    move-result v1

    if-nez v1, :cond_2e

    sget-object v1, Ld0/r;->k:Lm/q;

    invoke-virtual {p0, v1}, Lm/u;->n(Lm/u;)Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-static {v0}, Ld0/y;->h(Ljava/lang/Object;)Ld0/y;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Ld0/y;->c:Ll0/b;

    iget-object p0, p0, Ll0/b;->c:Lm/q;

    invoke-static {p0}, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->getDigestName(Lm/q;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "WITHRSAANDMGF1"

    invoke-static {v0, p0, v1}, Lb/b;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2e
    sget-object v0, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->oids:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_3d
    invoke-virtual {p0}, Lm/q;->u()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getSignerCert(Lb0/a;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Le2/b;)Ljava/security/cert/X509Certificate;
    .registers 6

    iget-object p0, p0, Lb0/a;->c:Lb0/j;

    iget-object p0, p0, Lb0/j;->q:Lb0/h;

    iget-object p0, p0, Lb0/h;->c:Lm/n;

    instance-of v0, p0, Lm/r;

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    move-object v0, p0

    check-cast v0, Lm/r;

    iget-object v0, v0, Lm/r;->c:[B

    goto :goto_12

    :cond_11
    move-object v0, v1

    :goto_12
    if-eqz v0, :cond_3c

    const-string p0, "SHA1"

    invoke-interface {p3, p0}, Le2/b;->c(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    if-eqz p2, :cond_2b

    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p3

    invoke-static {p0, p3}, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->calcKeyHash(Ljava/security/MessageDigest;Ljava/security/PublicKey;)[B

    move-result-object p3

    invoke-static {v0, p3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p3

    if-eqz p3, :cond_2b

    return-object p2

    :cond_2b
    if-eqz p1, :cond_76

    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p2

    invoke-static {p0, p2}, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->calcKeyHash(Ljava/security/MessageDigest;Ljava/security/PublicKey;)[B

    move-result-object p0

    invoke-static {v0, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_76

    return-object p1

    :cond_3c
    sget-object p3, Lk0/a;->n:Lk0/a;

    instance-of v0, p0, Lm/r;

    if-eqz v0, :cond_44

    move-object p0, v1

    goto :goto_48

    :cond_44
    invoke-static {p0}, Lj0/c;->i(Ljava/lang/Object;)Lj0/c;

    move-result-object p0

    :goto_48
    invoke-static {p3, p0}, Lj0/c;->h(Lj0/d;Ljava/lang/Object;)Lj0/c;

    move-result-object p0

    if-eqz p2, :cond_61

    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v0

    invoke-static {p3, v0}, Lj0/c;->h(Lj0/d;Ljava/lang/Object;)Lj0/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj0/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    return-object p2

    :cond_61
    if-eqz p1, :cond_76

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p2

    invoke-virtual {p2}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object p2

    invoke-static {p3, p2}, Lj0/c;->h(Lj0/d;Ljava/lang/Object;)Lj0/c;

    move-result-object p2

    invoke-virtual {p0, p2}, Lj0/c;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_76

    return-object p1

    :cond_76
    return-object v1
.end method

.method private static isEqualAlgId(Ll0/b;Ll0/b;)Z
    .registers 5

    const/4 v0, 0x1

    if-eq p0, p1, :cond_34

    invoke-virtual {p0, p1}, Lm/n;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_34

    :cond_a
    iget-object v1, p0, Ll0/b;->c:Lm/q;

    iget-object v2, p1, Ll0/b;->c:Lm/q;

    invoke-virtual {v1, v2}, Lm/u;->n(Lm/u;)Z

    move-result v1

    if-eqz v1, :cond_32

    iget-object p0, p0, Ll0/b;->d:Lm/f;

    iget-object p1, p1, Ll0/b;->d:Lm/f;

    if-ne p0, p1, :cond_1b

    return v0

    :cond_1b
    sget-object v1, Lm/v0;->d:Lm/v0;

    if-nez p0, :cond_24

    invoke-virtual {v1, p1}, Lm/u;->m(Lm/f;)Z

    move-result p0

    return p0

    :cond_24
    invoke-virtual {v1, p0}, Lm/u;->m(Lm/f;)Z

    move-result v1

    if-eqz v1, :cond_2d

    if-nez p1, :cond_2d

    return v0

    :cond_2d
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_32
    const/4 p0, 0x0

    return p0

    :cond_34
    :goto_34
    return v0
.end method

.method private static responderMatches(Lb0/h;Ljava/security/cert/X509Certificate;Le2/b;)Z
    .registers 5

    iget-object p0, p0, Lb0/h;->c:Lm/n;

    instance-of v0, p0, Lm/r;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    move-object v0, p0

    check-cast v0, Lm/r;

    iget-object v0, v0, Lm/r;->c:[B

    goto :goto_e

    :cond_d
    move-object v0, v1

    :goto_e
    if-eqz v0, :cond_23

    const-string p0, "SHA1"

    invoke-interface {p2, p0}, Le2/b;->c(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->calcKeyHash(Ljava/security/MessageDigest;Ljava/security/PublicKey;)[B

    move-result-object p0

    invoke-static {v0, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0

    :cond_23
    sget-object p2, Lk0/a;->n:Lk0/a;

    instance-of v0, p0, Lm/r;

    if-eqz v0, :cond_2a

    goto :goto_2e

    :cond_2a
    invoke-static {p0}, Lj0/c;->i(Ljava/lang/Object;)Lj0/c;

    move-result-object v1

    :goto_2e
    invoke-static {p2, v1}, Lj0/c;->h(Lj0/d;Ljava/lang/Object;)Lj0/c;

    move-result-object p0

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object p1

    invoke-static {p2, p1}, Lj0/c;->h(Lj0/d;Ljava/lang/Object;)Lj0/c;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj0/c;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static validatedOcspResponse(Lb0/a;La2/o;[BLjava/security/cert/X509Certificate;Le2/b;)Z
    .registers 14

    const-string v0, "OCSP response failure: "

    :try_start_2
    iget-object v1, p0, Lb0/a;->x:Lm/x;

    iget-object v2, p0, Lb0/a;->c:Lb0/j;

    iget-object v3, p0, Lb0/a;->d:Ll0/b;

    invoke-static {v3}, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->getSignatureName(Ll0/b;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p4, v3}, Le2/b;->createSignature(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v3

    iget-object v4, p1, La2/o;->e:Ljava/security/cert/X509Certificate;

    iget v5, p1, La2/o;->d:I

    iget-object v6, p1, La2/o;->c:Ljava/security/cert/CertPath;

    invoke-static {p0, v4, p3, p4}, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->getSignerCert(Lb0/a;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Le2/b;)Ljava/security/cert/X509Certificate;

    move-result-object p3

    if-nez p3, :cond_2d

    if-eqz v1, :cond_1f

    goto :goto_2d

    :cond_1f
    new-instance p0, Ljava/security/cert/CertPathValidatorException;

    const-string p2, "OCSP responder certificate not found"

    invoke-direct {p0, p2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_27
    move-exception p0

    goto/16 :goto_c8

    :catch_2a
    move-exception p0

    goto/16 :goto_db

    :cond_2d
    :goto_2d
    const/4 v4, 0x0

    const/4 v7, 0x0

    if-eqz p3, :cond_39

    invoke-virtual {p3}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p3

    invoke-virtual {v3, p3}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    goto :goto_85

    :cond_39
    const-string p3, "X.509"

    invoke-interface {p4, p3}, Le2/b;->a(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p3

    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1, v4}, Lm/x;->v(I)Lm/f;

    move-result-object v1

    invoke-interface {v1}, Lm/f;->d()Lm/u;

    move-result-object v1

    invoke-virtual {v1}, Lm/n;->getEncoded()[B

    move-result-object v1

    invoke-direct {v8, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p3, v8}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p3

    check-cast p3, Ljava/security/cert/X509Certificate;

    iget-object v1, p1, La2/o;->e:Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/security/cert/Certificate;->verify(Ljava/security/PublicKey;)V

    invoke-virtual {p1}, La2/o;->a()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V

    iget-object v1, v2, Lb0/j;->q:Lb0/h;

    invoke-static {v1, p3, p4}, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->responderMatches(Lb0/h;Ljava/security/cert/X509Certificate;Le2/b;)Z

    move-result p4

    if-eqz p4, :cond_c0

    invoke-virtual {p3}, Ljava/security/cert/X509Certificate;->getExtendedKeyUsage()Ljava/util/List;

    move-result-object p4

    if-eqz p4, :cond_b8

    sget-object v1, Ll0/e0;->q:Ll0/e0;

    iget-object v1, v1, Ll0/e0;->c:Lm/q;

    invoke-virtual {v1}, Lm/q;->u()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_b8

    invoke-virtual {v3, p3}, Ljava/security/Signature;->initVerify(Ljava/security/cert/Certificate;)V

    :goto_85
    invoke-virtual {v2}, Lm/n;->g()[B

    move-result-object p3

    invoke-virtual {v3, p3}, Ljava/security/Signature;->update([B)V

    iget-object p0, p0, Lb0/a;->q:Lm/p0;

    invoke-virtual {p0}, Lm/b;->u()[B

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/security/Signature;->verify([B)Z

    move-result p0

    if-eqz p0, :cond_b7

    if-eqz p2, :cond_b5

    iget-object p0, v2, Lb0/j;->z1:Ll0/w;

    sget-object p3, Lb0/d;->b:Lm/q;

    invoke-virtual {p0, p3}, Ll0/w;->h(Lm/q;)Ll0/v;

    move-result-object p0

    iget-object p0, p0, Ll0/v;->q:Lm/r;

    iget-object p0, p0, Lm/r;->c:[B

    invoke-static {p2, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_ad

    goto :goto_b5

    :cond_ad
    new-instance p0, Ljava/security/cert/CertPathValidatorException;

    const-string p2, "nonce mismatch in OCSP response"

    invoke-direct {p0, p2, v7, v6, v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw p0

    :cond_b5
    :goto_b5
    const/4 p0, 0x1

    return p0

    :cond_b7
    return v4

    :cond_b8
    new-instance p0, Ljava/security/cert/CertPathValidatorException;

    const-string p2, "responder certificate not valid for signing OCSP responses"

    invoke-direct {p0, p2, v7, v6, v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw p0

    :cond_c0
    new-instance p0, Ljava/security/cert/CertPathValidatorException;

    const-string p2, "responder certificate does not match responderID"

    invoke-direct {p0, p2, v7, v6, v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw p0
    :try_end_c8
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_2 .. :try_end_c8} :catch_f5
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_c8} :catch_2a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_c8} :catch_27

    :goto_c8
    new-instance p2, Ljava/security/cert/CertPathValidatorException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p3}, Lb/b;->c(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p3

    iget-object p4, p1, La2/o;->c:Ljava/security/cert/CertPath;

    iget p1, p1, La2/o;->d:I

    invoke-direct {p2, p3, p0, p4, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw p2

    :goto_db
    new-instance p2, Ljava/security/cert/CertPathValidatorException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iget-object p4, p1, La2/o;->c:Ljava/security/cert/CertPath;

    iget p1, p1, La2/o;->d:I

    invoke-direct {p2, p3, p0, p4, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw p2

    :catch_f5
    move-exception p0

    throw p0
.end method


# virtual methods
.method public check(Ljava/security/cert/Certificate;)V
    .registers 13

    check-cast p1, Ljava/security/cert/X509Certificate;

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->parent:Lorg/bouncycastle/jce/provider/ProvRevocationChecker;

    invoke-virtual {v0}, Ljava/security/cert/PKIXRevocationChecker;->getOcspResponses()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->parent:Lorg/bouncycastle/jce/provider/ProvRevocationChecker;

    invoke-virtual {v1}, Ljava/security/cert/PKIXRevocationChecker;->getOcspResponder()Ljava/net/URI;

    move-result-object v1

    if-nez v1, :cond_1b

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->ocspURL:Ljava/lang/String;

    if-eqz v1, :cond_3d

    :try_start_14
    new-instance v1, Ljava/net/URI;

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->ocspURL:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/net/URISyntaxException; {:try_start_14 .. :try_end_1b} :catch_1d

    :cond_1b
    :goto_1b
    move-object v4, v1

    goto :goto_42

    :catch_1d
    move-exception v0

    move-object p1, v0

    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "configuration error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->parameters:La2/o;

    iget-object v2, p0, La2/o;->c:Ljava/security/cert/CertPath;

    iget p0, p0, La2/o;->d:I

    invoke-direct {v0, v1, p1, v2, p0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    :cond_3d
    invoke-static {p1}, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->getOcspResponderURI(Ljava/security/cert/X509Certificate;)Ljava/net/URI;

    move-result-object v1

    goto :goto_1b

    :goto_42
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-nez v1, :cond_b2

    if-eqz v4, :cond_b2

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->ocspURL:Ljava/lang/String;

    if-nez v1, :cond_6c

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->parent:Lorg/bouncycastle/jce/provider/ProvRevocationChecker;

    invoke-virtual {v1}, Ljava/security/cert/PKIXRevocationChecker;->getOcspResponder()Ljava/net/URI;

    move-result-object v1

    if-nez v1, :cond_6c

    iget-boolean v1, p0, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->isEnabledOCSP:Z

    if-eqz v1, :cond_5e

    goto :goto_6c

    :cond_5e
    new-instance p1, Lorg/bouncycastle/jce/provider/RecoverableCertPathValidatorException;

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->parameters:La2/o;

    iget-object v0, p0, La2/o;->c:Ljava/security/cert/CertPath;

    iget p0, p0, La2/o;->d:I

    const-string v1, "OCSP disabled by \"ocsp.enable\" setting"

    invoke-direct {p1, v1, v10, v0, p0}, Lorg/bouncycastle/jce/provider/RecoverableCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw p1

    :cond_6c
    :goto_6c
    invoke-direct {p0}, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->extractCert()Ll0/m;

    move-result-object v1

    new-instance v2, Ll0/b;

    sget-object v3, Ly1/b;->f:Lm/q;

    invoke-direct {v2, v3}, Ll0/b;-><init>(Lm/q;)V

    new-instance v3, Lm/l;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v3, v5}, Lm/l;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {p0, v2, v1, v3}, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->createCertID(Ll0/b;Ll0/m;Lm/l;)Lb0/b;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->parameters:La2/o;

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->parent:Lorg/bouncycastle/jce/provider/ProvRevocationChecker;

    invoke-virtual {v1}, Ljava/security/cert/PKIXRevocationChecker;->getOcspResponderCert()Ljava/security/cert/X509Certificate;

    move-result-object v5

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->parent:Lorg/bouncycastle/jce/provider/ProvRevocationChecker;

    invoke-virtual {v1}, Ljava/security/cert/PKIXRevocationChecker;->getOcspExtensions()Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->helper:Le2/b;

    invoke-static/range {v2 .. v7}, Lorg/bouncycastle/jce/provider/OcspCache;->getOcspResponse(Lb0/b;La2/o;Ljava/net/URI;Ljava/security/cert/X509Certificate;Ljava/util/List;Le2/b;)Lb0/e;

    move-result-object v1

    :try_start_98
    invoke-virtual {v1}, Lm/n;->getEncoded()[B

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_9f} :catch_a2

    move v1, v9

    move-object v3, v10

    goto :goto_df

    :catch_a2
    move-exception v0

    move-object p1, v0

    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->parameters:La2/o;

    iget-object v1, p0, La2/o;->c:Ljava/security/cert/CertPath;

    iget p0, p0, La2/o;->d:I

    const-string v2, "unable to encode OCSP response"

    invoke-direct {v0, v2, p1, v1, p0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    :cond_b2
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->parent:Lorg/bouncycastle/jce/provider/ProvRevocationChecker;

    invoke-virtual {v1}, Ljava/security/cert/PKIXRevocationChecker;->getOcspExtensions()Ljava/util/List;

    move-result-object v1

    move v2, v8

    move-object v3, v10

    :goto_ba
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-eq v2, v4, :cond_de

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/Extension;

    invoke-interface {v4}, Ljava/security/cert/Extension;->getValue()[B

    move-result-object v5

    sget-object v6, Lb0/d;->b:Lm/q;

    invoke-virtual {v6}, Lm/q;->u()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4}, Ljava/security/cert/Extension;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_db

    move-object v3, v5

    :cond_db
    add-int/lit8 v2, v2, 0x1

    goto :goto_ba

    :cond_de
    move v1, v8

    :goto_df
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_217

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lb0/e;->h(Ljava/lang/Object;)Lb0/e;

    move-result-object v0

    new-instance v2, Lm/l;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v2, p1}, Lm/l;-><init>(Ljava/math/BigInteger;)V

    if-eqz v0, :cond_209

    iget-object p1, v0, Lb0/e;->c:Lb0/f;

    iget-object v4, p1, Lb0/f;->c:Lm/h;

    invoke-virtual {v4}, Lm/h;->u()I

    move-result v4

    if-nez v4, :cond_1e9

    iget-object p1, v0, Lb0/e;->d:Lb0/i;

    invoke-static {p1}, Lb0/i;->h(Lm/n;)Lb0/i;

    move-result-object p1

    iget-object v0, p1, Lb0/i;->c:Lm/q;

    sget-object v4, Lb0/d;->a:Lm/q;

    invoke-virtual {v0, v4}, Lm/u;->n(Lm/u;)Z

    move-result v0

    if-eqz v0, :cond_1e8

    :try_start_112
    iget-object p1, p1, Lb0/i;->d:Lm/r;

    iget-object p1, p1, Lm/r;->c:[B

    invoke-static {p1}, Lb0/a;->h(Ljava/lang/Object;)Lb0/a;

    move-result-object p1

    if-nez v1, :cond_131

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->parameters:La2/o;

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->parent:Lorg/bouncycastle/jce/provider/ProvRevocationChecker;

    invoke-virtual {v1}, Ljava/security/cert/PKIXRevocationChecker;->getOcspResponderCert()Ljava/security/cert/X509Certificate;

    move-result-object v1

    iget-object v4, p0, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->helper:Le2/b;

    invoke-static {p1, v0, v3, v1, v4}, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->validatedOcspResponse(Lb0/a;La2/o;[BLjava/security/cert/X509Certificate;Le2/b;)Z

    move-result v0

    if-eqz v0, :cond_1e8

    goto :goto_131

    :catch_12d
    move-exception v0

    move-object p1, v0

    goto/16 :goto_1d7

    :cond_131
    :goto_131
    iget-object p1, p1, Lb0/a;->c:Lb0/j;

    invoke-static {p1}, Lb0/j;->h(Ljava/lang/Object;)Lb0/j;

    move-result-object p1

    iget-object p1, p1, Lb0/j;->y:Lm/x;

    move-object v0, v10

    :goto_13a
    invoke-virtual {p1}, Lm/x;->size()I

    move-result v1

    if-eq v8, v1, :cond_1e8

    invoke-virtual {p1, v8}, Lm/x;->v(I)Lm/f;

    move-result-object v1

    invoke-static {v1}, Lb0/l;->h(Lm/f;)Lb0/l;

    move-result-object v1

    iget-object v3, v1, Lb0/l;->c:Lb0/b;

    iget-object v4, v3, Lb0/b;->x:Lm/l;

    invoke-virtual {v2, v4}, Lm/u;->n(Lm/u;)Z

    move-result v4

    if-eqz v4, :cond_1d3

    iget-object v4, v1, Lb0/l;->x:Lm/j;

    if-eqz v4, :cond_16f

    iget-object v5, p0, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->parameters:La2/o;

    invoke-virtual {v5}, La2/o;->a()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4}, Lm/j;->t()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v4

    if-nez v4, :cond_167

    goto :goto_16f

    :cond_167
    new-instance p1, Lg2/b;

    const-string v0, "OCSP response expired"

    invoke-direct {p1, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_16f
    :goto_16f
    if-eqz v0, :cond_17b

    iget-object v4, v0, Lb0/b;->c:Ll0/b;

    iget-object v5, v3, Lb0/b;->c:Ll0/b;

    invoke-static {v4, v5}, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->isEqualAlgId(Ll0/b;Ll0/b;)Z

    move-result v4

    if-nez v4, :cond_183

    :cond_17b
    invoke-direct {p0}, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->extractCert()Ll0/m;

    move-result-object v0

    invoke-direct {p0, v3, v0, v2}, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->createCertID(Lb0/b;Ll0/m;Lm/l;)Lb0/b;

    move-result-object v0

    :cond_183
    invoke-virtual {v0, v3}, Lb0/b;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d3

    iget-object p1, v1, Lb0/l;->d:Lb0/c;

    iget v0, p1, Lb0/c;->c:I

    if-nez v0, :cond_190

    goto :goto_1e8

    :cond_190
    if-ne v0, v9, :cond_1c5

    iget-object p1, p1, Lb0/c;->d:Lm/n;

    invoke-static {p1}, Lb0/k;->h(Lm/n;)Lb0/k;

    move-result-object p1

    iget-object v0, p1, Lb0/k;->d:Ll0/l;

    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "certificate revoked, reason=("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "), date="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lb0/k;->c:Lm/j;

    invoke-virtual {p1}, Lm/j;->t()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->parameters:La2/o;

    iget-object v2, v0, La2/o;->c:Ljava/security/cert/CertPath;

    iget v0, v0, La2/o;->d:I

    invoke-direct {v1, p1, v10, v2, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    :cond_1c5
    new-instance p1, Ljava/security/cert/CertPathValidatorException;

    const-string v0, "certificate revoked, details unknown"

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->parameters:La2/o;

    iget-object v2, v1, La2/o;->c:Ljava/security/cert/CertPath;

    iget v1, v1, La2/o;->d:I

    invoke-direct {p1, v0, v10, v2, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw p1
    :try_end_1d3
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_112 .. :try_end_1d3} :catch_1e5
    .catch Ljava/lang/Exception; {:try_start_112 .. :try_end_1d3} :catch_12d

    :cond_1d3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_13a

    :goto_1d7
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->parameters:La2/o;

    iget-object v1, p0, La2/o;->c:Ljava/security/cert/CertPath;

    iget p0, p0, La2/o;->d:I

    const-string v2, "unable to process OCSP response"

    invoke-direct {v0, v2, p1, v1, p0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    :catch_1e5
    move-exception v0

    move-object p0, v0

    throw p0

    :cond_1e8
    :goto_1e8
    return-void

    :cond_1e9
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OCSP response failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lb0/f;->c:Lm/h;

    invoke-virtual {p1}, Lm/h;->t()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->parameters:La2/o;

    iget-object v1, p0, La2/o;->c:Ljava/security/cert/CertPath;

    iget p0, p0, La2/o;->d:I

    invoke-direct {v0, p1, v10, v1, p0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    :cond_209
    new-instance p1, Lorg/bouncycastle/jce/provider/RecoverableCertPathValidatorException;

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->parameters:La2/o;

    iget-object v0, p0, La2/o;->c:Ljava/security/cert/CertPath;

    iget p0, p0, La2/o;->d:I

    const-string v1, "no OCSP response found for certificate"

    invoke-direct {p1, v1, v10, v0, p0}, Lorg/bouncycastle/jce/provider/RecoverableCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw p1

    :cond_217
    new-instance p1, Lorg/bouncycastle/jce/provider/RecoverableCertPathValidatorException;

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->parameters:La2/o;

    iget-object v0, p0, La2/o;->c:Ljava/security/cert/CertPath;

    iget p0, p0, La2/o;->d:I

    const-string v1, "no OCSP response found for any certificate"

    invoke-direct {p1, v1, v10, v0, p0}, Lorg/bouncycastle/jce/provider/RecoverableCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw p1
.end method

.method public getSoftFailExceptions()Ljava/util/List;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSupportedExtensions()Ljava/util/Set;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public init(Z)V
    .registers 2

    if-nez p1, :cond_16

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->parameters:La2/o;

    const-string p1, "ocsp.enable"

    invoke-static {p1}, Lm4/h;->c(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->isEnabledOCSP:Z

    const-string p1, "ocsp.responderURL"

    invoke-static {p1}, Lm4/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->ocspURL:Ljava/lang/String;

    return-void

    :cond_16
    new-instance p0, Ljava/security/cert/CertPathValidatorException;

    const-string p1, "forward checking not supported"

    invoke-direct {p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public initialize(La2/o;)V
    .registers 2

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->parameters:La2/o;

    const-string p1, "ocsp.enable"

    invoke-static {p1}, Lm4/h;->c(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->isEnabledOCSP:Z

    const-string p1, "ocsp.responderURL"

    invoke-static {p1}, Lm4/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->ocspURL:Ljava/lang/String;

    return-void
.end method

.method public isForwardCheckingSupported()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    return-void
.end method
