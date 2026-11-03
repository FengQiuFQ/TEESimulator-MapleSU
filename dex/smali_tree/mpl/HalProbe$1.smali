.class Lmpl/HalProbe$1;
.super Ljava/lang/Object;
.source "HalProbe.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmpl/HalProbe;->runAtStartup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 200
    const-string v0, "daemon"

    # invokes: Lmpl/HalProbe;->execute(Ljava/lang/String;)Z
    invoke-static {v0}, Lmpl/HalProbe;->access$000(Ljava/lang/String;)Z

    return-void
.end method
