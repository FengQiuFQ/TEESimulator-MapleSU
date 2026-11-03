.class final Lmpl/HalProbe$Scan;
.super Ljava/lang/Object;
.source "HalProbe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmpl/HalProbe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Scan"
.end annotation


# instance fields
.field bytesRead:J

.field dirs:I

.field filesRead:I

.field filesSeen:I

.field matches:I

.field notes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field roots:[Ljava/lang/String;

.field startedNs:J

.field stopReason:Ljava/lang/String;

.field truncated:Z

.field visited:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1696
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmpl/HalProbe$1;)V
    .registers 2

    .line 1696
    invoke-direct {p0}, Lmpl/HalProbe$Scan;-><init>()V

    return-void
.end method


# virtual methods
.method note(Ljava/lang/String;)V
    .registers 4

    .line 1717
    iget-object v0, p0, Lmpl/HalProbe$Scan;->notes:Ljava/util/List;

    if-nez v0, :cond_b

    .line 1718
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmpl/HalProbe$Scan;->notes:Ljava/util/List;

    .line 1720
    :cond_b
    iget-object v0, p0, Lmpl/HalProbe$Scan;->notes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_1a

    .line 1721
    iget-object v0, p0, Lmpl/HalProbe$Scan;->notes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1a
    return-void
.end method

.method truncate(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    .line 1710
    iput-boolean v0, p0, Lmpl/HalProbe$Scan;->truncated:Z

    .line 1711
    iget-object v0, p0, Lmpl/HalProbe$Scan;->stopReason:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 1712
    iput-object p1, p0, Lmpl/HalProbe$Scan;->stopReason:Ljava/lang/String;

    :cond_9
    return-void
.end method
