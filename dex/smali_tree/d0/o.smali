.class public final Ld0/o;
.super Lm/n;


# static fields
.field public static final y:Ll0/b;


# instance fields
.field public final c:Lm/r;

.field public final d:Lm/l;

.field public final q:Lm/l;

.field public final x:Ll0/b;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ll0/b;

    sget-object v1, Ld0/r;->K:Lm/q;

    sget-object v2, Lm/v0;->d:Lm/v0;

    invoke-direct {v0, v1, v2}, Ll0/b;-><init>(Lm/q;Lm/f;)V

    sput-object v0, Ld0/o;->y:Ll0/b;

    return-void
.end method

.method public constructor <init>(Lm/x;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lm/x;->w()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/r;

    iput-object v0, p0, Ld0/o;->c:Lm/r;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/l;

    iput-object v0, p0, Ld0/o;->d:Lm/l;

    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_47

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lm/l;

    if-eqz v2, :cond_39

    invoke-static {v0}, Lm/l;->r(Ljava/lang/Object;)Lm/l;

    move-result-object v0

    iput-object v0, p0, Ld0/o;->q:Lm/l;

    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    goto :goto_3b

    :cond_37
    move-object v0, v1

    goto :goto_3b

    :cond_39
    iput-object v1, p0, Ld0/o;->q:Lm/l;

    :goto_3b
    if-eqz v0, :cond_44

    invoke-static {v0}, Ll0/b;->h(Ljava/lang/Object;)Ll0/b;

    move-result-object p1

    iput-object p1, p0, Ld0/o;->x:Ll0/b;

    return-void

    :cond_44
    iput-object v1, p0, Ld0/o;->x:Ll0/b;

    return-void

    :cond_47
    iput-object v1, p0, Ld0/o;->q:Lm/l;

    iput-object v1, p0, Ld0/o;->x:Ll0/b;

    return-void
.end method

.method public constructor <init>([BIILl0/b;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lm/x0;

    invoke-static {p1}, Lm4/d;->e([B)[B

    move-result-object p1

    invoke-direct {v0, p1}, Lm/r;-><init>([B)V

    iput-object v0, p0, Ld0/o;->c:Lm/r;

    new-instance p1, Lm/l;

    int-to-long v0, p2

    invoke-direct {p1, v0, v1}, Lm/l;-><init>(J)V

    iput-object p1, p0, Ld0/o;->d:Lm/l;

    if-lez p3, :cond_21

    new-instance p1, Lm/l;

    int-to-long p2, p3

    invoke-direct {p1, p2, p3}, Lm/l;-><init>(J)V

    :goto_1e
    iput-object p1, p0, Ld0/o;->q:Lm/l;

    goto :goto_23

    :cond_21
    const/4 p1, 0x0

    goto :goto_1e

    :goto_23
    iput-object p4, p0, Ld0/o;->x:Ll0/b;

    return-void
.end method

.method public static h(Ljava/lang/Object;)Ld0/o;
    .registers 2

    instance-of v0, p0, Ld0/o;

    if-eqz v0, :cond_7

    check-cast p0, Ld0/o;

    return-object p0

    :cond_7
    if-eqz p0, :cond_13

    new-instance v0, Ld0/o;

    invoke-static {p0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p0

    invoke-direct {v0, p0}, Ld0/o;-><init>(Lm/x;)V

    return-object v0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 3

    new-instance v0, Lm/g;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lm/g;-><init>(I)V

    iget-object v1, p0, Ld0/o;->c:Lm/r;

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    iget-object v1, p0, Ld0/o;->d:Lm/l;

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    iget-object v1, p0, Ld0/o;->q:Lm/l;

    if-eqz v1, :cond_17

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    :cond_17
    iget-object p0, p0, Ld0/o;->x:Ll0/b;

    if-eqz p0, :cond_26

    sget-object v1, Ld0/o;->y:Ll0/b;

    invoke-virtual {p0, v1}, Lm/n;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    invoke-virtual {v0, p0}, Lm/g;->a(Lm/f;)V

    :cond_26
    new-instance p0, Lm/a1;

    invoke-direct {p0, v0}, Lm/x;-><init>(Lm/g;)V

    const/4 v0, -0x1

    iput v0, p0, Lm/a1;->q:I

    return-object p0
.end method

.method public final i()Ljava/math/BigInteger;
    .registers 1

    iget-object p0, p0, Ld0/o;->q:Lm/l;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lm/l;->t()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public final j()Ll0/b;
    .registers 1

    iget-object p0, p0, Ld0/o;->x:Ll0/b;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    sget-object p0, Ld0/o;->y:Ll0/b;

    return-object p0
.end method

.method public final k()[B
    .registers 1

    iget-object p0, p0, Ld0/o;->c:Lm/r;

    iget-object p0, p0, Lm/r;->c:[B

    invoke-static {p0}, Lm4/d;->e([B)[B

    move-result-object p0

    return-object p0
.end method
