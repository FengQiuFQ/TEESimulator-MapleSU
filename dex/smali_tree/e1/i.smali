.class public final Le1/i;
.super Le1/e;


# static fields
.field public static final x:Ljava/math/BigInteger;

.field public static final y:Ljava/math/BigInteger;


# instance fields
.field public final q:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Le1/i;->x:Ljava/math/BigInteger;

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Le1/i;->y:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Le1/g;)V
    .registers 16

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Le1/e;-><init>(ZLe1/g;)V

    if-eqz p1, :cond_d5

    iget-object v1, p2, Le1/g;->d:Ljava/math/BigInteger;

    sget-object v2, Le1/i;->y:Ljava/math/BigInteger;

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-ltz v3, :cond_cd

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gtz v2, :cond_cd

    iget-object p2, p2, Le1/g;->q:Ljava/math/BigInteger;

    if-nez p2, :cond_20

    goto/16 :goto_c2

    :cond_20
    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v2

    if-eqz v2, :cond_b6

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {p2}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    if-ne v2, v4, :cond_b6

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b6

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result p2

    invoke-static {p2, p1}, Ls2/b;->u(ILjava/math/BigInteger;)[I

    move-result-object v2

    invoke-static {p2, v1}, Ls2/b;->u(ILjava/math/BigInteger;)[I

    move-result-object p2

    array-length v1, p2

    move v4, v0

    :cond_4a
    :goto_4a
    aget v5, v2, v0

    const/4 v6, -0x1

    if-nez v5, :cond_5a

    move v7, v0

    move v5, v1

    :goto_51
    add-int/2addr v5, v6

    if-ltz v5, :cond_4a

    aget v8, v2, v5

    aput v7, v2, v5

    move v7, v8

    goto :goto_51

    :cond_5a
    invoke-static {v5}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v5

    if-lez v5, :cond_79

    move v8, v0

    move v7, v1

    :goto_62
    add-int/2addr v7, v6

    if-ltz v7, :cond_70

    aget v9, v2, v7

    ushr-int v10, v9, v5

    neg-int v11, v5

    shl-int/2addr v8, v11

    or-int/2addr v8, v10

    aput v8, v2, v7

    move v8, v9

    goto :goto_62

    :cond_70
    aget v7, p2, v0

    ushr-int/lit8 v8, v7, 0x1

    xor-int/2addr v7, v8

    shl-int/lit8 v5, v5, 0x1

    and-int/2addr v5, v7

    xor-int/2addr v4, v5

    :cond_79
    add-int/lit8 v5, v1, -0x1

    :goto_7b
    if-ltz v5, :cond_8f

    aget v7, v2, v5

    const/high16 v8, -0x80000000

    xor-int/2addr v7, v8

    aget v9, p2, v5

    xor-int/2addr v8, v9

    if-ge v7, v8, :cond_88

    goto :goto_90

    :cond_88
    if-le v7, v8, :cond_8c

    move v6, v3

    goto :goto_90

    :cond_8c
    add-int/lit8 v5, v5, -0x1

    goto :goto_7b

    :cond_8f
    move v6, v0

    :goto_90
    if-nez v6, :cond_9f

    invoke-static {v1, p2}, Ls2/b;->K(I[I)Z

    move-result p2

    if-eqz p2, :cond_9c

    and-int/lit8 p2, v4, 0x2

    rsub-int/lit8 v0, p2, 0x1

    :cond_9c
    if-ne v3, v0, :cond_c5

    goto :goto_c2

    :cond_9f
    if-gez v6, :cond_aa

    aget v5, v2, v0

    aget v6, p2, v0

    and-int/2addr v5, v6

    xor-int/2addr v4, v5

    move-object v12, v2

    move-object v2, p2

    move-object p2, v12

    :cond_aa
    :goto_aa
    add-int/lit8 v5, v1, -0x1

    aget v6, v2, v5

    if-nez v6, :cond_b2

    move v1, v5

    goto :goto_aa

    :cond_b2
    invoke-static {v1, v2, p2, v2}, Ls2/b;->R(I[I[I[I)I

    goto :goto_4a

    :cond_b6
    sget-object v0, Le1/i;->x:Ljava/math/BigInteger;

    invoke-virtual {p1, p2, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c5

    :goto_c2
    iput-object p1, p0, Le1/i;->q:Ljava/math/BigInteger;

    return-void

    :cond_c5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Y value does not appear to be in correct group"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_cd
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid DH public key"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d5
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "y value cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Le1/i;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    move-object v0, p1

    check-cast v0, Le1/i;

    iget-object v0, v0, Le1/i;->q:Ljava/math/BigInteger;

    iget-object v2, p0, Le1/i;->q:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-super {p0, p1}, Le1/e;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1b

    const/4 p0, 0x1

    return p0

    :cond_1b
    return v1
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Le1/i;->q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    invoke-super {p0}, Le1/e;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method
