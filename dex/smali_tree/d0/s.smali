.class public final Ld0/s;
.super Lm/n;

# interfaces
.implements Ld0/r;


# instance fields
.field public c:Ld0/f;

.field public d:Ld0/l;


# direct methods
.method public static h(Lm/u;)Ld0/s;
    .registers 9

    const/4 v0, 0x0

    if-eqz p0, :cond_b0

    new-instance v1, Ld0/s;

    invoke-static {p0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Ld0/s;->d:Ld0/l;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lm/x;->v(I)Lm/f;

    move-result-object v3

    invoke-static {v3}, Lm/l;->r(Ljava/lang/Object;)Lm/l;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lm/l;->u(I)Z

    move-result v3

    if-eqz v3, :cond_a8

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lm/x;->v(I)Lm/f;

    move-result-object v5

    invoke-static {v5}, Ld0/f;->h(Ljava/lang/Object;)Ld0/f;

    move-result-object v5

    iput-object v5, v1, Ld0/s;->c:Ld0/f;

    invoke-virtual {p0}, Lm/x;->size()I

    move-result v5

    if-ne v5, v4, :cond_a7

    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lm/x;->v(I)Lm/f;

    move-result-object p0

    sget-object v6, Ld0/l;->x:Ljava/math/BigInteger;

    instance-of v6, p0, Ld0/l;

    if-eqz v6, :cond_3e

    move-object v0, p0

    check-cast v0, Ld0/l;

    goto :goto_a5

    :cond_3e
    if-eqz p0, :cond_a5

    new-instance v6, Ld0/l;

    invoke-static {p0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v2}, Lm/x;->v(I)Lm/f;

    move-result-object v2

    instance-of v7, v2, Ll0/r;

    if-eqz v7, :cond_55

    move-object v0, v2

    check-cast v0, Ll0/r;

    goto :goto_7a

    :cond_55
    if-eqz v2, :cond_7a

    new-instance v0, Ll0/r;

    invoke-static {v2}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v2

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v2}, Lm/x;->w()Ljava/util/Enumeration;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ll0/b;->h(Ljava/lang/Object;)Ll0/b;

    move-result-object v7

    iput-object v7, v0, Ll0/r;->d:Ll0/b;

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object v2

    iget-object v2, v2, Lm/r;->c:[B

    iput-object v2, v0, Ll0/r;->c:[B

    :cond_7a
    :goto_7a
    iput-object v0, v6, Ld0/l;->c:Ll0/r;

    invoke-virtual {p0, v3}, Lm/x;->v(I)Lm/f;

    move-result-object v0

    invoke-static {v0}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object v0

    iget-object v0, v0, Lm/r;->c:[B

    invoke-static {v0}, Lm4/d;->e([B)[B

    move-result-object v0

    iput-object v0, v6, Ld0/l;->d:[B

    invoke-virtual {p0}, Lm/x;->size()I

    move-result v0

    if-ne v0, v4, :cond_a2

    invoke-virtual {p0, v5}, Lm/x;->v(I)Lm/f;

    move-result-object p0

    invoke-static {p0}, Lm/l;->r(Ljava/lang/Object;)Lm/l;

    move-result-object p0

    invoke-virtual {p0}, Lm/l;->t()Ljava/math/BigInteger;

    move-result-object p0

    :goto_9e
    iput-object p0, v6, Ld0/l;->q:Ljava/math/BigInteger;

    move-object v0, v6

    goto :goto_a5

    :cond_a2
    sget-object p0, Ld0/l;->x:Ljava/math/BigInteger;

    goto :goto_9e

    :cond_a5
    :goto_a5
    iput-object v0, v1, Ld0/s;->d:Ld0/l;

    :cond_a7
    return-object v1

    :cond_a8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "wrong version for PFX PDU"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b0
    return-object v0
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 5

    new-instance v0, Lm/g;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lm/g;-><init>(I)V

    new-instance v1, Lm/l;

    const-wide/16 v2, 0x3

    invoke-direct {v1, v2, v3}, Lm/l;-><init>(J)V

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    iget-object v1, p0, Ld0/s;->c:Ld0/f;

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    iget-object p0, p0, Ld0/s;->d:Ld0/l;

    if-eqz p0, :cond_1c

    invoke-virtual {v0, p0}, Lm/g;->a(Lm/f;)V

    :cond_1c
    new-instance p0, Lm/h0;

    invoke-direct {p0, v0}, Lm/x;-><init>(Lm/g;)V

    return-object p0
.end method
