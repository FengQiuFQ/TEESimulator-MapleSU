.class public final Lw4/c;
.super Ljava/lang/Object;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"

# interfaces
.implements Landroid/content/ServiceConnection;


# virtual methods
.method public final onBindingDied(Landroid/content/ComponentName;)V
    .registers 2

    sget-object p0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Lw4/d;->b()V

    return-void
.end method

.method public final onNullBinding(Landroid/content/ComponentName;)V
    .registers 2

    sget-object p0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Lw4/d;->b()V

    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7

    # MPL-P0 可观测性：SOTER 线程每个阶段一行 Log，排障不再靠猜
    const-string v0, "TEESimulator"

    const-string v1, "SOTER: onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    if-eqz p2, :mpl_binder_null

    sget-object p0, Lw4/d;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object p0, Lv4/g;->Companion:Lv4/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lv4/a;->a(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object p0

    if-nez p0, :cond_5a

    :try_start_11
    const-string v0, "TEESimulator"

    const-string v1, "SOTER: backdoor=null -> inject"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    const-string p1, "/system/bin/sh"

    const-string v0, "-c"

    # MPL-P0: 自解析 pid（/proc/*/cmdline，必须恰好 1 个）+ 绝对 .so 路径 +
    #         注入前解冻 cached-app freezer（否则 ptrace attach 会永远等不到 SIGSTOP 停止）
    const-string v1, "L=/data/local/tmp/soter_inject.log;core=$(pwd);pids=;for f in /proc/[0-9]*/cmdline;do n=$(tr '\\0' '\\n' <\"$f\" 2>/dev/null|head -n1);[ \"$n\" = com.tencent.soter.soterserver ]||continue;p=${f#/proc/};pids=\"$pids ${p%/cmdline}\";done;set -- $pids;echo \"[soter] core=$core pid_count=$# pid=${1:-none}\" >$L;[ $# -eq 1 ]||{ echo \"[soter] abort: expected exactly 1 soterserver pid\" >>$L;exit 97;};cg=$(awk -F: '$1==0{print $3}' /proc/$1/cgroup);fz=/sys/fs/cgroup$cg/cgroup.freeze;echo \"[soter] cgroup=$cg frozen=$(cat $fz 2>/dev/null)\" >>$L;[ -n \"$cg\" ] && echo 0 >$fz 2>/dev/null;kill -CONT $1 2>/dev/null;sleep 0.2;\"$core/inject\" \"$1\" \"$core/libTEESimulator.so\" entry >>$L 2>&1;rc=$?;echo \"[soter] inject rc=$rc\" >>$L;exit $rc"

    filled-new-array {p1, v0, v1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Process;->waitFor()I

    move-result p0

    if-nez p0, :cond_2b

    const-string v0, "TEESimulator"

    const-string v1, "SOTER: inject rc=0"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    const/4 p0, 0x1

    goto :goto_2c

    :cond_2b
    const-string v0, "TEESimulator"

    const-string v1, "SOTER: inject rc!=0, see /data/local/tmp/soter_inject.log"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    const/4 p0, 0x0

    :goto_2c
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_30
    .catchall {:try_start_11 .. :try_end_30} :catchall_31

    goto :goto_38

    :catchall_31
    move-exception p0

    new-instance p1, La/d;

    invoke-direct {p1, p0}, La/d;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :goto_38
    invoke-static {p0}, La/e;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_3f

    goto :goto_43

    :cond_3f
    sget-object p0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_43
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_51

    sget-object p0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Lw4/d;->b()V

    goto :goto_80

    :cond_51
    sget-object p0, Lv4/g;->Companion:Lv4/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lv4/a;->a(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object p0

    :cond_5a
    if-nez p0, :cond_62

    const-string v0, "TEESimulator"

    const-string v1, "SOTER: backdoor still null after inject -> retry"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    sget-object p0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Lw4/d;->b()V

    goto :goto_80

    :cond_62
    sget-object p1, Lv4/g;->Companion:Lv4/a;

    sget-object v0, Lw4/e;->a:Lw4/e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lw4/e;->c:[I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p2, v0, v1}, Lv4/a;->b(Landroid/os/IBinder;Landroid/os/IBinder;Lv4/g;[I)Z

    move-result p0

    if-nez p0, :cond_7a

    const-string v0, "TEESimulator"

    const-string v1, "SOTER: register failed -> retry"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    sget-object p0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Lw4/d;->b()V

    goto :goto_80

    :cond_7a
    const-wide/16 p0, 0x3e8

    sput-wide p0, Lw4/d;->b:J

    const-string v0, "TEESimulator"

    const-string v1, "SOTER: registered, mounted=true, backoff reset"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    const/4 v0, 0x1

    sput-boolean v0, Lw4/d;->g:Z

    sget-object p0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    :cond_80
    :goto_80
    return-void

    :mpl_binder_null
    const-string v0, "TEESimulator"

    const-string v1, "SOTER: binder=null, no ISoterService binder returned"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    goto :cond_80
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    sget-object p0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Lw4/d;->b()V

    return-void
.end method
