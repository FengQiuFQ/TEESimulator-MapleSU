.class public final Lj1/g;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public final b:[B


# direct methods
.method public constructor <init>(I[B)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lj1/g;->a:I

    iput-object p2, p0, Lj1/g;->b:[B

    return-void
.end method

.method public constructor <init>([BI)V
    .registers 3

    packed-switch p2, :pswitch_data_12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    iput p2, p0, Lj1/g;->a:I

    iput-object p1, p0, Lj1/g;->b:[B

    return-void

    :pswitch_c
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj1/g;->b:[B

    return-void

    :pswitch_data_12
    .packed-switch 0x2
        :pswitch_c
    .end packed-switch
.end method

.method public constructor <init>([B[B)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lj1/g;->a:I

    iput-object p2, p0, Lj1/g;->b:[B

    :goto_8
    array-length v1, p1

    if-eq v0, v1, :cond_1c

    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    if-ne v1, v2, :cond_14

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "magic-number incorrect"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1c
    iget p2, p0, Lj1/g;->a:I

    array-length p1, p1

    add-int/2addr p2, p1

    iput p2, p0, Lj1/g;->a:I

    return-void
.end method


# virtual methods
.method public a()La/c;
    .registers 12

    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    :goto_3
    iget v3, p0, Lj1/g;->a:I

    iget-object v4, p0, Lj1/g;->b:[B

    array-length v5, v4

    if-ge v3, v5, :cond_79

    invoke-virtual {p0}, Lj1/g;->f()J

    move-result-wide v5

    const/4 v3, 0x3

    ushr-long v7, v5, v3

    const-wide/16 v9, 0x7

    and-long/2addr v5, v9

    long-to-int v3, v5

    const-wide/16 v5, 0x1

    cmp-long v5, v7, v5

    if-nez v5, :cond_36

    invoke-virtual {p0}, Lj1/g;->f()J

    move-result-wide v5

    long-to-int v1, v5

    iget v3, p0, Lj1/g;->a:I

    add-int v5, v3, v1

    array-length v6, v4

    if-le v5, v6, :cond_28

    return-object v0

    :cond_28
    new-instance v5, Ljava/lang/String;

    sget-object v6, Ll/a;->a:Ljava/nio/charset/Charset;

    invoke-direct {v5, v4, v3, v1, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v3, p0, Lj1/g;->a:I

    add-int/2addr v3, v1

    iput v3, p0, Lj1/g;->a:I

    move-object v1, v5

    goto :goto_3

    :cond_36
    const-wide/16 v4, 0x2

    cmp-long v4, v7, v4

    if-nez v4, :cond_45

    invoke-virtual {p0}, Lj1/g;->f()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_3

    :cond_45
    if-eqz v3, :cond_75

    const/4 v4, 0x1

    if-eq v3, v4, :cond_6e

    const/4 v4, 0x2

    if-eq v3, v4, :cond_63

    const/4 v4, 0x5

    if-ne v3, v4, :cond_57

    iget v3, p0, Lj1/g;->a:I

    add-int/lit8 v3, v3, 0x4

    iput v3, p0, Lj1/g;->a:I

    goto :goto_3

    :cond_57
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unknown wire type "

    invoke-static {v3, v0}, Lb/b;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_63
    invoke-virtual {p0}, Lj1/g;->f()J

    move-result-wide v3

    long-to-int v3, v3

    iget v4, p0, Lj1/g;->a:I

    add-int/2addr v4, v3

    iput v4, p0, Lj1/g;->a:I

    goto :goto_3

    :cond_6e
    iget v3, p0, Lj1/g;->a:I

    add-int/lit8 v3, v3, 0x8

    iput v3, p0, Lj1/g;->a:I

    goto :goto_3

    :cond_75
    invoke-virtual {p0}, Lj1/g;->f()J

    goto :goto_3

    :cond_79
    if-eqz v1, :cond_83

    if-eqz v2, :cond_83

    new-instance p0, La/c;

    invoke-direct {p0, v1, v2}, La/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_83
    return-object v0
.end method

.method public b()Ljava/math/BigInteger;
    .registers 6

    invoke-virtual {p0}, Lj1/g;->e()I

    move-result v0

    iget v1, p0, Lj1/g;->a:I

    add-int v2, v1, v0

    iget-object v3, p0, Lj1/g;->b:[B

    array-length v4, v3

    if-gt v2, v4, :cond_1b

    add-int/2addr v0, v1

    iput v0, p0, Lj1/g;->a:I

    invoke-static {v3, v1, v0}, Lm4/d;->q([BII)[B

    move-result-object p0

    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0

    :cond_1b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "not enough data for big num"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public c()[B
    .registers 5

    invoke-virtual {p0}, Lj1/g;->e()I

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0

    :cond_a
    iget v1, p0, Lj1/g;->a:I

    iget-object v2, p0, Lj1/g;->b:[B

    array-length v3, v2

    sub-int/2addr v3, v0

    if-gt v1, v3, :cond_1a

    add-int/2addr v0, v1

    iput v0, p0, Lj1/g;->a:I

    invoke-static {v2, v1, v0}, Lm4/d;->q([BII)[B

    move-result-object p0

    return-object p0

    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "not enough data for block"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public d()Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Lj1/g;->c()[B

    move-result-object p0

    invoke-static {p0}, Lm4/m;->a([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public e()I
    .registers 6

    iget v0, p0, Lj1/g;->a:I

    iget-object v1, p0, Lj1/g;->b:[B

    array-length v2, v1

    add-int/lit8 v2, v2, -0x4

    if-gt v0, v2, :cond_33

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lj1/g;->a:I

    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    add-int/lit8 v4, v0, 0x2

    iput v4, p0, Lj1/g;->a:I

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x3

    iput v3, p0, Lj1/g;->a:I

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v2, v4

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lj1/g;->a:I

    aget-byte p0, v1, v3

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v2

    return p0

    :cond_33
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "4 bytes for U32 exceeds buffer."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public f()J
    .registers 7

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_3
    iget v3, p0, Lj1/g;->a:I

    iget-object v4, p0, Lj1/g;->b:[B

    array-length v5, v4

    if-ge v3, v5, :cond_1d

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lj1/g;->a:I

    aget-byte v3, v4, v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_1a

    return-wide v0

    :cond_1a
    add-int/lit8 v2, v2, 0x7

    goto :goto_3

    :cond_1d
    return-wide v0
.end method

.method public g()V
    .registers 4

    invoke-virtual {p0}, Lj1/g;->e()I

    move-result v0

    iget v1, p0, Lj1/g;->a:I

    iget-object v2, p0, Lj1/g;->b:[B

    array-length v2, v2

    sub-int/2addr v2, v0

    if-gt v1, v2, :cond_10

    add-int/2addr v1, v0

    iput v1, p0, Lj1/g;->a:I

    return-void

    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "not enough data for block"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
