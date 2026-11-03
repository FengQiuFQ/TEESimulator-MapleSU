.class public Lorg/bouncycastle/jce/provider/PEMUtil;
.super Ljava/lang/Object;


# instance fields
.field private final _footer1:Ljava/lang/String;

.field private final _footer2:Ljava/lang/String;

.field private final _header1:Ljava/lang/String;

.field private final _header2:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "-----BEGIN "

    const-string v1, "-----"

    invoke-static {v0, p1, v1}, Lb/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/PEMUtil;->_header1:Ljava/lang/String;

    const-string v0, "-----BEGIN X509 "

    invoke-static {v0, p1, v1}, Lb/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/PEMUtil;->_header2:Ljava/lang/String;

    const-string v0, "-----END "

    invoke-static {v0, p1, v1}, Lb/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/PEMUtil;->_footer1:Ljava/lang/String;

    const-string v0, "-----END X509 "

    invoke-static {v0, p1, v1}, Lb/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/PEMUtil;->_footer2:Ljava/lang/String;

    return-void
.end method

.method private readLine(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 5

    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    :cond_5
    :goto_5
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1b

    const/16 v2, 0xa

    if-eq v0, v2, :cond_1b

    if-ltz v0, :cond_1b

    if-ne v0, v1, :cond_16

    goto :goto_5

    :cond_16
    int-to-char v0, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_1b
    if-ltz v0, :cond_23

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-eqz v1, :cond_5

    :cond_23
    if-gez v0, :cond_27

    const/4 p0, 0x0

    return-object p0

    :cond_27
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public readPEMObject(Ljava/io/InputStream;)Lm/x;
    .registers 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :cond_5
    invoke-direct {p0, p1}, Lorg/bouncycastle/jce/provider/PEMUtil;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1b

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/PEMUtil;->_header1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1b

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/PEMUtil;->_header2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_1b
    :goto_1b
    invoke-direct {p0, p1}, Lorg/bouncycastle/jce/provider/PEMUtil;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_36

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/PEMUtil;->_footer1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_36

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/PEMUtil;->_footer2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32

    goto :goto_36

    :cond_32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1b

    :cond_36
    :goto_36
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    if-eqz p0, :cond_5c

    new-instance p0, Lm/k;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ln4/a;->a(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lm/k;-><init>([B)V

    invoke-virtual {p0}, Lm/k;->f()Lm/u;

    move-result-object p0

    instance-of p1, p0, Lm/x;

    if-eqz p1, :cond_54

    check-cast p0, Lm/x;

    return-object p0

    :cond_54
    new-instance p0, Ljava/io/IOException;

    const-string p1, "malformed PEM data encountered"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5c
    const/4 p0, 0x0

    return-object p0
.end method
