.class public final Lk2/s;
.super Lk2/b0;


# instance fields
.field public final l:Lk2/h;

.field public final m:Lo2/b;


# direct methods
.method public constructor <init>(Lk2/h;Lo2/b;)V
    .registers 4

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lk2/b0;-><init>(I)V

    iget-object v0, p1, Lk2/h;->d:Ljava/math/BigInteger;

    if-eqz v0, :cond_d

    iput-object p1, p0, Lk2/s;->l:Lk2/h;

    iput-object p2, p0, Lk2/s;->m:Lo2/b;

    return-void

    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Need curve with known group order"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final A(Lk2/p;Ljava/math/BigInteger;)Lk2/p;
    .registers 15

    iget-object v0, p1, Lk2/p;->a:Lk2/h;

    iget-object v1, p1, Lk2/p;->a:Lk2/h;

    iget-object v2, p0, Lk2/s;->l:Lk2/h;

    invoke-virtual {v2, v0}, Lk2/h;->i(Lk2/h;)Z

    move-result v0

    if-eqz v0, :cond_ae

    iget-object v0, v1, Lk2/h;->d:Ljava/math/BigInteger;

    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    iget-object p0, p0, Lk2/s;->m:Lo2/b;

    invoke-virtual {p0, p2}, Lo2/b;->a(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object p2

    const/4 v0, 0x0

    aget-object v2, p2, v0

    const/4 v3, 0x1

    aget-object p2, p2, v3

    invoke-virtual {v2}, Ljava/math/BigInteger;->signum()I

    move-result v4

    if-gez v4, :cond_26

    move v4, v3

    goto :goto_27

    :cond_26
    move v4, v0

    :goto_27
    invoke-virtual {p2}, Ljava/math/BigInteger;->signum()I

    move-result v5

    if-gez v5, :cond_2e

    move v0, v3

    :cond_2e
    invoke-virtual {v2}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p2}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    invoke-virtual {p2}, Ljava/math/BigInteger;->bitLength()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    sget-object v5, Lk2/b0;->h:[I

    const/16 v6, 0x8

    invoke-static {v3, v6, v5}, Lk2/b0;->n(II[I)I

    move-result v3

    invoke-static {p1, v3}, Lk2/b0;->C(Lk2/p;I)Lk2/z;

    move-result-object v3

    new-instance v5, Lb1/b;

    const/16 v7, 0xb

    invoke-direct {v5, p0, p1, v7}, Lb1/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const-string v7, "bc_endo"

    invoke-virtual {v1, p1, v7, v5}, Lk2/h;->q(Lk2/p;Ljava/lang/String;Lk2/u;)Lk2/v;

    move-result-object p1

    check-cast p1, Lo2/a;

    iget-object p1, p1, Lo2/a;->b:Lk2/p;

    iget-object p0, p0, Lo2/b;->b:Lb1/a;

    iget-object v1, p1, Lk2/p;->a:Lk2/h;

    new-instance v5, Lb1/b;

    const/4 v7, 0x7

    invoke-direct {v5, v3, p0, v7}, Lb1/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const-string p0, "bc_wnaf"

    invoke-virtual {v1, p1, p0, v5}, Lk2/h;->q(Lk2/p;Ljava/lang/String;Lk2/u;)Lk2/v;

    move-result-object p0

    check-cast p0, Lk2/z;

    iget p1, v3, Lk2/z;->f:I

    invoke-static {v6, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget v1, p0, Lk2/z;->f:I

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-eqz v4, :cond_83

    iget-object v5, v3, Lk2/z;->d:[Lk2/p;

    :goto_81
    move-object v6, v5

    goto :goto_86

    :cond_83
    iget-object v5, v3, Lk2/z;->c:[Lk2/p;

    goto :goto_81

    :goto_86
    if-eqz v0, :cond_8c

    iget-object v5, p0, Lk2/z;->d:[Lk2/p;

    :goto_8a
    move-object v9, v5

    goto :goto_8f

    :cond_8c
    iget-object v5, p0, Lk2/z;->c:[Lk2/p;

    goto :goto_8a

    :goto_8f
    if-eqz v4, :cond_95

    iget-object v3, v3, Lk2/z;->c:[Lk2/p;

    :goto_93
    move-object v7, v3

    goto :goto_98

    :cond_95
    iget-object v3, v3, Lk2/z;->d:[Lk2/p;

    goto :goto_93

    :goto_98
    if-eqz v0, :cond_9e

    iget-object p0, p0, Lk2/z;->c:[Lk2/p;

    :goto_9c
    move-object v10, p0

    goto :goto_a1

    :cond_9e
    iget-object p0, p0, Lk2/z;->d:[Lk2/p;

    goto :goto_9c

    :goto_a1
    invoke-static {p1, v2}, Lk2/b0;->g(ILjava/math/BigInteger;)[B

    move-result-object v8

    invoke-static {v1, p2}, Lk2/b0;->g(ILjava/math/BigInteger;)[B

    move-result-object v11

    invoke-static/range {v6 .. v11}, Lk2/b0;->p([Lk2/p;[Lk2/p;[B[Lk2/p;[Lk2/p;[B)Lk2/p;

    move-result-object p0

    return-object p0

    :cond_ae
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
