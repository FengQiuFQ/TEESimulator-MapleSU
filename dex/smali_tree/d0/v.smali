.class public final Ld0/v;
.super Lm/n;


# static fields
.field public static final x:Ll0/b;

.field public static final y:Ll0/b;

.field public static final z1:Ll0/b;


# instance fields
.field public c:Ll0/b;

.field public d:Ll0/b;

.field public q:Ll0/b;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Ll0/b;

    sget-object v1, Ly1/b;->f:Lm/q;

    sget-object v2, Lm/v0;->d:Lm/v0;

    invoke-direct {v0, v1, v2}, Ll0/b;-><init>(Lm/q;Lm/f;)V

    sput-object v0, Ld0/v;->x:Ll0/b;

    new-instance v1, Ll0/b;

    sget-object v2, Ld0/r;->i:Lm/q;

    invoke-direct {v1, v2, v0}, Ll0/b;-><init>(Lm/q;Lm/f;)V

    sput-object v1, Ld0/v;->y:Ll0/b;

    new-instance v0, Ll0/b;

    sget-object v1, Ld0/r;->j:Lm/q;

    new-instance v2, Lm/x0;

    const/4 v3, 0x0

    new-array v3, v3, [B

    invoke-direct {v2, v3}, Lm/r;-><init>([B)V

    invoke-direct {v0, v1, v2}, Ll0/b;-><init>(Lm/q;Lm/f;)V

    sput-object v0, Ld0/v;->z1:Ll0/b;

    return-void
.end method

.method public constructor <init>(Ll0/b;Ll0/b;Ll0/b;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld0/v;->c:Ll0/b;

    iput-object p2, p0, Ld0/v;->d:Ll0/b;

    iput-object p3, p0, Ld0/v;->q:Ll0/b;

    return-void
.end method

.method public static h(Ljava/lang/Object;)Ld0/v;
    .registers 7

    instance-of v0, p0, Ld0/v;

    if-eqz v0, :cond_7

    check-cast p0, Ld0/v;

    return-object p0

    :cond_7
    if-eqz p0, :cond_61

    new-instance v0, Ld0/v;

    invoke-static {p0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Ld0/v;->x:Ll0/b;

    iput-object v1, v0, Ld0/v;->c:Ll0/b;

    sget-object v1, Ld0/v;->y:Ll0/b;

    iput-object v1, v0, Ld0/v;->d:Ll0/b;

    sget-object v1, Ld0/v;->z1:Ll0/b;

    iput-object v1, v0, Ld0/v;->q:Ll0/b;

    const/4 v1, 0x0

    :goto_1f
    invoke-virtual {p0}, Lm/x;->size()I

    move-result v2

    if-eq v1, v2, :cond_60

    invoke-virtual {p0, v1}, Lm/x;->v(I)Lm/f;

    move-result-object v2

    check-cast v2, Lm/a0;

    iget v3, v2, Lm/a0;->q:I

    const/4 v4, 0x1

    if-eqz v3, :cond_53

    if-eq v3, v4, :cond_48

    const/4 v5, 0x2

    if-ne v3, v5, :cond_40

    invoke-static {v2, v4}, Lm/x;->u(Lm/a0;Z)Lm/x;

    move-result-object v2

    invoke-static {v2}, Ll0/b;->h(Ljava/lang/Object;)Ll0/b;

    move-result-object v2

    iput-object v2, v0, Ld0/v;->q:Ll0/b;

    goto :goto_5d

    :cond_40
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown tag"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_48
    invoke-static {v2, v4}, Lm/x;->u(Lm/a0;Z)Lm/x;

    move-result-object v2

    invoke-static {v2}, Ll0/b;->h(Ljava/lang/Object;)Ll0/b;

    move-result-object v2

    iput-object v2, v0, Ld0/v;->d:Ll0/b;

    goto :goto_5d

    :cond_53
    invoke-static {v2, v4}, Lm/x;->u(Lm/a0;Z)Lm/x;

    move-result-object v2

    invoke-static {v2}, Ll0/b;->h(Ljava/lang/Object;)Ll0/b;

    move-result-object v2

    iput-object v2, v0, Ld0/v;->c:Ll0/b;

    :goto_5d
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :cond_60
    return-object v0

    :cond_61
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 7

    iget-object v0, p0, Ld0/v;->q:Ll0/b;

    iget-object v1, p0, Ld0/v;->d:Ll0/b;

    new-instance v2, Lm/g;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lm/g;-><init>(I)V

    iget-object p0, p0, Ld0/v;->c:Ll0/b;

    sget-object v3, Ld0/v;->x:Ll0/b;

    invoke-virtual {p0, v3}, Lm/n;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1e

    new-instance v3, Lm/d1;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, p0}, Lm/a0;-><init>(ZILm/f;)V

    invoke-virtual {v2, v3}, Lm/g;->a(Lm/f;)V

    :cond_1e
    sget-object p0, Ld0/v;->y:Ll0/b;

    invoke-virtual {v1, p0}, Lm/n;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2e

    new-instance p0, Lm/d1;

    invoke-direct {p0, v4, v4, v1}, Lm/a0;-><init>(ZILm/f;)V

    invoke-virtual {v2, p0}, Lm/g;->a(Lm/f;)V

    :cond_2e
    sget-object p0, Ld0/v;->z1:Ll0/b;

    invoke-virtual {v0, p0}, Lm/n;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3f

    new-instance p0, Lm/d1;

    const/4 v1, 0x2

    invoke-direct {p0, v4, v1, v0}, Lm/a0;-><init>(ZILm/f;)V

    invoke-virtual {v2, p0}, Lm/g;->a(Lm/f;)V

    :cond_3f
    new-instance p0, Lm/a1;

    invoke-direct {p0, v2}, Lm/x;-><init>(Lm/g;)V

    const/4 v0, -0x1

    iput v0, p0, Lm/a1;->q:I

    return-object p0
.end method
