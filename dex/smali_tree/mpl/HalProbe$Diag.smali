.class final Lmpl/HalProbe$Diag;
.super Ljava/lang/Object;
.source "HalProbe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmpl/HalProbe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Diag"
.end annotation


# instance fields
.field binder:[Ljava/lang/String;

.field binderExists:[Z

.field error:Ljava/lang/String;

.field halPidFound:I

.field halPidRequested:I

.field halPidUsed:I

.field mapsBytes:J

.field mapsError:Ljava/lang/String;

.field mapsExists:Z

.field mapsFirstLines:[Ljava/lang/String;

.field mapsHasQsee:Z

.field mapsHasSoter:Z

.field mapsHasSpss:Z

.field mapsLines:I

.field mapsPath:Ljava/lang/String;

.field mapsReadable:Z

.field mapsSize:J

.field mapsTruncated:Z

.field qseeCanRead:Z

.field qseeError:Ljava/lang/String;

.field qseeExists:Z

.field qseeOpened:Z

.field qseePath:Ljava/lang/String;

.field trickyStoreListing:[Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1726
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmpl/HalProbe$1;)V
    .registers 2

    .line 1726
    invoke-direct {p0}, Lmpl/HalProbe$Diag;-><init>()V

    return-void
.end method
