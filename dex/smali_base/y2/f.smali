.class public final Ly2/f;
.super Lm/n;


# instance fields
.field public final c:Lm/l;

.field public final d:Ll0/b;


# direct methods
.method public constructor <init>(Ll0/b;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lm/l;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lm/l;-><init>(J)V

    iput-object v0, p0, Ly2/f;->c:Lm/l;

    iput-object p1, p0, Ly2/f;->d:Ll0/b;

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

    iput-object v0, p0, Ly2/f;->c:Lm/l;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lm/x;->v(I)Lm/f;

    move-result-object p1

    invoke-static {p1}, Ll0/b;->h(Ljava/lang/Object;)Ll0/b;

    move-result-object p1

    iput-object p1, p0, Ly2/f;->d:Ll0/b;

    return-void
.end method

.method public static final h(Ljava/lang/Object;)Ly2/f;
    .registers 2

    instance-of v0, p0, Ly2/f;

    if-eqz v0, :cond_7

    check-cast p0, Ly2/f;

    return-object p0

    :cond_7
    if-eqz p0, :cond_13

    new-instance v0, Ly2/f;

    invoke-static {p0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p0

    invoke-direct {v0, p0}, Ly2/f;-><init>(Lm/x;)V

    return-object v0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 3

    new-instance v0, Lm/g;

    invoke-direct {v0}, Lm/g;-><init>()V

    iget-object v1, p0, Ly2/f;->c:Lm/l;

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    iget-object p0, p0, Ly2/f;->d:Ll0/b;

    invoke-virtual {v0, p0}, Lm/g;->a(Lm/f;)V

    new-instance p0, Lm/a1;

    invoke-direct {p0, v0}, Lm/x;-><init>(Lm/g;)V

    const/4 v0, -0x1

    iput v0, p0, Lm/a1;->q:I

    return-object p0
.end method
