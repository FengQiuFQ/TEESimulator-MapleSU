.class public final Lm/q1;
.super Lm/l0;


# instance fields
.field public final x:Z


# direct methods
.method public constructor <init>(IIZLa2/r;)V
    .registers 5

    invoke-direct {p0, p1, p2, p4}, Lm/l0;-><init>(IILa2/r;)V

    iput-boolean p3, p0, Lm/q1;->x:Z

    return-void
.end method


# virtual methods
.method public final a()Lm/u;
    .registers 6

    iget-boolean v0, p0, Lm/q1;->x:Z

    const/4 v1, 0x4

    iget-object v2, p0, Lm/l0;->q:La2/r;

    iget v3, p0, Lm/l0;->c:I

    iget p0, p0, Lm/l0;->d:I

    if-nez v0, :cond_20

    iget-object v0, v2, La2/r;->h:Ljava/lang/Object;

    check-cast v0, Lm/w1;

    check-cast v0, Lm/r1;

    invoke-virtual {v0}, Lm/r1;->b()[B

    move-result-object v0

    new-instance v2, Lm/p1;

    new-instance v4, Lm/x0;

    invoke-direct {v4, v0}, Lm/r;-><init>([B)V

    invoke-direct {v2, v1, v3, p0, v4}, Lm/a0;-><init>(IIILm/f;)V

    return-object v2

    :cond_20
    invoke-virtual {v2}, La2/r;->f()Lm/g;

    move-result-object v0

    iget v2, v0, Lm/g;->b:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_35

    new-instance v1, Lm/p1;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lm/g;->c(I)Lm/f;

    move-result-object v0

    const/4 v2, 0x3

    invoke-direct {v1, v2, v3, p0, v0}, Lm/a0;-><init>(IIILm/f;)V

    return-object v1

    :cond_35
    new-instance v2, Lm/p1;

    invoke-static {v0}, Lm/l1;->a(Lm/g;)Lm/n1;

    move-result-object v0

    invoke-direct {v2, v1, v3, p0, v0}, Lm/a0;-><init>(IIILm/f;)V

    return-object v2
.end method
