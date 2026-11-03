.class public final Ll0/c0;
.super Lm/n;


# instance fields
.field public c:Ll0/z;

.field public d:Lm/l;

.field public q:Lm/b;


# direct methods
.method public static h(Lm/a0;Z)Ll0/c0;
    .registers 5

    sget-object v0, Lm/x;->d:Lm/a;

    invoke-virtual {v0, p0, p1}, Lm/a;->d(Lm/a0;Z)Lm/u;

    move-result-object p0

    check-cast p0, Lm/x;

    if-eqz p0, :cond_5a

    new-instance p1, Ll0/c0;

    invoke-static {p0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p0

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lm/x;->size()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_33

    invoke-virtual {p0}, Lm/x;->size()I

    move-result v0

    if-ne v0, v1, :cond_22

    goto :goto_33

    :cond_22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bad sequence size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->d(Lm/x;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_33
    :goto_33
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lm/x;->v(I)Lm/f;

    move-result-object v0

    invoke-static {v0}, Ll0/z;->h(Ljava/lang/Object;)Ll0/z;

    move-result-object v0

    iput-object v0, p1, Ll0/c0;->c:Ll0/z;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lm/x;->v(I)Lm/f;

    move-result-object v0

    invoke-static {v0}, Lm/l;->r(Ljava/lang/Object;)Lm/l;

    move-result-object v0

    iput-object v0, p1, Ll0/c0;->d:Lm/l;

    invoke-virtual {p0}, Lm/x;->size()I

    move-result v0

    if-ne v0, v1, :cond_59

    invoke-virtual {p0, v2}, Lm/x;->v(I)Lm/f;

    move-result-object p0

    invoke-static {p0}, Lm/b;->t(Ljava/lang/Object;)Lm/b;

    move-result-object p0

    iput-object p0, p1, Ll0/c0;->q:Lm/b;

    :cond_59
    return-object p1

    :cond_5a
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 3

    new-instance v0, Lm/g;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lm/g;-><init>(I)V

    iget-object v1, p0, Ll0/c0;->c:Ll0/z;

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    iget-object v1, p0, Ll0/c0;->d:Lm/l;

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    iget-object p0, p0, Ll0/c0;->q:Lm/b;

    if-eqz p0, :cond_17

    invoke-virtual {v0, p0}, Lm/g;->a(Lm/f;)V

    :cond_17
    new-instance p0, Lm/a1;

    invoke-direct {p0, v0}, Lm/x;-><init>(Lm/g;)V

    const/4 v0, -0x1

    iput v0, p0, Lm/a1;->q:I

    return-object p0
.end method
