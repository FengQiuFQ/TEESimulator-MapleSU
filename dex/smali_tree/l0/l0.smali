.class public final Ll0/l0;
.super Lm/n;


# instance fields
.field public c:Lm/q;

.field public d:Lm/x;


# direct methods
.method public static h(Ljava/lang/Object;)Ll0/l0;
    .registers 5

    if-eqz p0, :cond_4b

    instance-of v0, p0, Ll0/l0;

    if-eqz v0, :cond_7

    goto :goto_4b

    :cond_7
    new-instance v0, Ll0/l0;

    invoke-static {p0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lm/x;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_3a

    invoke-virtual {p0}, Lm/x;->size()I

    move-result v1

    const/4 v3, 0x2

    if-gt v1, v3, :cond_3a

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lm/x;->v(I)Lm/f;

    move-result-object v1

    invoke-static {v1}, Lm/q;->v(Ljava/lang/Object;)Lm/q;

    move-result-object v1

    iput-object v1, v0, Ll0/l0;->c:Lm/q;

    invoke-virtual {p0}, Lm/x;->size()I

    move-result v1

    if-le v1, v2, :cond_39

    invoke-virtual {p0, v2}, Lm/x;->v(I)Lm/f;

    move-result-object p0

    invoke-static {p0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p0

    iput-object p0, v0, Ll0/l0;->d:Lm/x;

    :cond_39
    return-object v0

    :cond_3a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad sequence size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->d(Lm/x;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4b
    :goto_4b
    check-cast p0, Ll0/l0;

    return-object p0
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 3

    new-instance v0, Lm/g;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lm/g;-><init>(I)V

    iget-object v1, p0, Ll0/l0;->c:Lm/q;

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    iget-object p0, p0, Ll0/l0;->d:Lm/x;

    if-eqz p0, :cond_12

    invoke-virtual {v0, p0}, Lm/g;->a(Lm/f;)V

    :cond_12
    new-instance p0, Lm/a1;

    invoke-direct {p0, v0}, Lm/x;-><init>(Lm/g;)V

    const/4 v0, -0x1

    iput v0, p0, Lm/a1;->q:I

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Policy information: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ll0/l0;->c:Lm/q;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Ll0/l0;->d:Lm/x;

    if-eqz p0, :cond_7d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_17
    invoke-virtual {p0}, Lm/x;->size()I

    move-result v4

    if-ge v3, v4, :cond_70

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_28

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_28
    invoke-virtual {p0, v3}, Lm/x;->v(I)Lm/f;

    move-result-object v4

    instance-of v5, v4, Ll0/m0;

    if-eqz v5, :cond_33

    check-cast v4, Ll0/m0;

    goto :goto_6a

    :cond_33
    if-eqz v4, :cond_69

    new-instance v5, Ll0/m0;

    invoke-static {v4}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v4

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v4}, Lm/x;->size()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_58

    invoke-virtual {v4, v2}, Lm/x;->v(I)Lm/f;

    move-result-object v6

    invoke-static {v6}, Lm/q;->v(Ljava/lang/Object;)Lm/q;

    move-result-object v6

    iput-object v6, v5, Ll0/m0;->c:Lm/q;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lm/x;->v(I)Lm/f;

    move-result-object v4

    iput-object v4, v5, Ll0/m0;->d:Lm/f;

    move-object v4, v5

    goto :goto_6a

    :cond_58
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bad sequence size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->d(Lm/x;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_69
    const/4 v4, 0x0

    :goto_6a
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_70
    const-string p0, "["

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
