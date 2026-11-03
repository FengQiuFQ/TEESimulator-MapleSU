.class public final synthetic Lw4/b;
.super Ljava/lang/Object;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lw4/b;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget p0, p0, Lw4/b;->c:I

    packed-switch p0, :pswitch_data_1e

    # id 1 = rebind（原有语义：先 unbindService 再 bind）
    :pswitch_rebind
    :try_start_5
    sget-object p0, Lw4/d;->c:Landroid/content/Context;

    if-eqz p0, :cond_f

    sget-object v0, Lw4/d;->f:Lw4/c;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_16

    :cond_f
    const-string p0, "context"

    invoke-static {p0}, Lkotlin/jvm/internal/i;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_16

    :catchall_16
    :goto_16
    invoke-static {}, Lw4/d;->a()V

    return-void

    :pswitch_1a
    invoke-static {}, Lw4/d;->a()V

    return-void

    :pswitch_wd
    sget-boolean v0, Lw4/d;->g:Z

    if-nez v0, :mpl_wd_ok

    const-string v0, "TEESimulator"

    const-string v1, "SOTER: watchdog 10s, not mounted -> retry"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {}, Lw4/d;->b()V

    return-void

    :mpl_wd_ok
    const-string v0, "TEESimulator"

    const-string v1, "SOTER: watchdog ok (mounted)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    return-void

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_rebind
        :pswitch_wd
    .end packed-switch
.end method
