.class public final Ly1/a;
.super Lm/n;


# instance fields
.field public c:Lm/l;

.field public d:Lm/l;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lm/l;

    invoke-direct {v0, p1}, Lm/l;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Ly1/a;->c:Lm/l;

    new-instance p1, Lm/l;

    invoke-direct {p1, p2}, Lm/l;-><init>(Ljava/math/BigInteger;)V

    iput-object p1, p0, Ly1/a;->d:Lm/l;

    return-void
.end method

.method public static h(Ljava/lang/Object;)Ly1/a;
    .registers 3

    instance-of v0, p0, Ly1/a;

    if-eqz v0, :cond_7

    check-cast p0, Ly1/a;

    return-object p0

    :cond_7
    if-eqz p0, :cond_27

    new-instance v0, Ly1/a;

    invoke-static {p0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lm/x;->w()Ljava/util/Enumeration;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm/l;

    iput-object v1, v0, Ly1/a;->c:Lm/l;

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm/l;

    iput-object p0, v0, Ly1/a;->d:Lm/l;

    return-object v0

    :cond_27
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 3

    new-instance v0, Lm/a1;

    iget-object v1, p0, Ly1/a;->c:Lm/l;

    iget-object p0, p0, Ly1/a;->d:Lm/l;

    invoke-direct {v0, v1, p0}, Lm/a1;-><init>(Lm/f;Lm/f;)V

    return-object v0
.end method
