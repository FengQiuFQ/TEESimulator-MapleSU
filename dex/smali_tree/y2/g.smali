.class public final Ly2/g;
.super Lm/n;


# instance fields
.field public c:I

.field public d:[B

.field public q:[B

.field public x:Ly2/h;


# virtual methods
.method public final d()Lm/u;
    .registers 5

    new-instance v0, Lm/g;

    invoke-direct {v0}, Lm/g;-><init>()V

    new-instance v1, Lm/l;

    iget v2, p0, Ly2/g;->c:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lm/l;-><init>(J)V

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    new-instance v1, Lm/x0;

    iget-object v2, p0, Ly2/g;->d:[B

    invoke-direct {v1, v2}, Lm/r;-><init>([B)V

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    new-instance v1, Lm/x0;

    iget-object v2, p0, Ly2/g;->q:[B

    invoke-direct {v1, v2}, Lm/r;-><init>([B)V

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    iget-object p0, p0, Ly2/g;->x:Ly2/h;

    if-eqz p0, :cond_40

    new-instance v1, Ly2/h;

    iget-object v2, p0, Ly2/h;->c:[B

    invoke-static {v2}, Lm4/d;->e([B)[B

    move-result-object v2

    iget-object p0, p0, Ly2/h;->d:[B

    invoke-static {p0}, Lm4/d;->e([B)[B

    move-result-object p0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v2, v1, Ly2/h;->c:[B

    iput-object p0, v1, Ly2/h;->d:[B

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    :cond_40
    new-instance p0, Lm/a1;

    invoke-direct {p0, v0}, Lm/x;-><init>(Lm/g;)V

    const/4 v0, -0x1

    iput v0, p0, Lm/a1;->q:I

    return-object p0
.end method
