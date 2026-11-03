.class public Lorg/bouncycastle/jce/provider/X509CertPairParser;
.super Lt4/d;


# instance fields
.field private currentStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/X509CertPairParser;->currentStream:Ljava/io/InputStream;

    return-void
.end method

.method private readDERCrossCertificatePair(Ljava/io/InputStream;)Lq4/j;
    .registers 4

    new-instance p0, Lm/k;

    invoke-direct {p0, p1}, Lm/k;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0}, Lm/k;->f()Lm/u;

    move-result-object p0

    check-cast p0, Lm/x;

    invoke-static {p0}, Ll0/o;->h(Lm/u;)Ll0/o;

    move-result-object p0

    new-instance p1, Lq4/j;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    new-instance v0, Le2/a;

    invoke-direct {v0}, Le2/a;-><init>()V

    iget-object v0, p0, Ll0/o;->c:Ll0/m;

    iget-object v1, p0, Ll0/o;->d:Ll0/m;

    if-eqz v0, :cond_28

    new-instance v0, Lorg/bouncycastle/jce/provider/X509CertificateObject;

    iget-object p0, p0, Ll0/o;->c:Ll0/m;

    invoke-direct {v0, p0}, Lorg/bouncycastle/jce/provider/X509CertificateObject;-><init>(Ll0/m;)V

    iput-object v0, p1, Lq4/j;->a:Lorg/bouncycastle/jce/provider/X509CertificateObject;

    :cond_28
    if-eqz v1, :cond_31

    new-instance p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;

    invoke-direct {p0, v1}, Lorg/bouncycastle/jce/provider/X509CertificateObject;-><init>(Ll0/m;)V

    iput-object p0, p1, Lq4/j;->b:Lorg/bouncycastle/jce/provider/X509CertificateObject;

    :cond_31
    return-object p1
.end method


# virtual methods
.method public engineInit(Ljava/io/InputStream;)V
    .registers 3

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/X509CertPairParser;->currentStream:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result p1

    if-nez p1, :cond_11

    new-instance p1, Ljava/io/BufferedInputStream;

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/X509CertPairParser;->currentStream:Ljava/io/InputStream;

    invoke-direct {p1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/X509CertPairParser;->currentStream:Ljava/io/InputStream;

    :cond_11
    return-void
.end method

.method public engineRead()Ljava/lang/Object;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/X509CertPairParser;->currentStream:Ljava/io/InputStream;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->mark(I)V

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/X509CertPairParser;->currentStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_12

    const/4 p0, 0x0

    return-object p0

    :cond_12
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/X509CertPairParser;->currentStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/X509CertPairParser;->currentStream:Ljava/io/InputStream;

    invoke-direct {p0, v0}, Lorg/bouncycastle/jce/provider/X509CertPairParser;->readDERCrossCertificatePair(Ljava/io/InputStream;)Lq4/j;

    move-result-object p0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    return-object p0

    :catch_1e
    move-exception p0

    new-instance v0, Lr4/b;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lr4/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v0
.end method

.method public engineReadAll()Ljava/util/Collection;
    .registers 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_5
    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CertPairParser;->engineRead()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq4/j;

    if-eqz v1, :cond_11

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_11
    return-object v0
.end method
