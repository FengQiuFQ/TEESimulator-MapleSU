.class public final Ld0/n;
.super Lm/n;

# interfaces
.implements Ld0/r;


# instance fields
.field public c:Ld0/k;

.field public d:Ld0/j;


# direct methods
.method public constructor <init>(Ld0/k;Ld0/j;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld0/n;->c:Ld0/k;

    iput-object p2, p0, Ld0/n;->d:Ld0/j;

    return-void
.end method

.method public static h(Ljava/lang/Object;)Ld0/n;
    .registers 7

    instance-of v0, p0, Ld0/n;

    if-eqz v0, :cond_7

    check-cast p0, Ld0/n;

    return-object p0

    :cond_7
    const/4 v0, 0x0

    if-eqz p0, :cond_73

    new-instance v1, Ld0/n;

    invoke-static {p0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lm/x;->w()Ljava/util/Enumeration;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm/f;

    invoke-interface {v2}, Lm/f;->d()Lm/u;

    move-result-object v2

    invoke-static {v2}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lm/x;->v(I)Lm/f;

    move-result-object v3

    sget-object v4, Ld0/r;->B:Lm/q;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    new-instance v3, Ld0/k;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lm/x;->v(I)Lm/f;

    move-result-object v2

    invoke-static {v2}, Ld0/o;->h(Ljava/lang/Object;)Ld0/o;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Ld0/k;-><init>(Lm/q;Lm/n;)V

    :goto_40
    iput-object v3, v1, Ld0/n;->c:Ld0/k;

    goto :goto_53

    :cond_43
    new-instance v3, Ld0/k;

    invoke-static {v2}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v2

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-static {v2}, Ll0/b;->h(Ljava/lang/Object;)Ll0/b;

    move-result-object v2

    iput-object v2, v3, Ld0/k;->c:Ll0/b;

    goto :goto_40

    :goto_53
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    instance-of v2, p0, Ld0/j;

    if-eqz v2, :cond_5f

    move-object v0, p0

    check-cast v0, Ld0/j;

    goto :goto_70

    :cond_5f
    if-eqz p0, :cond_70

    new-instance v0, Ld0/j;

    invoke-static {p0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Ll0/b;->h(Ljava/lang/Object;)Ll0/b;

    move-result-object p0

    iput-object p0, v0, Ld0/j;->c:Ll0/b;

    :cond_70
    :goto_70
    iput-object v0, v1, Ld0/n;->d:Ld0/j;

    return-object v1

    :cond_73
    return-object v0
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 3

    new-instance v0, Lm/a1;

    iget-object v1, p0, Ld0/n;->c:Ld0/k;

    iget-object p0, p0, Ld0/n;->d:Ld0/j;

    invoke-direct {v0, v1, p0}, Lm/a1;-><init>(Lm/f;Lm/f;)V

    return-object v0
.end method
