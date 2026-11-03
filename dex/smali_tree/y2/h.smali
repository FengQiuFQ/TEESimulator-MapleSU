.class public final Ly2/h;
.super Lm/n;


# instance fields
.field public c:[B

.field public d:[B


# virtual methods
.method public final d()Lm/u;
    .registers 4

    new-instance v0, Lm/g;

    invoke-direct {v0}, Lm/g;-><init>()V

    new-instance v1, Lm/x0;

    iget-object v2, p0, Ly2/h;->c:[B

    invoke-direct {v1, v2}, Lm/r;-><init>([B)V

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    new-instance v1, Lm/x0;

    iget-object p0, p0, Ly2/h;->d:[B

    invoke-direct {v1, p0}, Lm/r;-><init>([B)V

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    new-instance p0, Lm/a1;

    invoke-direct {p0, v0}, Lm/x;-><init>(Lm/g;)V

    const/4 v0, -0x1

    iput v0, p0, Lm/a1;->q:I

    return-object p0
.end method
