.class final Lmpl/SoterSvc$Args;
.super Ljava/lang/Object;
.source "SoterSvc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmpl/SoterSvc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Args"
.end annotation


# instance fields
.field alias:Ljava/lang/String;

.field error:Ljava/lang/String;

.field uid:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 193
    iput v0, p0, Lmpl/SoterSvc$Args;->uid:I

    return-void
.end method

.method synthetic constructor <init>(Lmpl/SoterSvc$1;)V
    .registers 2

    .line 192
    invoke-direct {p0}, Lmpl/SoterSvc$Args;-><init>()V

    return-void
.end method


# virtual methods
.method uid()I
    .registers 2

    .line 198
    iget v0, p0, Lmpl/SoterSvc$Args;->uid:I

    if-lez v0, :cond_5

    return v0

    :cond_5
    invoke-static {}, Lmpl/SoterSvc;->callerUid()I

    move-result v0

    return v0
.end method
