.class public final Ll0/d0;
.super Lm/n;


# instance fields
.field public A1:Lm/x;

.field public c:Ll0/t;

.field public d:Z

.field public q:Z

.field public x:Ll0/n0;

.field public y:Z

.field public z1:Z


# direct methods
.method public static h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, ":"

    const-string v1, "    "

    invoke-static {p0, v1, p2, v0, p1}, Lb/b;->v(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v1, v1, p3, p1}, Lb/b;->v(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static i(Ljava/lang/Object;)Ll0/d0;
    .registers 8

    instance-of v0, p0, Ll0/d0;

    if-eqz v0, :cond_7

    check-cast p0, Ll0/d0;

    return-object p0

    :cond_7
    if-eqz p0, :cond_ae

    new-instance v0, Ll0/d0;

    invoke-static {p0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v0, Ll0/d0;->A1:Lm/x;

    const/4 v1, 0x0

    move v2, v1

    :goto_16
    invoke-virtual {p0}, Lm/x;->size()I

    move-result v3

    if-eq v2, v3, :cond_ad

    invoke-virtual {p0, v2}, Lm/x;->v(I)Lm/f;

    move-result-object v3

    invoke-static {v3}, Lm/a0;->v(Ljava/lang/Object;)Lm/a0;

    move-result-object v3

    iget v4, v3, Lm/a0;->q:I

    if-eqz v4, :cond_a3

    const/4 v5, 0x1

    sget-object v6, Lm/d;->d:Lm/a;

    if-eq v4, v5, :cond_90

    const/4 v5, 0x2

    if-eq v4, v5, :cond_7d

    const/4 v5, 0x3

    if-eq v4, v5, :cond_67

    const/4 v5, 0x4

    if-eq v4, v5, :cond_54

    const/4 v5, 0x5

    if-ne v4, v5, :cond_4c

    invoke-static {v3}, Lq4/k;->v(Lm/a0;)V

    invoke-virtual {v3, v1, v6}, Lm/a0;->t(ZLm/a;)Lm/u;

    move-result-object v3

    invoke-virtual {v6, v3}, Lm/a;->a(Lm/u;)V

    check-cast v3, Lm/d;

    invoke-virtual {v3}, Lm/d;->t()Z

    move-result v3

    iput-boolean v3, v0, Ll0/d0;->z1:Z

    goto :goto_a9

    :cond_4c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown tag in IssuingDistributionPoint"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_54
    invoke-static {v3}, Lq4/k;->v(Lm/a0;)V

    invoke-virtual {v3, v1, v6}, Lm/a0;->t(ZLm/a;)Lm/u;

    move-result-object v3

    invoke-virtual {v6, v3}, Lm/a;->a(Lm/u;)V

    check-cast v3, Lm/d;

    invoke-virtual {v3}, Lm/d;->t()Z

    move-result v3

    iput-boolean v3, v0, Ll0/d0;->y:Z

    goto :goto_a9

    :cond_67
    new-instance v4, Ll0/n0;

    invoke-static {v3}, Lq4/k;->v(Lm/a0;)V

    sget-object v5, Lm/b;->d:Lm/a;

    invoke-virtual {v3, v1, v5}, Lm/a0;->t(ZLm/a;)Lm/u;

    move-result-object v3

    invoke-virtual {v5, v3}, Lm/a;->a(Lm/u;)V

    check-cast v3, Lm/b;

    invoke-direct {v4, v3}, Ll0/n0;-><init>(Lm/b;)V

    iput-object v4, v0, Ll0/d0;->x:Ll0/n0;

    goto :goto_a9

    :cond_7d
    invoke-static {v3}, Lq4/k;->v(Lm/a0;)V

    invoke-virtual {v3, v1, v6}, Lm/a0;->t(ZLm/a;)Lm/u;

    move-result-object v3

    invoke-virtual {v6, v3}, Lm/a;->a(Lm/u;)V

    check-cast v3, Lm/d;

    invoke-virtual {v3}, Lm/d;->t()Z

    move-result v3

    iput-boolean v3, v0, Ll0/d0;->q:Z

    goto :goto_a9

    :cond_90
    invoke-static {v3}, Lq4/k;->v(Lm/a0;)V

    invoke-virtual {v3, v1, v6}, Lm/a0;->t(ZLm/a;)Lm/u;

    move-result-object v3

    invoke-virtual {v6, v3}, Lm/a;->a(Lm/u;)V

    check-cast v3, Lm/d;

    invoke-virtual {v3}, Lm/d;->t()Z

    move-result v3

    iput-boolean v3, v0, Ll0/d0;->d:Z

    goto :goto_a9

    :cond_a3
    invoke-static {v3}, Ll0/t;->i(Lm/a0;)Ll0/t;

    move-result-object v3

    iput-object v3, v0, Ll0/d0;->c:Ll0/t;

    :goto_a9
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_16

    :cond_ad
    return-object v0

    :cond_ae
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 1

    iget-object p0, p0, Ll0/d0;->A1:Lm/x;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 7

    sget-object v0, Lm4/m;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IssuingDistributionPoint: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ll0/d0;->c:Ll0/t;

    if-eqz v2, :cond_1c

    const-string v3, "distributionPoint"

    invoke-virtual {v2}, Ll0/t;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v3, v2}, Ll0/d0;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    iget-boolean v2, p0, Ll0/d0;->d:Z

    const-string v3, "false"

    const-string v4, "true"

    if-eqz v2, :cond_2e

    if-eqz v2, :cond_28

    move-object v2, v4

    goto :goto_29

    :cond_28
    move-object v2, v3

    :goto_29
    const-string v5, "onlyContainsUserCerts"

    invoke-static {v1, v0, v5, v2}, Ll0/d0;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2e
    iget-boolean v2, p0, Ll0/d0;->q:Z

    if-eqz v2, :cond_3c

    if-eqz v2, :cond_36

    move-object v2, v4

    goto :goto_37

    :cond_36
    move-object v2, v3

    :goto_37
    const-string v5, "onlyContainsCACerts"

    invoke-static {v1, v0, v5, v2}, Ll0/d0;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3c
    iget-object v2, p0, Ll0/d0;->x:Ll0/n0;

    if-eqz v2, :cond_49

    const-string v5, "onlySomeReasons"

    invoke-virtual {v2}, Lm/b;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v5, v2}, Ll0/d0;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_49
    iget-boolean v2, p0, Ll0/d0;->z1:Z

    if-eqz v2, :cond_57

    if-eqz v2, :cond_51

    move-object v2, v4

    goto :goto_52

    :cond_51
    move-object v2, v3

    :goto_52
    const-string v5, "onlyContainsAttributeCerts"

    invoke-static {v1, v0, v5, v2}, Ll0/d0;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_57
    iget-boolean p0, p0, Ll0/d0;->y:Z

    if-eqz p0, :cond_63

    if-eqz p0, :cond_5e

    move-object v3, v4

    :cond_5e
    const-string p0, "indirectCRL"

    invoke-static {v1, v0, p0, v3}, Ll0/d0;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_63
    const-string p0, "]"

    invoke-static {v1, p0, v0}, Lb/b;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
