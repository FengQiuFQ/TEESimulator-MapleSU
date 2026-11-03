.class public abstract Lk2/d;
.super Lk2/h;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;)V
    .registers 5

    sget-object v0, Lr2/b;->a:Lr2/e;

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-lez v1, :cond_2b

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2b

    const/4 v2, 0x3

    if-ge v0, v2, :cond_21

    invoke-static {p1}, Lm4/a;->h(Ljava/math/BigInteger;)I

    move-result v0

    if-eq v0, v1, :cond_1e

    if-eq v0, v2, :cond_1b

    goto :goto_21

    :cond_1b
    sget-object p1, Lr2/b;->b:Lr2/e;

    goto :goto_27

    :cond_1e
    sget-object p1, Lr2/b;->a:Lr2/e;

    goto :goto_27

    :cond_21
    :goto_21
    new-instance v0, Lr2/e;

    invoke-direct {v0, p1}, Lr2/e;-><init>(Ljava/math/BigInteger;)V

    move-object p1, v0

    :goto_27
    invoke-direct {p0, p1}, Lk2/h;-><init>(Lr2/a;)V

    return-void

    :cond_2b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'characteristic\' must be >= 2"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final h(ILjava/math/BigInteger;)Lk2/p;
    .registers 6

    invoke-virtual {p0, p2}, Lk2/h;->j(Ljava/math/BigInteger;)Lk2/b0;

    move-result-object p2

    invoke-virtual {p2}, Lk2/b0;->F()Lk2/b0;

    move-result-object v0

    iget-object v1, p0, Lk2/h;->b:Lk2/b0;

    invoke-virtual {v0, v1}, Lk2/b0;->a(Lk2/b0;)Lk2/b0;

    move-result-object v0

    invoke-virtual {v0, p2}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object v0

    iget-object v1, p0, Lk2/h;->c:Lk2/b0;

    invoke-virtual {v0, v1}, Lk2/b0;->a(Lk2/b0;)Lk2/b0;

    move-result-object v0

    invoke-virtual {v0}, Lk2/b0;->E()Lk2/b0;

    move-result-object v0

    if-eqz v0, :cond_32

    invoke-virtual {v0}, Lk2/b0;->K()Z

    move-result v1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_26

    goto :goto_27

    :cond_26
    const/4 v2, 0x0

    :goto_27
    if-eq v1, v2, :cond_2d

    invoke-virtual {v0}, Lk2/b0;->B()Lk2/b0;

    move-result-object v0

    :cond_2d
    invoke-virtual {p0, p2, v0}, Lk2/h;->e(Lk2/b0;Lk2/b0;)Lk2/p;

    move-result-object p0

    return-object p0

    :cond_32
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid point compression"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final o(Ljava/math/BigInteger;)Z
    .registers 3

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_14

    invoke-virtual {p0}, Lk2/d;->u()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-gez p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public r(Ljava/security/SecureRandom;)Lk2/b0;
    .registers 6

    invoke-virtual {p0}, Lk2/d;->u()Ljava/math/BigInteger;

    move-result-object v0

    :cond_4
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    invoke-static {v1, p1}, Lm4/a;->c(ILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->signum()I

    move-result v2

    if-lez v2, :cond_4

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gez v2, :cond_4

    invoke-virtual {p0, v1}, Lk2/h;->j(Ljava/math/BigInteger;)Lk2/b0;

    move-result-object v1

    :cond_1c
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    invoke-static {v2, p1}, Lm4/a;->c(ILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->signum()I

    move-result v3

    if-lez v3, :cond_1c

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-gez v3, :cond_1c

    invoke-virtual {p0, v2}, Lk2/h;->j(Ljava/math/BigInteger;)Lk2/b0;

    move-result-object p0

    invoke-virtual {v1, p0}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object p0

    return-object p0
.end method

.method public abstract u()Ljava/math/BigInteger;
.end method
