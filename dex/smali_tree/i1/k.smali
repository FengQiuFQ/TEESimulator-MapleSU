.class public final Li1/k;
.super Ljava/lang/Object;

# interfaces
.implements Li1/a;


# static fields
.field public static final b:Li1/k;

.field public static final c:Li1/k;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Li1/k;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Li1/k;-><init>(I)V

    sput-object v0, Li1/k;->b:Li1/k;

    new-instance v0, Li1/k;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Li1/k;-><init>(I)V

    sput-object v0, Li1/k;->c:Li1/k;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Li1/k;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/math/BigInteger;[B)[Ljava/math/BigInteger;
    .registers 7

    iget v0, p0, Li1/k;->a:I

    packed-switch v0, :pswitch_data_bc

    invoke-static {p2}, Lm/u;->o([B)Lm/u;

    move-result-object v0

    check-cast v0, Lm/x;

    invoke-virtual {v0}, Lm/x;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_61

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lm/x;->v(I)Lm/f;

    move-result-object v1

    check-cast v1, Lm/l;

    invoke-virtual {v1}, Lm/l;->t()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->signum()I

    move-result v2

    const-string v3, "Value out of range"

    if-ltz v2, :cond_5b

    if-eqz p1, :cond_2d

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gez v2, :cond_5b

    :cond_2d
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lm/x;->v(I)Lm/f;

    move-result-object v0

    check-cast v0, Lm/l;

    invoke-virtual {v0}, Lm/l;->t()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v2

    if-ltz v2, :cond_55

    if-eqz p1, :cond_46

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gez v2, :cond_55

    :cond_46
    invoke-virtual {p0, p1, v1, v0}, Li1/k;->b(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)[B

    move-result-object p0

    invoke-static {p0, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_61

    filled-new-array {v1, v0}, [Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_55
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_61
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Malformed signature"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_69
    invoke-static {p1}, Lm4/a;->g(Ljava/math/BigInteger;)I

    move-result p0

    array-length v0, p2

    mul-int/lit8 v1, p0, 0x2

    if-ne v0, v1, :cond_b3

    const/4 v0, 0x0

    invoke-static {p2, v0, p0}, Lm4/d;->q([BII)[B

    move-result-object v0

    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const-string v3, "Value out of range"

    if-ltz v0, :cond_ad

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_ad

    add-int v0, p0, p0

    invoke-static {p2, p0, v0}, Lm4/d;->q([BII)[B

    move-result-object p0

    new-instance p2, Ljava/math/BigInteger;

    invoke-direct {p2, v2, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {p2}, Ljava/math/BigInteger;->signum()I

    move-result p0

    if-ltz p0, :cond_a7

    invoke-virtual {p2, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-gez p0, :cond_a7

    filled-new-array {v1, p2}, [Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_a7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_ad
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Encoding has incorrect length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_69
    .end packed-switch
.end method

.method public final b(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)[B
    .registers 10

    iget p0, p0, Li1/k;->a:I

    packed-switch p0, :pswitch_data_aa

    new-instance p0, Lm/g;

    invoke-direct {p0}, Lm/g;-><init>()V

    new-instance v0, Lm/l;

    invoke-virtual {p2}, Ljava/math/BigInteger;->signum()I

    move-result v1

    const-string v2, "Value out of range"

    if-ltz v1, :cond_4b

    if-eqz p1, :cond_1c

    invoke-virtual {p2, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gez v1, :cond_4b

    :cond_1c
    invoke-direct {v0, p2}, Lm/l;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {p0, v0}, Lm/g;->a(Lm/f;)V

    new-instance p2, Lm/l;

    invoke-virtual {p3}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_45

    if-eqz p1, :cond_32

    invoke-virtual {p3, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    if-gez p1, :cond_45

    :cond_32
    invoke-direct {p2, p3}, Lm/l;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {p0, p2}, Lm/g;->a(Lm/f;)V

    new-instance p1, Lm/a1;

    invoke-direct {p1, p0}, Lm/x;-><init>(Lm/g;)V

    const/4 p0, -0x1

    iput p0, p1, Lm/a1;->q:I

    invoke-virtual {p1}, Lm/n;->g()[B

    move-result-object p0

    return-object p0

    :cond_45
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_51
    invoke-static {p1}, Lm4/a;->g(Ljava/math/BigInteger;)I

    move-result p0

    mul-int/lit8 v0, p0, 0x2

    new-array v0, v0, [B

    invoke-virtual {p2}, Ljava/math/BigInteger;->signum()I

    move-result v1

    const-string v2, "Value out of range"

    if-ltz v1, :cond_a4

    invoke-virtual {p2, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gez v1, :cond_a4

    invoke-virtual {p2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p2

    array-length v1, p2

    sub-int/2addr v1, p0

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    array-length v4, p2

    sub-int/2addr v4, v1

    sub-int v5, p0, v4

    invoke-static {v0, v3, v5, v3}, Ljava/util/Arrays;->fill([BIIB)V

    invoke-static {p2, v1, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p3}, Ljava/math/BigInteger;->signum()I

    move-result p2

    if-ltz p2, :cond_9e

    invoke-virtual {p3, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    if-gez p1, :cond_9e

    invoke-virtual {p3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    array-length p2, p1

    sub-int/2addr p2, p0

    invoke-static {v3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    array-length p3, p1

    sub-int/2addr p3, p2

    sub-int v1, p0, p3

    add-int/2addr v1, p0

    invoke-static {v0, p0, v1, v3}, Ljava/util/Arrays;->fill([BIIB)V

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_9e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_aa
    .packed-switch 0x0
        :pswitch_51
    .end packed-switch
.end method
