.class public final Lf0/a;
.super Lm/n;


# instance fields
.field public c:Lm/x;


# direct methods
.method public constructor <init>(ILjava/math/BigInteger;Lm/b;Lm0/f;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    add-int/lit8 p1, p1, 0x7

    div-int/lit8 p1, p1, 0x8

    invoke-static {p1, p2}, Lm4/a;->a(ILjava/math/BigInteger;)[B

    move-result-object p1

    new-instance p2, Lm/g;

    const/4 v0, 0x4

    invoke-direct {p2, v0}, Lm/g;-><init>(I)V

    new-instance v0, Lm/l;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Lm/l;-><init>(J)V

    invoke-virtual {p2, v0}, Lm/g;->a(Lm/f;)V

    new-instance v0, Lm/x0;

    invoke-direct {v0, p1}, Lm/r;-><init>([B)V

    invoke-virtual {p2, v0}, Lm/g;->a(Lm/f;)V

    const/4 p1, 0x1

    if-eqz p4, :cond_2f

    new-instance v0, Lm/d1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p4}, Lm/a0;-><init>(ZILm/f;)V

    invoke-virtual {p2, v0}, Lm/g;->a(Lm/f;)V

    :cond_2f
    if-eqz p3, :cond_39

    new-instance p4, Lm/d1;

    invoke-direct {p4, p1, p1, p3}, Lm/a0;-><init>(ZILm/f;)V

    invoke-virtual {p2, p4}, Lm/g;->a(Lm/f;)V

    :cond_39
    new-instance p1, Lm/a1;

    invoke-direct {p1, p2}, Lm/x;-><init>(Lm/g;)V

    const/4 p2, -0x1

    iput p2, p1, Lm/a1;->q:I

    iput-object p1, p0, Lf0/a;->c:Lm/x;

    return-void
.end method

.method public static h(Ljava/lang/Object;)Lf0/a;
    .registers 2

    instance-of v0, p0, Lf0/a;

    if-eqz v0, :cond_7

    check-cast p0, Lf0/a;

    return-object p0

    :cond_7
    if-eqz p0, :cond_15

    new-instance v0, Lf0/a;

    invoke-static {p0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v0, Lf0/a;->c:Lm/x;

    return-object v0

    :cond_15
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 1

    iget-object p0, p0, Lf0/a;->c:Lm/x;

    return-object p0
.end method

.method public final i()Ljava/math/BigInteger;
    .registers 3

    iget-object p0, p0, Lf0/a;->c:Lm/x;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lm/x;->v(I)Lm/f;

    move-result-object p0

    check-cast p0, Lm/r;

    new-instance v1, Ljava/math/BigInteger;

    iget-object p0, p0, Lm/r;->c:[B

    invoke-direct {v1, v0, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v1
.end method

.method public final j(II)Lm/u;
    .registers 6

    iget-object p0, p0, Lf0/a;->c:Lm/x;

    invoke-virtual {p0}, Lm/x;->w()Ljava/util/Enumeration;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/f;

    instance-of v1, v0, Lm/a0;

    if-eqz v1, :cond_6

    check-cast v0, Lm/a0;

    iget v1, v0, Lm/a0;->d:I

    const/16 v2, 0x80

    if-ne v1, v2, :cond_6

    iget v1, v0, Lm/a0;->q:I

    if-ne v1, p1, :cond_6

    if-gez p2, :cond_2d

    invoke-virtual {v0}, Lm/a0;->u()Lm/n;

    move-result-object p0

    invoke-virtual {p0}, Lm/n;->d()Lm/u;

    move-result-object p0

    return-object p0

    :cond_2d
    invoke-virtual {v0, p2}, Lm/a0;->s(I)Lm/u;

    move-result-object p0

    return-object p0

    :cond_32
    const/4 p0, 0x0

    return-object p0
.end method

.method public final k()Lm/b;
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lf0/a;->j(II)Lm/u;

    move-result-object p0

    check-cast p0, Lm/b;

    return-object p0
.end method
