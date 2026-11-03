.class public Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;
.super Ljava/security/SignatureSpi;


# instance fields
.field private algId:Ll0/b;

.field private cipher:Lorg/bouncycastle/crypto/a;

.field private digest:Lorg/bouncycastle/crypto/v;


# direct methods
.method public constructor <init>(Lm/q;Lorg/bouncycastle/crypto/v;Lorg/bouncycastle/crypto/a;)V
    .registers 4

    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->digest:Lorg/bouncycastle/crypto/v;

    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->cipher:Lorg/bouncycastle/crypto/a;

    new-instance p2, Ll0/b;

    sget-object p3, Lm/v0;->d:Lm/v0;

    invoke-direct {p2, p1, p3}, Ll0/b;-><init>(Lm/q;Lm/f;)V

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->algId:Ll0/b;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/v;Lorg/bouncycastle/crypto/a;)V
    .registers 3

    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->digest:Lorg/bouncycastle/crypto/v;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->cipher:Lorg/bouncycastle/crypto/a;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->algId:Ll0/b;

    return-void
.end method

.method private derEncode([B)[B
    .registers 5

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->algId:Ll0/b;

    if-nez p0, :cond_5

    return-object p1

    :cond_5
    invoke-static {p1}, Lm4/d;->e([B)[B

    move-result-object p1

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Lm/a1;

    new-instance v2, Lm/x0;

    invoke-direct {v2, p1}, Lm/r;-><init>([B)V

    invoke-direct {v1, p0, v2}, Lm/x;-><init>(Lm/f;Lm/f;)V

    const/4 p0, -0x1

    iput p0, v1, Lm/a1;->q:I

    const-string p0, "DER"

    invoke-virtual {v1, v0, p0}, Lm/u;->k(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method private getType(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public engineGetParameters()Ljava/security/AlgorithmParameters;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public engineInitSign(Ljava/security/PrivateKey;)V
    .registers 5

    instance-of v0, p1, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v0, :cond_16

    check-cast p1, Ljava/security/interfaces/RSAPrivateKey;

    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/RSAUtil;->generatePrivateKeyParameter(Ljava/security/interfaces/RSAPrivateKey;)Le1/z0;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->digest:Lorg/bouncycastle/crypto/v;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/v;->reset()V

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->cipher:Lorg/bouncycastle/crypto/a;

    const/4 v0, 0x1

    invoke-interface {p0, v0, p1}, Lorg/bouncycastle/crypto/a;->init(ZLorg/bouncycastle/crypto/g;)V

    return-void

    :cond_16
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Supplied key ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->getType(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, ") is not a RSAPrivateKey instance"

    invoke-static {v1, p0, p1}, Lb/b;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineInitVerify(Ljava/security/PublicKey;)V
    .registers 5

    instance-of v0, p1, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v0, :cond_16

    check-cast p1, Ljava/security/interfaces/RSAPublicKey;

    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/RSAUtil;->generatePublicKeyParameter(Ljava/security/interfaces/RSAPublicKey;)Le1/z0;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->digest:Lorg/bouncycastle/crypto/v;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/v;->reset()V

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->cipher:Lorg/bouncycastle/crypto/a;

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/bouncycastle/crypto/a;->init(ZLorg/bouncycastle/crypto/g;)V

    return-void

    :cond_16
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Supplied key ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->getType(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, ") is not a RSAPublicKey instance"

    invoke-static {v1, p0, p1}, Lb/b;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "engineSetParameter unsupported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 2

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "engineSetParameter unsupported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineSign()[B
    .registers 4

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->digest:Lorg/bouncycastle/crypto/v;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/v;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->digest:Lorg/bouncycastle/crypto/v;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/bouncycastle/crypto/v;->doFinal([BI)I

    :try_start_e
    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->derEncode([B)[B

    move-result-object v0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->cipher:Lorg/bouncycastle/crypto/a;

    array-length v1, v0

    invoke-interface {p0, v0, v2, v1}, Lorg/bouncycastle/crypto/a;->processBlock([BII)[B

    move-result-object p0
    :try_end_19
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_e .. :try_end_19} :catch_25
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_19} :catch_1a

    return-object p0

    :catch_1a
    move-exception p0

    new-instance v0, Ljava/security/SignatureException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_25
    new-instance p0, Ljava/security/SignatureException;

    const-string v0, "key too small for signature type"

    invoke-direct {p0, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineUpdate(B)V
    .registers 2

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->digest:Lorg/bouncycastle/crypto/v;

    invoke-interface {p0, p1}, Lorg/bouncycastle/crypto/v;->update(B)V

    return-void
.end method

.method public engineUpdate([BII)V
    .registers 4

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->digest:Lorg/bouncycastle/crypto/v;

    invoke-interface {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/v;->update([BII)V

    return-void
.end method

.method public engineVerify([B)Z
    .registers 10

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->digest:Lorg/bouncycastle/crypto/v;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/v;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->digest:Lorg/bouncycastle/crypto/v;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/bouncycastle/crypto/v;->doFinal([BI)I

    :try_start_e
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->cipher:Lorg/bouncycastle/crypto/a;

    array-length v3, p1

    invoke-interface {v1, p1, v2, v3}, Lorg/bouncycastle/crypto/a;->processBlock([BII)[B

    move-result-object p1

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->derEncode([B)[B

    move-result-object p0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_19} :catch_62

    array-length v0, p1

    array-length v1, p0

    if-ne v0, v1, :cond_22

    invoke-static {p1, p0}, Lm4/d;->o([B[B)Z

    move-result p0

    return p0

    :cond_22
    array-length v0, p1

    array-length v1, p0

    add-int/lit8 v1, v1, -0x2

    if-ne v0, v1, :cond_5f

    const/4 v0, 0x1

    aget-byte v1, p0, v0

    add-int/lit8 v1, v1, -0x2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    const/4 v1, 0x3

    aget-byte v3, p0, v1

    add-int/lit8 v3, v3, -0x2

    int-to-byte v3, v3

    aput-byte v3, p0, v1

    add-int/lit8 v1, v3, 0x4

    add-int/lit8 v3, v3, 0x6

    move v4, v2

    move v5, v4

    :goto_3e
    array-length v6, p0

    sub-int/2addr v6, v3

    if-ge v4, v6, :cond_4f

    add-int v6, v1, v4

    aget-byte v6, p1, v6

    add-int v7, v3, v4

    aget-byte v7, p0, v7

    xor-int/2addr v6, v7

    or-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_3e

    :cond_4f
    move v3, v2

    :goto_50
    if-ge v3, v1, :cond_5b

    aget-byte v4, p1, v3

    aget-byte v6, p0, v3

    xor-int/2addr v4, v6

    or-int/2addr v5, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_50

    :cond_5b
    if-nez v5, :cond_5e

    return v0

    :cond_5e
    return v2

    :cond_5f
    invoke-static {p0, p0}, Lm4/d;->o([B[B)Z

    :catch_62
    return v2
.end method
