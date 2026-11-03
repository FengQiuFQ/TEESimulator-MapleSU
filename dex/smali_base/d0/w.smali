.class public final Ld0/w;
.super Lm/n;


# instance fields
.field public A1:Ljava/math/BigInteger;

.field public B1:Ljava/math/BigInteger;

.field public C1:Ljava/math/BigInteger;

.field public D1:Lm/x;

.field public c:Ljava/math/BigInteger;

.field public d:Ljava/math/BigInteger;

.field public q:Ljava/math/BigInteger;

.field public x:Ljava/math/BigInteger;

.field public y:Ljava/math/BigInteger;

.field public z1:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ld0/w;->D1:Lm/x;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Ld0/w;->c:Ljava/math/BigInteger;

    iput-object p1, p0, Ld0/w;->d:Ljava/math/BigInteger;

    iput-object p2, p0, Ld0/w;->q:Ljava/math/BigInteger;

    iput-object p3, p0, Ld0/w;->x:Ljava/math/BigInteger;

    iput-object p4, p0, Ld0/w;->y:Ljava/math/BigInteger;

    iput-object p5, p0, Ld0/w;->z1:Ljava/math/BigInteger;

    iput-object p6, p0, Ld0/w;->A1:Ljava/math/BigInteger;

    iput-object p7, p0, Ld0/w;->B1:Ljava/math/BigInteger;

    iput-object p8, p0, Ld0/w;->C1:Ljava/math/BigInteger;

    return-void
.end method

.method public static h(Ljava/lang/Object;)Ld0/w;
    .registers 5

    instance-of v0, p0, Ld0/w;

    if-eqz v0, :cond_7

    check-cast p0, Ld0/w;

    return-object p0

    :cond_7
    const/4 v0, 0x0

    if-eqz p0, :cond_a5

    new-instance v1, Ld0/w;

    invoke-static {p0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Ld0/w;->D1:Lm/x;

    invoke-virtual {p0}, Lm/x;->w()Ljava/util/Enumeration;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/l;

    invoke-virtual {v0}, Lm/l;->y()I

    move-result v2

    if-ltz v2, :cond_9d

    const/4 v3, 0x1

    if-gt v2, v3, :cond_9d

    invoke-virtual {v0}, Lm/l;->t()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, v1, Ld0/w;->c:Ljava/math/BigInteger;

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/l;

    invoke-virtual {v0}, Lm/l;->t()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, v1, Ld0/w;->d:Ljava/math/BigInteger;

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/l;

    invoke-virtual {v0}, Lm/l;->t()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, v1, Ld0/w;->q:Ljava/math/BigInteger;

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/l;

    invoke-virtual {v0}, Lm/l;->t()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, v1, Ld0/w;->x:Ljava/math/BigInteger;

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/l;

    invoke-virtual {v0}, Lm/l;->t()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, v1, Ld0/w;->y:Ljava/math/BigInteger;

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/l;

    invoke-virtual {v0}, Lm/l;->t()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, v1, Ld0/w;->z1:Ljava/math/BigInteger;

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/l;

    invoke-virtual {v0}, Lm/l;->t()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, v1, Ld0/w;->A1:Ljava/math/BigInteger;

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/l;

    invoke-virtual {v0}, Lm/l;->t()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, v1, Ld0/w;->B1:Ljava/math/BigInteger;

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/l;

    invoke-virtual {v0}, Lm/l;->t()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, v1, Ld0/w;->C1:Ljava/math/BigInteger;

    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_9c

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm/x;

    iput-object p0, v1, Ld0/w;->D1:Lm/x;

    :cond_9c
    return-object v1

    :cond_9d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "wrong version for RSA private key"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a5
    return-object v0
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 4

    new-instance v0, Lm/g;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lm/g;-><init>(I)V

    new-instance v1, Lm/l;

    iget-object v2, p0, Ld0/w;->c:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lm/l;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    new-instance v1, Lm/l;

    iget-object v2, p0, Ld0/w;->d:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lm/l;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    new-instance v1, Lm/l;

    iget-object v2, p0, Ld0/w;->q:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lm/l;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    new-instance v1, Lm/l;

    iget-object v2, p0, Ld0/w;->x:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lm/l;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    new-instance v1, Lm/l;

    iget-object v2, p0, Ld0/w;->y:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lm/l;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    new-instance v1, Lm/l;

    iget-object v2, p0, Ld0/w;->z1:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lm/l;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    new-instance v1, Lm/l;

    iget-object v2, p0, Ld0/w;->A1:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lm/l;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    new-instance v1, Lm/l;

    iget-object v2, p0, Ld0/w;->B1:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lm/l;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    new-instance v1, Lm/l;

    iget-object v2, p0, Ld0/w;->C1:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lm/l;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    iget-object p0, p0, Ld0/w;->D1:Lm/x;

    if-eqz p0, :cond_68

    invoke-virtual {v0, p0}, Lm/g;->a(Lm/f;)V

    :cond_68
    new-instance p0, Lm/a1;

    invoke-direct {p0, v0}, Lm/x;-><init>(Lm/g;)V

    const/4 v0, -0x1

    iput v0, p0, Lm/a1;->q:I

    return-object p0
.end method
