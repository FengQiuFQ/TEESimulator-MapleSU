.class public final Lb0/m;
.super Lm/n;


# static fields
.field public static final x:Lm/l;


# instance fields
.field public final c:Lm/l;

.field public final d:Lm/a1;

.field public final q:Ll0/w;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lm/l;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lm/l;-><init>(J)V

    sput-object v0, Lb0/m;->x:Lm/l;

    return-void
.end method

.method public constructor <init>(Lm/a1;Ll0/w;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lb0/m;->x:Lm/l;

    iput-object v0, p0, Lb0/m;->c:Lm/l;

    iput-object p1, p0, Lb0/m;->d:Lm/a1;

    iput-object p2, p0, Lb0/m;->q:Ll0/w;

    return-void
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 6

    new-instance v0, Lm/g;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lm/g;-><init>(I)V

    sget-object v1, Lb0/m;->x:Lm/l;

    iget-object v2, p0, Lb0/m;->c:Lm/l;

    invoke-virtual {v2, v1}, Lm/u;->n(Lm/u;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_12

    goto :goto_1b

    :cond_12
    new-instance v1, Lm/d1;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v2}, Lm/a0;-><init>(ZILm/f;)V

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    :goto_1b
    iget-object v1, p0, Lb0/m;->d:Lm/a1;

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    iget-object p0, p0, Lb0/m;->q:Ll0/w;

    if-eqz p0, :cond_2d

    new-instance v1, Lm/d1;

    const/4 v2, 0x2

    invoke-direct {v1, v3, v2, p0}, Lm/a0;-><init>(ZILm/f;)V

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    :cond_2d
    new-instance p0, Lm/a1;

    invoke-direct {p0, v0}, Lm/x;-><init>(Lm/g;)V

    const/4 v0, -0x1

    iput v0, p0, Lm/a1;->q:I

    return-object p0
.end method
