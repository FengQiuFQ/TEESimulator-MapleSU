.class public final Lmpl/Der;
.super Ljava/lang/Object;
.source "Der.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmpl/Der$DerException;,
        Lmpl/Der$Node;
    }
.end annotation


# static fields
.field public static CONTEXT_CONSTRUCTED:I = 0xa0

.field public static CONTEXT_PRIMITIVE:I = 0x80

.field private static final EMPTY:[B

.field private static final MAX_DEPTH:I = 0x40

.field public static final TAG_BIT_STRING:I = 0x3

.field public static final TAG_BOOLEAN:I = 0x1

.field public static final TAG_ENUMERATED:I = 0xa

.field public static final TAG_GENERALIZED_TIME:I = 0x18

.field public static final TAG_INTEGER:I = 0x2

.field public static final TAG_NULL:I = 0x5

.field public static final TAG_OCTET_STRING:I = 0x4

.field public static final TAG_OID:I = 0x6

.field public static final TAG_PRINTABLE_STRING:I = 0x13

.field public static final TAG_SEQUENCE:I = 0x30

.field public static final TAG_SET:I = 0x31

.field public static final TAG_UTC_TIME:I = 0x17

.field public static final TAG_UTF8_STRING:I = 0xc


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 52
    new-array v0, v0, [B

    sput-object v0, Lmpl/Der;->EMPTY:[B

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()[B
    .registers 1

    .line 30
    sget-object v0, Lmpl/Der;->EMPTY:[B

    return-object v0
.end method

.method private static ascii(Ljava/lang/String;)[B
    .registers 5

    if-eqz p0, :cond_26

    .line 551
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 552
    :goto_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_25

    .line 553
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x7f

    if-gt v2, v3, :cond_1d

    int-to-byte v2, v2

    .line 557
    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 555
    :cond_1d
    new-instance p0, Lmpl/Der$DerException;

    const-string v0, "ascii: non-ASCII character"

    invoke-direct {p0, v0}, Lmpl/Der$DerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_25
    return-object v0

    .line 549
    :cond_26
    new-instance p0, Lmpl/Der$DerException;

    const-string v0, "ascii: null"

    invoke-direct {p0, v0}, Lmpl/Der$DerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static bitString(I[B)[B
    .registers 5

    if-ltz p0, :cond_21

    const/4 v0, 0x7

    if-gt p0, v0, :cond_21

    const/4 v0, 0x0

    if-nez p1, :cond_a

    const/4 v1, 0x0

    goto :goto_b

    .line 404
    :cond_a
    array-length v1, p1

    :goto_b
    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v1, v1, [B

    int-to-byte p0, p0

    .line 405
    aput-byte p0, v1, v0

    if-eqz p1, :cond_1b

    .line 406
    array-length p0, p1

    if-lez p0, :cond_1b

    .line 407
    array-length p0, p1

    invoke-static {p1, v0, v1, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1b
    const/4 p0, 0x3

    .line 409
    invoke-static {p0, v1}, Lmpl/Der;->tlv(I[B)[B

    move-result-object p0

    return-object p0

    .line 402
    :cond_21
    new-instance p1, Lmpl/Der$DerException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bitString: bad unused-bit count: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lmpl/Der$DerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static bitString([B)[B
    .registers 2

    const/4 v0, 0x0

    .line 397
    invoke-static {v0, p0}, Lmpl/Der;->bitString(I[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static varargs concat([[B)[B
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 368
    :goto_3
    array-length v3, p0

    if-ge v1, v3, :cond_f

    .line 369
    aget-object v3, p0, v1

    if-eqz v3, :cond_c

    .line 370
    array-length v3, v3

    add-int/2addr v2, v3

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 373
    :cond_f
    new-array v1, v2, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 375
    :goto_13
    array-length v4, p0

    if-ge v2, v4, :cond_28

    .line 376
    aget-object v4, p0, v2

    if-eqz v4, :cond_25

    array-length v5, v4

    if-lez v5, :cond_25

    .line 377
    array-length v5, v4

    invoke-static {v4, v0, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 378
    aget-object v4, p0, v2

    array-length v4, v4

    add-int/2addr v3, v4

    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_28
    return-object v1
.end method

.method public static context(I[B)[B
    .registers 4

    if-ltz p0, :cond_e

    const/16 v0, 0x1e

    if-gt p0, v0, :cond_e

    .line 468
    sget v0, Lmpl/Der;->CONTEXT_CONSTRUCTED:I

    or-int/2addr p0, v0

    invoke-static {p0, p1}, Lmpl/Der;->tlv(I[B)[B

    move-result-object p0

    return-object p0

    .line 466
    :cond_e
    new-instance p1, Lmpl/Der$DerException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "context: tag number out of range: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lmpl/Der$DerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static encodeLength(I)[B
    .registers 6

    if-ltz p0, :cond_2e

    const/16 v0, 0x80

    const/4 v1, 0x0

    if-ge p0, v0, :cond_e

    int-to-byte p0, p0

    const/4 v0, 0x1

    .line 355
    new-array v0, v0, [B

    aput-byte p0, v0, v1

    return-object v0

    .line 357
    :cond_e
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x27

    div-int/lit8 v0, v0, 0x8

    add-int/lit8 v2, v0, 0x1

    .line 358
    new-array v2, v2, [B

    or-int/lit16 v3, v0, 0x80

    int-to-byte v3, v3

    .line 359
    aput-byte v3, v2, v1

    :goto_1f
    if-ge v1, v0, :cond_2d

    sub-int v3, v0, v1

    mul-int/lit8 v4, v1, 0x8

    ushr-int v4, p0, v4

    int-to-byte v4, v4

    .line 361
    aput-byte v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :cond_2d
    return-object v2

    .line 352
    :cond_2e
    new-instance p0, Lmpl/Der$DerException;

    const-string v0, "encodeLength: negative length"

    invoke-direct {p0, v0}, Lmpl/Der$DerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static enumerated(J)[B
    .registers 3

    const/16 v0, 0xa

    .line 426
    invoke-static {p0, p1}, Lmpl/Der;->minimalIntegerBytes(J)[B

    move-result-object p0

    invoke-static {v0, p0}, Lmpl/Der;->tlv(I[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static integer(J)[B
    .registers 3

    const/4 v0, 0x2

    .line 422
    invoke-static {p0, p1}, Lmpl/Der;->minimalIntegerBytes(J)[B

    move-result-object p0

    invoke-static {v0, p0}, Lmpl/Der;->tlv(I[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static integerContent([B)[B
    .registers 2

    const/4 v0, 0x2

    .line 418
    invoke-static {v0, p0}, Lmpl/Der;->tlv(I[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static isSequence(Lmpl/Der$Node;)Z
    .registers 2

    if-eqz p0, :cond_c

    .line 575
    invoke-virtual {p0}, Lmpl/Der$Node;->tag()I

    move-result p0

    const/16 v0, 0x30

    if-ne p0, v0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method private static minimalIntegerBytes(J)[B
    .registers 8

    const/16 v0, 0x8

    .line 430
    new-array v1, v0, [B

    const/4 v2, 0x7

    const/4 v3, 0x7

    :goto_6
    if-ltz v3, :cond_10

    long-to-int v4, p0

    int-to-byte v4, v4

    .line 433
    aput-byte v4, v1, v3

    shr-long/2addr p0, v0

    add-int/lit8 v3, v3, -0x1

    goto :goto_6

    :cond_10
    const/4 p0, 0x0

    :goto_11
    if-ge p0, v2, :cond_29

    .line 438
    aget-byte p1, v1, p0

    add-int/lit8 v3, p0, 0x1

    .line 439
    aget-byte v4, v1, v3

    if-nez p1, :cond_20

    and-int/lit16 v5, v4, 0x80

    if-nez v5, :cond_20

    goto :goto_27

    :cond_20
    const/4 v5, -0x1

    if-ne p1, v5, :cond_29

    and-int/lit16 p1, v4, 0x80

    if-eqz p1, :cond_29

    :goto_27
    move p0, v3

    goto :goto_11

    .line 448
    :cond_29
    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static nullValue()[B
    .registers 1

    const/4 v0, 0x2

    .line 413
    new-array v0, v0, [B

    fill-array-data v0, :array_8

    return-object v0

    nop

    :array_8
    .array-data 1
        0x5t
        0x0t
    .end array-data
.end method

.method public static octetString([B)[B
    .registers 2

    const/4 v0, 0x4

    .line 393
    invoke-static {v0, p0}, Lmpl/Der;->tlv(I[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static oid(Ljava/lang/String;)[B
    .registers 12

    if-eqz p0, :cond_b9

    .line 472
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_b9

    .line 475
    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 476
    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_a5

    .line 479
    array-length v1, v0

    new-array v3, v1, [J

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 480
    :goto_17
    array-length v6, v0

    if-ge v5, v6, :cond_57

    .line 482
    :try_start_1a
    aget-object v6, v0, v5

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    aput-wide v6, v3, v5
    :try_end_26
    .catch Ljava/lang/NumberFormatException; {:try_start_1a .. :try_end_26} :catch_43

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-ltz v10, :cond_2f

    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    .line 487
    :cond_2f
    new-instance v0, Lmpl/Der$DerException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "oid: negative arc in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lmpl/Der$DerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 484
    :catch_43
    new-instance v0, Lmpl/Der$DerException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "oid: bad arc in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lmpl/Der$DerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 490
    :cond_57
    aget-wide v5, v3, v4

    const-wide/16 v7, 0x2

    cmp-long v0, v5, v7

    if-gtz v0, :cond_91

    const/4 v0, 0x1

    cmp-long v9, v5, v7

    if-gez v9, :cond_6c

    aget-wide v5, v3, v0

    const-wide/16 v7, 0x27

    cmp-long v9, v5, v7

    if-gtz v9, :cond_91

    .line 493
    :cond_6c
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 494
    aget-wide v4, v3, v4

    const-wide/16 v6, 0x28

    mul-long v4, v4, v6

    aget-wide v6, v3, v0

    add-long/2addr v4, v6

    invoke-static {p0, v4, v5}, Lmpl/Der;->writeBase128(Ljava/io/ByteArrayOutputStream;J)V

    :goto_7d
    if-ge v2, v1, :cond_87

    .line 496
    aget-wide v4, v3, v2

    invoke-static {p0, v4, v5}, Lmpl/Der;->writeBase128(Ljava/io/ByteArrayOutputStream;J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7d

    :cond_87
    const/4 v0, 0x6

    .line 498
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {v0, p0}, Lmpl/Der;->tlv(I[B)[B

    move-result-object p0

    return-object p0

    .line 491
    :cond_91
    new-instance v0, Lmpl/Der$DerException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "oid: invalid first arcs in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lmpl/Der$DerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 477
    :cond_a5
    new-instance v0, Lmpl/Der$DerException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "oid: needs at least two arcs: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lmpl/Der$DerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 473
    :cond_b9
    new-instance p0, Lmpl/Der$DerException;

    const-string v0, "oid: empty"

    invoke-direct {p0, v0}, Lmpl/Der$DerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static oidString([B)Ljava/lang/String;
    .registers 14

    if-eqz p0, :cond_56

    .line 519
    array-length v0, p0

    if-eqz v0, :cond_56

    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 523
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    .line 524
    div-int/lit8 v3, v2, 0x28

    const/4 v4, 0x2

    if-le v3, v4, :cond_17

    const/4 v3, 0x2

    .line 528
    :cond_17
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x2e

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    mul-int/lit8 v3, v3, 0x28

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    const-wide/16 v5, 0x0

    move-wide v7, v5

    const/4 v3, 0x0

    .line 531
    :goto_2a
    array-length v9, p0

    if-ge v2, v9, :cond_51

    .line 532
    aget-byte v9, p0, v2

    const/4 v10, 0x7

    shl-long/2addr v7, v10

    and-int/lit8 v11, v9, 0x7f

    int-to-long v11, v11

    or-long/2addr v7, v11

    add-int/2addr v3, v10

    const/16 v10, 0x3f

    if-gt v3, v10, :cond_49

    and-int/lit16 v9, v9, 0x80

    if-nez v9, :cond_46

    .line 539
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-wide v7, v5

    const/4 v3, 0x0

    :cond_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 536
    :cond_49
    new-instance p0, Lmpl/Der$DerException;

    const-string v0, "oidString: arc too large"

    invoke-direct {p0, v0}, Lmpl/Der$DerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 544
    :cond_51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 520
    :cond_56
    new-instance p0, Lmpl/Der$DerException;

    const-string v0, "oidString: empty content"

    invoke-direct {p0, v0}, Lmpl/Der$DerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static parse([B)Lmpl/Der$Node;
    .registers 6

    if-eqz p0, :cond_3a

    .line 213
    array-length v0, p0

    if-eqz v0, :cond_32

    const/4 v0, 0x0

    .line 216
    filled-new-array {v0}, [I

    move-result-object v1

    .line 217
    array-length v2, p0

    invoke-static {p0, v0, v2, v0, v1}, Lmpl/Der;->read([BIII[I)Lmpl/Der$Node;

    move-result-object v2

    .line 218
    aget v3, v1, v0

    array-length v4, p0

    if-ne v3, v4, :cond_15

    return-object v2

    .line 219
    :cond_15
    new-instance v2, Lmpl/Der$DerException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "parse: trailing bytes after DER value ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p0, p0

    aget v0, v1, v0

    sub-int/2addr p0, v0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Lmpl/Der$DerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 214
    :cond_32
    new-instance p0, Lmpl/Der$DerException;

    const-string v0, "parse: empty input"

    invoke-direct {p0, v0}, Lmpl/Der$DerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 211
    :cond_3a
    new-instance p0, Lmpl/Der$DerException;

    const-string v0, "parse: null input"

    invoke-direct {p0, v0}, Lmpl/Der$DerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static printableString(Ljava/lang/String;)[B
    .registers 2

    const/16 v0, 0x13

    .line 456
    invoke-static {p0}, Lmpl/Der;->ascii(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {v0, p0}, Lmpl/Der;->tlv(I[B)[B

    move-result-object p0

    return-object p0
.end method

.method private static read([BIII[I)Lmpl/Der$Node;
    .registers 25

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    const/16 v4, 0x40

    if-gt v3, v4, :cond_12c

    if-ge v1, v2, :cond_124

    add-int/lit8 v4, v1, 0x1

    .line 232
    aget-byte v5, v0, v1

    and-int/lit8 v6, v5, 0x1f

    const/16 v7, 0x80

    const/16 v8, 0x1f

    const/4 v9, 0x1

    if-ne v6, v8, :cond_3d

    const/4 v6, 0x1

    :goto_1c
    if-ge v4, v2, :cond_35

    add-int/lit8 v8, v4, 0x1

    .line 239
    aget-byte v4, v0, v4

    add-int/2addr v6, v9

    const/4 v10, 0x5

    if-gt v6, v10, :cond_2d

    and-int/2addr v4, v7

    if-nez v4, :cond_2b

    move v4, v8

    goto :goto_3e

    :cond_2b
    move v4, v8

    goto :goto_1c

    .line 242
    :cond_2d
    new-instance v0, Lmpl/Der$DerException;

    const-string v1, "parse: identifier longer than 5 octets"

    invoke-direct {v0, v1}, Lmpl/Der$DerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_35
    new-instance v0, Lmpl/Der$DerException;

    const-string v1, "parse: truncated high-tag-number identifier"

    invoke-direct {v0, v1}, Lmpl/Der$DerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3d
    const/4 v6, 0x1

    :goto_3e
    add-int/2addr v6, v1

    .line 249
    invoke-static {v0, v1, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v11

    if-ge v4, v2, :cond_11c

    add-int/lit8 v6, v4, 0x1

    .line 254
    aget-byte v4, v0, v4

    and-int/lit16 v8, v4, 0xff

    const/16 v16, 0x0

    if-ge v8, v7, :cond_50

    goto :goto_7f

    :cond_50
    and-int/lit8 v4, v4, 0x7f

    if-eqz v4, :cond_114

    const/4 v7, 0x4

    if-gt v4, v7, :cond_10c

    add-int v7, v6, v4

    if-gt v7, v2, :cond_104

    const/4 v10, 0x0

    const-wide/16 v12, 0x0

    :goto_5e
    if-ge v10, v4, :cond_71

    const/16 v14, 0x8

    shl-long/2addr v12, v14

    add-int/lit8 v14, v6, 0x1

    .line 271
    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    const-wide/16 v17, 0x0

    int-to-long v7, v6

    or-long/2addr v12, v7

    add-int/lit8 v10, v10, 0x1

    move v6, v14

    goto :goto_5e

    :cond_71
    const-wide/16 v17, 0x0

    cmp-long v4, v12, v17

    if-ltz v4, :cond_f0

    const-wide/32 v7, 0x7fffffef

    cmp-long v4, v12, v7

    if-gtz v4, :cond_f0

    long-to-int v8, v12

    :goto_7f
    int-to-long v12, v6

    int-to-long v7, v8

    add-long/2addr v12, v7

    int-to-long v7, v2

    cmp-long v2, v12, v7

    if-gtz v2, :cond_e8

    long-to-int v2, v12

    and-int/lit8 v4, v5, 0x20

    if-eqz v4, :cond_8e

    const/4 v4, 0x1

    goto :goto_8f

    :cond_8e
    const/4 v4, 0x0

    :goto_8f
    const/4 v5, 0x0

    if-eqz v4, :cond_c7

    .line 290
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v7, v6

    :goto_98
    if-ge v7, v2, :cond_ac

    .line 295
    :try_start_9a
    filled-new-array {v7}, [I

    move-result-object v8

    add-int/lit8 v10, v3, 0x1

    .line 296
    invoke-static {v0, v7, v2, v10, v8}, Lmpl/Der;->read([BIII[I)Lmpl/Der$Node;

    move-result-object v10

    .line 297
    aget v7, v8, v16

    .line 298
    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a9
    .catch Lmpl/Der$DerException; {:try_start_9a .. :try_end_a9} :catch_aa

    goto :goto_98

    :catch_aa
    nop

    const/4 v9, 0x0

    :cond_ac
    if-eqz v9, :cond_c2

    if-ne v7, v2, :cond_c2

    .line 304
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lmpl/Der$Node;

    invoke-interface {v4, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lmpl/Der$Node;

    move-object/from16 v19, v5

    move-object v5, v3

    move-object/from16 v3, v19

    goto :goto_cb

    .line 308
    :cond_c2
    invoke-static {v0, v6, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    goto :goto_cb

    .line 311
    :cond_c7
    invoke-static {v0, v6, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    :goto_cb
    move-object v13, v3

    move-object v14, v5

    .line 314
    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v12

    .line 315
    aput v2, p4, v16

    .line 316
    new-instance v10, Lmpl/Der$Node;

    const/4 v15, 0x0

    invoke-direct/range {v10 .. v15}, Lmpl/Der$Node;-><init>([B[B[B[Lmpl/Der$Node;Lmpl/Der$1;)V

    if-eqz v14, :cond_e7

    const/4 v0, 0x0

    .line 320
    :goto_dc
    array-length v1, v14

    if-ge v0, v1, :cond_e7

    .line 321
    aget-object v1, v14, v0

    # setter for: Lmpl/Der$Node;->parentNode:Lmpl/Der$Node;
    invoke-static {v1, v10}, Lmpl/Der$Node;->access$202(Lmpl/Der$Node;Lmpl/Der$Node;)Lmpl/Der$Node;

    add-int/lit8 v0, v0, 0x1

    goto :goto_dc

    :cond_e7
    return-object v10

    .line 282
    :cond_e8
    new-instance v0, Lmpl/Der$DerException;

    const-string v1, "parse: content runs past end of input"

    invoke-direct {v0, v1}, Lmpl/Der$DerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_f0
    new-instance v0, Lmpl/Der$DerException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "parse: length out of supported range: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lmpl/Der$DerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 267
    :cond_104
    new-instance v0, Lmpl/Der$DerException;

    const-string v1, "parse: truncated long-form length"

    invoke-direct {v0, v1}, Lmpl/Der$DerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_10c
    new-instance v0, Lmpl/Der$DerException;

    const-string v1, "parse: length field longer than 4 octets"

    invoke-direct {v0, v1}, Lmpl/Der$DerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_114
    new-instance v0, Lmpl/Der$DerException;

    const-string v1, "parse: indefinite length is not DER"

    invoke-direct {v0, v1}, Lmpl/Der$DerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_11c
    new-instance v0, Lmpl/Der$DerException;

    const-string v1, "parse: truncated length"

    invoke-direct {v0, v1}, Lmpl/Der$DerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_124
    new-instance v0, Lmpl/Der$DerException;

    const-string v1, "parse: truncated identifier"

    invoke-direct {v0, v1}, Lmpl/Der$DerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_12c
    new-instance v0, Lmpl/Der$DerException;

    const-string v1, "parse: nesting deeper than 64"

    invoke-direct {v0, v1}, Lmpl/Der$DerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs sequence([[B)[B
    .registers 2

    const/16 v0, 0x30

    .line 385
    invoke-static {p0}, Lmpl/Der;->concat([[B)[B

    move-result-object p0

    invoke-static {v0, p0}, Lmpl/Der;->tlv(I[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static varargs set([[B)[B
    .registers 2

    const/16 v0, 0x31

    .line 389
    invoke-static {p0}, Lmpl/Der;->concat([[B)[B

    move-result-object p0

    invoke-static {v0, p0}, Lmpl/Der;->tlv(I[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static tlv(I[B)[B
    .registers 4

    int-to-byte p0, p0

    const/4 v0, 0x1

    .line 332
    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p0, v0, v1

    invoke-static {v0, p1}, Lmpl/Der;->tlv([B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static tlv([B[B)[B
    .registers 8

    if-eqz p0, :cond_27

    .line 336
    array-length v0, p0

    if-eqz v0, :cond_27

    const/4 v0, 0x0

    if-nez p1, :cond_a

    const/4 v1, 0x0

    goto :goto_b

    .line 339
    :cond_a
    array-length v1, p1

    .line 340
    :goto_b
    invoke-static {v1}, Lmpl/Der;->encodeLength(I)[B

    move-result-object v2

    .line 341
    array-length v3, p0

    array-length v4, v2

    add-int/2addr v3, v4

    add-int/2addr v3, v1

    new-array v3, v3, [B

    .line 342
    array-length v4, p0

    invoke-static {p0, v0, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 343
    array-length v4, p0

    array-length v5, v2

    invoke-static {v2, v0, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-lez v1, :cond_26

    .line 345
    array-length p0, p0

    array-length v2, v2

    add-int/2addr p0, v2

    invoke-static {p1, v0, v3, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_26
    return-object v3

    .line 337
    :cond_27
    new-instance p0, Lmpl/Der$DerException;

    const-string p1, "tlv: empty tag"

    invoke-direct {p0, p1}, Lmpl/Der$DerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static utcTime(Ljava/lang/String;)[B
    .registers 2

    const/16 v0, 0x17

    .line 460
    invoke-static {p0}, Lmpl/Der;->ascii(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {v0, p0}, Lmpl/Der;->tlv(I[B)[B

    move-result-object p0

    return-object p0
.end method

.method private static utf8(Ljava/lang/String;)[B
    .registers 2

    if-eqz p0, :cond_11

    .line 567
    :try_start_2
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_8} :catch_9

    return-object p0

    .line 569
    :catch_9
    new-instance p0, Lmpl/Der$DerException;

    const-string v0, "utf8: unsupported encoding"

    invoke-direct {p0, v0}, Lmpl/Der$DerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 564
    :cond_11
    new-instance p0, Lmpl/Der$DerException;

    const-string v0, "utf8: null"

    invoke-direct {p0, v0}, Lmpl/Der$DerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static utf8String(Ljava/lang/String;)[B
    .registers 2

    const/16 v0, 0xc

    .line 452
    invoke-static {p0}, Lmpl/Der;->utf8(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {v0, p0}, Lmpl/Der;->tlv(I[B)[B

    move-result-object p0

    return-object p0
.end method

.method private static writeBase128(Ljava/io/ByteArrayOutputStream;J)V
    .registers 10

    const/4 v0, 0x1

    move-wide v1, p1

    const/4 v3, 0x1

    :goto_3
    const-wide/16 v4, 0x80

    cmp-long v6, v1, v4

    if-ltz v6, :cond_e

    const/4 v4, 0x7

    ushr-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_e
    sub-int/2addr v3, v0

    :goto_f
    if-ltz v3, :cond_23

    mul-int/lit8 v0, v3, 0x7

    ushr-long v0, p1, v0

    const-wide/16 v4, 0x7f

    and-long/2addr v0, v4

    long-to-int v1, v0

    if-eqz v3, :cond_1d

    or-int/lit16 v1, v1, 0x80

    .line 513
    :cond_1d
    invoke-virtual {p0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_f

    :cond_23
    return-void
.end method
