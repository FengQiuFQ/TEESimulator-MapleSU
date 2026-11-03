.class public final synthetic Lw4/a;
.super Ljava/lang/Object;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"

# interfaces
.implements Ljava/util/concurrent/Executor;


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .registers 2

    sget-object p0, Lw4/d;->d:Landroid/os/Handler;

    if-eqz p0, :cond_8

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_8
    const-string p0, "handler"

    invoke-static {p0}, Lkotlin/jvm/internal/i;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
