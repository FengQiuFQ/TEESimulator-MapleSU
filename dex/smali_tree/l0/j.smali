.class public final Ll0/j;
.super Lm/n;


# instance fields
.field public c:Lm/d;

.field public d:Lm/l;


# direct methods
.method public static h(Ljava/lang/Object;)Ll0/j;
    .registers 5

    instance-of v0, p0, Ll0/j;

    if-eqz v0, :cond_7

    check-cast p0, Ll0/j;

    return-object p0

    :cond_7
    instance-of v0, p0, Ll0/b1;

    if-eqz v0, :cond_31

    check-cast p0, Ll0/b1;

    sget v0, Ll0/b1;->c:I

    :try_start_f
    iget-object p0, p0, Ll0/b1;->b:Lm/r;

    iget-object p0, p0, Lm/r;->c:[B

    invoke-static {p0}, Lm/u;->o([B)Lm/u;

    move-result-object p0
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_17} :catch_1c

    invoke-static {p0}, Ll0/j;->h(Ljava/lang/Object;)Ll0/j;

    move-result-object p0

    return-object p0

    :catch_1c
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "can\'t convert extension: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31
    const/4 v0, 0x0

    if-eqz p0, :cond_8d

    new-instance v1, Ll0/j;

    invoke-static {p0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sget-object v2, Lm/d;->q:Lm/d;

    iput-object v2, v1, Ll0/j;->c:Lm/d;

    iput-object v0, v1, Ll0/j;->d:Lm/l;

    invoke-virtual {p0}, Lm/x;->size()I

    move-result v2

    if-nez v2, :cond_4e

    iput-object v0, v1, Ll0/j;->c:Lm/d;

    iput-object v0, v1, Ll0/j;->d:Lm/l;

    return-object v1

    :cond_4e
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lm/x;->v(I)Lm/f;

    move-result-object v3

    instance-of v3, v3, Lm/d;

    if-eqz v3, :cond_62

    invoke-virtual {p0, v2}, Lm/x;->v(I)Lm/f;

    move-result-object v0

    invoke-static {v0}, Lm/d;->s(Lm/f;)Lm/d;

    move-result-object v0

    iput-object v0, v1, Ll0/j;->c:Lm/d;

    goto :goto_6e

    :cond_62
    iput-object v0, v1, Ll0/j;->c:Lm/d;

    invoke-virtual {p0, v2}, Lm/x;->v(I)Lm/f;

    move-result-object v0

    invoke-static {v0}, Lm/l;->r(Ljava/lang/Object;)Lm/l;

    move-result-object v0

    iput-object v0, v1, Ll0/j;->d:Lm/l;

    :goto_6e
    invoke-virtual {p0}, Lm/x;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_8c

    iget-object v0, v1, Ll0/j;->c:Lm/d;

    if-eqz v0, :cond_84

    invoke-virtual {p0, v2}, Lm/x;->v(I)Lm/f;

    move-result-object p0

    invoke-static {p0}, Lm/l;->r(Ljava/lang/Object;)Lm/l;

    move-result-object p0

    iput-object p0, v1, Ll0/j;->d:Lm/l;

    return-object v1

    :cond_84
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "wrong sequence in constructor"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8c
    return-object v1

    :cond_8d
    return-object v0
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 3

    new-instance v0, Lm/g;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lm/g;-><init>(I)V

    iget-object v1, p0, Ll0/j;->c:Lm/d;

    if-eqz v1, :cond_d

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    :cond_d
    iget-object p0, p0, Ll0/j;->d:Lm/l;

    if-eqz p0, :cond_14

    invoke-virtual {v0, p0}, Lm/g;->a(Lm/f;)V

    :cond_14
    new-instance p0, Lm/a1;

    invoke-direct {p0, v0}, Lm/x;-><init>(Lm/g;)V

    const/4 v0, -0x1

    iput v0, p0, Lm/a1;->q:I

    return-object p0
.end method

.method public final i()Z
    .registers 1

    iget-object p0, p0, Ll0/j;->c:Lm/d;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lm/d;->t()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Ll0/j;->d:Lm/l;

    const-string v1, "BasicConstraints: isCa("

    if-nez v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ll0/j;->i()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ll0/j;->i()Z

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "), pathLenConstraint = "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lm/l;->t()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
