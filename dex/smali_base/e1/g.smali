.class public final Le1/g;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/g;


# instance fields
.field public final A1:Le1/j;

.field public final c:Ljava/math/BigInteger;

.field public final d:Ljava/math/BigInteger;

.field public final q:Ljava/math/BigInteger;

.field public final x:Ljava/math/BigInteger;

.field public final y:I

.field public final z1:I


# direct methods
.method public constructor <init>(ILjava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 13

    const/16 v0, 0xa0

    if-nez p1, :cond_6

    :cond_4
    move v5, v0

    goto :goto_9

    :cond_6
    if-ge p1, v0, :cond_4

    move v5, p1

    :goto_9
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move v6, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v1 .. v8}, Le1/g;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;IILjava/math/BigInteger;Le1/j;)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;IILjava/math/BigInteger;Le1/j;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p5, :cond_1e

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    if-gt p5, v0, :cond_16

    if-lt p5, p4, :cond_e

    goto :goto_1e

    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "when l value specified, it may not be less than m value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "when l value specified, it must satisfy 2^(l-1) <= p"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1e
    :goto_1e
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    if-le p4, v0, :cond_35

    const-string v0, "org.bouncycastle.dh.allow_unsafe_p_value"

    invoke-static {v0}, Lm4/h;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    goto :goto_35

    :cond_2d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unsafe p value so small specific l required"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_35
    :goto_35
    iput-object p2, p0, Le1/g;->c:Ljava/math/BigInteger;

    iput-object p1, p0, Le1/g;->d:Ljava/math/BigInteger;

    iput-object p3, p0, Le1/g;->q:Ljava/math/BigInteger;

    iput p4, p0, Le1/g;->y:I

    iput p5, p0, Le1/g;->z1:I

    iput-object p6, p0, Le1/g;->x:Ljava/math/BigInteger;

    iput-object p7, p0, Le1/g;->A1:Le1/j;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Le1/g;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Le1/g;

    iget-object v0, p1, Le1/g;->q:Ljava/math/BigInteger;

    iget-object v2, p0, Le1/g;->q:Ljava/math/BigInteger;

    if-eqz v2, :cond_15

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    return v1

    :cond_15
    if-eqz v0, :cond_18

    return v1

    :cond_18
    iget-object v0, p1, Le1/g;->d:Ljava/math/BigInteger;

    iget-object v2, p0, Le1/g;->d:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object p1, p1, Le1/g;->c:Ljava/math/BigInteger;

    iget-object p0, p0, Le1/g;->c:Ljava/math/BigInteger;

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2e

    const/4 p0, 0x1

    return p0

    :cond_2e
    return v1
.end method

.method public final hashCode()I
    .registers 3

    iget-object v0, p0, Le1/g;->d:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object v1, p0, Le1/g;->c:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object p0, p0, Le1/g;->q:Ljava/math/BigInteger;

    if-eqz p0, :cond_16

    invoke-virtual {p0}, Ljava/math/BigInteger;->hashCode()I

    move-result p0

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    xor-int/2addr p0, v0

    return p0
.end method
