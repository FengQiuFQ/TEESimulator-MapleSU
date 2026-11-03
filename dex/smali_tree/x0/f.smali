.class public abstract Lx0/f;
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

    sput-object v0, Lx0/f;->a:Ljava/math/BigInteger;

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lx0/f;->b:Ljava/math/BigInteger;

    return-void
.end method

.method public static a(IILjava/security/SecureRandom;)[Ljava/math/BigInteger;
    .registers 8

    add-int/lit8 v0, p0, -0x1

    const/4 v1, 0x2

    ushr-int/2addr p0, v1

    :goto_4
    invoke-static {v0, v1, p2}, Lm4/a;->e(IILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v3

    sget-object v4, Lx0/f;->a:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v4

    if-nez v4, :cond_1a

    goto :goto_4

    :cond_1a
    if-le p1, v1, :cond_25

    add-int/lit8 v4, p1, -0x2

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v4

    if-nez v4, :cond_25

    goto :goto_4

    :cond_25
    invoke-static {v3}, Lk2/b0;->l(Ljava/math/BigInteger;)I

    move-result v4

    if-ge v4, p0, :cond_2c

    goto :goto_4

    :cond_2c
    filled-new-array {v3, v2}, [Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .registers 6

    sget-object v0, Lx0/f;->b:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    :cond_6
    invoke-static {v0, v1, p1}, Lm4/a;->d(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v0, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Lx0/f;->a:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    return-object v2
.end method
