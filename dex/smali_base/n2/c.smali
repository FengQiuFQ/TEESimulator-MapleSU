.class public final Ln2/c;
.super Lk2/j;


# static fields
.field public static final m:Ljava/math/BigInteger;


# instance fields
.field public final l:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "FFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFF"

    invoke-static {v1}, Ln4/c;->c(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    sput-object v0, Ln2/c;->m:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .registers 15

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lk2/b0;-><init>(I)V

    if-eqz p1, :cond_92

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_92

    sget-object v0, Ln2/c;->m:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_92

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_8c

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x80

    if-gt v0, v1, :cond_8c

    const/4 v0, 0x4

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_27
    const/16 v4, 0x20

    if-ge v3, v0, :cond_38

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    aput v5, v1, v3

    invoke-virtual {p1, v4}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    :cond_38
    const/4 p1, 0x3

    aget v0, v1, p1

    const/4 v3, 0x1

    ushr-int/2addr v0, v3

    const v5, 0x7ffffffe

    if-lt v0, v5, :cond_89

    sget-object v0, Ln2/b;->a:[I

    invoke-static {v1, v0}, Lq4/k;->k0([I[I)Z

    move-result v5

    if-eqz v5, :cond_89

    aget v5, v1, v2

    int-to-long v5, v5

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    aget v9, v0, v2

    int-to-long v9, v9

    and-long/2addr v9, v7

    sub-long/2addr v5, v9

    long-to-int v9, v5

    aput v9, v1, v2

    shr-long/2addr v5, v4

    aget v2, v1, v3

    int-to-long v9, v2

    and-long/2addr v9, v7

    aget v2, v0, v3

    int-to-long v11, v2

    and-long/2addr v11, v7

    sub-long/2addr v9, v11

    add-long/2addr v9, v5

    long-to-int v2, v9

    aput v2, v1, v3

    shr-long v2, v9, v4

    const/4 v5, 0x2

    aget v6, v1, v5

    int-to-long v9, v6

    and-long/2addr v9, v7

    aget v6, v0, v5

    int-to-long v11, v6

    and-long/2addr v11, v7

    sub-long/2addr v9, v11

    add-long/2addr v9, v2

    long-to-int v2, v9

    aput v2, v1, v5

    shr-long v2, v9, v4

    aget v4, v1, p1

    int-to-long v4, v4

    and-long/2addr v4, v7

    aget v0, v0, p1

    int-to-long v9, v0

    and-long v6, v9, v7

    sub-long/2addr v4, v6

    add-long/2addr v4, v2

    long-to-int v0, v4

    aput v0, v1, p1

    :cond_89
    iput-object v1, p0, Ln2/c;->l:[I

    return-void

    :cond_8c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_92
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "x value invalid for SecP128R1FieldElement"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>([I)V
    .registers 3

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lk2/b0;-><init>(I)V

    iput-object p1, p0, Ln2/c;->l:[I

    return-void
.end method


# virtual methods
.method public final B()Lk2/b0;
    .registers 7

    const/4 v0, 0x4

    new-array v1, v0, [I

    sget-object v2, Ln2/b;->a:[I

    const/4 v3, 0x0

    move v4, v3

    :goto_7
    iget-object v5, p0, Ln2/c;->l:[I

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

    invoke-static {v2, v2, v1}, Lq4/k;->N0([I[I[I)I

    goto :goto_23

    :cond_20
    invoke-static {v2, v5, v1}, Lq4/k;->N0([I[I[I)I

    :goto_23
    new-instance p0, Ln2/c;

    invoke-direct {p0, v1}, Ln2/c;-><init>([I)V

    return-object p0
.end method

.method public final E()Lk2/b0;
    .registers 6

    iget-object v0, p0, Ln2/c;->l:[I

    invoke-static {v0}, Lq4/k;->r0([I)Z

    move-result v1

    if-nez v1, :cond_5e

    invoke-static {v0}, Lq4/k;->n0([I)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_5e

    :cond_f
    const/4 p0, 0x4

    new-array v1, p0, [I

    invoke-static {v0, v1}, Ln2/b;->b1([I[I)V

    invoke-static {v1, v0, v1}, Ln2/b;->Y([I[I[I)V

    new-array v2, p0, [I

    const/4 v3, 0x2

    invoke-static {v3, v1, v2}, Ln2/b;->m1(I[I[I)V

    invoke-static {v2, v1, v2}, Ln2/b;->Y([I[I[I)V

    new-array v4, p0, [I

    invoke-static {p0, v2, v4}, Ln2/b;->m1(I[I[I)V

    invoke-static {v4, v2, v4}, Ln2/b;->Y([I[I[I)V

    invoke-static {v3, v4, v2}, Ln2/b;->m1(I[I[I)V

    invoke-static {v2, v1, v2}, Ln2/b;->Y([I[I[I)V

    const/16 p0, 0xa

    invoke-static {p0, v2, v1}, Ln2/b;->m1(I[I[I)V

    invoke-static {v1, v2, v1}, Ln2/b;->Y([I[I[I)V

    invoke-static {p0, v1, v4}, Ln2/b;->m1(I[I[I)V

    invoke-static {v4, v2, v4}, Ln2/b;->Y([I[I[I)V

    invoke-static {v4, v2}, Ln2/b;->b1([I[I)V

    invoke-static {v2, v0, v2}, Ln2/b;->Y([I[I[I)V

    const/16 p0, 0x5f

    invoke-static {p0, v2, v2}, Ln2/b;->m1(I[I[I)V

    invoke-static {v2, v4}, Ln2/b;->b1([I[I)V

    const/4 p0, 0x3

    :goto_4c
    if-ltz p0, :cond_59

    aget v1, v0, p0

    aget v3, v4, p0

    if-eq v1, v3, :cond_56

    const/4 p0, 0x0

    return-object p0

    :cond_56
    add-int/lit8 p0, p0, -0x1

    goto :goto_4c

    :cond_59
    new-instance p0, Ln2/c;

    invoke-direct {p0, v2}, Ln2/c;-><init>([I)V

    :cond_5e
    :goto_5e
    return-object p0
.end method

.method public final F()Lk2/b0;
    .registers 2

    const/4 v0, 0x4

    new-array v0, v0, [I

    iget-object p0, p0, Ln2/c;->l:[I

    invoke-static {p0, v0}, Ln2/b;->b1([I[I)V

    new-instance p0, Ln2/c;

    invoke-direct {p0, v0}, Ln2/c;-><init>([I)V

    return-object p0
.end method

.method public final I(Lk2/b0;)Lk2/b0;
    .registers 3

    const/4 v0, 0x4

    new-array v0, v0, [I

    check-cast p1, Ln2/c;

    iget-object p1, p1, Ln2/c;->l:[I

    iget-object p0, p0, Ln2/c;->l:[I

    invoke-static {p0, p1, v0}, Ln2/b;->E1([I[I[I)V

    new-instance p0, Ln2/c;

    invoke-direct {p0, v0}, Ln2/c;-><init>([I)V

    return-object p0
.end method

.method public final K()Z
    .registers 3

    iget-object p0, p0, Ln2/c;->l:[I

    const/4 v0, 0x0

    aget p0, p0, v0

    const/4 v1, 0x1

    and-int/2addr p0, v1

    if-ne p0, v1, :cond_a

    return v1

    :cond_a
    return v0
.end method

.method public final L()Ljava/math/BigInteger;
    .registers 5

    const/16 v0, 0x10

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_5
    const/4 v2, 0x4

    if-ge v1, v2, :cond_18

    iget-object v2, p0, Ln2/c;->l:[I

    aget v2, v2, v1

    if-eqz v2, :cond_15

    rsub-int/lit8 v3, v1, 0x3

    shl-int/lit8 v3, v3, 0x2

    invoke-static {v0, v2, v3}, Lm4/d;->w([BII)V

    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_18
    new-instance p0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object p0
.end method

.method public final a(Lk2/b0;)Lk2/b0;
    .registers 3

    const/4 v0, 0x4

    new-array v0, v0, [I

    check-cast p1, Ln2/c;

    iget-object p1, p1, Ln2/c;->l:[I

    iget-object p0, p0, Ln2/c;->l:[I

    invoke-static {p0, p1, v0}, Ln2/b;->a([I[I[I)V

    new-instance p0, Ln2/c;

    invoke-direct {p0, v0}, Ln2/c;-><init>([I)V

    return-object p0
.end method

.method public final b()Lk2/b0;
    .registers 3

    const/4 v0, 0x4

    new-array v1, v0, [I

    iget-object p0, p0, Ln2/c;->l:[I

    invoke-static {v0, p0, v1}, Ls2/b;->F(I[I[I)I

    move-result p0

    if-nez p0, :cond_1d

    const/4 p0, 0x3

    aget p0, v1, p0

    ushr-int/lit8 p0, p0, 0x1

    const v0, 0x7ffffffe

    if-lt p0, v0, :cond_20

    sget-object p0, Ln2/b;->a:[I

    invoke-static {v1, p0}, Lq4/k;->k0([I[I)Z

    move-result p0

    if-eqz p0, :cond_20

    :cond_1d
    invoke-static {v1}, Ln2/b;->o([I)V

    :cond_20
    new-instance p0, Ln2/c;

    invoke-direct {p0, v1}, Ln2/c;-><init>([I)V

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Ln2/c;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Ln2/c;

    iget-object p1, p1, Ln2/c;->l:[I

    const/4 v1, 0x3

    :goto_f
    if-ltz v1, :cond_1d

    iget-object v3, p0, Ln2/c;->l:[I

    aget v3, v3, v1

    aget v4, p1, v1

    if-eq v3, v4, :cond_1a

    return v2

    :cond_1a
    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    :cond_1d
    return v0
.end method

.method public final f(Lk2/b0;)Lk2/b0;
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [I

    check-cast p1, Ln2/c;

    iget-object p1, p1, Ln2/c;->l:[I

    sget-object v1, Ln2/b;->a:[I

    invoke-static {v1, p1, v0}, Lt4/d;->s([I[I[I)V

    iget-object p0, p0, Ln2/c;->l:[I

    invoke-static {v0, p0, v0}, Ln2/b;->Y([I[I[I)V

    new-instance p0, Ln2/c;

    invoke-direct {p0, v0}, Ln2/c;-><init>([I)V

    return-object p0
.end method

.method public final hashCode()I
    .registers 3

    sget-object v0, Ln2/c;->m:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object p0, p0, Ln2/c;->l:[I

    const/4 v1, 0x4

    invoke-static {v1, p0}, Lm4/d;->t(I[I)I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public final k()I
    .registers 1

    sget-object p0, Ln2/c;->m:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    return p0
.end method

.method public final q()Lk2/b0;
    .registers 3

    const/4 v0, 0x4

    new-array v0, v0, [I

    iget-object p0, p0, Ln2/c;->l:[I

    sget-object v1, Ln2/b;->a:[I

    invoke-static {v1, p0, v0}, Lt4/d;->s([I[I[I)V

    new-instance p0, Ln2/c;

    invoke-direct {p0, v0}, Ln2/c;-><init>([I)V

    return-object p0
.end method

.method public final s()Z
    .registers 1

    iget-object p0, p0, Ln2/c;->l:[I

    invoke-static {p0}, Lq4/k;->n0([I)Z

    move-result p0

    return p0
.end method

.method public final t()Z
    .registers 1

    iget-object p0, p0, Ln2/c;->l:[I

    invoke-static {p0}, Lq4/k;->r0([I)Z

    move-result p0

    return p0
.end method

.method public final x(Lk2/b0;)Lk2/b0;
    .registers 3

    const/4 v0, 0x4

    new-array v0, v0, [I

    check-cast p1, Ln2/c;

    iget-object p1, p1, Ln2/c;->l:[I

    iget-object p0, p0, Ln2/c;->l:[I

    invoke-static {p0, p1, v0}, Ln2/b;->Y([I[I[I)V

    new-instance p0, Ln2/c;

    invoke-direct {p0, v0}, Ln2/c;-><init>([I)V

    return-object p0
.end method
