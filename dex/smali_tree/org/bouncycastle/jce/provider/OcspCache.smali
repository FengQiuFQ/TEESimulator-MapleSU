.class Lorg/bouncycastle/jce/provider/OcspCache;
.super Ljava/lang/Object;


# static fields
.field private static final DEFAULT_MAX_RESPONSE_SIZE:I = 0x8000

.field private static final DEFAULT_TIMEOUT:I = 0x3a98

.field private static cache:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/OcspCache;->cache:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOcspResponse(Lb0/b;La2/o;Ljava/net/URI;Ljava/security/cert/X509Certificate;Ljava/util/List;Le2/b;)Lb0/e;
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "configuration error: "

    sget-object v4, Lorg/bouncycastle/jce/provider/OcspCache;->cache:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_19

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    goto :goto_1a

    :cond_19
    const/4 v4, 0x0

    :goto_1a
    if-eqz v4, :cond_40

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lb0/e;

    if-eqz v6, :cond_40

    iget-object v7, v6, Lb0/e;->d:Lb0/i;

    iget-object v7, v7, Lb0/i;->d:Lm/r;

    invoke-static {v7}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object v7

    iget-object v7, v7, Lm/r;->c:[B

    invoke-static {v7}, Lb0/a;->h(Ljava/lang/Object;)Lb0/a;

    move-result-object v7

    invoke-virtual {v1}, La2/o;->a()Ljava/util/Date;

    move-result-object v8

    invoke-static {v7, v8, v0}, Lorg/bouncycastle/jce/provider/OcspCache;->isCertIDFoundAndCurrent(Lb0/a;Ljava/util/Date;Lb0/b;)Z

    move-result v7

    if-eqz v7, :cond_3d

    return-object v6

    :cond_3d
    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_40
    :try_start_40
    invoke-virtual {v2}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v6
    :try_end_44
    .catch Ljava/net/MalformedURLException; {:try_start_40 .. :try_end_44} :catch_200

    new-instance v7, Lm/g;

    invoke-direct {v7}, Lm/g;-><init>()V

    new-instance v8, Lb0/g;

    invoke-direct {v8}, Lb0/g;-><init>()V

    iput-object v0, v8, Lb0/g;->d:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Lm/g;->a(Lm/f;)V

    new-instance v8, Lm/g;

    invoke-direct {v8}, Lm/g;-><init>()V

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_5a
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v12

    if-eq v10, v12, :cond_95

    move-object/from16 v12, p4

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/security/cert/Extension;

    new-instance v14, Lm/q;

    invoke-interface {v13}, Ljava/security/cert/Extension;->getId()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lm/q;-><init>(Ljava/lang/String;)V

    new-instance v15, Lm/x0;

    invoke-interface {v13}, Ljava/security/cert/Extension;->getValue()[B

    move-result-object v9

    invoke-direct {v15, v9}, Lm/r;-><init>([B)V

    sget-object v5, Lb0/d;->b:Lm/q;

    invoke-virtual {v5, v14}, Lm/u;->n(Lm/u;)Z

    move-result v5

    if-eqz v5, :cond_86

    invoke-static {v9}, Lm4/d;->e([B)[B

    move-result-object v11

    :cond_86
    new-instance v5, Ll0/v;

    invoke-interface {v13}, Ljava/security/cert/Extension;->isCritical()Z

    move-result v9

    invoke-direct {v5, v14, v9, v15}, Ll0/v;-><init>(Lm/q;ZLm/x0;)V

    invoke-virtual {v8, v5}, Lm/g;->a(Lm/f;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_5a

    :cond_95
    iget v5, v8, Lm/g;->b:I

    const/4 v9, -0x1

    if-eqz v5, :cond_b2

    new-instance v5, Lb0/m;

    new-instance v10, Lm/a1;

    invoke-direct {v10, v7}, Lm/x;-><init>(Lm/g;)V

    iput v9, v10, Lm/a1;->q:I

    new-instance v7, Lm/a1;

    invoke-direct {v7, v8}, Lm/x;-><init>(Lm/g;)V

    iput v9, v7, Lm/a1;->q:I

    invoke-static {v7}, Ll0/w;->j(Lm/f;)Ll0/w;

    move-result-object v7

    invoke-direct {v5, v10, v7}, Lb0/m;-><init>(Lm/a1;Ll0/w;)V

    goto :goto_bf

    :cond_b2
    new-instance v5, Lb0/m;

    new-instance v8, Lm/a1;

    invoke-direct {v8, v7}, Lm/x;-><init>(Lm/g;)V

    iput v9, v8, Lm/a1;->q:I

    const/4 v7, 0x0

    invoke-direct {v5, v8, v7}, Lb0/m;-><init>(Lm/a1;Ll0/w;)V

    :goto_bf
    :try_start_bf
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v8, Lm/g;

    const/4 v10, 0x2

    invoke-direct {v8, v10}, Lm/g;-><init>(I)V

    invoke-virtual {v8, v5}, Lm/g;->a(Lm/f;)V

    new-instance v5, Lm/a1;

    invoke-direct {v5, v8}, Lm/x;-><init>(Lm/g;)V

    iput v9, v5, Lm/a1;->q:I

    new-instance v8, Lb1/a;

    const/4 v9, 0x6

    invoke-direct {v8, v9, v7}, Lb1/a;-><init>(ILjava/lang/Object;)V

    const/4 v9, 0x1

    invoke-virtual {v5, v8, v9}, Lm/a1;->i(Lb1/a;Z)V

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljava/net/HttpURLConnection;

    const/16 v7, 0x3a98

    invoke-virtual {v6, v7}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {v6, v7}, Ljava/net/URLConnection;->setReadTimeout(I)V

    invoke-virtual {v6, v9}, Ljava/net/URLConnection;->setDoOutput(Z)V

    invoke-virtual {v6, v9}, Ljava/net/URLConnection;->setDoInput(Z)V

    const-string v7, "POST"

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v7, "Content-type"

    const-string v8, "application/ocsp-request"

    invoke-virtual {v6, v7, v8}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "Content-length"

    array-length v8, v5

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v6}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v6}, Ljava/net/URLConnection;->getContentLength()I

    move-result v6

    if-gez v6, :cond_123

    const v6, 0x8000

    :cond_123
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    int-to-long v8, v6

    const/16 v6, 0x1000

    new-array v10, v6, [B

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    :goto_130
    invoke-virtual {v5, v10, v14, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v15

    if-ltz v15, :cond_151

    sub-long v16, v8, v12

    move-object/from16 p4, v7

    int-to-long v6, v15

    cmp-long v16, v16, v6

    if-ltz v16, :cond_149

    add-long/2addr v12, v6

    move-object/from16 v6, p4

    invoke-virtual {v6, v10, v14, v15}, Ljava/io/OutputStream;->write([BII)V

    move-object v7, v6

    const/16 v6, 0x1000

    goto :goto_130

    :cond_149
    new-instance v0, Lo4/a;

    const-string v2, "Data Overflow"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_151
    move-object v6, v7

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-static {v5}, Lb0/e;->h(Ljava/lang/Object;)Lb0/e;

    move-result-object v5

    iget-object v6, v5, Lb0/e;->c:Lb0/f;

    iget-object v6, v6, Lb0/f;->c:Lm/h;

    invoke-virtual {v6}, Lm/h;->u()I

    move-result v6

    if-nez v6, :cond_1c9

    iget-object v6, v5, Lb0/e;->d:Lb0/i;

    invoke-static {v6}, Lb0/i;->h(Lm/n;)Lb0/i;

    move-result-object v6

    iget-object v7, v6, Lb0/i;->c:Lm/q;

    sget-object v8, Lb0/d;->a:Lm/q;

    invoke-virtual {v7, v8}, Lm/u;->n(Lm/u;)Z

    move-result v7

    if-eqz v7, :cond_1bc

    iget-object v6, v6, Lb0/i;->d:Lm/r;

    iget-object v6, v6, Lm/r;->c:[B

    invoke-static {v6}, Lb0/a;->h(Ljava/lang/Object;)Lb0/a;

    move-result-object v6

    move-object/from16 v7, p3

    move-object/from16 v8, p5

    invoke-static {v6, v1, v11, v7, v8}, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->validatedOcspResponse(Lb0/a;La2/o;[BLjava/security/cert/X509Certificate;Le2/b;)Z

    move-result v7

    if-eqz v7, :cond_1bc

    invoke-virtual {v1}, La2/o;->a()Ljava/util/Date;

    move-result-object v7

    invoke-static {v6, v7, v0}, Lorg/bouncycastle/jce/provider/OcspCache;->isCertIDFoundAndCurrent(Lb0/a;Ljava/util/Date;Lb0/b;)Z

    move-result v6

    if-eqz v6, :cond_1bc

    sget-object v6, Lorg/bouncycastle/jce/provider/OcspCache;->cache:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    if-eqz v6, :cond_1a3

    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    goto :goto_1a3

    :catch_1a1
    move-exception v0

    goto :goto_1ed

    :cond_1a3
    :goto_1a3
    if-eqz v4, :cond_1a9

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v5

    :cond_1a9
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jce/provider/OcspCache;->cache:Ljava/util/Map;

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v5

    :cond_1bc
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v2, "OCSP response failed to validate"

    iget-object v4, v1, La2/o;->c:Ljava/security/cert/CertPath;

    iget v5, v1, La2/o;->d:I

    const/4 v7, 0x0

    invoke-direct {v0, v2, v7, v4, v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    :cond_1c9
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OCSP responder failed: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v5, Lb0/e;->c:Lb0/f;

    iget-object v4, v4, Lb0/f;->c:Lm/h;

    invoke-virtual {v4}, Lm/h;->t()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v1, La2/o;->c:Ljava/security/cert/CertPath;

    iget v5, v1, La2/o;->d:I

    const/4 v7, 0x0

    invoke-direct {v0, v2, v7, v4, v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0
    :try_end_1ed
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_1ed} :catch_1a1

    :goto_1ed
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v4}, Lb/b;->c(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, La2/o;->c:Ljava/security/cert/CertPath;

    iget v1, v1, La2/o;->d:I

    invoke-direct {v2, v3, v0, v4, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v2

    :catch_200
    move-exception v0

    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, La2/o;->c:Ljava/security/cert/CertPath;

    iget v1, v1, La2/o;->d:I

    invoke-direct {v2, v3, v0, v4, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v2
.end method

.method private static isCertIDFoundAndCurrent(Lb0/a;Ljava/util/Date;Lb0/b;)Z
    .registers 7

    iget-object p0, p0, Lb0/a;->c:Lb0/j;

    invoke-static {p0}, Lb0/j;->h(Ljava/lang/Object;)Lb0/j;

    move-result-object p0

    iget-object p0, p0, Lb0/j;->y:Lm/x;

    const/4 v0, 0x0

    move v1, v0

    :goto_a
    invoke-virtual {p0}, Lm/x;->size()I

    move-result v2

    if-eq v1, v2, :cond_34

    invoke-virtual {p0, v1}, Lm/x;->v(I)Lm/f;

    move-result-object v2

    invoke-static {v2}, Lb0/l;->h(Lm/f;)Lb0/l;

    move-result-object v2

    iget-object v3, v2, Lb0/l;->c:Lb0/b;

    invoke-virtual {p2, v3}, Lb0/b;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    iget-object p0, v2, Lb0/l;->x:Lm/j;

    if-eqz p0, :cond_2f

    :try_start_24
    invoke-virtual {p0}, Lm/j;->t()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p0
    :try_end_2c
    .catch Ljava/text/ParseException; {:try_start_24 .. :try_end_2c} :catch_34

    if-eqz p0, :cond_2f

    goto :goto_34

    :cond_2f
    const/4 p0, 0x1

    return p0

    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :catch_34
    :cond_34
    :goto_34
    return v0
.end method
