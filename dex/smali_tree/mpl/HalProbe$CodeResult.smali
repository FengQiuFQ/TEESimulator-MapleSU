.class final Lmpl/HalProbe$CodeResult;
.super Ljava/lang/Object;
.source "HalProbe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmpl/HalProbe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CodeResult"
.end annotation


# instance fields
.field code:I

.field dataSize:I

.field elapsedMs:J

.field exception:Ljava/lang/String;

.field hex:Ljava/lang/String;

.field ints:[I

.field ok:Z

.field timeout:Z

.field variant:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1670
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmpl/HalProbe$1;)V
    .registers 2

    .line 1670
    invoke-direct {p0}, Lmpl/HalProbe$CodeResult;-><init>()V

    return-void
.end method
