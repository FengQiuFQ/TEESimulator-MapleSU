.class public final Lm0/b;
.super Lm/n;


# instance fields
.field public final c:Lm/l;

.field public final d:Lm/l;

.field public final q:Lm/l;

.field public final x:Lm/l;

.field public final y:Lm0/c;


# direct methods
.method public constructor <init>(Lm/x;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lm/x;->size()I

    move-result v0

    const/4 v1, 0x3

    const-string v2, "Bad sequence size: "

    if-lt v0, v1, :cond_a6

    invoke-virtual {p1}, Lm/x;->size()I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_a6

    invoke-virtual {p1}, Lm/x;->w()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lm/l;->r(Ljava/lang/Object;)Lm/l;

    move-result-object v0

    iput-object v0, p0, Lm0/b;->c:Lm/l;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lm/l;->r(Ljava/lang/Object;)Lm/l;

    move-result-object v0

    iput-object v0, p0, Lm0/b;->d:Lm/l;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lm/l;->r(Ljava/lang/Object;)Lm/l;

    move-result-object v0

    iput-object v0, p0, Lm0/b;->q:Lm/l;

    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_43

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/f;

    goto :goto_44

    :cond_43
    move-object v0, v1

    :goto_44
    if-eqz v0, :cond_60

    instance-of v3, v0, Lm/l;

    if-eqz v3, :cond_60

    invoke-static {v0}, Lm/l;->r(Ljava/lang/Object;)Lm/l;

    move-result-object v0

    iput-object v0, p0, Lm0/b;->x:Lm/l;

    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lm/f;

    move-object v0, p1

    goto :goto_62

    :cond_5e
    move-object v0, v1

    goto :goto_62

    :cond_60
    iput-object v1, p0, Lm0/b;->x:Lm/l;

    :goto_62
    if-eqz v0, :cond_a3

    invoke-interface {v0}, Lm/f;->d()Lm/u;

    move-result-object p1

    if-eqz p1, :cond_a0

    new-instance v1, Lm0/c;

    invoke-static {p1}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p1

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lm/x;->size()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_91

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lm/x;->v(I)Lm/f;

    move-result-object v0

    invoke-static {v0}, Lm/b;->t(Ljava/lang/Object;)Lm/b;

    move-result-object v0

    iput-object v0, v1, Lm0/c;->c:Lm/b;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lm/x;->v(I)Lm/f;

    move-result-object p1

    invoke-static {p1}, Lm/l;->r(Ljava/lang/Object;)Lm/l;

    move-result-object p1

    iput-object p1, v1, Lm0/c;->d:Lm/l;

    goto :goto_a0

    :cond_91
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->d(Lm/x;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a0
    :goto_a0
    iput-object v1, p0, Lm0/b;->y:Lm0/c;

    return-void

    :cond_a3
    iput-object v1, p0, Lm0/b;->y:Lm0/c;

    return-void

    :cond_a6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->d(Lm/x;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static h(Ljava/lang/Object;)Lm0/b;
    .registers 2

    instance-of v0, p0, Lm0/b;

    if-eqz v0, :cond_7

    check-cast p0, Lm0/b;

    return-object p0

    :cond_7
    if-eqz p0, :cond_13

    new-instance v0, Lm0/b;

    invoke-static {p0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p0

    invoke-direct {v0, p0}, Lm0/b;-><init>(Lm/x;)V

    return-object v0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 3

    new-instance v0, Lm/g;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lm/g;-><init>(I)V

    iget-object v1, p0, Lm0/b;->c:Lm/l;

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    iget-object v1, p0, Lm0/b;->d:Lm/l;

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    iget-object v1, p0, Lm0/b;->q:Lm/l;

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    iget-object v1, p0, Lm0/b;->x:Lm/l;

    if-eqz v1, :cond_1c

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    :cond_1c
    iget-object p0, p0, Lm0/b;->y:Lm0/c;

    if-eqz p0, :cond_23

    invoke-virtual {v0, p0}, Lm/g;->a(Lm/f;)V

    :cond_23
    new-instance p0, Lm/a1;

    invoke-direct {p0, v0}, Lm/x;-><init>(Lm/g;)V

    const/4 v0, -0x1

    iput v0, p0, Lm/a1;->q:I

    return-object p0
.end method

.method public final i()Ljava/math/BigInteger;
    .registers 1

    iget-object p0, p0, Lm0/b;->x:Lm/l;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    invoke-virtual {p0}, Lm/l;->s()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method
