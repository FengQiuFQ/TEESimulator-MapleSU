.class public final Lb0/j;
.super Lm/n;


# static fields
.field public static final A1:Lm/l;


# instance fields
.field public c:Z

.field public d:Lm/l;

.field public q:Lb0/h;

.field public x:Lm/j;

.field public y:Lm/x;

.field public z1:Ll0/w;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lm/l;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lm/l;-><init>(J)V

    sput-object v0, Lb0/j;->A1:Lm/l;

    return-void
.end method

.method public static h(Ljava/lang/Object;)Lb0/j;
    .registers 8

    instance-of v0, p0, Lb0/j;

    if-eqz v0, :cond_7

    check-cast p0, Lb0/j;

    return-object p0

    :cond_7
    if-eqz p0, :cond_c3

    new-instance v0, Lb0/j;

    invoke-static {p0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lm/x;->v(I)Lm/f;

    move-result-object v2

    instance-of v2, v2, Lm/a0;

    const/4 v3, 0x1

    sget-object v4, Lb0/j;->A1:Lm/l;

    if-eqz v2, :cond_3c

    invoke-virtual {p0, v1}, Lm/x;->v(I)Lm/f;

    move-result-object v2

    check-cast v2, Lm/a0;

    iget v2, v2, Lm/a0;->q:I

    if-nez v2, :cond_3c

    iput-boolean v3, v0, Lb0/j;->c:Z

    invoke-virtual {p0, v1}, Lm/x;->v(I)Lm/f;

    move-result-object v1

    check-cast v1, Lm/a0;

    sget-object v2, Lm/l;->q:Lm/a;

    invoke-virtual {v2, v1, v3}, Lm/a;->d(Lm/a0;Z)Lm/u;

    move-result-object v1

    check-cast v1, Lm/l;

    iput-object v1, v0, Lb0/j;->d:Lm/l;

    move v1, v3

    goto :goto_3e

    :cond_3c
    iput-object v4, v0, Lb0/j;->d:Lm/l;

    :goto_3e
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1}, Lm/x;->v(I)Lm/f;

    move-result-object v4

    instance-of v5, v4, Lb0/h;

    if-eqz v5, :cond_4b

    check-cast v4, Lb0/h;

    goto :goto_94

    :cond_4b
    instance-of v5, v4, Lm/x0;

    if-eqz v5, :cond_58

    new-instance v5, Lb0/h;

    check-cast v4, Lm/x0;

    invoke-direct {v5, v4}, Lb0/h;-><init>(Lm/r;)V

    :goto_56
    move-object v4, v5

    goto :goto_94

    :cond_58
    instance-of v5, v4, Lm/a0;

    if-eqz v5, :cond_8a

    check-cast v4, Lm/a0;

    iget v5, v4, Lm/a0;->q:I

    if-ne v5, v3, :cond_76

    new-instance v5, Lb0/h;

    sget-object v6, Lj0/c;->z1:Lk0/b;

    sget-object v6, Lm/x;->d:Lm/a;

    invoke-virtual {v6, v4, v3}, Lm/a;->d(Lm/a0;Z)Lm/u;

    move-result-object v4

    check-cast v4, Lm/x;

    invoke-static {v4}, Lj0/c;->i(Ljava/lang/Object;)Lj0/c;

    move-result-object v4

    invoke-direct {v5, v4}, Lb0/h;-><init>(Lj0/c;)V

    goto :goto_56

    :cond_76
    new-instance v5, Lb0/h;

    invoke-static {v4}, Lq4/k;->v(Lm/a0;)V

    sget-object v6, Lm/r;->d:Lm/a;

    invoke-virtual {v4, v3, v6}, Lm/a0;->t(ZLm/a;)Lm/u;

    move-result-object v4

    invoke-virtual {v6, v4}, Lm/a;->a(Lm/u;)V

    check-cast v4, Lm/r;

    invoke-direct {v5, v4}, Lb0/h;-><init>(Lm/r;)V

    goto :goto_56

    :cond_8a
    new-instance v5, Lb0/h;

    invoke-static {v4}, Lj0/c;->i(Ljava/lang/Object;)Lj0/c;

    move-result-object v4

    invoke-direct {v5, v4}, Lb0/h;-><init>(Lj0/c;)V

    goto :goto_56

    :goto_94
    iput-object v4, v0, Lb0/j;->q:Lb0/h;

    add-int/lit8 v4, v1, 0x2

    invoke-virtual {p0, v2}, Lm/x;->v(I)Lm/f;

    move-result-object v2

    invoke-static {v2}, Lm/j;->u(Lm/f;)Lm/j;

    move-result-object v2

    iput-object v2, v0, Lb0/j;->x:Lm/j;

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {p0, v4}, Lm/x;->v(I)Lm/f;

    move-result-object v2

    check-cast v2, Lm/x;

    iput-object v2, v0, Lb0/j;->y:Lm/x;

    invoke-virtual {p0}, Lm/x;->size()I

    move-result v2

    if-le v2, v1, :cond_c2

    invoke-virtual {p0, v1}, Lm/x;->v(I)Lm/f;

    move-result-object p0

    check-cast p0, Lm/a0;

    invoke-static {p0, v3}, Lm/x;->u(Lm/a0;Z)Lm/x;

    move-result-object p0

    invoke-static {p0}, Ll0/w;->j(Lm/f;)Ll0/w;

    move-result-object p0

    iput-object p0, v0, Lb0/j;->z1:Ll0/w;

    :cond_c2
    return-object v0

    :cond_c3
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 6

    iget-object v0, p0, Lb0/j;->d:Lm/l;

    new-instance v1, Lm/g;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lm/g;-><init>(I)V

    iget-boolean v2, p0, Lb0/j;->c:Z

    const/4 v3, 0x1

    if-nez v2, :cond_15

    sget-object v2, Lb0/j;->A1:Lm/l;

    invoke-virtual {v0, v2}, Lm/u;->n(Lm/u;)Z

    move-result v2

    if-nez v2, :cond_1e

    :cond_15
    new-instance v2, Lm/d1;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v0}, Lm/a0;-><init>(ZILm/f;)V

    invoke-virtual {v1, v2}, Lm/g;->a(Lm/f;)V

    :cond_1e
    iget-object v0, p0, Lb0/j;->q:Lb0/h;

    invoke-virtual {v1, v0}, Lm/g;->a(Lm/f;)V

    iget-object v0, p0, Lb0/j;->x:Lm/j;

    invoke-virtual {v1, v0}, Lm/g;->a(Lm/f;)V

    iget-object v0, p0, Lb0/j;->y:Lm/x;

    invoke-virtual {v1, v0}, Lm/g;->a(Lm/f;)V

    iget-object p0, p0, Lb0/j;->z1:Ll0/w;

    if-eqz p0, :cond_39

    new-instance v0, Lm/d1;

    invoke-direct {v0, v3, v3, p0}, Lm/a0;-><init>(ZILm/f;)V

    invoke-virtual {v1, v0}, Lm/g;->a(Lm/f;)V

    :cond_39
    new-instance p0, Lm/a1;

    invoke-direct {p0, v1}, Lm/x;-><init>(Lm/g;)V

    const/4 v0, -0x1

    iput v0, p0, Lm/a1;->q:I

    return-object p0
.end method
