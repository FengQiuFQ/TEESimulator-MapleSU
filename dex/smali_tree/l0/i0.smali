.class public final Ll0/i0;
.super Lm/n;


# instance fields
.field public c:Lm/h;

.field public d:Lm/q;

.field public q:Ll0/b;

.field public x:Lm/b;


# direct methods
.method public static h(Lm/a0;)Ll0/i0;
    .registers 6

    sget-object v0, Lm/x;->d:Lm/a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lm/a;->d(Lm/a0;Z)Lm/u;

    move-result-object p0

    check-cast p0, Lm/x;

    if-eqz p0, :cond_67

    new-instance v0, Ll0/i0;

    invoke-static {p0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lm/x;->size()I

    move-result v2

    const/4 v3, 0x4

    if-gt v2, v3, :cond_56

    invoke-virtual {p0}, Lm/x;->size()I

    move-result v2

    const/4 v4, 0x3

    if-lt v2, v4, :cond_56

    invoke-virtual {p0, v1}, Lm/x;->v(I)Lm/f;

    move-result-object v2

    invoke-static {v2}, Lm/h;->s(Ljava/lang/Object;)Lm/h;

    move-result-object v2

    iput-object v2, v0, Ll0/i0;->c:Lm/h;

    invoke-virtual {p0}, Lm/x;->size()I

    move-result v2

    if-ne v2, v3, :cond_3d

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lm/x;->v(I)Lm/f;

    move-result-object v2

    invoke-static {v2}, Lm/q;->v(Ljava/lang/Object;)Lm/q;

    move-result-object v2

    iput-object v2, v0, Ll0/i0;->d:Lm/q;

    :cond_3d
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Lm/x;->v(I)Lm/f;

    move-result-object v2

    invoke-static {v2}, Ll0/b;->h(Ljava/lang/Object;)Ll0/b;

    move-result-object v2

    iput-object v2, v0, Ll0/i0;->q:Ll0/b;

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1}, Lm/x;->v(I)Lm/f;

    move-result-object p0

    invoke-static {p0}, Lm/b;->t(Ljava/lang/Object;)Lm/b;

    move-result-object p0

    iput-object p0, v0, Ll0/i0;->x:Lm/b;

    return-object v0

    :cond_56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad sequence size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->d(Lm/x;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_67
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 3

    new-instance v0, Lm/g;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lm/g;-><init>(I)V

    iget-object v1, p0, Ll0/i0;->c:Lm/h;

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    iget-object v1, p0, Ll0/i0;->d:Lm/q;

    if-eqz v1, :cond_12

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    :cond_12
    iget-object v1, p0, Ll0/i0;->q:Ll0/b;

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    iget-object p0, p0, Ll0/i0;->x:Lm/b;

    invoke-virtual {v0, p0}, Lm/g;->a(Lm/f;)V

    new-instance p0, Lm/a1;

    invoke-direct {p0, v0}, Lm/x;-><init>(Lm/g;)V

    const/4 v0, -0x1

    iput v0, p0, Lm/a1;->q:I

    return-object p0
.end method
