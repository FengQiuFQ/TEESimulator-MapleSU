.class Lmpl/SoterBridge$2;
.super Ljava/lang/Object;
.source "SoterBridge.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmpl/SoterBridge;->ensureBound()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .registers 2

    const/4 p1, 0x0

    .line 243
    # setter for: Lmpl/SoterBridge;->boundService:Landroid/os/IBinder;
    invoke-static {p1}, Lmpl/SoterBridge;->access$202(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 244
    const-string p1, "binding died"

    # setter for: Lmpl/SoterBridge;->bindNote:Ljava/lang/String;
    invoke-static {p1}, Lmpl/SoterBridge;->access$302(Ljava/lang/String;)Ljava/lang/String;

    .line 245
    const-string p1, "direct bind died"

    # invokes: Lmpl/SoterBridge;->journal(Ljava/lang/String;)V
    invoke-static {p1}, Lmpl/SoterBridge;->access$400(Ljava/lang/String;)V

    return-void
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .registers 2

    const/4 p1, 0x0

    .line 250
    # setter for: Lmpl/SoterBridge;->boundService:Landroid/os/IBinder;
    invoke-static {p1}, Lmpl/SoterBridge;->access$202(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 251
    const-string p1, "null binding"

    # setter for: Lmpl/SoterBridge;->bindNote:Ljava/lang/String;
    invoke-static {p1}, Lmpl/SoterBridge;->access$302(Ljava/lang/String;)Ljava/lang/String;

    .line 252
    const-string p1, "direct bind returned null"

    # invokes: Lmpl/SoterBridge;->journal(Ljava/lang/String;)V
    invoke-static {p1}, Lmpl/SoterBridge;->access$400(Ljava/lang/String;)V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    .line 229
    # setter for: Lmpl/SoterBridge;->boundService:Landroid/os/IBinder;
    invoke-static {p2}, Lmpl/SoterBridge;->access$202(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 230
    const-string p2, "connected"

    # setter for: Lmpl/SoterBridge;->bindNote:Ljava/lang/String;
    invoke-static {p2}, Lmpl/SoterBridge;->access$302(Ljava/lang/String;)Ljava/lang/String;

    .line 231
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "direct bind connected name="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    # invokes: Lmpl/SoterBridge;->journal(Ljava/lang/String;)V
    invoke-static {p1}, Lmpl/SoterBridge;->access$400(Ljava/lang/String;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    const/4 p1, 0x0

    .line 236
    # setter for: Lmpl/SoterBridge;->boundService:Landroid/os/IBinder;
    invoke-static {p1}, Lmpl/SoterBridge;->access$202(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 237
    const-string p1, "disconnected"

    # setter for: Lmpl/SoterBridge;->bindNote:Ljava/lang/String;
    invoke-static {p1}, Lmpl/SoterBridge;->access$302(Ljava/lang/String;)Ljava/lang/String;

    .line 238
    const-string p1, "direct bind disconnected (service died)"

    # invokes: Lmpl/SoterBridge;->journal(Ljava/lang/String;)V
    invoke-static {p1}, Lmpl/SoterBridge;->access$400(Ljava/lang/String;)V

    return-void
.end method
