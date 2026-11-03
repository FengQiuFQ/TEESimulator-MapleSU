.class public final Ll0/j0;
.super Lm/n;


# instance fields
.field public final c:Lm/q;

.field public final d:Lm/n;


# direct methods
.method public constructor <init>(Lm/x;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lm/x;->v(I)Lm/f;

    move-result-object v0

    invoke-static {v0}, Lm/q;->v(Ljava/lang/Object;)Lm/q;

    move-result-object v0

    iput-object v0, p0, Ll0/j0;->c:Lm/q;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lm/x;->v(I)Lm/f;

    move-result-object p1

    invoke-static {p1}, Lm/a0;->v(Ljava/lang/Object;)Lm/a0;

    move-result-object p1

    invoke-virtual {p1}, Lm/a0;->u()Lm/n;

    move-result-object p1

    iput-object p1, p0, Ll0/j0;->d:Lm/n;

    return-void
.end method

.method public static h(Ljava/lang/Object;)Ll0/j0;
    .registers 2

    instance-of v0, p0, Ll0/j0;

    if-eqz v0, :cond_7

    check-cast p0, Ll0/j0;

    return-object p0

    :cond_7
    if-eqz p0, :cond_13

    new-instance v0, Ll0/j0;

    invoke-static {p0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p0

    invoke-direct {v0, p0}, Ll0/j0;-><init>(Lm/x;)V

    return-object v0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 6

    new-instance v0, Lm/a1;

    new-instance v1, Lm/d1;

    const/4 v2, 0x0

    iget-object v3, p0, Ll0/j0;->d:Lm/n;

    const/4 v4, 0x1

    invoke-direct {v1, v4, v2, v3}, Lm/a0;-><init>(ZILm/f;)V

    iget-object p0, p0, Ll0/j0;->c:Lm/q;

    invoke-direct {v0, p0, v1}, Lm/x;-><init>(Lm/f;Lm/f;)V

    const/4 p0, -0x1

    iput p0, v0, Lm/a1;->q:I

    return-object v0
.end method
