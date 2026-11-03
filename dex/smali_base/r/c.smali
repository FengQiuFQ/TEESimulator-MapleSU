.class public final Lr/c;
.super Lm/n;


# instance fields
.field public c:Lm/r;

.field public d:Lm/q;


# direct methods
.method public static h(Ljava/lang/Object;)Lr/c;
    .registers 3

    instance-of v0, p0, Lr/c;

    if-eqz v0, :cond_7

    check-cast p0, Lr/c;

    return-object p0

    :cond_7
    if-eqz p0, :cond_27

    new-instance v0, Lr/c;

    invoke-static {p0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lm/x;->w()Ljava/util/Enumeration;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm/r;

    iput-object v1, v0, Lr/c;->c:Lm/r;

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm/q;

    iput-object p0, v0, Lr/c;->d:Lm/q;

    return-object v0

    :cond_27
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 3

    new-instance v0, Lm/a1;

    iget-object v1, p0, Lr/c;->c:Lm/r;

    iget-object p0, p0, Lr/c;->d:Lm/q;

    invoke-direct {v0, v1, p0}, Lm/a1;-><init>(Lm/f;Lm/f;)V

    return-object v0
.end method
