.class public Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;
.super Ljava/security/KeyStoreSpi;

# interfaces
.implements Ld0/r;
.implements Ll0/e1;


# static fields
.field static final CERTIFICATE:I = 0x1

.field static final KEY:I = 0x2

.field static final KEY_PRIVATE:I = 0x0

.field static final KEY_PUBLIC:I = 0x1

.field static final KEY_SECRET:I = 0x2

.field private static final MIN_ITERATIONS:I = 0xc800

.field static final NULL:I = 0x0

.field static final PKCS12_MAX_IT_COUNT_PROPERTY:Ljava/lang/String; = "org.bouncycastle.pkcs12.max_it_count"

.field private static final SALT_SIZE:I = 0x14

.field static final SEALED:I = 0x4

.field static final SECRET:I = 0x3

.field private static final keySizeProvider:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;


# instance fields
.field private certAlgorithm:Lm/q;

.field private certFact:Ljava/security/cert/CertificateFactory;

.field private certs:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

.field private chainCerts:Ljava/util/Hashtable;

.field private final helper:Le2/b;

.field private itCount:I

.field private keyAlgorithm:Lm/q;

.field private keyCerts:Ljava/util/Hashtable;

.field private keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

.field private localIds:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

.field private macAlgorithm:Ll0/b;

.field protected random:Ljava/security/SecureRandom;

.field private saltLength:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keySizeProvider:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;

    return-void
.end method

