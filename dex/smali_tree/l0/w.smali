.class public final Ll0/w;
.super Lm/n;


# instance fields
.field public c:Ljava/util/Hashtable;

.field public d:Ljava/util/Vector;


# direct methods
.method public static i(Ll0/w;Lm/q;)Lm/r;
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    invoke-virtual {p0, p1}, Ll0/w;->h(Lm/q;)Ll0/v;

    move-result-object p0

    if-nez p0, :cond_b

    return-object v0

    :cond_b
    iget-object p0, p0, Ll0/v;->q:Lm/r;

    return-object p0
.end method

.method public static j(Lm/f;)Ll0/w;
    .registers 10

    instance-of v0, p0, Ll0/w;

    if-eqz v0, :cond_7

    check-cast p0, Ll0/w;

    return-object p0

    :cond_7
    const/4 v0, 0x0

    if-eqz p0, :cond_c6

    new-instance v1, Ll0/w;

    invoke-static {p0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, v1, Ll0/w;->c:Ljava/util/Hashtable;

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, v1, Ll0/w;->d:Ljava/util/Vector;

    invoke-virtual {p0}, Lm/x;->w()Ljava/util/Enumeration;

    move-result-object p0

    :goto_25
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_c5

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Ll0/v;->x:Lm/q;

    instance-of v3, v2, Ll0/v;

    if-eqz v3, :cond_38

    check-cast v2, Ll0/v;

    goto :goto_9a

    :cond_38
    if-eqz v2, :cond_99

    new-instance v3, Ll0/v;

    invoke-static {v2}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v2

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v2}, Lm/x;->size()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-ne v4, v7, :cond_64

    invoke-virtual {v2, v6}, Lm/x;->v(I)Lm/f;

    move-result-object v4

    invoke-static {v4}, Lm/q;->v(Ljava/lang/Object;)Lm/q;

    move-result-object v4

    iput-object v4, v3, Ll0/v;->c:Lm/q;

    iput-boolean v6, v3, Ll0/v;->d:Z

    invoke-virtual {v2, v5}, Lm/x;->v(I)Lm/f;

    move-result-object v2

    :goto_5c
    invoke-static {v2}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object v2

    iput-object v2, v3, Ll0/v;->q:Lm/r;

    move-object v2, v3

    goto :goto_9a

    :cond_64
    invoke-virtual {v2}, Lm/x;->size()I

    move-result v4

    const/4 v8, 0x3

    if-ne v4, v8, :cond_88

    invoke-virtual {v2, v6}, Lm/x;->v(I)Lm/f;

    move-result-object v4

    invoke-static {v4}, Lm/q;->v(Ljava/lang/Object;)Lm/q;

    move-result-object v4

    iput-object v4, v3, Ll0/v;->c:Lm/q;

    invoke-virtual {v2, v5}, Lm/x;->v(I)Lm/f;

    move-result-object v4

    invoke-static {v4}, Lm/d;->s(Lm/f;)Lm/d;

    move-result-object v4

    invoke-virtual {v4}, Lm/d;->t()Z

    move-result v4

    iput-boolean v4, v3, Ll0/v;->d:Z

    invoke-virtual {v2, v7}, Lm/x;->v(I)Lm/f;

    move-result-object v2

    goto :goto_5c

    :cond_88
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bad sequence size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->d(Lm/x;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_99
    move-object v2, v0

    :goto_9a
    iget-object v3, v1, Ll0/w;->c:Ljava/util/Hashtable;

    iget-object v4, v2, Ll0/v;->c:Lm/q;

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b9

    const-string v3, "org.bouncycastle.x509.ignore_repeated_extensions"

    invoke-static {v3}, Lm4/h;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ad

    goto :goto_b9

    :cond_ad
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "repeated extension found: "

    invoke-static {v0, v4}, Lb/b;->j(Ljava/lang/String;Lm/q;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b9
    :goto_b9
    iget-object v3, v1, Ll0/w;->c:Ljava/util/Hashtable;

    invoke-virtual {v3, v4, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Ll0/w;->d:Ljava/util/Vector;

    invoke-virtual {v2, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_25

    :cond_c5
    return-object v1

    :cond_c6
    return-object v0
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 5

    new-instance v0, Lm/g;

    iget-object v1, p0, Ll0/w;->d:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-direct {v0, v2}, Lm/g;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm/q;

    iget-object v3, p0, Ll0/w;->c:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll0/v;

    invoke-virtual {v0, v2}, Lm/g;->a(Lm/f;)V

    goto :goto_f

    :cond_27
    new-instance p0, Lm/a1;

    invoke-direct {p0, v0}, Lm/x;-><init>(Lm/g;)V

    const/4 v0, -0x1

    iput v0, p0, Lm/a1;->q:I

    return-object p0
.end method

.method public final h(Lm/q;)Ll0/v;
    .registers 2

    iget-object p0, p0, Ll0/w;->c:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ll0/v;

    return-object p0
.end method

.method public final k()Z
    .registers 6

    iget-object v0, p0, Ll0/w;->d:Ljava/util/Vector;

    const/4 v1, 0x0

    move v2, v1

    :goto_4
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    if-eq v2, v3, :cond_1f

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Ll0/w;->c:Ljava/util/Hashtable;

    invoke-virtual {v4, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ll0/v;

    iget-boolean v3, v3, Ll0/v;->d:Z

    if-eqz v3, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_1f
    return v1
.end method
