.class public Lorg/bouncycastle/jce/provider/X509AttrCertParser;
.super Lt4/d;


# static fields
.field private static final PEM_PARSER:Lorg/bouncycastle/jce/provider/PEMUtil;


# instance fields
.field private currentStream:Ljava/io/InputStream;

.field private sData:Lm/y;

.field private sDataObjectCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lorg/bouncycastle/jce/provider/PEMUtil;

    const-string v1, "ATTRIBUTE CERTIFICATE"

    invoke-direct {v0, v1}, Lorg/bouncycastle/jce/provider/PEMUtil;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/jce/provider/X509AttrCertParser;->PEM_PARSER:Lorg/bouncycastle/jce/provider/PEMUtil;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/X509AttrCertParser;->sData:Lm/y;

    const/4 v1, 0x0

    iput v1, p0, Lorg/bouncycastle/jce/provider/X509AttrCertParser;->sDataObjectCount:I

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/X509AttrCertParser;->currentStream:Ljava/io/InputStream;

    return-void
.end method

.method private getCertificate()Lq4/f;
    .registers 4

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/X509AttrCertParser;->sData:Lm/y;

    if-eqz v0, :cond_37

    :cond_4
    iget v0, p0, Lorg/bouncycastle/jce/provider/X509AttrCertParser;->sDataObjectCount:I

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/X509AttrCertParser;->sData:Lm/y;

    iget-object v1, v1, Lm/y;->c:[Lm/f;

    array-length v2, v1

    if-ge v0, v2, :cond_37

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/bouncycastle/jce/provider/X509AttrCertParser;->sDataObjectCount:I

    aget-object v0, v1, v0

    instance-of v1, v0, Lm/a0;

    if-eqz v1, :cond_4

    check-cast v0, Lm/a0;

    iget v1, v0, Lm/a0;->q:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    new-instance p0, Lq4/m;

    invoke-static {v0}, Lq4/k;->v(Lm/a0;)V

    const/4 v1, 0x0

    sget-object v2, Lm/x;->d:Lm/a;

    invoke-virtual {v0, v1, v2}, Lm/a0;->t(ZLm/a;)Lm/u;

    move-result-object v0

    invoke-virtual {v2, v0}, Lm/a;->a(Lm/u;)V

    check-cast v0, Lm/x;

    invoke-virtual {v0}, Lm/n;->getEncoded()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lq4/m;-><init>([B)V

    return-object p0

    :cond_37
    const/4 p0, 0x0

    return-object p0
.end method

.method private readDERCertificate(Ljava/io/InputStream;)Lq4/f;
    .registers 8

    new-instance v0, Lm/k;

    invoke-direct {v0, p1}, Lm/k;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lm/k;->f()Lm/u;

    move-result-object p1

    invoke-static {p1}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p1

    invoke-virtual {p1}, Lm/x;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_95

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lm/x;->v(I)Lm/f;

    move-result-object v2

    instance-of v2, v2, Lm/q;

    if-eqz v2, :cond_95

    invoke-virtual {p1, v0}, Lm/x;->v(I)Lm/f;

    move-result-object v2

    sget-object v3, Ld0/r;->S:Lm/q;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_95

    invoke-virtual {p1, v1}, Lm/x;->v(I)Lm/f;

    move-result-object p1

    check-cast p1, Lm/a0;

    invoke-static {p1, v1}, Lm/x;->u(Lm/a0;Z)Lm/x;

    move-result-object p1

    invoke-virtual {p1}, Lm/x;->w()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm/l;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm/y;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ld0/f;->h(Ljava/lang/Object;)Ld0/f;

    const/4 v2, 0x0

    :goto_4b
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_8e

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm/u;

    instance-of v4, v3, Lm/a0;

    if-eqz v4, :cond_8b

    check-cast v3, Lm/a0;

    iget v4, v3, Lm/a0;->q:I

    sget-object v5, Lm/y;->q:Lm/a;

    if-eqz v4, :cond_7e

    if-ne v4, v1, :cond_72

    invoke-static {v3}, Lq4/k;->v(Lm/a0;)V

    invoke-virtual {v3, v0, v5}, Lm/a0;->t(ZLm/a;)Lm/u;

    move-result-object v3

    invoke-virtual {v5, v3}, Lm/a;->a(Lm/u;)V

    check-cast v3, Lm/y;

    goto :goto_4b

    :cond_72
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unknown tag value "

    invoke-static {v4, p1}, Lb/b;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7e
    invoke-static {v3}, Lq4/k;->v(Lm/a0;)V

    invoke-virtual {v3, v0, v5}, Lm/a0;->t(ZLm/a;)Lm/u;

    move-result-object v2

    invoke-virtual {v5, v2}, Lm/a;->a(Lm/u;)V

    check-cast v2, Lm/y;

    goto :goto_4b

    :cond_8b
    check-cast v3, Lm/y;

    goto :goto_4b

    :cond_8e
    iput-object v2, p0, Lorg/bouncycastle/jce/provider/X509AttrCertParser;->sData:Lm/y;

    invoke-direct {p0}, Lorg/bouncycastle/jce/provider/X509AttrCertParser;->getCertificate()Lq4/f;

    move-result-object p0

    return-object p0

    :cond_95
    new-instance p0, Lq4/m;

    invoke-virtual {p1}, Lm/n;->getEncoded()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lq4/m;-><init>([B)V

    return-object p0
.end method

.method private readPEMCertificate(Ljava/io/InputStream;)Lq4/f;
    .registers 2

    sget-object p0, Lorg/bouncycastle/jce/provider/X509AttrCertParser;->PEM_PARSER:Lorg/bouncycastle/jce/provider/PEMUtil;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jce/provider/PEMUtil;->readPEMObject(Ljava/io/InputStream;)Lm/x;

    move-result-object p0

    if-eqz p0, :cond_12

    new-instance p1, Lq4/m;

    invoke-virtual {p0}, Lm/n;->getEncoded()[B

    move-result-object p0

    invoke-direct {p1, p0}, Lq4/m;-><init>([B)V

    return-object p1

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public engineInit(Ljava/io/InputStream;)V
    .registers 3

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/X509AttrCertParser;->currentStream:Ljava/io/InputStream;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/X509AttrCertParser;->sData:Lm/y;

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/jce/provider/X509AttrCertParser;->sDataObjectCount:I

    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result p1

    if-nez p1, :cond_17

    new-instance p1, Ljava/io/BufferedInputStream;

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/X509AttrCertParser;->currentStream:Ljava/io/InputStream;

    invoke-direct {p1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/X509AttrCertParser;->currentStream:Ljava/io/InputStream;

    :cond_17
    return-void
.end method

.method public engineRead()Ljava/lang/Object;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/X509AttrCertParser;->sData:Lm/y;

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    iget v2, p0, Lorg/bouncycastle/jce/provider/X509AttrCertParser;->sDataObjectCount:I

    iget-object v0, v0, Lm/y;->c:[Lm/f;

    array-length v0, v0

    if-eq v2, v0, :cond_11

    invoke-direct {p0}, Lorg/bouncycastle/jce/provider/X509AttrCertParser;->getCertificate()Lq4/f;

    move-result-object p0

    return-object p0

    :cond_11
    iput-object v1, p0, Lorg/bouncycastle/jce/provider/X509AttrCertParser;->sData:Lm/y;

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/jce/provider/X509AttrCertParser;->sDataObjectCount:I

    return-object v1

    :cond_17
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/X509AttrCertParser;->currentStream:Ljava/io/InputStream;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/io/InputStream;->mark(I)V

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/X509AttrCertParser;->currentStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_28

    return-object v1

    :cond_28
    const/16 v1, 0x30

    if-eq v0, v1, :cond_38

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/X509AttrCertParser;->currentStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/X509AttrCertParser;->currentStream:Ljava/io/InputStream;

    invoke-direct {p0, v0}, Lorg/bouncycastle/jce/provider/X509AttrCertParser;->readPEMCertificate(Ljava/io/InputStream;)Lq4/f;

    move-result-object p0

    return-object p0

    :cond_38
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/X509AttrCertParser;->currentStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/X509AttrCertParser;->currentStream:Ljava/io/InputStream;

    invoke-direct {p0, v0}, Lorg/bouncycastle/jce/provider/X509AttrCertParser;->readDERCertificate(Ljava/io/InputStream;)Lq4/f;

    move-result-object p0
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_43} :catch_44

    return-object p0

    :catch_44
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
    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509AttrCertParser;->engineRead()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq4/f;

    if-eqz v1, :cond_11

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_11
    return-object v0
.end method
