.class final Lmpl/HalProbe$Sample;
.super Ljava/lang/Object;
.source "HalProbe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmpl/HalProbe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Sample"
.end annotation


# instance fields
.field certPem:Z

.field certs:I

.field certsNote:Ljava/lang/String;

.field counter:Ljava/lang/String;

.field cpuId:Ljava/lang/String;

.field firstCert:Ljava/lang/String;

.field mtimeMs:J

.field path:Ljava/lang/String;

.field pubKey32:Ljava/lang/String;

.field size:J

.field uid:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1682
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmpl/HalProbe$1;)V
    .registers 2

    .line 1682
    invoke-direct {p0}, Lmpl/HalProbe$Sample;-><init>()V

    return-void
.end method
