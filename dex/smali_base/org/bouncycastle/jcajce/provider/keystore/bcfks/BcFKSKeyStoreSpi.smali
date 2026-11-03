.class Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;
.super Ljava/security/KeyStoreSpi;


# static fields
.field private static final CERTIFICATE:Ljava/math/BigInteger;

.field private static final PRIVATE_KEY:Ljava/math/BigInteger;

.field private static final PROTECTED_PRIVATE_KEY:Ljava/math/BigInteger;

.field private static final PROTECTED_SECRET_KEY:Ljava/math/BigInteger;

.field private static final SECRET_KEY:Ljava/math/BigInteger;

.field private static final oidMap:Ljava/util/Map;

.field private static final publicAlgMap:Ljava/util/Map;


# instance fields
.field private creationDate:Ljava/util/Date;

.field private final entries:Ljava/util/Map;

.field private final helper:Le2/b;

.field private hmacAlgorithm:Ll0/b;

.field private hmacPkbdAlgorithm:Ld0/k;

.field private lastModifiedDate:Ljava/util/Date;

.field private final privateKeyCache:Ljava/util/Map;

.field private signatureAlgorithm:Ll0/b;

.field private storeEncryptionAlgorithm:Lm/q;

.field private validator:La2/a;

.field private verificationKey:Ljava/security/PublicKey;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->oidMap:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->publicAlgMap:Ljava/util/Map;

    sget-object v2, Ly1/b;->e:Lm/q;

    const-string v3, "DESEDE"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "TRIPLEDES"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "TDEA"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "HMACSHA1"

    sget-object v3, Ld0/r;->K:Lm/q;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "HMACSHA224"

    sget-object v3, Ld0/r;->L:Lm/q;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "HMACSHA256"

    sget-object v3, Ld0/r;->M:Lm/q;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "HMACSHA384"

    sget-object v3, Ld0/r;->N:Lm/q;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "HMACSHA512"

    sget-object v3, Ld0/r;->O:Lm/q;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Ld0/r;->P:Lm/q;

    const-string v3, "HMACSHA512/224"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Ld0/r;->Q:Lm/q;

    const-string v4, "HMACSHA512/256"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "HMACSHA512(224)"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "HMACSHA512(256)"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "HMACSHA3-224"

    sget-object v3, Lz/b;->m:Lm/q;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "HMACSHA3-256"

    sget-object v3, Lz/b;->n:Lm/q;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "HMACSHA3-384"

    sget-object v3, Lz/b;->o:Lm/q;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "HMACSHA3-512"

    sget-object v3, Lz/b;->p:Lm/q;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "KMAC128"

    sget-object v3, Lz/b;->u:Lm/q;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "KMAC256"

    sget-object v3, Lz/b;->v:Lm/q;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "SEED"

    sget-object v3, Lu1/a;->a:Lm/q;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "CAMELLIA.128"

    sget-object v3, Lx1/a;->a:Lm/q;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "CAMELLIA.192"

    sget-object v3, Lx1/a;->b:Lm/q;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "CAMELLIA.256"

    sget-object v3, Lx1/a;->c:Lm/q;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ARIA.128"

    sget-object v3, Lw1/a;->b:Lm/q;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ARIA.192"

    sget-object v3, Lw1/a;->f:Lm/q;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ARIA.256"

    sget-object v3, Lw1/a;->j:Lm/q;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ld0/r;->a:Lm/q;

    const-string v2, "RSA"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lm0/m;->M0:Lm/q;

    const-string v2, "EC"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ly1/b;->i:Lm/q;

    const-string v2, "DH"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ld0/r;->s:Lm/q;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lm0/m;->r1:Lm/q;

    const-string v2, "DSA"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->CERTIFICATE:Ljava/math/BigInteger;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->PRIVATE_KEY:Ljava/math/BigInteger;

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->SECRET_KEY:Ljava/math/BigInteger;

    const-wide/16 v0, 0x3

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->PROTECTED_PRIVATE_KEY:Ljava/math/BigInteger;

    const-wide/16 v0, 0x4

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->PROTECTED_SECRET_KEY:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Le2/b;)V
    .registers 3

    invoke-direct {p0}, Ljava/security/KeyStoreSpi;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->entries:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->privateKeyCache:Ljava/util/Map;

    sget-object v0, Lz/b;->T:Lm/q;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->storeEncryptionAlgorithm:Lm/q;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->helper:Le2/b;

    return-void
.end method

