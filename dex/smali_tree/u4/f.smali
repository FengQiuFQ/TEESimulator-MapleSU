.class public final Lu4/f;
.super Ljava/lang/Object;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# virtual methods
.method public final binderDied()V
    .registers 4

    sget-object v0, Lu4/g;->g:Landroid/content/pm/IPackageManager;

    instance-of v1, v0, Landroid/os/IBinder;

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    check-cast v0, Landroid/os/IBinder;

    goto :goto_b

    :cond_a
    move-object v0, v2

    :goto_b
    if-eqz v0, :cond_11

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_11
    sput-object v2, Lu4/g;->g:Landroid/content/pm/IPackageManager;

    sget-object p0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    const-string p0, "Package manager service died. Will try to reconnect."

    invoke-static {p0, v2}, Lx4/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
