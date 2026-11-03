.class public abstract Ln4/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ln4/b;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ln4/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ln4/b;-><init>(I)V

    sput-object v0, Ln4/c;->a:Ln4/b;

    return-void
.end method

.method public static a(Ljava/lang/String;)[B
    .registers 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_5
    sget-object v1, Ln4/c;->a:Ln4/b;

    invoke-virtual {v1, p0, v0}, Ln4/b;->a(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_f

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catch_f
    move-exception p0

    new-instance v0, Lm/t;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "exception decoding Hex string: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Lb/b;->B(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, p0, v2}, Lm/t;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v0
.end method

.method public static b(ILjava/lang/String;)[B
    .registers 4

    :try_start_0
    sget-object v0, Ln4/c;->a:Ln4/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0, p1}, Ln4/b;->b(IILjava/lang/String;)[B

    move-result-object p0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    return-object p0

    :catch_8
    move-exception p0

    new-instance p1, Lm/t;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "exception decoding Hex string: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lb/b;->B(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p1, v0, p0, v1}, Lm/t;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw p1
.end method

.method public static c(Ljava/lang/String;)[B
    .registers 4

    :try_start_0
    sget-object v0, Ln4/c;->a:Ln4/b;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, p0}, Ln4/b;->b(IILjava/lang/String;)[B

    move-result-object p0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    return-object p0

    :catch_c
    move-exception p0

    new-instance v0, Lm/t;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "exception decoding Hex string: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Lb/b;->B(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, p0, v2}, Lm/t;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v0
.end method

.method public static d([BII)[B
    .registers 14

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_5
    sget-object v1, Ln4/c;->a:Ln4/b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-gez p2, :cond_d

    goto :goto_3f

    :cond_d
    const/16 v2, 0x48

    new-array v2, v2, [B

    :goto_11
    if-lez p2, :cond_3f

    const/16 v3, 0x24

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int v4, p1, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_1d
    if-ge p1, v4, :cond_39

    add-int/lit8 v7, p1, 0x1

    aget-byte p1, p0, p1

    and-int/lit16 v8, p1, 0xff

    add-int/lit8 v9, v6, 0x1

    iget-object v10, v1, Ln4/b;->b:[B

    ushr-int/lit8 v8, v8, 0x4

    aget-byte v8, v10, v8

    aput-byte v8, v2, v6

    add-int/lit8 v6, v6, 0x2

    and-int/lit8 p1, p1, 0xf

    aget-byte p1, v10, p1

    aput-byte p1, v2, v9

    move p1, v7

    goto :goto_1d

    :cond_39
    invoke-virtual {v0, v2, v5, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_3c} :catch_44

    sub-int/2addr p2, v3

    move p1, v4

    goto :goto_11

    :cond_3f
    :goto_3f
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catch_44
    move-exception p0

    new-instance p1, Lm/t;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "exception encoding Hex string: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2}, Lb/b;->B(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x2

    invoke-direct {p1, p2, p0, v0}, Lm/t;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw p1
.end method

.method public static e([BII)Ljava/lang/String;
    .registers 3

    invoke-static {p0, p1, p2}, Ln4/c;->d([BII)[B

    move-result-object p0

    invoke-static {p0}, Lm4/m;->a([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
