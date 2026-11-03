.class final Lmpl/HalProbe$Hal;
.super Ljava/lang/Object;
.source "HalProbe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmpl/HalProbe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Hal"
.end annotation


# instance fields
.field alive:Z

.field aliveError:Ljava/lang/String;

.field binder:Landroid/os/IBinder;

.field codes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmpl/HalProbe$CodeResult;",
            ">;"
        }
    .end annotation
.end field

.field descriptor:Ljava/lang/String;

.field descriptorError:Ljava/lang/String;

.field descriptorNote:Ljava/lang/String;

.field error:Ljava/lang/String;

.field found:Z

.field listError:Ljava/lang/String;

.field listSource:Ljava/lang/String;

.field listed:Z

.field lookup:Ljava/lang/String;

.field lookupMs:J

.field name:Ljava/lang/String;

.field ping:Z

.field pingError:Ljava/lang/String;

.field serviceCount:I

.field truncated:Z

.field truncatedReason:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1647
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmpl/HalProbe$1;)V
    .registers 2

    .line 1647
    invoke-direct {p0}, Lmpl/HalProbe$Hal;-><init>()V

    return-void
.end method
