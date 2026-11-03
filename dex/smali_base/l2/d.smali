.class public final Ll2/d;
.super Lk2/j;


# static fields
.field public static final m:Ljava/math/BigInteger;

.field public static final n:[I


# instance fields
.field public l:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Ll2/c;->a:[I

    invoke-static {v0}, Lq4/k;->W0([I)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Ll2/d;->m:Ljava/math/BigInteger;

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_12

    sput-object v0, Ll2/d;->n:[I

    return-void

    :array_12
    .array-data 4
        0x4a0ea0b0    # 2336812.0f
        -0x3b11e4d9
        -0x52d01b88
        0x2f431806
        0x3dfbd7a7
        0x2b4d0099
        0x4fc1df0b
        0x2b832480
    .end array-data
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .registers 4

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lk2/b0;-><init>(I)V

    if-eqz p1, :cond_27

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_27

    sget-object v0, Ll2/d;->m:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_27

    invoke-static {p1}, Lq4/k;->U(Ljava/math/BigInteger;)[I

    move-result-object p1

    :goto_18
    sget-object v0, Ll2/c;->a:[I

    invoke-static {p1, v0}, Lq4/k;->m0([I[I)Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-static {v0, p1}, Lq4/k;->T0([I[I)V

    goto :goto_18

    :cond_24
    iput-object p1, p0, Ll2/d;->l:[I

    return-void

    :cond_27
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "x value invalid for Curve25519FieldElement"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>([I)V
    .registers 3

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lk2/b0;-><init>(I)V

    iput-object p1, p0, Ll2/d;->l:[I

    return-void
.end method


# virtual methods
.method public final B()Lk2/b0;
    .registers 6

    const/16 v0, 0x8

    new-array v1, v0, [I

    iget-object p0, p0, Ll2/d;->l:[I

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v2, v0, :cond_10

    aget v4, p0, v2

    or-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_10
    ushr-int/lit8 v0, v3, 0x1

    and-int/lit8 v2, v3, 0x1

    or-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    shr-int/lit8 v0, v0, 0x1f

    sget-object v2, Ll2/c;->a:[I

    if-eqz v0, :cond_21

    invoke-static {v2, v2, v1}, Lq4/k;->R0([I[I[I)I

    goto :goto_24

    :cond_21
    invoke-static {v2, p0, v1}, Lq4/k;->R0([I[I[I)I

    :goto_24
    new-instance p0, Ll2/d;

    invoke-direct {p0, v1}, Ll2/d;-><init>([I)V

    return-object p0
.end method

.method public final E()Lk2/b0;
    .registers 5

    iget-object v0, p0, Ll2/d;->l:[I

    invoke-static {v0}, Lq4/k;->t0([I)Z

    move-result v1

    if-nez v1, :cond_8d

    invoke-static {v0}, Lq4/k;->p0([I)Z

    move-result v1

    if-eqz v1, :cond_10

    goto/16 :goto_8d

    :cond_10
    const/16 p0, 0x8

    new-array v1, p0, [I

    invoke-static {v0, v1}, Ll2/c;->d([I[I)V

    invoke-static {v1, v0, v1}, Ll2/c;->a([I[I[I)V

    invoke-static {v1, v1}, Ll2/c;->d([I[I)V

    invoke-static {v1, v0, v1}, Ll2/c;->a([I[I[I)V

    new-array v2, p0, [I

    invoke-static {v1, v2}, Ll2/c;->d([I[I)V

    invoke-static {v2, v0, v2}, Ll2/c;->a([I[I[I)V

    new-array p0, p0, [I

    const/4 v3, 0x3

    invoke-static {v3, v2, p0}, Ll2/c;->e(I[I[I)V

    invoke-static {p0, v1, p0}, Ll2/c;->a([I[I[I)V

    const/4 v3, 0x4

    invoke-static {v3, p0, v1}, Ll2/c;->e(I[I[I)V

    invoke-static {v1, v2, v1}, Ll2/c;->a([I[I[I)V

    invoke-static {v3, v1, p0}, Ll2/c;->e(I[I[I)V

    invoke-static {p0, v2, p0}, Ll2/c;->a([I[I[I)V

    const/16 v3, 0xf

    invoke-static {v3, p0, v2}, Ll2/c;->e(I[I[I)V

    invoke-static {v2, p0, v2}, Ll2/c;->a([I[I[I)V

    const/16 v3, 0x1e

    invoke-static {v3, v2, p0}, Ll2/c;->e(I[I[I)V

    invoke-static {p0, v2, p0}, Ll2/c;->a([I[I[I)V

    const/16 v3, 0x3c

    invoke-static {v3, p0, v2}, Ll2/c;->e(I[I[I)V

    invoke-static {v2, p0, v2}, Ll2/c;->a([I[I[I)V

    const/16 v3, 0xb

    invoke-static {v3, v2, p0}, Ll2/c;->e(I[I[I)V

    invoke-static {p0, v1, p0}, Ll2/c;->a([I[I[I)V

    const/16 v3, 0x78

    invoke-static {v3, p0, v1}, Ll2/c;->e(I[I[I)V

    invoke-static {v1, v2, v1}, Ll2/c;->a([I[I[I)V

    invoke-static {v1, v1}, Ll2/c;->d([I[I)V

    invoke-static {v1, v2}, Ll2/c;->d([I[I)V

    invoke-static {v0, v2}, Lq4/k;->M([I[I)Z

    move-result p0

    if-eqz p0, :cond_78

    new-instance p0, Ll2/d;

    invoke-direct {p0, v1}, Ll2/d;-><init>([I)V

    return-object p0

    :cond_78
    sget-object p0, Ll2/d;->n:[I

    invoke-static {v1, p0, v1}, Ll2/c;->a([I[I[I)V

    invoke-static {v1, v2}, Ll2/c;->d([I[I)V

    invoke-static {v0, v2}, Lq4/k;->M([I[I)Z

    move-result p0

    if-eqz p0, :cond_8c

    new-instance p0, Ll2/d;

    invoke-direct {p0, v1}, Ll2/d;-><init>([I)V

    return-object p0

    :cond_8c
    const/4 p0, 0x0

    :cond_8d
    :goto_8d
    return-object p0
.end method

.method public final F()Lk2/b0;
    .registers 2

    const/16 v0, 0x8

    new-array v0, v0, [I

    iget-object p0, p0, Ll2/d;->l:[I

    invoke-static {p0, v0}, Ll2/c;->d([I[I)V

    new-instance p0, Ll2/d;

    invoke-direct {p0, v0}, Ll2/d;-><init>([I)V

    return-object p0
.end method

.method public final I(Lk2/b0;)Lk2/b0;
    .registers 3

    const/16 v0, 0x8

    new-array v0, v0, [I

    iget-object p0, p0, Ll2/d;->l:[I

    check-cast p1, Ll2/d;

    iget-object p1, p1, Ll2/d;->l:[I

    invoke-static {p0, p1, v0}, Ll2/c;->g([I[I[I)V

    new-instance p0, Ll2/d;

    invoke-direct {p0, v0}, Ll2/d;-><init>([I)V

    return-object p0
.end method

.method public final K()Z
    .registers 2

    iget-object p0, p0, Ll2/d;->l:[I

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

    iget-object p0, p0, Ll2/d;->l:[I

    invoke-static {p0}, Lq4/k;->W0([I)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lk2/b0;)Lk2/b0;
    .registers 3

    const/16 v0, 0x8

    new-array v0, v0, [I

    iget-object p0, p0, Ll2/d;->l:[I

    check-cast p1, Ll2/d;

    iget-object p1, p1, Ll2/d;->l:[I

    invoke-static {p0, p1, v0}, Lq4/k;->d([I[I[I)I

    sget-object p0, Ll2/c;->a:[I

    invoke-static {v0, p0}, Lq4/k;->m0([I[I)Z

    move-result p0

    if-eqz p0, :cond_18

    invoke-static {v0}, Ll2/c;->f([I)V

    :cond_18
    new-instance p0, Ll2/d;

    invoke-direct {p0, v0}, Ll2/d;-><init>([I)V

    return-object p0
.end method

.method public final b()Lk2/b0;
    .registers 3

    const/16 v0, 0x8

    new-array v1, v0, [I

    iget-object p0, p0, Ll2/d;->l:[I

    invoke-static {v0, p0, v1}, Ls2/b;->F(I[I[I)I

    sget-object p0, Ll2/c;->a:[I

    invoke-static {v1, p0}, Lq4/k;->m0([I[I)Z

    move-result p0

    if-eqz p0, :cond_14

    invoke-static {v1}, Ll2/c;->f([I)V

    :cond_14
    new-instance p0, Ll2/d;

    invoke-direct {p0, v1}, Ll2/d;-><init>([I)V

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    instance-of v0, p1, Ll2/d;

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    check-cast p1, Ll2/d;

    iget-object p0, p0, Ll2/d;->l:[I

    iget-object p1, p1, Ll2/d;->l:[I

    invoke-static {p0, p1}, Lq4/k;->M([I[I)Z

    move-result p0

    return p0
.end method

.method public final f(Lk2/b0;)Lk2/b0;
    .registers 4

    const/16 v0, 0x8

    new-array v0, v0, [I

    check-cast p1, Ll2/d;

    iget-object p1, p1, Ll2/d;->l:[I

    sget-object v1, Ll2/c;->a:[I

    invoke-static {v1, p1, v0}, Lt4/d;->s([I[I[I)V

    iget-object p0, p0, Ll2/d;->l:[I

    invoke-static {v0, p0, v0}, Ll2/c;->a([I[I[I)V

    new-instance p0, Ll2/d;

    invoke-direct {p0, v0}, Ll2/d;-><init>([I)V

    return-object p0
.end method

.method public final hashCode()I
    .registers 3

    sget-object v0, Ll2/d;->m:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object p0, p0, Ll2/d;->l:[I

    const/16 v1, 0x8

    invoke-static {v1, p0}, Lm4/d;->t(I[I)I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public final k()I
    .registers 1

    sget-object p0, Ll2/d;->m:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    return p0
.end method

.method public final q()Lk2/b0;
    .registers 3

    const/16 v0, 0x8

    new-array v0, v0, [I

    iget-object p0, p0, Ll2/d;->l:[I

    sget-object v1, Ll2/c;->a:[I

    invoke-static {v1, p0, v0}, Lt4/d;->s([I[I[I)V

    new-instance p0, Ll2/d;

    invoke-direct {p0, v0}, Ll2/d;-><init>([I)V

    return-object p0
.end method

.method public final s()Z
    .registers 1

    iget-object p0, p0, Ll2/d;->l:[I

    invoke-static {p0}, Lq4/k;->p0([I)Z

    move-result p0

    return p0
.end method

.method public final t()Z
    .registers 1

    iget-object p0, p0, Ll2/d;->l:[I

    invoke-static {p0}, Lq4/k;->t0([I)Z

    move-result p0

    return p0
.end method

.method public final x(Lk2/b0;)Lk2/b0;
    .registers 3

    const/16 v0, 0x8

    new-array v0, v0, [I

    iget-object p0, p0, Ll2/d;->l:[I

    check-cast p1, Ll2/d;

    iget-object p1, p1, Ll2/d;->l:[I

    invoke-static {p0, p1, v0}, Ll2/c;->a([I[I[I)V

    new-instance p0, Ll2/d;

    invoke-direct {p0, v0}, Ll2/d;-><init>([I)V

    return-object p0
.end method
