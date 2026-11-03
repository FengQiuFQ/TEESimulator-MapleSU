.class public final Lmpl/SoterResult;
.super Ljava/lang/Object;
.source "SoterResult.java"


# instance fields
.field public data:[B

.field public rc:I

.field public session:J


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    new-array v0, v0, [B

    iput-object v0, p0, Lmpl/SoterResult;->data:[B

    return-void
.end method

.method public static of(I[B)Lmpl/SoterResult;
    .registers 3

    .line 37
    new-instance v0, Lmpl/SoterResult;

    invoke-direct {v0}, Lmpl/SoterResult;-><init>()V

    .line 38
    iput p0, v0, Lmpl/SoterResult;->rc:I

    if-nez p1, :cond_c

    const/4 p0, 0x0

    .line 39
    new-array p1, p0, [B

    :cond_c
    iput-object p1, v0, Lmpl/SoterResult;->data:[B

    return-object v0
.end method

.method public static session(JI)Lmpl/SoterResult;
    .registers 4

    .line 45
    new-instance v0, Lmpl/SoterResult;

    invoke-direct {v0}, Lmpl/SoterResult;-><init>()V

    .line 46
    iput-wide p0, v0, Lmpl/SoterResult;->session:J

    .line 47
    iput p2, v0, Lmpl/SoterResult;->rc:I

    return-object v0
.end method
