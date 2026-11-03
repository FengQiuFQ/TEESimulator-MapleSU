.class public final Lo/m;
.super Lm/n;


# instance fields
.field public final c:Ll0/b;

.field public final d:Lm/x;

.field public final q:Lm/b;


# direct methods
.method public constructor <init>(Lm/x;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lm/x;->v(I)Lm/f;

    move-result-object v0

    invoke-static {v0}, Ll0/b;->h(Ljava/lang/Object;)Ll0/b;

    move-result-object v0

    iput-object v0, p0, Lo/m;->c:Ll0/b;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lm/x;->v(I)Lm/f;

    move-result-object v1

    instance-of v1, v1, Lm/a0;

    if-eqz v1, :cond_2d

    invoke-virtual {p1, v0}, Lm/x;->v(I)Lm/f;

    move-result-object v0

    invoke-static {v0}, Lm/a0;->v(Ljava/lang/Object;)Lm/a0;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lm/a0;->s(I)Lm/u;

    move-result-object v0

    invoke-static {v0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v0

    iput-object v0, p0, Lo/m;->d:Lm/x;

    const/4 v0, 0x2

    goto :goto_30

    :cond_2d
    const/4 v1, 0x0

    iput-object v1, p0, Lo/m;->d:Lm/x;

    :goto_30
    invoke-virtual {p1, v0}, Lm/x;->v(I)Lm/f;

    move-result-object p1

    invoke-static {p1}, Lm/b;->t(Ljava/lang/Object;)Lm/b;

    move-result-object p1

    iput-object p1, p0, Lo/m;->q:Lm/b;

    return-void
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 6

    new-instance v0, Lm/g;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lm/g;-><init>(I)V

    iget-object v1, p0, Lo/m;->c:Ll0/b;

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    iget-object v1, p0, Lo/m;->d:Lm/x;

    if-eqz v1, :cond_19

    new-instance v2, Lm/d1;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v2, v4, v3, v1}, Lm/a0;-><init>(ZILm/f;)V

    invoke-virtual {v0, v2}, Lm/g;->a(Lm/f;)V

    :cond_19
    iget-object p0, p0, Lo/m;->q:Lm/b;

    invoke-virtual {v0, p0}, Lm/g;->a(Lm/f;)V

    new-instance p0, Lm/a1;

    invoke-direct {p0, v0}, Lm/x;-><init>(Lm/g;)V

    const/4 v0, -0x1

    iput v0, p0, Lm/a1;->q:I

    return-object p0
.end method
