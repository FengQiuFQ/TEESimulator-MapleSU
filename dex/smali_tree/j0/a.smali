.class public final Lj0/a;
.super Lm/n;


# instance fields
.field public c:Lm/q;

.field public d:Lm/f;


# direct methods
.method public constructor <init>(Lm/q;Lm/f;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj0/a;->c:Lm/q;

    iput-object p2, p0, Lj0/a;->d:Lm/f;

    return-void
.end method

.method public static h(Lm/f;)Lj0/a;
    .registers 3

    instance-of v0, p0, Lj0/a;

    if-eqz v0, :cond_7

    check-cast p0, Lj0/a;

    return-object p0

    :cond_7
    if-eqz p0, :cond_23

    new-instance v0, Lj0/a;

    invoke-static {p0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lm/x;->v(I)Lm/f;

    move-result-object v1

    check-cast v1, Lm/q;

    iput-object v1, v0, Lj0/a;->c:Lm/q;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lm/x;->v(I)Lm/f;

    move-result-object p0

    iput-object p0, v0, Lj0/a;->d:Lm/f;

    return-object v0

    :cond_23
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "null value in getInstance()"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 3

    new-instance v0, Lm/a1;

    iget-object v1, p0, Lj0/a;->c:Lm/q;

    iget-object p0, p0, Lj0/a;->d:Lm/f;

    invoke-direct {v0, v1, p0}, Lm/a1;-><init>(Lm/f;Lm/f;)V

    return-object v0
.end method
