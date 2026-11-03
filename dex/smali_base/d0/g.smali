.class public final Ld0/g;
.super Lm/n;


# instance fields
.field public c:Lm/l;

.field public d:Lm/l;

.field public q:Lm/l;


# direct methods
.method public constructor <init>(ILjava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lm/l;

    invoke-direct {v0, p2}, Lm/l;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Ld0/g;->c:Lm/l;

    new-instance p2, Lm/l;

    invoke-direct {p2, p3}, Lm/l;-><init>(Ljava/math/BigInteger;)V

    iput-object p2, p0, Ld0/g;->d:Lm/l;

    if-eqz p1, :cond_1c

    new-instance p2, Lm/l;

    int-to-long v0, p1

    invoke-direct {p2, v0, v1}, Lm/l;-><init>(J)V

    iput-object p2, p0, Ld0/g;->q:Lm/l;

    return-void

    :cond_1c
    const/4 p1, 0x0

    iput-object p1, p0, Ld0/g;->q:Lm/l;

    return-void
.end method

.method public static h(Ljava/lang/Object;)Ld0/g;
    .registers 4

    instance-of v0, p0, Ld0/g;

    if-eqz v0, :cond_7

    check-cast p0, Ld0/g;

    return-object p0

    :cond_7
    const/4 v0, 0x0

    if-eqz p0, :cond_3d

    new-instance v1, Ld0/g;

    invoke-static {p0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lm/x;->w()Ljava/util/Enumeration;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lm/l;->r(Ljava/lang/Object;)Lm/l;

    move-result-object v2

    iput-object v2, v1, Ld0/g;->c:Lm/l;

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lm/l;->r(Ljava/lang/Object;)Lm/l;

    move-result-object v2

    iput-object v2, v1, Ld0/g;->d:Lm/l;

    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm/l;

    iput-object p0, v1, Ld0/g;->q:Lm/l;

    return-object v1

    :cond_3a
    iput-object v0, v1, Ld0/g;->q:Lm/l;

    return-object v1

    :cond_3d
    return-object v0
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 3

    new-instance v0, Lm/g;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lm/g;-><init>(I)V

    iget-object v1, p0, Ld0/g;->c:Lm/l;

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    iget-object v1, p0, Ld0/g;->d:Lm/l;

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    invoke-virtual {p0}, Ld0/g;->i()Ljava/math/BigInteger;

    move-result-object v1

    if-eqz v1, :cond_1b

    iget-object p0, p0, Ld0/g;->q:Lm/l;

    invoke-virtual {v0, p0}, Lm/g;->a(Lm/f;)V

    :cond_1b
    new-instance p0, Lm/a1;

    invoke-direct {p0, v0}, Lm/x;-><init>(Lm/g;)V

    const/4 v0, -0x1

    iput v0, p0, Lm/a1;->q:I

    return-object p0
.end method

.method public final i()Ljava/math/BigInteger;
    .registers 1

    iget-object p0, p0, Ld0/g;->q:Lm/l;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    invoke-virtual {p0}, Lm/l;->s()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method
