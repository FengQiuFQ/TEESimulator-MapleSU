.class public Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/SignatureSpiLe;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/SignatureSpi;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/SignatureSpi;-><init>()V

    return-void
.end method


# virtual methods
.method public engineSign()[B
    .registers 2

    invoke-super {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/SignatureSpi;->engineSign()[B

    move-result-object v0

    invoke-static {v0}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object v0

    iget-object v0, v0, Lm/r;->c:[B

    invoke-virtual {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/SignatureSpiLe;->reverseBytes([B)V

    :try_start_d
    new-instance p0, Lm/x0;

    invoke-direct {p0, v0}, Lm/r;-><init>([B)V

    invoke-virtual {p0}, Lm/n;->getEncoded()[B

    move-result-object p0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_16} :catch_17

    return-object p0

    :catch_17
    move-exception p0

    new-instance v0, Ljava/security/SignatureException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineVerify([B)Z
    .registers 3

    :try_start_0
    invoke-static {p1}, Lm/u;->o([B)Lm/u;

    move-result-object p1

    check-cast p1, Lm/r;

    iget-object p1, p1, Lm/r;->c:[B
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_26

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/SignatureSpiLe;->reverseBytes([B)V

    :try_start_b
    new-instance v0, Lm/x0;

    invoke-direct {v0, p1}, Lm/r;-><init>([B)V

    invoke-virtual {v0}, Lm/n;->getEncoded()[B

    move-result-object p1

    invoke-super {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/SignatureSpi;->engineVerify([B)Z

    move-result p0
    :try_end_18
    .catch Ljava/security/SignatureException; {:try_start_b .. :try_end_18} :catch_24
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_18} :catch_19

    return p0

    :catch_19
    move-exception p0

    new-instance p1, Ljava/security/SignatureException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_24
    move-exception p0

    throw p0

    :catch_26
    new-instance p0, Ljava/security/SignatureException;

    const-string p1, "error decoding signature bytes."

    invoke-direct {p0, p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public reverseBytes([B)V
    .registers 4

    const/4 p0, 0x0

    :goto_1
    array-length v0, p1

    div-int/lit8 v0, v0, 0x2

    if-ge p0, v0, :cond_19

    aget-byte v0, p1, p0

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, p0

    aget-byte v1, p1, v1

    aput-byte v1, p1, p0

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, p0

    aput-byte v0, p1, v1

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_19
    return-void
.end method
