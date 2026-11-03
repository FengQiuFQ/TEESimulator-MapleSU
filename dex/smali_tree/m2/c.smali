.class public final Lm2/c;
.super Lk2/j;


# static fields
.field public static final m:Ljava/math/BigInteger;


# instance fields
.field public final l:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "FFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFF"

    invoke-static {v1}, Ln4/c;->c(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    sput-object v0, Lm2/c;->m:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .registers 4

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lk2/b0;-><init>(I)V

    if-eqz p1, :cond_30

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_30

    sget-object v0, Lm2/c;->m:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_30

    invoke-static {p1}, Lq4/k;->U(Ljava/math/BigInteger;)[I

    move-result-object p1

    const/4 v0, 0x7

    aget v0, p1, v0

    ushr-int/lit8 v0, v0, 0x1

    const v1, 0x7fffffff

    if-lt v0, v1, :cond_2d

    sget-object v0, Lm2/b;->a:[I

    invoke-static {p1, v0}, Lq4/k;->m0([I[I)Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-static {v0, p1}, Lq4/k;->T0([I[I)V

    :cond_2d
    iput-object p1, p0, Lm2/c;->l:[I

    return-void

    :cond_30
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "x value invalid for SM2P256V1FieldElement"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>([I)V
    .registers 3

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lk2/b0;-><init>(I)V

    iput-object p1, p0, Lm2/c;->l:[I

    return-void
.end method


# virtual methods
.method public final B()Lk2/b0;
    .registers 6

    const/16 v0, 0x8

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_6
    iget-object v4, p0, Lm2/c;->l:[I

    if-ge v2, v0, :cond_10

    aget v4, v4, v2

    or-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_10
    ushr-int/lit8 p0, v3, 0x1

    and-int/lit8 v0, v3, 0x1

    or-int/2addr p0, v0

    add-int/lit8 p0, p0, -0x1

    shr-int/lit8 p0, p0, 0x1f

    sget-object v0, Lm2/b;->a:[I

    if-eqz p0, :cond_21

    invoke-static {v0, v0, v1}, Lq4/k;->R0([I[I[I)I

    goto :goto_24

    :cond_21
    invoke-static {v0, v4, v1}, Lq4/k;->R0([I[I[I)I

    :goto_24
    new-instance p0, Lm2/c;

    invoke-direct {p0, v1}, Lm2/c;-><init>([I)V

    return-object p0
.end method

.method public final E()Lk2/b0;
    .registers 7

    iget-object v0, p0, Lm2/c;->l:[I

    invoke-static {v0}, Lq4/k;->t0([I)Z

    move-result v1

    if-nez v1, :cond_7f

    invoke-static {v0}, Lq4/k;->p0([I)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_7f

    :cond_f
    const/16 p0, 0x8

    new-array v1, p0, [I

    invoke-static {v0, v1}, Lm2/b;->f([I[I)V

    invoke-static {v1, v0, v1}, Lm2/b;->c([I[I[I)V

    new-array v2, p0, [I

    const/4 v3, 0x2

    invoke-static {v3, v1, v2}, Lm2/b;->g(I[I[I)V

    invoke-static {v2, v1, v2}, Lm2/b;->c([I[I[I)V

    new-array v4, p0, [I

    invoke-static {v3, v2, v4}, Lm2/b;->g(I[I[I)V

    invoke-static {v4, v1, v4}, Lm2/b;->c([I[I[I)V

    const/4 v3, 0x6

    invoke-static {v3, v4, v1}, Lm2/b;->g(I[I[I)V

    invoke-static {v1, v4, v1}, Lm2/b;->c([I[I[I)V

    new-array p0, p0, [I

    const/16 v5, 0xc

    invoke-static {v5, v1, p0}, Lm2/b;->g(I[I[I)V

    invoke-static {p0, v1, p0}, Lm2/b;->c([I[I[I)V

    invoke-static {v3, p0, v1}, Lm2/b;->g(I[I[I)V

    invoke-static {v1, v4, v1}, Lm2/b;->c([I[I[I)V

    invoke-static {v1, v4}, Lm2/b;->f([I[I)V

    invoke-static {v4, v0, v4}, Lm2/b;->c([I[I[I)V

    const/16 v3, 0x1f

    invoke-static {v3, v4, p0}, Lm2/b;->g(I[I[I)V

    invoke-static {p0, v4, v1}, Lm2/b;->c([I[I[I)V

    const/16 v3, 0x20

    invoke-static {v3, p0, p0}, Lm2/b;->g(I[I[I)V

    invoke-static {p0, v1, p0}, Lm2/b;->c([I[I[I)V

    const/16 v4, 0x3e

    invoke-static {v4, p0, p0}, Lm2/b;->g(I[I[I)V

    invoke-static {p0, v1, p0}, Lm2/b;->c([I[I[I)V

    const/4 v1, 0x4

    invoke-static {v1, p0, p0}, Lm2/b;->g(I[I[I)V

    invoke-static {p0, v2, p0}, Lm2/b;->c([I[I[I)V

    invoke-static {v3, p0, p0}, Lm2/b;->g(I[I[I)V

    invoke-static {p0, v0, p0}, Lm2/b;->c([I[I[I)V

    invoke-static {v4, p0, p0}, Lm2/b;->g(I[I[I)V

    invoke-static {p0, v2}, Lm2/b;->f([I[I)V

    invoke-static {v0, v2}, Lq4/k;->M([I[I)Z

    move-result v0

    if-eqz v0, :cond_7e

    new-instance v0, Lm2/c;

    invoke-direct {v0, p0}, Lm2/c;-><init>([I)V

    return-object v0

    :cond_7e
    const/4 p0, 0x0

    :cond_7f
    :goto_7f
    return-object p0
.end method

.method public final F()Lk2/b0;
    .registers 2

    const/16 v0, 0x8

    new-array v0, v0, [I

    iget-object p0, p0, Lm2/c;->l:[I

    invoke-static {p0, v0}, Lm2/b;->f([I[I)V

    new-instance p0, Lm2/c;

    invoke-direct {p0, v0}, Lm2/c;-><init>([I)V

    return-object p0
.end method

.method public final I(Lk2/b0;)Lk2/b0;
    .registers 3

    const/16 v0, 0x8

    new-array v0, v0, [I

    check-cast p1, Lm2/c;

    iget-object p1, p1, Lm2/c;->l:[I

    iget-object p0, p0, Lm2/c;->l:[I

    invoke-static {p0, p1, v0}, Lm2/b;->h([I[I[I)V

    new-instance p0, Lm2/c;

    invoke-direct {p0, v0}, Lm2/c;-><init>([I)V

    return-object p0
.end method

.method public final K()Z
    .registers 2

    iget-object p0, p0, Lm2/c;->l:[I

    invoke-static {p0}, Lq4/k;->W([I)I

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

    iget-object p0, p0, Lm2/c;->l:[I

    invoke-static {p0}, Lq4/k;->W0([I)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lk2/b0;)Lk2/b0;
    .registers 3

    const/16 v0, 0x8

    new-array v0, v0, [I

    check-cast p1, Lm2/c;

    iget-object p1, p1, Lm2/c;->l:[I

    iget-object p0, p0, Lm2/c;->l:[I

    invoke-static {p0, p1, v0}, Lm2/b;->a([I[I[I)V

    new-instance p0, Lm2/c;

    invoke-direct {p0, v0}, Lm2/c;-><init>([I)V

    return-object p0
.end method

.method public final b()Lk2/b0;
    .registers 3

    const/16 v0, 0x8

    new-array v1, v0, [I

    iget-object p0, p0, Lm2/c;->l:[I

    invoke-static {v0, p0, v1}, Ls2/b;->F(I[I[I)I

    move-result p0

    if-nez p0, :cond_1e

    const/4 p0, 0x7

    aget p0, v1, p0

    ushr-int/lit8 p0, p0, 0x1

    const v0, 0x7fffffff

    if-lt p0, v0, :cond_21

    sget-object p0, Lm2/b;->a:[I

    invoke-static {v1, p0}, Lq4/k;->m0([I[I)Z

    move-result p0

    if-eqz p0, :cond_21

    :cond_1e
    invoke-static {v1}, Lm2/b;->b([I)V

    :cond_21
    new-instance p0, Lm2/c;

    invoke-direct {p0, v1}, Lm2/c;-><init>([I)V

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    instance-of v0, p1, Lm2/c;

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    check-cast p1, Lm2/c;

    iget-object p0, p0, Lm2/c;->l:[I

    iget-object p1, p1, Lm2/c;->l:[I

    invoke-static {p0, p1}, Lq4/k;->M([I[I)Z

    move-result p0

    return p0
.end method

.method public final f(Lk2/b0;)Lk2/b0;
    .registers 4

    const/16 v0, 0x8

    new-array v0, v0, [I

    check-cast p1, Lm2/c;

    iget-object p1, p1, Lm2/c;->l:[I

    sget-object v1, Lm2/b;->a:[I

    invoke-static {v1, p1, v0}, Lt4/d;->s([I[I[I)V

    iget-object p0, p0, Lm2/c;->l:[I

    invoke-static {v0, p0, v0}, Lm2/b;->c([I[I[I)V

    new-instance p0, Lm2/c;

    invoke-direct {p0, v0}, Lm2/c;-><init>([I)V

    return-object p0
.end method

.method public final hashCode()I
    .registers 3

    sget-object v0, Lm2/c;->m:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object p0, p0, Lm2/c;->l:[I

    const/16 v1, 0x8

    invoke-static {v1, p0}, Lm4/d;->t(I[I)I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public final k()I
    .registers 1

    sget-object p0, Lm2/c;->m:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    return p0
.end method

.method public final q()Lk2/b0;
    .registers 3

    const/16 v0, 0x8

    new-array v0, v0, [I

    iget-object p0, p0, Lm2/c;->l:[I

    sget-object v1, Lm2/b;->a:[I

    invoke-static {v1, p0, v0}, Lt4/d;->s([I[I[I)V

    new-instance p0, Lm2/c;

    invoke-direct {p0, v0}, Lm2/c;-><init>([I)V

    return-object p0
.end method

.method public final s()Z
    .registers 1

    iget-object p0, p0, Lm2/c;->l:[I

    invoke-static {p0}, Lq4/k;->p0([I)Z

    move-result p0

    return p0
.end method

.method public final t()Z
    .registers 1

    iget-object p0, p0, Lm2/c;->l:[I

    invoke-static {p0}, Lq4/k;->t0([I)Z

    move-result p0

    return p0
.end method

.method public final x(Lk2/b0;)Lk2/b0;
    .registers 3

    const/16 v0, 0x8

    new-array v0, v0, [I

    check-cast p1, Lm2/c;

    iget-object p1, p1, Lm2/c;->l:[I

    iget-object p0, p0, Lm2/c;->l:[I

    invoke-static {p0, p1, v0}, Lm2/b;->c([I[I[I)V

    new-instance p0, Lm2/c;

    invoke-direct {p0, v0}, Lm2/c;-><init>([I)V

    return-object p0
.end method
