.class Lmpl/SoterBridge$5;
.super Ljava/lang/Object;
.source "SoterBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmpl/SoterBridge;->probeOnce(Landroid/os/IBinder;)[I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$service:Landroid/os/IBinder;

.field final synthetic val$value:[I

.field final synthetic val$why:[Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/os/IBinder;[I[Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 533
    iput-object p1, p0, Lmpl/SoterBridge$5;->val$service:Landroid/os/IBinder;

    iput-object p2, p0, Lmpl/SoterBridge$5;->val$value:[I

    iput-object p3, p0, Lmpl/SoterBridge$5;->val$why:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 536
    iget-object v0, p0, Lmpl/SoterBridge$5;->val$service:Landroid/os/IBinder;

    iget-object v1, p0, Lmpl/SoterBridge$5;->val$value:[I

    iget-object v2, p0, Lmpl/SoterBridge$5;->val$why:[Ljava/lang/String;

    # invokes: Lmpl/SoterBridge;->transactProbe(Landroid/os/IBinder;[I[Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lmpl/SoterBridge;->access$600(Landroid/os/IBinder;[I[Ljava/lang/String;)V

    return-void
.end method
