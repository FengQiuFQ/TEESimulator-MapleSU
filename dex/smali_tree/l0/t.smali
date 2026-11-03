.class public final Ll0/t;
.super Lm/n;

# interfaces
.implements Lm/e;


# instance fields
.field public final c:Lm/n;

.field public final d:I


# direct methods
.method public constructor <init>(Ll0/z;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ll0/t;->d:I

    iput-object p1, p0, Ll0/t;->c:Lm/n;

    return-void
.end method

.method public constructor <init>(Lm/a0;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lm/a0;->q:I

    iput v0, p0, Ll0/t;->d:I

    iget v1, p1, Lm/a0;->d:I

    const/4 v2, 0x0

    const/16 v3, 0x80

    if-ne v1, v3, :cond_20

    if-nez v0, :cond_20

    new-instance v0, Ll0/z;

    sget-object v1, Lm/x;->d:Lm/a;

    invoke-virtual {v1, p1, v2}, Lm/a;->d(Lm/a0;Z)Lm/u;

    move-result-object p1

    check-cast p1, Lm/x;

    invoke-direct {v0, p1}, Ll0/z;-><init>(Lm/x;)V

    iput-object v0, p0, Ll0/t;->c:Lm/n;

    return-void

    :cond_20
    if-ne v1, v3, :cond_36

    const/4 v3, 0x1

    if-ne v0, v3, :cond_36

    invoke-static {p1}, Lq4/k;->v(Lm/a0;)V

    sget-object v0, Lm/y;->q:Lm/a;

    invoke-virtual {p1, v2, v0}, Lm/a0;->t(ZLm/a;)Lm/u;

    move-result-object p1

    invoke-virtual {v0, p1}, Lm/a;->a(Lm/u;)V

    check-cast p1, Lm/y;

    iput-object p1, p0, Ll0/t;->c:Lm/n;

    return-void

    :cond_36
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "unknown tag: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0}, Lq4/k;->h0(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, ":"

    const-string v1, "    "

    invoke-static {p0, v1, p2, v0, p1}, Lb/b;->v(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v1, v1, p3, p1}, Lb/b;->v(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static i(Lm/a0;)Ll0/t;
    .registers 3

    invoke-static {p0}, Lq4/k;->v(Lm/a0;)V

    invoke-virtual {p0}, Lm/a0;->u()Lm/n;

    move-result-object p0

    if-eqz p0, :cond_2e

    instance-of v0, p0, Ll0/t;

    if-eqz v0, :cond_e

    goto :goto_2e

    :cond_e
    instance-of v0, p0, Lm/a0;

    if-eqz v0, :cond_1a

    new-instance v0, Ll0/t;

    check-cast p0, Lm/a0;

    invoke-direct {v0, p0}, Ll0/t;-><init>(Lm/a0;)V

    return-object v0

    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "unknown object in factory: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    :goto_2e
    check-cast p0, Ll0/t;

    return-object p0
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 5

    new-instance v0, Lm/d1;

    const/16 v1, 0x80

    const/4 v2, 0x2

    iget v3, p0, Ll0/t;->d:I

    iget-object p0, p0, Ll0/t;->c:Lm/n;

    invoke-direct {v0, v2, v1, v3, p0}, Lm/a0;-><init>(IIILm/f;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    sget-object v0, Lm4/m;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DistributionPointName: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ll0/t;->d:I

    iget-object p0, p0, Ll0/t;->c:Lm/n;

    if-nez v2, :cond_1f

    const-string v2, "fullName"

    :goto_17
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v0, v2, p0}, Ll0/t;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22

    :cond_1f
    const-string v2, "nameRelativeToCRLIssuer"

    goto :goto_17

    :goto_22
    const-string p0, "]"

    invoke-static {v1, p0, v0}, Lb/b;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
