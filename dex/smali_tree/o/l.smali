.class public final Lo/l;
.super Lm/n;


# instance fields
.field public final c:Lm/q;

.field public final d:Lm/r;


# direct methods
.method public constructor <init>(Lm/q;[B)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/l;->c:Lm/q;

    new-instance p1, Lm/x0;

    invoke-static {p2}, Lm4/d;->e([B)[B

    move-result-object p2

    invoke-direct {p1, p2}, Lm/r;-><init>([B)V

    iput-object p1, p0, Lo/l;->d:Lm/r;

    return-void
.end method

.method public constructor <init>(Lm/x;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lm/x;->v(I)Lm/f;

    move-result-object v0

    invoke-static {v0}, Lm/q;->v(Ljava/lang/Object;)Lm/q;

    move-result-object v0

    iput-object v0, p0, Lo/l;->c:Lm/q;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lm/x;->v(I)Lm/f;

    move-result-object p1

    invoke-static {p1}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object p1

    iput-object p1, p0, Lo/l;->d:Lm/r;

    return-void
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 3

    new-instance v0, Lm/a1;

    iget-object v1, p0, Lo/l;->c:Lm/q;

    iget-object p0, p0, Lo/l;->d:Lm/r;

    invoke-direct {v0, v1, p0}, Lm/a1;-><init>(Lm/f;Lm/f;)V

    return-object v0
.end method
