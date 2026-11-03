.class public final Ly2/c;
.super Lm/n;


# instance fields
.field public c:I

.field public d:[B

.field public q:[B

.field public x:[B

.field public y:Ly2/d;


# direct methods
.method public static h(Lm/u;)Ly2/c;
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_8a

    new-instance v1, Ly2/c;

    invoke-static {p0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lm/x;->v(I)Lm/f;

    move-result-object v3

    invoke-static {v3}, Lm/l;->r(Ljava/lang/Object;)Lm/l;

    move-result-object v3

    invoke-virtual {v3}, Lm/l;->y()I

    move-result v3

    iput v3, v1, Ly2/c;->c:I

    if-nez v3, :cond_82

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lm/x;->v(I)Lm/f;

    move-result-object v3

    invoke-static {v3}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object v3

    iget-object v3, v3, Lm/r;->c:[B

    invoke-static {v3}, Lm4/d;->e([B)[B

    move-result-object v3

    iput-object v3, v1, Ly2/c;->d:[B

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lm/x;->v(I)Lm/f;

    move-result-object v3

    invoke-static {v3}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object v3

    iget-object v3, v3, Lm/r;->c:[B

    invoke-static {v3}, Lm4/d;->e([B)[B

    move-result-object v3

    iput-object v3, v1, Ly2/c;->q:[B

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lm/x;->v(I)Lm/f;

    move-result-object v3

    invoke-static {v3}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object v3

    iget-object v3, v3, Lm/r;->c:[B

    invoke-static {v3}, Lm4/d;->e([B)[B

    move-result-object v3

    iput-object v3, v1, Ly2/c;->x:[B

    invoke-virtual {p0}, Lm/x;->size()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_81

    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lm/x;->v(I)Lm/f;

    move-result-object p0

    instance-of v3, p0, Ly2/d;

    if-eqz v3, :cond_64

    move-object v0, p0

    check-cast v0, Ly2/d;

    goto :goto_7f

    :cond_64
    if-eqz p0, :cond_7f

    new-instance v0, Ly2/d;

    invoke-static {p0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v2}, Lm/x;->v(I)Lm/f;

    move-result-object p0

    invoke-static {p0}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object p0

    iget-object p0, p0, Lm/r;->c:[B

    invoke-static {p0}, Lm4/d;->e([B)[B

    move-result-object p0

    iput-object p0, v0, Ly2/d;->c:[B

    :cond_7f
    :goto_7f
    iput-object v0, v1, Ly2/c;->y:Ly2/d;

    :cond_81
    return-object v1

    :cond_82
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unrecognized version"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8a
    return-object v0
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 5

    new-instance v0, Lm/g;

    invoke-direct {v0}, Lm/g;-><init>()V

    new-instance v1, Lm/l;

    iget v2, p0, Ly2/c;->c:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lm/l;-><init>(J)V

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    new-instance v1, Lm/x0;

    iget-object v2, p0, Ly2/c;->d:[B

    invoke-direct {v1, v2}, Lm/r;-><init>([B)V

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    new-instance v1, Lm/x0;

    iget-object v2, p0, Ly2/c;->q:[B

    invoke-direct {v1, v2}, Lm/r;-><init>([B)V

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    new-instance v1, Lm/x0;

    iget-object v2, p0, Ly2/c;->x:[B

    invoke-direct {v1, v2}, Lm/r;-><init>([B)V

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    iget-object p0, p0, Ly2/c;->y:Ly2/d;

    if-eqz p0, :cond_3c

    new-instance v1, Ly2/d;

    iget-object p0, p0, Ly2/d;->c:[B

    invoke-direct {v1, p0}, Ly2/d;-><init>([B)V

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    :cond_3c
    new-instance p0, Lm/a1;

    invoke-direct {p0, v0}, Lm/x;-><init>(Lm/g;)V

    const/4 v0, -0x1

    iput v0, p0, Lm/a1;->q:I

    return-object p0
.end method
