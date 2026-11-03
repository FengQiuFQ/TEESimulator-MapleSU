.class public final Ll0/u0;
.super Lm/n;


# instance fields
.field public A1:Lj0/c;

.field public B1:Ll0/p0;

.field public C1:Lm/b;

.field public D1:Lm/b;

.field public E1:Ll0/w;

.field public c:Lm/x;

.field public d:Lm/l;

.field public q:Lm/l;

.field public x:Ll0/b;

.field public y:Lj0/c;

.field public z1:Ll0/a1;


# direct methods
.method public static h(Ljava/lang/Object;)Ll0/u0;
    .registers 11

    instance-of v0, p0, Ll0/u0;

    if-eqz v0, :cond_7

    check-cast p0, Ll0/u0;

    return-object p0

    :cond_7
    const/4 v0, 0x0

    if-eqz p0, :cond_139

    new-instance v1, Ll0/u0;

    invoke-static {p0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object p0, v1, Ll0/u0;->c:Lm/x;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lm/x;->v(I)Lm/f;

    move-result-object v3

    instance-of v3, v3, Lm/a0;

    const/4 v4, 0x1

    if-eqz v3, :cond_31

    invoke-virtual {p0, v2}, Lm/x;->v(I)Lm/f;

    move-result-object v3

    check-cast v3, Lm/a0;

    sget-object v5, Lm/l;->q:Lm/a;

    invoke-virtual {v5, v3, v4}, Lm/a;->d(Lm/a0;Z)Lm/u;

    move-result-object v3

    check-cast v3, Lm/l;

    iput-object v3, v1, Ll0/u0;->d:Lm/l;

    move v3, v2

    goto :goto_3b

    :cond_31
    new-instance v3, Lm/l;

    const-wide/16 v5, 0x0

    invoke-direct {v3, v5, v6}, Lm/l;-><init>(J)V

    iput-object v3, v1, Ll0/u0;->d:Lm/l;

    const/4 v3, -0x1

    :goto_3b
    iget-object v5, v1, Ll0/u0;->d:Lm/l;

    invoke-virtual {v5, v2}, Lm/l;->u(I)Z

    move-result v5

    const/4 v6, 0x2

    if-eqz v5, :cond_47

    move v7, v2

    move v5, v4

    goto :goto_5c

    :cond_47
    iget-object v5, v1, Ll0/u0;->d:Lm/l;

    invoke-virtual {v5, v4}, Lm/l;->u(I)Z

    move-result v5

    if-eqz v5, :cond_52

    move v5, v2

    move v7, v4

    goto :goto_5c

    :cond_52
    iget-object v5, v1, Ll0/u0;->d:Lm/l;

    invoke-virtual {v5, v6}, Lm/l;->u(I)Z

    move-result v5

    if-eqz v5, :cond_131

    move v5, v2

    move v7, v5

    :goto_5c
    add-int/lit8 v8, v3, 0x1

    invoke-virtual {p0, v8}, Lm/x;->v(I)Lm/f;

    move-result-object v8

    invoke-static {v8}, Lm/l;->r(Ljava/lang/Object;)Lm/l;

    move-result-object v8

    iput-object v8, v1, Ll0/u0;->q:Lm/l;

    add-int/lit8 v8, v3, 0x2

    invoke-virtual {p0, v8}, Lm/x;->v(I)Lm/f;

    move-result-object v8

    invoke-static {v8}, Ll0/b;->h(Ljava/lang/Object;)Ll0/b;

    move-result-object v8

    iput-object v8, v1, Ll0/u0;->x:Ll0/b;

    add-int/lit8 v8, v3, 0x3

    invoke-virtual {p0, v8}, Lm/x;->v(I)Lm/f;

    move-result-object v8

    invoke-static {v8}, Lj0/c;->i(Ljava/lang/Object;)Lj0/c;

    move-result-object v8

    iput-object v8, v1, Ll0/u0;->y:Lj0/c;

    add-int/lit8 v8, v3, 0x4

    invoke-virtual {p0, v8}, Lm/x;->v(I)Lm/f;

    move-result-object v8

    instance-of v9, v8, Ll0/a1;

    if-eqz v9, :cond_8e

    move-object v0, v8

    check-cast v0, Ll0/a1;

    goto :goto_99

    :cond_8e
    if-eqz v8, :cond_99

    new-instance v0, Ll0/a1;

    invoke-static {v8}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v8

    invoke-direct {v0, v8}, Ll0/a1;-><init>(Lm/x;)V

    :cond_99
    :goto_99
    iput-object v0, v1, Ll0/u0;->z1:Ll0/a1;

    add-int/lit8 v0, v3, 0x5

    invoke-virtual {p0, v0}, Lm/x;->v(I)Lm/f;

    move-result-object v0

    invoke-static {v0}, Lj0/c;->i(Ljava/lang/Object;)Lj0/c;

    move-result-object v0

    iput-object v0, v1, Ll0/u0;->A1:Lj0/c;

    add-int/lit8 v3, v3, 0x6

    invoke-virtual {p0, v3}, Lm/x;->v(I)Lm/f;

    move-result-object v0

    invoke-static {v0}, Ll0/p0;->h(Ljava/lang/Object;)Ll0/p0;

    move-result-object v0

    iput-object v0, v1, Ll0/u0;->B1:Ll0/p0;

    invoke-virtual {p0}, Lm/x;->size()I

    move-result v0

    sub-int/2addr v0, v3

    sub-int/2addr v0, v4

    if-eqz v0, :cond_c6

    if-nez v5, :cond_be

    goto :goto_c6

    :cond_be
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "version 1 certificate contains extra data"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c6
    :goto_c6
    if-lez v0, :cond_130

    add-int v5, v3, v0

    invoke-virtual {p0, v5}, Lm/x;->v(I)Lm/f;

    move-result-object v5

    check-cast v5, Lm/a0;

    iget v8, v5, Lm/a0;->q:I

    sget-object v9, Lm/b;->d:Lm/a;

    if-eq v8, v4, :cond_11f

    if-eq v8, v6, :cond_110

    const/4 v9, 0x3

    if-ne v8, v9, :cond_fa

    if-nez v7, :cond_f2

    invoke-static {v5}, Lq4/k;->v(Lm/a0;)V

    sget-object v8, Lm/x;->d:Lm/a;

    invoke-virtual {v5, v4, v8}, Lm/a0;->t(ZLm/a;)Lm/u;

    move-result-object v5

    invoke-virtual {v8, v5}, Lm/a;->a(Lm/u;)V

    check-cast v5, Lm/x;

    invoke-static {v5}, Ll0/w;->j(Lm/f;)Ll0/w;

    move-result-object v5

    iput-object v5, v1, Ll0/u0;->E1:Ll0/w;

    goto :goto_12d

    :cond_f2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "version 2 certificate cannot contain extensions"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_fa
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown tag encountered in structure: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v5, Lm/a0;->q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_110
    invoke-static {v5}, Lq4/k;->v(Lm/a0;)V

    invoke-virtual {v5, v2, v9}, Lm/a0;->t(ZLm/a;)Lm/u;

    move-result-object v5

    invoke-virtual {v9, v5}, Lm/a;->a(Lm/u;)V

    check-cast v5, Lm/b;

    iput-object v5, v1, Ll0/u0;->D1:Lm/b;

    goto :goto_12d

    :cond_11f
    invoke-static {v5}, Lq4/k;->v(Lm/a0;)V

    invoke-virtual {v5, v2, v9}, Lm/a0;->t(ZLm/a;)Lm/u;

    move-result-object v5

    invoke-virtual {v9, v5}, Lm/a;->a(Lm/u;)V

    check-cast v5, Lm/b;

    iput-object v5, v1, Ll0/u0;->C1:Lm/b;

    :goto_12d
    add-int/lit8 v0, v0, -0x1

    goto :goto_c6

    :cond_130
    return-object v1

    :cond_131
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "version number not recognised"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_139
    return-object v0
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 7

    iget-object v0, p0, Ll0/u0;->d:Lm/l;

    iget-object v1, p0, Ll0/u0;->c:Lm/x;

    if-eqz v1, :cond_15

    const-string v2, "org.bouncycastle.x509.allow_non-der_tbscert"

    invoke-static {v2}, Lm4/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_14

    invoke-static {v2}, Lm4/h;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    :cond_14
    return-object v1

    :cond_15
    new-instance v1, Lm/g;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lm/g;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lm/l;->u(I)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_2c

    new-instance v3, Lm/d1;

    invoke-direct {v3, v4, v2, v0}, Lm/a0;-><init>(ZILm/f;)V

    invoke-virtual {v1, v3}, Lm/g;->a(Lm/f;)V

    :cond_2c
    iget-object v0, p0, Ll0/u0;->q:Lm/l;

    invoke-virtual {v1, v0}, Lm/g;->a(Lm/f;)V

    iget-object v0, p0, Ll0/u0;->x:Ll0/b;

    invoke-virtual {v1, v0}, Lm/g;->a(Lm/f;)V

    iget-object v0, p0, Ll0/u0;->y:Lj0/c;

    invoke-virtual {v1, v0}, Lm/g;->a(Lm/f;)V

    iget-object v0, p0, Ll0/u0;->z1:Ll0/a1;

    invoke-virtual {v1, v0}, Lm/g;->a(Lm/f;)V

    iget-object v0, p0, Ll0/u0;->A1:Lj0/c;

    invoke-virtual {v1, v0}, Lm/g;->a(Lm/f;)V

    iget-object v0, p0, Ll0/u0;->B1:Ll0/p0;

    invoke-virtual {v1, v0}, Lm/g;->a(Lm/f;)V

    iget-object v0, p0, Ll0/u0;->C1:Lm/b;

    if-eqz v0, :cond_56

    new-instance v3, Lm/d1;

    invoke-direct {v3, v2, v4, v0}, Lm/a0;-><init>(ZILm/f;)V

    invoke-virtual {v1, v3}, Lm/g;->a(Lm/f;)V

    :cond_56
    iget-object v0, p0, Ll0/u0;->D1:Lm/b;

    if-eqz v0, :cond_63

    new-instance v3, Lm/d1;

    const/4 v5, 0x2

    invoke-direct {v3, v2, v5, v0}, Lm/a0;-><init>(ZILm/f;)V

    invoke-virtual {v1, v3}, Lm/g;->a(Lm/f;)V

    :cond_63
    iget-object p0, p0, Ll0/u0;->E1:Ll0/w;

    if-eqz p0, :cond_70

    new-instance v0, Lm/d1;

    const/4 v2, 0x3

    invoke-direct {v0, v4, v2, p0}, Lm/a0;-><init>(ZILm/f;)V

    invoke-virtual {v1, v0}, Lm/g;->a(Lm/f;)V

    :cond_70
    new-instance p0, Lm/a1;

    invoke-direct {p0, v1}, Lm/x;-><init>(Lm/g;)V

    const/4 v0, -0x1

    iput v0, p0, Lm/a1;->q:I

    return-object p0
.end method
