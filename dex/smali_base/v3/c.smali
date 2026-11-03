.class public final Lv3/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field public c:Lv3/s;

.field public final d:I

.field public q:I

.field public x:I

.field public y:Z

.field public z1:Z


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lv3/c;->d:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lv3/c;->y:Z

    iput-boolean p1, p0, Lv3/c;->z1:Z

    return-void
.end method


# virtual methods
.method public final b()Lv3/c;
    .registers 3

    new-instance v0, Lv3/c;

    iget v1, p0, Lv3/c;->d:I

    invoke-direct {v0, v1}, Lv3/c;-><init>(I)V

    iget-object v1, p0, Lv3/c;->c:Lv3/s;

    iput-object v1, v0, Lv3/c;->c:Lv3/s;

    iget v1, p0, Lv3/c;->q:I

    iput v1, v0, Lv3/c;->q:I

    iget v1, p0, Lv3/c;->x:I

    iput v1, v0, Lv3/c;->x:I

    iget-boolean v1, p0, Lv3/c;->y:Z

    iput-boolean v1, v0, Lv3/c;->y:Z

    iget-boolean p0, p0, Lv3/c;->z1:Z

    iput-boolean p0, v0, Lv3/c;->z1:Z

    return-object v0
.end method

.method public final c()I
    .registers 2

    iget-boolean v0, p0, Lv3/c;->y:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lv3/c;->z1:Z

    if-eqz v0, :cond_9

    goto :goto_c

    :cond_9
    iget p0, p0, Lv3/c;->q:I

    return p0

    :cond_c
    :goto_c
    const p0, 0x7fffffff

    return p0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lv3/c;->b()Lv3/c;

    move-result-object p0

    return-object p0
.end method
