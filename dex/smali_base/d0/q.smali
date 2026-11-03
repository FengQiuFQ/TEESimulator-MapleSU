.class public final Ld0/q;
.super Lm/n;


# instance fields
.field public c:Lm/l;

.field public d:Lm/r;


# direct methods
.method public constructor <init>([BI)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lm/x0;

    invoke-direct {v0, p1}, Lm/r;-><init>([B)V

    iput-object v0, p0, Ld0/q;->d:Lm/r;

    new-instance p1, Lm/l;

    int-to-long v0, p2

    invoke-direct {p1, v0, v1}, Lm/l;-><init>(J)V

    iput-object p1, p0, Ld0/q;->c:Lm/l;

    return-void
.end method

.method public static h(Ljava/lang/Object;)Ld0/q;
    .registers 3

    instance-of v0, p0, Ld0/q;

    if-eqz v0, :cond_7

    check-cast p0, Ld0/q;

    return-object p0

    :cond_7
    if-eqz p0, :cond_27

    new-instance v0, Ld0/q;

    invoke-static {p0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lm/x;->v(I)Lm/f;

    move-result-object v1

    check-cast v1, Lm/r;

    iput-object v1, v0, Ld0/q;->d:Lm/r;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lm/x;->v(I)Lm/f;

    move-result-object p0

    invoke-static {p0}, Lm/l;->r(Ljava/lang/Object;)Lm/l;

    move-result-object p0

    iput-object p0, v0, Ld0/q;->c:Lm/l;

    return-object v0

    :cond_27
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 3

    new-instance v0, Lm/a1;

    iget-object v1, p0, Ld0/q;->d:Lm/r;

    iget-object p0, p0, Ld0/q;->c:Lm/l;

    invoke-direct {v0, v1, p0}, Lm/a1;-><init>(Lm/f;Lm/f;)V

    return-object v0
.end method