.method private calculateMac([BLl0/b;Ld0/k;[C)[B
    .registers 9

    iget-object p2, p2, Ll0/b;->c:Lm/q;

    invoke-virtual {p2}, Lm/q;->u()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->helper:Le2/b;

    invoke-interface {v0, p2}, Le2/b;->b(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    :try_start_c
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "INTEGRITY_CHECK"

    if-eqz p4, :cond_13

    goto :goto_16

    :cond_13
    const/4 p4, 0x0

    new-array p4, p4, [C

    :goto_16
    const/4 v3, -0x1

    invoke-direct {p0, p3, v2, p4, v3}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->generateKey(Ld0/k;Ljava/lang/String;[CI)[B

    move-result-object p0

    invoke-direct {v1, p0, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_21
    .catch Ljava/security/InvalidKeyException; {:try_start_c .. :try_end_21} :catch_26

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p0

    return-object p0

    :catch_26
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Cannot set up MAC calculation: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private createCipher(Ljava/lang/String;[B)Ljavax/crypto/Cipher;
    .registers 4

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->helper:Le2/b;

    invoke-interface {p0, p1}, Le2/b;->d(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v0, "AES"

    invoke-direct {p1, p2, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 p2, 0x1

    invoke-virtual {p0, p2, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    return-object p0
.end method

.method private createPrivateKeySequence(Ld0/i;[Ljava/security/cert/Certificate;)Lo/c;
    .registers 5

    array-length p0, p2

    new-array p0, p0, [Ll0/m;

    const/4 v0, 0x0

    :goto_4
    array-length v1, p2

    if-eq v0, v1, :cond_16

    aget-object v1, p2, v0

    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Ll0/m;->i(Ljava/lang/Object;)Ll0/m;

    move-result-object v1

    aput-object v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_16
    new-instance p2, Lo/c;

    invoke-direct {p2, p1, p0}, Lo/c;-><init>(Ld0/i;[Ll0/m;)V

    return-object p2
.end method

.method private decodeCertificate(Ljava/lang/Object;)Ljava/security/cert/Certificate;
    .registers 3

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->helper:Le2/b;

    const-string v0, "X.509"

    if-eqz p0, :cond_18

    :try_start_6
    invoke-interface {p0, v0}, Le2/b;->a(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-static {p1}, Ll0/m;->i(Ljava/lang/Object;)Ll0/m;

    move-result-object p1

    invoke-virtual {p1}, Lm/n;->getEncoded()[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_29

    :cond_18
    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-static {p1}, Ll0/m;->i(Ljava/lang/Object;)Ll0/m;

    move-result-object p1

    invoke-virtual {p1}, Lm/n;->getEncoded()[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :goto_29
    invoke-virtual {p0, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p0
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_2d} :catch_2e

    return-object p0

    :catch_2e
    const/4 p0, 0x0

    return-object p0
.end method

.method private decryptData(Ljava/lang/String;Ll0/b;[C[B)[B
    .registers 9

    iget-object v0, p2, Ll0/b;->c:Lm/q;

    sget-object v1, Ld0/r;->C:Lm/q;

    invoke-virtual {v0, v1}, Lm/u;->n(Lm/u;)Z

    move-result v0

    if-eqz v0, :cond_84

    iget-object p2, p2, Ll0/b;->d:Lm/f;

    invoke-static {p2}, Ld0/n;->h(Ljava/lang/Object;)Ld0/n;

    move-result-object p2

    iget-object v0, p2, Ld0/n;->d:Ld0/j;

    :try_start_12
    iget-object v0, v0, Ld0/j;->c:Ll0/b;

    iget-object v1, v0, Ll0/b;->c:Lm/q;

    sget-object v2, Lz/b;->T:Lm/q;

    invoke-virtual {v1, v2}, Lm/u;->n(Lm/u;)Z

    move-result v1

    if-eqz v1, :cond_3c

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->helper:Le2/b;

    const-string v2, "AES/CCM/NoPadding"

    invoke-interface {v1, v2}, Le2/b;->d(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->helper:Le2/b;

    const-string v3, "CCM"

    invoke-interface {v2, v3}, Le2/b;->h(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v2

    iget-object v0, v0, Ll0/b;->d:Lm/f;

    invoke-static {v0}, Ll1/a;->h(Ljava/lang/Object;)Ll1/a;

    move-result-object v0

    invoke-virtual {v0}, Lm/n;->getEncoded()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/security/AlgorithmParameters;->init([B)V

    goto :goto_4f

    :cond_3c
    iget-object v0, v0, Ll0/b;->c:Lm/q;

    sget-object v1, Lz/b;->U:Lm/q;

    invoke-virtual {v0, v1}, Lm/u;->n(Lm/u;)Z

    move-result v0

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->helper:Le2/b;

    const-string v1, "AESKWP"

    invoke-interface {v0, v1}, Le2/b;->d(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x0

    :goto_4f
    iget-object p2, p2, Ld0/n;->c:Ld0/k;

    if-eqz p3, :cond_54

    goto :goto_57

    :cond_54
    const/4 p3, 0x0

    new-array p3, p3, [C

    :goto_57
    const/16 v0, 0x20

    invoke-direct {p0, p2, p1, p3, v0}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->generateKey(Ld0/k;Ljava/lang/String;[CI)[B

    move-result-object p0

    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    const-string p2, "AES"

    invoke-direct {p1, p0, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 p0, 0x2

    invoke-virtual {v1, p0, p1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V

    invoke-virtual {v1, p4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0

    :cond_6d
    new-instance p0, Ljava/io/IOException;

    const-string p1, "BCFKS KeyStore cannot recognize protection encryption algorithm."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_75} :catch_77
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_75} :catch_75

    :catch_75
    move-exception p0

    goto :goto_79

    :catch_77
    move-exception p0

    goto :goto_83

    :goto_79
    new-instance p1, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_83
    throw p0

    :cond_84
    new-instance p0, Ljava/io/IOException;

    const-string p1, "BCFKS KeyStore cannot recognize protection algorithm."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private extractCreationDate(Lo/f;Ljava/util/Date;)Ljava/util/Date;
    .registers 3

    :try_start_0
    iget-object p0, p1, Lo/f;->q:Lm/j;

    invoke-virtual {p0}, Lm/j;->t()Ljava/util/Date;

    move-result-object p0
    :try_end_6
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    return-object p2
.end method

.method private generateKey(Ld0/k;Ljava/lang/String;[CI)[B
    .registers 13

    invoke-static {p3}, Lorg/bouncycastle/crypto/e0;->PKCS12PasswordToBytes([C)[B

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-static {p2}, Lorg/bouncycastle/crypto/e0;->PKCS12PasswordToBytes([C)[B

    move-result-object p2

    sget-object p3, Lv1/c;->t:Lm/q;

    iget-object v0, p1, Ld0/k;->c:Ll0/b;

    iget-object p1, p1, Ld0/k;->c:Ll0/b;

    iget-object v0, v0, Ll0/b;->c:Lm/q;

    invoke-virtual {p3, v0}, Lm/u;->n(Lm/u;)Z

    move-result p3

    const/4 v0, -0x1

    if-eqz p3, :cond_55

    iget-object p1, p1, Ll0/b;->d:Lm/f;

    invoke-static {p1}, Lv1/f;->h(Ljava/lang/Object;)Lv1/f;

    move-result-object p1

    iget-object p3, p1, Lv1/f;->y:Ljava/math/BigInteger;

    iget-object v1, p1, Lv1/f;->q:Ljava/math/BigInteger;

    if-eqz p3, :cond_2d

    invoke-virtual {p3}, Ljava/math/BigInteger;->intValue()I

    move-result p4

    :goto_2b
    move v5, p4

    goto :goto_30

    :cond_2d
    if-eq p4, v0, :cond_4d

    goto :goto_2b

    :goto_30
    invoke-static {p0, p2}, Lm4/d;->j([B[B)[B

    move-result-object v6

    iget-object p0, p1, Lv1/f;->c:[B

    invoke-static {p0}, Lm4/d;->e([B)[B

    move-result-object v7

    iget-object p0, p1, Lv1/f;->d:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    invoke-static/range {v2 .. v7}, Ls2/a;->k(IIII[B[B)[B

    move-result-object p0

    return-object p0

    :cond_4d
    new-instance p0, Ljava/io/IOException;

    const-string p1, "no keyLength found in ScryptParams"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_55
    iget-object p3, p1, Ll0/b;->c:Lm/q;

    sget-object v1, Ld0/r;->B:Lm/q;

    invoke-virtual {p3, v1}, Lm/u;->n(Lm/u;)Z

    move-result p3

    if-eqz p3, :cond_108

    iget-object p1, p1, Ll0/b;->d:Lm/f;

    invoke-static {p1}, Ld0/o;->h(Ljava/lang/Object;)Ld0/o;

    move-result-object p1

    invoke-virtual {p1}, Ld0/o;->i()Ljava/math/BigInteger;

    move-result-object p3

    iget-object v1, p1, Ld0/o;->d:Lm/l;

    if-eqz p3, :cond_76

    invoke-virtual {p1}, Ld0/o;->i()Ljava/math/BigInteger;

    move-result-object p3

    invoke-virtual {p3}, Ljava/math/BigInteger;->intValue()I

    move-result p4

    goto :goto_78

    :cond_76
    if-eq p4, v0, :cond_100

    :goto_78
    invoke-virtual {p1}, Ld0/o;->j()Ll0/b;

    move-result-object p3

    iget-object p3, p3, Ll0/b;->c:Lm/q;

    sget-object v0, Ld0/r;->O:Lm/q;

    invoke-virtual {p3, v0}, Lm/u;->n(Lm/u;)Z

    move-result p3

    if-eqz p3, :cond_ae

    new-instance p3, Lx0/r;

    new-instance v0, Ls0/e0;

    invoke-direct {v0}, Ls0/e0;-><init>()V

    invoke-direct {p3, v0}, Lx0/r;-><init>(Lorg/bouncycastle/crypto/v;)V

    invoke-static {p0, p2}, Lm4/d;->j([B[B)[B

    move-result-object p0

    invoke-virtual {p1}, Ld0/o;->k()[B

    move-result-object p1

    invoke-virtual {v1}, Lm/l;->t()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p2}, Ljava/math/BigInteger;->intValue()I

    move-result p2

    invoke-virtual {p3, p0, p1, p2}, Lorg/bouncycastle/crypto/e0;->init([B[BI)V

    mul-int/lit8 p4, p4, 0x8

    invoke-virtual {p3, p4}, Lx0/r;->generateDerivedParameters(I)Lorg/bouncycastle/crypto/g;

    move-result-object p0

    check-cast p0, Le1/o0;

    iget-object p0, p0, Le1/o0;->c:[B

    return-object p0

    :cond_ae
    invoke-virtual {p1}, Ld0/o;->j()Ll0/b;

    move-result-object p3

    iget-object p3, p3, Ll0/b;->c:Lm/q;

    sget-object v0, Lz/b;->p:Lm/q;

    invoke-virtual {p3, v0}, Lm/u;->n(Lm/u;)Z

    move-result p3

    if-eqz p3, :cond_e6

    new-instance p3, Lx0/r;

    new-instance v0, Ls0/d0;

    const/16 v2, 0x200

    invoke-direct {v0, v2}, Ls0/d0;-><init>(I)V

    invoke-direct {p3, v0}, Lx0/r;-><init>(Lorg/bouncycastle/crypto/v;)V

    invoke-static {p0, p2}, Lm4/d;->j([B[B)[B

    move-result-object p0

    invoke-virtual {p1}, Ld0/o;->k()[B

    move-result-object p1

    invoke-virtual {v1}, Lm/l;->t()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p2}, Ljava/math/BigInteger;->intValue()I

    move-result p2

    invoke-virtual {p3, p0, p1, p2}, Lorg/bouncycastle/crypto/e0;->init([B[BI)V

    mul-int/lit8 p4, p4, 0x8

    invoke-virtual {p3, p4}, Lx0/r;->generateDerivedParameters(I)Lorg/bouncycastle/crypto/g;

    move-result-object p0

    check-cast p0, Le1/o0;

    iget-object p0, p0, Le1/o0;->c:[B

    return-object p0

    :cond_e6
    new-instance p0, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "BCFKS KeyStore: unrecognized MAC PBKD PRF: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ld0/o;->j()Ll0/b;

    move-result-object p1

    iget-object p1, p1, Ll0/b;->c:Lm/q;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_100
    new-instance p0, Ljava/io/IOException;

    const-string p1, "no keyLength found in PBKDF2Params"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_108
    new-instance p0, Ljava/io/IOException;

    const-string p1, "BCFKS KeyStore: unrecognized MAC PBKD."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private generatePkbdAlgorithmIdentifier(Ld0/k;I)Ld0/k;
    .registers 11

    sget-object v0, Lv1/c;->t:Lm/q;

    iget-object p1, p1, Ld0/k;->c:Ll0/b;

    iget-object v1, p1, Ll0/b;->c:Lm/q;

    invoke-virtual {v0, v1}, Lm/u;->n(Lm/u;)Z

    move-result v1

    if-eqz v1, :cond_38

    iget-object p1, p1, Ll0/b;->d:Lm/f;

    invoke-static {p1}, Lv1/f;->h(Ljava/lang/Object;)Lv1/f;

    move-result-object p1

    iget-object v1, p1, Lv1/f;->c:[B

    invoke-static {v1}, Lm4/d;->e([B)[B

    move-result-object v1

    array-length v1, v1

    new-array v3, v1, [B

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->getDefaultSecureRandom()Ljava/security/SecureRandom;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v2, Lv1/f;

    iget-object v4, p1, Lv1/f;->d:Ljava/math/BigInteger;

    iget-object v5, p1, Lv1/f;->q:Ljava/math/BigInteger;

    iget-object v6, p1, Lv1/f;->x:Ljava/math/BigInteger;

    int-to-long p0, p2

    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-direct/range {v2 .. v7}, Lv1/f;-><init>([BLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance p0, Ld0/k;

    invoke-direct {p0, v0, v2}, Ld0/k;-><init>(Lm/q;Lm/n;)V

    return-object p0

    :cond_38
    iget-object p1, p1, Ll0/b;->d:Lm/f;

    invoke-static {p1}, Ld0/o;->h(Ljava/lang/Object;)Ld0/o;

    move-result-object p1

    invoke-virtual {p1}, Ld0/o;->k()[B

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [B

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->getDefaultSecureRandom()Ljava/security/SecureRandom;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance p0, Ld0/o;

    iget-object v1, p1, Ld0/o;->d:Lm/l;

    invoke-virtual {v1}, Lm/l;->t()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    invoke-virtual {p1}, Ld0/o;->j()Ll0/b;

    move-result-object p1

    invoke-direct {p0, v0, v1, p2, p1}, Ld0/o;-><init>([BIILl0/b;)V

    new-instance p1, Ld0/k;

    sget-object p2, Ld0/r;->B:Lm/q;

    invoke-direct {p1, p2, p0}, Ld0/k;-><init>(Lm/q;Lm/n;)V

    return-object p1
.end method

.method private generatePkbdAlgorithmIdentifier(Lj1/c;I)Ld0/k;
    .registers 3

    sget-object p0, Lv1/c;->a:Lm/q;

    const/4 p0, 0x0

    throw p0
.end method

.method private generatePkbdAlgorithmIdentifier(Lm/q;I)Ld0/k;
    .registers 8

    const/16 v0, 0x40

    new-array v0, v0, [B

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->getDefaultSecureRandom()Ljava/security/SecureRandom;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    sget-object p0, Ld0/r;->B:Lm/q;

    invoke-virtual {p0, p1}, Lm/u;->n(Lm/u;)Z

    move-result v1

    if-eqz v1, :cond_2a

    new-instance p1, Ld0/k;

    new-instance v1, Ld0/o;

    new-instance v2, Ll0/b;

    sget-object v3, Ld0/r;->O:Lm/q;

    sget-object v4, Lm/v0;->d:Lm/v0;

    invoke-direct {v2, v3, v4}, Ll0/b;-><init>(Lm/q;Lm/f;)V

    const v3, 0xc800

    invoke-direct {v1, v0, v3, p2, v2}, Ld0/o;-><init>([BIILl0/b;)V

    invoke-direct {p1, p0, v1}, Ld0/k;-><init>(Lm/q;Lm/n;)V

    return-object p1

    :cond_2a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p2, "unknown derivation algorithm: "

    invoke-static {p2, p1}, Lb/b;->j(Ljava/lang/String;Lm/q;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private generateSignatureAlgId(Ljava/security/Key;La2/b;)Ll0/b;
    .registers 3

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    instance-of p0, p1, Lh2/a;

    if-eqz p0, :cond_20

    sget-object p0, La2/b;->q:La2/b;

    if-ne p2, p0, :cond_14

    new-instance p0, Ll0/b;

    sget-object p1, Lm0/m;->R0:Lm/q;

    invoke-direct {p0, p1}, Ll0/b;-><init>(Lm/q;)V

    return-object p0

    :cond_14
    sget-object p0, La2/b;->x:La2/b;

    if-ne p2, p0, :cond_20

    new-instance p0, Ll0/b;

    sget-object p1, Lz/b;->g0:Lm/q;

    invoke-direct {p0, p1}, Ll0/b;-><init>(Lm/q;)V

    return-object p0

    :cond_20
    instance-of p0, p1, Ljava/security/interfaces/DSAKey;

    if-eqz p0, :cond_3c

    sget-object p0, La2/b;->c:La2/b;

    if-ne p2, p0, :cond_30

    new-instance p0, Ll0/b;

    sget-object p1, Lz/b;->Y:Lm/q;

    invoke-direct {p0, p1}, Ll0/b;-><init>(Lm/q;)V

    return-object p0

    :cond_30
    sget-object p0, La2/b;->d:La2/b;

    if-ne p2, p0, :cond_3c

    new-instance p0, Ll0/b;

    sget-object p1, Lz/b;->c0:Lm/q;

    invoke-direct {p0, p1}, Ll0/b;-><init>(Lm/q;)V

    return-object p0

    :cond_3c
    instance-of p0, p1, Ljava/security/interfaces/RSAKey;

    if-eqz p0, :cond_5a

    sget-object p0, La2/b;->y:La2/b;

    sget-object p1, Lm/v0;->d:Lm/v0;

    if-ne p2, p0, :cond_4e

    new-instance p0, Ll0/b;

    sget-object p2, Ld0/r;->n:Lm/q;

    invoke-direct {p0, p2, p1}, Ll0/b;-><init>(Lm/q;Lm/f;)V

    return-object p0

    :cond_4e
    sget-object p0, La2/b;->z1:La2/b;

    if-ne p2, p0, :cond_5a

    new-instance p0, Ll0/b;

    sget-object p2, Lz/b;->k0:Lm/q;

    invoke-direct {p0, p2, p1}, Ll0/b;-><init>(Lm/q;Lm/f;)V

    return-object p0

    :cond_5a
    new-instance p0, Ljava/io/IOException;

    const-string p1, "unknown signature algorithm"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getDefaultSecureRandom()Ljava/security/SecureRandom;
    .registers 1

    invoke-static {}, Lorg/bouncycastle/crypto/o;->b()Ljava/security/SecureRandom;

    move-result-object p0

    return-object p0
.end method

.method private getEncryptedObjectStoreData(Ll0/b;[C)Lo/b;
    .registers 9

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->entries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->entries:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lo/f;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/f;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->hmacPkbdAlgorithm:Ld0/k;

    const/16 v2, 0x20

    invoke-direct {p0, v1, v2}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->generatePkbdAlgorithmIdentifier(Ld0/k;I)Ld0/k;

    move-result-object v1

    if-eqz p2, :cond_1f

    goto :goto_22

    :cond_1f
    const/4 p2, 0x0

    new-array p2, p2, [C

    :goto_22
    const-string v3, "STORE_ENCRYPTION"

    invoke-direct {p0, v1, v3, p2, v2}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->generateKey(Ld0/k;Ljava/lang/String;[CI)[B

    move-result-object p2

    new-instance v2, Lo/i;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->creationDate:Ljava/util/Date;

    iget-object v4, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->lastModifiedDate:Ljava/util/Date;

    new-instance v5, Lo/g;

    invoke-direct {v5, v0}, Lo/g;-><init>([Lo/f;)V

    invoke-direct {v2, p1, v3, v4, v5}, Lo/i;-><init>(Ll0/b;Ljava/util/Date;Ljava/util/Date;Lo/g;)V

    :try_start_36
    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->storeEncryptionAlgorithm:Lm/q;

    sget-object v0, Lz/b;->T:Lm/q;

    invoke-virtual {p1, v0}, Lm/u;->n(Lm/u;)Z

    move-result p1

    if-eqz p1, :cond_71

    const-string p1, "AES/CCM/NoPadding"

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->createCipher(Ljava/lang/String;[B)Ljavax/crypto/Cipher;

    move-result-object p0

    invoke-virtual {v2}, Lm/n;->getEncoded()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    invoke-virtual {p0}, Ljavax/crypto/Cipher;->getParameters()Ljava/security/AlgorithmParameters;

    move-result-object p0

    new-instance p2, Ld0/n;

    new-instance v2, Ld0/j;

    invoke-virtual {p0}, Ljava/security/AlgorithmParameters;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Ll1/a;->h(Ljava/lang/Object;)Ll1/a;

    move-result-object p0

    invoke-direct {v2, v0, p0}, Ld0/j;-><init>(Lm/q;Lm/n;)V

    invoke-direct {p2, v1, v2}, Ld0/n;-><init>(Ld0/k;Ld0/j;)V

    new-instance p0, Lo/b;

    new-instance v0, Ll0/b;

    sget-object v1, Ld0/r;->C:Lm/q;

    invoke-direct {v0, v1, p2}, Ll0/b;-><init>(Lm/q;Lm/f;)V

    invoke-direct {p0, v0, p1}, Lo/b;-><init>(Ll0/b;[B)V

    return-object p0

    :cond_71
    const-string p1, "AESKWP"

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->createCipher(Ljava/lang/String;[B)Ljavax/crypto/Cipher;

    move-result-object p0

    invoke-virtual {v2}, Lm/n;->getEncoded()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    new-instance p1, Ld0/n;

    new-instance p2, Ld0/j;

    sget-object v0, Lz/b;->U:Lm/q;

    invoke-direct {p2, v0}, Ld0/j;-><init>(Lm/q;)V

    invoke-direct {p1, v1, p2}, Ld0/n;-><init>(Ld0/k;Ld0/j;)V

    new-instance p2, Lo/b;

    new-instance v0, Ll0/b;

    sget-object v1, Ld0/r;->C:Lm/q;

    invoke-direct {v0, v1, p1}, Ll0/b;-><init>(Lm/q;Lm/f;)V

    invoke-direct {p2, v0, p0}, Lo/b;-><init>(Ll0/b;[B)V
    :try_end_97
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_36 .. :try_end_97} :catch_c4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_36 .. :try_end_97} :catch_b9
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_36 .. :try_end_97} :catch_ae
    .catch Ljava/security/InvalidKeyException; {:try_start_36 .. :try_end_97} :catch_a3
    .catch Ljava/security/NoSuchProviderException; {:try_start_36 .. :try_end_97} :catch_98

    return-object p2

    :catch_98
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_a3
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_ae
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_b9
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_c4
    move-exception p0

    new-instance p1, Ljava/security/NoSuchAlgorithmException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static getPublicKeyAlg(Lm/q;)Ljava/lang/String;
    .registers 2

    sget-object v0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->publicAlgMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_b

    return-object v0

    :cond_b
    invoke-virtual {p0}, Lm/q;->u()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isSimilarHmacPbkd(Lj1/c;Ld0/k;)Z
    .registers 3

    const/4 p0, 0x0

    throw p0
.end method

.method private verifyMac([BLo/k;[C)V
    .registers 6

    iget-object v0, p2, Lo/k;->c:Ll0/b;

    iget-object v1, p2, Lo/k;->d:Ld0/k;

    invoke-direct {p0, p1, v0, v1, p3}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->calculateMac([BLl0/b;Ld0/k;[C)[B

    move-result-object p0

    iget-object p1, p2, Lo/k;->q:Lm/r;

    iget-object p1, p1, Lm/r;->c:[B

    invoke-static {p1}, Lm4/d;->e([B)[B

    move-result-object p1

    invoke-static {p0, p1}, Lm4/d;->o([B[B)Z

    move-result p0

    if-eqz p0, :cond_17

    return-void

    :cond_17
    new-instance p0, Ljava/io/IOException;

    const-string p1, "BCFKS KeyStore corrupted: MAC calculation failed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private verifySig(Lm/f;Lo/m;Ljava/security/PublicKey;)V
    .registers 5

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->helper:Le2/b;

    iget-object v0, p2, Lo/m;->c:Ll0/b;

    iget-object v0, v0, Ll0/b;->c:Lm/q;

    invoke-virtual {v0}, Lm/q;->u()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Le2/b;->createSignature(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    invoke-interface {p1}, Lm/f;->d()Lm/u;

    move-result-object p1

    invoke-virtual {p1}, Lm/n;->g()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/security/Signature;->update([B)V

    new-instance p1, Lm/p0;

    iget-object p2, p2, Lo/m;->q:Lm/b;

    invoke-virtual {p2}, Lm/b;->s()[B

    move-result-object p3

    invoke-virtual {p2}, Lm/b;->f()I

    move-result p2

    invoke-direct {p1, p3, p2}, Lm/b;-><init>([BI)V

    invoke-virtual {p1}, Lm/b;->u()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/security/Signature;->verify([B)Z

    move-result p0

    if-eqz p0, :cond_36

    return-void

    :cond_36
    new-instance p0, Ljava/io/IOException;

    const-string p1, "BCFKS KeyStore corrupted: signature calculation failed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public engineAliases()Ljava/util/Enumeration;
    .registers 3

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->entries:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi$1;

    invoke-direct {v1, p0, v0}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi$1;-><init>(Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public engineContainsAlias(Ljava/lang/String;)Z
    .registers 2

    if-eqz p1, :cond_9

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->entries:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_9
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "alias value is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineDeleteEntry(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->entries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/f;

    if-nez v0, :cond_b

    return-void

    :cond_b
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->privateKeyCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->entries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->lastModifiedDate:Ljava/util/Date;

    return-void
.end method

.method public engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .registers 5

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->entries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/f;

    if-eqz p1, :cond_47

    iget-object v0, p1, Lo/f;->c:Ljava/math/BigInteger;

    sget-object v1, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->PRIVATE_KEY:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    sget-object v1, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->PROTECTED_PRIVATE_KEY:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    goto :goto_2e

    :cond_1d
    sget-object v1, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->CERTIFICATE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-virtual {p1}, Lo/f;->h()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->decodeCertificate(Ljava/lang/Object;)Ljava/security/cert/Certificate;

    move-result-object p0

    return-object p0

    :cond_2e
    :goto_2e
    invoke-virtual {p1}, Lo/f;->h()[B

    move-result-object p1

    invoke-static {p1}, Lo/c;->h(Ljava/lang/Object;)Lo/c;

    move-result-object p1

    iget-object p1, p1, Lo/c;->d:[Ll0/m;

    array-length v0, p1

    new-array v0, v0, [Ll0/m;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object p1, v0, v2

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->decodeCertificate(Ljava/lang/Object;)Ljava/security/cert/Certificate;

    move-result-object p0

    return-object p0

    :cond_47
    const/4 p0, 0x0

    return-object p0
.end method

.method public engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .registers 9

    const/4 v0, 0x0

    if-nez p1, :cond_4

    goto :goto_6c

    :cond_4
    :try_start_4
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object p1
    :try_end_8
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_4 .. :try_end_8} :catch_6c

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->entries:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catch_12
    :cond_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->entries:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/f;

    iget-object v4, v3, Lo/f;->c:Ljava/math/BigInteger;

    sget-object v5, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->CERTIFICATE:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-virtual {v3}, Lo/f;->h()[B

    move-result-object v3

    invoke-static {v3, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_12

    goto :goto_6b

    :cond_3b
    sget-object v5, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->PRIVATE_KEY:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4b

    sget-object v5, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->PROTECTED_PRIVATE_KEY:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    :cond_4b
    :try_start_4b
    invoke-virtual {v3}, Lo/f;->h()[B

    move-result-object v3

    invoke-static {v3}, Lo/c;->h(Ljava/lang/Object;)Lo/c;

    move-result-object v3

    iget-object v3, v3, Lo/c;->d:[Ll0/m;

    array-length v4, v3

    new-array v4, v4, [Ll0/m;

    array-length v5, v3

    const/4 v6, 0x0

    invoke-static {v3, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v3, v4, v6

    iget-object v3, v3, Ll0/m;->c:Lm/x;

    invoke-virtual {v3}, Lm/n;->getEncoded()[B

    move-result-object v3

    invoke-static {v3, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_69} :catch_12

    if-eqz v3, :cond_12

    :goto_6b
    return-object v2

    :catch_6c
    :cond_6c
    :goto_6c
    return-object v0
.end method

.method public engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .registers 6

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->entries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/f;

    if-eqz p1, :cond_3e

    iget-object v0, p1, Lo/f;->c:Ljava/math/BigInteger;

    sget-object v1, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->PRIVATE_KEY:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    sget-object v1, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->PROTECTED_PRIVATE_KEY:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    :cond_1c
    invoke-virtual {p1}, Lo/f;->h()[B

    move-result-object p1

    invoke-static {p1}, Lo/c;->h(Ljava/lang/Object;)Lo/c;

    move-result-object p1

    iget-object p1, p1, Lo/c;->d:[Ll0/m;

    array-length v0, p1

    new-array v1, v0, [Ll0/m;

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array p1, v0, [Ljava/security/cert/X509Certificate;

    :goto_30
    if-eq v3, v0, :cond_3d

    aget-object v2, v1, v3

    invoke-direct {p0, v2}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->decodeCertificate(Ljava/lang/Object;)Ljava/security/cert/Certificate;

    move-result-object v2

    aput-object v2, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    :cond_3d
    return-object p1

    :cond_3e
    const/4 p0, 0x0

    return-object p0
.end method

.method public engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .registers 2

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->entries:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/f;

    if-eqz p0, :cond_17

    :try_start_a
    iget-object p0, p0, Lo/f;->x:Lm/j;

    invoke-virtual {p0}, Lm/j;->t()Ljava/util/Date;

    move-result-object p0
    :try_end_10
    .catch Ljava/text/ParseException; {:try_start_a .. :try_end_10} :catch_11

    return-object p0

    :catch_11
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    return-object p0

    :cond_17
    const/4 p0, 0x0

    return-object p0
.end method

.method public engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;
    .registers 9

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->entries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_11c

    iget-object v2, v0, Lo/f;->c:Ljava/math/BigInteger;

    sget-object v3, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->PRIVATE_KEY:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "): "

    if-nez v3, :cond_b6

    sget-object v3, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->PROTECTED_PRIVATE_KEY:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    goto/16 :goto_b6

    :cond_21
    sget-object v3, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->SECRET_KEY:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v5, "BCFKS KeyStore unable to recover secret key ("

    if-nez v3, :cond_40

    sget-object v3, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->PROTECTED_SECRET_KEY:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    goto :goto_40

    :cond_34
    new-instance p0, Ljava/security/UnrecoverableKeyException;

    const-string p2, "): type not recognized"

    invoke-static {v5, p1, p2}, Lb/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_40
    :goto_40
    invoke-virtual {v0}, Lo/f;->h()[B

    move-result-object v0

    instance-of v2, v0, Lo/d;

    if-eqz v2, :cond_4b

    check-cast v0, Lo/d;

    goto :goto_59

    :cond_4b
    if-eqz v0, :cond_58

    new-instance v2, Lo/d;

    invoke-static {v0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v0

    invoke-direct {v2, v0}, Lo/d;-><init>(Lm/x;)V

    move-object v0, v2

    goto :goto_59

    :cond_58
    move-object v0, v1

    :goto_59
    :try_start_59
    const-string v2, "SECRET_KEY_ENCRYPTION"

    iget-object v3, v0, Lo/d;->c:Ll0/b;

    iget-object v0, v0, Lo/d;->d:Lm/r;

    iget-object v0, v0, Lm/r;->c:[B

    invoke-static {v0}, Lm4/d;->e([B)[B

    move-result-object v0

    invoke-direct {p0, v2, v3, p2, v0}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->decryptData(Ljava/lang/String;Ll0/b;[C[B)[B

    move-result-object p2

    instance-of v0, p2, Lo/l;

    if-eqz v0, :cond_71

    move-object v1, p2

    check-cast v1, Lo/l;

    goto :goto_7c

    :cond_71
    if-eqz p2, :cond_7c

    new-instance v1, Lo/l;

    invoke-static {p2}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p2

    invoke-direct {v1, p2}, Lo/l;-><init>(Lm/x;)V

    :cond_7c
    :goto_7c
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->helper:Le2/b;

    iget-object p2, v1, Lo/l;->c:Lm/q;

    invoke-virtual {p2}, Lm/q;->u()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Le2/b;->j(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object p0

    new-instance p2, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v0, v1, Lo/l;->d:Lm/r;

    iget-object v0, v0, Lm/r;->c:[B

    invoke-static {v0}, Lm4/d;->e([B)[B

    move-result-object v0

    iget-object v1, v1, Lo/l;->c:Lm/q;

    invoke-virtual {v1}, Lm/q;->u()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {p0, p2}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p0
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_9f} :catch_a0

    return-object p0

    :catch_a0
    move-exception p0

    new-instance p2, Ljava/security/UnrecoverableKeyException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, v0}, Lb/b;->B(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_b6
    :goto_b6
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->privateKeyCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/PrivateKey;

    if-eqz v1, :cond_c1

    return-object v1

    :cond_c1
    invoke-virtual {v0}, Lo/f;->h()[B

    move-result-object v0

    invoke-static {v0}, Lo/c;->h(Ljava/lang/Object;)Lo/c;

    move-result-object v0

    iget-object v0, v0, Lo/c;->c:Ld0/i;

    invoke-static {v0}, Ld0/i;->h(Ljava/lang/Object;)Ld0/i;

    move-result-object v0

    :try_start_cf
    const-string v1, "PRIVATE_KEY_ENCRYPTION"

    iget-object v2, v0, Ld0/i;->c:Ll0/b;

    iget-object v0, v0, Ld0/i;->d:Lm/r;

    iget-object v0, v0, Lm/r;->c:[B

    invoke-static {v0}, Lm4/d;->e([B)[B

    move-result-object v0

    invoke-direct {p0, v1, v2, p2, v0}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->decryptData(Ljava/lang/String;Ll0/b;[C[B)[B

    move-result-object p2

    invoke-static {p2}, Ld0/t;->h(Ljava/lang/Object;)Ld0/t;

    move-result-object p2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->helper:Le2/b;

    iget-object v1, p2, Ld0/t;->d:Ll0/b;

    iget-object v1, v1, Ll0/b;->c:Lm/q;

    invoke-static {v1}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->getPublicKeyAlg(Lm/q;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Le2/b;->l(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {p2}, Lm/n;->getEncoded()[B

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p2

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->privateKeyCache:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_103
    .catch Ljava/lang/Exception; {:try_start_cf .. :try_end_103} :catch_104

    return-object p2

    :catch_104
    move-exception p0

    new-instance p2, Ljava/security/UnrecoverableKeyException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BCFKS KeyStore unable to recover private key ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, v0}, Lb/b;->B(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_11c
    return-object v1
.end method

.method public engineIsCertificateEntry(Ljava/lang/String;)Z
    .registers 2

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->entries:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/f;

    if-eqz p0, :cond_13

    iget-object p0, p0, Lo/f;->c:Ljava/math/BigInteger;

    sget-object p1, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->CERTIFICATE:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public engineIsKeyEntry(Ljava/lang/String;)Z
    .registers 3

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->entries:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/f;

    const/4 p1, 0x0

    if-eqz p0, :cond_31

    iget-object p0, p0, Lo/f;->c:Ljava/math/BigInteger;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->PRIVATE_KEY:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    sget-object v0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->SECRET_KEY:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    sget-object v0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->PROTECTED_PRIVATE_KEY:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    sget-object v0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->PROTECTED_SECRET_KEY:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2e

    goto :goto_2f

    :cond_2e
    return p1

    :cond_2f
    :goto_2f
    const/4 p0, 0x1

    return p0

    :cond_31
    return p1
.end method

.method public engineLoad(Ljava/io/InputStream;[C)V
    .registers 11

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->entries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->privateKeyCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->creationDate:Ljava/util/Date;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->lastModifiedDate:Ljava/util/Date;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->hmacAlgorithm:Ll0/b;

    if-nez p1, :cond_34

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->creationDate:Ljava/util/Date;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->lastModifiedDate:Ljava/util/Date;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->verificationKey:Ljava/security/PublicKey;

    new-instance p1, Ll0/b;

    sget-object p2, Ld0/r;->O:Lm/q;

    sget-object v0, Lm/v0;->d:Lm/v0;

    invoke-direct {p1, p2, v0}, Ll0/b;-><init>(Lm/q;Lm/f;)V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->hmacAlgorithm:Ll0/b;

    sget-object p1, Ld0/r;->B:Lm/q;

    const/16 p2, 0x40

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->generatePkbdAlgorithmIdentifier(Lm/q;I)Ld0/k;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->hmacPkbdAlgorithm:Ld0/k;

    return-void

    :cond_34
    new-instance v1, Lm/k;

    invoke-direct {v1, p1}, Lm/k;-><init>(Ljava/io/InputStream;)V

    :try_start_39
    invoke-virtual {v1}, Lm/k;->f()Lm/u;

    move-result-object p1

    if-eqz p1, :cond_49

    new-instance v1, Lo/h;

    invoke-static {p1}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p1

    invoke-direct {v1, p1}, Lo/h;-><init>(Lm/x;)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_48} :catch_157

    goto :goto_4a

    :cond_49
    move-object v1, v0

    :goto_4a
    iget-object p1, v1, Lo/h;->d:Lo/j;

    iget-object v1, v1, Lo/h;->c:Lm/n;

    iget v2, p1, Lo/j;->c:I

    iget-object p1, p1, Lo/j;->d:Lm/n;

    if-nez v2, :cond_88

    instance-of v2, p1, Lo/k;

    if-eqz v2, :cond_5b

    check-cast p1, Lo/k;

    goto :goto_69

    :cond_5b
    if-eqz p1, :cond_68

    new-instance v2, Lo/k;

    invoke-static {p1}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p1

    invoke-direct {v2, p1}, Lo/k;-><init>(Lm/x;)V

    move-object p1, v2

    goto :goto_69

    :cond_68
    move-object p1, v0

    :goto_69
    iget-object v2, p1, Lo/k;->c:Ll0/b;

    iput-object v2, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->hmacAlgorithm:Ll0/b;

    iget-object v3, p1, Lo/k;->d:Ld0/k;

    iput-object v3, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->hmacPkbdAlgorithm:Ld0/k;

    :try_start_71
    invoke-interface {v1}, Lm/f;->d()Lm/u;

    move-result-object v3

    invoke-virtual {v3}, Lm/n;->getEncoded()[B

    move-result-object v3

    invoke-direct {p0, v3, p1, p2}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->verifyMac([BLo/k;[C)V
    :try_end_7c
    .catch Ljava/security/NoSuchProviderException; {:try_start_71 .. :try_end_7c} :catch_7d

    goto :goto_c2

    :catch_7d
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_88
    const/4 v3, 0x1

    if-ne v2, v3, :cond_14f

    instance-of v2, p1, Lo/m;

    if-eqz v2, :cond_92

    check-cast p1, Lo/m;

    goto :goto_a0

    :cond_92
    if-eqz p1, :cond_9f

    new-instance v2, Lo/m;

    invoke-static {p1}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p1

    invoke-direct {v2, p1}, Lo/m;-><init>(Lm/x;)V

    move-object p1, v2

    goto :goto_a0

    :cond_9f
    move-object p1, v0

    :goto_a0
    iget-object v2, p1, Lo/m;->c:Ll0/b;

    :try_start_a2
    iget-object v3, p1, Lo/m;->d:Lm/x;

    if-nez v3, :cond_a7

    goto :goto_bd

    :cond_a7
    invoke-virtual {v3}, Lm/x;->size()I

    move-result v4

    new-array v5, v4, [Ll0/m;

    const/4 v6, 0x0

    :goto_ae
    if-eq v6, v4, :cond_bd

    invoke-virtual {v3, v6}, Lm/x;->v(I)Lm/f;

    move-result-object v7

    invoke-static {v7}, Ll0/m;->i(Ljava/lang/Object;)Ll0/m;

    move-result-object v7

    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_ae

    :cond_bd
    :goto_bd
    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->verificationKey:Ljava/security/PublicKey;

    invoke-direct {p0, v1, p1, v3}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->verifySig(Lm/f;Lo/m;Ljava/security/PublicKey;)V
    :try_end_c2
    .catch Ljava/security/GeneralSecurityException; {:try_start_a2 .. :try_end_c2} :catch_136

    :goto_c2
    instance-of p1, v1, Lo/b;

    if-eqz p1, :cond_d9

    check-cast v1, Lo/b;

    iget-object p1, v1, Lo/b;->c:Ll0/b;

    iget-object v1, v1, Lo/b;->d:Lm/r;

    iget-object v1, v1, Lm/r;->c:[B

    const-string v3, "STORE_ENCRYPTION"

    invoke-direct {p0, v3, p1, p2, v1}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->decryptData(Ljava/lang/String;Ll0/b;[C[B)[B

    move-result-object p1

    invoke-static {p1}, Lo/i;->h(Ljava/lang/Object;)Lo/i;

    move-result-object p1

    goto :goto_dd

    :cond_d9
    invoke-static {v1}, Lo/i;->h(Ljava/lang/Object;)Lo/i;

    move-result-object p1

    :goto_dd
    :try_start_dd
    iget-object p2, p1, Lo/i;->q:Lm/j;

    invoke-virtual {p2}, Lm/j;->t()Ljava/util/Date;

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->creationDate:Ljava/util/Date;

    iget-object p2, p1, Lo/i;->x:Lm/j;

    invoke-virtual {p2}, Lm/j;->t()Ljava/util/Date;

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->lastModifiedDate:Ljava/util/Date;
    :try_end_ed
    .catch Ljava/text/ParseException; {:try_start_dd .. :try_end_ed} :catch_12e

    iget-object p2, p1, Lo/i;->d:Ll0/b;

    invoke-virtual {p2, v2}, Lm/n;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_126

    iget-object p1, p1, Lo/i;->y:Lo/g;

    invoke-virtual {p1}, Lo/g;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_fb
    move-object p2, p1

    check-cast p2, Lkotlin/jvm/internal/a;

    invoke-virtual {p2}, Lkotlin/jvm/internal/a;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_125

    invoke-virtual {p2}, Lkotlin/jvm/internal/a;->next()Ljava/lang/Object;

    move-result-object p2

    instance-of v1, p2, Lo/f;

    if-eqz v1, :cond_10f

    check-cast p2, Lo/f;

    goto :goto_11d

    :cond_10f
    if-eqz p2, :cond_11c

    new-instance v1, Lo/f;

    invoke-static {p2}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p2

    invoke-direct {v1, p2}, Lo/f;-><init>(Lm/x;)V

    move-object p2, v1

    goto :goto_11d

    :cond_11c
    move-object p2, v0

    :goto_11d
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->entries:Ljava/util/Map;

    iget-object v2, p2, Lo/f;->d:Ljava/lang/String;

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_fb

    :cond_125
    return-void

    :cond_126
    new-instance p0, Ljava/io/IOException;

    const-string p1, "BCFKS KeyStore storeData integrity algorithm does not match store integrity algorithm."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_12e
    new-instance p0, Ljava/io/IOException;

    const-string p1, "BCFKS KeyStore unable to parse store data information."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_136
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "error verifying signature: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_14f
    new-instance p0, Ljava/io/IOException;

    const-string p1, "BCFKS KeyStore unable to recognize integrity check."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_157
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineLoad(Ljava/security/KeyStore$LoadStoreParameter;)V
    .registers 3

    if-nez p1, :cond_7

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->engineLoad(Ljava/io/InputStream;[C)V

    return-void

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "no support for \'parameter\' of type "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .registers 10

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->entries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/f;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    if-eqz v0, :cond_2b

    iget-object v1, v0, Lo/f;->c:Ljava/math/BigInteger;

    sget-object v2, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->CERTIFICATE:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-direct {p0, v0, v5}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->extractCreationDate(Lo/f;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    move-object v4, v0

    goto :goto_2c

    :cond_1f
    new-instance p0, Ljava/security/KeyStoreException;

    const-string p2, "BCFKS KeyStore already has a key entry with alias "

    invoke-static {p2, p1}, Lb/b;->C(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2b
    move-object v4, v5

    :goto_2c
    :try_start_2c
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->entries:Ljava/util/Map;

    new-instance v1, Lo/f;

    sget-object v2, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->CERTIFICATE:Ljava/math/BigInteger;

    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v6

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lo/f;-><init>(Ljava/math/BigInteger;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;[B)V

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3d
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_2c .. :try_end_3d} :catch_40

    iput-object v5, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->lastModifiedDate:Ljava/util/Date;

    return-void

    :catch_40
    move-exception v0

    move-object p0, v0

    new-instance p1, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi$ExtKeyStoreException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "BCFKS KeyStore unable to handle certificate: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi$ExtKeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .registers 15

    const-string v0, "BCFKS KeyStore cannot recognize secret key ("

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->entries:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/f;

    if-eqz v1, :cond_17

    invoke-direct {p0, v1, v5}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->extractCreationDate(Lo/f;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    move-object v4, v1

    goto :goto_18

    :cond_17
    move-object v4, v5

    :goto_18
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->privateKeyCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v1, p2, Ljava/security/PrivateKey;

    const-string v7, "BCFKS KeyStore exception storing private key: "

    const-string v2, "AESKWP"

    const-string v3, "AES/CCM/NoPadding"

    const/4 v6, 0x0

    const/16 v8, 0x20

    if-eqz v1, :cond_c9

    if-eqz p4, :cond_c1

    :try_start_2c
    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object p2

    sget-object v0, Ld0/r;->B:Lm/q;

    invoke-direct {p0, v0, v8}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->generatePkbdAlgorithmIdentifier(Lm/q;I)Ld0/k;

    move-result-object v0

    const-string v1, "PRIVATE_KEY_ENCRYPTION"

    if-eqz p3, :cond_3b

    goto :goto_3d

    :cond_3b
    new-array p3, v6, [C

    :goto_3d
    invoke-direct {p0, v0, v1, p3, v8}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->generateKey(Ld0/k;Ljava/lang/String;[CI)[B

    move-result-object p3

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->storeEncryptionAlgorithm:Lm/q;

    sget-object v6, Lz/b;->T:Lm/q;

    invoke-virtual {v1, v6}, Lm/u;->n(Lm/u;)Z

    move-result v1

    if-eqz v1, :cond_79

    invoke-direct {p0, v3, p3}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->createCipher(Ljava/lang/String;[B)Ljavax/crypto/Cipher;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p2

    invoke-virtual {p3}, Ljavax/crypto/Cipher;->getParameters()Ljava/security/AlgorithmParameters;

    move-result-object p3

    new-instance v1, Ld0/n;

    new-instance v2, Ld0/j;

    invoke-virtual {p3}, Ljava/security/AlgorithmParameters;->getEncoded()[B

    move-result-object p3

    invoke-static {p3}, Ll1/a;->h(Ljava/lang/Object;)Ll1/a;

    move-result-object p3

    invoke-direct {v2, v6, p3}, Ld0/j;-><init>(Lm/q;Lm/n;)V

    invoke-direct {v1, v0, v2}, Ld0/n;-><init>(Ld0/k;Ld0/j;)V

    new-instance p3, Ld0/i;

    new-instance v0, Ll0/b;

    sget-object v2, Ld0/r;->C:Lm/q;

    invoke-direct {v0, v2, v1}, Ll0/b;-><init>(Lm/q;Lm/f;)V

    invoke-direct {p3, v0, p2}, Ld0/i;-><init>(Ll0/b;[B)V

    goto :goto_9a

    :catch_76
    move-exception v0

    move-object p0, v0

    goto :goto_b2

    :cond_79
    invoke-direct {p0, v2, p3}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->createCipher(Ljava/lang/String;[B)Ljavax/crypto/Cipher;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p2

    new-instance p3, Ld0/n;

    new-instance v1, Ld0/j;

    sget-object v2, Lz/b;->U:Lm/q;

    invoke-direct {v1, v2}, Ld0/j;-><init>(Lm/q;)V

    invoke-direct {p3, v0, v1}, Ld0/n;-><init>(Ld0/k;Ld0/j;)V

    new-instance v0, Ld0/i;

    new-instance v1, Ll0/b;

    sget-object v2, Ld0/r;->C:Lm/q;

    invoke-direct {v1, v2, p3}, Ll0/b;-><init>(Lm/q;Lm/f;)V

    invoke-direct {v0, v1, p2}, Ld0/i;-><init>(Ll0/b;[B)V

    move-object p3, v0

    :goto_9a
    invoke-direct {p0, p3, p4}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->createPrivateKeySequence(Ld0/i;[Ljava/security/cert/Certificate;)Lo/c;

    move-result-object p2

    iget-object p3, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->entries:Ljava/util/Map;

    new-instance v1, Lo/f;

    sget-object v2, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->PRIVATE_KEY:Ljava/math/BigInteger;

    invoke-virtual {p2}, Lm/n;->getEncoded()[B

    move-result-object v6

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lo/f;-><init>(Ljava/math/BigInteger;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;[B)V

    move-object p1, v3

    invoke-interface {p3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_b0} :catch_76

    goto/16 :goto_1a4

    :goto_b2
    new-instance p1, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi$ExtKeyStoreException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2}, Lb/b;->d(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi$ExtKeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_c1
    new-instance p0, Ljava/security/KeyStoreException;

    const-string p1, "BCFKS KeyStore requires a certificate chain for private key storage."

    invoke-direct {p0, p1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c9
    instance-of v1, p2, Ljavax/crypto/SecretKey;

    if-eqz v1, :cond_1d5

    if-nez p4, :cond_1cd

    :try_start_cf
    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object p4

    sget-object v1, Ld0/r;->B:Lm/q;

    invoke-direct {p0, v1, v8}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->generatePkbdAlgorithmIdentifier(Lm/q;I)Ld0/k;

    move-result-object v1

    const-string v9, "SECRET_KEY_ENCRYPTION"

    if-eqz p3, :cond_de

    goto :goto_e0

    :cond_de
    new-array p3, v6, [C

    :goto_e0
    invoke-direct {p0, v1, v9, p3, v8}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->generateKey(Ld0/k;Ljava/lang/String;[CI)[B

    move-result-object p3

    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lm4/m;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v6, "AES"

    invoke-virtual {p2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v8, -0x1

    if-le v6, v8, :cond_101

    new-instance p2, Lo/l;

    sget-object v0, Lz/b;->w:Lm/q;

    invoke-direct {p2, v0, p4}, Lo/l;-><init>(Lm/q;[B)V

    goto :goto_135

    :catch_fd
    move-exception v0

    move-object p0, v0

    goto/16 :goto_1be

    :cond_101
    sget-object v6, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->oidMap:Ljava/util/Map;

    invoke-interface {v6, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lm/q;

    if-eqz v8, :cond_111

    new-instance p2, Lo/l;

    invoke-direct {p2, v8, p4}, Lo/l;-><init>(Lm/q;[B)V

    goto :goto_135

    :cond_111
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v9, p4

    mul-int/lit8 v9, v9, 0x8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lm/q;

    if-eqz v6, :cond_1a7

    new-instance p2, Lo/l;

    invoke-direct {p2, v6, p4}, Lo/l;-><init>(Lm/q;[B)V

    :goto_135
    iget-object p4, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->storeEncryptionAlgorithm:Lm/q;

    sget-object v0, Lz/b;->T:Lm/q;

    invoke-virtual {p4, v0}, Lm/u;->n(Lm/u;)Z

    move-result p4

    if-eqz p4, :cond_16e

    invoke-direct {p0, v3, p3}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->createCipher(Ljava/lang/String;[B)Ljavax/crypto/Cipher;

    move-result-object p3

    invoke-virtual {p2}, Lm/n;->getEncoded()[B

    move-result-object p2

    invoke-virtual {p3, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p2

    invoke-virtual {p3}, Ljavax/crypto/Cipher;->getParameters()Ljava/security/AlgorithmParameters;

    move-result-object p3

    new-instance p4, Ld0/n;

    new-instance v2, Ld0/j;

    invoke-virtual {p3}, Ljava/security/AlgorithmParameters;->getEncoded()[B

    move-result-object p3

    invoke-static {p3}, Ll1/a;->h(Ljava/lang/Object;)Ll1/a;

    move-result-object p3

    invoke-direct {v2, v0, p3}, Ld0/j;-><init>(Lm/q;Lm/n;)V

    invoke-direct {p4, v1, v2}, Ld0/n;-><init>(Ld0/k;Ld0/j;)V

    new-instance p3, Lo/d;

    new-instance v0, Ll0/b;

    sget-object v1, Ld0/r;->C:Lm/q;

    invoke-direct {v0, v1, p4}, Ll0/b;-><init>(Lm/q;Lm/f;)V

    invoke-direct {p3, v0, p2}, Lo/d;-><init>(Ll0/b;[B)V

    goto :goto_193

    :cond_16e
    invoke-direct {p0, v2, p3}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->createCipher(Ljava/lang/String;[B)Ljavax/crypto/Cipher;

    move-result-object p3

    invoke-virtual {p2}, Lm/n;->getEncoded()[B

    move-result-object p2

    invoke-virtual {p3, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p2

    new-instance p3, Ld0/n;

    new-instance p4, Ld0/j;

    sget-object v0, Lz/b;->U:Lm/q;

    invoke-direct {p4, v0}, Ld0/j;-><init>(Lm/q;)V

    invoke-direct {p3, v1, p4}, Ld0/n;-><init>(Ld0/k;Ld0/j;)V

    new-instance p4, Lo/d;

    new-instance v0, Ll0/b;

    sget-object v1, Ld0/r;->C:Lm/q;

    invoke-direct {v0, v1, p3}, Ll0/b;-><init>(Lm/q;Lm/f;)V

    invoke-direct {p4, v0, p2}, Lo/d;-><init>(Ll0/b;[B)V

    move-object p3, p4

    :goto_193
    iget-object p2, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->entries:Ljava/util/Map;

    new-instance v1, Lo/f;

    sget-object v2, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->SECRET_KEY:Ljava/math/BigInteger;

    invoke-virtual {p3}, Lm/n;->getEncoded()[B

    move-result-object v6

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lo/f;-><init>(Ljava/math/BigInteger;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;[B)V

    invoke-interface {p2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a4
    .catch Ljava/lang/Exception; {:try_start_cf .. :try_end_1a4} :catch_fd

    :goto_1a4
    iput-object v5, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->lastModifiedDate:Ljava/util/Date;

    return-void

    :cond_1a7
    :try_start_1a7
    new-instance p0, Ljava/security/KeyStoreException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") for storage."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1be
    .catch Ljava/lang/Exception; {:try_start_1a7 .. :try_end_1be} :catch_fd

    :goto_1be
    new-instance p1, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi$ExtKeyStoreException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2}, Lb/b;->d(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi$ExtKeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1cd
    new-instance p0, Ljava/security/KeyStoreException;

    const-string p1, "BCFKS KeyStore cannot store certificate chain with secret key."

    invoke-direct {p0, p1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1d5
    new-instance p0, Ljava/security/KeyStoreException;

    const-string p1, "BCFKS KeyStore unable to recognize key."

    invoke-direct {p0, p1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .registers 12

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->entries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/f;

    if-eqz v0, :cond_15

    invoke-direct {p0, v0, v4}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->extractCreationDate(Lo/f;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    move-object v3, v0

    goto :goto_16

    :cond_15
    move-object v3, v4

    :goto_16
    const-string v6, "BCFKS KeyStore exception storing protected private key: "

    if-eqz p3, :cond_54

    :try_start_1a
    invoke-static {p2}, Ld0/i;->h(Ljava/lang/Object;)Ld0/i;

    move-result-object p2
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1e} :catch_4a

    :try_start_1e
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->privateKeyCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->entries:Ljava/util/Map;

    new-instance v0, Lo/f;

    sget-object v1, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->PROTECTED_PRIVATE_KEY:Ljava/math/BigInteger;

    invoke-direct {p0, p2, p3}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->createPrivateKeySequence(Ld0/i;[Ljava/security/cert/Certificate;)Lo/c;

    move-result-object p2

    invoke-virtual {p2}, Lm/n;->getEncoded()[B

    move-result-object v5

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lo/f;-><init>(Ljava/math/BigInteger;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;[B)V

    invoke-interface {v7, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_38} :catch_39

    goto :goto_62

    :catch_39
    move-exception v0

    move-object p0, v0

    new-instance p1, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi$ExtKeyStoreException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2}, Lb/b;->d(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi$ExtKeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_4a
    move-exception v0

    move-object p0, v0

    new-instance p1, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi$ExtKeyStoreException;

    const-string p2, "BCFKS KeyStore private key encoding must be an EncryptedPrivateKeyInfo."

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi$ExtKeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_54
    move-object v2, p1

    :try_start_55
    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->entries:Ljava/util/Map;

    new-instance v0, Lo/f;

    sget-object v1, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->PROTECTED_SECRET_KEY:Ljava/math/BigInteger;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lo/f;-><init>(Ljava/math/BigInteger;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;[B)V

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_62} :catch_65

    :goto_62
    iput-object v4, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->lastModifiedDate:Ljava/util/Date;

    return-void

    :catch_65
    move-exception v0

    move-object p0, v0

    new-instance p1, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi$ExtKeyStoreException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2}, Lb/b;->d(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi$ExtKeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public engineSize()I
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->entries:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method

.method public engineStore(Ljava/io/OutputStream;[C)V
    .registers 7

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->creationDate:Ljava/util/Date;

    if-eqz v0, :cond_97

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->hmacAlgorithm:Ll0/b;

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->getEncryptedObjectStoreData(Ll0/b;[C)Lo/b;

    move-result-object v0

    sget-object v1, Lv1/c;->t:Lm/q;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->hmacPkbdAlgorithm:Ld0/k;

    iget-object v2, v2, Ld0/k;->c:Ll0/b;

    iget-object v2, v2, Ll0/b;->c:Lm/q;

    invoke-virtual {v1, v2}, Lm/u;->n(Lm/u;)Z

    move-result v1

    if-eqz v1, :cond_31

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->hmacPkbdAlgorithm:Ld0/k;

    iget-object v1, v1, Ld0/k;->c:Ll0/b;

    iget-object v1, v1, Ll0/b;->d:Lm/f;

    invoke-static {v1}, Lv1/f;->h(Ljava/lang/Object;)Lv1/f;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->hmacPkbdAlgorithm:Ld0/k;

    iget-object v1, v1, Lv1/f;->y:Ljava/math/BigInteger;

    :goto_26
    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    invoke-direct {p0, v2, v1}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->generatePkbdAlgorithmIdentifier(Ld0/k;I)Ld0/k;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->hmacPkbdAlgorithm:Ld0/k;

    goto :goto_42

    :cond_31
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->hmacPkbdAlgorithm:Ld0/k;

    iget-object v1, v1, Ld0/k;->c:Ll0/b;

    iget-object v1, v1, Ll0/b;->d:Lm/f;

    invoke-static {v1}, Ld0/o;->h(Ljava/lang/Object;)Ld0/o;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->hmacPkbdAlgorithm:Ld0/k;

    invoke-virtual {v1}, Ld0/o;->i()Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_26

    :goto_42
    :try_start_42
    invoke-virtual {v0}, Lm/n;->getEncoded()[B

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->hmacAlgorithm:Ll0/b;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->hmacPkbdAlgorithm:Ld0/k;

    invoke-direct {p0, v1, v2, v3, p2}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->calculateMac([BLl0/b;Ld0/k;[C)[B

    move-result-object p2
    :try_end_4e
    .catch Ljava/security/NoSuchProviderException; {:try_start_42 .. :try_end_4e} :catch_7e

    new-instance v1, Lo/j;

    new-instance v2, Lo/k;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->hmacAlgorithm:Ll0/b;

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->hmacPkbdAlgorithm:Ld0/k;

    invoke-direct {v2, v3, p0, p2}, Lo/k;-><init>(Ll0/b;Ld0/k;[B)V

    invoke-direct {v1, v2}, Lo/j;-><init>(Lm/f;)V

    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance p2, Lm/a1;

    invoke-direct {p2, v0, v1}, Lm/x;-><init>(Lm/f;Lm/f;)V

    const/4 v0, -0x1

    iput v0, p2, Lm/a1;->q:I

    new-instance v0, Lb1/a;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Lb1/a;-><init>(ILjava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lm/a1;->i(Lb1/a;Z)V

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void

    :catch_7e
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "cannot calculate mac: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_97
    new-instance p0, Ljava/io/IOException;

    const-string p1, "KeyStore not initialized"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineStore(Ljava/security/KeyStore$LoadStoreParameter;)V
    .registers 3

    new-instance p0, Ljava/lang/IllegalArgumentException;

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "no support for \'parameter\' of type "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_16
    const-string p1, "\'parameter\' arg cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
