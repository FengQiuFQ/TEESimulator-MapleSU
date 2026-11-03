.class public final Lp4/e;
.super Ljava/io/BufferedWriter;


# instance fields
.field public c:[C


# virtual methods
.method public final a(Lp4/b;)V
    .registers 10

    iget-object v0, p1, Lp4/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-----BEGIN "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-----"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    iget-object v1, p1, Lp4/b;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_49

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lp4/a;

    iget-object v4, v3, Lp4/a;->a:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v4, ": "

    invoke-virtual {p0, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v3, v3, Lp4/a;->b:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    goto :goto_27

    :cond_46
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    :cond_49
    iget-object p1, p1, Lp4/b;->c:[B

    iget-object v1, p0, Lp4/e;->c:[C

    sget-object v3, Ln4/a;->a:Ln4/b;

    array-length v3, p1

    sget-object v4, Ln4/a;->a:Ln4/b;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v5, v3, 0x2

    div-int/lit8 v5, v5, 0x3

    mul-int/lit8 v5, v5, 0x4

    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/4 v5, 0x0

    :try_start_61
    invoke-virtual {v4, p1, v5, v3, v6}, Ln4/b;->c([BIILjava/io/ByteArrayOutputStream;)I
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_64} :catch_9f

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    move v3, v5

    :goto_69
    array-length v4, p1

    if-ge v3, v4, :cond_87

    move v4, v5

    :goto_6d
    array-length v6, v1

    if-eq v4, v6, :cond_7e

    add-int v6, v3, v4

    array-length v7, p1

    if-lt v6, v7, :cond_76

    goto :goto_7e

    :cond_76
    aget-byte v6, p1, v6

    int-to-char v6, v6

    aput-char v6, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_6d

    :cond_7e
    :goto_7e
    invoke-virtual {p0, v1, v5, v4}, Ljava/io/Writer;->write([CII)V

    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    array-length v4, v1

    add-int/2addr v3, v4

    goto :goto_69

    :cond_87
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "-----END "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    return-void

    :catch_9f
    move-exception p0

    new-instance p1, Lm/t;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "exception encoding base64 string: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lb/b;->B(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p1, v0, p0, v1}, Lm/t;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw p1
.end method
