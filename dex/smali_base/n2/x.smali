.class public final Ln2/x;
.super Lk2/j;


# static fields
.field public static final m:Ljava/math/BigInteger;


# instance fields
.field public final l:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"

    invoke-static {v1}, Ln4/c;->c(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    sput-object v0, Ln2/x;->m:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .registers 5

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lk2/b0;-><init>(I)V

    if-eqz p1, :cond_30

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_30

    sget-object v0, Ln2/x;->m:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_30

    const/16 v0, 0x209

    invoke-static {v0, p1}, Ls2/b;->u(ILjava/math/BigInteger;)[I

    move-result-object p1

    sget-object v0, Ln2/b;->D:[I

    const/16 v1, 0x11

    invoke-static {v1, p1, v0}, Ls2/b;->s(I[I[I)Z

    move-result v0

    if-eqz v0, :cond_2d

    const/4 v0, 0x0

    move v2, v0

    :goto_26
    if-ge v2, v1, :cond_2d

    aput v0, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    :cond_2d
    iput-object p1, p0, Ln2/x;->l:[I

    return-void

    :cond_30
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "x value invalid for SecP521R1FieldElement"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>([I)V
    .registers 3

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lk2/b0;-><init>(I)V

    iput-object p1, p0, Ln2/x;->l:[I

    return-void
.end method


# virtual methods
.method public final B()Lk2/b0;
    .registers 7

    const/16 v0, 0x11

    new-array v1, v0, [I

    sget-object v2, Ln2/b;->D:[I

    const/4 v3, 0x0

    move v4, v3

    :goto_8
    iget-object v5, p0, Ln2/x;->l:[I

    if-ge v3, v0, :cond_12

    aget v5, v5, v3

    or-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_12
    ushr-int/lit8 p0, v4, 0x1

    and-int/lit8 v3, v4, 0x1

    or-int/2addr p0, v3

    add-int/lit8 p0, p0, -0x1

    shr-int/lit8 p0, p0, 0x1f

    if-eqz p0, :cond_21

    invoke-static {v0, v2, v2, v1}, Ls2/b;->R(I[I[I[I)I

    goto :goto_24

    :cond_21
    invoke-static {v0, v2, v5, v1}, Ls2/b;->R(I[I[I[I)I

    :goto_24
    new-instance p0, Ln2/x;

    invoke-direct {p0, v1}, Ln2/x;-><init>([I)V

    return-object p0
.end method

.method public final E()Lk2/b0;
    .registers 6

    const/16 v0, 0x11

    iget-object v1, p0, Ln2/x;->l:[I

    invoke-static {v0, v1}, Ls2/b;->L(I[I)Z

    move-result v2

    if-nez v2, :cond_3f

    invoke-static {v0, v1}, Ls2/b;->K(I[I)Z

    move-result v2

    if-eqz v2, :cond_11

    goto :goto_3f

    :cond_11
    const/16 p0, 0x21

    new-array p0, p0, [I

    new-array v2, v0, [I

    new-array v3, v0, [I

    invoke-static {v1, p0}, Ln2/b;->S([I[I)V

    invoke-static {p0, v2}, Ln2/b;->A0([I[I)V

    const/16 v4, 0x207

    :goto_21
    add-int/lit8 v4, v4, -0x1

    if-lez v4, :cond_2c

    invoke-static {v2, p0}, Ln2/b;->S([I[I)V

    invoke-static {p0, v2}, Ln2/b;->A0([I[I)V

    goto :goto_21

    :cond_2c
    invoke-static {v2, p0}, Ln2/b;->S([I[I)V

    invoke-static {p0, v3}, Ln2/b;->A0([I[I)V

    invoke-static {v0, v1, v3}, Ls2/b;->s(I[I[I)Z

    move-result p0

    if-eqz p0, :cond_3e

    new-instance p0, Ln2/x;

    invoke-direct {p0, v2}, Ln2/x;-><init>([I)V

    return-object p0

    :cond_3e
    const/4 p0, 0x0

    :cond_3f
    :goto_3f
    return-object p0
.end method

.method public final F()Lk2/b0;
    .registers 3

    const/16 v0, 0x11

    new-array v0, v0, [I

    const/16 v1, 0x21

    new-array v1, v1, [I

    iget-object p0, p0, Ln2/x;->l:[I

    invoke-static {p0, v1}, Ln2/b;->S([I[I)V

    invoke-static {v1, v0}, Ln2/b;->A0([I[I)V

    new-instance p0, Ln2/x;

    invoke-direct {p0, v0}, Ln2/x;-><init>([I)V

    return-object p0
.end method

.method public final I(Lk2/b0;)Lk2/b0;
    .registers 3

    const/16 v0, 0x11

    new-array v0, v0, [I

    check-cast p1, Ln2/x;

    iget-object p1, p1, Ln2/x;->l:[I

    iget-object p0, p0, Ln2/x;->l:[I

    invoke-static {p0, p1, v0}, Ln2/b;->G1([I[I[I)V

    new-instance p0, Ln2/x;

    invoke-direct {p0, v0}, Ln2/x;-><init>([I)V

    return-object p0
.end method

.method public final K()Z
    .registers 2

    iget-object p0, p0, Ln2/x;->l:[I

    invoke-static {p0}, Ls2/b;->A([I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_a

    return v0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public final L()Ljava/math/BigInteger;
    .registers 2

    const/16 v0, 0x11

    iget-object p0, p0, Ln2/x;->l:[I

    invoke-static {v0, p0}, Ls2/b;->V(I[I)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lk2/b0;)Lk2/b0;
    .registers 3

    const/16 v0, 0x11

    new-array v0, v0, [I

    check-cast p1, Ln2/x;

    iget-object p1, p1, Ln2/x;->l:[I

    iget-object p0, p0, Ln2/x;->l:[I

    invoke-static {p0, p1, v0}, Ln2/b;->d([I[I[I)V

    new-instance p0, Ln2/x;

    invoke-direct {p0, v0}, Ln2/x;-><init>([I)V

    return-object p0
.end method

.method public final b()Lk2/b0;
    .registers 5

    const/16 v0, 0x11

    new-array v0, v0, [I

    const/16 v1, 0x10

    iget-object p0, p0, Ln2/x;->l:[I

    invoke-static {v1, p0, v0}, Ls2/b;->F(I[I[I)I

    move-result v2

    aget p0, p0, v1

    add-int/2addr v2, p0

    const/16 p0, 0x1ff

    if-gt v2, p0, :cond_1d

    if-ne v2, p0, :cond_24

    sget-object v3, Ln2/b;->D:[I

    invoke-static {v1, v0, v3}, Ls2/b;->s(I[I[I)Z

    move-result v3

    if-eqz v3, :cond_24

    :cond_1d
    invoke-static {v0}, Ls2/b;->G([I)I

    move-result v3

    add-int/2addr v3, v2

    and-int/lit16 v2, v3, 0x1ff

    :cond_24
    aput v2, v0, v1

    new-instance p0, Ln2/x;

    invoke-direct {p0, v0}, Ln2/x;-><init>([I)V

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    instance-of v0, p1, Ln2/x;

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    check-cast p1, Ln2/x;

    iget-object p0, p0, Ln2/x;->l:[I

    iget-object p1, p1, Ln2/x;->l:[I

    const/16 v0, 0x11

    invoke-static {v0, p0, p1}, Ls2/b;->s(I[I[I)Z

    move-result p0

    return p0
.end method

.method public final f(Lk2/b0;)Lk2/b0;
    .registers 4

    const/16 v0, 0x11

    new-array v0, v0, [I

    check-cast p1, Ln2/x;

    iget-object p1, p1, Ln2/x;->l:[I

    sget-object v1, Ln2/b;->D:[I

    invoke-static {v1, p1, v0}, Lt4/d;->s([I[I[I)V

    const/16 p1, 0x21

    new-array p1, p1, [I

    iget-object p0, p0, Ln2/x;->l:[I

    invoke-static {v0, p0, p1}, Ln2/b;->y([I[I[I)V

    invoke-static {p1, v0}, Ln2/b;->A0([I[I)V

    new-instance p0, Ln2/x;

    invoke-direct {p0, v0}, Ln2/x;-><init>([I)V

    return-object p0
.end method

.method public final hashCode()I
    .registers 3

    sget-object v0, Ln2/x;->m:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object p0, p0, Ln2/x;->l:[I

    const/16 v1, 0x11

    invoke-static {v1, p0}, Lm4/d;->t(I[I)I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public final k()I
    .registers 1

    sget-object p0, Ln2/x;->m:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    return p0
.end method

.method public final q()Lk2/b0;
    .registers 3

    const/16 v0, 0x11

    new-array v0, v0, [I

    iget-object p0, p0, Ln2/x;->l:[I

    sget-object v1, Ln2/b;->D:[I

    invoke-static {v1, p0, v0}, Lt4/d;->s([I[I[I)V

    new-instance p0, Ln2/x;

    invoke-direct {p0, v0}, Ln2/x;-><init>([I)V

    return-object p0
.end method

.method public final s()Z
    .registers 2

    const/16 v0, 0x11

    iget-object p0, p0, Ln2/x;->l:[I

    invoke-static {v0, p0}, Ls2/b;->K(I[I)Z

    move-result p0

    return p0
.end method

.method public final t()Z
    .registers 2

    const/16 v0, 0x11

    iget-object p0, p0, Ln2/x;->l:[I

    invoke-static {v0, p0}, Ls2/b;->L(I[I)Z

    move-result p0

    return p0
.end method

.method public final x(Lk2/b0;)Lk2/b0;
    .registers 4

    const/16 v0, 0x11

    new-array v0, v0, [I

    check-cast p1, Ln2/x;

    iget-object p1, p1, Ln2/x;->l:[I

    const/16 v1, 0x21

    new-array v1, v1, [I

    iget-object p0, p0, Ln2/x;->l:[I

    invoke-static {p0, p1, v1}, Ln2/b;->y([I[I[I)V

    invoke-static {v1, v0}, Ln2/b;->A0([I[I)V

    new-instance p0, Ln2/x;

    invoke-direct {p0, v0}, Ln2/x;-><init>([I)V

    return-object p0
.end method
