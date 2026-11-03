.class public final Ld0/z;
.super Lm/n;


# instance fields
.field public c:Lm/q;

.field public d:Lm/n;

.field public q:Lm/y;


# direct methods
.method public constructor <init>(Lm/q;Lm/a1;Lm/b1;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld0/z;->c:Lm/q;

    iput-object p2, p0, Ld0/z;->d:Lm/n;

    iput-object p3, p0, Ld0/z;->q:Lm/y;

    return-void
.end method

.method public static h(Lm/f;)Ld0/z;
    .registers 4

    instance-of v0, p0, Ld0/z;

    if-eqz v0, :cond_7

    check-cast p0, Ld0/z;

    return-object p0

    :cond_7
    if-eqz p0, :cond_39

    new-instance v0, Ld0/z;

    invoke-static {p0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lm/x;->v(I)Lm/f;

    move-result-object v1

    check-cast v1, Lm/q;

    iput-object v1, v0, Ld0/z;->c:Lm/q;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lm/x;->v(I)Lm/f;

    move-result-object v1

    check-cast v1, Lm/a0;

    invoke-virtual {v1}, Lm/a0;->u()Lm/n;

    move-result-object v1

    iput-object v1, v0, Ld0/z;->d:Lm/n;

    invoke-virtual {p0}, Lm/x;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_38

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lm/x;->v(I)Lm/f;

    move-result-object p0

    check-cast p0, Lm/y;

    iput-object p0, v0, Ld0/z;->q:Lm/y;

    :cond_38
    return-object v0

    :cond_39
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 6

    new-instance v0, Lm/g;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lm/g;-><init>(I)V

    iget-object v1, p0, Ld0/z;->c:Lm/q;

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    new-instance v1, Lm/p1;

    const/4 v2, 0x0

    iget-object v3, p0, Ld0/z;->d:Lm/n;

    const/4 v4, 0x1

    invoke-direct {v1, v4, v2, v3}, Lm/a0;-><init>(ZILm/f;)V

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    iget-object p0, p0, Ld0/z;->q:Lm/y;

    if-eqz p0, :cond_1e

    invoke-virtual {v0, p0}, Lm/g;->a(Lm/f;)V

    :cond_1e
    new-instance p0, Lm/n1;

    invoke-direct {p0, v0}, Lm/x;-><init>(Lm/g;)V

    const/4 v0, -0x1

    iput v0, p0, Lm/n1;->q:I

    return-object p0
.end method