.method public constructor <init>(Le2/b;Lm/q;Lm/q;)V
    .registers 7

    invoke-direct {p0}, Ljava/security/KeyStoreSpi;-><init>()V

    new-instance v0, Le2/a;

    invoke-direct {v0}, Le2/a;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->helper:Le2/b;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;-><init>(Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$1;)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-direct {v0, v1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;-><init>(Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$1;)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->localIds:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-direct {v0, v1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;-><init>(Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$1;)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    invoke-static {}, Lorg/bouncycastle/crypto/o;->b()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->random:Ljava/security/SecureRandom;

    new-instance v0, Ll0/b;

    sget-object v1, Ly1/b;->f:Lm/q;

    sget-object v2, Lm/v0;->d:Lm/v0;

    invoke-direct {v0, v1, v2}, Ll0/b;-><init>(Lm/q;Lm/f;)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->macAlgorithm:Ll0/b;

    const v0, 0x19000

    iput v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->itCount:I

    const/16 v0, 0x14

    iput v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->saltLength:I

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyAlgorithm:Lm/q;

    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certAlgorithm:Lm/q;

    :try_start_4c
    const-string p2, "X.509"

    invoke-interface {p1, p2}, Le2/b;->a(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certFact:Ljava/security/cert/CertificateFactory;
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_54} :catch_55

    return-void

    :catch_55
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "can\'t create cert factory - "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2}, Lb/b;->d(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic access$100(Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;Ljava/security/PublicKey;)Ll0/o0;
    .registers 2

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->createSubjectKeyId(Ljava/security/PublicKey;)Ll0/o0;

    move-result-object p0

    return-object p0
.end method

.method private calculatePbeMac(Lm/q;[BI[CZ[B)[B
    .registers 14

    sget-object v0, Ld0/r;->D:Lm/q;

    invoke-virtual {v0, p1}, Lm/u;->n(Lm/u;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_de

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->macAlgorithm:Ll0/b;

    iget-object v0, v0, Ll0/b;->d:Lm/f;

    instance-of v2, v0, Ld0/p;

    sget-object v3, Ld0/r;->B:Lm/q;

    if-eqz v2, :cond_16

    check-cast v0, Ld0/p;

    goto :goto_61

    :cond_16
    if-eqz v0, :cond_60

    new-instance v2, Ld0/p;

    invoke-static {v0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0}, Lm/x;->w()Ljava/util/Enumeration;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lm/f;

    invoke-interface {v4}, Lm/f;->d()Lm/u;

    move-result-object v4

    invoke-static {v4}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v4

    invoke-virtual {v4, v1}, Lm/x;->v(I)Lm/f;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4e

    new-instance v5, Ll0/b;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lm/x;->v(I)Lm/f;

    move-result-object v4

    invoke-static {v4}, Ld0/o;->h(Ljava/lang/Object;)Ld0/o;

    move-result-object v4

    invoke-direct {v5, v3, v4}, Ll0/b;-><init>(Lm/q;Lm/f;)V

    iput-object v5, v2, Ld0/p;->c:Ll0/b;

    goto :goto_54

    :cond_4e
    invoke-static {v4}, Ll0/b;->h(Ljava/lang/Object;)Ll0/b;

    move-result-object v4

    iput-object v4, v2, Ld0/p;->c:Ll0/b;

    :goto_54
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ll0/b;->h(Ljava/lang/Object;)Ll0/b;

    move-result-object v0

    iput-object v0, v2, Ld0/p;->d:Ll0/b;

    move-object v0, v2

    goto :goto_61

    :cond_60
    const/4 v0, 0x0

    :goto_61
    if-eqz v0, :cond_d6

    iget-object v2, v0, Ld0/p;->c:Ll0/b;

    iget-object v4, v2, Ll0/b;->c:Lm/q;

    invoke-virtual {v3, v4}, Lm/u;->n(Lm/u;)Z

    move-result v3

    if-eqz v3, :cond_de

    iget-object p0, v2, Ll0/b;->d:Lm/f;

    invoke-static {p0}, Ld0/o;->h(Ljava/lang/Object;)Ld0/o;

    move-result-object p0

    invoke-virtual {p0}, Ld0/o;->i()Ljava/math/BigInteger;

    move-result-object p1

    if-eqz p1, :cond_ce

    new-instance p1, Lz0/d;

    iget-object p2, v0, Ld0/p;->d:Ll0/b;

    iget-object p2, p2, Ll0/b;->c:Lm/q;

    invoke-static {p2}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->getPrf(Lm/q;)Lorg/bouncycastle/crypto/v;

    move-result-object p2

    invoke-direct {p1, p2}, Lz0/d;-><init>(Lorg/bouncycastle/crypto/v;)V

    new-instance p2, Lx0/r;

    invoke-virtual {p0}, Ld0/o;->j()Ll0/b;

    move-result-object p3

    iget-object p3, p3, Ll0/b;->c:Lm/q;

    invoke-static {p3}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->getPrf(Lm/q;)Lorg/bouncycastle/crypto/v;

    move-result-object p3

    invoke-direct {p2, p3}, Lx0/r;-><init>(Lorg/bouncycastle/crypto/v;)V

    invoke-static {p4}, Lm4/m;->f([C)[B

    move-result-object p3

    invoke-virtual {p0}, Ld0/o;->k()[B

    move-result-object p4

    iget-object p5, p0, Ld0/o;->d:Lm/l;

    invoke-virtual {p5}, Lm/l;->t()Ljava/math/BigInteger;

    move-result-object p5

    invoke-static {p5}, Lm4/a;->h(Ljava/math/BigInteger;)I

    move-result p5

    invoke-virtual {p2, p3, p4, p5}, Lorg/bouncycastle/crypto/e0;->init([B[BI)V

    invoke-virtual {p0}, Ld0/o;->i()Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p0}, Lm4/a;->h(Ljava/math/BigInteger;)I

    move-result p0

    mul-int/lit8 p0, p0, 0x8

    invoke-virtual {p2, p0}, Lx0/r;->generateDerivedParameters(I)Lorg/bouncycastle/crypto/g;

    move-result-object p0

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/e0;->getPassword()[B

    move-result-object p2

    invoke-static {p2}, Lm4/d;->d([B)V

    invoke-virtual {p1, p0}, Lz0/d;->init(Lorg/bouncycastle/crypto/g;)V

    array-length p0, p6

    invoke-virtual {p1, p6, v1, p0}, Lz0/d;->update([BII)V

    iget p0, p1, Lz0/d;->h:I

    new-array p0, p0, [B

    invoke-virtual {p1, p0, v1}, Lz0/d;->doFinal([BI)I

    return-object p0

    :cond_ce
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Key length must be present when using PBMAC1."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d6
    new-instance p0, Ljava/io/IOException;

    const-string p1, "If the DigestAlgorithmIdentifier is id-PBMAC1, then the parameters field must contain valid PBMAC1-params parameters."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_de
    new-instance v0, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-direct {v0, p2, p3}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    new-instance p2, La2/h;

    invoke-direct {p2, p4, p5}, La2/h;-><init>([CZ)V

    iget-object p3, p2, La2/h;->c:[C

    :try_start_ea
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->helper:Le2/b;

    invoke-virtual {p1}, Lm/q;->u()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Le2/b;->b(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p0

    invoke-virtual {p0, p2, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {p0, p6}, Ljavax/crypto/Mac;->update([B)V

    invoke-virtual {p0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object p0
    :try_end_fe
    .catchall {:try_start_ea .. :try_end_fe} :catchall_102

    invoke-static {p3, v1}, Ljava/util/Arrays;->fill([CC)V

    return-object p0

    :catchall_102
    move-exception p0

    invoke-static {p3, v1}, Ljava/util/Arrays;->fill([CC)V

    throw p0
.end method

.method private createCipher(I[CLl0/b;)Ljavax/crypto/Cipher;
    .registers 11

    iget-object p3, p3, Ll0/b;->d:Lm/f;

    invoke-static {p3}, Ld0/n;->h(Ljava/lang/Object;)Ld0/n;

    move-result-object p3

    iget-object v0, p3, Ld0/n;->c:Ld0/k;

    iget-object v0, v0, Ld0/k;->c:Ll0/b;

    iget-object v0, v0, Ll0/b;->d:Lm/f;

    invoke-static {v0}, Ld0/o;->h(Ljava/lang/Object;)Ld0/o;

    move-result-object v0

    iget-object v1, p3, Ld0/n;->d:Ld0/j;

    invoke-static {v1}, Ll0/b;->h(Ljava/lang/Object;)Ll0/b;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->helper:Le2/b;

    iget-object p3, p3, Ld0/n;->c:Ld0/k;

    iget-object p3, p3, Ld0/k;->c:Ll0/b;

    iget-object p3, p3, Ll0/b;->c:Lm/q;

    invoke-virtual {p3}, Lm/q;->u()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v3, p3}, Le2/b;->j(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object p3

    iget-object v3, v0, Ld0/o;->x:Ll0/b;

    iget-object v4, v0, Ld0/o;->d:Lm/l;

    if-eqz v3, :cond_57

    sget-object v5, Ld0/o;->y:Ll0/b;

    invoke-virtual {v3, v5}, Lm/n;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    goto :goto_57

    :cond_35
    new-instance v3, Ld2/w;

    invoke-virtual {v0}, Ld0/o;->k()[B

    move-result-object v5

    invoke-virtual {v4}, Lm/l;->t()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->validateIterationCount(Ljava/math/BigInteger;)I

    move-result v4

    sget-object v6, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keySizeProvider:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;

    invoke-virtual {v6, v2}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;->getKeySize(Ll0/b;)I

    move-result v6

    invoke-virtual {v0}, Ld0/o;->j()Ll0/b;

    move-result-object v0

    invoke-direct {v3, p2, v5, v4, v6}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    iput-object v0, v3, Ld2/w;->c:Ll0/b;

    :goto_52
    invoke-virtual {p3, v3}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p2

    goto :goto_6f

    :cond_57
    :goto_57
    new-instance v3, Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {v0}, Ld0/o;->k()[B

    move-result-object v0

    invoke-virtual {v4}, Lm/l;->t()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->validateIterationCount(Ljava/math/BigInteger;)I

    move-result v4

    sget-object v5, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keySizeProvider:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;

    invoke-virtual {v5, v2}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;->getKeySize(Ll0/b;)I

    move-result v5

    invoke-direct {v3, p2, v0, v4, v5}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    goto :goto_52

    :goto_6f
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->helper:Le2/b;

    iget-object p3, v1, Ld0/j;->c:Ll0/b;

    iget-object p3, p3, Ll0/b;->c:Lm/q;

    invoke-virtual {p3}, Lm/q;->u()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p0, p3}, Le2/b;->d(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    iget-object p3, v1, Ld0/j;->c:Ll0/b;

    iget-object p3, p3, Ll0/b;->d:Lm/f;

    instance-of v0, p3, Lm/r;

    if-eqz v0, :cond_94

    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-static {p3}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object p3

    iget-object p3, p3, Lm/r;->c:[B

    invoke-direct {v0, p3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    :goto_90
    invoke-virtual {p0, p1, p2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    return-object p0

    :cond_94
    invoke-static {p3}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lm/x;->v(I)Lm/f;

    move-result-object v1

    instance-of v1, v1, Lm/q;

    if-eqz v1, :cond_b5

    invoke-static {p3}, Lr/c;->h(Ljava/lang/Object;)Lr/c;

    move-result-object p3

    new-instance v0, Ld2/e;

    iget-object v1, p3, Lr/c;->d:Lm/q;

    iget-object p3, p3, Lr/c;->c:Lm/r;

    iget-object p3, p3, Lm/r;->c:[B

    invoke-static {p3}, Lm4/d;->e([B)[B

    move-result-object p3

    invoke-direct {v0, v1, p3}, Ld2/e;-><init>(Lm/q;[B)V

    goto :goto_90

    :cond_b5
    iget-object p3, v2, Ll0/b;->c:Lm/q;

    invoke-virtual {p3}, Lm/q;->u()Ljava/lang/String;

    move-result-object p3

    const-string v1, "BC"

    invoke-static {p3, v1}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object p3

    :try_start_c1
    invoke-virtual {v0}, Lm/n;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/security/AlgorithmParameters;->init([B)V
    :try_end_c8
    .catch Ljava/io/IOException; {:try_start_c1 .. :try_end_c8} :catch_cc

    invoke-virtual {p0, p1, p2, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V

    return-object p0

    :catch_cc
    move-exception p0

    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private createSafeBag(Ljava/lang/String;Ljava/security/cert/Certificate;Z)Ld0/z;
    .registers 13

    new-instance p0, Lm/x0;

    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lm/r;-><init>([B)V

    new-instance v0, Lm/g;

    invoke-direct {v0}, Lm/g;-><init>()V

    instance-of v1, p2, Lh2/k;

    sget-object v2, Ld0/r;->Y:Lm/q;

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_7b

    move-object v1, p2

    check-cast v1, Lh2/k;

    invoke-interface {v1, v2}, Lh2/k;->getBagAttribute(Lm/q;)Lm/f;

    move-result-object v6

    check-cast v6, Lm/o0;

    if-eqz p3, :cond_38

    if-eqz v6, :cond_2e

    invoke-virtual {v6}, Lm/o0;->e()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_38

    :cond_2e
    if-eqz p1, :cond_38

    new-instance p3, Lm/o0;

    invoke-direct {p3, p1}, Lm/o0;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, p3}, Lh2/k;->setBagAttribute(Lm/q;Lm/f;)V

    :cond_38
    invoke-interface {v1}, Lh2/k;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object p3

    move v6, v5

    :goto_3d
    invoke-interface {p3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_7c

    invoke-interface {p3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lm/q;

    sget-object v8, Ld0/r;->Z:Lm/q;

    invoke-virtual {v7, v8}, Lm/u;->n(Lm/u;)Z

    move-result v8

    if-eqz v8, :cond_52

    goto :goto_3d

    :cond_52
    sget-object v8, Lv1/c;->w:Lm/q;

    invoke-virtual {v7, v8}, Lm/u;->n(Lm/u;)Z

    move-result v8

    if-eqz v8, :cond_5b

    goto :goto_3d

    :cond_5b
    new-instance v6, Lm/g;

    invoke-direct {v6}, Lm/g;-><init>()V

    invoke-virtual {v6, v7}, Lm/g;->a(Lm/f;)V

    new-instance v8, Lm/b1;

    invoke-interface {v1, v7}, Lh2/k;->getBagAttribute(Lm/q;)Lm/f;

    move-result-object v7

    invoke-direct {v8, v7}, Lm/b1;-><init>(Lm/f;)V

    invoke-virtual {v6, v8}, Lm/g;->a(Lm/f;)V

    new-instance v7, Lm/a1;

    invoke-direct {v7, v6}, Lm/x;-><init>(Lm/g;)V

    iput v4, v7, Lm/a1;->q:I

    invoke-virtual {v0, v7}, Lm/g;->a(Lm/f;)V

    move v6, v3

    goto :goto_3d

    :cond_7b
    move v6, v5

    :cond_7c
    if-nez v6, :cond_9f

    new-instance p3, Lm/g;

    invoke-direct {p3}, Lm/g;-><init>()V

    invoke-virtual {p3, v2}, Lm/g;->a(Lm/f;)V

    new-instance v1, Lm/b1;

    new-instance v2, Lm/o0;

    invoke-direct {v2, p1}, Lm/o0;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lm/y;-><init>(Lm/f;)V

    iput v4, v1, Lm/b1;->x:I

    invoke-virtual {p3, v1}, Lm/g;->a(Lm/f;)V

    new-instance p1, Lm/a1;

    invoke-direct {p1, p3}, Lm/x;-><init>(Lm/g;)V

    iput v4, p1, Lm/a1;->q:I

    invoke-virtual {v0, p1}, Lm/g;->a(Lm/f;)V

    :cond_9f
    instance-of p1, p2, Ljava/security/cert/X509Certificate;

    if-eqz p1, :cond_14b

    check-cast p2, Ljava/security/cert/X509Certificate;

    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getTBSCertificate()[B

    move-result-object p1

    invoke-static {p1}, Ll0/u0;->h(Ljava/lang/Object;)Ll0/u0;

    move-result-object p1

    iget-object p1, p1, Ll0/u0;->E1:Ll0/w;

    sget-object p2, Ll0/v;->N1:Lm/q;

    invoke-static {p1, p2}, Ll0/w;->i(Ll0/w;Lm/q;)Lm/r;

    move-result-object p1

    new-instance p2, Lm/b1;

    if-eqz p1, :cond_13a

    iget-object p1, p1, Lm/r;->c:[B

    instance-of p3, p1, Ll0/u;

    const/4 v1, 0x0

    if-eqz p3, :cond_c3

    check-cast p1, Ll0/u;

    goto :goto_100

    :cond_c3
    if-eqz p1, :cond_ff

    new-instance p3, Ll0/u;

    invoke-static {p1}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p1

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, p3, Ll0/u;->c:Ljava/util/Hashtable;

    iput-object p1, p3, Ll0/u;->d:Lm/x;

    invoke-virtual {p1}, Lm/x;->w()Ljava/util/Enumeration;

    move-result-object p1

    :goto_db
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_fd

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm/f;

    invoke-interface {v2}, Lm/f;->d()Lm/u;

    move-result-object v6

    instance-of v6, v6, Lm/q;

    if-eqz v6, :cond_f5

    iget-object v6, p3, Ll0/u;->c:Ljava/util/Hashtable;

    invoke-virtual {v6, v2, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_db

    :cond_f5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Only ASN1ObjectIdentifiers allowed in ExtendedKeyUsage."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_fd
    move-object p1, p3

    goto :goto_100

    :cond_ff
    move-object p1, v1

    :goto_100
    iget-object p1, p1, Ll0/u;->d:Lm/x;

    invoke-virtual {p1}, Lm/x;->size()I

    move-result p3

    new-array p3, p3, [Ll0/e0;

    invoke-virtual {p1}, Lm/x;->w()Ljava/util/Enumeration;

    move-result-object p1

    move v2, v5

    :goto_10d
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_134

    add-int/lit8 v6, v2, 0x1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Ll0/e0;->d:Ll0/e0;

    instance-of v8, v7, Ll0/e0;

    if-eqz v8, :cond_122

    check-cast v7, Ll0/e0;

    goto :goto_130

    :cond_122
    if-eqz v7, :cond_12f

    new-instance v8, Ll0/e0;

    invoke-static {v7}, Lm/q;->v(Ljava/lang/Object;)Lm/q;

    move-result-object v7

    invoke-direct {v8, v7}, Ll0/e0;-><init>(Lm/q;)V

    move-object v7, v8

    goto :goto_130

    :cond_12f
    move-object v7, v1

    :goto_130
    aput-object v7, p3, v2

    move v2, v6

    goto :goto_10d

    :cond_134
    invoke-direct {p2, p3}, Lm/y;-><init>([Lm/f;)V

    iput v4, p2, Lm/b1;->x:I

    goto :goto_13f

    :cond_13a
    sget-object p1, Ll0/e0;->d:Ll0/e0;

    invoke-direct {p2, p1}, Lm/b1;-><init>(Lm/f;)V

    :goto_13f
    new-instance p1, Lm/a1;

    sget-object p3, Lv1/c;->w:Lm/q;

    invoke-direct {p1, p3, p2}, Lm/x;-><init>(Lm/f;Lm/f;)V

    iput v4, p1, Lm/a1;->q:I

    invoke-virtual {v0, p1}, Lm/g;->a(Lm/f;)V

    :cond_14b
    new-instance p1, Ld0/z;

    new-instance p2, Lm/a1;

    new-instance p3, Lm/d1;

    invoke-direct {p3, v3, v5, p0}, Lm/a0;-><init>(ZILm/f;)V

    sget-object p0, Ld0/r;->a0:Lm/q;

    invoke-direct {p2, p0, p3}, Lm/x;-><init>(Lm/f;Lm/f;)V

    iput v4, p2, Lm/a1;->q:I

    new-instance p0, Lm/b1;

    invoke-direct {p0, v0, v3}, Lm/y;-><init>(Lm/g;Z)V

    iput v4, p0, Lm/b1;->x:I

    sget-object p3, Ld0/r;->m0:Lm/q;

    invoke-direct {p1, p3, p2, p0}, Ld0/z;-><init>(Lm/q;Lm/a1;Lm/b1;)V

    return-object p1
.end method

.method private createSubjectKeyId(Ljava/security/PublicKey;)Ll0/o0;
    .registers 2

    :try_start_0
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Ll0/p0;->h(Ljava/lang/Object;)Ll0/p0;

    move-result-object p0

    new-instance p1, Ll0/o0;

    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->getDigest(Ll0/p0;)[B

    move-result-object p0

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lm4/d;->e([B)[B

    move-result-object p0

    iput-object p0, p1, Ll0/o0;->c:[B
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    return-object p1

    :catch_18
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "error creating key"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private doStore(Ljava/io/OutputStream;[CZZ)V
    .registers 30

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v3, p2

    move/from16 v1, p4

    if-nez v1, :cond_d

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->syncFriendlyName()V

    :cond_d
    iget-object v2, v0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v2}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->size()I

    move-result v2

    const-string v8, "BER"

    const-wide/16 v9, 0x3

    const/4 v6, 0x0

    sget-object v11, Ld0/r;->R:Lm/q;

    const/4 v12, 0x3

    const-string v4, "Error encoding certificate: "

    const-string v13, "DER"

    const/4 v5, -0x1

    if-nez v2, :cond_e6

    if-nez v3, :cond_e8

    iget-object v2, v0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v2}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    new-instance v3, Lm/g;

    invoke-direct {v3}, Lm/g;-><init>()V

    :goto_2f
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v14

    if-eqz v14, :cond_62

    :try_start_35
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    iget-object v15, v0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v15, v14}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/security/cert/Certificate;

    invoke-direct {v0, v14, v15, v1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->createSafeBag(Ljava/lang/String;Ljava/security/cert/Certificate;Z)Ld0/z;

    move-result-object v14

    invoke-virtual {v3, v14}, Lm/g;->a(Lm/f;)V
    :try_end_4a
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_35 .. :try_end_4a} :catch_4b

    goto :goto_2f

    :catch_4b
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_62
    if-eqz p3, :cond_a7

    new-instance v0, Ld0/f;

    new-instance v1, Lm/x0;

    new-instance v2, Lm/a1;

    invoke-direct {v2, v3}, Lm/x;-><init>(Lm/g;)V

    iput v5, v2, Lm/a1;->q:I

    invoke-virtual {v2}, Lm/n;->getEncoded()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lm/r;-><init>([B)V

    invoke-direct {v0, v11, v1}, Ld0/f;-><init>(Lm/q;Lm/n;)V

    new-instance v1, Ld0/f;

    new-instance v2, Lm/x0;

    new-instance v3, Lm/a1;

    invoke-direct {v3, v0}, Lm/x;-><init>(Lm/f;)V

    iput v5, v3, Lm/a1;->q:I

    invoke-virtual {v3}, Lm/n;->getEncoded()[B

    move-result-object v0

    invoke-direct {v2, v0}, Lm/r;-><init>([B)V

    invoke-direct {v1, v11, v2}, Ld0/f;-><init>(Lm/q;Lm/n;)V

    new-instance v0, Lm/g;

    invoke-direct {v0, v12}, Lm/g;-><init>(I)V

    new-instance v2, Lm/l;

    invoke-direct {v2, v9, v10}, Lm/l;-><init>(J)V

    invoke-virtual {v0, v2}, Lm/g;->a(Lm/f;)V

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    new-instance v1, Lm/h0;

    invoke-direct {v1, v0}, Lm/x;-><init>(Lm/g;)V

    invoke-virtual {v1, v7, v13}, Lm/u;->k(Ljava/io/OutputStream;Ljava/lang/String;)V

    return-void

    :cond_a7
    new-instance v0, Ld0/f;

    new-instance v1, Lm/f0;

    new-instance v2, Lm/h0;

    invoke-direct {v2, v3}, Lm/x;-><init>(Lm/g;)V

    invoke-virtual {v2}, Lm/n;->getEncoded()[B

    move-result-object v2

    invoke-direct {v1, v2, v6}, Lm/f0;-><init>([B[Lm/r;)V

    invoke-direct {v0, v11, v1}, Ld0/f;-><init>(Lm/q;Lm/n;)V

    new-instance v1, Ld0/f;

    new-instance v2, Lm/f0;

    new-instance v3, Lm/h0;

    invoke-direct {v3, v0}, Lm/x;-><init>(Lm/f;)V

    invoke-virtual {v3}, Lm/n;->getEncoded()[B

    move-result-object v0

    invoke-direct {v2, v0, v6}, Lm/f0;-><init>([B[Lm/r;)V

    invoke-direct {v1, v11, v2}, Ld0/f;-><init>(Lm/q;Lm/n;)V

    new-instance v0, Lm/g;

    invoke-direct {v0, v12}, Lm/g;-><init>(I)V

    new-instance v2, Lm/l;

    invoke-direct {v2, v9, v10}, Lm/l;-><init>(J)V

    invoke-virtual {v0, v2}, Lm/g;->a(Lm/f;)V

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    new-instance v1, Lm/h0;

    invoke-direct {v1, v0}, Lm/x;-><init>(Lm/g;)V

    invoke-virtual {v1, v7, v8}, Lm/u;->k(Ljava/io/OutputStream;Ljava/lang/String;)V

    return-void

    :cond_e6
    if-eqz v3, :cond_61c

    :cond_e8
    new-instance v2, Lm/g;

    invoke-direct {v2}, Lm/g;-><init>()V

    iget-object v14, v0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v14}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v14

    :goto_f3
    invoke-interface {v14}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v15

    sget-object v9, Ld0/r;->B:Lm/q;

    sget-object v10, Ld0/r;->C:Lm/q;

    sget-object v12, Lm/v0;->d:Lm/v0;

    sget-object v6, Ld0/r;->M:Lm/q;

    sget-object v5, Ld0/r;->Y:Lm/q;

    move-object/from16 v17, v8

    sget-object v8, Ld0/r;->Z:Lm/q;

    move-object/from16 v19, v13

    if-eqz v15, :cond_272

    const/16 v15, 0x14

    new-array v15, v15, [B

    iget-object v13, v0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->random:Ljava/security/SecureRandom;

    invoke-virtual {v13, v15}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-interface {v14}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object/from16 v21, v14

    iget-object v14, v0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v14, v13}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/security/PrivateKey;

    iget-object v7, v0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyAlgorithm:Lm/q;

    invoke-static {v7}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->isPBKDF2(Lm/q;)Z

    move-result v7

    if-eqz v7, :cond_15e

    new-instance v7, Ld0/o;

    move-object/from16 v22, v11

    iget-object v11, v0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyAlgorithm:Lm/q;

    invoke-static {v11}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->getKeyLength(Lm/q;)I

    move-result v11

    new-instance v1, Ll0/b;

    invoke-direct {v1, v6, v12}, Ll0/b;-><init>(Lm/q;Lm/f;)V

    const v6, 0xc800

    invoke-direct {v7, v15, v6, v11, v1}, Ld0/o;-><init>([BIILl0/b;)V

    new-instance v1, Ld0/j;

    iget-object v6, v0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyAlgorithm:Lm/q;

    invoke-direct {v0, v6}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->getAlgParams(Lm/q;)Lm/u;

    move-result-object v11

    invoke-direct {v1, v6, v11}, Ld0/j;-><init>(Lm/q;Lm/n;)V

    new-instance v6, Ll0/b;

    new-instance v11, Ld0/n;

    new-instance v12, Ld0/k;

    invoke-direct {v12, v9, v7}, Ld0/k;-><init>(Lm/q;Lm/n;)V

    invoke-direct {v11, v12, v1}, Ld0/n;-><init>(Ld0/k;Ld0/j;)V

    invoke-direct {v6, v10, v11}, Ll0/b;-><init>(Lm/q;Lm/f;)V

    invoke-virtual {v0, v1, v14, v7, v3}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->wrapKey(Ld0/j;Ljava/security/Key;Ld0/o;[C)[B

    move-result-object v1

    goto :goto_17f

    :cond_15e
    move-object/from16 v22, v11

    new-instance v1, Ld0/q;

    const v6, 0xc800

    invoke-direct {v1, v15, v6}, Ld0/q;-><init>([BI)V

    iget-object v6, v0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyAlgorithm:Lm/q;

    invoke-virtual {v6}, Lm/q;->u()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v14, v1, v3}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->wrapKey(Ljava/lang/String;Ljava/security/Key;Ld0/q;[C)[B

    move-result-object v6

    new-instance v7, Ll0/b;

    iget-object v9, v0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyAlgorithm:Lm/q;

    invoke-virtual {v1}, Ld0/q;->d()Lm/u;

    move-result-object v1

    invoke-direct {v7, v9, v1}, Ll0/b;-><init>(Lm/q;Lm/f;)V

    move-object v1, v6

    move-object v6, v7

    :goto_17f
    new-instance v7, Lm/x0;

    invoke-static {v1}, Lm4/d;->e([B)[B

    move-result-object v1

    invoke-direct {v7, v1}, Lm/r;-><init>([B)V

    new-instance v1, Lm/g;

    invoke-direct {v1}, Lm/g;-><init>()V

    instance-of v9, v14, Lh2/k;

    if-eqz v9, :cond_1f8

    check-cast v14, Lh2/k;

    invoke-interface {v14, v5}, Lh2/k;->getBagAttribute(Lm/q;)Lm/f;

    move-result-object v9

    check-cast v9, Lm/o0;

    if-eqz p4, :cond_1af

    if-eqz v9, :cond_1a7

    invoke-virtual {v9}, Lm/o0;->e()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1af

    :cond_1a7
    new-instance v9, Lm/o0;

    invoke-direct {v9, v13}, Lm/o0;-><init>(Ljava/lang/String;)V

    invoke-interface {v14, v5, v9}, Lh2/k;->setBagAttribute(Lm/q;Lm/f;)V

    :cond_1af
    invoke-interface {v14, v8}, Lh2/k;->getBagAttribute(Lm/q;)Lm/f;

    move-result-object v9

    if-nez v9, :cond_1c4

    invoke-virtual {v0, v13}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v9

    invoke-virtual {v9}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v9

    invoke-direct {v0, v9}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->createSubjectKeyId(Ljava/security/PublicKey;)Ll0/o0;

    move-result-object v9

    invoke-interface {v14, v8, v9}, Lh2/k;->setBagAttribute(Lm/q;Lm/f;)V

    :cond_1c4
    invoke-interface {v14}, Lh2/k;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v9

    const/16 v20, 0x0

    :goto_1ca
    invoke-interface {v9}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_1fa

    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lm/q;

    new-instance v11, Lm/g;

    invoke-direct {v11}, Lm/g;-><init>()V

    invoke-virtual {v11, v10}, Lm/g;->a(Lm/f;)V

    new-instance v12, Lm/b1;

    invoke-interface {v14, v10}, Lh2/k;->getBagAttribute(Lm/q;)Lm/f;

    move-result-object v10

    invoke-direct {v12, v10}, Lm/b1;-><init>(Lm/f;)V

    invoke-virtual {v11, v12}, Lm/g;->a(Lm/f;)V

    new-instance v10, Lm/a1;

    invoke-direct {v10, v11}, Lm/x;-><init>(Lm/g;)V

    const/4 v11, -0x1

    iput v11, v10, Lm/a1;->q:I

    invoke-virtual {v1, v10}, Lm/g;->a(Lm/f;)V

    const/16 v20, 0x1

    goto :goto_1ca

    :cond_1f8
    const/16 v20, 0x0

    :cond_1fa
    if-nez v20, :cond_245

    new-instance v9, Lm/g;

    invoke-direct {v9}, Lm/g;-><init>()V

    invoke-virtual {v0, v13}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v10

    invoke-virtual {v9, v8}, Lm/g;->a(Lm/f;)V

    new-instance v8, Lm/b1;

    invoke-virtual {v10}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v10

    invoke-direct {v0, v10}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->createSubjectKeyId(Ljava/security/PublicKey;)Ll0/o0;

    move-result-object v10

    invoke-direct {v8, v10}, Lm/b1;-><init>(Lm/f;)V

    invoke-virtual {v9, v8}, Lm/g;->a(Lm/f;)V

    new-instance v8, Lm/a1;

    invoke-direct {v8, v9}, Lm/x;-><init>(Lm/g;)V

    const/4 v11, -0x1

    iput v11, v8, Lm/a1;->q:I

    invoke-virtual {v1, v8}, Lm/g;->a(Lm/f;)V

    new-instance v8, Lm/g;

    invoke-direct {v8}, Lm/g;-><init>()V

    invoke-virtual {v8, v5}, Lm/g;->a(Lm/f;)V

    new-instance v5, Lm/b1;

    new-instance v9, Lm/o0;

    invoke-direct {v9, v13}, Lm/o0;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v9}, Lm/y;-><init>(Lm/f;)V

    iput v11, v5, Lm/b1;->x:I

    invoke-virtual {v8, v5}, Lm/g;->a(Lm/f;)V

    new-instance v5, Lm/a1;

    invoke-direct {v5, v8}, Lm/x;-><init>(Lm/g;)V

    iput v11, v5, Lm/a1;->q:I

    invoke-virtual {v1, v5}, Lm/g;->a(Lm/f;)V

    goto :goto_246

    :cond_245
    const/4 v11, -0x1

    :goto_246
    new-instance v5, Ld0/z;

    new-instance v8, Lm/a1;

    invoke-direct {v8, v6, v7}, Lm/x;-><init>(Lm/f;Lm/f;)V

    iput v11, v8, Lm/a1;->q:I

    new-instance v6, Lm/b1;

    const/4 v7, 0x1

    invoke-direct {v6, v1, v7}, Lm/y;-><init>(Lm/g;Z)V

    iput v11, v6, Lm/b1;->x:I

    sget-object v1, Ld0/r;->l0:Lm/q;

    invoke-direct {v5, v1, v8, v6}, Ld0/z;-><init>(Lm/q;Lm/a1;Lm/b1;)V

    invoke-virtual {v2, v5}, Lm/g;->a(Lm/f;)V

    move-object/from16 v7, p1

    move/from16 v1, p4

    move v5, v11

    move-object/from16 v8, v17

    move-object/from16 v13, v19

    move-object/from16 v14, v21

    move-object/from16 v11, v22

    const/4 v6, 0x0

    const-wide/16 v9, 0x3

    const/4 v12, 0x3

    goto/16 :goto_f3

    :cond_272
    move-object/from16 v22, v11

    const/4 v11, -0x1

    new-instance v1, Lm/a1;

    invoke-direct {v1, v2}, Lm/x;-><init>(Lm/g;)V

    iput v11, v1, Lm/a1;->q:I

    invoke-virtual {v1}, Lm/n;->g()[B

    move-result-object v1

    new-instance v7, Lm/f0;

    const/4 v2, 0x0

    invoke-direct {v7, v1, v2}, Lm/f0;-><init>([B[Lm/r;)V

    const/16 v15, 0x14

    new-array v1, v15, [B

    iget-object v2, v0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v2, Lm/g;

    invoke-direct {v2}, Lm/g;-><init>()V

    iget-object v11, v0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certAlgorithm:Lm/q;

    invoke-static {v11}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->isPBKDF2(Lm/q;)Z

    move-result v11

    if-eqz v11, :cond_2ca

    new-instance v11, Ld0/o;

    iget-object v13, v0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certAlgorithm:Lm/q;

    invoke-static {v13}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->getKeyLength(Lm/q;)I

    move-result v13

    new-instance v14, Ll0/b;

    invoke-direct {v14, v6, v12}, Ll0/b;-><init>(Lm/q;Lm/f;)V

    const v6, 0xc800

    invoke-direct {v11, v1, v6, v13, v14}, Ld0/o;-><init>([BIILl0/b;)V

    new-instance v1, Ll0/b;

    new-instance v6, Ld0/n;

    new-instance v12, Ld0/k;

    invoke-direct {v12, v9, v11}, Ld0/k;-><init>(Lm/q;Lm/n;)V

    new-instance v9, Ld0/j;

    iget-object v11, v0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certAlgorithm:Lm/q;

    invoke-direct {v0, v11}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->getAlgParams(Lm/q;)Lm/u;

    move-result-object v13

    invoke-direct {v9, v11, v13}, Ld0/j;-><init>(Lm/q;Lm/n;)V

    invoke-direct {v6, v12, v9}, Ld0/n;-><init>(Ld0/k;Ld0/j;)V

    invoke-direct {v1, v10, v6}, Ll0/b;-><init>(Lm/q;Lm/f;)V

    goto :goto_2dd

    :cond_2ca
    new-instance v6, Ld0/q;

    const v9, 0xc800

    invoke-direct {v6, v1, v9}, Ld0/q;-><init>([BI)V

    new-instance v1, Ll0/b;

    iget-object v9, v0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certAlgorithm:Lm/q;

    invoke-virtual {v6}, Ld0/q;->d()Lm/u;

    move-result-object v6

    invoke-direct {v1, v9, v6}, Ll0/b;-><init>(Lm/q;Lm/f;)V

    :goto_2dd
    new-instance v6, Ljava/util/Hashtable;

    invoke-direct {v6}, Ljava/util/Hashtable;-><init>()V

    iget-object v9, v0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v9}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v9

    :goto_2e8
    invoke-interface {v9}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    sget-object v11, Ld0/r;->m0:Lm/q;

    sget-object v12, Ld0/r;->a0:Lm/q;

    if-eqz v10, :cond_416

    :try_start_2f2
    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v0, v10}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v13

    new-instance v14, Lm/x0;

    invoke-virtual {v13}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v15

    invoke-direct {v14, v15}, Lm/r;-><init>([B)V

    new-instance v15, Lm/g;

    invoke-direct {v15}, Lm/g;-><init>()V

    move-object/from16 v16, v1

    instance-of v1, v13, Lh2/k;

    if-eqz v1, :cond_38b

    move-object v1, v13

    check-cast v1, Lh2/k;

    invoke-interface {v1, v5}, Lh2/k;->getBagAttribute(Lm/q;)Lm/f;

    move-result-object v18

    check-cast v18, Lm/o0;

    if-eqz p4, :cond_333

    if-eqz v18, :cond_32b

    invoke-virtual/range {v18 .. v18}, Lm/o0;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_333

    goto :goto_32b

    :catch_328
    move-exception v0

    goto/16 :goto_400

    :cond_32b
    :goto_32b
    new-instance v3, Lm/o0;

    invoke-direct {v3, v10}, Lm/o0;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v5, v3}, Lh2/k;->setBagAttribute(Lm/q;Lm/f;)V

    :cond_333
    invoke-interface {v1, v8}, Lh2/k;->getBagAttribute(Lm/q;)Lm/f;

    move-result-object v3

    if-nez v3, :cond_344

    invoke-virtual {v13}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->createSubjectKeyId(Ljava/security/PublicKey;)Ll0/o0;

    move-result-object v3

    invoke-interface {v1, v8, v3}, Lh2/k;->setBagAttribute(Lm/q;Lm/f;)V

    :cond_344
    invoke-interface {v1}, Lh2/k;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v3

    const/16 v18, 0x0

    :goto_34a
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v21

    if-eqz v21, :cond_386

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v21, v3

    move-object/from16 v3, v18

    check-cast v3, Lm/q;

    move-object/from16 v23, v9

    new-instance v9, Lm/g;

    invoke-direct {v9}, Lm/g;-><init>()V

    invoke-virtual {v9, v3}, Lm/g;->a(Lm/f;)V

    move-object/from16 v24, v7

    new-instance v7, Lm/b1;

    invoke-interface {v1, v3}, Lh2/k;->getBagAttribute(Lm/q;)Lm/f;

    move-result-object v3

    invoke-direct {v7, v3}, Lm/b1;-><init>(Lm/f;)V

    invoke-virtual {v9, v7}, Lm/g;->a(Lm/f;)V

    new-instance v3, Lm/a1;

    invoke-direct {v3, v9}, Lm/x;-><init>(Lm/g;)V

    const/4 v7, -0x1

    iput v7, v3, Lm/a1;->q:I

    invoke-virtual {v15, v3}, Lm/g;->a(Lm/f;)V

    move-object/from16 v3, v21

    move-object/from16 v9, v23

    move-object/from16 v7, v24

    const/16 v18, 0x1

    goto :goto_34a

    :cond_386
    :goto_386
    move-object/from16 v24, v7

    move-object/from16 v23, v9

    goto :goto_38e

    :cond_38b
    const/16 v18, 0x0

    goto :goto_386

    :goto_38e
    if-nez v18, :cond_3d5

    new-instance v1, Lm/g;

    invoke-direct {v1}, Lm/g;-><init>()V

    invoke-virtual {v1, v8}, Lm/g;->a(Lm/f;)V

    new-instance v3, Lm/b1;

    invoke-virtual {v13}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    invoke-direct {v0, v7}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->createSubjectKeyId(Ljava/security/PublicKey;)Ll0/o0;

    move-result-object v7

    invoke-direct {v3, v7}, Lm/b1;-><init>(Lm/f;)V

    invoke-virtual {v1, v3}, Lm/g;->a(Lm/f;)V

    new-instance v3, Lm/a1;

    invoke-direct {v3, v1}, Lm/x;-><init>(Lm/g;)V

    const/4 v7, -0x1

    iput v7, v3, Lm/a1;->q:I

    invoke-virtual {v15, v3}, Lm/g;->a(Lm/f;)V

    new-instance v1, Lm/g;

    invoke-direct {v1}, Lm/g;-><init>()V

    invoke-virtual {v1, v5}, Lm/g;->a(Lm/f;)V

    new-instance v3, Lm/b1;

    new-instance v7, Lm/o0;

    invoke-direct {v7, v10}, Lm/o0;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v7}, Lm/y;-><init>(Lm/f;)V

    const/4 v7, -0x1

    iput v7, v3, Lm/b1;->x:I

    invoke-virtual {v1, v3}, Lm/g;->a(Lm/f;)V

    new-instance v3, Lm/a1;

    invoke-direct {v3, v1}, Lm/x;-><init>(Lm/g;)V

    iput v7, v3, Lm/a1;->q:I

    invoke-virtual {v15, v3}, Lm/g;->a(Lm/f;)V

    :cond_3d5
    new-instance v1, Ld0/z;

    new-instance v3, Lm/a1;

    new-instance v7, Lm/d1;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-direct {v7, v10, v9, v14}, Lm/a0;-><init>(ZILm/f;)V

    invoke-direct {v3, v12, v7}, Lm/x;-><init>(Lm/f;Lm/f;)V

    const/4 v7, -0x1

    iput v7, v3, Lm/a1;->q:I

    new-instance v9, Lm/b1;

    invoke-direct {v9, v15, v10}, Lm/y;-><init>(Lm/g;Z)V

    iput v7, v9, Lm/b1;->x:I

    invoke-direct {v1, v11, v3, v9}, Ld0/z;-><init>(Lm/q;Lm/a1;Lm/b1;)V

    invoke-virtual {v2, v1}, Lm/g;->a(Lm/f;)V

    invoke-virtual {v6, v13, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3f6
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_2f2 .. :try_end_3f6} :catch_328

    move-object/from16 v3, p2

    move-object/from16 v1, v16

    move-object/from16 v9, v23

    move-object/from16 v7, v24

    goto/16 :goto_2e8

    :goto_400
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_416
    move-object/from16 v16, v1

    move-object/from16 v24, v7

    iget-object v1, v0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :goto_420
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_461

    :try_start_426
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v5, v0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v5, v3}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/Certificate;

    iget-object v7, v0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v7, v3}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_43d

    goto :goto_420

    :cond_43d
    move/from16 v7, p4

    invoke-direct {v0, v3, v5, v7}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->createSafeBag(Ljava/lang/String;Ljava/security/cert/Certificate;Z)Ld0/z;

    move-result-object v3

    invoke-virtual {v2, v3}, Lm/g;->a(Lm/f;)V

    invoke-virtual {v6, v5, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_449
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_426 .. :try_end_449} :catch_44a

    goto :goto_420

    :catch_44a
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_461
    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->getUsedCertificateSet()Ljava/util/Set;

    move-result-object v1

    iget-object v3, v0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    :goto_46b
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_510

    :try_start_471
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;

    iget-object v7, v0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    invoke-virtual {v7, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/Certificate;

    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_486

    goto :goto_46b

    :cond_486
    invoke-virtual {v6, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_48d

    goto :goto_46b

    :cond_48d
    new-instance v7, Lm/x0;

    invoke-virtual {v5}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v9

    invoke-direct {v7, v9}, Lm/r;-><init>([B)V

    new-instance v9, Lm/g;

    invoke-direct {v9}, Lm/g;-><init>()V

    instance-of v10, v5, Lh2/k;

    if-eqz v10, :cond_4da

    check-cast v5, Lh2/k;

    invoke-interface {v5}, Lh2/k;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v10

    :goto_4a5
    invoke-interface {v10}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v13

    if-eqz v13, :cond_4da

    invoke-interface {v10}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lm/q;

    invoke-virtual {v13, v8}, Lm/u;->n(Lm/u;)Z

    move-result v14

    if-eqz v14, :cond_4b8

    goto :goto_4a5

    :cond_4b8
    new-instance v14, Lm/g;

    invoke-direct {v14}, Lm/g;-><init>()V

    invoke-virtual {v14, v13}, Lm/g;->a(Lm/f;)V

    new-instance v15, Lm/b1;

    invoke-interface {v5, v13}, Lh2/k;->getBagAttribute(Lm/q;)Lm/f;

    move-result-object v13

    invoke-direct {v15, v13}, Lm/b1;-><init>(Lm/f;)V

    invoke-virtual {v14, v15}, Lm/g;->a(Lm/f;)V

    new-instance v13, Lm/a1;

    invoke-direct {v13, v14}, Lm/x;-><init>(Lm/g;)V

    const/4 v14, -0x1

    iput v14, v13, Lm/a1;->q:I

    invoke-virtual {v9, v13}, Lm/g;->a(Lm/f;)V

    goto :goto_4a5

    :catch_4d8
    move-exception v0

    goto :goto_4fa

    :cond_4da
    new-instance v5, Ld0/z;

    new-instance v10, Lm/a1;

    new-instance v13, Lm/d1;

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-direct {v13, v15, v14, v7}, Lm/a0;-><init>(ZILm/f;)V

    invoke-direct {v10, v12, v13}, Lm/x;-><init>(Lm/f;Lm/f;)V

    const/4 v7, -0x1

    iput v7, v10, Lm/a1;->q:I

    new-instance v13, Lm/b1;

    invoke-direct {v13, v9, v15}, Lm/y;-><init>(Lm/g;Z)V

    iput v7, v13, Lm/b1;->x:I

    invoke-direct {v5, v11, v10, v13}, Ld0/z;-><init>(Lm/q;Lm/a1;Lm/b1;)V

    invoke-virtual {v2, v5}, Lm/g;->a(Lm/f;)V
    :try_end_4f8
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_471 .. :try_end_4f8} :catch_4d8

    goto/16 :goto_46b

    :goto_4fa
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_510
    new-instance v1, Lm/a1;

    invoke-direct {v1, v2}, Lm/x;-><init>(Lm/g;)V

    const/4 v7, -0x1

    iput v7, v1, Lm/a1;->q:I

    invoke-virtual {v1}, Lm/n;->g()[B

    move-result-object v5

    const/4 v1, 0x1

    const/4 v4, 0x0

    move-object/from16 v3, p2

    move-object/from16 v2, v16

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->cryptData(ZLl0/b;[CZ[B)[B

    move-result-object v1

    new-instance v3, Lm/f0;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lm/f0;-><init>([B[Lm/r;)V

    new-instance v1, Lm/g;

    const/4 v4, 0x3

    invoke-direct {v1, v4}, Lm/g;-><init>(I)V

    move-object/from16 v4, v22

    invoke-virtual {v1, v4}, Lm/g;->a(Lm/f;)V

    invoke-virtual {v2}, Ll0/b;->d()Lm/u;

    move-result-object v2

    invoke-virtual {v1, v2}, Lm/g;->a(Lm/f;)V

    new-instance v2, Lm/k0;

    const/16 v5, 0x80

    const/4 v6, 0x2

    const/4 v14, 0x0

    invoke-direct {v2, v6, v5, v14, v3}, Lm/a0;-><init>(IIILm/f;)V

    invoke-virtual {v1, v2}, Lm/g;->a(Lm/f;)V

    new-instance v2, Lm/h0;

    invoke-direct {v2, v1}, Lm/x;-><init>(Lm/g;)V

    new-instance v1, Ld0/f;

    move-object/from16 v3, v24

    invoke-direct {v1, v4, v3}, Ld0/f;-><init>(Lm/q;Lm/n;)V

    new-instance v3, Ld0/f;

    new-instance v5, Lm/h0;

    new-instance v7, Lm/l;

    const-wide/16 v8, 0x0

    invoke-direct {v7, v8, v9}, Lm/l;-><init>(J)V

    invoke-direct {v5, v7, v2}, Lm/x;-><init>(Lm/f;Lm/f;)V

    sget-object v2, Ld0/r;->T:Lm/q;

    invoke-direct {v3, v2, v5}, Ld0/f;-><init>(Lm/q;Lm/n;)V

    filled-new-array {v1, v3}, [Ld0/f;

    move-result-object v1

    new-array v2, v6, [Ld0/f;

    const/4 v14, 0x0

    invoke-static {v1, v14, v2, v14, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz p3, :cond_578

    move-object/from16 v1, v19

    goto :goto_57a

    :cond_578
    move-object/from16 v1, v17

    :goto_57a
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v5, Lm/h0;

    invoke-direct {v5, v2}, Lm/x;-><init>([Lm/f;)V

    invoke-virtual {v5, v3, v1}, Lm/u;->k(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    new-instance v7, Ld0/f;

    new-instance v1, Lm/f0;

    const/4 v2, 0x0

    invoke-direct {v1, v6, v2}, Lm/f0;-><init>([B[Lm/r;)V

    invoke-direct {v7, v4, v1}, Ld0/f;-><init>(Lm/q;Lm/n;)V

    iget v1, v0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->saltLength:I

    new-array v1, v1, [B

    iget-object v3, v0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->random:Ljava/security/SecureRandom;

    invoke-virtual {v3, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget-object v3, v0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyAlgorithm:Lm/q;

    sget-object v4, Lz/b;->S:Lm/q;

    invoke-virtual {v3, v4}, Lm/u;->n(Lm/u;)Z

    move-result v3

    if-eqz v3, :cond_5ab

    move-object v6, v2

    goto :goto_5e0

    :cond_5ab
    :try_start_5ab
    iget-object v2, v0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->macAlgorithm:Ll0/b;

    iget-object v2, v2, Ll0/b;->c:Lm/q;

    iget v3, v0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->itCount:I

    const/4 v5, 0x0

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    move-object/from16 v4, p2

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->calculatePbeMac(Lm/q;[BI[CZ[B)[B

    move-result-object v1

    new-instance v3, Ll0/r;

    iget-object v4, v0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->macAlgorithm:Ll0/b;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-static {v1}, Lm4/d;->e([B)[B

    move-result-object v1

    iput-object v1, v3, Ll0/r;->c:[B

    iput-object v4, v3, Ll0/r;->d:Ll0/b;

    new-instance v6, Ld0/l;

    iget v0, v0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->itCount:I

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v3, v6, Ld0/l;->c:Ll0/r;

    invoke-static {v2}, Lm4/d;->e([B)[B

    move-result-object v1

    iput-object v1, v6, Ld0/l;->d:[B

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, v6, Ld0/l;->q:Ljava/math/BigInteger;
    :try_end_5e0
    .catch Ljava/lang/Exception; {:try_start_5ab .. :try_end_5e0} :catch_60a

    :goto_5e0
    if-eqz p3, :cond_5e5

    move-object/from16 v8, v19

    goto :goto_5e7

    :cond_5e5
    move-object/from16 v8, v17

    :goto_5e7
    new-instance v0, Lm/g;

    const/4 v4, 0x3

    invoke-direct {v0, v4}, Lm/g;-><init>(I)V

    new-instance v1, Lm/l;

    const-wide/16 v2, 0x3

    invoke-direct {v1, v2, v3}, Lm/l;-><init>(J)V

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    invoke-virtual {v0, v7}, Lm/g;->a(Lm/f;)V

    if-eqz v6, :cond_5ff

    invoke-virtual {v0, v6}, Lm/g;->a(Lm/f;)V

    :cond_5ff
    new-instance v1, Lm/h0;

    invoke-direct {v1, v0}, Lm/x;-><init>(Lm/g;)V

    move-object/from16 v7, p1

    invoke-virtual {v1, v7, v8}, Lm/u;->k(Ljava/io/OutputStream;Ljava/lang/String;)V

    return-void

    :catch_60a
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error constructing MAC: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2}, Lb/b;->d(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_61c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "no password supplied for PKCS#12 KeyStore"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getAlgParams(Lm/q;)Lm/u;
    .registers 4

    sget-object v0, Lz/b;->y:Lm/q;

    invoke-virtual {p1, v0}, Lm/u;->n(Lm/u;)Z

    move-result v0

    const/16 v1, 0x10

    if-nez v0, :cond_59

    sget-object v0, Lz/b;->O:Lm/q;

    invoke-virtual {p1, v0}, Lm/u;->n(Lm/u;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_59

    :cond_13
    sget-object v0, Lz/b;->C:Lm/q;

    invoke-virtual {p1, v0}, Lm/u;->n(Lm/u;)Z

    move-result v0

    if-nez v0, :cond_2c

    sget-object v0, Lz/b;->S:Lm/q;

    invoke-virtual {p1, v0}, Lm/u;->n(Lm/u;)Z

    move-result p1

    if-eqz p1, :cond_24

    goto :goto_2c

    :cond_24
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "unknown encryption OID in getAlgParams()"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2c
    :goto_2c
    const/16 p1, 0xc

    new-array p1, p1, [B

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->random:Ljava/security/SecureRandom;

    invoke-virtual {p0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-static {p1}, Lm4/d;->e([B)[B

    move-result-object p0

    new-instance p1, Lm/g;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Lm/g;-><init>(I)V

    new-instance v0, Lm/x0;

    invoke-direct {v0, p0}, Lm/r;-><init>([B)V

    invoke-virtual {p1, v0}, Lm/g;->a(Lm/f;)V

    new-instance p0, Lm/l;

    int-to-long v0, v1

    invoke-direct {p0, v0, v1}, Lm/l;-><init>(J)V

    invoke-virtual {p1, p0}, Lm/g;->a(Lm/f;)V

    new-instance p0, Lm/a1;

    invoke-direct {p0, p1}, Lm/x;-><init>(Lm/g;)V

    const/4 p1, -0x1

    iput p1, p0, Lm/a1;->q:I

    return-object p0

    :cond_59
    :goto_59
    new-array p1, v1, [B

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->random:Ljava/security/SecureRandom;

    invoke-virtual {p0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance p0, Lm/x0;

    invoke-direct {p0, p1}, Lm/r;-><init>([B)V

    return-object p0
.end method

.method private static getDigest(Ll0/p0;)[B
    .registers 5

    sget v0, Lj1/a;->a:I

    new-instance v0, Ls0/z;

    invoke-direct {v0}, Ls0/z;-><init>()V

    const/16 v1, 0x14

    new-array v1, v1, [B

    iget-object p0, p0, Ll0/p0;->d:Lm/b;

    invoke-virtual {p0}, Lm/b;->s()[B

    move-result-object p0

    array-length v2, p0

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v3, v2}, Ls0/j;->update([BII)V

    invoke-virtual {v0, v1, v3}, Ls0/z;->doFinal([BI)I

    return-object v1
.end method

.method private static getKeyLength(Lm/q;)I
    .registers 2

    sget-object v0, Lz/b;->O:Lm/q;

    invoke-virtual {p0, v0}, Lm/u;->n(Lm/u;)Z

    move-result v0

    if-nez v0, :cond_14

    sget-object v0, Lz/b;->S:Lm/q;

    invoke-virtual {p0, v0}, Lm/u;->n(Lm/u;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_14

    :cond_11
    const/16 p0, 0x10

    return p0

    :cond_14
    :goto_14
    const/16 p0, 0x20

    return p0
.end method

.method private static getPrf(Lm/q;)Lorg/bouncycastle/crypto/v;
    .registers 3

    sget-object v0, Ld0/r;->M:Lm/q;

    invoke-virtual {v0, p0}, Lm/u;->n(Lm/u;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance p0, Ls0/b0;

    invoke-direct {p0}, Ls0/b0;-><init>()V

    return-object p0

    :cond_e
    sget-object v0, Ld0/r;->O:Lm/q;

    invoke-virtual {v0, p0}, Lm/u;->n(Lm/u;)Z

    move-result v0

    if-eqz v0, :cond_1c

    new-instance p0, Ls0/e0;

    invoke-direct {p0}, Ls0/e0;-><init>()V

    return-object p0

    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown prf id "

    invoke-static {v1, p0}, Lb/b;->j(Ljava/lang/String;Lm/q;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getUsedCertificateSet()Ljava/util/Set;
    .registers 6

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :cond_b
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v2

    const/4 v3, 0x0

    :goto_1c
    array-length v4, v2

    if-eq v3, v4, :cond_b

    aget-object v4, v2, v3

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_27
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :goto_2d
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    :cond_41
    return-object v0
.end method

.method private static isPBKDF2(Lm/q;)Z
    .registers 2

    sget-object v0, Lz/b;->O:Lm/q;

    invoke-virtual {p0, v0}, Lm/u;->n(Lm/u;)Z

    move-result v0

    if-nez v0, :cond_23

    sget-object v0, Lz/b;->S:Lm/q;

    invoke-virtual {p0, v0}, Lm/u;->n(Lm/u;)Z

    move-result v0

    if-nez v0, :cond_23

    sget-object v0, Lz/b;->y:Lm/q;

    invoke-virtual {p0, v0}, Lm/u;->n(Lm/u;)Z

    move-result v0

    if-nez v0, :cond_23

    sget-object v0, Lz/b;->C:Lm/q;

    invoke-virtual {p0, v0}, Lm/u;->n(Lm/u;)Z

    move-result p0

    if-eqz p0, :cond_21

    goto :goto_23

    :cond_21
    const/4 p0, 0x0

    return p0

    :cond_23
    :goto_23
    const/4 p0, 0x1

    return p0
.end method

.method private processKeyBag(Ld0/z;)V
    .registers 11

    iget-object v0, p1, Ld0/z;->d:Lm/n;

    invoke-static {v0}, Ld0/t;->h(Ljava/lang/Object;)Ld0/t;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->getPrivateKey(Ld0/t;)Ljava/security/PrivateKey;

    move-result-object v0

    instance-of v1, v0, Lh2/k;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_8a

    move-object v1, v0

    check-cast v1, Lh2/k;

    iget-object p1, p1, Ld0/z;->q:Lm/y;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lm/y;->c:[Lm/f;

    move v5, v2

    move-object v4, v3

    :goto_1c
    array-length v6, p1

    if-ge v5, v6, :cond_87

    array-length v6, p1

    if-ge v5, v6, :cond_81

    add-int/lit8 v6, v5, 0x1

    aget-object v5, p1, v5

    invoke-static {v5}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v5

    invoke-virtual {v5, v2}, Lm/x;->v(I)Lm/f;

    move-result-object v7

    invoke-static {v7}, Lm/q;->v(Ljava/lang/Object;)Lm/q;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Lm/x;->v(I)Lm/f;

    move-result-object v5

    invoke-static {v5}, Lm/y;->s(Ljava/lang/Object;)Lm/y;

    move-result-object v5

    iget-object v5, v5, Lm/y;->c:[Lm/f;

    array-length v8, v5

    if-lez v8, :cond_7f

    aget-object v5, v5, v2

    check-cast v5, Lm/u;

    invoke-interface {v1, v7}, Lh2/k;->getBagAttribute(Lm/q;)Lm/f;

    move-result-object v8

    if-eqz v8, :cond_5d

    invoke-interface {v8}, Lm/f;->d()Lm/u;

    move-result-object v8

    invoke-virtual {v8, v5}, Lm/u;->n(Lm/u;)Z

    move-result v8

    if-eqz v8, :cond_55

    goto :goto_60

    :cond_55
    new-instance p0, Ljava/io/IOException;

    const-string p1, "attempt to add existing attribute with different value"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5d
    invoke-interface {v1, v7, v5}, Lh2/k;->setBagAttribute(Lm/q;Lm/f;)V

    :goto_60
    sget-object v8, Ld0/r;->Y:Lm/q;

    invoke-virtual {v7, v8}, Lm/u;->n(Lm/u;)Z

    move-result v8

    if-eqz v8, :cond_74

    check-cast v5, Lm/o0;

    invoke-virtual {v5}, Lm/o0;->e()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v5, v3, v0}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_7f

    :cond_74
    sget-object v8, Ld0/r;->Z:Lm/q;

    invoke-virtual {v7, v8}, Lm/u;->n(Lm/u;)Z

    move-result v7

    if-eqz v7, :cond_7f

    check-cast v5, Lm/r;

    move-object v4, v5

    :cond_7f
    :goto_7f
    move v5, v6

    goto :goto_1c

    :cond_81
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_87
    move-object p1, v3

    move-object v3, v4

    goto :goto_8b

    :cond_8a
    move-object p1, v3

    :goto_8b
    new-instance v1, Ljava/lang/String;

    iget-object v3, v3, Lm/r;->c:[B

    sget-object v4, Ln4/c;->a:Ln4/b;

    array-length v4, v3

    invoke-static {v3, v2, v4}, Ln4/c;->d([BII)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    if-nez p1, :cond_a1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {p0, v1, v0}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_a1
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->localIds:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {p0, p1, v1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private processShroudedKeyBag(Ld0/z;[CZ)Z
    .registers 13

    iget-object v0, p1, Ld0/z;->d:Lm/n;

    invoke-static {v0}, Ld0/i;->h(Ljava/lang/Object;)Ld0/i;

    move-result-object v0

    iget-object v1, v0, Ld0/i;->c:Ll0/b;

    iget-object v0, v0, Ld0/i;->d:Lm/r;

    iget-object v0, v0, Lm/r;->c:[B

    invoke-static {v0}, Lm4/d;->e([B)[B

    move-result-object v0

    invoke-virtual {p0, v1, v0, p2, p3}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->unwrapKey(Ll0/b;[B[CZ)Ljava/security/PrivateKey;

    move-result-object p2

    iget-object p1, p1, Ld0/z;->q:Lm/y;

    const/4 p3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_8f

    iget-object p1, p1, Lm/y;->c:[Lm/f;

    move v4, v0

    move-object v2, v1

    move-object v3, v2

    :goto_20
    array-length v5, p1

    if-ge v4, v5, :cond_8d

    array-length v5, p1

    if-ge v4, v5, :cond_87

    add-int/lit8 v5, v4, 0x1

    aget-object v4, p1, v4

    check-cast v4, Lm/x;

    invoke-virtual {v4, v0}, Lm/x;->v(I)Lm/f;

    move-result-object v6

    check-cast v6, Lm/q;

    invoke-virtual {v4, p3}, Lm/x;->v(I)Lm/f;

    move-result-object v4

    check-cast v4, Lm/y;

    iget-object v4, v4, Lm/y;->c:[Lm/f;

    array-length v7, v4

    if-lez v7, :cond_65

    aget-object v4, v4, v0

    check-cast v4, Lm/u;

    instance-of v7, p2, Lh2/k;

    if-eqz v7, :cond_66

    move-object v7, p2

    check-cast v7, Lh2/k;

    invoke-interface {v7, v6}, Lh2/k;->getBagAttribute(Lm/q;)Lm/f;

    move-result-object v8

    if-eqz v8, :cond_61

    invoke-interface {v8}, Lm/f;->d()Lm/u;

    move-result-object v7

    invoke-virtual {v7, v4}, Lm/u;->n(Lm/u;)Z

    move-result v7

    if-eqz v7, :cond_59

    goto :goto_66

    :cond_59
    new-instance p0, Ljava/io/IOException;

    const-string p1, "attempt to add existing attribute with different value"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_61
    invoke-interface {v7, v6, v4}, Lh2/k;->setBagAttribute(Lm/q;Lm/f;)V

    goto :goto_66

    :cond_65
    move-object v4, v1

    :cond_66
    :goto_66
    sget-object v7, Ld0/r;->Y:Lm/q;

    invoke-virtual {v6, v7}, Lm/u;->n(Lm/u;)Z

    move-result v7

    if-eqz v7, :cond_7a

    check-cast v4, Lm/o0;

    invoke-virtual {v4}, Lm/o0;->e()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v4, v2, p2}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_85

    :cond_7a
    sget-object v7, Ld0/r;->Z:Lm/q;

    invoke-virtual {v6, v7}, Lm/u;->n(Lm/u;)Z

    move-result v6

    if-eqz v6, :cond_85

    move-object v3, v4

    check-cast v3, Lm/r;

    :cond_85
    :goto_85
    move v4, v5

    goto :goto_20

    :cond_87
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_8d
    move-object v1, v3

    goto :goto_90

    :cond_8f
    move-object v2, v1

    :goto_90
    if-eqz v1, :cond_ae

    new-instance p1, Ljava/lang/String;

    iget-object p3, v1, Lm/r;->c:[B

    sget-object v1, Ln4/c;->a:Ln4/b;

    array-length v1, p3

    invoke-static {p3, v0, v1}, Ln4/c;->d([BII)[B

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/lang/String;-><init>([B)V

    if-nez v2, :cond_a8

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    :cond_a8
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->localIds:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {p0, v2, p1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    :cond_ae
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    const-string p1, "unmarked"

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return p3
.end method

.method private syncFriendlyName()V
    .registers 7

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    sget-object v2, Ld0/r;->Y:Lm/q;

    if-eqz v1, :cond_42

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v3, v1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/PrivateKey;

    instance-of v4, v3, Lh2/k;

    if-eqz v4, :cond_6

    move-object v4, v3

    check-cast v4, Lh2/k;

    invoke-interface {v4, v2}, Lh2/k;->getBagAttribute(Lm/q;)Lm/f;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2, v3}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v2, v1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_6

    :cond_42
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    :cond_48
    :goto_48
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_82

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v3, v1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/Certificate;

    instance-of v4, v3, Lh2/k;

    if-eqz v4, :cond_48

    move-object v4, v3

    check-cast v4, Lh2/k;

    invoke-interface {v4, v2}, Lh2/k;->getBagAttribute(Lm/q;)Lm/f;

    move-result-object v4

    if-eqz v4, :cond_48

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_48

    iget-object v5, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4, v3}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v3, v1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_48

    :cond_82
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    :cond_88
    :goto_88
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_c2

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/Certificate;

    instance-of v4, v3, Lh2/k;

    if-eqz v4, :cond_88

    move-object v4, v3

    check-cast v4, Lh2/k;

    invoke-interface {v4, v2}, Lh2/k;->getBagAttribute(Lm/q;)Lm/f;

    move-result-object v4

    if-eqz v4, :cond_88

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_88

    iget-object v5, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_88

    :cond_c2
    return-void
.end method

.method private validateIterationCount(Ljava/math/BigInteger;)I
    .registers 5

    invoke-static {p1}, Lm4/a;->h(Ljava/math/BigInteger;)I

    move-result p0

    if-ltz p0, :cond_3f

    const-string p1, "org.bouncycastle.pkcs12.max_it_count"

    invoke-static {p1}, Lm4/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_14

    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    if-eqz v0, :cond_3e

    invoke-static {v0}, Lm4/a;->h(Ljava/math/BigInteger;)I

    move-result p1

    if-lt p1, p0, :cond_1e

    goto :goto_3e

    :cond_1e
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "iteration count "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " greater than "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lm4/a;->h(Ljava/math/BigInteger;)I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3e
    :goto_3e
    return p0

    :cond_3f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "negative iteration count found"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public cryptData(ZLl0/b;[CZ[B)[B
    .registers 11

    iget-object v0, p2, Ll0/b;->c:Lm/q;

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x2

    :goto_7
    sget-object v1, Ld0/r;->n0:Lm/q;

    invoke-virtual {v0, v1}, Lm/q;->y(Lm/q;)Z

    move-result v1

    const-string v2, "exception decrypting data - "

    if-eqz v1, :cond_64

    iget-object p2, p2, Ll0/b;->d:Lm/f;

    invoke-static {p2}, Ld0/q;->h(Ljava/lang/Object;)Ld0/q;

    move-result-object p2

    new-instance v1, La2/h;

    invoke-direct {v1, p3, p4}, La2/h;-><init>([CZ)V

    iget-object p3, v1, La2/h;->c:[C

    const/4 p4, 0x0

    :try_start_1f
    new-instance v3, Ljavax/crypto/spec/PBEParameterSpec;

    iget-object v4, p2, Ld0/q;->d:Lm/r;

    iget-object v4, v4, Lm/r;->c:[B

    iget-object p2, p2, Ld0/q;->c:Lm/l;

    invoke-virtual {p2}, Lm/l;->t()Ljava/math/BigInteger;

    move-result-object p2

    invoke-static {p2}, Lm4/a;->h(Ljava/math/BigInteger;)I

    move-result p2

    invoke-direct {v3, v4, p2}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->helper:Le2/b;

    invoke-virtual {v0}, Lm/q;->u()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Le2/b;->d(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    invoke-virtual {p0, p1, v1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {p0, p5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_43} :catch_49
    .catchall {:try_start_1f .. :try_end_43} :catchall_47

    invoke-static {p3, p4}, Ljava/util/Arrays;->fill([CC)V

    return-object p0

    :catchall_47
    move-exception p0

    goto :goto_60

    :catch_49
    move-exception p0

    :try_start_4a
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_60
    .catchall {:try_start_4a .. :try_end_60} :catchall_47

    :goto_60
    invoke-static {p3, p4}, Ljava/util/Arrays;->fill([CC)V

    throw p0

    :cond_64
    sget-object p4, Ld0/r;->C:Lm/q;

    invoke-virtual {v0, p4}, Lm/u;->n(Lm/u;)Z

    move-result p4

    if-eqz p4, :cond_85

    :try_start_6c
    invoke-direct {p0, p1, p3, p2}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->createCipher(I[CLl0/b;)Ljavax/crypto/Cipher;

    move-result-object p0

    invoke-virtual {p0, p5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_74} :catch_75

    return-object p0

    :catch_75
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2}, Lb/b;->d(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_85
    new-instance p0, Ljava/io/IOException;

    const-string p1, "unknown PBE algorithm: "

    invoke-static {p1, v0}, Lb/b;->j(Ljava/lang/String;Lm/q;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineAliases()Ljava/util/Enumeration;
    .registers 5

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "cert"

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_1b
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object p0

    :cond_21
    :goto_21
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_21

    const-string v2, "key"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_21

    :cond_39
    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method public engineContainsAlias(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_13

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method public engineDeleteEntry(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    if-eqz v0, :cond_18

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    new-instance v2, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-direct {v2, p0, v0}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;-><init>(Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;Ljava/security/PublicKey;)V

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Key;

    if-eqz v0, :cond_44

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->localIds:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_44

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/cert/Certificate;

    if-eqz p1, :cond_44

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    new-instance v1, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;

    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;-><init>(Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;Ljava/security/PublicKey;)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_44
    return-void
.end method

.method public engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .registers 3

    if-eqz p1, :cond_25

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    if-nez v0, :cond_24

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->localIds:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    if-eqz v0, :cond_1f

    invoke-virtual {p0, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_1c
    check-cast p0, Ljava/security/cert/Certificate;

    return-object p0

    :cond_1f
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1c

    :cond_24
    return-object v0

    :cond_25
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "null alias passed to getCertificate."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :cond_c
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/Certificate;

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    return-object v3

    :cond_25
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object p0

    :cond_31
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/Certificate;

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    return-object v2

    :cond_4a
    const/4 p0, 0x0

    return-object p0
.end method

.method public engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .registers 11

    if-eqz p1, :cond_118

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->engineIsKeyEntry(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    goto/16 :goto_117

    :cond_b
    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object p1

    if-eqz p1, :cond_117

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    :goto_16
    const/4 v2, 0x0

    if-eqz p1, :cond_103

    move-object v3, p1

    check-cast v3, Ljava/security/cert/X509Certificate;

    sget-object v4, Ll0/v;->L1:Lm/q;

    invoke-virtual {v4}, Lm/q;->u()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/security/cert/X509Extension;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v4

    if-eqz v4, :cond_b7

    invoke-static {v4}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object v4

    iget-object v4, v4, Lm/r;->c:[B

    instance-of v5, v4, Ll0/i;

    if-eqz v5, :cond_35

    check-cast v4, Ll0/i;

    goto :goto_9f

    :cond_35
    if-eqz v4, :cond_9e

    new-instance v5, Ll0/i;

    invoke-static {v4}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v4

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v1, v5, Ll0/i;->c:Lm/r;

    iput-object v1, v5, Ll0/i;->d:Ll0/z;

    iput-object v1, v5, Ll0/i;->q:Lm/l;

    invoke-virtual {v4}, Lm/x;->w()Ljava/util/Enumeration;

    move-result-object v4

    :goto_4a
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_9c

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lm/a0;->v(Ljava/lang/Object;)Lm/a0;

    move-result-object v6

    iget v7, v6, Lm/a0;->q:I

    if-eqz v7, :cond_8b

    const/4 v8, 0x1

    if-eq v7, v8, :cond_7b

    const/4 v8, 0x2

    if-ne v7, v8, :cond_73

    invoke-static {v6}, Lq4/k;->v(Lm/a0;)V

    sget-object v7, Lm/l;->q:Lm/a;

    invoke-virtual {v6, v2, v7}, Lm/a0;->t(ZLm/a;)Lm/u;

    move-result-object v6

    invoke-virtual {v7, v6}, Lm/a;->a(Lm/u;)V

    check-cast v6, Lm/l;

    iput-object v6, v5, Ll0/i;->q:Lm/l;

    goto :goto_4a

    :cond_73
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "illegal tag"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7b
    new-instance v7, Ll0/z;

    sget-object v8, Lm/x;->d:Lm/a;

    invoke-virtual {v8, v6, v2}, Lm/a;->d(Lm/a0;Z)Lm/u;

    move-result-object v6

    check-cast v6, Lm/x;

    invoke-direct {v7, v6}, Ll0/z;-><init>(Lm/x;)V

    iput-object v7, v5, Ll0/i;->d:Ll0/z;

    goto :goto_4a

    :cond_8b
    invoke-static {v6}, Lq4/k;->v(Lm/a0;)V

    sget-object v7, Lm/r;->d:Lm/a;

    invoke-virtual {v6, v2, v7}, Lm/a0;->t(ZLm/a;)Lm/u;

    move-result-object v6

    invoke-virtual {v7, v6}, Lm/a;->a(Lm/u;)V

    check-cast v6, Lm/r;

    iput-object v6, v5, Ll0/i;->c:Lm/r;

    goto :goto_4a

    :cond_9c
    move-object v4, v5

    goto :goto_9f

    :cond_9e
    move-object v4, v1

    :goto_9f
    iget-object v2, v4, Ll0/i;->c:Lm/r;

    if-eqz v2, :cond_a6

    iget-object v2, v2, Lm/r;->c:[B

    goto :goto_a7

    :cond_a6
    move-object v2, v1

    :goto_a7
    if-eqz v2, :cond_b7

    iget-object v4, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    new-instance v5, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;

    invoke-direct {v5, p0, v2}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;-><init>(Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;[B)V

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/Certificate;

    goto :goto_b8

    :cond_b7
    move-object v2, v1

    :goto_b8
    if-nez v2, :cond_f2

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v4

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f2

    iget-object v5, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v5

    :catch_ce
    :cond_ce
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_f2

    iget-object v6, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ce

    :try_start_ea
    invoke-virtual {v6}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/security/cert/Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_f1
    .catch Ljava/lang/Exception; {:try_start_ea .. :try_end_f1} :catch_ce

    move-object v2, v6

    :cond_f2
    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_fb

    :cond_f8
    move-object p1, v1

    goto/16 :goto_16

    :cond_fb
    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    if-eq v2, p1, :cond_f8

    move-object p1, v2

    goto/16 :goto_16

    :cond_103
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result p0

    new-array p1, p0, [Ljava/security/cert/Certificate;

    :goto_109
    if-eq v2, p0, :cond_116

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/Certificate;

    aput-object v1, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_109

    :cond_116
    return-object p1

    :cond_117
    :goto_117
    return-object v1

    :cond_118
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "null alias passed to getCertificateChain."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .registers 3

    if-eqz p1, :cond_1a

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_14

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_14

    const/4 p0, 0x0

    return-object p0

    :cond_14
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    return-object p0

    :cond_1a
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "alias == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;
    .registers 3

    if-eqz p1, :cond_b

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/Key;

    return-object p0

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "null alias passed to getKey."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineIsCertificateEntry(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public engineIsKeyEntry(Ljava/lang/String;)Z
    .registers 2

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public engineLoad(Ljava/io/InputStream;[C)V
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v1, :cond_8

    goto/16 :goto_4ce

    :cond_8
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v1, 0xa

    invoke-virtual {v2, v1}, Ljava/io/BufferedInputStream;->mark(I)V

    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->read()I

    move-result v1

    if-ltz v1, :cond_4e2

    const/16 v3, 0x30

    if-ne v1, v3, :cond_4da

    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->reset()V

    new-instance v1, Lm/k;

    invoke-direct {v1, v2}, Lm/k;-><init>(Ljava/io/InputStream;)V

    :try_start_24
    invoke-virtual {v1}, Lm/k;->f()Lm/u;

    move-result-object v1

    invoke-static {v1}, Ld0/s;->h(Lm/u;)Ld0/s;

    move-result-object v1
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2c} :catch_4cf

    iget-object v7, v1, Ld0/s;->c:Ld0/f;

    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    iget-object v1, v1, Ld0/s;->d:Ld0/l;

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v1, :cond_be

    if-eqz p2, :cond_b6

    iget-object v11, v1, Ld0/l;->c:Ll0/r;

    iget-object v2, v11, Ll0/r;->d:Ll0/b;

    iput-object v2, v0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->macAlgorithm:Ll0/b;

    iget-object v2, v1, Ld0/l;->d:[B

    invoke-static {v2}, Lm4/d;->e([B)[B

    move-result-object v2

    iget-object v1, v1, Ld0/l;->q:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->validateIterationCount(Ljava/math/BigInteger;)I

    move-result v3

    iput v3, v0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->itCount:I

    array-length v1, v2

    iput v1, v0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->saltLength:I

    iget-object v1, v7, Ld0/f;->d:Lm/f;

    check-cast v1, Lm/r;

    iget-object v6, v1, Lm/r;->c:[B

    :try_start_58
    iget-object v1, v0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->macAlgorithm:Ll0/b;

    iget-object v1, v1, Ll0/b;->c:Lm/q;

    const/4 v5, 0x0

    move-object/from16 v4, p2

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->calculatePbeMac(Lm/q;[BI[CZ[B)[B

    move-result-object v1

    iget-object v3, v11, Ll0/r;->c:[B

    invoke-static {v3}, Lm4/d;->e([B)[B

    move-result-object v11

    invoke-static {v1, v11}, Lm4/d;->o([B[B)Z

    move-result v1

    if-nez v1, :cond_9f

    array-length v1, v4
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_70} :catch_b4
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_70} :catch_a2

    const-string v12, "PKCS12 key store mac invalid"

    const-string v13, "PKCS12 key store mac invalid - wrong password or corrupted file"

    if-gtz v1, :cond_94

    :try_start_76
    iget-object v1, v0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->macAlgorithm:Ll0/b;

    iget-object v1, v1, Ll0/b;->c:Lm/q;

    iget v3, v0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->itCount:I

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->calculatePbeMac(Lm/q;[BI[CZ[B)[B

    move-result-object v1

    invoke-static {v1, v11}, Lm4/d;->o([B[B)Z

    move-result v1

    if-eqz v1, :cond_89

    move v1, v9

    goto :goto_a0

    :cond_89
    new-instance v0, Ljava/security/UnrecoverableKeyException;

    invoke-direct {v0, v12}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v13, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_94
    new-instance v0, Ljava/security/UnrecoverableKeyException;

    invoke-direct {v0, v12}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v13, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_9f} :catch_b4
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_9f} :catch_a2

    :cond_9f
    move v1, v10

    :goto_a0
    move v6, v10

    goto :goto_c2

    :catch_a2
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error constructing MAC: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2}, Lb/b;->d(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_b4
    move-exception v0

    throw v0

    :cond_b6
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "no password supplied when one expected"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_be
    move-object/from16 v4, p2

    move v6, v9

    move v1, v10

    :goto_c2
    new-instance v2, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    const/4 v11, 0x0

    invoke-direct {v2, v11}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;-><init>(Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$1;)V

    iput-object v2, v0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    new-instance v2, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-direct {v2, v11}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;-><init>(Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$1;)V

    iput-object v2, v0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->localIds:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    iget-object v2, v7, Ld0/f;->c:Lm/q;

    sget-object v12, Ld0/r;->R:Lm/q;

    invoke-virtual {v2, v12}, Lm/u;->n(Lm/u;)Z

    move-result v2

    if-eqz v2, :cond_2d9

    iget-object v2, v7, Ld0/f;->d:Lm/f;

    invoke-static {v2}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object v2

    iget-object v2, v2, Lm/r;->c:[B

    instance-of v3, v2, Ld0/b;

    if-eqz v3, :cond_ea

    check-cast v2, Ld0/b;

    goto :goto_119

    :cond_ea
    if-eqz v2, :cond_118

    new-instance v3, Ld0/b;

    invoke-static {v2}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v2

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-boolean v9, v3, Ld0/b;->d:Z

    invoke-virtual {v2}, Lm/x;->size()I

    move-result v5

    new-array v5, v5, [Ld0/f;

    iput-object v5, v3, Ld0/b;->c:[Ld0/f;

    move v5, v10

    :goto_100
    iget-object v7, v3, Ld0/b;->c:[Ld0/f;

    array-length v13, v7

    if-eq v5, v13, :cond_112

    invoke-virtual {v2, v5}, Lm/x;->v(I)Lm/f;

    move-result-object v13

    invoke-static {v13}, Ld0/f;->h(Ljava/lang/Object;)Ld0/f;

    move-result-object v13

    aput-object v13, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_100

    :cond_112
    instance-of v2, v2, Lm/h0;

    iput-boolean v2, v3, Ld0/b;->d:Z

    move-object v2, v3

    goto :goto_119

    :cond_118
    move-object v2, v11

    :goto_119
    iget-object v2, v2, Ld0/b;->c:[Ld0/f;

    array-length v7, v2

    new-array v13, v7, [Ld0/f;

    invoke-static {v2, v10, v13, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v2, v9

    move v14, v10

    move v15, v14

    :goto_124
    if-eq v14, v7, :cond_2db

    aget-object v3, v13, v14

    iget-object v3, v3, Ld0/f;->c:Lm/q;

    invoke-virtual {v3, v12}, Lm/u;->n(Lm/u;)Z

    move-result v3

    sget-object v5, Ld0/r;->k0:Lm/q;

    sget-object v11, Ld0/r;->m0:Lm/q;

    sget-object v9, Ld0/r;->l0:Lm/q;

    if-eqz v3, :cond_1af

    aget-object v3, v13, v14

    iget-object v3, v3, Ld0/f;->d:Lm/f;

    invoke-static {v3}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object v3

    iget-object v3, v3, Lm/r;->c:[B

    invoke-static {v3}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v3

    move/from16 v17, v2

    :goto_146
    invoke-virtual {v3}, Lm/x;->size()I

    move-result v2

    if-eq v10, v2, :cond_1a7

    invoke-virtual {v3, v10}, Lm/x;->v(I)Lm/f;

    move-result-object v2

    invoke-static {v2}, Ld0/z;->h(Lm/f;)Ld0/z;

    move-result-object v2

    move-object/from16 v18, v3

    iget-object v3, v2, Ld0/z;->c:Lm/q;

    invoke-virtual {v3, v9}, Lm/u;->n(Lm/u;)Z

    move-result v19

    if-eqz v19, :cond_168

    invoke-direct {v0, v2, v4, v1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->processShroudedKeyBag(Ld0/z;[CZ)Z

    move-result v2

    move/from16 v19, v1

    move v15, v2

    const/16 v17, 0x0

    goto :goto_19e

    :cond_168
    invoke-virtual {v3, v11}, Lm/u;->n(Lm/u;)Z

    move-result v19

    if-eqz v19, :cond_174

    invoke-virtual {v8, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_171
    move/from16 v19, v1

    goto :goto_19e

    :cond_174
    invoke-virtual {v3, v5}, Lm/u;->n(Lm/u;)Z

    move-result v19

    if-eqz v19, :cond_17e

    invoke-direct {v0, v2}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->processKeyBag(Ld0/z;)V

    goto :goto_171

    :cond_17e
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move/from16 v19, v1

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v20, v2

    const-string v2, "extra in data "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static/range {v20 .. v20}, Lt4/d;->H(Lm/f;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_19e
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move-object/from16 v3, v18

    move/from16 v1, v19

    goto :goto_146

    :cond_1a7
    move-object/from16 v0, p0

    move/from16 v19, v1

    move/from16 v2, v17

    goto/16 :goto_2d0

    :cond_1af
    move/from16 v19, v1

    aget-object v0, v13, v14

    iget-object v0, v0, Ld0/f;->c:Lm/q;

    sget-object v1, Ld0/r;->T:Lm/q;

    invoke-virtual {v0, v1}, Lm/u;->n(Lm/u;)Z

    move-result v0

    if-eqz v0, :cond_29a

    aget-object v0, v13, v14

    iget-object v0, v0, Ld0/f;->d:Lm/f;

    instance-of v1, v0, Ld0/h;

    if-eqz v1, :cond_1c9

    check-cast v0, Ld0/h;

    const/4 v2, 0x1

    goto :goto_1f8

    :cond_1c9
    if-eqz v0, :cond_1f6

    new-instance v1, Ld0/h;

    invoke-static {v0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lm/x;->v(I)Lm/f;

    move-result-object v3

    check-cast v3, Lm/l;

    invoke-virtual {v3, v2}, Lm/l;->u(I)Z

    move-result v3

    if-eqz v3, :cond_1ee

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lm/x;->v(I)Lm/f;

    move-result-object v0

    invoke-static {v0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v0

    iput-object v0, v1, Ld0/h;->c:Lm/x;

    move-object v0, v1

    goto :goto_1f8

    :cond_1ee
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sequence not version 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f6
    const/4 v2, 0x1

    const/4 v0, 0x0

    :goto_1f8
    iget-object v1, v0, Ld0/h;->c:Lm/x;

    invoke-virtual {v1, v2}, Lm/x;->v(I)Lm/f;

    move-result-object v1

    invoke-static {v1}, Ll0/b;->h(Ljava/lang/Object;)Ll0/b;

    move-result-object v2

    iget-object v0, v0, Ld0/h;->c:Lm/x;

    invoke-virtual {v0}, Lm/x;->size()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_21e

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lm/x;->v(I)Lm/f;

    move-result-object v0

    invoke-static {v0}, Lm/a0;->v(Ljava/lang/Object;)Lm/a0;

    move-result-object v0

    sget-object v1, Lm/r;->d:Lm/a;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lm/a;->d(Lm/a0;Z)Lm/u;

    move-result-object v0

    check-cast v0, Lm/r;

    goto :goto_21f

    :cond_21e
    const/4 v0, 0x0

    :goto_21f
    iget-object v0, v0, Lm/r;->c:[B

    const/4 v1, 0x0

    move-object v3, v4

    move-object v10, v5

    move/from16 v4, v19

    move-object v5, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->cryptData(ZLl0/b;[CZ[B)[B

    move-result-object v1

    move/from16 v21, v4

    move-object v4, v3

    move/from16 v3, v21

    invoke-static {v1}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v1

    const/4 v2, 0x0

    :goto_237
    invoke-virtual {v1}, Lm/x;->size()I

    move-result v5

    if-eq v2, v5, :cond_296

    invoke-virtual {v1, v2}, Lm/x;->v(I)Lm/f;

    move-result-object v5

    invoke-static {v5}, Ld0/z;->h(Lm/f;)Ld0/z;

    move-result-object v5

    move-object/from16 v17, v1

    iget-object v1, v5, Ld0/z;->c:Lm/q;

    invoke-virtual {v1, v11}, Lm/u;->n(Lm/u;)Z

    move-result v18

    if-eqz v18, :cond_253

    invoke-virtual {v8, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_25e

    :cond_253
    invoke-virtual {v1, v9}, Lm/u;->n(Lm/u;)Z

    move-result v18

    if-eqz v18, :cond_263

    invoke-direct {v0, v5, v4, v3}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->processShroudedKeyBag(Ld0/z;[CZ)Z

    move-result v1

    move v15, v1

    :goto_25e
    move/from16 v18, v2

    move/from16 v19, v3

    goto :goto_28f

    :cond_263
    invoke-virtual {v1, v10}, Lm/u;->n(Lm/u;)Z

    move-result v18

    if-eqz v18, :cond_26d

    invoke-direct {v0, v5}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->processKeyBag(Ld0/z;)V

    goto :goto_25e

    :cond_26d
    move/from16 v18, v2

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move/from16 v19, v3

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v20, v5

    const-string v5, "extra in encryptedData "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static/range {v20 .. v20}, Lt4/d;->H(Lm/f;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_28f
    add-int/lit8 v2, v18, 0x1

    move-object/from16 v1, v17

    move/from16 v3, v19

    goto :goto_237

    :cond_296
    move/from16 v19, v3

    const/4 v2, 0x0

    goto :goto_2d0

    :cond_29a
    move-object/from16 v0, p0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "extra "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v9, v13, v14

    iget-object v9, v9, Ld0/f;->c:Lm/q;

    invoke-virtual {v9}, Lm/q;->u()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, v13, v14

    iget-object v5, v5, Ld0/f;->d:Lm/f;

    invoke-static {v5}, Lt4/d;->H(Lm/f;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_2d0
    add-int/lit8 v14, v14, 0x1

    move/from16 v1, v19

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    goto/16 :goto_124

    :cond_2d9
    const/4 v2, 0x1

    const/4 v15, 0x0

    :cond_2db
    new-instance v1, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;-><init>(Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$1;)V

    iput-object v1, v0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, v0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, v0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    const/4 v1, 0x0

    :goto_2f2
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v5

    if-eq v1, v5, :cond_4b2

    invoke-virtual {v8, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ld0/z;

    iget-object v7, v5, Ld0/z;->d:Lm/n;

    instance-of v9, v7, Ld0/c;

    if-eqz v9, :cond_307

    check-cast v7, Ld0/c;

    goto :goto_32f

    :cond_307
    if-eqz v7, :cond_32e

    new-instance v9, Ld0/c;

    invoke-static {v7}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v7

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Lm/x;->v(I)Lm/f;

    move-result-object v11

    invoke-static {v11}, Lm/q;->v(Ljava/lang/Object;)Lm/q;

    move-result-object v10

    iput-object v10, v9, Ld0/c;->c:Lm/q;

    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Lm/x;->v(I)Lm/f;

    move-result-object v7

    invoke-static {v7}, Lm/a0;->v(Ljava/lang/Object;)Lm/a0;

    move-result-object v7

    invoke-virtual {v7}, Lm/a0;->u()Lm/n;

    move-result-object v7

    iput-object v7, v9, Ld0/c;->d:Lm/n;

    move-object v7, v9

    goto :goto_32f

    :cond_32e
    move-object v7, v3

    :goto_32f
    iget-object v9, v7, Ld0/c;->c:Lm/q;

    sget-object v10, Ld0/r;->a0:Lm/q;

    invoke-virtual {v9, v10}, Lm/u;->n(Lm/u;)Z

    move-result v9

    if-eqz v9, :cond_49c

    :try_start_339
    new-instance v9, Ljava/io/ByteArrayInputStream;

    iget-object v7, v7, Ld0/c;->d:Lm/n;

    check-cast v7, Lm/r;

    iget-object v7, v7, Lm/r;->c:[B

    invoke-direct {v9, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object v7, v0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certFact:Ljava/security/cert/CertificateFactory;

    invoke-virtual {v7, v9}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v7
    :try_end_34a
    .catch Ljava/lang/Exception; {:try_start_339 .. :try_end_34a} :catch_491

    iget-object v5, v5, Ld0/z;->q:Lm/y;

    if-eqz v5, :cond_423

    iget-object v5, v5, Lm/y;->c:[Lm/f;

    move-object v10, v3

    move-object v11, v10

    const/4 v9, 0x0

    :goto_353
    array-length v12, v5

    if-ge v9, v12, :cond_41d

    array-length v12, v5

    if-ge v9, v12, :cond_417

    add-int/lit8 v12, v9, 0x1

    aget-object v9, v5, v9

    invoke-static {v9}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v9

    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lm/x;->v(I)Lm/f;

    move-result-object v14

    invoke-static {v14}, Lm/q;->v(Ljava/lang/Object;)Lm/q;

    move-result-object v14

    const/4 v3, 0x1

    invoke-virtual {v9, v3}, Lm/x;->v(I)Lm/f;

    move-result-object v9

    invoke-static {v9}, Lm/y;->s(Ljava/lang/Object;)Lm/y;

    move-result-object v3

    iget-object v9, v3, Lm/y;->c:[Lm/f;

    move/from16 v16, v13

    array-length v13, v9

    if-lez v13, :cond_40a

    aget-object v9, v9, v16

    check-cast v9, Lm/u;

    instance-of v13, v7, Lh2/k;

    move/from16 v17, v1

    sget-object v1, Ld0/r;->Z:Lm/q;

    if-eqz v13, :cond_3ed

    move-object v13, v7

    check-cast v13, Lh2/k;

    invoke-interface {v13, v14}, Lh2/k;->getBagAttribute(Lm/q;)Lm/f;

    move-result-object v18

    if-eqz v18, :cond_3db

    invoke-virtual {v14, v1}, Lm/u;->n(Lm/u;)Z

    move-result v3

    if-eqz v3, :cond_3c3

    move-object v3, v9

    check-cast v3, Lm/r;

    iget-object v3, v3, Lm/r;->c:[B

    sget-object v13, Ln4/c;->a:Ln4/b;

    array-length v13, v3

    move/from16 v19, v2

    const/4 v2, 0x0

    invoke-static {v3, v2, v13}, Ln4/c;->e([BII)Ljava/lang/String;

    move-result-object v3

    iget-object v2, v0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    # getter for: Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys:Ljava/util/Hashtable;
    invoke-static {v2}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->access$200(Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;)Ljava/util/Hashtable;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3c5

    iget-object v2, v0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->localIds:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    # getter for: Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys:Ljava/util/Hashtable;
    invoke-static {v2}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->access$200(Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;)Ljava/util/Hashtable;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3c5

    move v9, v12

    move/from16 v1, v17

    :goto_3bf
    move/from16 v2, v19

    const/4 v3, 0x0

    goto :goto_353

    :cond_3c3
    move/from16 v19, v2

    :cond_3c5
    invoke-interface/range {v18 .. v18}, Lm/f;->d()Lm/u;

    move-result-object v2

    invoke-virtual {v2, v9}, Lm/u;->n(Lm/u;)Z

    move-result v2

    if-eqz v2, :cond_3d3

    :goto_3cf
    move-object/from16 v18, v5

    const/4 v5, 0x1

    goto :goto_3f0

    :cond_3d3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "attempt to add existing attribute with different value"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3db
    move/from16 v19, v2

    iget-object v2, v3, Lm/y;->c:[Lm/f;

    array-length v2, v2

    move-object/from16 v18, v5

    const/4 v5, 0x1

    if-le v2, v5, :cond_3e9

    invoke-interface {v13, v14, v3}, Lh2/k;->setBagAttribute(Lm/q;Lm/f;)V

    goto :goto_3f0

    :cond_3e9
    invoke-interface {v13, v14, v9}, Lh2/k;->setBagAttribute(Lm/q;Lm/f;)V

    goto :goto_3f0

    :cond_3ed
    move/from16 v19, v2

    goto :goto_3cf

    :goto_3f0
    sget-object v2, Ld0/r;->Y:Lm/q;

    invoke-virtual {v14, v2}, Lm/u;->n(Lm/u;)Z

    move-result v2

    if-eqz v2, :cond_400

    check-cast v9, Lm/o0;

    invoke-virtual {v9}, Lm/o0;->e()Ljava/lang/String;

    move-result-object v1

    move-object v11, v1

    goto :goto_411

    :cond_400
    invoke-virtual {v14, v1}, Lm/u;->n(Lm/u;)Z

    move-result v1

    if-eqz v1, :cond_411

    check-cast v9, Lm/r;

    move-object v10, v9

    goto :goto_411

    :cond_40a
    move/from16 v17, v1

    move/from16 v19, v2

    move-object/from16 v18, v5

    const/4 v5, 0x1

    :cond_411
    :goto_411
    move v9, v12

    move/from16 v1, v17

    move-object/from16 v5, v18

    goto :goto_3bf

    :cond_417
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_41d
    :goto_41d
    move/from16 v17, v1

    move/from16 v19, v2

    const/4 v5, 0x1

    goto :goto_426

    :cond_423
    const/4 v10, 0x0

    const/4 v11, 0x0

    goto :goto_41d

    :goto_426
    iget-object v1, v0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    new-instance v2, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;

    invoke-virtual {v7}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;-><init>(Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;Ljava/security/PublicKey;)V

    invoke-virtual {v1, v2, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v15, :cond_46b

    iget-object v1, v0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_469

    new-instance v1, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->createSubjectKeyId(Ljava/security/PublicKey;)Ll0/o0;

    move-result-object v2

    iget-object v2, v2, Ll0/o0;->c:[B

    invoke-static {v2}, Lm4/d;->e([B)[B

    move-result-object v2

    sget-object v3, Ln4/c;->a:Ln4/b;

    array-length v3, v2

    const/4 v13, 0x0

    invoke-static {v2, v13, v3}, Ln4/c;->d([BII)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    iget-object v2, v0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v2, v1, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    const-string v3, "unmarked"

    invoke-virtual {v2, v3}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_469
    const/4 v13, 0x0

    goto :goto_48a

    :cond_46b
    if-eqz v10, :cond_482

    new-instance v1, Ljava/lang/String;

    iget-object v2, v10, Lm/r;->c:[B

    sget-object v3, Ln4/c;->a:Ln4/b;

    array-length v3, v2

    const/4 v13, 0x0

    invoke-static {v2, v13, v3}, Ln4/c;->d([BII)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    iget-object v2, v0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v2, v1, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_483

    :cond_482
    const/4 v13, 0x0

    :goto_483
    if-eqz v11, :cond_48a

    iget-object v1, v0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v1, v11, v7}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_48a
    :goto_48a
    add-int/lit8 v1, v17, 0x1

    move/from16 v2, v19

    const/4 v3, 0x0

    goto/16 :goto_2f2

    :catch_491
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_49c
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported certificate type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v7, Ld0/c;->c:Lm/q;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4b2
    move/from16 v19, v2

    if-eqz v6, :cond_4ce

    if-eqz v19, :cond_4ce

    if-eqz v4, :cond_4ce

    array-length v0, v4

    if-eqz v0, :cond_4ce

    const-string v0, "org.bouncycastle.pkcs12.ignore_useless_passwd"

    invoke-static {v0}, Lm4/h;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4c6

    goto :goto_4ce

    :cond_4c6
    new-instance v0, Ljava/io/IOException;

    const-string v1, "password supplied for keystore that does not require one"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4ce
    :goto_4ce
    return-void

    :catch_4cf
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4da
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream does not represent a PKCS12 key store"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4e2
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "no data in keystore stream"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineLoad(Ljava/security/KeyStore$LoadStoreParameter;)V
    .registers 3

    if-nez p1, :cond_7

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->engineLoad(Ljava/io/InputStream;[C)V

    return-void

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "no support for \'param\' of type "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineProbe(Ljava/io/InputStream;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .registers 5

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;

    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;-><init>(Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;Ljava/security/PublicKey;)V

    invoke-virtual {p1, v0, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1c
    new-instance p0, Ljava/security/KeyStoreException;

    const-string p2, "There is a key entry with the name "

    const-string v0, "."

    invoke-static {p2, p1, v0}, Lb/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .registers 6

    instance-of p3, p2, Ljava/security/PrivateKey;

    if-eqz p3, :cond_41

    if-eqz p4, :cond_39

    iget-object p3, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {p3, p1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_11

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->engineDeleteEntry(Ljava/lang/String;)V

    :cond_11
    iget-object p3, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {p3, p1, p2}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p4, :cond_38

    iget-object p2, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    const/4 p3, 0x0

    aget-object v0, p4, p3

    invoke-virtual {p2, p1, v0}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_20
    array-length p1, p4

    if-eq p3, p1, :cond_38

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    new-instance p2, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;

    aget-object v0, p4, p3

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-direct {p2, p0, v0}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;-><init>(Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;Ljava/security/PublicKey;)V

    aget-object v0, p4, p3

    invoke-virtual {p1, p2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p3, p3, 0x1

    goto :goto_20

    :cond_38
    return-void

    :cond_39
    new-instance p0, Ljava/security/KeyStoreException;

    const-string p1, "no certificate chain for private key"

    invoke-direct {p0, p1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_41
    new-instance p0, Ljava/security/KeyStoreException;

    const-string p1, "PKCS12 does not support non-PrivateKeys"

    invoke-direct {p0, p1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .registers 4

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "operation not supported"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineSize()I
    .registers 5

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "cert"

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_1b
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object p0

    :cond_21
    :goto_21
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_21

    const-string v2, "key"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_21

    :cond_39
    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result p0

    return p0
.end method

.method public engineStore(Ljava/io/OutputStream;[C)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->doStore(Ljava/io/OutputStream;[CZZ)V

    return-void
.end method

.method public engineStore(Ljava/security/KeyStore$LoadStoreParameter;)V
    .registers 7

    if-eqz p1, :cond_73

    instance-of v0, p1, La2/i;

    if-nez v0, :cond_1f

    instance-of v1, p1, Lorg/bouncycastle/jce/provider/JDKPKCS12StoreParameter;

    if-eqz v1, :cond_b

    goto :goto_1f

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "No support for \'param\' of type "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1f
    :goto_1f
    if-eqz v0, :cond_25

    move-object v0, p1

    check-cast v0, La2/i;

    goto :goto_3d

    :cond_25
    new-instance v0, La2/i;

    move-object v1, p1

    check-cast v1, Lorg/bouncycastle/jce/provider/JDKPKCS12StoreParameter;

    invoke-virtual {v1}, Lorg/bouncycastle/jce/provider/JDKPKCS12StoreParameter;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-interface {p1}, Ljava/security/KeyStore$LoadStoreParameter;->getProtectionParameter()Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v3

    invoke-virtual {v1}, Lorg/bouncycastle/jce/provider/JDKPKCS12StoreParameter;->isUseDEREncoding()Z

    move-result v4

    invoke-virtual {v1}, Lorg/bouncycastle/jce/provider/JDKPKCS12StoreParameter;->isOverwriteFriendlyName()Z

    move-result v1

    invoke-direct {v0, v2, v3, v4, v1}, La2/i;-><init>(Ljava/io/OutputStream;Ljava/security/KeyStore$ProtectionParameter;ZZ)V

    :goto_3d
    invoke-interface {p1}, Ljava/security/KeyStore$LoadStoreParameter;->getProtectionParameter()Ljava/security/KeyStore$ProtectionParameter;

    move-result-object p1

    if-nez p1, :cond_45

    const/4 p1, 0x0

    goto :goto_4f

    :cond_45
    instance-of v1, p1, Ljava/security/KeyStore$PasswordProtection;

    if-eqz v1, :cond_5f

    check-cast p1, Ljava/security/KeyStore$PasswordProtection;

    invoke-virtual {p1}, Ljava/security/KeyStore$PasswordProtection;->getPassword()[C

    move-result-object p1

    :goto_4f
    invoke-virtual {v0}, La2/i;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v0}, La2/i;->isForDEREncoding()Z

    move-result v2

    invoke-virtual {v0}, La2/i;->isOverwriteFriendlyName()Z

    move-result v0

    invoke-direct {p0, v1, p1, v2, v0}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->doStore(Ljava/io/OutputStream;[CZZ)V

    return-void

    :cond_5f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "No support for protection parameter of type "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_73
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'param\' arg cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setRandom(Ljava/security/SecureRandom;)V
    .registers 2

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->random:Ljava/security/SecureRandom;

    return-void
.end method

.method public unwrapKey(Ll0/b;[B[CZ)Ljava/security/PrivateKey;
    .registers 11

    iget-object v0, p1, Ll0/b;->c:Lm/q;

    :try_start_2
    sget-object v1, Ld0/r;->n0:Lm/q;

    invoke-virtual {v0, v1}, Lm/q;->y(Lm/q;)Z

    move-result v1
    :try_end_8
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_8} :catch_6b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8} :catch_59

    const/4 v2, 0x2

    const-string v3, ""

    const/4 v4, 0x4

    if-eqz v1, :cond_3a

    :try_start_e
    iget-object p1, p1, Ll0/b;->d:Lm/f;

    invoke-static {p1}, Ld0/q;->h(Ljava/lang/Object;)Ld0/q;

    move-result-object p1

    new-instance v1, Ljavax/crypto/spec/PBEParameterSpec;

    iget-object v5, p1, Ld0/q;->d:Lm/r;

    iget-object v5, v5, Lm/r;->c:[B

    iget-object p1, p1, Ld0/q;->c:Lm/l;

    invoke-virtual {p1}, Lm/l;->t()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->validateIterationCount(Ljava/math/BigInteger;)I

    move-result p1

    invoke-direct {v1, v5, p1}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->helper:Le2/b;

    invoke-virtual {v0}, Lm/q;->u()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Le2/b;->d(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    new-instance p1, La2/h;

    invoke-direct {p1, p3, p4}, La2/h;-><init>([CZ)V

    invoke-virtual {p0, v4, p1, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    goto :goto_46

    :cond_3a
    sget-object p4, Ld0/r;->C:Lm/q;

    invoke-virtual {v0, p4}, Lm/u;->n(Lm/u;)Z

    move-result p4

    if-eqz p4, :cond_4d

    invoke-direct {p0, v4, p3, p1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->createCipher(I[CLl0/b;)Ljavax/crypto/Cipher;

    move-result-object p0

    :goto_46
    invoke-virtual {p0, p2, v3, v2}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object p0

    check-cast p0, Ljava/security/PrivateKey;
    :try_end_4c
    .catch Ljava/security/InvalidKeyException; {:try_start_e .. :try_end_4c} :catch_6b
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_4c} :catch_59

    return-object p0

    :cond_4d
    new-instance p0, Ljava/io/IOException;

    const-string p1, "exception unwrapping private key - cannot recognise: "

    invoke-static {p1, v0}, Lb/b;->j(Ljava/lang/String;Lm/q;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_59
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "exception unwrapping private key: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lb/b;->B(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_6b
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "exception unwrapping private key:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/security/UnrecoverableKeyException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method

.method public wrapKey(Ld0/j;Ljava/security/Key;Ld0/o;[C)[B
    .registers 8

    new-instance v0, Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {p3}, Ld0/o;->k()[B

    move-result-object v1

    iget-object v2, p3, Ld0/o;->d:Lm/l;

    invoke-virtual {v2}, Lm/l;->t()Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v2}, Lm4/a;->h(Ljava/math/BigInteger;)I

    move-result v2

    invoke-virtual {p3}, Ld0/o;->i()Ljava/math/BigInteger;

    move-result-object p3

    invoke-static {p3}, Lm4/a;->h(Ljava/math/BigInteger;)I

    move-result p3

    mul-int/lit8 p3, p3, 0x8

    invoke-direct {v0, p4, v1, v2, p3}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    :try_start_1d
    iget-object p3, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->helper:Le2/b;

    const-string p4, "PBKDF2withHMacSHA256"

    invoke-interface {p3, p4}, Le2/b;->j(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object p3

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->helper:Le2/b;

    iget-object p1, p1, Ld0/j;->c:Ll0/b;

    iget-object p4, p1, Ll0/b;->c:Lm/q;

    invoke-virtual {p4}, Lm/q;->u()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p0, p4}, Le2/b;->d(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    iget-object p4, p1, Ll0/b;->c:Lm/q;

    invoke-virtual {p4}, Lm/q;->u()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object p4

    iget-object p1, p1, Ll0/b;->d:Lm/f;

    invoke-interface {p1}, Lm/f;->d()Lm/u;

    move-result-object p1

    invoke-virtual {p1}, Lm/n;->getEncoded()[B

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/security/AlgorithmParameters;->init([B)V

    invoke-virtual {p3, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p1

    const/4 p3, 0x3

    invoke-virtual {p0, p3, p1, p4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V

    invoke-virtual {p0, p2}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    move-result-object p0
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_56} :catch_57

    return-object p0

    :catch_57
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "exception encrypting data - "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2}, Lb/b;->d(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public wrapKey(Ljava/lang/String;Ljava/security/Key;Ld0/q;[C)[B
    .registers 8

    new-instance v0, Ljavax/crypto/spec/PBEKeySpec;

    invoke-direct {v0, p4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    :try_start_5
    iget-object p4, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->helper:Le2/b;

    invoke-interface {p4, p1}, Le2/b;->j(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object p4

    new-instance v1, Ljavax/crypto/spec/PBEParameterSpec;

    iget-object v2, p3, Ld0/q;->d:Lm/r;

    iget-object v2, v2, Lm/r;->c:[B

    iget-object p3, p3, Ld0/q;->c:Lm/l;

    invoke-virtual {p3}, Lm/l;->t()Ljava/math/BigInteger;

    move-result-object p3

    invoke-static {p3}, Lm4/a;->h(Ljava/math/BigInteger;)I

    move-result p3

    invoke-direct {v1, v2, p3}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->helper:Le2/b;

    invoke-interface {p0, p1}, Le2/b;->d(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    invoke-virtual {p4, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p1

    const/4 p3, 0x3

    invoke-virtual {p0, p3, p1, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {p0, p2}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    move-result-object p0
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_30} :catch_31

    return-object p0

    :catch_31
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "exception encrypting data - "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2}, Lb/b;->d(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
