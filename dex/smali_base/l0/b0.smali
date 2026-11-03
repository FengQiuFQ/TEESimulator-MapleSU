.class public final Ll0/b0;
.super Lm/n;


# instance fields
.field public c:Ll0/c0;

.field public d:Ll0/z;

.field public q:Ll0/i0;

.field public x:I


# direct methods
.method public static h(Lm/f;)Ll0/b0;
    .registers 10

    instance-of v0, p0, Ll0/b0;

    if-eqz v0, :cond_7

    check-cast p0, Ll0/b0;

    return-object p0

    :cond_7
    instance-of v0, p0, Lm/a0;

    sget-object v1, Lm/x;->d:Lm/a;

    const/4 v2, 0x0

    const-string v3, "unknown tag in Holder"

    const/4 v4, 0x1

    if-eqz v0, :cond_3f

    new-instance v0, Ll0/b0;

    invoke-static {p0}, Lm/a0;->v(Ljava/lang/Object;)Lm/a0;

    move-result-object p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput v4, v0, Ll0/b0;->x:I

    iget v5, p0, Lm/a0;->q:I

    if-eqz v5, :cond_36

    if-ne v5, v4, :cond_30

    new-instance v3, Ll0/z;

    invoke-virtual {v1, p0, v4}, Lm/a;->d(Lm/a0;Z)Lm/u;

    move-result-object p0

    check-cast p0, Lm/x;

    invoke-direct {v3, p0}, Ll0/z;-><init>(Lm/x;)V

    iput-object v3, v0, Ll0/b0;->d:Ll0/z;

    goto :goto_3c

    :cond_30
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_36
    invoke-static {p0, v4}, Ll0/c0;->h(Lm/a0;Z)Ll0/c0;

    move-result-object p0

    iput-object p0, v0, Ll0/b0;->c:Ll0/c0;

    :goto_3c
    iput v2, v0, Ll0/b0;->x:I

    return-object v0

    :cond_3f
    if-eqz p0, :cond_a3

    new-instance v0, Ll0/b0;

    invoke-static {p0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput v4, v0, Ll0/b0;->x:I

    invoke-virtual {p0}, Lm/x;->size()I

    move-result v5

    const/4 v6, 0x3

    if-gt v5, v6, :cond_92

    move v5, v2

    :goto_54
    invoke-virtual {p0}, Lm/x;->size()I

    move-result v6

    if-eq v5, v6, :cond_8f

    invoke-virtual {p0, v5}, Lm/x;->v(I)Lm/f;

    move-result-object v6

    invoke-static {v6}, Lm/a0;->v(Ljava/lang/Object;)Lm/a0;

    move-result-object v6

    iget v7, v6, Lm/a0;->q:I

    if-eqz v7, :cond_86

    if-eq v7, v4, :cond_78

    const/4 v8, 0x2

    if-ne v7, v8, :cond_72

    invoke-static {v6}, Ll0/i0;->h(Lm/a0;)Ll0/i0;

    move-result-object v6

    iput-object v6, v0, Ll0/b0;->q:Ll0/i0;

    goto :goto_8c

    :cond_72
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_78
    new-instance v7, Ll0/z;

    invoke-virtual {v1, v6, v2}, Lm/a;->d(Lm/a0;Z)Lm/u;

    move-result-object v6

    check-cast v6, Lm/x;

    invoke-direct {v7, v6}, Ll0/z;-><init>(Lm/x;)V

    iput-object v7, v0, Ll0/b0;->d:Ll0/z;

    goto :goto_8c

    :cond_86
    invoke-static {v6, v2}, Ll0/c0;->h(Lm/a0;Z)Ll0/c0;

    move-result-object v6

    iput-object v6, v0, Ll0/b0;->c:Ll0/c0;

    :goto_8c
    add-int/lit8 v5, v5, 0x1

    goto :goto_54

    :cond_8f
    iput v4, v0, Ll0/b0;->x:I

    return-object v0

    :cond_92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad sequence size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->d(Lm/x;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a3
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 9

    iget-object v0, p0, Ll0/b0;->d:Ll0/z;

    iget-object v1, p0, Ll0/b0;->c:Ll0/c0;

    iget v2, p0, Ll0/b0;->x:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_3c

    new-instance v2, Lm/g;

    const/4 v5, 0x3

    invoke-direct {v2, v5}, Lm/g;-><init>(I)V

    const/16 v5, 0x80

    const/4 v6, 0x2

    if-eqz v1, :cond_1d

    new-instance v7, Lm/d1;

    invoke-direct {v7, v6, v5, v3, v1}, Lm/a0;-><init>(IIILm/f;)V

    invoke-virtual {v2, v7}, Lm/g;->a(Lm/f;)V

    :cond_1d
    if-eqz v0, :cond_27

    new-instance v1, Lm/d1;

    invoke-direct {v1, v6, v5, v4, v0}, Lm/a0;-><init>(IIILm/f;)V

    invoke-virtual {v2, v1}, Lm/g;->a(Lm/f;)V

    :cond_27
    iget-object p0, p0, Ll0/b0;->q:Ll0/i0;

    if-eqz p0, :cond_33

    new-instance v0, Lm/d1;

    invoke-direct {v0, v6, v5, v6, p0}, Lm/a0;-><init>(IIILm/f;)V

    invoke-virtual {v2, v0}, Lm/g;->a(Lm/f;)V

    :cond_33
    new-instance p0, Lm/a1;

    invoke-direct {p0, v2}, Lm/x;-><init>(Lm/g;)V

    const/4 v0, -0x1

    iput v0, p0, Lm/a1;->q:I

    return-object p0

    :cond_3c
    new-instance p0, Lm/d1;

    if-eqz v0, :cond_44

    invoke-direct {p0, v4, v4, v0}, Lm/a0;-><init>(ZILm/f;)V

    return-object p0

    :cond_44
    invoke-direct {p0, v4, v3, v1}, Lm/a0;-><init>(ZILm/f;)V

    return-object p0
.end method
