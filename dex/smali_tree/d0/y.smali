.class public final Ld0/y;
.super Lm/n;


# static fields
.field public static final A1:Lm/l;

.field public static final B1:Lm/l;

.field public static final y:Ll0/b;

.field public static final z1:Ll0/b;


# instance fields
.field public c:Ll0/b;

.field public d:Ll0/b;

.field public q:Lm/l;

.field public x:Lm/l;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ll0/b;

    sget-object v1, Ly1/b;->f:Lm/q;

    sget-object v2, Lm/v0;->d:Lm/v0;

    invoke-direct {v0, v1, v2}, Ll0/b;-><init>(Lm/q;Lm/f;)V

    sput-object v0, Ld0/y;->y:Ll0/b;

    new-instance v1, Ll0/b;

    sget-object v2, Ld0/r;->i:Lm/q;

    invoke-direct {v1, v2, v0}, Ll0/b;-><init>(Lm/q;Lm/f;)V

    sput-object v1, Ld0/y;->z1:Ll0/b;

    new-instance v0, Lm/l;

    const-wide/16 v1, 0x14

    invoke-direct {v0, v1, v2}, Lm/l;-><init>(J)V

    sput-object v0, Ld0/y;->A1:Lm/l;

    new-instance v0, Lm/l;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Lm/l;-><init>(J)V

    sput-object v0, Ld0/y;->B1:Lm/l;

    return-void
.end method

.method public constructor <init>(Ll0/b;Ll0/b;Lm/l;Lm/l;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld0/y;->c:Ll0/b;

    iput-object p2, p0, Ld0/y;->d:Ll0/b;

    iput-object p3, p0, Ld0/y;->q:Lm/l;

    iput-object p4, p0, Ld0/y;->x:Lm/l;

    return-void
.end method

.method public static h(Ljava/lang/Object;)Ld0/y;
    .registers 8

    instance-of v0, p0, Ld0/y;

    if-eqz v0, :cond_7

    check-cast p0, Ld0/y;

    return-object p0

    :cond_7
    if-eqz p0, :cond_83

    new-instance v0, Ld0/y;

    invoke-static {p0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Ld0/y;->y:Ll0/b;

    iput-object v1, v0, Ld0/y;->c:Ll0/b;

    sget-object v1, Ld0/y;->z1:Ll0/b;

    iput-object v1, v0, Ld0/y;->d:Ll0/b;

    sget-object v1, Ld0/y;->A1:Lm/l;

    iput-object v1, v0, Ld0/y;->q:Lm/l;

    sget-object v1, Ld0/y;->B1:Lm/l;

    iput-object v1, v0, Ld0/y;->x:Lm/l;

    const/4 v1, 0x0

    :goto_23
    invoke-virtual {p0}, Lm/x;->size()I

    move-result v2

    if-eq v1, v2, :cond_82

    invoke-virtual {p0, v1}, Lm/x;->v(I)Lm/f;

    move-result-object v2

    check-cast v2, Lm/a0;

    iget v3, v2, Lm/a0;->q:I

    sget-object v4, Lm/x;->d:Lm/a;

    const/4 v5, 0x1

    if-eqz v3, :cond_73

    if-eq v3, v5, :cond_66

    const/4 v4, 0x2

    sget-object v6, Lm/l;->q:Lm/a;

    if-eq v3, v4, :cond_57

    const/4 v4, 0x3

    if-ne v3, v4, :cond_4f

    invoke-static {v2}, Lq4/k;->v(Lm/a0;)V

    invoke-virtual {v2, v5, v6}, Lm/a0;->t(ZLm/a;)Lm/u;

    move-result-object v2

    invoke-virtual {v6, v2}, Lm/a;->a(Lm/u;)V

    check-cast v2, Lm/l;

    iput-object v2, v0, Ld0/y;->x:Lm/l;

    goto :goto_7f

    :cond_4f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown tag"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_57
    invoke-static {v2}, Lq4/k;->v(Lm/a0;)V

    invoke-virtual {v2, v5, v6}, Lm/a0;->t(ZLm/a;)Lm/u;

    move-result-object v2

    invoke-virtual {v6, v2}, Lm/a;->a(Lm/u;)V

    check-cast v2, Lm/l;

    iput-object v2, v0, Ld0/y;->q:Lm/l;

    goto :goto_7f

    :cond_66
    invoke-virtual {v4, v2, v5}, Lm/a;->d(Lm/a0;Z)Lm/u;

    move-result-object v2

    check-cast v2, Lm/x;

    invoke-static {v2}, Ll0/b;->h(Ljava/lang/Object;)Ll0/b;

    move-result-object v2

    iput-object v2, v0, Ld0/y;->d:Ll0/b;

    goto :goto_7f

    :cond_73
    invoke-virtual {v4, v2, v5}, Lm/a;->d(Lm/a0;Z)Lm/u;

    move-result-object v2

    check-cast v2, Lm/x;

    invoke-static {v2}, Ll0/b;->h(Ljava/lang/Object;)Ll0/b;

    move-result-object v2

    iput-object v2, v0, Ld0/y;->c:Ll0/b;

    :goto_7f
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    :cond_82
    return-object v0

    :cond_83
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 8

    iget-object v0, p0, Ld0/y;->x:Lm/l;

    iget-object v1, p0, Ld0/y;->q:Lm/l;

    iget-object v2, p0, Ld0/y;->d:Ll0/b;

    new-instance v3, Lm/g;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Lm/g;-><init>(I)V

    iget-object p0, p0, Ld0/y;->c:Ll0/b;

    sget-object v4, Ld0/y;->y:Ll0/b;

    invoke-virtual {p0, v4}, Lm/n;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_20

    new-instance v4, Lm/d1;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6, p0}, Lm/a0;-><init>(ZILm/f;)V

    invoke-virtual {v3, v4}, Lm/g;->a(Lm/f;)V

    :cond_20
    sget-object p0, Ld0/y;->z1:Ll0/b;

    invoke-virtual {v2, p0}, Lm/n;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_30

    new-instance p0, Lm/d1;

    invoke-direct {p0, v5, v5, v2}, Lm/a0;-><init>(ZILm/f;)V

    invoke-virtual {v3, p0}, Lm/g;->a(Lm/f;)V

    :cond_30
    sget-object p0, Ld0/y;->A1:Lm/l;

    invoke-virtual {v1, p0}, Lm/u;->n(Lm/u;)Z

    move-result p0

    if-nez p0, :cond_41

    new-instance p0, Lm/d1;

    const/4 v2, 0x2

    invoke-direct {p0, v5, v2, v1}, Lm/a0;-><init>(ZILm/f;)V

    invoke-virtual {v3, p0}, Lm/g;->a(Lm/f;)V

    :cond_41
    sget-object p0, Ld0/y;->B1:Lm/l;

    invoke-virtual {v0, p0}, Lm/u;->n(Lm/u;)Z

    move-result p0

    if-nez p0, :cond_52

    new-instance p0, Lm/d1;

    const/4 v1, 0x3

    invoke-direct {p0, v5, v1, v0}, Lm/a0;-><init>(ZILm/f;)V

    invoke-virtual {v3, p0}, Lm/g;->a(Lm/f;)V

    :cond_52
    new-instance p0, Lm/a1;

    invoke-direct {p0, v3}, Lm/x;-><init>(Lm/g;)V

    const/4 v0, -0x1

    iput v0, p0, Lm/a1;->q:I

    return-object p0
.end method
