.class public final Ll0/y0;
.super Lm/n;


# instance fields
.field public c:Ll0/z;

.field public d:Ll0/c0;

.field public q:Ll0/i0;


# direct methods
.method public static h(Ljava/lang/Object;)Ll0/y0;
    .registers 7

    instance-of v0, p0, Ll0/y0;

    if-eqz v0, :cond_7

    check-cast p0, Ll0/y0;

    return-object p0

    :cond_7
    if-eqz p0, :cond_7c

    new-instance v0, Ll0/y0;

    invoke-static {p0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lm/x;->size()I

    move-result v1

    const/4 v2, 0x3

    if-gt v1, v2, :cond_6b

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lm/x;->v(I)Lm/f;

    move-result-object v2

    instance-of v2, v2, Lm/a0;

    const/4 v3, 0x1

    if-nez v2, :cond_2f

    invoke-virtual {p0, v1}, Lm/x;->v(I)Lm/f;

    move-result-object v2

    invoke-static {v2}, Ll0/z;->h(Ljava/lang/Object;)Ll0/z;

    move-result-object v2

    iput-object v2, v0, Ll0/y0;->c:Ll0/z;

    move v2, v3

    goto :goto_30

    :cond_2f
    move v2, v1

    :goto_30
    invoke-virtual {p0}, Lm/x;->size()I

    move-result v4

    if-eq v2, v4, :cond_6a

    invoke-virtual {p0, v2}, Lm/x;->v(I)Lm/f;

    move-result-object v4

    invoke-static {v4}, Lm/a0;->v(Ljava/lang/Object;)Lm/a0;

    move-result-object v4

    iget v5, v4, Lm/a0;->q:I

    if-nez v5, :cond_49

    invoke-static {v4, v1}, Ll0/c0;->h(Lm/a0;Z)Ll0/c0;

    move-result-object v4

    iput-object v4, v0, Ll0/y0;->d:Ll0/c0;

    goto :goto_51

    :cond_49
    if-ne v5, v3, :cond_54

    invoke-static {v4}, Ll0/i0;->h(Lm/a0;)Ll0/i0;

    move-result-object v4

    iput-object v4, v0, Ll0/y0;->q:Ll0/i0;

    :goto_51
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    :cond_54
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bad tag number: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v4, Lm/a0;->q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6a
    return-object v0

    :cond_6b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad sequence size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->d(Lm/x;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7c
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 5

    new-instance v0, Lm/g;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lm/g;-><init>(I)V

    iget-object v1, p0, Ll0/y0;->c:Ll0/z;

    if-eqz v1, :cond_d

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    :cond_d
    iget-object v1, p0, Ll0/y0;->d:Ll0/c0;

    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    new-instance v3, Lm/d1;

    invoke-direct {v3, v2, v2, v1}, Lm/a0;-><init>(ZILm/f;)V

    invoke-virtual {v0, v3}, Lm/g;->a(Lm/f;)V

    :cond_1a
    iget-object p0, p0, Ll0/y0;->q:Ll0/i0;

    if-eqz p0, :cond_27

    new-instance v1, Lm/d1;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, p0}, Lm/a0;-><init>(ZILm/f;)V

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    :cond_27
    new-instance p0, Lm/a1;

    invoke-direct {p0, v0}, Lm/x;-><init>(Lm/g;)V

    const/4 v0, -0x1

    iput v0, p0, Lm/a1;->q:I

    return-object p0
.end method
