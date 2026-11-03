.class Lmpl/SoterSocket$1;
.super Ljava/lang/Object;
.source "SoterSocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmpl/SoterSocket;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$token:J


# direct methods
.method constructor <init>(J)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 139
    iput-wide p1, p0, Lmpl/SoterSocket$1;->val$token:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 142
    iget-wide v0, p0, Lmpl/SoterSocket$1;->val$token:J

    # invokes: Lmpl/SoterSocket;->loop(J)V
    invoke-static {v0, v1}, Lmpl/SoterSocket;->access$000(J)V

    return-void
.end method
