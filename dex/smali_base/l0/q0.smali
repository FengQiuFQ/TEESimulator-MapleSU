.class public final Ll0/q0;
.super Lm/n;


# instance fields
.field public c:Lm/x;

.field public d:Ll0/w;


# direct methods
.method public static i(Ljava/lang/Object;)Ll0/q0;
    .registers 4

    instance-of v0, p0, Ll0/q0;

    if-eqz v0, :cond_7

    check-cast p0, Ll0/q0;

    return-object p0

    :cond_7
    if-eqz p0, :cond_34

    new-instance v0, Ll0/q0;

    invoke-static {p0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lm/x;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_23

    invoke-virtual {p0}, Lm/x;->size()I

    move-result v1

    const/4 v2, 0x3

    if-gt v1, v2, :cond_23

    iput-object p0, v0, Ll0/q0;->c:Lm/x;

    return-object v0

    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad sequence size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->d(Lm/x;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_34
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 1

    iget-object p0, p0, Ll0/q0;->c:Lm/x;

    return-object p0
.end method

.method public final h()Ll0/w;
    .registers 4

    iget-object v0, p0, Ll0/q0;->c:Lm/x;

    iget-object v1, p0, Ll0/q0;->d:Ll0/w;

    if-nez v1, :cond_18

    invoke-virtual {v0}, Lm/x;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_18

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lm/x;->v(I)Lm/f;

    move-result-object v0

    invoke-static {v0}, Ll0/w;->j(Lm/f;)Ll0/w;

    move-result-object v0

    iput-object v0, p0, Ll0/q0;->d:Ll0/w;

    :cond_18
    iget-object p0, p0, Ll0/q0;->d:Ll0/w;

    return-object p0
.end method

.method public final j()Lm/l;
    .registers 2

    iget-object p0, p0, Ll0/q0;->c:Lm/x;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lm/x;->v(I)Lm/f;

    move-result-object p0

    invoke-static {p0}, Lm/l;->r(Ljava/lang/Object;)Lm/l;

    move-result-object p0

    return-object p0
.end method

.method public final k()Z
    .registers 2

    iget-object p0, p0, Ll0/q0;->c:Lm/x;

    invoke-virtual {p0}, Lm/x;->size()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method
