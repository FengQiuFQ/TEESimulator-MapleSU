.class public final Ll0/r;
.super Lm/n;


# instance fields
.field public c:[B

.field public d:Ll0/b;


# virtual methods
.method public final d()Lm/u;
    .registers 4

    new-instance v0, Lm/a1;

    iget-object v1, p0, Ll0/r;->d:Ll0/b;

    new-instance v2, Lm/x0;

    iget-object p0, p0, Ll0/r;->c:[B

    invoke-direct {v2, p0}, Lm/r;-><init>([B)V

    invoke-direct {v0, v1, v2}, Lm/x;-><init>(Lm/f;Lm/f;)V

    const/4 p0, -0x1

    iput p0, v0, Lm/a1;->q:I

    return-object v0
.end method
