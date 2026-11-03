.class public final Ll0/p;
.super Lm/n;


# instance fields
.field public c:Lm/l;

.field public d:Lm/l;

.field public q:Lm/l;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lm/l;

    invoke-direct {v0, p1}, Lm/l;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Ll0/p;->c:Lm/l;

    new-instance p1, Lm/l;

    invoke-direct {p1, p2}, Lm/l;-><init>(Ljava/math/BigInteger;)V

    iput-object p1, p0, Ll0/p;->d:Lm/l;

    new-instance p1, Lm/l;

    invoke-direct {p1, p3}, Lm/l;-><init>(Ljava/math/BigInteger;)V

    iput-object p1, p0, Ll0/p;->q:Lm/l;

    return-void
.end method

.method public static h(Ljava/lang/Object;)Ll0/p;
    .registers 4

    instance-of v0, p0, Ll0/p;

    if-eqz v0, :cond_7

    check-cast p0, Ll0/p;

    return-object p0

    :cond_7
    if-eqz p0, :cond_4d

    new-instance v0, Ll0/p;

    invoke-static {p0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lm/x;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3c

    invoke-virtual {p0}, Lm/x;->w()Ljava/util/Enumeration;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lm/l;->r(Ljava/lang/Object;)Lm/l;

    move-result-object v1

    iput-object v1, v0, Ll0/p;->c:Lm/l;

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lm/l;->r(Ljava/lang/Object;)Lm/l;

    move-result-object v1

    iput-object v1, v0, Ll0/p;->d:Lm/l;

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lm/l;->r(Ljava/lang/Object;)Lm/l;

    move-result-object p0

    iput-object p0, v0, Ll0/p;->q:Lm/l;

    return-object v0

    :cond_3c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad sequence size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->d(Lm/x;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4d
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 3

    new-instance v0, Lm/g;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lm/g;-><init>(I)V

    iget-object v1, p0, Ll0/p;->c:Lm/l;

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    iget-object v1, p0, Ll0/p;->d:Lm/l;

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    iget-object p0, p0, Ll0/p;->q:Lm/l;

    invoke-virtual {v0, p0}, Lm/g;->a(Lm/f;)V

    new-instance p0, Lm/a1;

    invoke-direct {p0, v0}, Lm/x;-><init>(Lm/g;)V

    const/4 v0, -0x1

    iput v0, p0, Lm/a1;->q:I

    return-object p0
.end method
