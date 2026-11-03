.class public final La/f;
.super Ljava/lang/Object;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"

# interfaces
.implements La/a;
.implements Ljava/io/Serializable;


# instance fields
.field public c:Lh/a;

.field public volatile d:Ljava/lang/Object;

.field public final q:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lh/a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/f;->c:Lh/a;

    sget-object p1, La/g;->a:La/g;

    iput-object p1, p0, La/f;->d:Ljava/lang/Object;

    iput-object p0, p0, La/f;->q:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, La/f;->d:Ljava/lang/Object;

    sget-object v1, La/g;->a:La/g;

    if-eq v0, v1, :cond_7

    return-object v0

    :cond_7
    iget-object v0, p0, La/f;->q:Ljava/lang/Object;

    monitor-enter v0

    :try_start_a
    iget-object v2, p0, La/f;->d:Ljava/lang/Object;

    if-eq v2, v1, :cond_f

    goto :goto_1d

    :cond_f
    iget-object v1, p0, La/f;->c:Lh/a;

    invoke-static {v1}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    invoke-interface {v1}, Lh/a;->a()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, La/f;->d:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, La/f;->c:Lh/a;
    :try_end_1d
    .catchall {:try_start_a .. :try_end_1d} :catchall_1f

    :goto_1d
    monitor-exit v0

    return-object v2

    :catchall_1f
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, La/f;->d:Ljava/lang/Object;

    sget-object v1, La/g;->a:La/g;

    if-eq v0, v1, :cond_f

    invoke-virtual {p0}, La/f;->a()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f
    const-string p0, "Lazy value not initialized yet."

    return-object p0
.end method
