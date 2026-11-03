.class final Lmpl/SoterSvc$Session;
.super Ljava/lang/Object;
.source "SoterSvc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmpl/SoterSvc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Session"
.end annotation


# instance fields
.field final alias:Ljava/lang/String;

.field final binderUid:I

.field final challenge:[B

.field final expiresAt:J

.field final uid:I

.field volatile used:Z


# direct methods
.method constructor <init>(IILjava/lang/String;[BJ)V
    .registers 7

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput p1, p0, Lmpl/SoterSvc$Session;->uid:I

    .line 99
    iput p2, p0, Lmpl/SoterSvc$Session;->binderUid:I

    .line 100
    iput-object p3, p0, Lmpl/SoterSvc$Session;->alias:Ljava/lang/String;

    .line 101
    iput-object p4, p0, Lmpl/SoterSvc$Session;->challenge:[B

    .line 102
    iput-wide p5, p0, Lmpl/SoterSvc$Session;->expiresAt:J

    return-void
.end method
