.class public final Lm/l;
.super Lm/u;


# static fields
.field public static final q:Lm/a;


# instance fields
.field public final c:[B

.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lm/a;

    const-class v1, Lm/l;

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lm/a;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lm/l;->q:Lm/a;

    return-void
.end method

.method public constructor <init>(J)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lm/l;->c:[B

    const/4 p1, 0x0

    iput p1, p0, Lm/l;->d:I

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lm/l;->c:[B

    const/4 p1, 0x0

    iput p1, p0, Lm/l;->d:I

    return-void
.end method

.method public constructor <init>([B)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lm/l;->z([B)Z

    move-result v0

    if-nez v0, :cond_20

    iput-object p1, p0, Lm/l;->c:[B

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_1d

    aget-byte v2, p1, v1

    add-int/lit8 v3, v1, 0x1

    aget-byte v4, p1, v3

    shr-int/lit8 v4, v4, 0x7

    if-ne v2, v4, :cond_1d

    move v1, v3

    goto :goto_f

    :cond_1d
    iput v1, p0, Lm/l;->d:I

    return-void

    :cond_20
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "malformed integer"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static r(Ljava/lang/Object;)Lm/l;
    .registers 4

    if-eqz p0, :cond_3c

    instance-of v0, p0, Lm/l;

    if-eqz v0, :cond_7

    goto :goto_3c

    :cond_7
    instance-of v0, p0, [B

    if-eqz v0, :cond_28

    :try_start_b
    sget-object v0, Lm/l;->q:Lm/a;

    check-cast p0, [B

    invoke-virtual {v0, p0}, Lm/a;->b([B)Lm/u;

    move-result-object p0

    check-cast p0, Lm/l;
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
    check-cast p0, Lm/l;

    return-object p0
.end method

.method public static x([BII)I
    .registers 5

    array-length v0, p0

    add-int/lit8 v1, v0, -0x4

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    aget-byte v1, p0, p1

    and-int/2addr p2, v1

    :goto_a
    add-int/lit8 p1, p1, 0x1

    if-ge p1, v0, :cond_16

    shl-int/lit8 p2, p2, 0x8

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr p2, v1

    goto :goto_a

    :cond_16
    return p2
.end method

.method public static z([B)Z
    .registers 4

    array-length v0, p0

    const/4 v1, 0x1

    if-eqz v0, :cond_19

    const/4 v2, 0x0

    if-eq v0, v1, :cond_18

    aget-byte v0, p0, v2

    aget-byte p0, p0, v1

    shr-int/lit8 p0, p0, 0x7

    if-ne v0, p0, :cond_18

    const-string p0, "org.bouncycastle.asn1.allow_unsafe_integer"

    invoke-static {p0}, Lm4/h;->c(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_18

    return v1

    :cond_18
    return v2

    :cond_19
    return v1
.end method


# virtual methods
.method public final A()J
    .registers 8

    iget-object v0, p0, Lm/l;->c:[B

    array-length v1, v0

    iget p0, p0, Lm/l;->d:I

    sub-int/2addr v1, p0

    const/16 v2, 0x8

    if-gt v1, v2, :cond_21

    array-length v1, v0

    add-int/lit8 v3, v1, -0x8

    invoke-static {p0, v3}, Ljava/lang/Math;->max(II)I

    move-result p0

    aget-byte v3, v0, p0

    int-to-long v3, v3

    :goto_14
    add-int/lit8 p0, p0, 0x1

    if-ge p0, v1, :cond_20

    shl-long/2addr v3, v2

    aget-byte v5, v0, p0

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    or-long/2addr v3, v5

    goto :goto_14

    :cond_20
    return-wide v3

    :cond_21
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string v0, "ASN.1 Integer out of long range"

    invoke-direct {p0, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final h(Lm/u;)Z
    .registers 3

    instance-of v0, p1, Lm/l;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    check-cast p1, Lm/l;

    iget-object p0, p0, Lm/l;->c:[B

    iget-object p1, p1, Lm/l;->c:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .registers 1

    iget-object p0, p0, Lm/l;->c:[B

    invoke-static {p0}, Lm4/d;->u([B)I

    move-result p0

    return p0
.end method

.method public final i(Lb1/a;Z)V
    .registers 4

    const/4 v0, 0x2

    iget-object p0, p0, Lm/l;->c:[B

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

    iget-object p0, p0, Lm/l;->c:[B

    array-length p0, p0

    invoke-static {p0, p1}, Lb1/a;->s(IZ)I

    move-result p0

    return p0
.end method

.method public final s()Ljava/math/BigInteger;
    .registers 3

    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    iget-object p0, p0, Lm/l;->c:[B

    invoke-direct {v0, v1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public final t()Ljava/math/BigInteger;
    .registers 2

    new-instance v0, Ljava/math/BigInteger;

    iget-object p0, p0, Lm/l;->c:[B

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>([B)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Lm/l;->t()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u(I)Z
    .registers 5

    iget-object v0, p0, Lm/l;->c:[B

    array-length v1, v0

    iget p0, p0, Lm/l;->d:I

    sub-int/2addr v1, p0

    const/4 v2, 0x4

    if-gt v1, v2, :cond_12

    const/4 v1, -0x1

    invoke-static {v0, p0, v1}, Lm/l;->x([BII)I

    move-result p0

    if-ne p0, p1, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public final v(Ljava/math/BigInteger;)Z
    .registers 5

    if-eqz p1, :cond_1d

    iget v0, p0, Lm/l;->d:I

    const/4 v1, -0x1

    iget-object v2, p0, Lm/l;->c:[B

    invoke-static {v2, v0, v1}, Lm/l;->x([BII)I

    move-result v0

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_1d

    invoke-virtual {p0}, Lm/l;->t()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1d

    const/4 p0, 0x1

    return p0

    :cond_1d
    const/4 p0, 0x0

    return p0
.end method

.method public final w()I
    .registers 4

    iget-object v0, p0, Lm/l;->c:[B

    array-length v1, v0

    iget p0, p0, Lm/l;->d:I

    sub-int/2addr v1, p0

    const/4 v2, 0x4

    if-gt v1, v2, :cond_18

    if-ne v1, v2, :cond_11

    aget-byte v1, v0, p0

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_18

    :cond_11
    const/16 v1, 0xff

    invoke-static {v0, p0, v1}, Lm/l;->x([BII)I

    move-result p0

    return p0

    :cond_18
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string v0, "ASN.1 Integer out of positive int range"

    invoke-direct {p0, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final y()I
    .registers 4

    iget-object v0, p0, Lm/l;->c:[B

    array-length v1, v0

    iget p0, p0, Lm/l;->d:I

    sub-int/2addr v1, p0

    const/4 v2, 0x4

    if-gt v1, v2, :cond_f

    const/4 v1, -0x1

    invoke-static {v0, p0, v1}, Lm/l;->x([BII)I

    move-result p0

    return p0

    :cond_f
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string v0, "ASN.1 Integer out of int range"

    invoke-direct {p0, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
