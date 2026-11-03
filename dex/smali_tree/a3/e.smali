.class public final La3/e;
.super Ljava/lang/Object;

# interfaces
.implements Ld1/a;
.implements Le2/b;


# instance fields
.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>(BI)V
    .registers 3

    iput p2, p0, La3/e;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 10

    const/4 v0, 0x0

    iput v0, p0, La3/e;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    add-int/lit8 v0, p1, -0x2

    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x20

    neg-int v2, p1

    invoke-static {v2}, Lt4/d;->i0(I)I

    move-result v2

    const/4 v3, 0x1

    move v4, v3

    :goto_1a
    if-ge v4, v1, :cond_64

    add-int/lit8 v5, v4, -0x1

    shl-int v5, v3, v5

    const/16 v6, 0x40

    if-lt v5, v6, :cond_3d

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3d

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p1, v2, v5}, La3/e;->m(III)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3d
    shl-int v5, v3, v4

    and-int v7, v0, v5

    if-eqz v7, :cond_61

    add-int/lit8 v5, v5, -0x1

    and-int/2addr v5, v0

    if-lt v5, v6, :cond_61

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_61

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p1, v2, v5}, La3/e;->m(III)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_61
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    :cond_64
    return-void
.end method

.method public constructor <init>([B)V
    .registers 4

    const/16 v0, 0x19

    iput v0, p0, La3/e;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Lm/k;

    invoke-direct {p0, p1}, Lm/k;-><init>([B)V

    new-instance p1, Ln0/e;

    invoke-virtual {p0}, Lm/k;->f()Lm/u;

    move-result-object v0

    invoke-virtual {v0}, Lm/n;->getEncoded()[B

    move-result-object v0

    invoke-direct {p1, v0}, Ln0/e;-><init>([B)V

    invoke-virtual {p0}, Lm/k;->f()Lm/u;

    move-result-object p0

    if-eqz p0, :cond_61

    invoke-virtual {p0}, Lm/n;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p0

    invoke-virtual {p0}, Lm/x;->w()Ljava/util/Enumeration;

    move-result-object p0

    :cond_2b
    :goto_2b
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p1

    if-eqz p1, :cond_61

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lm/f;

    instance-of v0, p1, Lm/x;

    if-eqz v0, :cond_3f

    invoke-static {p1}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    goto :goto_2b

    :cond_3f
    instance-of v0, p1, Lm/a0;

    if-eqz v0, :cond_55

    check-cast p1, Lm/a0;

    invoke-static {p1}, Lq4/k;->v(Lm/a0;)V

    const/4 v0, 0x0

    sget-object v1, Lm/x;->d:Lm/a;

    invoke-virtual {p1, v0, v1}, Lm/a0;->t(ZLm/a;)Lm/u;

    move-result-object p1

    invoke-virtual {v1, p1}, Lm/a;->a(Lm/u;)V

    check-cast p1, Lm/x;

    goto :goto_2b

    :cond_55
    instance-of v0, p1, Lm/f1;

    if-eqz v0, :cond_2b

    invoke-static {p1}, Lm/f1;->r(Lm/f;)Lm/f1;

    move-result-object p1

    invoke-virtual {p1}, Lm/f1;->e()Ljava/lang/String;

    goto :goto_2b

    :cond_61
    return-void
.end method

.method public static g(Ljava/util/HashMap;Lm/q;)V
    .registers 6

    :try_start_0
    new-instance v0, Ll0/b;

    sget-object v1, Lm/v0;->d:Lm/v0;

    invoke-direct {v0, p1, v1}, Ll0/b;-><init>(Lm/q;Lm/f;)V

    new-instance v1, Ll0/b;

    sget-object v2, Ld0/r;->i:Lm/q;

    invoke-direct {v1, v2, v0}, Ll0/b;-><init>(Lm/q;Lm/f;)V

    new-instance v2, Ld0/v;

    sget-object v3, Ld0/v;->z1:Ll0/b;

    invoke-direct {v2, v0, v1, v3}, Ld0/v;-><init>(Ll0/b;Ll0/b;Ll0/b;)V

    invoke-virtual {v2}, Lm/n;->g()[B

    new-instance v0, La3/e;

    const/16 v1, 0x1a

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, La3/e;-><init>(BI)V

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_24

    return-void

    :catch_24
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static m(III)I
    .registers 9

    const/4 v0, 0x1

    :goto_1
    const-wide v1, 0xffffffffL

    const/16 v3, 0x20

    if-lt p2, v3, :cond_18

    mul-int v4, p1, v0

    int-to-long v4, v4

    and-long/2addr v1, v4

    int-to-long v4, p0

    mul-long/2addr v1, v4

    int-to-long v4, v0

    add-long/2addr v1, v4

    ushr-long v0, v1, v3

    long-to-int v0, v0

    add-int/lit8 p2, p2, -0x20

    goto :goto_1

    :cond_18
    if-lez p2, :cond_29

    const/4 v3, -0x1

    neg-int v4, p2

    ushr-int/2addr v3, v4

    mul-int/2addr p1, v0

    and-int/2addr p1, v3

    int-to-long v3, p1

    and-long/2addr v1, v3

    int-to-long p0, p0

    mul-long/2addr v1, p0

    int-to-long p0, v0

    add-long/2addr v1, p0

    ushr-long p0, v1, p2

    long-to-int p0, p0

    return p0

    :cond_29
    return v0
.end method

.method private final o(Ljava/security/SecureRandom;)V
    .registers 2

    return-void
.end method

.method private final p(Ljava/security/SecureRandom;)V
    .registers 2

    return-void
.end method

.method private final q(Ljava/security/SecureRandom;)V
    .registers 2

    return-void
.end method

.method private final r(Ljava/security/SecureRandom;)V
    .registers 2

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    .registers 2

    iget p0, p0, La3/e;->g:I

    packed-switch p0, :pswitch_data_12

    const-string p0, "BC"

    invoke-static {p1, p0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p0

    return-object p0

    :pswitch_c
    invoke-static {p1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_12
    .packed-switch 0x5
        :pswitch_c
    .end packed-switch
.end method

.method public b(Ljava/lang/String;)Ljavax/crypto/Mac;
    .registers 2

    iget p0, p0, La3/e;->g:I

    packed-switch p0, :pswitch_data_12

    const-string p0, "BC"

    invoke-static {p1, p0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p0

    return-object p0

    :pswitch_c
    invoke-static {p1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_12
    .packed-switch 0x5
        :pswitch_c
    .end packed-switch
.end method

.method public c(Ljava/lang/String;)Ljava/security/MessageDigest;
    .registers 2

    iget p0, p0, La3/e;->g:I

    packed-switch p0, :pswitch_data_12

    const-string p0, "BC"

    invoke-static {p1, p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    return-object p0

    :pswitch_c
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_12
    .packed-switch 0x5
        :pswitch_c
    .end packed-switch
.end method

.method public createSignature(Ljava/lang/String;)Ljava/security/Signature;
    .registers 2

    iget p0, p0, La3/e;->g:I

    packed-switch p0, :pswitch_data_12

    const-string p0, "BC"

    invoke-static {p1, p0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p0

    return-object p0

    :pswitch_c
    invoke-static {p1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_12
    .packed-switch 0x5
        :pswitch_c
    .end packed-switch
.end method

.method public d(Ljava/lang/String;)Ljavax/crypto/Cipher;
    .registers 2

    iget p0, p0, La3/e;->g:I

    packed-switch p0, :pswitch_data_12

    const-string p0, "BC"

    invoke-static {p1, p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    return-object p0

    :pswitch_c
    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_12
    .packed-switch 0x5
        :pswitch_c
    .end packed-switch
.end method

.method public e([B)I
    .registers 8

    iget p0, p0, La3/e;->g:I

    packed-switch p0, :pswitch_data_84

    array-length p0, p1

    const/4 v0, 0x0

    const/4 v1, -0x1

    move v2, v1

    :goto_9
    add-int/2addr p0, v1

    if-ltz p0, :cond_17

    aget-byte v3, p1, p0

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v3, v3, -0x1

    shr-int/lit8 v3, v3, 0x1f

    and-int/2addr v2, v3

    sub-int/2addr v0, v2

    goto :goto_9

    :cond_17
    return v0

    :pswitch_18
    array-length p0, p1

    const/4 v0, -0x1

    add-int/2addr p0, v0

    aget-byte v1, p1, p0

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x1

    move v4, v0

    move v3, v2

    :goto_22
    add-int/2addr p0, v0

    if-ltz p0, :cond_30

    aget-byte v5, p1, p0

    and-int/lit16 v5, v5, 0xff

    xor-int/2addr v5, v1

    sub-int/2addr v5, v2

    shr-int/lit8 v5, v5, 0x1f

    and-int/2addr v4, v5

    sub-int/2addr v3, v4

    goto :goto_22

    :cond_30
    return v3

    :pswitch_31
    array-length p0, p1

    add-int/lit8 p0, p0, -0x1

    aget-byte p0, p1, p0

    and-int/lit16 v0, p0, 0xff

    array-length v1, p1

    sub-int/2addr v1, v0

    add-int/lit8 v2, v0, -0x1

    or-int/2addr v2, v1

    shr-int/lit8 v2, v2, 0x1f

    const/4 v3, 0x0

    :goto_40
    array-length v4, p1

    if-ge v3, v4, :cond_50

    aget-byte v4, p1, v3

    xor-int/2addr v4, p0

    sub-int v5, v3, v1

    shr-int/lit8 v5, v5, 0x1f

    not-int v5, v5

    and-int/2addr v4, v5

    or-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_40

    :cond_50
    if-nez v2, :cond_53

    return v0

    :cond_53
    new-instance p0, Lorg/bouncycastle/crypto/x;

    const-string p1, "pad block corrupted"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_5b
    array-length p0, p1

    const/4 v0, -0x1

    move v1, v0

    move v2, v1

    :goto_5f
    add-int/2addr p0, v0

    if-ltz p0, :cond_77

    aget-byte v3, p1, p0

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v3, -0x1

    shr-int/lit8 v4, v4, 0x1f

    xor-int/lit16 v3, v3, 0x80

    add-int/lit8 v3, v3, -0x1

    shr-int/lit8 v3, v3, 0x1f

    xor-int v5, p0, v1

    and-int/2addr v3, v2

    and-int/2addr v3, v5

    xor-int/2addr v1, v3

    and-int/2addr v2, v4

    goto :goto_5f

    :cond_77
    if-ltz v1, :cond_7c

    array-length p0, p1

    sub-int/2addr p0, v1

    return p0

    :cond_7c
    new-instance p0, Lorg/bouncycastle/crypto/x;

    const-string p1, "pad block corrupted"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_5b
        :pswitch_31
        :pswitch_18
    .end packed-switch
.end method

.method public f()Ljava/security/SecureRandom;
    .registers 2

    iget p0, p0, La3/e;->g:I

    packed-switch p0, :pswitch_data_16

    const-string p0, "DEFAULT"

    const-string v0, "BC"

    invoke-static {p0, v0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object p0

    return-object p0

    :pswitch_e
    const-string p0, "DEFAULT"

    invoke-static {p0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_16
    .packed-switch 0x5
        :pswitch_e
    .end packed-switch
.end method

.method public h(Ljava/lang/String;)Ljava/security/AlgorithmParameters;
    .registers 2

    iget p0, p0, La3/e;->g:I

    packed-switch p0, :pswitch_data_12

    const-string p0, "BC"

    invoke-static {p1, p0}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object p0

    return-object p0

    :pswitch_c
    invoke-static {p1}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_12
    .packed-switch 0x5
        :pswitch_c
    .end packed-switch
.end method

.method public i(Ljava/security/SecureRandom;)V
    .registers 2

    iget p0, p0, La3/e;->g:I

    return-void
.end method

.method public j(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;
    .registers 2

    iget p0, p0, La3/e;->g:I

    packed-switch p0, :pswitch_data_12

    const-string p0, "BC"

    invoke-static {p1, p0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object p0

    return-object p0

    :pswitch_c
    invoke-static {p1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_12
    .packed-switch 0x5
        :pswitch_c
    .end packed-switch
.end method

.method public k(I[B)I
    .registers 6

    iget p0, p0, La3/e;->g:I

    packed-switch p0, :pswitch_data_52

    array-length p0, p2

    sub-int/2addr p0, p1

    :goto_7
    array-length v0, p2

    if-ge p1, v0, :cond_10

    const/4 v0, 0x0

    aput-byte v0, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    :cond_10
    return p0

    :pswitch_11
    array-length p0, p2

    sub-int/2addr p0, p1

    const/4 v0, 0x0

    const/16 v1, 0xff

    if-lez p1, :cond_23

    add-int/lit8 v2, p1, -0x1

    aget-byte v2, p2, v2

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_21

    :goto_20
    move v0, v1

    :cond_21
    int-to-byte v0, v0

    goto :goto_2d

    :cond_23
    array-length v2, p2

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, p2, v2

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_21

    goto :goto_20

    :goto_2d
    array-length v1, p2

    if-ge p1, v1, :cond_35

    aput-byte v0, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2d

    :cond_35
    return p0

    :pswitch_36
    array-length p0, p2

    sub-int/2addr p0, p1

    int-to-byte p0, p0

    :goto_39
    array-length v0, p2

    if-ge p1, v0, :cond_41

    aput-byte p0, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_39

    :cond_41
    return p0

    :pswitch_42
    array-length p0, p2

    sub-int/2addr p0, p1

    const/16 v0, -0x80

    aput-byte v0, p2, p1

    :goto_48
    add-int/lit8 p1, p1, 0x1

    array-length v0, p2

    if-ge p1, v0, :cond_51

    const/4 v0, 0x0

    aput-byte v0, p2, p1

    goto :goto_48

    :cond_51
    return p0

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_42
        :pswitch_36
        :pswitch_11
    .end packed-switch
.end method

.method public l(Ljava/lang/String;)Ljava/security/KeyFactory;
    .registers 2

    iget p0, p0, La3/e;->g:I

    packed-switch p0, :pswitch_data_12

    const-string p0, "BC"

    invoke-static {p1, p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    return-object p0

    :pswitch_c
    invoke-static {p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_12
    .packed-switch 0x5
        :pswitch_c
    .end packed-switch
.end method

.method public n(Ln0/e;)Ljava/security/cert/X509Certificate;
    .registers 4

    :try_start_0
    const-string p0, "X.509"

    invoke-static {p0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object p1, p1, Ln0/e;->c:Ll0/m;

    invoke-virtual {p1}, Lm/n;->getEncoded()[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_17} :catch_33
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_17} :catch_18

    return-object p0

    :catch_18
    move-exception p0

    new-instance p1, Lo0/a;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cannot find required provider:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    iput-object p0, p1, Lo0/a;->c:Ljava/security/NoSuchProviderException;

    throw p1

    :catch_33
    move-exception p0

    new-instance p1, Lo0/b;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "exception parsing certificate: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lb/b;->c(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    iput-object p0, p1, Lo0/b;->c:Ljava/io/IOException;

    throw p1
.end method

.method public s([B)Lt2/a;
    .registers 13

    iget p0, p0, La3/e;->g:I

    packed-switch p0, :pswitch_data_12e

    :try_start_5
    invoke-static {p1}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p0

    invoke-virtual {p0}, Lm/x;->size()I

    move-result p1

    const/16 v0, 0x9

    if-ne p1, v0, :cond_38

    invoke-static {p0}, Ld0/w;->h(Ljava/lang/Object;)Ld0/w;

    move-result-object p0

    new-instance p1, Ld0/x;

    iget-object v0, p0, Ld0/w;->d:Ljava/math/BigInteger;

    iget-object v1, p0, Ld0/w;->q:Ljava/math/BigInteger;

    invoke-direct {p1, v0, v1}, Ld0/x;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v0, Ll0/b;

    sget-object v1, Ld0/r;->a:Lm/q;

    sget-object v2, Lm/v0;->d:Lm/v0;

    invoke-direct {v0, v1, v2}, Ll0/b;-><init>(Lm/q;Lm/f;)V

    new-instance v1, Lt2/a;

    new-instance v2, Ll0/p0;

    invoke-direct {v2, v0, p1}, Ll0/p0;-><init>(Ll0/b;Lm/f;)V

    new-instance p1, Ld0/t;

    const/4 v3, 0x0

    invoke-direct {p1, v0, p0, v3, v3}, Ld0/t;-><init>(Ll0/b;Lm/n;Lm/y;[B)V

    invoke-direct {v1, v2, p1}, Lt2/a;-><init>(Ll0/p0;Ld0/t;)V

    return-object v1

    :cond_38
    new-instance p0, Ln0/a;

    const-string p1, "malformed sequence in RSA private key"

    invoke-direct {p0, p1}, Ln0/a;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_40} :catch_53
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_40} :catch_40

    :catch_40
    move-exception p0

    new-instance p1, Ln0/a;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "problem creating RSA private key: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lb/b;->d(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p1, v0, p0, v1}, Ln0/a;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw p1

    :catch_53
    move-exception p0

    throw p0

    :pswitch_55
    :try_start_55
    invoke-static {p1}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p0

    invoke-static {p0}, Lf0/a;->h(Ljava/lang/Object;)Lf0/a;

    move-result-object p0

    new-instance p1, Ll0/b;

    sget-object v0, Lm0/m;->M0:Lm/q;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Lf0/a;->j(II)Lm/u;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ll0/b;-><init>(Lm/q;Lm/f;)V

    new-instance v0, Ld0/t;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1, v1}, Ld0/t;-><init>(Ll0/b;Lm/n;Lm/y;[B)V

    invoke-virtual {p0}, Lf0/a;->k()Lm/b;

    move-result-object p0

    if-eqz p0, :cond_7f

    new-instance v1, Ll0/p0;

    invoke-virtual {p0}, Lm/b;->s()[B

    move-result-object p0

    invoke-direct {v1, p1, p0}, Ll0/p0;-><init>(Ll0/b;[B)V

    :cond_7f
    new-instance p0, Lt2/a;

    invoke-direct {p0, v1, v0}, Lt2/a;-><init>(Ll0/p0;Ld0/t;)V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_84} :catch_98
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_84} :catch_85

    return-object p0

    :catch_85
    move-exception p0

    new-instance p1, Ln0/a;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "problem creating EC private key: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lb/b;->d(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p1, v0, p0, v1}, Ln0/a;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw p1

    :catch_98
    move-exception p0

    throw p0

    :pswitch_9a
    :try_start_9a
    invoke-static {p1}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p0

    invoke-virtual {p0}, Lm/x;->size()I

    move-result p1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_111

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lm/x;->v(I)Lm/f;

    move-result-object p1

    invoke-static {p1}, Lm/l;->r(Ljava/lang/Object;)Lm/l;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lm/x;->v(I)Lm/f;

    move-result-object v0

    invoke-static {v0}, Lm/l;->r(Ljava/lang/Object;)Lm/l;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lm/x;->v(I)Lm/f;

    move-result-object v1

    invoke-static {v1}, Lm/l;->r(Ljava/lang/Object;)Lm/l;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lm/x;->v(I)Lm/f;

    move-result-object v2

    invoke-static {v2}, Lm/l;->r(Ljava/lang/Object;)Lm/l;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lm/x;->v(I)Lm/f;

    move-result-object p0

    invoke-static {p0}, Lm/l;->r(Ljava/lang/Object;)Lm/l;

    move-result-object p0

    new-instance v3, Lt2/a;

    new-instance v4, Ll0/p0;

    new-instance v5, Ll0/b;

    sget-object v6, Lm0/m;->r1:Lm/q;

    new-instance v7, Ll0/p;

    invoke-virtual {p1}, Lm/l;->t()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v0}, Lm/l;->t()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v1}, Lm/l;->t()Ljava/math/BigInteger;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Ll0/p;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v5, v6, v7}, Ll0/b;-><init>(Lm/q;Lm/f;)V

    invoke-direct {v4, v5, v2}, Ll0/p0;-><init>(Ll0/b;Lm/f;)V

    new-instance v2, Ld0/t;

    new-instance v5, Ll0/b;

    new-instance v7, Ll0/p;

    invoke-virtual {p1}, Lm/l;->t()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v0}, Lm/l;->t()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v1}, Lm/l;->t()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v7, p1, v0, v1}, Ll0/p;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v5, v6, v7}, Ll0/b;-><init>(Lm/q;Lm/f;)V

    const/4 p1, 0x0

    invoke-direct {v2, v5, p0, p1, p1}, Ld0/t;-><init>(Ll0/b;Lm/n;Lm/y;[B)V

    invoke-direct {v3, v4, v2}, Lt2/a;-><init>(Ll0/p0;Ld0/t;)V

    return-object v3

    :cond_111
    new-instance p0, Ln0/a;

    const-string p1, "malformed sequence in DSA private key"

    invoke-direct {p0, p1}, Ln0/a;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_119
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_119} :catch_12c
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_119} :catch_119

    :catch_119
    move-exception p0

    new-instance p1, Ln0/a;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "problem creating DSA private key: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lb/b;->d(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p1, v0, p0, v1}, Ln0/a;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw p1

    :catch_12c
    move-exception p0

    throw p0

    :pswitch_data_12e
    .packed-switch 0x16
        :pswitch_9a
        :pswitch_55
    .end packed-switch
.end method
