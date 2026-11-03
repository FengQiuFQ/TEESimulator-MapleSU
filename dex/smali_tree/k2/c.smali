.class public abstract Lk2/c;
.super Lk2/h;


# instance fields
.field public i:[Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(IIII)V
    .registers 10

    const-string v0, "org.bouncycastle.ec.max_f2m_field_size"

    const/16 v1, 0x476

    invoke-static {v1, v0}, Lm4/h;->a(ILjava/lang/String;)I

    move-result v0

    if-gt p1, v0, :cond_81

    or-int v0, p3, p4

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_1b

    new-array p3, v2, [I

    aput v4, p3, v4

    aput p2, p3, v3

    aput p1, p3, v1

    goto :goto_2a

    :cond_1b
    const/4 v0, 0x5

    new-array v0, v0, [I

    aput v4, v0, v4

    aput p2, v0, v3

    aput p3, v0, v1

    aput p4, v0, v2

    const/4 p2, 0x4

    aput p1, v0, p2

    move-object p3, v0

    :goto_2a
    sget-object p1, Lr2/b;->a:Lr2/e;

    aget p1, p3, v4

    if-nez p1, :cond_79

    :goto_30
    array-length p1, p3

    if-ge v3, p1, :cond_46

    aget p1, p3, v3

    add-int/lit8 p2, v3, -0x1

    aget p2, p3, p2

    if-le p1, p2, :cond_3e

    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    :cond_3e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Polynomial exponents must be monotonically increasing"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_46
    new-instance p1, Lr2/d;

    sget-object p2, Lr2/b;->a:Lr2/e;

    new-instance p4, Lr2/c;

    invoke-direct {p4, p3}, Lr2/c;-><init>([I)V

    invoke-direct {p1, p2, p4}, Lr2/d;-><init>(Lr2/a;Lr2/c;)V

    invoke-direct {p0, p1}, Lk2/h;-><init>(Lr2/a;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lk2/c;->i:[Ljava/math/BigInteger;

    const-string p0, "org.bouncycastle.ec.disable"

    invoke-static {p0}, Lm4/h;->c(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_71

    const-string p0, "org.bouncycastle.ec.disable_f2m"

    invoke-static {p0}, Lm4/h;->c(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_69

    return-void

    :cond_69
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "F2M disabled by \"org.bouncycastle.ec.disable_f2m\""

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_71
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "F2M disabled by \"org.bouncycastle.ec.disable\""

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_79
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Irreducible polynomials in GF(2) must have constant term"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_81
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "field size out of range: "

    invoke-static {p1, p2}, Lb/b;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final d(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lk2/p;
    .registers 5

    invoke-virtual {p0, p1}, Lk2/h;->j(Ljava/math/BigInteger;)Lk2/b0;

    move-result-object p1

    invoke-virtual {p0, p2}, Lk2/h;->j(Ljava/math/BigInteger;)Lk2/b0;

    move-result-object p2

    iget v0, p0, Lk2/h;->f:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_11

    const/4 v1, 0x6

    if-eq v0, v1, :cond_11

    goto :goto_32

    :cond_11
    invoke-virtual {p1}, Lk2/b0;->t()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {p2}, Lk2/b0;->F()Lk2/b0;

    move-result-object v0

    iget-object v1, p0, Lk2/h;->c:Lk2/b0;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    goto :goto_32

    :cond_24
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_2a
    invoke-virtual {p2, p1}, Lk2/b0;->f(Lk2/b0;)Lk2/b0;

    move-result-object p2

    invoke-virtual {p2, p1}, Lk2/b0;->a(Lk2/b0;)Lk2/b0;

    move-result-object p2

    :goto_32
    invoke-virtual {p0, p1, p2}, Lk2/h;->e(Lk2/b0;Lk2/b0;)Lk2/p;

    move-result-object p0

    return-object p0
.end method

.method public final h(ILjava/math/BigInteger;)Lk2/p;
    .registers 6

    invoke-virtual {p0, p2}, Lk2/h;->j(Ljava/math/BigInteger;)Lk2/b0;

    move-result-object p2

    invoke-virtual {p2}, Lk2/b0;->t()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object p1, p0, Lk2/h;->c:Lk2/b0;

    invoke-virtual {p1}, Lk2/b0;->E()Lk2/b0;

    move-result-object p1

    goto :goto_51

    :cond_11
    invoke-virtual {p2}, Lk2/b0;->F()Lk2/b0;

    move-result-object v0

    invoke-virtual {v0}, Lk2/b0;->q()Lk2/b0;

    move-result-object v0

    iget-object v1, p0, Lk2/h;->c:Lk2/b0;

    invoke-virtual {v0, v1}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object v0

    iget-object v1, p0, Lk2/h;->b:Lk2/b0;

    invoke-virtual {v0, v1}, Lk2/b0;->a(Lk2/b0;)Lk2/b0;

    move-result-object v0

    invoke-virtual {v0, p2}, Lk2/b0;->a(Lk2/b0;)Lk2/b0;

    move-result-object v0

    invoke-virtual {p0, v0}, Lk2/c;->v(Lk2/b0;)Lk2/b0;

    move-result-object v0

    if-eqz v0, :cond_50

    invoke-virtual {v0}, Lk2/b0;->K()Z

    move-result v1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_37

    goto :goto_38

    :cond_37
    const/4 v2, 0x0

    :goto_38
    if-eq v1, v2, :cond_3e

    invoke-virtual {v0}, Lk2/b0;->b()Lk2/b0;

    move-result-object v0

    :cond_3e
    iget p1, p0, Lk2/h;->f:I

    const/4 v1, 0x5

    if-eq p1, v1, :cond_4b

    const/4 v1, 0x6

    if-eq p1, v1, :cond_4b

    invoke-virtual {v0, p2}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object p1

    goto :goto_51

    :cond_4b
    invoke-virtual {v0, p2}, Lk2/b0;->a(Lk2/b0;)Lk2/b0;

    move-result-object p1

    goto :goto_51

    :cond_50
    const/4 p1, 0x0

    :goto_51
    if-eqz p1, :cond_58

    invoke-virtual {p0, p2, p1}, Lk2/h;->e(Lk2/b0;Lk2/b0;)Lk2/p;

    move-result-object p0

    return-object p0

    :cond_58
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

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    invoke-virtual {p0}, Lk2/h;->l()I

    move-result p0

    if-gt p1, p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public final r(Ljava/security/SecureRandom;)Lk2/b0;
    .registers 6

    invoke-virtual {p0}, Lk2/h;->l()I

    move-result v0

    :cond_4
    invoke-static {v0, p1}, Lm4/a;->c(ILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->signum()I

    move-result v2

    if-lez v2, :cond_4

    invoke-virtual {p0, v1}, Lk2/h;->j(Ljava/math/BigInteger;)Lk2/b0;

    move-result-object v1

    :cond_12
    invoke-static {v0, p1}, Lm4/a;->c(ILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->signum()I

    move-result v3

    if-lez v3, :cond_12

    invoke-virtual {p0, v2}, Lk2/h;->j(Ljava/math/BigInteger;)Lk2/b0;

    move-result-object p0

    invoke-virtual {v1, p0}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object p0

    return-object p0
.end method

.method public u()Z
    .registers 2

    iget-object v0, p0, Lk2/h;->d:Ljava/math/BigInteger;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lk2/h;->e:Ljava/math/BigInteger;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lk2/h;->c:Lk2/b0;

    invoke-virtual {v0}, Lk2/b0;->s()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lk2/h;->b:Lk2/b0;

    invoke-virtual {v0}, Lk2/b0;->t()Z

    move-result v0

    if-nez v0, :cond_20

    iget-object p0, p0, Lk2/h;->b:Lk2/b0;

    invoke-virtual {p0}, Lk2/b0;->s()Z

    move-result p0

    if-eqz p0, :cond_22

    :cond_20
    const/4 p0, 0x1

    return p0

    :cond_22
    const/4 p0, 0x0

    return p0
.end method

.method public final v(Lk2/b0;)Lk2/b0;
    .registers 10

    move-object v0, p1

    check-cast v0, Lk2/i;

    invoke-virtual {v0}, Lk2/i;->N()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v0}, Lk2/i;->O()I

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_6e

    :cond_10
    invoke-virtual {p0}, Lk2/h;->l()I

    move-result v2

    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_31

    invoke-virtual {v0}, Lk2/i;->M()Lk2/b0;

    move-result-object p0

    if-nez v1, :cond_30

    invoke-virtual {p0}, Lk2/b0;->F()Lk2/b0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lk2/b0;->a(Lk2/b0;)Lk2/b0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lk2/b0;->a(Lk2/b0;)Lk2/b0;

    move-result-object p1

    invoke-virtual {p1}, Lk2/b0;->t()Z

    move-result p1

    if-eqz p1, :cond_6e

    :cond_30
    return-object p0

    :cond_31
    invoke-virtual {p1}, Lk2/b0;->t()Z

    move-result v0

    if-eqz v0, :cond_38

    return-object p1

    :cond_38
    sget-object v0, Lk2/a;->a:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Lk2/h;->j(Ljava/math/BigInteger;)Lk2/b0;

    move-result-object v0

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    :cond_43
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v2, v1}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    invoke-virtual {p0, v3}, Lk2/h;->j(Ljava/math/BigInteger;)Lk2/b0;

    move-result-object v3

    const/4 v4, 0x1

    move-object v5, p1

    move-object v6, v0

    :goto_4f
    if-ge v4, v2, :cond_68

    invoke-virtual {v5}, Lk2/b0;->F()Lk2/b0;

    move-result-object v5

    invoke-virtual {v6}, Lk2/b0;->F()Lk2/b0;

    move-result-object v6

    invoke-virtual {v5, v3}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object v7

    invoke-virtual {v6, v7}, Lk2/b0;->a(Lk2/b0;)Lk2/b0;

    move-result-object v6

    invoke-virtual {v5, p1}, Lk2/b0;->a(Lk2/b0;)Lk2/b0;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_4f

    :cond_68
    invoke-virtual {v5}, Lk2/b0;->t()Z

    move-result v3

    if-nez v3, :cond_70

    :cond_6e
    :goto_6e
    const/4 p0, 0x0

    return-object p0

    :cond_70
    invoke-virtual {v6}, Lk2/b0;->F()Lk2/b0;

    move-result-object v3

    invoke-virtual {v3, v6}, Lk2/b0;->a(Lk2/b0;)Lk2/b0;

    move-result-object v3

    invoke-virtual {v3}, Lk2/b0;->t()Z

    move-result v3

    if-nez v3, :cond_43

    return-object v6
.end method
