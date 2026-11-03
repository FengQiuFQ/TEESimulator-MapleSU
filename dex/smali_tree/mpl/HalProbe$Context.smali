.class final Lmpl/HalProbe$Context;
.super Ljava/lang/Object;
.source "HalProbe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmpl/HalProbe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Context"
.end annotation


# instance fields
.field device:Ljava/lang/String;

.field fingerprint:Ljava/lang/String;

.field mode:Ljava/lang/String;

.field model:Ljava/lang/String;

.field pid:I

.field release:Ljava/lang/String;

.field sdk:I

.field selinux:Ljava/lang/String;

.field status:[Ljava/lang/String;

.field switchExisted:Z

.field uid:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1633
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmpl/HalProbe$1;)V
    .registers 2

    .line 1633
    invoke-direct {p0}, Lmpl/HalProbe$Context;-><init>()V

    return-void
.end method
