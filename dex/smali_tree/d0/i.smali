.class public final Ld0/i;
.super Lm/n;


# instance fields
.field public c:Ll0/b;

.field public d:Lm/r;


# direct methods
.method public constructor <init>(Ll0/b;[B)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld0/i;->c:Ll0/b;

    new-instance p1, Lm/x0;

    invoke-static {p2}, Lm4/d;->e([B)[B

    move-result-object p2

    invoke-direct {p1, p2}, Lm/r;-><init>([B)V

    iput-object p1, p0, Ld0/i;->d:Lm/r;

    return-void
.end method

.method public static h(Ljava/lang/Object;)Ld0/i;
    .registers 3

    instance-of v0, p0, Ld0/i;

    if-eqz v0, :cond_7

    check-cast p0, Ld0/i;

    return-object p0

    :cond_7
    if-eqz p0, :cond_2b

    new-instance v0, Ld0/i;

    invoke-static {p0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lm/x;->w()Ljava/util/Enumeration;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ll0/b;->h(Ljava/lang/Object;)Ll0/b;

    move-result-object v1

    iput-object v1, v0, Ld0/i;->c:Ll0/b;

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object p0

    iput-object p0, v0, Ld0/i;->d:Lm/r;

    return-object v0

    :cond_2b
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 3

    new-instance v0, Lm/a1;

    iget-object v1, p0, Ld0/i;->c:Ll0/b;

    iget-object p0, p0, Ld0/i;->d:Lm/r;

    invoke-direct {v0, v1, p0}, Lm/a1;-><init>(Lm/f;Lm/f;)V

    return-object v0
.end method
