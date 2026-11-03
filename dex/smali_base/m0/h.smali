.class public final Lm0/h;
.super Lm/n;

# interfaces
.implements Lm0/m;


# static fields
.field public static final z1:Ljava/math/BigInteger;


# instance fields
.field public c:Lm0/k;

.field public d:Lm0/g;

.field public q:Lm0/j;

.field public x:Ljava/math/BigInteger;

.field public y:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lm0/h;->z1:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Lk2/h;Lm0/j;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lm0/g;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, v0, Lm0/g;->q:Lm/q;

    iput-object p1, v0, Lm0/g;->c:Lk2/h;

    invoke-static {p5}, Lm4/d;->e([B)[B

    move-result-object p5

    iput-object p5, v0, Lm0/g;->d:[B

    iget-object p1, p1, Lk2/h;->a:Lr2/a;

    invoke-static {p1}, Lk2/b0;->r(Lr2/a;)Z

    move-result p5

    const/4 v1, 0x1

    sget-object v2, Lm0/m;->H0:Lm/q;

    if-eqz p5, :cond_21

    iput-object v2, v0, Lm0/g;->q:Lm/q;

    goto :goto_3b

    :cond_21
    invoke-interface {p1}, Lr2/a;->a()I

    move-result p5

    if-le p5, v1, :cond_b1

    invoke-interface {p1}, Lr2/a;->b()Ljava/math/BigInteger;

    move-result-object p5

    sget-object v3, Lk2/a;->c:Ljava/math/BigInteger;

    invoke-virtual {p5, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_b1

    instance-of p5, p1, Lr2/d;

    if-eqz p5, :cond_b1

    sget-object p5, Lm0/m;->I0:Lm/q;

    iput-object p5, v0, Lm0/g;->q:Lm/q;

    :goto_3b
    iput-object v0, p0, Lm0/h;->d:Lm0/g;

    iput-object p2, p0, Lm0/h;->q:Lm0/j;

    iput-object p3, p0, Lm0/h;->x:Ljava/math/BigInteger;

    iput-object p4, p0, Lm0/h;->y:Ljava/math/BigInteger;

    invoke-static {p1}, Lk2/b0;->r(Lr2/a;)Z

    move-result p2

    if-eqz p2, :cond_5e

    new-instance p2, Lm0/k;

    invoke-interface {p1}, Lr2/a;->b()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p2, Lm0/k;->c:Lm/q;

    new-instance p3, Lm/l;

    invoke-direct {p3, p1}, Lm/l;-><init>(Ljava/math/BigInteger;)V

    iput-object p3, p2, Lm0/k;->d:Lm/u;

    :goto_5b
    iput-object p2, p0, Lm0/h;->c:Lm0/k;

    return-void

    :cond_5e
    invoke-interface {p1}, Lr2/a;->a()I

    move-result p2

    if-le p2, v1, :cond_a9

    invoke-interface {p1}, Lr2/a;->b()Ljava/math/BigInteger;

    move-result-object p2

    sget-object p3, Lk2/a;->c:Ljava/math/BigInteger;

    invoke-virtual {p2, p3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a9

    instance-of p2, p1, Lr2/d;

    if-eqz p2, :cond_a9

    check-cast p1, Lr2/d;

    iget-object p1, p1, Lr2/d;->b:Lr2/c;

    iget-object p1, p1, Lr2/c;->a:[I

    invoke-static {p1}, Lm4/d;->f([I)[I

    move-result-object p1

    array-length p2, p1

    const/4 p3, 0x2

    const/4 p4, 0x3

    if-ne p2, p4, :cond_8e

    new-instance p2, Lm0/k;

    aget p3, p1, p3

    aget p1, p1, v1

    const/4 p4, 0x0

    invoke-direct {p2, p3, p1, p4, p4}, Lm0/k;-><init>(IIII)V

    goto :goto_5b

    :cond_8e
    array-length p2, p1

    const/4 p5, 0x5

    if-ne p2, p5, :cond_a1

    new-instance p2, Lm0/k;

    const/4 p5, 0x4

    aget p5, p1, p5

    aget v0, p1, v1

    aget p3, p1, p3

    aget p1, p1, p4

    invoke-direct {p2, p5, v0, p3, p1}, Lm0/k;-><init>(IIII)V

    goto :goto_5b

    :cond_a1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Only trinomial and pentomial curves are supported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'curve\' is of an unsupported type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "This type of ECCurve is not implemented"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static h(Ljava/lang/Object;)Lm0/h;
    .registers 17

    move-object/from16 v0, p0

    instance-of v1, v0, Lm0/h;

    if-eqz v1, :cond_9

    check-cast v0, Lm0/h;

    return-object v0

    :cond_9
    const/4 v1, 0x0

    if-eqz v0, :cond_1ab

    new-instance v2, Lm0/h;

    invoke-static {v0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lm/x;->v(I)Lm/f;

    move-result-object v4

    instance-of v4, v4, Lm/l;

    if-eqz v4, :cond_1a3

    invoke-virtual {v0, v3}, Lm/x;->v(I)Lm/f;

    move-result-object v4

    check-cast v4, Lm/l;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lm/l;->u(I)Z

    move-result v4

    if-eqz v4, :cond_1a3

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lm/x;->v(I)Lm/f;

    move-result-object v4

    check-cast v4, Lm/l;

    invoke-virtual {v4}, Lm/l;->t()Ljava/math/BigInteger;

    move-result-object v10

    iput-object v10, v2, Lm0/h;->x:Ljava/math/BigInteger;

    invoke-virtual {v0}, Lm/x;->size()I

    move-result v4

    const/4 v6, 0x6

    if-ne v4, v6, :cond_4c

    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Lm/x;->v(I)Lm/f;

    move-result-object v4

    check-cast v4, Lm/l;

    invoke-virtual {v4}, Lm/l;->t()Ljava/math/BigInteger;

    move-result-object v4

    iput-object v4, v2, Lm0/h;->y:Ljava/math/BigInteger;

    :cond_4c
    invoke-virtual {v0, v5}, Lm/x;->v(I)Lm/f;

    move-result-object v4

    instance-of v6, v4, Lm0/k;

    if-eqz v6, :cond_57

    check-cast v4, Lm0/k;

    goto :goto_79

    :cond_57
    if-eqz v4, :cond_78

    new-instance v6, Lm0/k;

    invoke-static {v4}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v4

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v4, v3}, Lm/x;->v(I)Lm/f;

    move-result-object v7

    invoke-static {v7}, Lm/q;->v(Ljava/lang/Object;)Lm/q;

    move-result-object v7

    iput-object v7, v6, Lm0/k;->c:Lm/q;

    invoke-virtual {v4, v5}, Lm/x;->v(I)Lm/f;

    move-result-object v4

    invoke-interface {v4}, Lm/f;->d()Lm/u;

    move-result-object v4

    iput-object v4, v6, Lm0/k;->d:Lm/u;

    move-object v4, v6

    goto :goto_79

    :cond_78
    move-object v4, v1

    :goto_79
    iput-object v4, v2, Lm0/h;->c:Lm0/k;

    new-instance v15, Lm0/g;

    iget-object v11, v2, Lm0/h;->y:Ljava/math/BigInteger;

    const/4 v13, 0x2

    invoke-virtual {v0, v13}, Lm/x;->v(I)Lm/f;

    move-result-object v6

    invoke-static {v6}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v14

    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    iput-object v1, v15, Lm0/g;->q:Lm/q;

    iget-object v1, v4, Lm0/k;->c:Lm/q;

    iget-object v4, v4, Lm0/k;->d:Lm/u;

    iput-object v1, v15, Lm0/g;->q:Lm/q;

    sget-object v6, Lm0/m;->H0:Lm/q;

    invoke-virtual {v1, v6}, Lm/u;->n(Lm/u;)Z

    move-result v1

    if-eqz v1, :cond_cb

    check-cast v4, Lm/l;

    invoke-virtual {v4}, Lm/l;->t()Ljava/math/BigInteger;

    move-result-object v7

    new-instance v8, Ljava/math/BigInteger;

    invoke-virtual {v14, v3}, Lm/x;->v(I)Lm/f;

    move-result-object v1

    invoke-static {v1}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object v1

    iget-object v1, v1, Lm/r;->c:[B

    invoke-direct {v8, v5, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v9, Ljava/math/BigInteger;

    invoke-virtual {v14, v5}, Lm/x;->v(I)Lm/f;

    move-result-object v1

    invoke-static {v1}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object v1

    iget-object v1, v1, Lm/r;->c:[B

    invoke-direct {v9, v5, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v6, Lk2/g;

    const/4 v12, 0x0

    invoke-direct/range {v6 .. v12}, Lk2/g;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Z)V

    iput-object v6, v15, Lm0/g;->c:Lk2/h;

    move v3, v13

    move-object v1, v14

    goto/16 :goto_163

    :cond_cb
    iget-object v1, v15, Lm0/g;->q:Lm/q;

    sget-object v6, Lm0/m;->I0:Lm/q;

    invoke-virtual {v1, v6}, Lm/u;->n(Lm/u;)Z

    move-result v1

    if-eqz v1, :cond_19b

    invoke-static {v4}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v1

    invoke-virtual {v1, v3}, Lm/x;->v(I)Lm/f;

    move-result-object v4

    check-cast v4, Lm/l;

    invoke-virtual {v4}, Lm/l;->y()I

    move-result v7

    invoke-virtual {v1, v5}, Lm/x;->v(I)Lm/f;

    move-result-object v4

    check-cast v4, Lm/q;

    sget-object v6, Lm0/m;->J0:Lm/q;

    invoke-virtual {v4, v6}, Lm/u;->n(Lm/u;)Z

    move-result v6

    if-eqz v6, :cond_102

    invoke-virtual {v1, v13}, Lm/x;->v(I)Lm/f;

    move-result-object v1

    invoke-static {v1}, Lm/l;->r(Ljava/lang/Object;)Lm/l;

    move-result-object v1

    invoke-virtual {v1}, Lm/l;->y()I

    move-result v1

    move v8, v1

    move v1, v3

    move v9, v1

    :goto_100
    move-object v4, v11

    goto :goto_139

    :cond_102
    sget-object v6, Lm0/m;->K0:Lm/q;

    invoke-virtual {v4, v6}, Lm/u;->n(Lm/u;)Z

    move-result v4

    if-eqz v4, :cond_193

    invoke-virtual {v1, v13}, Lm/x;->v(I)Lm/f;

    move-result-object v1

    invoke-static {v1}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v1

    invoke-virtual {v1, v3}, Lm/x;->v(I)Lm/f;

    move-result-object v4

    invoke-static {v4}, Lm/l;->r(Ljava/lang/Object;)Lm/l;

    move-result-object v4

    invoke-virtual {v4}, Lm/l;->y()I

    move-result v4

    invoke-virtual {v1, v5}, Lm/x;->v(I)Lm/f;

    move-result-object v6

    invoke-static {v6}, Lm/l;->r(Ljava/lang/Object;)Lm/l;

    move-result-object v6

    invoke-virtual {v6}, Lm/l;->y()I

    move-result v6

    invoke-virtual {v1, v13}, Lm/x;->v(I)Lm/f;

    move-result-object v1

    invoke-static {v1}, Lm/l;->r(Ljava/lang/Object;)Lm/l;

    move-result-object v1

    invoke-virtual {v1}, Lm/l;->y()I

    move-result v1

    move v8, v4

    move v9, v6

    goto :goto_100

    :goto_139
    new-instance v11, Ljava/math/BigInteger;

    invoke-virtual {v14, v3}, Lm/x;->v(I)Lm/f;

    move-result-object v3

    invoke-static {v3}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object v3

    iget-object v3, v3, Lm/r;->c:[B

    invoke-direct {v11, v5, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v12, Ljava/math/BigInteger;

    invoke-virtual {v14, v5}, Lm/x;->v(I)Lm/f;

    move-result-object v3

    invoke-static {v3}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object v3

    iget-object v3, v3, Lm/r;->c:[B

    invoke-direct {v12, v5, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v6, Lk2/f;

    move v3, v13

    move-object v13, v10

    move v10, v1

    move-object v1, v14

    move-object v14, v4

    invoke-direct/range {v6 .. v14}, Lk2/f;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v6, v15, Lm0/g;->c:Lk2/h;

    :goto_163
    invoke-virtual {v1}, Lm/x;->size()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_176

    invoke-virtual {v1, v3}, Lm/x;->v(I)Lm/f;

    move-result-object v1

    check-cast v1, Lm/p0;

    invoke-virtual {v1}, Lm/b;->s()[B

    move-result-object v1

    iput-object v1, v15, Lm0/g;->d:[B

    :cond_176
    iput-object v15, v2, Lm0/h;->d:Lm0/g;

    invoke-virtual {v0, v5}, Lm/x;->v(I)Lm/f;

    move-result-object v0

    instance-of v1, v0, Lm0/j;

    if-eqz v1, :cond_185

    check-cast v0, Lm0/j;

    iput-object v0, v2, Lm0/h;->q:Lm0/j;

    return-object v2

    :cond_185
    new-instance v1, Lm0/j;

    iget-object v3, v15, Lm0/g;->c:Lk2/h;

    check-cast v0, Lm/r;

    iget-object v0, v0, Lm/r;->c:[B

    invoke-direct {v1, v3, v0}, Lm0/j;-><init>(Lk2/h;[B)V

    iput-object v1, v2, Lm0/h;->q:Lm0/j;

    return-object v2

    :cond_193
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This type of EC basis is not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This type of ECCurve is not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad version in X9ECParameters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1ab
    return-object v1
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 4

    new-instance v0, Lm/g;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lm/g;-><init>(I)V

    new-instance v1, Lm/l;

    sget-object v2, Lm0/h;->z1:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lm/l;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    iget-object v1, p0, Lm0/h;->c:Lm0/k;

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    iget-object v1, p0, Lm0/h;->d:Lm0/g;

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    iget-object v1, p0, Lm0/h;->q:Lm0/j;

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    new-instance v1, Lm/l;

    iget-object v2, p0, Lm0/h;->x:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lm/l;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    iget-object p0, p0, Lm0/h;->y:Ljava/math/BigInteger;

    if-eqz p0, :cond_35

    new-instance v1, Lm/l;

    invoke-direct {v1, p0}, Lm/l;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    :cond_35
    new-instance p0, Lm/a1;

    invoke-direct {p0, v0}, Lm/x;-><init>(Lm/g;)V

    const/4 v0, -0x1

    iput v0, p0, Lm/a1;->q:I

    return-object p0
.end method

.method public final i()[B
    .registers 1

    iget-object p0, p0, Lm0/h;->d:Lm0/g;

    iget-object p0, p0, Lm0/g;->d:[B

    invoke-static {p0}, Lm4/d;->e([B)[B

    move-result-object p0

    return-object p0
.end method
