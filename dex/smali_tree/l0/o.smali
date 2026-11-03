.class public final Ll0/o;
.super Lm/n;


# instance fields
.field public c:Ll0/m;

.field public d:Ll0/m;


# direct methods
.method public static h(Lm/u;)Ll0/o;
    .registers 6

    if-eqz p0, :cond_8c

    instance-of v0, p0, Lm/x;

    if-eqz v0, :cond_78

    new-instance v0, Ll0/o;

    check-cast p0, Lm/x;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lm/x;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2d

    invoke-virtual {p0}, Lm/x;->size()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1c

    goto :goto_2d

    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad sequence size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->d(Lm/x;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2d
    :goto_2d
    invoke-virtual {p0}, Lm/x;->w()Ljava/util/Enumeration;

    move-result-object p0

    :goto_31
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_77

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lm/a0;->v(Ljava/lang/Object;)Lm/a0;

    move-result-object v1

    iget v3, v1, Lm/a0;->q:I

    sget-object v4, Lm/x;->d:Lm/a;

    if-nez v3, :cond_52

    invoke-virtual {v4, v1, v2}, Lm/a;->d(Lm/a0;Z)Lm/u;

    move-result-object v1

    check-cast v1, Lm/x;

    invoke-static {v1}, Ll0/m;->i(Ljava/lang/Object;)Ll0/m;

    move-result-object v1

    iput-object v1, v0, Ll0/o;->c:Ll0/m;

    goto :goto_31

    :cond_52
    if-ne v3, v2, :cond_61

    invoke-virtual {v4, v1, v2}, Lm/a;->d(Lm/a0;Z)Lm/u;

    move-result-object v1

    check-cast v1, Lm/x;

    invoke-static {v1}, Ll0/m;->i(Ljava/lang/Object;)Ll0/m;

    move-result-object v1

    iput-object v1, v0, Ll0/o;->d:Ll0/m;

    goto :goto_31

    :cond_61
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Bad tag number: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v1, Lm/a0;->q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_77
    return-object v0

    :cond_78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "illegal object in getInstance: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8c
    check-cast p0, Ll0/o;

    return-object p0
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 6

    new-instance v0, Lm/g;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lm/g;-><init>(I)V

    iget-object v1, p0, Ll0/o;->c:Ll0/m;

    const/4 v2, 0x1

    if-eqz v1, :cond_14

    new-instance v3, Lm/d1;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4, v1}, Lm/a0;-><init>(ZILm/f;)V

    invoke-virtual {v0, v3}, Lm/g;->a(Lm/f;)V

    :cond_14
    iget-object p0, p0, Ll0/o;->d:Ll0/m;

    if-eqz p0, :cond_20

    new-instance v1, Lm/d1;

    invoke-direct {v1, v2, v2, p0}, Lm/a0;-><init>(ZILm/f;)V

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    :cond_20
    new-instance p0, Lm/a1;

    invoke-direct {p0, v0}, Lm/x;-><init>(Lm/g;)V

    const/4 v0, -0x1

    iput v0, p0, Lm/a1;->q:I

    return-object p0
.end method
