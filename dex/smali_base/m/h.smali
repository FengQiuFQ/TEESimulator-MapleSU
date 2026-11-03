.class public final Lm/h;
.super Lm/u;


# static fields
.field public static final q:Lm/a;

.field public static final x:[Lm/h;


# instance fields
.field public final c:[B

.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lm/a;

    const-class v1, Lm/h;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lm/a;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lm/h;->q:Lm/a;

    const/16 v0, 0xc

    new-array v0, v0, [Lm/h;

    sput-object v0, Lm/h;->x:[Lm/h;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_14

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lm/h;->c:[B

    const/4 p1, 0x0

    iput p1, p0, Lm/h;->d:I

    return-void

    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "enumerated must be non-negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Z[B)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lm/l;->z([B)Z

    move-result v0

    if-nez v0, :cond_36

    const/4 v0, 0x0

    aget-byte v1, p2, v0

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_2e

    if-eqz p1, :cond_17

    invoke-static {p2}, Lm4/d;->e([B)[B

    move-result-object p1

    goto :goto_18

    :cond_17
    move-object p1, p2

    :goto_18
    iput-object p1, p0, Lm/h;->c:[B

    array-length p1, p2

    add-int/lit8 p1, p1, -0x1

    :goto_1d
    if-ge v0, p1, :cond_2b

    aget-byte v1, p2, v0

    add-int/lit8 v2, v0, 0x1

    aget-byte v3, p2, v2

    shr-int/lit8 v3, v3, 0x7

    if-ne v1, v3, :cond_2b

    move v0, v2

    goto :goto_1d

    :cond_2b
    iput v0, p0, Lm/h;->d:I

    return-void

    :cond_2e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "enumerated must be non-negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_36
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "malformed enumerated"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static r(Z[B)Lm/h;
    .registers 5

    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_a

    new-instance v0, Lm/h;

    invoke-direct {v0, p0, p1}, Lm/h;-><init>(Z[B)V

    return-object v0

    :cond_a
    array-length v0, p1

    if-eqz v0, :cond_2a

    const/4 v0, 0x0

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xc

    if-lt v0, v1, :cond_1c

    new-instance v0, Lm/h;

    invoke-direct {v0, p0, p1}, Lm/h;-><init>(Z[B)V

    return-object v0

    :cond_1c
    sget-object v1, Lm/h;->x:[Lm/h;

    aget-object v2, v1, v0

    if-nez v2, :cond_29

    new-instance v2, Lm/h;

    invoke-direct {v2, p0, p1}, Lm/h;-><init>(Z[B)V

    aput-object v2, v1, v0

    :cond_29
    return-object v2

    :cond_2a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ENUMERATED has zero length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static s(Ljava/lang/Object;)Lm/h;
    .registers 4

    if-eqz p0, :cond_3c

    instance-of v0, p0, Lm/h;

    if-eqz v0, :cond_7

    goto :goto_3c

    :cond_7
    instance-of v0, p0, [B

    if-eqz v0, :cond_28

    :try_start_b
    sget-object v0, Lm/h;->q:Lm/a;

    check-cast p0, [B

    invoke-virtual {v0, p0}, Lm/a;->b([B)Lm/u;

    move-result-object p0

    check-cast p0, Lm/h;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_15} :catch_16

    return-object p0

    :catch_16
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "encoding error in getInstance: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Lb/b;->d(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
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

    :cond_3c
    :goto_3c
    check-cast p0, Lm/h;

    return-object p0
.end method


# virtual methods
.method public final h(Lm/u;)Z
    .registers 3

    instance-of v0, p1, Lm/h;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    check-cast p1, Lm/h;

    iget-object p0, p0, Lm/h;->c:[B

    iget-object p1, p1, Lm/h;->c:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .registers 1

    iget-object p0, p0, Lm/h;->c:[B

    invoke-static {p0}, Lm4/d;->u([B)I

    move-result p0

    return p0
.end method

.method public final i(Lb1/a;Z)V
    .registers 4

    const/16 v0, 0xa

    iget-object p0, p0, Lm/h;->c:[B

    invoke-virtual {p1, v0, p2, p0}, Lb1/a;->F(IZ[B)V

    return-void
.end method

.method public final j()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final l(Z)I
    .registers 2

    iget-object p0, p0, Lm/h;->c:[B

    array-length p0, p0

    invoke-static {p0, p1}, Lb1/a;->s(IZ)I

    move-result p0

    return p0
.end method

.method public final t()Ljava/math/BigInteger;
    .registers 2

    new-instance v0, Ljava/math/BigInteger;

    iget-object p0, p0, Lm/h;->c:[B

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>([B)V

    return-object v0
.end method

.method public final u()I
    .registers 4

    iget-object v0, p0, Lm/h;->c:[B

    array-length v1, v0

    iget p0, p0, Lm/h;->d:I

    sub-int/2addr v1, p0

    const/4 v2, 0x4

    if-gt v1, v2, :cond_f

    const/4 v1, -0x1

    invoke-static {v0, p0, v1}, Lm/l;->x([BII)I

    move-result p0

    return p0

    :cond_f
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string v0, "ASN.1 Enumerated out of int range"

    invoke-direct {p0, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
