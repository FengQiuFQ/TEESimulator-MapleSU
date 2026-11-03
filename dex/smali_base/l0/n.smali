.class public final Ll0/n;
.super Lm/n;


# instance fields
.field public c:Ll0/t0;

.field public d:Ll0/b;

.field public q:Lm/b;

.field public x:Z

.field public y:I


# direct methods
.method public static h(Lm/f;)Ll0/n;
    .registers 9

    instance-of v0, p0, Ll0/n;

    if-eqz v0, :cond_7

    check-cast p0, Ll0/n;

    return-object p0

    :cond_7
    const/4 v0, 0x0

    if-eqz p0, :cond_114

    new-instance v1, Ll0/n;

    invoke-static {p0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, v1, Ll0/n;->x:Z

    invoke-virtual {p0}, Lm/x;->size()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_10c

    invoke-virtual {p0, v2}, Lm/x;->v(I)Lm/f;

    move-result-object v3

    instance-of v5, v3, Ll0/t0;

    const/4 v6, 0x1

    if-eqz v5, :cond_2b

    move-object v0, v3

    check-cast v0, Ll0/t0;

    goto/16 :goto_f4

    :cond_2b
    if-eqz v3, :cond_f4

    new-instance v5, Ll0/t0;

    invoke-static {v3}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v3

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v3}, Lm/x;->size()I

    move-result v7

    if-lt v7, v4, :cond_e3

    invoke-virtual {v3}, Lm/x;->size()I

    move-result v4

    const/4 v7, 0x7

    if-gt v4, v7, :cond_e3

    invoke-virtual {v3, v2}, Lm/x;->v(I)Lm/f;

    move-result-object v4

    instance-of v4, v4, Lm/l;

    if-eqz v4, :cond_57

    invoke-virtual {v3, v2}, Lm/x;->v(I)Lm/f;

    move-result-object v0

    invoke-static {v0}, Lm/l;->r(Ljava/lang/Object;)Lm/l;

    move-result-object v0

    iput-object v0, v5, Ll0/t0;->c:Lm/l;

    move v2, v6

    goto :goto_59

    :cond_57
    iput-object v0, v5, Ll0/t0;->c:Lm/l;

    :goto_59
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {v3, v2}, Lm/x;->v(I)Lm/f;

    move-result-object v4

    invoke-static {v4}, Ll0/b;->h(Ljava/lang/Object;)Ll0/b;

    move-result-object v4

    iput-object v4, v5, Ll0/t0;->d:Ll0/b;

    add-int/lit8 v4, v2, 0x2

    invoke-virtual {v3, v0}, Lm/x;->v(I)Lm/f;

    move-result-object v0

    invoke-static {v0}, Lj0/c;->i(Ljava/lang/Object;)Lj0/c;

    move-result-object v0

    iput-object v0, v5, Ll0/t0;->q:Lj0/c;

    add-int/lit8 v0, v2, 0x3

    invoke-virtual {v3, v4}, Lm/x;->v(I)Lm/f;

    move-result-object v4

    invoke-static {v4}, Ll0/x0;->i(Lm/f;)Ll0/x0;

    move-result-object v4

    iput-object v4, v5, Ll0/t0;->x:Ll0/x0;

    invoke-virtual {v3}, Lm/x;->size()I

    move-result v4

    if-ge v0, v4, :cond_a8

    invoke-virtual {v3, v0}, Lm/x;->v(I)Lm/f;

    move-result-object v4

    instance-of v4, v4, Lm/b0;

    if-nez v4, :cond_9b

    invoke-virtual {v3, v0}, Lm/x;->v(I)Lm/f;

    move-result-object v4

    instance-of v4, v4, Lm/j;

    if-nez v4, :cond_9b

    invoke-virtual {v3, v0}, Lm/x;->v(I)Lm/f;

    move-result-object v4

    instance-of v4, v4, Ll0/x0;

    if-eqz v4, :cond_a8

    :cond_9b
    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v3, v0}, Lm/x;->v(I)Lm/f;

    move-result-object v0

    invoke-static {v0}, Ll0/x0;->i(Lm/f;)Ll0/x0;

    move-result-object v0

    iput-object v0, v5, Ll0/t0;->y:Ll0/x0;

    move v0, v2

    :cond_a8
    invoke-virtual {v3}, Lm/x;->size()I

    move-result v2

    if-ge v0, v2, :cond_c3

    invoke-virtual {v3, v0}, Lm/x;->v(I)Lm/f;

    move-result-object v2

    instance-of v2, v2, Lm/a0;

    if-nez v2, :cond_c3

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v3, v0}, Lm/x;->v(I)Lm/f;

    move-result-object v0

    invoke-static {v0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v0

    iput-object v0, v5, Ll0/t0;->z1:Lm/x;

    move v0, v2

    :cond_c3
    invoke-virtual {v3}, Lm/x;->size()I

    move-result v2

    if-ge v0, v2, :cond_e1

    invoke-virtual {v3, v0}, Lm/x;->v(I)Lm/f;

    move-result-object v2

    instance-of v2, v2, Lm/a0;

    if-eqz v2, :cond_e1

    invoke-virtual {v3, v0}, Lm/x;->v(I)Lm/f;

    move-result-object v0

    check-cast v0, Lm/a0;

    invoke-static {v0, v6}, Lm/x;->u(Lm/a0;Z)Lm/x;

    move-result-object v0

    invoke-static {v0}, Ll0/w;->j(Lm/f;)Ll0/w;

    move-result-object v0

    iput-object v0, v5, Ll0/t0;->A1:Ll0/w;

    :cond_e1
    move-object v0, v5

    goto :goto_f4

    :cond_e3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bad sequence size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->d(Lm/x;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f4
    :goto_f4
    iput-object v0, v1, Ll0/n;->c:Ll0/t0;

    invoke-virtual {p0, v6}, Lm/x;->v(I)Lm/f;

    move-result-object v0

    invoke-static {v0}, Ll0/b;->h(Ljava/lang/Object;)Ll0/b;

    move-result-object v0

    iput-object v0, v1, Ll0/n;->d:Ll0/b;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lm/x;->v(I)Lm/f;

    move-result-object p0

    invoke-static {p0}, Lm/b;->t(Ljava/lang/Object;)Lm/b;

    move-result-object p0

    iput-object p0, v1, Ll0/n;->q:Lm/b;

    return-object v1

    :cond_10c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "sequence wrong size for CertificateList"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_114
    return-object v0
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 3

    new-instance v0, Lm/g;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lm/g;-><init>(I)V

    iget-object v1, p0, Ll0/n;->c:Ll0/t0;

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    iget-object v1, p0, Ll0/n;->d:Ll0/b;

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    iget-object p0, p0, Ll0/n;->q:Lm/b;

    invoke-virtual {v0, p0}, Lm/g;->a(Lm/f;)V

    new-instance p0, Lm/a1;

    invoke-direct {p0, v0}, Lm/x;-><init>(Lm/g;)V

    const/4 v0, -0x1

    iput v0, p0, Lm/a1;->q:I

    return-object p0
.end method

.method public final hashCode()I
    .registers 2

    iget-boolean v0, p0, Ll0/n;->x:Z

    if-nez v0, :cond_d

    invoke-super {p0}, Lm/n;->hashCode()I

    move-result v0

    iput v0, p0, Ll0/n;->y:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Ll0/n;->x:Z

    :cond_d
    iget p0, p0, Ll0/n;->y:I

    return p0
.end method

.method public final i()Ljava/util/Enumeration;
    .registers 2

    iget-object p0, p0, Ll0/n;->c:Ll0/t0;

    iget-object p0, p0, Ll0/t0;->z1:Lm/x;

    if-nez p0, :cond_c

    new-instance p0, Ll0/r0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-object p0

    :cond_c
    new-instance v0, Ll0/s0;

    invoke-virtual {p0}, Lm/x;->w()Ljava/util/Enumeration;

    move-result-object p0

    invoke-direct {v0, p0}, Ll0/s0;-><init>(Ljava/util/Enumeration;)V

    return-object v0
.end method
