.class Lmpl/HalProbe$3;
.super Ljava/lang/Object;
.source "HalProbe.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmpl/HalProbe;->transact(Landroid/os/IBinder;Ljava/lang/String;IZ)Lmpl/HalProbe$CodeResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lmpl/HalProbe$CodeResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$binder:Landroid/os/IBinder;

.field final synthetic val$code:I

.field final synthetic val$descriptor:Ljava/lang/String;

.field final synthetic val$variant:Ljava/lang/String;

.field final synthetic val$withInt:Z


# direct methods
.method constructor <init>(Landroid/os/IBinder;Ljava/lang/String;IZLjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 514
    iput-object p1, p0, Lmpl/HalProbe$3;->val$binder:Landroid/os/IBinder;

    iput-object p2, p0, Lmpl/HalProbe$3;->val$descriptor:Ljava/lang/String;

    iput p3, p0, Lmpl/HalProbe$3;->val$code:I

    iput-boolean p4, p0, Lmpl/HalProbe$3;->val$withInt:Z

    iput-object p5, p0, Lmpl/HalProbe$3;->val$variant:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 514
    invoke-virtual {p0}, Lmpl/HalProbe$3;->call()Lmpl/HalProbe$CodeResult;

    move-result-object v0

    return-object v0
.end method

.method public call()Lmpl/HalProbe$CodeResult;
    .registers 6

    .line 517
    iget-object v0, p0, Lmpl/HalProbe$3;->val$binder:Landroid/os/IBinder;

    iget-object v1, p0, Lmpl/HalProbe$3;->val$descriptor:Ljava/lang/String;

    iget v2, p0, Lmpl/HalProbe$3;->val$code:I

    iget-boolean v3, p0, Lmpl/HalProbe$3;->val$withInt:Z

    iget-object v4, p0, Lmpl/HalProbe$3;->val$variant:Ljava/lang/String;

    # invokes: Lmpl/HalProbe;->transactBlocking(Landroid/os/IBinder;Ljava/lang/String;IZLjava/lang/String;)Lmpl/HalProbe$CodeResult;
    invoke-static {v0, v1, v2, v3, v4}, Lmpl/HalProbe;->access$500(Landroid/os/IBinder;Ljava/lang/String;IZLjava/lang/String;)Lmpl/HalProbe$CodeResult;

    move-result-object v0

    return-object v0
.end method
