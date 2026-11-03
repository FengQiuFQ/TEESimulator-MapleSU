.class public abstract Lm4/d;
.super Ljava/lang/Object;


# static fields
.field public static final a:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lm4/d;->a:[C

    return-void

    :array_a
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
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public static A(I[B[I)V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_f

    invoke-static {p0, p1}, Lm4/d;->z(I[B)I

    move-result v1

    aput v1, p2, v0

    add-int/lit8 p0, p0, 0x4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    return-void
.end method

.method public static B([BI[III)V
    .registers 8

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p4, :cond_10

    add-int v1, p3, v0

    invoke-static {p1, p0}, Lm4/d;->z(I[B)I

    move-result v2

    aput v2, p2, v1

    add-int/lit8 p1, p1, 0x4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_10
    return-void
.end method

.method public static C(I[B)J
    .registers 7

    invoke-static {p0, p1}, Lm4/d;->z(I[B)I

    move-result v0

    add-int/lit8 p0, p0, 0x4

    invoke-static {p0, p1}, Lm4/d;->z(I[B)I

    move-result p0

    int-to-long p0, p0

    const-wide v1, 0xffffffffL

    and-long/2addr p0, v1

    const/16 v3, 0x20

    shl-long/2addr p0, v3

    int-to-long v3, v0

    and-long v0, v3, v1

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static D(I[B[J)V
    .registers 6

    const/4 v0, 0x0

    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_f

    invoke-static {p0, p1}, Lm4/d;->C(I[B)J

    move-result-wide v1

    aput-wide v1, p2, v0

    add-int/lit8 p0, p0, 0x8

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    return-void
.end method

.method public static E(IJ[B)V
    .registers 6

    const/16 v0, 0x20

    ushr-long v0, p1, v0

    long-to-int v0, v0

    invoke-static {p3, v0, p0}, Lm4/d;->w([BII)V

    const-wide v0, 0xffffffffL

    and-long/2addr p1, v0

    long-to-int p1, p1

    add-int/lit8 p0, p0, 0x4

    invoke-static {p3, p1, p0}, Lm4/d;->w([BII)V

    return-void
.end method

.method public static F(IJ[B)V
    .registers 6

    const-wide v0, 0xffffffffL

    and-long/2addr v0, p1

    long-to-int v0, v0

    invoke-static {p3, v0, p0}, Lm4/d;->x([BII)V

    const/16 v0, 0x20

    ushr-long/2addr p1, v0

    long-to-int p1, p1

    add-int/lit8 p0, p0, 0x4

    invoke-static {p3, p1, p0}, Lm4/d;->x([BII)V

    return-void
.end method

.method public static G(I[B[J)V
    .registers 6

    const/4 v0, 0x0

    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_e

    aget-wide v1, p2, v0

    invoke-static {p0, v1, v2, p1}, Lm4/d;->F(IJ[B)V

    add-int/lit8 p0, p0, 0x8

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_e
    return-void
.end method

.method public static H([B)[B
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    array-length v0, p0

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_8
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_14

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p0, v2

    aput-byte v2, v1, v0

    move v2, v3

    goto :goto_8

    :cond_14
    return-object v1
.end method

.method public static I([B)V
    .registers 6

    if-nez p0, :cond_3

    return-void

    :cond_3
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_18

    aget-byte v2, p0, v1

    aget-byte v3, p0, v0

    add-int/lit8 v4, v1, 0x1

    aput-byte v3, p0, v1

    add-int/lit8 v1, v0, -0x1

    aput-byte v2, p0, v0

    move v0, v1

    move v1, v4

    goto :goto_7

    :cond_18
    return-void
.end method

.method public static J(IIII)Z
    .registers 5

    if-lez p1, :cond_d

    if-lez p3, :cond_d

    sub-int v0, p0, p2

    if-ge v0, p3, :cond_d

    sub-int/2addr p2, p0

    if-ge p2, p1, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public static K([B[BI[BI)V
    .registers 9

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x10

    if-ge v0, v1, :cond_14

    add-int v1, p4, v0

    aget-byte v2, p0, v0

    add-int v3, p2, v0

    aget-byte v3, p1, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_14
    return-void
.end method

.method public static L([BII[BI)V
    .registers 9

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_12

    add-int v1, p4, v0

    aget-byte v2, p3, v1

    add-int v3, p2, v0

    aget-byte v3, p0, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_12
    return-void
.end method

.method public static M([BI[B)V
    .registers 6

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_e

    aget-byte v1, p2, v0

    aget-byte v2, p0, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_e
    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 2

    if-eq p0, p1, :cond_f

    if-eqz p0, :cond_d

    if-eqz p1, :cond_d

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method public static b(I[B)I
    .registers 4

    aget-byte v0, p1, p0

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p0, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p0, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p0, p0, 0x3

    aget-byte p0, p1, p0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method public static c(I[B)J
    .registers 6

    invoke-static {p0, p1}, Lm4/d;->b(I[B)I

    move-result v0

    add-int/lit8 p0, p0, 0x4

    invoke-static {p0, p1}, Lm4/d;->b(I[B)I

    move-result p0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/16 p1, 0x20

    shl-long/2addr v0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static d([B)V
    .registers 2

    if-eqz p0, :cond_6

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([BB)V

    :cond_6
    return-void
.end method

.method public static e([B)[B
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public static f([I)[I
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0
.end method

.method public static g([J)[J
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-virtual {p0}, [J->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [J

    return-object p0
.end method

.method public static h([J[J)[J
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    if-eqz p1, :cond_11

    array-length v0, p1

    array-length v1, p0

    if-eq v0, v1, :cond_b

    goto :goto_11

    :cond_b
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    :cond_11
    :goto_11
    invoke-static {p0}, Lm4/d;->g([J)[J

    move-result-object p0

    return-object p0
.end method

.method public static i([S)[S
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-virtual {p0}, [S->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [S

    return-object p0
.end method

.method public static j([B[B)[B
    .registers 5

    if-nez p0, :cond_7

    invoke-static {p1}, Lm4/d;->e([B)[B

    move-result-object p0

    return-object p0

    :cond_7
    if-nez p1, :cond_e

    invoke-static {p0}, Lm4/d;->e([B)[B

    move-result-object p0

    return-object p0

    :cond_e
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static k([B[B[B)[B
    .registers 6

    if-nez p0, :cond_7

    invoke-static {p1, p2}, Lm4/d;->j([B[B)[B

    move-result-object p0

    return-object p0

    :cond_7
    if-nez p1, :cond_e

    invoke-static {p0, p2}, Lm4/d;->j([B[B)[B

    move-result-object p0

    return-object p0

    :cond_e
    if-nez p2, :cond_15

    invoke-static {p0, p1}, Lm4/d;->j([B[B)[B

    move-result-object p0

    return-object p0

    :cond_15
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    array-length v1, p2

    add-int/2addr v0, v1

    new-array v0, v0, [B

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p1

    add-int/2addr p0, p1

    array-length p1, p2

    invoke-static {p2, v2, v0, p0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static l([B[B[B[B)[B
    .registers 7

    if-nez p0, :cond_7

    invoke-static {p1, p2, p3}, Lm4/d;->k([B[B[B)[B

    move-result-object p0

    return-object p0

    :cond_7
    if-nez p1, :cond_e

    invoke-static {p0, p2, p3}, Lm4/d;->k([B[B[B)[B

    move-result-object p0

    return-object p0

    :cond_e
    if-nez p2, :cond_15

    invoke-static {p0, p1, p3}, Lm4/d;->k([B[B[B)[B

    move-result-object p0

    return-object p0

    :cond_15
    if-nez p3, :cond_1c

    invoke-static {p0, p1, p2}, Lm4/d;->k([B[B[B)[B

    move-result-object p0

    return-object p0

    :cond_1c
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    array-length v1, p2

    add-int/2addr v0, v1

    array-length v1, p3

    add-int/2addr v0, v1

    new-array v0, v0, [B

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p1

    add-int/2addr p0, p1

    array-length p1, p2

    invoke-static {p2, v2, v0, p0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p2

    add-int/2addr p0, p1

    array-length p1, p3

    invoke-static {p3, v2, v0, p0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static m([[B)[B
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_3
    array-length v3, p0

    if-eq v1, v3, :cond_d

    aget-object v3, p0, v1

    array-length v3, v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_d
    new-array v1, v2, [B

    move v2, v0

    move v3, v2

    :goto_11
    array-length v4, p0

    if-eq v2, v4, :cond_21

    aget-object v4, p0, v2

    array-length v5, v4

    invoke-static {v4, v0, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v4, p0, v2

    array-length v4, v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_21
    return-object v1
.end method

.method public static n(II[B[B)Z
    .registers 9

    if-eqz p2, :cond_39

    if-ltz p0, :cond_31

    array-length v0, p2

    sub-int/2addr v0, p0

    if-ltz v0, :cond_29

    array-length v0, p3

    sub-int/2addr v0, p0

    if-gt p1, v0, :cond_21

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_f
    if-ge v1, p0, :cond_1c

    aget-byte v3, p2, v1

    add-int v4, p1, v1

    aget-byte v4, p3, v4

    xor-int/2addr v3, v4

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1c
    if-nez v2, :cond_20

    const/4 p0, 0x1

    return p0

    :cond_20
    return v0

    :cond_21
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "\'bOff\' value invalid for specified length"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_29
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "\'aOff\' value invalid for specified length"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_31
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'len\' cannot be negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_39
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'a\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static o([B[B)Z
    .registers 9

    const/4 v0, 0x0

    if-eqz p0, :cond_2e

    if-nez p1, :cond_6

    goto :goto_2e

    :cond_6
    const/4 v1, 0x1

    if-ne p0, p1, :cond_a

    return v1

    :cond_a
    array-length v2, p0

    array-length v3, p1

    if-ge v2, v3, :cond_10

    array-length v2, p0

    goto :goto_11

    :cond_10
    array-length v2, p1

    :goto_11
    array-length v3, p0

    array-length v4, p1

    xor-int/2addr v3, v4

    move v4, v0

    :goto_15
    if-eq v4, v2, :cond_20

    aget-byte v5, p0, v4

    aget-byte v6, p1, v4

    xor-int/2addr v5, v6

    or-int/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    :cond_20
    :goto_20
    array-length p0, p1

    if-ge v2, p0, :cond_2b

    aget-byte p0, p1, v2

    not-int v4, p0

    xor-int/2addr p0, v4

    or-int/2addr v3, p0

    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    :cond_2b
    if-nez v3, :cond_2e

    return v1

    :cond_2e
    :goto_2e
    return v0
.end method

.method public static p(I[B)[B
    .registers 4

    new-array v0, p0, [B

    array-length v1, p1

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static q([BII)[B
    .registers 5

    invoke-static {p1, p2}, Lm4/d;->s(II)I

    move-result p2

    new-array v0, p2, [B

    array-length v1, p0

    sub-int/2addr v1, p1

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static r(II[I)[I
    .registers 5

    invoke-static {p0, p1}, Lm4/d;->s(II)I

    move-result p1

    new-array v0, p1, [I

    array-length v1, p2

    sub-int/2addr v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {p2, p0, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static s(II)I
    .registers 4

    sub-int v0, p1, p0

    if-ltz v0, :cond_5

    return v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " > "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static t(I[I)I
    .registers 4

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    add-int/lit8 v0, p0, 0x1

    :goto_6
    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_10

    mul-int/lit16 v0, v0, 0x101

    aget v1, p1, p0

    xor-int/2addr v0, v1

    goto :goto_6

    :cond_10
    return v0
.end method

.method public static u([B)I
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    array-length v0, p0

    add-int/lit8 v1, v0, 0x1

    :goto_7
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_11

    mul-int/lit16 v1, v1, 0x101

    aget-byte v2, p0, v0

    xor-int/2addr v1, v2

    goto :goto_7

    :cond_11
    return v1
.end method

.method public static v([JI)I
    .registers 6

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    add-int/lit8 v0, p1, 0x1

    :goto_6
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_18

    aget-wide v1, p0, p1

    mul-int/lit16 v0, v0, 0x101

    long-to-int v3, v1

    xor-int/2addr v0, v3

    mul-int/lit16 v0, v0, 0x101

    const/16 v3, 0x20

    ushr-long/2addr v1, v3

    long-to-int v1, v1

    xor-int/2addr v0, v1

    goto :goto_6

    :cond_18
    return v0
.end method

.method public static w([BII)V
    .registers 5

    ushr-int/lit8 v0, p1, 0x18

    int-to-byte v0, v0

    aput-byte v0, p0, p2

    add-int/lit8 v0, p2, 0x1

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, p2, 0x2

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 p2, p2, 0x3

    int-to-byte p1, p1

    aput-byte p1, p0, p2

    return-void
.end method

.method public static x([BII)V
    .registers 5

    int-to-byte v0, p1

    aput-byte v0, p0, p2

    add-int/lit8 v0, p2, 0x1

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, p2, 0x2

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 p2, p2, 0x3

    ushr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    aput-byte p1, p0, p2

    return-void
.end method

.method public static y([B[I)V
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    array-length v2, p1

    if-ge v0, v2, :cond_f

    aget v2, p1, v0

    invoke-static {p0, v2, v1}, Lm4/d;->x([BII)V

    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_f
    return-void
.end method

.method public static z(I[B)I
    .registers 4

    aget-byte v0, p1, p0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p0, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p0, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p0, p0, 0x3

    aget-byte p0, p1, p0

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method
