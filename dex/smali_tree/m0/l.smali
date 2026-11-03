.class public final Lm0/l;
.super Ljava/lang/Object;


# direct methods
.method public static a(ILjava/math/BigInteger;)[B
    .registers 5

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    if-ge p0, v0, :cond_10

    new-array v0, p0, [B

    array-length v2, p1

    sub-int/2addr v2, p0

    invoke-static {p1, v2, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_10
    array-length v0, p1

    if-le p0, v0, :cond_1c

    new-array v0, p0, [B

    array-length v2, p1

    sub-int/2addr p0, v2

    array-length v2, p1

    invoke-static {p1, v1, v0, p0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_1c
    return-object p1
.end method
