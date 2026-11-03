.class public final Ld0/f;
.super Lm/n;

# interfaces
.implements Ld0/r;


# instance fields
.field public c:Lm/q;

.field public d:Lm/f;

.field public q:Z


# direct methods
.method public constructor <init>(Lm/q;Lm/n;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld0/f;->q:Z

    iput-object p1, p0, Ld0/f;->c:Lm/q;

    iput-object p2, p0, Ld0/f;->d:Lm/f;

    return-void
.end method

.method public static h(Ljava/lang/Object;)Ld0/f;
    .registers 4

    instance-of v0, p0, Ld0/f;

    if-eqz v0, :cond_7

    check-cast p0, Ld0/f;

    return-object p0

    :cond_7
    if-eqz p0, :cond_38

    new-instance v0, Ld0/f;

    invoke-static {p0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Ld0/f;->q:Z

    invoke-virtual {p0}, Lm/x;->w()Ljava/util/Enumeration;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm/q;

    iput-object v2, v0, Ld0/f;->c:Lm/q;

    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm/a0;

    invoke-virtual {v1}, Lm/a0;->u()Lm/n;

    move-result-object v1

    iput-object v1, v0, Ld0/f;->d:Lm/f;

    :cond_33
    instance-of p0, p0, Lm/h0;

    iput-boolean p0, v0, Ld0/f;->q:Z

    return-object v0

    :cond_38
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 6

    new-instance v0, Lm/g;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lm/g;-><init>(I)V

    iget-object v1, p0, Ld0/f;->c:Lm/q;

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    iget-object v1, p0, Ld0/f;->d:Lm/f;

    if-eqz v1, :cond_19

    new-instance v2, Lm/k0;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v1}, Lm/a0;-><init>(ZILm/f;)V

    invoke-virtual {v0, v2}, Lm/g;->a(Lm/f;)V

    :cond_19
    iget-boolean p0, p0, Ld0/f;->q:Z

    if-eqz p0, :cond_23

    new-instance p0, Lm/h0;

    invoke-direct {p0, v0}, Lm/x;-><init>(Lm/g;)V

    return-object p0

    :cond_23
    new-instance p0, Lm/n1;

    invoke-direct {p0, v0}, Lm/x;-><init>(Lm/g;)V

    const/4 v0, -0x1

    iput v0, p0, Lm/n1;->q:I

    return-object p0
.end method
