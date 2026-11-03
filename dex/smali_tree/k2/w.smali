.class public final Lk2/w;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/math/BigInteger;

.field public final b:I


# direct methods
.method public constructor <init>(ILjava/math/BigInteger;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_a

    iput-object p2, p0, Lk2/w;->a:Ljava/math/BigInteger;

    iput p1, p0, Lk2/w;->b:I

    return-void

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "scale may not be negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(Lk2/w;)Lk2/w;
    .registers 4

    iget v0, p1, Lk2/w;->b:I

    iget v1, p0, Lk2/w;->b:I

    if-ne v1, v0, :cond_14

    new-instance v0, Lk2/w;

    iget-object p0, p0, Lk2/w;->a:Ljava/math/BigInteger;

    iget-object p1, p1, Lk2/w;->a:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lk2/w;-><init>(ILjava/math/BigInteger;)V

    return-object v0

    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Only SimpleBigDecimal of same scale allowed in arithmetic operations"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b(Ljava/math/BigInteger;)I
    .registers 3

    iget v0, p0, Lk2/w;->b:I

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p1

    iget-object p0, p0, Lk2/w;->a:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    return p0
.end method

.method public final c()Ljava/math/BigInteger;
    .registers 5

    new-instance v0, Lk2/w;

    sget-object v1, Lk2/a;->b:Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lk2/w;-><init>(ILjava/math/BigInteger;)V

    iget v3, p0, Lk2/w;->b:I

    if-ltz v3, :cond_27

    if-ne v3, v2, :cond_f

    goto :goto_1a

    :cond_f
    new-instance v0, Lk2/w;

    add-int/lit8 v2, v3, -0x1

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lk2/w;-><init>(ILjava/math/BigInteger;)V

    :goto_1a
    invoke-virtual {p0, v0}, Lk2/w;->a(Lk2/w;)Lk2/w;

    move-result-object p0

    iget-object v0, p0, Lk2/w;->a:Ljava/math/BigInteger;

    iget p0, p0, Lk2/w;->b:I

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_27
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "scale may not be negative"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_3

    goto :goto_1a

    :cond_3
    instance-of v0, p1, Lk2/w;

    if-nez v0, :cond_8

    goto :goto_1c

    :cond_8
    check-cast p1, Lk2/w;

    iget-object v0, p0, Lk2/w;->a:Ljava/math/BigInteger;

    iget-object v1, p1, Lk2/w;->a:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget p0, p0, Lk2/w;->b:I

    iget p1, p1, Lk2/w;->b:I

    if-ne p0, p1, :cond_1c

    :goto_1a
    const/4 p0, 0x1

    return p0

    :cond_1c
    :goto_1c
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Lk2/w;->a:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget p0, p0, Lk2/w;->b:I

    xor-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 8

    iget-object v0, p0, Lk2/w;->a:Ljava/math/BigInteger;

    iget p0, p0, Lk2/w;->b:I

    if-nez p0, :cond_b

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_28

    sget-object v0, Lk2/a;->b:Ljava/math/BigInteger;

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    :cond_28
    invoke-virtual {v1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ne v0, v3, :cond_3c

    sget-object v0, Lk2/a;->a:Ljava/math/BigInteger;

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    sget-object v0, Lk2/a;->b:Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    :cond_3c
    invoke-virtual {v1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, p0, [C

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr p0, v3

    const/4 v4, 0x0

    move v5, v4

    :goto_4e
    if-ge v5, p0, :cond_57

    const/16 v6, 0x30

    aput-char v6, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_4e

    :cond_57
    :goto_57
    if-ge v4, v3, :cond_64

    add-int v5, p0, v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aput-char v6, v1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_57

    :cond_64
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    const-string v1, "."

    invoke-static {v0, v1, p0}, Lb/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
