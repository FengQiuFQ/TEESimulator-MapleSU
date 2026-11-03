.class public final Lb0/i;
.super Lm/n;


# instance fields
.field public c:Lm/q;

.field public d:Lm/r;


# direct methods
.method public static h(Lm/n;)Lb0/i;
    .registers 3

    instance-of v0, p0, Lb0/i;

    if-eqz v0, :cond_7

    check-cast p0, Lb0/i;

    return-object p0

    :cond_7
    if-eqz p0, :cond_25

    new-instance v0, Lb0/i;

    invoke-static {p0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lm/x;->v(I)Lm/f;

    move-result-object v1

    check-cast v1, Lm/q;

    iput-object v1, v0, Lb0/i;->c:Lm/q;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lm/x;->v(I)Lm/f;

    move-result-object p0

    check-cast p0, Lm/r;

    iput-object p0, v0, Lb0/i;->d:Lm/r;

    return-object v0

    :cond_25
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 3

    new-instance v0, Lm/a1;

    iget-object v1, p0, Lb0/i;->c:Lm/q;

    iget-object p0, p0, Lb0/i;->d:Lm/r;

    invoke-direct {v0, v1, p0}, Lm/a1;-><init>(Lm/f;Lm/f;)V

    return-object v0
.end method
