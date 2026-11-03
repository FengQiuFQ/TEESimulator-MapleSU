.class public final Lk2/m;
.super Ljava/lang/Object;

# interfaces
.implements Lk2/u;


# instance fields
.field public final synthetic g:Z

.field public final synthetic h:Z

.field public final synthetic i:Lk2/p;


# direct methods
.method public constructor <init>(Lk2/p;ZZ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lk2/m;->g:Z

    iput-boolean p3, p0, Lk2/m;->h:Z

    iput-object p1, p0, Lk2/m;->i:Lk2/p;

    return-void
.end method


# virtual methods
.method public final a(Lk2/v;)Lk2/v;
    .registers 5

    instance-of v0, p1, Lk2/y;

    if-eqz v0, :cond_7

    check-cast p1, Lk2/y;

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    if-nez p1, :cond_16

    new-instance p1, Lk2/y;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p1, Lk2/y;->a:Z

    iput-boolean v0, p1, Lk2/y;->b:Z

    iput-boolean v0, p1, Lk2/y;->c:Z

    :cond_16
    iget-boolean v0, p1, Lk2/y;->a:Z

    if-eqz v0, :cond_1b

    goto :goto_44

    :cond_1b
    iget-boolean v0, p1, Lk2/y;->b:Z

    iget-object v1, p0, Lk2/m;->i:Lk2/p;

    const/4 v2, 0x1

    if-nez v0, :cond_31

    iget-boolean v0, p0, Lk2/m;->g:Z

    if-nez v0, :cond_2f

    invoke-virtual {v1}, Lk2/p;->r()Z

    move-result v0

    if-nez v0, :cond_2f

    iput-boolean v2, p1, Lk2/y;->a:Z

    return-object p1

    :cond_2f
    iput-boolean v2, p1, Lk2/y;->b:Z

    :cond_31
    iget-boolean p0, p0, Lk2/m;->h:Z

    if-eqz p0, :cond_44

    iget-boolean p0, p1, Lk2/y;->c:Z

    if-nez p0, :cond_44

    invoke-virtual {v1}, Lk2/p;->s()Z

    move-result p0

    if-nez p0, :cond_42

    iput-boolean v2, p1, Lk2/y;->a:Z

    return-object p1

    :cond_42
    iput-boolean v2, p1, Lk2/y;->c:Z

    :cond_44
    :goto_44
    return-object p1
.end method
