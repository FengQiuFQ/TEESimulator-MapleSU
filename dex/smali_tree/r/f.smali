.class public final Lr/f;
.super Lm/n;


# instance fields
.field public c:Lm/q;

.field public d:Lm/q;

.field public q:Lm/q;


# direct methods
.method public constructor <init>(Lm/q;Lm/q;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr/f;->c:Lm/q;

    iput-object p2, p0, Lr/f;->d:Lm/q;

    const/4 p1, 0x0

    iput-object p1, p0, Lr/f;->q:Lm/q;

    return-void
.end method

.method public constructor <init>(Lm/q;Lm/q;Lm/q;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr/f;->c:Lm/q;

    iput-object p2, p0, Lr/f;->d:Lm/q;

    iput-object p3, p0, Lr/f;->q:Lm/q;

    return-void
.end method

.method public static h(Ljava/lang/Object;)Lr/f;
    .registers 5

    instance-of v0, p0, Lr/f;

    if-eqz v0, :cond_7

    check-cast p0, Lr/f;

    return-object p0

    :cond_7
    if-eqz p0, :cond_75

    new-instance v0, Lr/f;

    invoke-static {p0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lm/x;->v(I)Lm/f;

    move-result-object v1

    invoke-static {v1}, Lm/q;->v(Ljava/lang/Object;)Lm/q;

    move-result-object v1

    iput-object v1, v0, Lr/f;->c:Lm/q;

    sget-object v2, Lz1/a;->k:Lm/q;

    invoke-virtual {v1, v2}, Lm/u;->n(Lm/u;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_37

    invoke-virtual {p0}, Lm/x;->size()I

    move-result v1

    if-le v1, v3, :cond_5d

    :goto_2c
    invoke-virtual {p0, v3}, Lm/x;->v(I)Lm/f;

    move-result-object v1

    invoke-static {v1}, Lm/q;->v(Ljava/lang/Object;)Lm/q;

    move-result-object v1

    iput-object v1, v0, Lr/f;->d:Lm/q;

    goto :goto_5d

    :cond_37
    sget-object v2, Lz1/a;->l:Lm/q;

    invoke-virtual {v1, v2}, Lm/u;->n(Lm/u;)Z

    move-result v2

    if-nez v2, :cond_57

    sget-object v2, Lz1/a;->m:Lm/q;

    invoke-virtual {v1, v2}, Lm/u;->n(Lm/u;)Z

    move-result v2

    if-nez v2, :cond_57

    sget-object v2, Lz1/a;->n:Lm/q;

    invoke-virtual {v1, v2}, Lm/u;->n(Lm/u;)Z

    move-result v1

    if-eqz v1, :cond_50

    goto :goto_57

    :cond_50
    invoke-virtual {p0}, Lm/x;->size()I

    move-result v1

    if-le v1, v3, :cond_5d

    goto :goto_2c

    :cond_57
    :goto_57
    invoke-virtual {p0}, Lm/x;->size()I

    move-result v1

    if-gt v1, v3, :cond_6d

    :cond_5d
    :goto_5d
    invoke-virtual {p0}, Lm/x;->size()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_6c

    invoke-virtual {p0, v2}, Lm/x;->v(I)Lm/f;

    move-result-object p0

    check-cast p0, Lm/q;

    iput-object p0, v0, Lr/f;->q:Lm/q;

    :cond_6c
    return-object v0

    :cond_6d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "digestParamSet expected to be absent"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_75
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 3

    new-instance v0, Lm/g;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lm/g;-><init>(I)V

    iget-object v1, p0, Lr/f;->c:Lm/q;

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    iget-object v1, p0, Lr/f;->d:Lm/q;

    if-eqz v1, :cond_12

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    :cond_12
    iget-object p0, p0, Lr/f;->q:Lm/q;

    if-eqz p0, :cond_19

    invoke-virtual {v0, p0}, Lm/g;->a(Lm/f;)V

    :cond_19
    new-instance p0, Lm/a1;

    invoke-direct {p0, v0}, Lm/x;-><init>(Lm/g;)V

    const/4 v0, -0x1

    iput v0, p0, Lm/a1;->q:I

    return-object p0
.end method
