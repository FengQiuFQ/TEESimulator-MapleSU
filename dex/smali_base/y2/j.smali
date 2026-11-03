.class public final Ly2/j;
.super Lm/n;


# instance fields
.field public final c:Lm/l;

.field public final d:I

.field public final q:I

.field public final x:Ll0/b;


# direct methods
.method public constructor <init>(IILl0/b;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lm/l;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lm/l;-><init>(J)V

    iput-object v0, p0, Ly2/j;->c:Lm/l;

    iput p1, p0, Ly2/j;->d:I

    iput p2, p0, Ly2/j;->q:I

    iput-object p3, p0, Ly2/j;->x:Ll0/b;

    return-void
.end method

.method public constructor <init>(Lm/x;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lm/x;->v(I)Lm/f;

    move-result-object v0

    invoke-static {v0}, Lm/l;->r(Ljava/lang/Object;)Lm/l;

    move-result-object v0

    iput-object v0, p0, Ly2/j;->c:Lm/l;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lm/x;->v(I)Lm/f;

    move-result-object v0

    invoke-static {v0}, Lm/l;->r(Ljava/lang/Object;)Lm/l;

    move-result-object v0

    invoke-virtual {v0}, Lm/l;->y()I

    move-result v0

    iput v0, p0, Ly2/j;->d:I

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lm/x;->v(I)Lm/f;

    move-result-object v0

    invoke-static {v0}, Lm/l;->r(Ljava/lang/Object;)Lm/l;

    move-result-object v0

    invoke-virtual {v0}, Lm/l;->y()I

    move-result v0

    iput v0, p0, Ly2/j;->q:I

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lm/x;->v(I)Lm/f;

    move-result-object p1

    invoke-static {p1}, Ll0/b;->h(Ljava/lang/Object;)Ll0/b;

    move-result-object p1

    iput-object p1, p0, Ly2/j;->x:Ll0/b;

    return-void
.end method

.method public static h(Ljava/lang/Object;)Ly2/j;
    .registers 2

    instance-of v0, p0, Ly2/j;

    if-eqz v0, :cond_7

    check-cast p0, Ly2/j;

    return-object p0

    :cond_7
    if-eqz p0, :cond_13

    new-instance v0, Ly2/j;

    invoke-static {p0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p0

    invoke-direct {v0, p0}, Ly2/j;-><init>(Lm/x;)V

    return-object v0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 5

    new-instance v0, Lm/g;

    invoke-direct {v0}, Lm/g;-><init>()V

    iget-object v1, p0, Ly2/j;->c:Lm/l;

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    new-instance v1, Lm/l;

    iget v2, p0, Ly2/j;->d:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lm/l;-><init>(J)V

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    new-instance v1, Lm/l;

    iget v2, p0, Ly2/j;->q:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lm/l;-><init>(J)V

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    iget-object p0, p0, Ly2/j;->x:Ll0/b;

    invoke-virtual {v0, p0}, Lm/g;->a(Lm/f;)V

    new-instance p0, Lm/a1;

    invoke-direct {p0, v0}, Lm/x;-><init>(Lm/g;)V

    const/4 v0, -0x1

    iput v0, p0, Lm/a1;->q:I

    return-object p0
.end method
