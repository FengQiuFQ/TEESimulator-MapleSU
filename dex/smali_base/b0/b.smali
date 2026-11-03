.class public final Lb0/b;
.super Lm/n;


# instance fields
.field public c:Ll0/b;

.field public d:Lm/r;

.field public q:Lm/r;

.field public x:Lm/l;


# direct methods
.method public static h(Lm/f;)Lb0/b;
    .registers 3

    instance-of v0, p0, Lb0/b;

    if-eqz v0, :cond_7

    check-cast p0, Lb0/b;

    return-object p0

    :cond_7
    if-eqz p0, :cond_39

    new-instance v0, Lb0/b;

    invoke-static {p0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lm/x;->v(I)Lm/f;

    move-result-object v1

    invoke-static {v1}, Ll0/b;->h(Ljava/lang/Object;)Ll0/b;

    move-result-object v1

    iput-object v1, v0, Lb0/b;->c:Ll0/b;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lm/x;->v(I)Lm/f;

    move-result-object v1

    check-cast v1, Lm/r;

    iput-object v1, v0, Lb0/b;->d:Lm/r;

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lm/x;->v(I)Lm/f;

    move-result-object v1

    check-cast v1, Lm/r;

    iput-object v1, v0, Lb0/b;->q:Lm/r;

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lm/x;->v(I)Lm/f;

    move-result-object p0

    check-cast p0, Lm/l;

    iput-object p0, v0, Lb0/b;->x:Lm/l;

    return-object v0

    :cond_39
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 3

    new-instance v0, Lm/g;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lm/g;-><init>(I)V

    iget-object v1, p0, Lb0/b;->c:Ll0/b;

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    iget-object v1, p0, Lb0/b;->d:Lm/r;

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    iget-object v1, p0, Lb0/b;->q:Lm/r;

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    iget-object p0, p0, Lb0/b;->x:Lm/l;

    invoke-virtual {v0, p0}, Lm/g;->a(Lm/f;)V

    new-instance p0, Lm/a1;

    invoke-direct {p0, v0}, Lm/x;-><init>(Lm/g;)V

    const/4 v0, -0x1

    iput v0, p0, Lm/a1;->q:I

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    iget-object v0, p0, Lb0/b;->c:Ll0/b;

    const/4 v1, 0x1

    if-ne p0, p1, :cond_6

    goto :goto_5e

    :cond_6
    instance-of v2, p1, Lm/f;

    if-eqz v2, :cond_5f

    :try_start_a
    check-cast p1, Lm/f;

    invoke-static {p1}, Lb0/b;->h(Lm/f;)Lb0/b;

    move-result-object p1

    iget-object v2, v0, Ll0/b;->c:Lm/q;

    iget-object v3, p1, Lb0/b;->c:Ll0/b;

    iget-object v3, v3, Ll0/b;->c:Lm/q;

    invoke-virtual {v2, v3}, Lm/u;->n(Lm/u;)Z

    move-result v2

    if-nez v2, :cond_1d

    goto :goto_5f

    :cond_1d
    iget-object v0, v0, Ll0/b;->d:Lm/f;

    iget-object v2, p1, Lb0/b;->c:Ll0/b;

    iget-object v2, v2, Ll0/b;->d:Lm/f;

    sget-object v3, Lm/v0;->d:Lm/v0;

    if-ne v0, v2, :cond_29

    :goto_27
    move v0, v1

    goto :goto_3d

    :cond_29
    if-nez v0, :cond_30

    invoke-virtual {v3, v2}, Lm/u;->m(Lm/f;)Z

    move-result v0

    goto :goto_3d

    :cond_30
    invoke-virtual {v3, v0}, Lm/u;->m(Lm/f;)Z

    move-result v3

    if-eqz v3, :cond_39

    if-nez v2, :cond_39

    goto :goto_27

    :cond_39
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_3d
    if-nez v0, :cond_40

    goto :goto_5f

    :cond_40
    iget-object v0, p0, Lb0/b;->d:Lm/r;

    iget-object v2, p1, Lb0/b;->d:Lm/r;

    invoke-virtual {v0, v2}, Lm/u;->n(Lm/u;)Z

    move-result v0

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lb0/b;->q:Lm/r;

    iget-object v2, p1, Lb0/b;->q:Lm/r;

    invoke-virtual {v0, v2}, Lm/u;->n(Lm/u;)Z

    move-result v0

    if-eqz v0, :cond_5f

    iget-object p0, p0, Lb0/b;->x:Lm/l;

    iget-object p1, p1, Lb0/b;->x:Lm/l;

    invoke-virtual {p0, p1}, Lm/u;->n(Lm/u;)Z

    move-result p0
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_5c} :catch_5f

    if-eqz p0, :cond_5f

    :goto_5e
    return v1

    :catch_5f
    :cond_5f
    :goto_5f
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .registers 5

    iget-object v0, p0, Lb0/b;->c:Ll0/b;

    iget-object v1, v0, Ll0/b;->d:Lm/f;

    if-eqz v1, :cond_14

    sget-object v2, Lm/v0;->d:Lm/v0;

    invoke-virtual {v2, v1}, Lm/u;->m(Lm/f;)Z

    move-result v2

    if-eqz v2, :cond_f

    goto :goto_14

    :cond_f
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v1, 0x0

    :goto_15
    iget-object v0, v0, Ll0/b;->c:Lm/q;

    iget-object v0, v0, Lm/q;->c:[B

    invoke-static {v0}, Lm4/d;->u([B)I

    move-result v0

    iget-object v2, p0, Lb0/b;->d:Lm/r;

    iget-object v2, v2, Lm/r;->c:[B

    invoke-static {v2}, Lm4/d;->u([B)I

    move-result v2

    iget-object v3, p0, Lb0/b;->q:Lm/r;

    iget-object v3, v3, Lm/r;->c:[B

    invoke-static {v3}, Lm4/d;->u([B)I

    move-result v3

    iget-object p0, p0, Lb0/b;->x:Lm/l;

    iget-object p0, p0, Lm/l;->c:[B

    invoke-static {p0}, Lm4/d;->u([B)I

    move-result p0

    mul-int/lit8 p0, p0, 0x7

    add-int/2addr p0, v3

    mul-int/lit8 p0, p0, 0x7

    add-int/2addr p0, v2

    mul-int/lit8 p0, p0, 0x7

    add-int/2addr p0, v0

    mul-int/lit8 p0, p0, 0x7

    add-int/2addr p0, v1

    return p0
.end method
