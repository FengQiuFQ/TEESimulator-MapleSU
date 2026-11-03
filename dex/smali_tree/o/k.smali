.class public final Lo/k;
.super Lm/n;


# instance fields
.field public final c:Ll0/b;

.field public final d:Ld0/k;

.field public final q:Lm/r;


# direct methods
.method public constructor <init>(Ll0/b;Ld0/k;[B)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/k;->c:Ll0/b;

    iput-object p2, p0, Lo/k;->d:Ld0/k;

    new-instance p1, Lm/x0;

    invoke-static {p3}, Lm4/d;->e([B)[B

    move-result-object p2

    invoke-direct {p1, p2}, Lm/r;-><init>([B)V

    iput-object p1, p0, Lo/k;->q:Lm/r;

    return-void
.end method

.method public constructor <init>(Lm/x;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lm/x;->v(I)Lm/f;

    move-result-object v0

    invoke-static {v0}, Ll0/b;->h(Ljava/lang/Object;)Ll0/b;

    move-result-object v0

    iput-object v0, p0, Lo/k;->c:Ll0/b;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lm/x;->v(I)Lm/f;

    move-result-object v0

    instance-of v1, v0, Ld0/k;

    if-eqz v1, :cond_1a

    check-cast v0, Ld0/k;

    goto :goto_2e

    :cond_1a
    if-eqz v0, :cond_2d

    new-instance v1, Ld0/k;

    invoke-static {v0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Ll0/b;->h(Ljava/lang/Object;)Ll0/b;

    move-result-object v0

    iput-object v0, v1, Ld0/k;->c:Ll0/b;

    move-object v0, v1

    goto :goto_2e

    :cond_2d
    const/4 v0, 0x0

    :goto_2e
    iput-object v0, p0, Lo/k;->d:Ld0/k;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lm/x;->v(I)Lm/f;

    move-result-object p1

    invoke-static {p1}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object p1

    iput-object p1, p0, Lo/k;->q:Lm/r;

    return-void
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 3

    new-instance v0, Lm/g;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lm/g;-><init>(I)V

    iget-object v1, p0, Lo/k;->c:Ll0/b;

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    iget-object v1, p0, Lo/k;->d:Ld0/k;

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    iget-object p0, p0, Lo/k;->q:Lm/r;

    invoke-virtual {v0, p0}, Lm/g;->a(Lm/f;)V

    new-instance p0, Lm/a1;

    invoke-direct {p0, v0}, Lm/x;-><init>(Lm/g;)V

    const/4 v0, -0x1

    iput v0, p0, Lm/a1;->q:I

    return-object p0
.end method
