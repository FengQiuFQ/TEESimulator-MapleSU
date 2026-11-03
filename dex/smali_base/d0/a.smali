.class public final Ld0/a;
.super Lm/n;


# instance fields
.field public c:Lm/q;

.field public d:Lm/y;


# direct methods
.method public static h(Lm/f;)Ld0/a;
    .registers 3

    if-eqz p0, :cond_39

    instance-of v0, p0, Ld0/a;

    if-eqz v0, :cond_7

    goto :goto_39

    :cond_7
    instance-of v0, p0, Lm/x;

    if-eqz v0, :cond_25

    new-instance v0, Ld0/a;

    check-cast p0, Lm/x;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lm/x;->v(I)Lm/f;

    move-result-object v1

    check-cast v1, Lm/q;

    iput-object v1, v0, Ld0/a;->c:Lm/q;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lm/x;->v(I)Lm/f;

    move-result-object p0

    check-cast p0, Lm/y;

    iput-object p0, v0, Ld0/a;->d:Lm/y;

    return-object v0

    :cond_25
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

    :cond_39
    :goto_39
    check-cast p0, Ld0/a;

    return-object p0
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 3

    new-instance v0, Lm/a1;

    iget-object v1, p0, Ld0/a;->c:Lm/q;

    iget-object p0, p0, Ld0/a;->d:Lm/y;

    invoke-direct {v0, v1, p0}, Lm/a1;-><init>(Lm/f;Lm/f;)V

    return-object v0
.end method
