.class public final Lm/k;
.super Ljava/io/FilterInputStream;


# instance fields
.field public final c:I

.field public final d:Z

.field public final q:[[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 4

    invoke-static {p1}, Lt4/d;->P(Ljava/io/InputStream;)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lm/k;-><init>(Ljava/io/InputStream;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;IZ)V
    .registers 5

    const/16 v0, 0xb

    new-array v0, v0, [[B

    invoke-direct {p0, p1, p2, p3, v0}, Lm/k;-><init>(Ljava/io/InputStream;IZ[[B)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;IZ[[B)V
    .registers 5

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput p2, p0, Lm/k;->c:I

    iput-boolean p3, p0, Lm/k;->d:Z

    iput-object p4, p0, Lm/k;->q:[[B

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/Object;)V
    .registers 4

    const/4 p2, 0x1

    invoke-static {p1}, Lt4/d;->P(Ljava/io/InputStream;)I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lm/k;-><init>(Ljava/io/InputStream;IZ)V

    return-void
.end method

.method public constructor <init>([B)V
    .registers 4

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length p1, p1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lm/k;-><init>(Ljava/io/InputStream;IZ)V

    return-void
.end method

.method public constructor <init>([BI)V
    .registers 4

    new-instance p2, Ljava/io/ByteArrayInputStream;

    invoke-direct {p2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length p1, p1

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Lm/k;-><init>(Ljava/io/InputStream;IZ)V

    return-void
.end method

.method public static b(ILm/r1;[[B)Lm/u;
    .registers 8

    const-string v0, "unknown tag "

    const-string v1, "unsupported tag "

    const/4 v2, 0x0

    const-string v3, " encountered"

    const/4 v4, 0x1

    packed-switch p0, :pswitch_data_146

    :pswitch_b
    :try_start_b
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_20
    move-exception p0

    goto/16 :goto_131

    :catch_23
    move-exception p0

    goto/16 :goto_13b

    :pswitch_26
    invoke-static {p1}, Lm/k;->c(Lm/r1;)[C

    move-result-object p0

    new-instance p1, Lm/o0;

    invoke-direct {p1, p0}, Lm/o0;-><init>([C)V

    return-object p1

    :pswitch_30
    invoke-virtual {p1}, Lm/r1;->b()[B

    move-result-object p0

    new-instance p1, Lm/g1;

    invoke-direct {p1, p0}, Lm/g1;-><init>([B)V

    return-object p1

    :pswitch_3a
    invoke-virtual {p1}, Lm/r1;->b()[B

    move-result-object p0

    new-instance p1, Lm/r0;

    invoke-direct {p1, p0}, Lm/r0;-><init>([B)V

    return-object p1

    :pswitch_44
    invoke-virtual {p1}, Lm/r1;->b()[B

    move-result-object p0

    new-instance p1, Lm/i1;

    invoke-direct {p1, p0}, Lm/i1;-><init>([B)V

    return-object p1

    :pswitch_4e
    invoke-virtual {p1}, Lm/r1;->b()[B

    move-result-object p0

    new-instance p1, Lm/t0;

    invoke-direct {p1, p0}, Lm/t0;-><init>([B)V

    return-object p1

    :pswitch_58
    invoke-virtual {p1}, Lm/r1;->b()[B

    move-result-object p0

    new-instance p1, Lm/j;

    invoke-direct {p1, p0}, Lm/j;-><init>([B)V

    return-object p1

    :pswitch_62
    invoke-virtual {p1}, Lm/r1;->b()[B

    move-result-object p0

    new-instance p1, Lm/b0;

    invoke-direct {p1, p0}, Lm/b0;-><init>([B)V

    return-object p1

    :pswitch_6c
    invoke-virtual {p1}, Lm/r1;->b()[B

    move-result-object p0

    new-instance p1, Lm/u0;

    invoke-direct {p1, p0}, Lm/u0;-><init>([B)V

    return-object p1

    :pswitch_76
    invoke-virtual {p1}, Lm/r1;->b()[B

    move-result-object p0

    new-instance p1, Lm/h1;

    invoke-direct {p1, p0}, Lm/h1;-><init>([B)V

    return-object p1

    :pswitch_80
    invoke-virtual {p1}, Lm/r1;->b()[B

    move-result-object p0

    new-instance p1, Lm/c1;

    invoke-direct {p1, p0}, Lm/c1;-><init>([B)V

    return-object p1

    :pswitch_8a
    invoke-virtual {p1}, Lm/r1;->b()[B

    move-result-object p0

    new-instance p1, Lm/z0;

    invoke-direct {p1, p0}, Lm/z0;-><init>([B)V

    return-object p1

    :pswitch_94
    invoke-virtual {p1}, Lm/r1;->b()[B

    move-result-object p0

    new-instance p1, Lm/w0;

    invoke-direct {p1, p0}, Lm/w0;-><init>([B)V

    return-object p1

    :pswitch_9e
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_b3
    iget p0, p1, Lm/r1;->x:I

    sget-object v0, Lm/v;->q:Lm/a;

    const/16 v0, 0x1000

    if-gt p0, v0, :cond_c4

    invoke-static {p1, p2}, Lm/k;->d(Lm/r1;[[B)[B

    move-result-object p0

    invoke-static {v4, p0}, Lm/v;->r(Z[B)Lm/v;

    move-result-object p0

    return-object p0

    :cond_c4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "exceeded relative OID contents length limit"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_cc
    invoke-virtual {p1}, Lm/r1;->b()[B

    move-result-object p0

    new-instance p1, Lm/f1;

    invoke-direct {p1, p0}, Lm/f1;-><init>([B)V

    return-object p1

    :pswitch_d6
    invoke-static {p1, p2}, Lm/k;->d(Lm/r1;[[B)[B

    move-result-object p0

    invoke-static {v4, p0}, Lm/h;->r(Z[B)Lm/h;

    move-result-object p0

    return-object p0

    :pswitch_df
    invoke-virtual {p1}, Lm/r1;->b()[B

    move-result-object p0

    new-instance p1, Lm/o;

    new-instance p2, Lm/t0;

    invoke-direct {p2, p0}, Lm/t0;-><init>([B)V

    invoke-direct {p1, p2}, Lm/o;-><init>(Lm/t0;)V

    return-object p1

    :pswitch_ee
    iget p0, p1, Lm/r1;->x:I

    invoke-static {p0}, Lm/q;->s(I)V

    invoke-static {p1, p2}, Lm/k;->d(Lm/r1;[[B)[B

    move-result-object p0

    invoke-static {v4, p0}, Lm/q;->t(Z[B)Lm/q;

    move-result-object p0

    return-object p0

    :pswitch_fc
    iget p0, p1, Lm/r1;->x:I

    if-nez p0, :cond_103

    sget-object p0, Lm/v0;->d:Lm/v0;

    return-object p0

    :cond_103
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "malformed NULL encoding encountered"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_10b
    invoke-virtual {p1}, Lm/r1;->b()[B

    move-result-object p0

    new-instance p1, Lm/x0;

    invoke-direct {p1, p0}, Lm/r;-><init>([B)V

    return-object p1

    :pswitch_115
    invoke-virtual {p1}, Lm/r1;->b()[B

    move-result-object p0

    invoke-static {p0}, Lm/b;->r([B)Lm/b;

    move-result-object p0

    return-object p0

    :pswitch_11e
    invoke-virtual {p1}, Lm/r1;->b()[B

    move-result-object p0

    new-instance p1, Lm/l;

    invoke-direct {p1, p0}, Lm/l;-><init>([B)V

    return-object p1

    :pswitch_128
    invoke-static {p1, p2}, Lm/k;->d(Lm/r1;[[B)[B

    move-result-object p0

    invoke-static {p0}, Lm/d;->r([B)Lm/d;

    move-result-object p0
    :try_end_130
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_130} :catch_23
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_130} :catch_20

    return-object p0

    :goto_131
    new-instance p1, Lm/i;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0, v2}, Lm/i;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw p1

    :goto_13b
    new-instance p1, Lm/i;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0, v2}, Lm/i;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw p1

    nop

    :pswitch_data_146
    .packed-switch 0x1
        :pswitch_128
        :pswitch_11e
        :pswitch_115
        :pswitch_10b
        :pswitch_fc
        :pswitch_ee
        :pswitch_df
        :pswitch_b
        :pswitch_b
        :pswitch_d6
        :pswitch_b
        :pswitch_cc
        :pswitch_b3
        :pswitch_9e
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_94
        :pswitch_8a
        :pswitch_80
        :pswitch_76
        :pswitch_6c
        :pswitch_62
        :pswitch_58
        :pswitch_4e
        :pswitch_44
        :pswitch_3a
        :pswitch_30
        :pswitch_b
        :pswitch_26
        :pswitch_9e
        :pswitch_9e
        :pswitch_9e
        :pswitch_9e
        :pswitch_9e
        :pswitch_9e
    .end packed-switch
.end method

.method public static c(Lm/r1;)[C
    .registers 12

    iget v0, p0, Lm/r1;->x:I

    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_8d

    div-int/lit8 v1, v0, 0x2

    new-array v2, v1, [C

    const/16 v3, 0x8

    new-array v4, v3, [B

    const/4 v5, 0x0

    move v6, v5

    :goto_10
    const-string v7, "EOF encountered in middle of BMPString"

    const/4 v8, 0x2

    if-lt v0, v3, :cond_5e

    invoke-static {p0, v4, v5, v3}, Lq4/k;->H0(Ljava/io/InputStream;[BII)I

    move-result v9

    if-ne v9, v3, :cond_58

    aget-byte v7, v4, v5

    shl-int/2addr v7, v3

    const/4 v9, 0x1

    aget-byte v9, v4, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v7, v9

    int-to-char v7, v7

    aput-char v7, v2, v6

    add-int/lit8 v7, v6, 0x1

    aget-byte v8, v4, v8

    shl-int/2addr v8, v3

    const/4 v9, 0x3

    aget-byte v9, v4, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v8, v9

    int-to-char v8, v8

    aput-char v8, v2, v7

    add-int/lit8 v7, v6, 0x2

    const/4 v8, 0x4

    aget-byte v8, v4, v8

    shl-int/2addr v8, v3

    const/4 v9, 0x5

    aget-byte v9, v4, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v8, v9

    int-to-char v8, v8

    aput-char v8, v2, v7

    add-int/lit8 v7, v6, 0x3

    const/4 v8, 0x6

    aget-byte v8, v4, v8

    shl-int/2addr v8, v3

    const/4 v9, 0x7

    aget-byte v9, v4, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v8, v9

    int-to-char v8, v8

    aput-char v8, v2, v7

    add-int/lit8 v6, v6, 0x4

    add-int/lit8 v0, v0, -0x8

    goto :goto_10

    :cond_58
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0, v7}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5e
    if-lez v0, :cond_80

    invoke-static {p0, v4, v5, v0}, Lq4/k;->H0(Ljava/io/InputStream;[BII)I

    move-result v9

    if-ne v9, v0, :cond_7a

    :cond_66
    add-int/lit8 v7, v5, 0x1

    aget-byte v9, v4, v5

    shl-int/2addr v9, v3

    add-int/2addr v5, v8

    aget-byte v7, v4, v7

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v10, v6, 0x1

    or-int/2addr v7, v9

    int-to-char v7, v7

    aput-char v7, v2, v6

    move v6, v10

    if-lt v5, v0, :cond_66

    goto :goto_80

    :cond_7a
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0, v7}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_80
    :goto_80
    iget p0, p0, Lm/r1;->x:I

    if-nez p0, :cond_87

    if-ne v1, v6, :cond_87

    return-object v2

    :cond_87
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_8d
    new-instance p0, Ljava/io/IOException;

    const-string v0, "malformed BMPString encoding encountered"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d(Lm/r1;[[B)[B
    .registers 6

    iget v0, p0, Lm/r1;->x:I

    array-length v1, p1

    if-lt v0, v1, :cond_a

    invoke-virtual {p0}, Lm/r1;->b()[B

    move-result-object p0

    return-object p0

    :cond_a
    aget-object v1, p1, v0

    if-nez v1, :cond_12

    new-array v1, v0, [B

    aput-object v1, p1, v0

    :cond_12
    array-length p1, v1

    if-ne v0, p1, :cond_6b

    if-nez v0, :cond_18

    return-object v1

    :cond_18
    iget p1, p0, Lm/w1;->d:I

    if-ge v0, p1, :cond_4d

    iget-object p1, p0, Lm/w1;->c:Ljava/io/InputStream;

    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {p1, v1, v2, v3}, Lq4/k;->H0(Ljava/io/InputStream;[BII)I

    move-result p1

    sub-int/2addr v0, p1

    iput v0, p0, Lm/r1;->x:I

    if-nez v0, :cond_2d

    invoke-virtual {p0}, Lm/w1;->a()V

    return-object v1

    :cond_2d
    new-instance p1, Ljava/io/EOFException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DEF length "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lm/r1;->q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " object truncated by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lm/r1;->x:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4d
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "corrupted stream - out of bounds length found: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lm/r1;->x:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " >= "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "buffer length not right for data"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static e(Ljava/io/InputStream;IZ)I
    .registers 8

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    ushr-int/lit8 v1, v0, 0x7

    if-nez v1, :cond_9

    return v0

    :cond_9
    const/16 v1, 0x80

    if-ne v1, v0, :cond_f

    const/4 p0, -0x1

    return p0

    :cond_f
    if-ltz v0, :cond_56

    const/16 v1, 0xff

    if-eq v1, v0, :cond_4e

    and-int/lit8 v0, v0, 0x7f

    const/4 v1, 0x0

    move v2, v1

    :cond_19
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    if-ltz v3, :cond_46

    ushr-int/lit8 v4, v1, 0x17

    if-nez v4, :cond_3e

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    if-lt v2, v0, :cond_19

    if-lt v1, p1, :cond_3d

    if-eqz p2, :cond_2f

    goto :goto_3d

    :cond_2f
    new-instance p0, Ljava/io/IOException;

    const-string p2, "corrupted stream - out of bounds length found: "

    const-string v0, " >= "

    invoke-static {p2, v1, v0, p1}, Lb/b;->e(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3d
    :goto_3d
    return v1

    :cond_3e
    new-instance p0, Ljava/io/IOException;

    const-string p1, "long form definite-length more than 31 bits"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_46
    new-instance p0, Ljava/io/EOFException;

    const-string p1, "EOF found reading length"

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4e
    new-instance p0, Ljava/io/IOException;

    const-string p1, "invalid long form definite-length 0xFF"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_56
    new-instance p0, Ljava/io/EOFException;

    const-string p1, "EOF found when length expected"

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static g(Ljava/io/InputStream;I)I
    .registers 6

    const/16 v0, 0x1f

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_4f

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p1

    const-string v1, "EOF found inside tag value."

    if-ge p1, v0, :cond_1d

    if-gez p1, :cond_15

    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    new-instance p0, Ljava/io/IOException;

    const-string p1, "corrupted stream - high tag number < 31 found"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1d
    and-int/lit8 v0, p1, 0x7f

    if-eqz v0, :cond_47

    :goto_21
    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_46

    ushr-int/lit8 p1, v0, 0x18

    if-nez p1, :cond_3e

    shl-int/lit8 p1, v0, 0x7

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_38

    and-int/lit8 v2, v0, 0x7f

    or-int/2addr p1, v2

    move v3, v0

    move v0, p1

    move p1, v3

    goto :goto_21

    :cond_38
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3e
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Tag number more than 31 bits"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_46
    return v0

    :cond_47
    new-instance p0, Ljava/io/IOException;

    const-string p1, "corrupted stream - invalid high tag number found"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4f
    return p1
.end method


# virtual methods
.method public final a(III)Lm/u;
    .registers 9

    new-instance v0, Lm/r1;

    iget v1, p0, Lm/k;->c:I

    invoke-direct {v0, p0, p3, v1}, Lm/r1;-><init>(Ljava/io/InputStream;II)V

    and-int/lit16 p3, p1, 0xe0

    if-nez p3, :cond_12

    iget-object p0, p0, Lm/k;->q:[[B

    invoke-static {p2, v0, p0}, Lm/k;->b(ILm/r1;[[B)Lm/u;

    move-result-object p0

    return-object p0

    :cond_12
    and-int/lit16 p3, p1, 0xc0

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p3, :cond_49

    and-int/lit8 p1, p1, 0x20

    if-eqz p1, :cond_3a

    invoke-virtual {p0, v0}, Lm/k;->h(Lm/r1;)Lm/g;

    move-result-object p0

    iget p1, p0, Lm/g;->b:I

    if-ne p1, v4, :cond_30

    new-instance p1, Lm/p1;

    invoke-virtual {p0, v3}, Lm/g;->c(I)Lm/f;

    move-result-object p0

    invoke-direct {p1, v1, p3, p2, p0}, Lm/a0;-><init>(IIILm/f;)V

    return-object p1

    :cond_30
    new-instance p1, Lm/p1;

    invoke-static {p0}, Lm/l1;->a(Lm/g;)Lm/n1;

    move-result-object p0

    invoke-direct {p1, v2, p3, p2, p0}, Lm/a0;-><init>(IIILm/f;)V

    return-object p1

    :cond_3a
    invoke-virtual {v0}, Lm/r1;->b()[B

    move-result-object p0

    new-instance p1, Lm/p1;

    new-instance v0, Lm/x0;

    invoke-direct {v0, p0}, Lm/r;-><init>([B)V

    invoke-direct {p1, v2, p3, p2, v0}, Lm/a0;-><init>(IIILm/f;)V

    return-object p1

    :cond_49
    if-eq p2, v1, :cond_ea

    if-eq p2, v2, :cond_ae

    const/16 p1, 0x8

    if-eq p2, p1, :cond_9d

    const/16 p1, 0x10

    if-eq p2, p1, :cond_7d

    const/16 p1, 0x11

    if-ne p2, p1, :cond_6f

    invoke-virtual {p0, v0}, Lm/k;->h(Lm/r1;)Lm/g;

    move-result-object p0

    sget-object p1, Lm/l1;->a:Lm/n1;

    iget p1, p0, Lm/g;->b:I

    if-ge p1, v4, :cond_66

    sget-object p0, Lm/l1;->b:Lm/o1;

    return-object p0

    :cond_66
    new-instance p1, Lm/o1;

    invoke-direct {p1, p0, v3}, Lm/y;-><init>(Lm/g;Z)V

    const/4 p0, -0x1

    iput p0, p1, Lm/o1;->x:I

    return-object p1

    :cond_6f
    new-instance p0, Ljava/io/IOException;

    const-string p1, "unknown tag "

    const-string p3, " encountered"

    invoke-static {p1, p3, p2}, Lb/b;->g(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7d
    iget p1, v0, Lm/r1;->x:I

    if-ge p1, v4, :cond_84

    sget-object p0, Lm/l1;->a:Lm/n1;

    return-object p0

    :cond_84
    iget-boolean p1, p0, Lm/k;->d:Z

    if-eqz p1, :cond_94

    new-instance p0, Lm/v1;

    invoke-virtual {v0}, Lm/r1;->b()[B

    move-result-object p1

    invoke-direct {p0}, Lm/x;-><init>()V

    iput-object p1, p0, Lm/v1;->q:[B

    return-object p0

    :cond_94
    invoke-virtual {p0, v0}, Lm/k;->h(Lm/r1;)Lm/g;

    move-result-object p0

    invoke-static {p0}, Lm/l1;->a(Lm/g;)Lm/n1;

    move-result-object p0

    return-object p0

    :cond_9d
    invoke-virtual {p0, v0}, Lm/k;->h(Lm/r1;)Lm/g;

    move-result-object p0

    invoke-static {p0}, Lm/l1;->a(Lm/g;)Lm/n1;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lm/q0;

    invoke-direct {p1, p0, v4}, Lm/q0;-><init>(Lm/x;I)V

    return-object p1

    :cond_ae
    invoke-virtual {p0, v0}, Lm/k;->h(Lm/r1;)Lm/g;

    move-result-object p0

    iget p1, p0, Lm/g;->b:I

    new-array p2, p1, [Lm/r;

    move p3, v3

    :goto_b7
    if-eq p3, p1, :cond_e0

    invoke-virtual {p0, p3}, Lm/g;->c(I)Lm/f;

    move-result-object v0

    instance-of v1, v0, Lm/r;

    if-eqz v1, :cond_c8

    check-cast v0, Lm/r;

    aput-object v0, p2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_b7

    :cond_c8
    new-instance p0, Lm/i;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "unknown object encountered in constructed OCTET STRING: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v3}, Lm/i;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_e0
    new-instance p0, Lm/f0;

    invoke-static {p2}, Lm/f0;->s([Lm/r;)[B

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lm/f0;-><init>([B[Lm/r;)V

    return-object p0

    :cond_ea
    invoke-virtual {p0, v0}, Lm/k;->h(Lm/r1;)Lm/g;

    move-result-object p0

    iget p1, p0, Lm/g;->b:I

    new-array p2, p1, [Lm/b;

    move p3, v3

    :goto_f3
    if-eq p3, p1, :cond_11c

    invoke-virtual {p0, p3}, Lm/g;->c(I)Lm/f;

    move-result-object v0

    instance-of v1, v0, Lm/b;

    if-eqz v1, :cond_104

    check-cast v0, Lm/b;

    aput-object v0, p2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_f3

    :cond_104
    new-instance p0, Lm/i;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "unknown object encountered in constructed BIT STRING: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v3}, Lm/i;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_11c
    new-instance p0, Lm/c0;

    invoke-direct {p0, p2}, Lm/c0;-><init>([Lm/b;)V

    return-object p0
.end method

.method public final f()Lm/u;
    .registers 8

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_12

    if-eqz v0, :cond_a

    return-object v1

    :cond_a
    new-instance p0, Ljava/io/IOException;

    const-string v0, "unexpected end-of-contents marker"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_12
    invoke-static {p0, v0}, Lm/k;->g(Ljava/io/InputStream;I)I

    move-result v2

    iget v3, p0, Lm/k;->c:I

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lm/k;->e(Ljava/io/InputStream;IZ)I

    move-result v5

    if-ltz v5, :cond_2e

    :try_start_1f
    invoke-virtual {p0, v0, v2, v5}, Lm/k;->a(III)Lm/u;

    move-result-object p0
    :try_end_23
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1f .. :try_end_23} :catch_24

    return-object p0

    :catch_24
    move-exception p0

    new-instance v0, Lm/i;

    const-string v1, "corrupted stream detected"

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lm/i;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v0

    :cond_2e
    and-int/lit8 v5, v0, 0x20

    if-eqz v5, :cond_8e

    new-instance v5, Lm/t1;

    invoke-direct {v5, p0, v3}, Lm/t1;-><init>(Ljava/io/InputStream;I)V

    new-instance v6, La2/r;

    iget-object p0, p0, Lm/k;->q:[[B

    invoke-direct {v6, v5, v3, p0}, La2/r;-><init>(Lm/w1;I[[B)V

    and-int/lit16 p0, v0, 0xc0

    if-eqz p0, :cond_47

    invoke-virtual {v6, p0, v2}, La2/r;->e(II)Lm/k0;

    move-result-object p0

    return-object p0

    :cond_47
    const/4 p0, 0x3

    if-eq v2, p0, :cond_89

    const/4 p0, 0x4

    if-eq v2, p0, :cond_7a

    const/16 p0, 0x8

    if-eq v2, p0, :cond_75

    const/16 p0, 0x10

    if-eq v2, p0, :cond_6b

    const/16 p0, 0x11

    if-ne v2, p0, :cond_63

    new-instance p0, Lm/j0;

    invoke-virtual {v6}, La2/r;->f()Lm/g;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lm/y;-><init>(Lm/g;Z)V

    return-object p0

    :cond_63
    new-instance p0, Ljava/io/IOException;

    const-string v0, "unknown BER object encountered"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6b
    new-instance p0, Lm/h0;

    invoke-virtual {v6}, La2/r;->f()Lm/g;

    move-result-object v0

    invoke-direct {p0, v0}, Lm/x;-><init>(Lm/g;)V

    return-object p0

    :cond_75
    invoke-static {v6}, Lm/i0;->e(La2/r;)Lm/q0;

    move-result-object p0

    return-object p0

    :cond_7a
    new-instance p0, Lm/f0;

    new-instance v0, Lm/n0;

    invoke-direct {v0, v6}, Lm/n0;-><init>(La2/r;)V

    invoke-static {v0}, Lq4/k;->G0(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lm/f0;-><init>([B[Lm/r;)V

    return-object p0

    :cond_89
    invoke-static {v6}, Lm/d0;->e(La2/r;)Lm/c0;

    move-result-object p0

    return-object p0

    :cond_8e
    new-instance p0, Ljava/io/IOException;

    const-string v0, "indefinite-length primitive encoding encountered"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final h(Lm/r1;)Lm/g;
    .registers 6

    iget v0, p1, Lm/r1;->x:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_c

    new-instance p0, Lm/g;

    invoke-direct {p0, v2}, Lm/g;-><init>(I)V

    return-object p0

    :cond_c
    new-instance v1, Lm/k;

    iget-boolean v3, p0, Lm/k;->d:Z

    iget-object p0, p0, Lm/k;->q:[[B

    invoke-direct {v1, p1, v0, v3, p0}, Lm/k;-><init>(Ljava/io/InputStream;IZ[[B)V

    invoke-virtual {v1}, Lm/k;->f()Lm/u;

    move-result-object p0

    if-nez p0, :cond_21

    new-instance p0, Lm/g;

    invoke-direct {p0, v2}, Lm/g;-><init>(I)V

    return-object p0

    :cond_21
    new-instance p1, Lm/g;

    invoke-direct {p1}, Lm/g;-><init>()V

    :cond_26
    invoke-virtual {p1, p0}, Lm/g;->a(Lm/f;)V

    invoke-virtual {v1}, Lm/k;->f()Lm/u;

    move-result-object p0

    if-nez p0, :cond_26

    return-object p1
.end method
