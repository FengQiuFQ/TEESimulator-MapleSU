.class public abstract Lx0/d;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/math/BigInteger;

.field public static final b:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lx0/d;->a:Ljava/math/BigInteger;

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lx0/d;->b:Ljava/math/BigInteger;

    return-void
.end method

.method public static a(Le1/g;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .registers 6

    iget v0, p0, Le1/g;->z1:I

    if-eqz v0, :cond_17

    ushr-int/lit8 v1, v0, 0x2

    :cond_6
    invoke-static {v0, p1}, Lm4/a;->c(ILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object p0

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p0}, Lk2/b0;->l(Ljava/math/BigInteger;)I

    move-result v2

    if-lt v2, v1, :cond_6

    return-object p0

    :cond_17
    iget v0, p0, Le1/g;->y:I

    sget-object v1, Lx0/d;->b:Ljava/math/BigInteger;

    if-eqz v0, :cond_26

    sget-object v2, Lx0/d;->a:Ljava/math/BigInteger;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_27

    :cond_26
    move-object v0, v1

    :goto_27
    iget-object v2, p0, Le1/g;->q:Ljava/math/BigInteger;

    if-nez v2, :cond_2d

    iget-object v2, p0, Le1/g;->d:Ljava/math/BigInteger;

    :cond_2d
    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    ushr-int/lit8 v1, v1, 0x2

    :cond_37
    invoke-static {v0, p0, p1}, Lm4/a;->d(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v2}, Lk2/b0;->l(Ljava/math/BigInteger;)I

    move-result v3

    if-lt v3, v1, :cond_37

    return-object v2
.end method
