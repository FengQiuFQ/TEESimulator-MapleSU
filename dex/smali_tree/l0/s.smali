.class public final Ll0/s;
.super Lm/n;


# instance fields
.field public c:Ll0/t;

.field public d:Ll0/n0;

.field public q:Ll0/z;


# direct methods
.method public constructor <init>(Ll0/t;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll0/s;->c:Ll0/t;

    const/4 p1, 0x0

    iput-object p1, p0, Ll0/s;->d:Ll0/n0;

    iput-object p1, p0, Ll0/s;->q:Ll0/z;

    return-void
.end method

.method public static h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, ":"

    const-string v1, "    "

    invoke-static {p0, v1, p2, v0, p1}, Lb/b;->v(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v1, v1, p3, p1}, Lb/b;->v(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 6

    new-instance v0, Lm/g;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lm/g;-><init>(I)V

    iget-object v1, p0, Ll0/s;->c:Ll0/t;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_14

    new-instance v4, Lm/d1;

    invoke-direct {v4, v2, v3, v1}, Lm/a0;-><init>(ZILm/f;)V

    invoke-virtual {v0, v4}, Lm/g;->a(Lm/f;)V

    :cond_14
    iget-object v1, p0, Ll0/s;->d:Ll0/n0;

    if-eqz v1, :cond_20

    new-instance v4, Lm/d1;

    invoke-direct {v4, v3, v2, v1}, Lm/a0;-><init>(ZILm/f;)V

    invoke-virtual {v0, v4}, Lm/g;->a(Lm/f;)V

    :cond_20
    iget-object p0, p0, Ll0/s;->q:Ll0/z;

    if-eqz p0, :cond_2d

    new-instance v1, Lm/d1;

    const/4 v2, 0x2

    invoke-direct {v1, v3, v2, p0}, Lm/a0;-><init>(ZILm/f;)V

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    :cond_2d
    new-instance p0, Lm/a1;

    invoke-direct {p0, v0}, Lm/x;-><init>(Lm/g;)V

    const/4 v0, -0x1

    iput v0, p0, Lm/a1;->q:I

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    sget-object v0, Lm4/m;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DistributionPoint: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ll0/s;->c:Ll0/t;

    if-eqz v2, :cond_1c

    const-string v3, "distributionPoint"

    invoke-virtual {v2}, Ll0/t;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v3, v2}, Ll0/s;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    iget-object v2, p0, Ll0/s;->d:Ll0/n0;

    if-eqz v2, :cond_29

    const-string v3, "reasons"

    invoke-virtual {v2}, Lm/b;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v3, v2}, Ll0/s;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_29
    iget-object p0, p0, Ll0/s;->q:Ll0/z;

    if-eqz p0, :cond_36

    const-string v2, "cRLIssuer"

    invoke-virtual {p0}, Ll0/z;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v0, v2, p0}, Ll0/s;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_36
    const-string p0, "]"

    invoke-static {v1, p0, v0}, Lb/b;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
