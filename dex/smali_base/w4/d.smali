.class public abstract Lw4/d;
.super Ljava/lang/Object;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"


# static fields
.field public static final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static b:J

.field public static c:Landroid/content/Context;

.field public static d:Landroid/os/Handler;

.field public static final e:Lw4/a;

.field public static final f:Lw4/c;

# MPL-P0: bind 后是否已成功 register（10s 看门狗用）
.field public static g:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lw4/d;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v0, 0x3e8

    sput-wide v0, Lw4/d;->b:J

    new-instance v0, Lw4/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lw4/d;->e:Lw4/a;

    new-instance v0, Lw4/c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lw4/d;->f:Lw4/c;

    return-void
.end method

.method public static a()V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tencent.soter.soterserver.ISoterService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.tencent.soter.soterserver"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "setPackage(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_12
    sget-object v1, Lw4/d;->c:Landroid/content/Context;

    if-eqz v1, :cond_24

    sget-object v2, Lw4/d;->e:Lw4/a;

    sget-object v3, Lw4/d;->f:Lw4/c;

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;ILjava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_32

    :cond_24
    const-string v0, "context"

    invoke-static {v0}, Lkotlin/jvm/internal/i;->h(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
    :try_end_2b
    .catchall {:try_start_12 .. :try_end_2b} :catchall_2b

    :catchall_2b
    move-exception v0

    new-instance v1, La/d;

    invoke-direct {v1, v0}, La/d;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v1

    :goto_32
    invoke-static {v0}, La/e;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_39

    goto :goto_3d

    :cond_39
    const-string v0, "TEESimulator"

    const-string v2, "SOTER: bindService threw"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_3d
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_48

    const-string v1, "TEESimulator"

    const-string v2, "SOTER: bindService=true, watchdog 10s"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    const/4 v1, 0x0

    sput-boolean v1, Lw4/d;->g:Z

    sget-object v1, Lw4/d;->d:Landroid/os/Handler;

    new-instance v2, Lw4/b;

    # Runnable id 2 = 10s 看门狗（0=bind, 1=rebind 沿用原有语义）
    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lw4/b;-><init>(I)V

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    sget-object v0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    goto :goto_4d

    :cond_48
    const-string v1, "TEESimulator"

    const-string v2, "SOTER: bindService=false -> retry"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    sget-object v0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Lw4/d;->b()V

    :goto_4d
    return-void
.end method

.method public static b()V
    .registers 7

    const-string v0, "TEESimulator"

    const-string v1, "SOTER: schedule retry"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    sget-wide v0, Lw4/d;->b:J

    const/4 v2, 0x2

    int-to-long v2, v2

    mul-long/2addr v2, v0

    const-wide/16 v4, 0x7530

    cmp-long v6, v2, v4

    if-lez v6, :cond_c

    move-wide v2, v4

    :cond_c
    sput-wide v2, Lw4/d;->b:J

    sget-object v2, Lw4/d;->d:Landroid/os/Handler;

    if-eqz v2, :cond_1c

    new-instance v3, Lw4/b;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lw4/b;-><init>(I)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1c
    const-string v0, "handler"

    invoke-static {v0}, Lkotlin/jvm/internal/i;->h(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public static mplAppContext(Landroid/content/Context;)Landroid/content/Context;
    .registers 4

    :try_start_0
    const-string v0, "android"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    const-string v1, "TEESimulator"

    const-string v2, "SOTER: bind context = createPackageContext(android)"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "TEESimulator"

    const-string v2, "SOTER: createPackageContext(android) failed, keep system context"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p0
.end method

