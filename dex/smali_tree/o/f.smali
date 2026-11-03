.class public final Lo/f;
.super Lm/n;


# instance fields
.field public final c:Ljava/math/BigInteger;

.field public final d:Ljava/lang/String;

.field public final q:Lm/j;

.field public final x:Lm/j;

.field public final y:Lm/r;

.field public final z1:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;[B)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/f;->c:Ljava/math/BigInteger;

    iput-object p2, p0, Lo/f;->d:Ljava/lang/String;

    new-instance p1, Lm/s0;

    invoke-direct {p1, p3}, Lm/j;-><init>(Ljava/util/Date;)V

    iput-object p1, p0, Lo/f;->q:Lm/j;

    new-instance p1, Lm/s0;

    invoke-direct {p1, p4}, Lm/j;-><init>(Ljava/util/Date;)V

    iput-object p1, p0, Lo/f;->x:Lm/j;

    new-instance p1, Lm/x0;

    invoke-static {p5}, Lm4/d;->e([B)[B

    move-result-object p2

    invoke-direct {p1, p2}, Lm/r;-><init>([B)V

    iput-object p1, p0, Lo/f;->y:Lm/r;

    const/4 p1, 0x0

    iput-object p1, p0, Lo/f;->z1:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lm/x;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lm/x;->v(I)Lm/f;

    move-result-object v0

    invoke-static {v0}, Lm/l;->r(Ljava/lang/Object;)Lm/l;

    move-result-object v0

    invoke-virtual {v0}, Lm/l;->t()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lo/f;->c:Ljava/math/BigInteger;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lm/x;->v(I)Lm/f;

    move-result-object v0

    invoke-static {v0}, Lm/f1;->r(Lm/f;)Lm/f1;

    move-result-object v0

    invoke-virtual {v0}, Lm/f1;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/f;->d:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lm/x;->v(I)Lm/f;

    move-result-object v0

    invoke-static {v0}, Lm/j;->u(Lm/f;)Lm/j;

    move-result-object v0

    iput-object v0, p0, Lo/f;->q:Lm/j;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lm/x;->v(I)Lm/f;

    move-result-object v0

    invoke-static {v0}, Lm/j;->u(Lm/f;)Lm/j;

    move-result-object v0

    iput-object v0, p0, Lo/f;->x:Lm/j;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lm/x;->v(I)Lm/f;

    move-result-object v0

    invoke-static {v0}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object v0

    iput-object v0, p0, Lo/f;->y:Lm/r;

    invoke-virtual {p1}, Lm/x;->size()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_57

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lm/x;->v(I)Lm/f;

    move-result-object p1

    invoke-static {p1}, Lm/f1;->r(Lm/f;)Lm/f1;

    move-result-object p1

    invoke-virtual {p1}, Lm/f1;->e()Ljava/lang/String;

    move-result-object p1

    goto :goto_58

    :cond_57
    const/4 p1, 0x0

    :goto_58
    iput-object p1, p0, Lo/f;->z1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 4

    new-instance v0, Lm/g;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lm/g;-><init>(I)V

    new-instance v1, Lm/l;

    iget-object v2, p0, Lo/f;->c:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lm/l;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    new-instance v1, Lm/f1;

    iget-object v2, p0, Lo/f;->d:Ljava/lang/String;

    invoke-direct {v1, v2}, Lm/f1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    iget-object v1, p0, Lo/f;->q:Lm/j;

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    iget-object v1, p0, Lo/f;->x:Lm/j;

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    iget-object v1, p0, Lo/f;->y:Lm/r;

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    iget-object p0, p0, Lo/f;->z1:Ljava/lang/String;

    if-eqz p0, :cond_35

    new-instance v1, Lm/f1;

    invoke-direct {v1, p0}, Lm/f1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    :cond_35
    new-instance p0, Lm/a1;

    invoke-direct {p0, v0}, Lm/x;-><init>(Lm/g;)V

    const/4 v0, -0x1

    iput v0, p0, Lm/a1;->q:I

    return-object p0
.end method

.method public final h()[B
    .registers 1

    iget-object p0, p0, Lo/f;->y:Lm/r;

    iget-object p0, p0, Lm/r;->c:[B

    invoke-static {p0}, Lm4/d;->e([B)[B

    move-result-object p0

    return-object p0
.end method
