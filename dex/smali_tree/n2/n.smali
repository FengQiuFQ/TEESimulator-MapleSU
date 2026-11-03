.class public final Ln2/n;
.super Lk2/j;


# static fields
.field public static final m:Ljava/math/BigInteger;

.field public static final n:[I


# instance fields
.field public final l:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFE56D"

    invoke-static {v1}, Ln4/c;->c(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    sput-object v0, Ln2/n;->m:Ljava/math/BigInteger;

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_18

    sput-object v0, Ln2/n;->n:[I

    return-void

    nop

    :array_18
    .array-data 4
        0x33bfd202
        -0x23052ecd
        0x2287624a
        -0x3c7ee458
        -0x57aaa704
        0x1eaef5d7
        -0x7120eab4
    .end array-data
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .registers 4

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lk2/b0;-><init>(I)V

    if-eqz p1, :cond_2f

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_2f

    sget-object v0, Ln2/n;->m:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_2f

    invoke-static {p1}, Lt4/d;->R(Ljava/math/BigInteger;)[I

    move-result-object p1

    const/4 v0, 0x6

    aget v0, p1, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2c

    sget-object v0, Ln2/b;->p:[I

    invoke-static {p1, v0}, Lt4/d;->g0([I[I)Z

    move-result v0

    if-eqz v0, :cond_2c

    const/4 v0, 0x7

    const/16 v1, 0x1a93

    invoke-static {v0, v1, p1}, Ls2/b;->b(II[I)V

    :cond_2c
    iput-object p1, p0, Ln2/n;->l:[I

    return-void

    :cond_2f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "x value invalid for SecP224K1FieldElement"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>([I)V
    .registers 3

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lk2/b0;-><init>(I)V

    iput-object p1, p0, Ln2/n;->l:[I

    return-void
.end method


# virtual methods
.method public final B()Lk2/b0;
    .registers 7

    const/4 v0, 0x7

    new-array v1, v0, [I

    sget-object v2, Ln2/b;->p:[I

    const/4 v3, 0x0

    move v4, v3

    :goto_7
    iget-object v5, p0, Ln2/n;->l:[I

    if-ge v3, v0, :cond_11

    aget v5, v5, v3

    or-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_11
    ushr-int/lit8 p0, v4, 0x1

    and-int/lit8 v0, v4, 0x1

    or-int/2addr p0, v0

    add-int/lit8 p0, p0, -0x1

    shr-int/lit8 p0, p0, 0x1f

    if-eqz p0, :cond_20

    invoke-static {v2, v2, v1}, Lt4/d;->K0([I[I[I)I

    goto :goto_23

    :cond_20
    invoke-static {v2, v5, v1}, Lt4/d;->K0([I[I[I)I

    :goto_23
    new-instance p0, Ln2/n;

    invoke-direct {p0, v1}, Ln2/n;-><init>([I)V

    return-object p0
.end method

.method public final E()Lk2/b0;
    .registers 9

    iget-object v0, p0, Ln2/n;->l:[I

    invoke-static {v0}, Lt4/d;->m0([I)Z

    move-result v1

    if-nez v1, :cond_ab

    invoke-static {v0}, Lt4/d;->k0([I)Z

    move-result v1

    if-eqz v1, :cond_10

    goto/16 :goto_ab

    :cond_10
    const/4 p0, 0x7

    new-array v1, p0, [I

    invoke-static {v0, v1}, Ln2/b;->k1([I[I)V

    invoke-static {v1, v0, v1}, Ln2/b;->m0([I[I[I)V

    invoke-static {v1, v1}, Ln2/b;->k1([I[I)V

    invoke-static {v1, v0, v1}, Ln2/b;->m0([I[I[I)V

    new-array v2, p0, [I

    invoke-static {v1, v2}, Ln2/b;->k1([I[I)V

    invoke-static {v2, v0, v2}, Ln2/b;->m0([I[I[I)V

    new-array v3, p0, [I

    const/4 v4, 0x4

    invoke-static {v4, v2, v3}, Ln2/b;->z1(I[I[I)V

    invoke-static {v3, v2, v3}, Ln2/b;->m0([I[I[I)V

    new-array v5, p0, [I

    const/4 v6, 0x3

    invoke-static {v6, v3, v5}, Ln2/b;->z1(I[I[I)V

    invoke-static {v5, v1, v5}, Ln2/b;->m0([I[I[I)V

    const/16 v7, 0x8

    invoke-static {v7, v5, v5}, Ln2/b;->z1(I[I[I)V

    invoke-static {v5, v3, v5}, Ln2/b;->m0([I[I[I)V

    invoke-static {v4, v5, v3}, Ln2/b;->z1(I[I[I)V

    invoke-static {v3, v2, v3}, Ln2/b;->m0([I[I[I)V

    const/16 v7, 0x13

    invoke-static {v7, v3, v2}, Ln2/b;->z1(I[I[I)V

    invoke-static {v2, v5, v2}, Ln2/b;->m0([I[I[I)V

    new-array p0, p0, [I

    const/16 v7, 0x2a

    invoke-static {v7, v2, p0}, Ln2/b;->z1(I[I[I)V

    invoke-static {p0, v2, p0}, Ln2/b;->m0([I[I[I)V

    const/16 v7, 0x17

    invoke-static {v7, p0, v2}, Ln2/b;->z1(I[I[I)V

    invoke-static {v2, v3, v2}, Ln2/b;->m0([I[I[I)V

    const/16 v7, 0x54

    invoke-static {v7, v2, v3}, Ln2/b;->z1(I[I[I)V

    invoke-static {v3, p0, v3}, Ln2/b;->m0([I[I[I)V

    const/16 v2, 0x14

    invoke-static {v2, v3, v3}, Ln2/b;->z1(I[I[I)V

    invoke-static {v3, v5, v3}, Ln2/b;->m0([I[I[I)V

    invoke-static {v6, v3, v3}, Ln2/b;->z1(I[I[I)V

    invoke-static {v3, v0, v3}, Ln2/b;->m0([I[I[I)V

    const/4 v2, 0x2

    invoke-static {v2, v3, v3}, Ln2/b;->z1(I[I[I)V

    invoke-static {v3, v0, v3}, Ln2/b;->m0([I[I[I)V

    invoke-static {v4, v3, v3}, Ln2/b;->z1(I[I[I)V

    invoke-static {v3, v1, v3}, Ln2/b;->m0([I[I[I)V

    invoke-static {v3, v3}, Ln2/b;->k1([I[I)V

    invoke-static {v3, p0}, Ln2/b;->k1([I[I)V

    invoke-static {v0, p0}, Lt4/d;->M([I[I)Z

    move-result v1

    if-eqz v1, :cond_96

    new-instance p0, Ln2/n;

    invoke-direct {p0, v3}, Ln2/n;-><init>([I)V

    return-object p0

    :cond_96
    sget-object v1, Ln2/n;->n:[I

    invoke-static {v3, v1, v3}, Ln2/b;->m0([I[I[I)V

    invoke-static {v3, p0}, Ln2/b;->k1([I[I)V

    invoke-static {v0, p0}, Lt4/d;->M([I[I)Z

    move-result p0

    if-eqz p0, :cond_aa

    new-instance p0, Ln2/n;

    invoke-direct {p0, v3}, Ln2/n;-><init>([I)V

    return-object p0

    :cond_aa
    const/4 p0, 0x0

    :cond_ab
    :goto_ab
    return-object p0
.end method

.method public final F()Lk2/b0;
    .registers 2

    const/4 v0, 0x7

    new-array v0, v0, [I

    iget-object p0, p0, Ln2/n;->l:[I

    invoke-static {p0, v0}, Ln2/b;->k1([I[I)V

    new-instance p0, Ln2/n;

    invoke-direct {p0, v0}, Ln2/n;-><init>([I)V

    return-object p0
.end method

.method public final I(Lk2/b0;)Lk2/b0;
    .registers 3

    const/4 v0, 0x7

    new-array v0, v0, [I

    check-cast p1, Ln2/n;

    iget-object p1, p1, Ln2/n;->l:[I

    iget-object p0, p0, Ln2/n;->l:[I

    invoke-static {p0, p1, v0}, Ln2/b;->K1([I[I[I)V

    new-instance p0, Ln2/n;

    invoke-direct {p0, v0}, Ln2/n;-><init>([I)V

    return-object p0
.end method

.method public final K()Z
    .registers 2

    iget-object p0, p0, Ln2/n;->l:[I

    invoke-static {p0}, Lt4/d;->W([I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_a

    return v0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public final L()Ljava/math/BigInteger;
    .registers 1

    iget-object p0, p0, Ln2/n;->l:[I

    invoke-static {p0}, Lt4/d;->N0([I)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lk2/b0;)Lk2/b0;
    .registers 4

    const/4 v0, 0x7

    new-array v1, v0, [I

    check-cast p1, Ln2/n;

    iget-object p1, p1, Ln2/n;->l:[I

    iget-object p0, p0, Ln2/n;->l:[I

    invoke-static {p0, p1, v1}, Lt4/d;->i([I[I[I)I

    move-result p0

    if-nez p0, :cond_1d

    const/4 p0, 0x6

    aget p0, v1, p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_22

    sget-object p0, Ln2/b;->p:[I

    invoke-static {v1, p0}, Lt4/d;->g0([I[I)Z

    move-result p0

    if-eqz p0, :cond_22

    :cond_1d
    const/16 p0, 0x1a93

    invoke-static {v0, p0, v1}, Ls2/b;->b(II[I)V

    :cond_22
    new-instance p0, Ln2/n;

    invoke-direct {p0, v1}, Ln2/n;-><init>([I)V

    return-object p0
.end method

.method public final b()Lk2/b0;
    .registers 4

    const/4 v0, 0x7

    new-array v1, v0, [I

    iget-object p0, p0, Ln2/n;->l:[I

    invoke-static {v0, p0, v1}, Ls2/b;->F(I[I[I)I

    move-result p0

    if-nez p0, :cond_19

    const/4 p0, 0x6

    aget p0, v1, p0

    const/4 v2, -0x1

    if-ne p0, v2, :cond_1e

    sget-object p0, Ln2/b;->p:[I

    invoke-static {v1, p0}, Lt4/d;->g0([I[I)Z

    move-result p0

    if-eqz p0, :cond_1e

    :cond_19
    const/16 p0, 0x1a93

    invoke-static {v0, p0, v1}, Ls2/b;->b(II[I)V

    :cond_1e
    new-instance p0, Ln2/n;

    invoke-direct {p0, v1}, Ln2/n;-><init>([I)V

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    instance-of v0, p1, Ln2/n;

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    check-cast p1, Ln2/n;

    iget-object p0, p0, Ln2/n;->l:[I

    iget-object p1, p1, Ln2/n;->l:[I

    invoke-static {p0, p1}, Lt4/d;->M([I[I)Z

    move-result p0

    return p0
.end method

.method public final f(Lk2/b0;)Lk2/b0;
    .registers 4

    const/4 v0, 0x7

    new-array v0, v0, [I

    check-cast p1, Ln2/n;

    iget-object p1, p1, Ln2/n;->l:[I

    sget-object v1, Ln2/b;->p:[I

    invoke-static {v1, p1, v0}, Lt4/d;->s([I[I[I)V

    iget-object p0, p0, Ln2/n;->l:[I

    invoke-static {v0, p0, v0}, Ln2/b;->m0([I[I[I)V

    new-instance p0, Ln2/n;

    invoke-direct {p0, v0}, Ln2/n;-><init>([I)V

    return-object p0
.end method

.method public final hashCode()I
    .registers 3

    sget-object v0, Ln2/n;->m:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object p0, p0, Ln2/n;->l:[I

    const/4 v1, 0x7

    invoke-static {v1, p0}, Lm4/d;->t(I[I)I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public final k()I
    .registers 1

    sget-object p0, Ln2/n;->m:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    return p0
.end method

.method public final q()Lk2/b0;
    .registers 3

    const/4 v0, 0x7

    new-array v0, v0, [I

    iget-object p0, p0, Ln2/n;->l:[I

    sget-object v1, Ln2/b;->p:[I

    invoke-static {v1, p0, v0}, Lt4/d;->s([I[I[I)V

    new-instance p0, Ln2/n;

    invoke-direct {p0, v0}, Ln2/n;-><init>([I)V

    return-object p0
.end method

.method public final s()Z
    .registers 1

    iget-object p0, p0, Ln2/n;->l:[I

    invoke-static {p0}, Lt4/d;->k0([I)Z

    move-result p0

    return p0
.end method

.method public final t()Z
    .registers 1

    iget-object p0, p0, Ln2/n;->l:[I

    invoke-static {p0}, Lt4/d;->m0([I)Z

    move-result p0

    return p0
.end method

.method public final x(Lk2/b0;)Lk2/b0;
    .registers 3

    const/4 v0, 0x7

    new-array v0, v0, [I

    check-cast p1, Ln2/n;

    iget-object p1, p1, Ln2/n;->l:[I

    iget-object p0, p0, Ln2/n;->l:[I

    invoke-static {p0, p1, v0}, Ln2/b;->m0([I[I[I)V

    new-instance p0, Ln2/n;

    invoke-direct {p0, v0}, Ln2/n;-><init>([I)V

    return-object p0
.end method
