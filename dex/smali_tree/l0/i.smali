.class public final Ll0/i;
.super Lm/n;


# instance fields
.field public c:Lm/r;

.field public d:Ll0/z;

.field public q:Lm/l;


# virtual methods
.method public final d()Lm/u;
    .registers 6

    new-instance v0, Lm/g;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lm/g;-><init>(I)V

    iget-object v1, p0, Ll0/i;->c:Lm/r;

    const/4 v2, 0x0

    if-eqz v1, :cond_13

    new-instance v3, Lm/d1;

    invoke-direct {v3, v2, v2, v1}, Lm/a0;-><init>(ZILm/f;)V

    invoke-virtual {v0, v3}, Lm/g;->a(Lm/f;)V

    :cond_13
    iget-object v1, p0, Ll0/i;->d:Ll0/z;

    if-eqz v1, :cond_20

    new-instance v3, Lm/d1;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4, v1}, Lm/a0;-><init>(ZILm/f;)V

    invoke-virtual {v0, v3}, Lm/g;->a(Lm/f;)V

    :cond_20
    iget-object p0, p0, Ll0/i;->q:Lm/l;

    if-eqz p0, :cond_2d

    new-instance v1, Lm/d1;

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, p0}, Lm/a0;-><init>(ZILm/f;)V

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    :cond_2d
    new-instance p0, Lm/a1;

    invoke-direct {p0, v0}, Lm/x;-><init>(Lm/g;)V

    const/4 v0, -0x1

    iput v0, p0, Lm/a1;->q:I

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    iget-object p0, p0, Ll0/i;->c:Lm/r;

    if-eqz p0, :cond_f

    iget-object p0, p0, Lm/r;->c:[B

    sget-object v0, Ln4/c;->a:Ln4/b;

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Ln4/c;->e([BII)Ljava/lang/String;

    move-result-object p0

    goto :goto_11

    :cond_f
    const-string p0, "null"

    :goto_11
    const-string v0, "AuthorityKeyIdentifier: KeyID("

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Lb/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
