.class final Lmpl/SoterSocket$Frame;
.super Ljava/lang/Object;
.source "SoterSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmpl/SoterSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Frame"
.end annotation


# instance fields
.field final body:[B

.field final reqId:J

.field final type:I


# direct methods
.method constructor <init>(IJ[B)V
    .registers 5

    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 427
    iput p1, p0, Lmpl/SoterSocket$Frame;->type:I

    .line 428
    iput-wide p2, p0, Lmpl/SoterSocket$Frame;->reqId:J

    .line 429
    iput-object p4, p0, Lmpl/SoterSocket$Frame;->body:[B

    return-void
.end method
