.class public abstract Lorg/bouncycastle/crypto/s;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/d;


# virtual methods
.method public final a([BII[BI)I
    .registers 10

    invoke-interface {p0}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v0

    mul-int v1, p3, v0

    const/4 v2, 0x0

    if-ne p1, p4, :cond_f

    new-array p1, v1, [B

    invoke-static {p4, p2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move p2, v2

    :cond_f
    move v1, v2

    :goto_10
    if-eq v2, p3, :cond_1d

    add-int v3, p5, v1

    invoke-interface {p0, p2, v3, p1, p4}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    move-result v3

    add-int/2addr v1, v3

    add-int/2addr p2, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_1d
    return v1
.end method
