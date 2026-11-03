.class final Lmpl/SoterPolicy$Snapshot;
.super Ljava/lang/Object;
.source "SoterPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmpl/SoterPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Snapshot"
.end annotation


# instance fields
.field final all:Z

.field final mtime:J

.field final path:Ljava/lang/String;

.field final size:J

.field final stamp:J

.field final uids:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;JJLjava/util/Set;ZJ)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;ZJ)V"
        }
    .end annotation

    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 435
    iput-object p1, p0, Lmpl/SoterPolicy$Snapshot;->path:Ljava/lang/String;

    .line 436
    iput-wide p2, p0, Lmpl/SoterPolicy$Snapshot;->mtime:J

    .line 437
    iput-wide p4, p0, Lmpl/SoterPolicy$Snapshot;->size:J

    .line 438
    iput-object p6, p0, Lmpl/SoterPolicy$Snapshot;->uids:Ljava/util/Set;

    .line 439
    iput-boolean p7, p0, Lmpl/SoterPolicy$Snapshot;->all:Z

    .line 440
    iput-wide p8, p0, Lmpl/SoterPolicy$Snapshot;->stamp:J

    return-void
.end method
