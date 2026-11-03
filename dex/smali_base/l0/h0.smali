.class public final Ll0/h0;
.super Lm/n;


# instance fields
.field public c:[Ll0/a0;

.field public d:[Ll0/a0;


# direct methods
.method public static h(Lm/x;)[Ll0/a0;
    .registers 12

    invoke-virtual {p0}, Lm/x;->size()I

    move-result v0

    new-array v1, v0, [Ll0/a0;

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-eq v3, v0, :cond_ec

    invoke-virtual {p0, v3}, Lm/x;->v(I)Lm/f;

    move-result-object v4

    sget v5, Ll0/a0;->x:I

    if-nez v4, :cond_15

    const/4 v4, 0x0

    goto/16 :goto_e6

    :cond_15
    instance-of v5, v4, Ll0/a0;

    if-eqz v5, :cond_1d

    check-cast v4, Ll0/a0;

    goto/16 :goto_e6

    :cond_1d
    new-instance v5, Ll0/a0;

    invoke-static {v4}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v4

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v4, v2}, Lm/x;->v(I)Lm/f;

    move-result-object v6

    invoke-static {v6}, Ll0/y;->h(Ljava/lang/Object;)Ll0/y;

    move-result-object v6

    iput-object v6, v5, Ll0/a0;->c:Ll0/y;

    invoke-virtual {v4}, Lm/x;->size()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_73

    const/4 v8, 0x2

    sget-object v9, Lm/l;->q:Lm/a;

    if-eq v6, v8, :cond_b2

    const/4 v10, 0x3

    if-ne v6, v10, :cond_a1

    invoke-virtual {v4, v7}, Lm/x;->v(I)Lm/f;

    move-result-object v6

    invoke-static {v6}, Lm/a0;->v(Ljava/lang/Object;)Lm/a0;

    move-result-object v6

    iget v10, v6, Lm/a0;->q:I

    if-nez v10, :cond_8b

    invoke-static {v6}, Lq4/k;->v(Lm/a0;)V

    invoke-virtual {v6, v2, v9}, Lm/a0;->t(ZLm/a;)Lm/u;

    move-result-object v6

    invoke-virtual {v9, v6}, Lm/a;->a(Lm/u;)V

    check-cast v6, Lm/l;

    iput-object v6, v5, Ll0/a0;->d:Lm/l;

    invoke-virtual {v4, v8}, Lm/x;->v(I)Lm/f;

    move-result-object v4

    invoke-static {v4}, Lm/a0;->v(Ljava/lang/Object;)Lm/a0;

    move-result-object v4

    iget v6, v4, Lm/a0;->q:I

    if-ne v6, v7, :cond_75

    :goto_65
    invoke-static {v4}, Lq4/k;->v(Lm/a0;)V

    invoke-virtual {v4, v2, v9}, Lm/a0;->t(ZLm/a;)Lm/u;

    move-result-object v4

    invoke-virtual {v9, v4}, Lm/a;->a(Lm/u;)V

    check-cast v4, Lm/l;

    iput-object v4, v5, Ll0/a0;->q:Lm/l;

    :cond_73
    :goto_73
    move-object v4, v5

    goto :goto_e6

    :cond_75
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bad tag number for \'maximum\': "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v4, Lm/a0;->q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bad tag number for \'minimum\': "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v6, Lm/a0;->q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bad sequence size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->d(Lm/x;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b2
    invoke-virtual {v4, v7}, Lm/x;->v(I)Lm/f;

    move-result-object v4

    invoke-static {v4}, Lm/a0;->v(Ljava/lang/Object;)Lm/a0;

    move-result-object v4

    iget v6, v4, Lm/a0;->q:I

    if-eqz v6, :cond_d7

    if-ne v6, v7, :cond_c1

    goto :goto_65

    :cond_c1
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

    :cond_d7
    invoke-static {v4}, Lq4/k;->v(Lm/a0;)V

    invoke-virtual {v4, v2, v9}, Lm/a0;->t(ZLm/a;)Lm/u;

    move-result-object v4

    invoke-virtual {v9, v4}, Lm/a;->a(Lm/u;)V

    check-cast v4, Lm/l;

    iput-object v4, v5, Ll0/a0;->d:Lm/l;

    goto :goto_73

    :goto_e6
    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_8

    :cond_ec
    return-object v1
.end method

.method public static i(Lm/x;)Ll0/h0;
    .registers 7

    new-instance v0, Ll0/h0;

    invoke-static {p0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lm/x;->w()Ljava/util/Enumeration;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_61

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lm/a0;->v(Ljava/lang/Object;)Lm/a0;

    move-result-object v1

    iget v2, v1, Lm/a0;->q:I

    sget-object v3, Lm/x;->d:Lm/a;

    const/4 v4, 0x0

    if-eqz v2, :cond_4e

    const/4 v5, 0x1

    if-ne v2, v5, :cond_38

    invoke-static {v1}, Lq4/k;->v(Lm/a0;)V

    invoke-virtual {v1, v4, v3}, Lm/a0;->t(ZLm/a;)Lm/u;

    move-result-object v1

    invoke-virtual {v3, v1}, Lm/a;->a(Lm/u;)V

    check-cast v1, Lm/x;

    invoke-static {v1}, Ll0/h0;->h(Lm/x;)[Ll0/a0;

    move-result-object v1

    iput-object v1, v0, Ll0/h0;->d:[Ll0/a0;

    goto :goto_d

    :cond_38
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unknown tag encountered: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v1, Lm/a0;->q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4e
    invoke-static {v1}, Lq4/k;->v(Lm/a0;)V

    invoke-virtual {v1, v4, v3}, Lm/a0;->t(ZLm/a;)Lm/u;

    move-result-object v1

    invoke-virtual {v3, v1}, Lm/a;->a(Lm/u;)V

    check-cast v1, Lm/x;

    invoke-static {v1}, Ll0/h0;->h(Lm/x;)[Ll0/a0;

    move-result-object v1

    iput-object v1, v0, Ll0/h0;->c:[Ll0/a0;

    goto :goto_d

    :cond_61
    return-object v0
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 6

    new-instance v0, Lm/g;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lm/g;-><init>(I)V

    iget-object v1, p0, Ll0/h0;->c:[Ll0/a0;

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    new-instance v3, Lm/d1;

    new-instance v4, Lm/a1;

    invoke-direct {v4, v1}, Lm/a1;-><init>([Lm/f;)V

    invoke-direct {v3, v2, v2, v4}, Lm/a0;-><init>(ZILm/f;)V

    invoke-virtual {v0, v3}, Lm/g;->a(Lm/f;)V

    :cond_18
    iget-object p0, p0, Ll0/h0;->d:[Ll0/a0;

    if-eqz p0, :cond_2a

    new-instance v1, Lm/d1;

    new-instance v3, Lm/a1;

    invoke-direct {v3, p0}, Lm/a1;-><init>([Lm/f;)V

    const/4 p0, 0x1

    invoke-direct {v1, v2, p0, v3}, Lm/a0;-><init>(ZILm/f;)V

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    :cond_2a
    new-instance p0, Lm/a1;

    invoke-direct {p0, v0}, Lm/x;-><init>(Lm/g;)V

    const/4 v0, -0x1

    iput v0, p0, Lm/a1;->q:I

    return-object p0
.end method
