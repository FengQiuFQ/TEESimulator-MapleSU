.class public abstract Lm/b;
.super Lm/u;

# interfaces
.implements Lm/z;
.implements Lm/c;


# static fields
.field public static final d:Lm/a;

.field public static final q:[C


# instance fields
.field public final c:[B


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lm/a;

    const-class v1, Lm/b;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lm/a;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lm/b;->d:Lm/a;

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_14

    sput-object v0, Lm/b;->q:[C

    return-void

    :array_14
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm/b;->c:[B

    return-void
.end method

.method public constructor <init>([BI)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_30

    array-length v0, p1

    if-nez v0, :cond_13

    if-nez p2, :cond_b

    goto :goto_13

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "zero length data with non-zero pad bits"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_13
    :goto_13
    const/4 v0, 0x7

    if-gt p2, v0, :cond_28

    if-ltz p2, :cond_28

    int-to-byte p2, p2

    array-length v0, p1

    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p1, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-byte p2, v1, v2

    iput-object v1, p0, Lm/b;->c:[B

    return-void

    :cond_28
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "pad bits cannot be greater than 7 or less than 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_30
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'data\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static r([B)Lm/b;
    .registers 6

    array-length v0, p0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2f

    const/4 v2, 0x0

    aget-byte v2, p0, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    if-lez v2, :cond_29

    const/4 v4, 0x7

    if-gt v2, v4, :cond_21

    const/4 v4, 0x2

    if-lt v0, v4, :cond_21

    sub-int/2addr v0, v1

    aget-byte v0, p0, v0

    shl-int v1, v3, v2

    and-int/2addr v1, v0

    int-to-byte v1, v1

    if-eq v0, v1, :cond_29

    new-instance v0, Lm/j1;

    invoke-direct {v0, p0}, Lm/b;-><init>([B)V

    return-object v0

    :cond_21
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid pad bits detected"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_29
    new-instance v0, Lm/p0;

    invoke-direct {v0, p0}, Lm/b;-><init>([B)V

    return-object v0

    :cond_2f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "truncated BIT STRING detected"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static t(Ljava/lang/Object;)Lm/b;
    .registers 4

    if-eqz p0, :cond_4e

    instance-of v0, p0, Lm/b;

    if-eqz v0, :cond_7

    goto :goto_4e

    :cond_7
    instance-of v0, p0, Lm/f;

    if-eqz v0, :cond_19

    move-object v0, p0

    check-cast v0, Lm/f;

    invoke-interface {v0}, Lm/f;->d()Lm/u;

    move-result-object v0

    instance-of v1, v0, Lm/b;

    if-eqz v1, :cond_3a

    check-cast v0, Lm/b;

    return-object v0

    :cond_19
    instance-of v0, p0, [B

    if-eqz v0, :cond_3a

    :try_start_1d
    sget-object v0, Lm/b;->d:Lm/a;

    check-cast p0, [B

    invoke-virtual {v0, p0}, Lm/a;->b([B)Lm/u;

    move-result-object p0

    check-cast p0, Lm/b;
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_27} :catch_28

    return-object p0

    :catch_28
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "failed to construct BIT STRING from byte[]: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Lb/b;->c(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "illegal object in getInstance: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4e
    :goto_4e
    check-cast p0, Lm/b;

    return-object p0
.end method


# virtual methods
.method public final a()Lm/u;
    .registers 1

    return-object p0
.end method

.method public final b()Ljava/io/InputStream;
    .registers 4

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object p0, p0, Lm/b;->c:[B

    array-length v1, p0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-direct {v0, p0, v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .registers 6

    :try_start_0
    invoke-virtual {p0}, Lm/n;->getEncoded()[B

    move-result-object p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_33

    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_14
    array-length v2, p0

    if-eq v1, v2, :cond_2e

    aget-byte v2, p0, v1

    ushr-int/lit8 v3, v2, 0x4

    and-int/lit8 v3, v3, 0xf

    sget-object v4, Lm/b;->q:[C

    aget-char v3, v4, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v4, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_2e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_33
    move-exception p0

    new-instance v0, Lm/t;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Internal error encoding BitString: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Lb/b;->c(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lm/t;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v0
.end method

.method public final f()I
    .registers 2

    iget-object p0, p0, Lm/b;->c:[B

    const/4 v0, 0x0

    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public final h(Lm/u;)Z
    .registers 8

    instance-of v0, p1, Lm/b;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Lm/b;

    iget-object p1, p1, Lm/b;->c:[B

    iget-object p0, p0, Lm/b;->c:[B

    array-length v0, p0

    array-length v2, p1

    if-eq v2, v0, :cond_11

    return v1

    :cond_11
    const/4 v2, 0x1

    if-ne v0, v2, :cond_15

    return v2

    :cond_15
    sub-int/2addr v0, v2

    move v3, v1

    :goto_17
    if-ge v3, v0, :cond_23

    aget-byte v4, p0, v3

    aget-byte v5, p1, v3

    if-eq v4, v5, :cond_20

    return v1

    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_23
    aget-byte v3, p0, v1

    const/16 v4, 0xff

    and-int/2addr v3, v4

    aget-byte p0, p0, v0

    shl-int v3, v4, v3

    and-int/2addr p0, v3

    int-to-byte p0, p0

    aget-byte p1, p1, v0

    and-int/2addr p1, v3

    int-to-byte p1, p1

    if-ne p0, p1, :cond_35

    return v2

    :cond_35
    return v1
.end method

.method public final hashCode()I
    .registers 7

    iget-object p0, p0, Lm/b;->c:[B

    array-length v0, p0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 v0, 0x0

    aget-byte v1, p0, v0

    const/16 v2, 0xff

    and-int/2addr v1, v2

    array-length v3, p0

    add-int/lit8 v4, v3, -0x1

    aget-byte v5, p0, v4

    shl-int v1, v2, v1

    and-int/2addr v1, v5

    int-to-byte v1, v1

    if-nez p0, :cond_1a

    goto :goto_25

    :cond_1a
    move v0, v3

    :goto_1b
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_25

    mul-int/lit16 v0, v0, 0x101

    aget-byte v2, p0, v4

    xor-int/2addr v0, v2

    goto :goto_1b

    :cond_25
    :goto_25
    mul-int/lit16 v0, v0, 0x101

    xor-int p0, v0, v1

    return p0
.end method

.method public p()Lm/u;
    .registers 2

    new-instance v0, Lm/p0;

    iget-object p0, p0, Lm/b;->c:[B

    invoke-direct {v0, p0}, Lm/b;-><init>([B)V

    return-object v0
.end method

.method public q()Lm/u;
    .registers 2

    new-instance v0, Lm/j1;

    iget-object p0, p0, Lm/b;->c:[B

    invoke-direct {v0, p0}, Lm/b;-><init>([B)V

    return-object v0
.end method

.method public final s()[B
    .registers 5

    iget-object p0, p0, Lm/b;->c:[B

    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    sget-object p0, Lm/r;->q:[B

    return-object p0

    :cond_9
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    const/16 v2, 0xff

    and-int/2addr v0, v2

    array-length v3, p0

    invoke-static {p0, v1, v3}, Lm4/d;->q([BII)[B

    move-result-object p0

    array-length v3, p0

    sub-int/2addr v3, v1

    aget-byte v1, p0, v3

    shl-int v0, v2, v0

    int-to-byte v0, v0

    and-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, p0, v3

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Lm/b;->e()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u()[B
    .registers 3

    const/4 v0, 0x0

    iget-object p0, p0, Lm/b;->c:[B

    aget-byte v0, p0, v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lm4/d;->q([BII)[B

    move-result-object p0

    return-object p0

    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "attempt to get non-octet aligned data from BIT STRING"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final v()I
    .registers 9

    iget-object p0, p0, Lm/b;->c:[B

    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x5

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v3, 0x0

    move v4, v1

    move v5, v3

    :goto_d
    const/16 v6, 0xff

    if-ge v4, v0, :cond_1d

    aget-byte v7, p0, v4

    and-int/2addr v6, v7

    add-int/lit8 v7, v4, -0x1

    mul-int/lit8 v7, v7, 0x8

    shl-int/2addr v6, v7

    or-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_1d
    if-gt v1, v0, :cond_31

    if-ge v0, v2, :cond_31

    aget-byte v2, p0, v3

    and-int/2addr v2, v6

    aget-byte p0, p0, v0

    shl-int v2, v6, v2

    and-int/2addr p0, v2

    int-to-byte p0, p0

    and-int/2addr p0, v6

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x8

    shl-int/2addr p0, v0

    or-int/2addr p0, v5

    return p0

    :cond_31
    return v5
.end method
