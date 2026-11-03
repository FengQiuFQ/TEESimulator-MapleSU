.class public final Lo/i;
.super Lm/n;


# instance fields
.field public final c:Ljava/math/BigInteger;

.field public final d:Ll0/b;

.field public final q:Lm/j;

.field public final x:Lm/j;

.field public final y:Lo/g;

.field public final z1:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ll0/b;Ljava/util/Date;Ljava/util/Date;Lo/g;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lo/i;->c:Ljava/math/BigInteger;

    iput-object p1, p0, Lo/i;->d:Ll0/b;

    new-instance p1, Lm/s0;

    invoke-direct {p1, p2}, Lm/j;-><init>(Ljava/util/Date;)V

    iput-object p1, p0, Lo/i;->q:Lm/j;

    new-instance p1, Lm/s0;

    invoke-direct {p1, p3}, Lm/j;-><init>(Ljava/util/Date;)V

    iput-object p1, p0, Lo/i;->x:Lm/j;

    iput-object p4, p0, Lo/i;->y:Lo/g;

    const/4 p1, 0x0

    iput-object p1, p0, Lo/i;->z1:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lm/x;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lm/x;->v(I)Lm/f;

    move-result-object v0

    invoke-static {v0}, Lm/l;->r(Ljava/lang/Object;)Lm/l;

    move-result-object v0

    invoke-virtual {v0}, Lm/l;->t()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lo/i;->c:Ljava/math/BigInteger;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lm/x;->v(I)Lm/f;

    move-result-object v0

    invoke-static {v0}, Ll0/b;->h(Ljava/lang/Object;)Ll0/b;

    move-result-object v0

    iput-object v0, p0, Lo/i;->d:Ll0/b;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lm/x;->v(I)Lm/f;

    move-result-object v0

    invoke-static {v0}, Lm/j;->u(Lm/f;)Lm/j;

    move-result-object v0

    iput-object v0, p0, Lo/i;->q:Lm/j;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lm/x;->v(I)Lm/f;

    move-result-object v0

    invoke-static {v0}, Lm/j;->u(Lm/f;)Lm/j;

    move-result-object v0

    iput-object v0, p0, Lo/i;->x:Lm/j;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lm/x;->v(I)Lm/f;

    move-result-object v0

    instance-of v1, v0, Lo/g;

    const/4 v2, 0x0

    if-eqz v1, :cond_40

    check-cast v0, Lo/g;

    goto :goto_4e

    :cond_40
    if-eqz v0, :cond_4d

    new-instance v1, Lo/g;

    invoke-static {v0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v0

    invoke-direct {v1, v0}, Lo/g;-><init>(Lm/x;)V

    move-object v0, v1

    goto :goto_4e

    :cond_4d
    move-object v0, v2

    :goto_4e
    iput-object v0, p0, Lo/i;->y:Lo/g;

    invoke-virtual {p1}, Lm/x;->size()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_64

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lm/x;->v(I)Lm/f;

    move-result-object p1

    invoke-static {p1}, Lm/f1;->r(Lm/f;)Lm/f1;

    move-result-object p1

    invoke-virtual {p1}, Lm/f1;->e()Ljava/lang/String;

    move-result-object v2

    :cond_64
    iput-object v2, p0, Lo/i;->z1:Ljava/lang/String;

    return-void
.end method

.method public static h(Ljava/lang/Object;)Lo/i;
    .registers 2

    instance-of v0, p0, Lo/i;

    if-eqz v0, :cond_7

    check-cast p0, Lo/i;

    return-object p0

    :cond_7
    if-eqz p0, :cond_13

    new-instance v0, Lo/i;

    invoke-static {p0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p0

    invoke-direct {v0, p0}, Lo/i;-><init>(Lm/x;)V

    return-object v0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 4

    new-instance v0, Lm/g;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lm/g;-><init>(I)V

    new-instance v1, Lm/l;

    iget-object v2, p0, Lo/i;->c:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lm/l;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    iget-object v1, p0, Lo/i;->d:Ll0/b;

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    iget-object v1, p0, Lo/i;->q:Lm/j;

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    iget-object v1, p0, Lo/i;->x:Lm/j;

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    iget-object v1, p0, Lo/i;->y:Lo/g;

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    iget-object p0, p0, Lo/i;->z1:Ljava/lang/String;

    if-eqz p0, :cond_30

    new-instance v1, Lm/f1;

    invoke-direct {v1, p0}, Lm/f1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    :cond_30
    new-instance p0, Lm/a1;

    invoke-direct {p0, v0}, Lm/x;-><init>(Lm/g;)V

    const/4 v0, -0x1

    iput v0, p0, Lm/a1;->q:I

    return-object p0
.end method
